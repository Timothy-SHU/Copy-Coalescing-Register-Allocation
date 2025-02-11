; ModuleID = 'magick/draw.c'
source_filename = "magick/draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
%struct._PolygonInfo = type { ptr, i64 }
%struct._EdgeInfo = type { %struct._SegmentInfo, double, ptr, i64, i64, i32, i64 }
%struct._PathInfo = type { %struct._PointInfo, i32 }

@.str = private unnamed_addr constant [14 x i8] c"magick/draw.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"UnableToAllocateDashPattern\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
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
@.str.95 = private unnamed_addr constant [5 x i8] c"CcSs\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"QqTt\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.97 = private unnamed_addr constant [30 x i8] c"attribute not recognized: %c\0A\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"begin pattern-path %s %s\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"end pattern-path\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"  begin draw-primitive\00", align 1
@.str.102 = private unnamed_addr constant [30 x i8] c"    affine: %g %g %g %g %g %g\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"%+f%+f\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"data:\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"%gx%g!\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"  end draw-primitive\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"floodfill\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"filltoborder\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@__const.LogPrimitiveInfo.methods = private unnamed_addr constant [6 x ptr] [ptr @.str.53, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], align 16
@.str.112 = private unnamed_addr constant [30 x i8] c"PointPrimitive %.20g,%.20g %s\00", align 1
@.str.113 = private unnamed_addr constant [30 x i8] c"ColorPrimitive %.20g,%.20g %s\00", align 1
@.str.114 = private unnamed_addr constant [30 x i8] c"MattePrimitive %.20g,%.20g %s\00", align 1
@.str.115 = private unnamed_addr constant [26 x i8] c"TextPrimitive %.20g,%.20g\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"ImagePrimitive %.20g,%.20g\00", align 1
@.str.117 = private unnamed_addr constant [23 x i8] c"    begin open (%.20g)\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"      %.20g: %.18g,%.18g\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"      %.20g: %g %g (duplicate)\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"    end last (%.20g)\00", align 1
@.str.121 = private unnamed_addr constant [21 x i8] c"    end open (%.20g)\00", align 1
@.str.122 = private unnamed_addr constant [23 x i8] c"    begin draw-polygon\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"    end draw-polygon\00", align 1
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
@.str.147 = private unnamed_addr constant [6 x i8] c"#000F\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"#FFF0\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"strokewidth\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"undercolor\00", align 1
@reltable.LogPathInfo = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.129 to i64), i64 ptrtoint (ptr @reltable.LogPathInfo to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.128 to i64), i64 ptrtoint (ptr @reltable.LogPathInfo to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.127 to i64), i64 ptrtoint (ptr @reltable.LogPathInfo to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireDrawInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = tail call dereferenceable_or_null(720) ptr @AcquireMagickMemory(i64 noundef 720) #34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #12
  call void @GetExceptionInfo(ptr noundef nonnull %1) #35
  %5 = tail call ptr @__errno_location() #36
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = call ptr @GetExceptionMessage(i32 noundef %6) #35
  %8 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 213, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %7) #35
  %9 = call ptr @DestroyString(ptr noundef %7) #35
  call void @CatchException(ptr noundef nonnull %1) #35
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #35
  call void @MagickCoreTerminus() #35
  call void @_exit(i32 noundef 1) #37
  unreachable

11:                                               ; preds = %0
  tail call void @GetDrawInfo(ptr noundef null, ptr noundef nonnull %2) #38
  ret ptr %2
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetDrawInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4825, ptr noundef nonnull @.str.5) #35
  %4 = tail call ptr @ResetMagickMemory(ptr noundef %1, i32 noundef 0, i64 noundef 720) #35
  %5 = tail call ptr @CloneImageInfo(ptr noundef %0) #35
  %6 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  tail call void @GetAffineMatrix(ptr noundef nonnull %6) #38
  %7 = tail call ptr @AcquireExceptionInfo() #35
  %8 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %9 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.147, ptr noundef nonnull %8, ptr noundef %7) #35
  %10 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6
  %11 = tail call i32 @QueryColorDatabase(ptr noundef nonnull @.str.148, ptr noundef nonnull %10, ptr noundef %7) #35
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !10
  %14 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 12
  store i32 %13, ptr %14, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  store double 1.000000e+00, ptr %15, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 40
  store i16 0, ptr %16, align 4, !tbaa !27
  %17 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 14
  store i32 1, ptr %17, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 15
  store i32 1, ptr %18, align 4, !tbaa !29
  %19 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 16
  store i32 1, ptr %19, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 17
  store i64 10, ptr %20, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 19
  store i32 1, ptr %21, align 8, !tbaa !32
  %22 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !33
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = tail call ptr @AcquireString(ptr noundef nonnull %23) #35
  %27 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 23
  store ptr %26, ptr %27, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %25, %2
  %29 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @AcquireString(ptr noundef nonnull %30) #35
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 31
  store ptr %33, ptr %34, align 8, !tbaa !36
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, ptr %12, align 4, !tbaa !10
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 13
  store i32 %36, ptr %37, align 4, !tbaa !37
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 30
  store double 1.200000e+01, ptr %38, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 22
  %40 = load double, ptr %39, align 8, !tbaa !39
  %41 = fcmp une double %40, 0.000000e+00
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store double %40, ptr %38, align 8, !tbaa !38
  br label %43

43:                                               ; preds = %42, %35
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 33
  %45 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 33, i32 3
  store i16 -1, ptr %45, align 2, !tbaa !40
  %46 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34
  %47 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 25
  %48 = load i64, ptr %47, align 8
  store i64 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 20
  store i32 40, ptr %49, align 4, !tbaa !41
  %50 = getelementptr inbounds %struct._ImageInfo, ptr %5, i64 0, i32 18
  %51 = load ptr, ptr %50, align 8, !tbaa !42
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = tail call ptr @AcquireString(ptr noundef nonnull %51) #35
  %55 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 35
  store ptr %54, ptr %55, align 8, !tbaa !43
  br label %56

56:                                               ; preds = %53, %43
  %57 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 41
  store i32 1, ptr %57, align 8, !tbaa !44
  %58 = tail call i32 @IsEventLogging() #35
  %59 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 43
  store i32 %58, ptr %59, align 8, !tbaa !45
  %60 = tail call ptr @GetImageOption(ptr noundef nonnull %5, ptr noundef nonnull @.str.26) #35
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 29
  %64 = tail call ptr @CloneString(ptr noundef nonnull %63, ptr noundef nonnull %60) #35
  br label %65

65:                                               ; preds = %62, %56
  %66 = tail call ptr @GetImageOption(ptr noundef nonnull %5, ptr noundef nonnull @.str.47) #35
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = tail call fastcc double @StringToDouble(ptr noundef nonnull %66, ptr noundef null) #38
  %70 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 45
  store double %69, ptr %70, align 8, !tbaa !46
  br label %71

71:                                               ; preds = %68, %65
  %72 = tail call ptr @GetImageOption(ptr noundef nonnull %5, ptr noundef nonnull @.str.45) #35
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = tail call fastcc double @StringToDouble(ptr noundef nonnull %72, ptr noundef null) #38
  %76 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 47
  store double %75, ptr %76, align 8, !tbaa !47
  br label %77

77:                                               ; preds = %74, %71
  %78 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 48
  store i32 0, ptr %78, align 8, !tbaa !48
  %79 = tail call ptr @GetImageOption(ptr noundef nonnull %5, ptr noundef nonnull @.str.46) #35
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = tail call fastcc double @StringToDouble(ptr noundef nonnull %79, ptr noundef null) #38
  %83 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 46
  store double %82, ptr %83, align 8, !tbaa !49
  br label %84

84:                                               ; preds = %81, %77
  %85 = tail call ptr @GetImageOption(ptr noundef nonnull %5, ptr noundef nonnull @.str.24) #35
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = tail call i64 @ParseCommandOption(i32 noundef 18, i32 noundef 0, ptr noundef nonnull %85) #35
  %89 = trunc i64 %88 to i32
  store i32 %89, ptr %78, align 8, !tbaa !48
  br label %90

90:                                               ; preds = %87, %84
  %91 = tail call ptr @GetImageOption(ptr noundef nonnull %5, ptr noundef nonnull @.str.27) #35
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %91, ptr noundef nonnull %8, ptr noundef %7) #35
  br label %95

95:                                               ; preds = %93, %90
  %96 = tail call ptr @GetImageOption(ptr noundef nonnull %5, ptr noundef nonnull @.str.74) #35
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %96, ptr noundef nonnull %10, ptr noundef %7) #35
  br label %100

100:                                              ; preds = %98, %95
  %101 = tail call ptr @GetImageOption(ptr noundef nonnull %5, ptr noundef nonnull @.str.149) #35
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = tail call fastcc double @StringToDouble(ptr noundef nonnull %101, ptr noundef null) #38
  store double %104, ptr %15, align 8, !tbaa !26
  br label %105

105:                                              ; preds = %103, %100
  %106 = tail call ptr @GetImageOption(ptr noundef nonnull %5, ptr noundef nonnull @.str.150) #35
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = tail call i32 @QueryColorDatabase(ptr noundef nonnull %106, ptr noundef nonnull %44, ptr noundef %7) #35
  br label %110

110:                                              ; preds = %108, %105
  %111 = tail call ptr @GetImageOption(ptr noundef nonnull %5, ptr noundef nonnull @.str.43) #35
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = tail call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef nonnull %111) #35
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 4
  store i32 %115, ptr %116, align 8, !tbaa !50
  br label %117

117:                                              ; preds = %113, %110
  %118 = tail call ptr @DestroyExceptionInfo(ptr noundef %7) #35
  %119 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 44
  store i64 2880220587, ptr %119, align 8, !tbaa !51
  %120 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %5) #35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneDrawInfo(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = tail call dereferenceable_or_null(720) ptr @AcquireMagickMemory(i64 noundef 720) #34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  call void @GetExceptionInfo(ptr noundef nonnull %3) #35
  %9 = tail call ptr @__errno_location() #36
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = call ptr @GetExceptionMessage(i32 noundef %10) #35
  %12 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 254, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %11) #35
  %13 = call ptr @DestroyString(ptr noundef %11) #35
  call void @CatchException(ptr noundef nonnull %3) #35
  %14 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #35
  call void @MagickCoreTerminus() #35
  call void @_exit(i32 noundef 1) #37
  unreachable

15:                                               ; preds = %2
  tail call void @GetDrawInfo(ptr noundef %0, ptr noundef nonnull %6) #38
  %16 = icmp eq ptr %1, null
  br i1 %16, label %231, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %6, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %1, align 8, !tbaa !52
  %22 = tail call ptr @CloneString(ptr noundef nonnull %6, ptr noundef %21) #35
  br label %23

23:                                               ; preds = %20, %17
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 1
  %29 = tail call ptr @CloneString(ptr noundef nonnull %28, ptr noundef nonnull %25) #35
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 2
  %32 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %32, i64 32, i1 false), !tbaa.struct !54
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 3
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull align 8 dereferenceable(48) %34, i64 48, i1 false), !tbaa.struct !56
  %35 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !50
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 4
  store i32 %36, ptr %37, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 5
  %39 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %40 = load i64, ptr %39, align 4
  store i64 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 6
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6
  %43 = load i64, ptr %42, align 4
  store i64 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %45 = load double, ptr %44, align 8, !tbaa !26
  %46 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 7
  store double %45, ptr %46, align 8, !tbaa !26
  %47 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  %51 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50, %30
  %55 = phi ptr [ %48, %30 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 58
  %57 = tail call ptr @CloneImage(ptr noundef nonnull %55, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %56) #35
  %58 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 9
  store ptr %57, ptr %58, align 8, !tbaa !58
  br label %59

59:                                               ; preds = %54, %50
  %60 = tail call ptr @NewImageList() #35
  %61 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 10
  store ptr %60, ptr %61, align 8, !tbaa !59
  %62 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 11
  %63 = load ptr, ptr %62, align 8, !tbaa !60
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 58
  %67 = tail call ptr @CloneImage(ptr noundef nonnull %63, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %66) #35
  %68 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 11
  store ptr %67, ptr %68, align 8, !tbaa !60
  br label %69

69:                                               ; preds = %65, %59
  %70 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 12
  %71 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 12
  %72 = load <4 x i32>, ptr %70, align 8, !tbaa !6
  store <4 x i32> %72, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 16
  %74 = load i32, ptr %73, align 8, !tbaa !30
  %75 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 16
  store i32 %74, ptr %75, align 8, !tbaa !30
  %76 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 17
  %77 = load i64, ptr %76, align 8, !tbaa !31
  %78 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 17
  store i64 %77, ptr %78, align 8, !tbaa !31
  %79 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 18
  %80 = load double, ptr %79, align 8, !tbaa !61
  %81 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 18
  store double %80, ptr %81, align 8, !tbaa !61
  %82 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 19
  %83 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 19
  %84 = load <2 x i32>, ptr %82, align 8, !tbaa !6
  store <2 x i32> %84, ptr %83, align 8, !tbaa !6
  %85 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 21
  %86 = load ptr, ptr %85, align 8, !tbaa !62
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %69
  %89 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 21
  %90 = tail call ptr @CloneString(ptr noundef nonnull %89, ptr noundef nonnull %86) #35
  br label %91

91:                                               ; preds = %88, %69
  %92 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 23
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 23
  %97 = tail call ptr @CloneString(ptr noundef nonnull %96, ptr noundef nonnull %93) #35
  br label %98

98:                                               ; preds = %95, %91
  %99 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 24
  %100 = load ptr, ptr %99, align 8, !tbaa !63
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 24
  %104 = tail call ptr @CloneString(ptr noundef nonnull %103, ptr noundef nonnull %100) #35
  br label %105

105:                                              ; preds = %102, %98
  %106 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 25
  %107 = load ptr, ptr %106, align 8, !tbaa !64
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 25
  %111 = tail call ptr @CloneString(ptr noundef nonnull %110, ptr noundef nonnull %107) #35
  br label %112

112:                                              ; preds = %109, %105
  %113 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 26
  %114 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 26
  %115 = load <2 x i32>, ptr %113, align 8, !tbaa !6
  store <2 x i32> %115, ptr %114, align 8, !tbaa !6
  %116 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 28
  %117 = load i64, ptr %116, align 8, !tbaa !65
  %118 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 28
  store i64 %117, ptr %118, align 8, !tbaa !65
  %119 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 29
  %120 = load ptr, ptr %119, align 8, !tbaa !66
  %121 = icmp eq ptr %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 29
  %124 = tail call ptr @CloneString(ptr noundef nonnull %123, ptr noundef nonnull %120) #35
  br label %125

125:                                              ; preds = %122, %112
  %126 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 30
  %127 = load double, ptr %126, align 8, !tbaa !38
  %128 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 30
  store double %127, ptr %128, align 8, !tbaa !38
  %129 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 45
  %130 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 45
  %131 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 47
  %132 = load double, ptr %131, align 8, !tbaa !47
  %133 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 47
  store double %132, ptr %133, align 8, !tbaa !47
  %134 = load <2 x double>, ptr %129, align 8, !tbaa !57
  store <2 x double> %134, ptr %130, align 8, !tbaa !57
  %135 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 48
  %136 = load i32, ptr %135, align 8, !tbaa !48
  %137 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 48
  store i32 %136, ptr %137, align 8, !tbaa !48
  %138 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 31
  %139 = load ptr, ptr %138, align 8, !tbaa !36
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %125
  %142 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 31
  %143 = tail call ptr @CloneString(ptr noundef nonnull %142, ptr noundef nonnull %139) #35
  br label %144

144:                                              ; preds = %141, %125
  %145 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 32
  %146 = load i32, ptr %145, align 8, !tbaa !67
  %147 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 32
  store i32 %146, ptr %147, align 8, !tbaa !67
  %148 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 33
  %149 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 33
  %150 = load i64, ptr %149, align 4
  store i64 %150, ptr %148, align 4
  %151 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 34
  %152 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34
  %153 = load i64, ptr %152, align 4
  store i64 %153, ptr %151, align 4
  %154 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 35
  %155 = load ptr, ptr %154, align 8, !tbaa !43
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %144
  %158 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 35
  %159 = tail call ptr @CloneString(ptr noundef nonnull %158, ptr noundef nonnull %155) #35
  br label %160

160:                                              ; preds = %157, %144
  %161 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 36
  %162 = load ptr, ptr %161, align 8, !tbaa !68
  %163 = icmp eq ptr %162, null
  br i1 %163, label %185, label %164

164:                                              ; preds = %160, %164
  %165 = phi i64 [ %169, %164 ], [ 0, %160 ]
  %166 = getelementptr inbounds double, ptr %162, i64 %165
  %167 = load double, ptr %166, align 8, !tbaa !57
  %168 = fcmp une double %167, 0.000000e+00
  %169 = add nuw i64 %165, 1
  br i1 %168, label %164, label %170, !llvm.loop !69

170:                                              ; preds = %164
  %171 = tail call ptr @AcquireQuantumMemory(i64 noundef %169, i64 noundef 8) #39
  %172 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 36
  store ptr %171, ptr %172, align 8, !tbaa !68
  %173 = icmp eq ptr %171, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #12
  call void @GetExceptionInfo(ptr noundef nonnull %4) #35
  %175 = tail call ptr @__errno_location() #36
  %176 = load i32, ptr %175, align 4, !tbaa !6
  %177 = call ptr @GetExceptionMessage(i32 noundef %176) #35
  %178 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 323, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %177) #35
  %179 = call ptr @DestroyString(ptr noundef %177) #35
  call void @CatchException(ptr noundef nonnull %4) #35
  %180 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #35
  call void @MagickCoreTerminus() #35
  call void @_exit(i32 noundef 1) #37
  unreachable

181:                                              ; preds = %170
  %182 = load ptr, ptr %161, align 8, !tbaa !68
  %183 = shl i64 %169, 3
  %184 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %171, ptr noundef %182, i64 noundef %183) #35
  br label %185

185:                                              ; preds = %181, %160
  %186 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 8
  %187 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %186, ptr noundef nonnull align 8 dereferenceable(128) %187, i64 128, i1 false), !tbaa.struct !71
  %188 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !74
  %190 = icmp eq ptr %189, null
  br i1 %190, label %208, label %191

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 8, i32 4
  %193 = load i64, ptr %192, align 8, !tbaa !75
  %194 = tail call ptr @AcquireQuantumMemory(i64 noundef %193, i64 noundef 64) #39
  %195 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 8, i32 3
  store ptr %194, ptr %195, align 8, !tbaa !74
  %196 = icmp eq ptr %194, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #12
  call void @GetExceptionInfo(ptr noundef nonnull %5) #35
  %198 = tail call ptr @__errno_location() #36
  %199 = load i32, ptr %198, align 4, !tbaa !6
  %200 = call ptr @GetExceptionMessage(i32 noundef %199) #35
  %201 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %200) #35
  %202 = call ptr @DestroyString(ptr noundef %200) #35
  call void @CatchException(ptr noundef nonnull %5) #35
  %203 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #35
  call void @MagickCoreTerminus() #35
  call void @_exit(i32 noundef 1) #37
  unreachable

204:                                              ; preds = %191
  %205 = load ptr, ptr %188, align 8, !tbaa !74
  %206 = shl i64 %193, 6
  %207 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %194, ptr noundef %205, i64 noundef %206) #35
  br label %208

208:                                              ; preds = %204, %185
  %209 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 37
  %210 = load ptr, ptr %209, align 8, !tbaa !76
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 37
  %214 = tail call ptr @CloneString(ptr noundef nonnull %213, ptr noundef nonnull %210) #35
  br label %215

215:                                              ; preds = %212, %208
  %216 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 38
  %217 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %216, ptr noundef nonnull align 8 dereferenceable(32) %217, i64 32, i1 false), !tbaa.struct !77
  %218 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 39
  %219 = load i32, ptr %218, align 8, !tbaa !78
  %220 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 39
  store i32 %219, ptr %220, align 8, !tbaa !78
  %221 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 41
  %222 = load i32, ptr %221, align 8, !tbaa !44
  %223 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 41
  store i32 %222, ptr %223, align 8, !tbaa !44
  %224 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 40
  %225 = load i16, ptr %224, align 4, !tbaa !27
  %226 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 40
  store i16 %225, ptr %226, align 4, !tbaa !27
  %227 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 42
  %228 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %227, ptr noundef nonnull align 8 dereferenceable(168) %228, i64 168, i1 false), !tbaa.struct !79
  %229 = tail call i32 @IsEventLogging() #35
  %230 = getelementptr inbounds %struct._DrawInfo, ptr %6, i64 0, i32 43
  store i32 %229, ptr %230, align 8, !tbaa !45
  br label %231

231:                                              ; preds = %15, %215
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #3

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyDrawInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 43
  %3 = load i32, ptr %2, align 8, !tbaa !45
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 837, ptr noundef nonnull @.str.5) #35
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @DestroyString(ptr noundef nonnull %8) #35
  store ptr %11, ptr %0, align 8, !tbaa !52
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @DestroyString(ptr noundef nonnull %14) #35
  store ptr %17, ptr %13, align 8, !tbaa !62
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @DestroyString(ptr noundef nonnull %20) #35
  store ptr %23, ptr %19, align 8, !tbaa !53
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @DestroyImage(ptr noundef nonnull %26) #35
  store ptr %29, ptr %25, align 8, !tbaa !59
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @DestroyImage(ptr noundef nonnull %32) #35
  store ptr %35, ptr %31, align 8, !tbaa !58
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @DestroyImage(ptr noundef nonnull %38) #35
  store ptr %41, ptr %37, align 8, !tbaa !60
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 23
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @DestroyString(ptr noundef nonnull %44) #35
  store ptr %47, ptr %43, align 8, !tbaa !34
  br label %48

48:                                               ; preds = %46, %42
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 24
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @DestroyString(ptr noundef nonnull %50) #35
  store ptr %53, ptr %49, align 8, !tbaa !63
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 25
  %56 = load ptr, ptr %55, align 8, !tbaa !64
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call ptr @DestroyString(ptr noundef nonnull %56) #35
  store ptr %59, ptr %55, align 8, !tbaa !64
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 29
  %62 = load ptr, ptr %61, align 8, !tbaa !66
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @DestroyString(ptr noundef nonnull %62) #35
  store ptr %65, ptr %61, align 8, !tbaa !66
  br label %66

66:                                               ; preds = %64, %60
  %67 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 31
  %68 = load ptr, ptr %67, align 8, !tbaa !36
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = tail call ptr @DestroyString(ptr noundef nonnull %68) #35
  store ptr %71, ptr %67, align 8, !tbaa !36
  br label %72

72:                                               ; preds = %70, %66
  %73 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 35
  %74 = load ptr, ptr %73, align 8, !tbaa !43
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %74) #35
  store ptr %77, ptr %73, align 8, !tbaa !43
  br label %78

78:                                               ; preds = %76, %72
  %79 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 36
  %80 = load ptr, ptr %79, align 8, !tbaa !68
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %80) #35
  store ptr %83, ptr %79, align 8, !tbaa !68
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 8, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !74
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %86) #35
  store ptr %89, ptr %85, align 8, !tbaa !74
  br label %90

90:                                               ; preds = %88, %84
  %91 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 37
  %92 = load ptr, ptr %91, align 8, !tbaa !76
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = tail call ptr @DestroyString(ptr noundef nonnull %92) #35
  store ptr %95, ptr %91, align 8, !tbaa !76
  br label %96

96:                                               ; preds = %94, %90
  %97 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 44
  store i64 -2880220588, ptr %97, align 8, !tbaa !51
  %98 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #35
  ret ptr %98
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawAffineImage(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._AffineMatrix, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._MagickPixelPacket, align 8
  %12 = alloca [4 x %struct._PointInfo], align 16
  %13 = alloca %struct._SegmentInfo, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !72
  store ptr %1, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !80
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1151, ptr noundef nonnull @.str.6, ptr noundef nonnull %21) #35
  br label %23

23:                                               ; preds = %20, %3
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %25 = getelementptr inbounds [4 x %struct._PointInfo], ptr %12, i64 0, i64 1
  %26 = getelementptr inbounds [4 x %struct._PointInfo], ptr %12, i64 0, i64 1, i32 1
  store double 0.000000e+00, ptr %26, align 8, !tbaa !90
  %27 = getelementptr inbounds [4 x %struct._PointInfo], ptr %12, i64 0, i64 2
  %28 = load <2 x i64>, ptr %24, align 8, !tbaa !55
  %29 = uitofp <2 x i64> %28 to <2 x double>
  %30 = fadd <2 x double> %29, <double -1.000000e+00, double -1.000000e+00>
  %31 = extractelement <2 x double> %30, i64 0
  store double %31, ptr %25, align 16, !tbaa !91
  store <2 x double> %30, ptr %27, align 16, !tbaa !57
  %32 = getelementptr inbounds [4 x %struct._PointInfo], ptr %12, i64 0, i64 3
  store double 0.000000e+00, ptr %32, align 16, !tbaa !91
  %33 = getelementptr inbounds [4 x %struct._PointInfo], ptr %12, i64 0, i64 3, i32 1
  %34 = extractelement <2 x double> %30, i64 1
  store double %34, ptr %33, align 8, !tbaa !90
  %35 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 5
  %36 = load double, ptr %35, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 3
  %38 = load double, ptr %37, align 8, !tbaa !93
  %39 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 1
  %40 = load double, ptr %39, align 8, !tbaa !94
  %41 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 4
  %42 = load double, ptr %41, align 8, !tbaa !95
  %43 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 2
  %44 = load double, ptr %43, align 8, !tbaa !96
  %45 = load double, ptr %2, align 8, !tbaa !97
  %46 = insertelement <2 x double> poison, double %44, i64 0
  %47 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> zeroinitializer
  %48 = insertelement <2 x double> poison, double %45, i64 0
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> zeroinitializer
  %50 = insertelement <2 x double> poison, double %42, i64 0
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> zeroinitializer
  %52 = insertelement <2 x double> poison, double %38, i64 0
  %53 = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> zeroinitializer
  %54 = insertelement <2 x double> poison, double %40, i64 0
  %55 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> zeroinitializer
  %56 = insertelement <2 x double> poison, double %36, i64 0
  %57 = shufflevector <2 x double> %56, <2 x double> poison, <2 x i32> zeroinitializer
  br label %58

58:                                               ; preds = %58, %23
  %59 = phi i64 [ 0, %23 ], [ %71, %58 ]
  %60 = getelementptr inbounds [4 x %struct._PointInfo], ptr %12, i64 0, i64 %59
  %61 = load <4 x double>, ptr %60, align 16
  %62 = shufflevector <4 x double> %61, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %63 = shufflevector <4 x double> %61, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %64 = fmul <2 x double> %63, %47
  %65 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %62, <2 x double> %49, <2 x double> %64)
  %66 = fadd <2 x double> %51, %65
  %67 = fmul <2 x double> %63, %53
  %68 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %62, <2 x double> %55, <2 x double> %67)
  %69 = fadd <2 x double> %57, %68
  %70 = shufflevector <2 x double> %66, <2 x double> %69, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %70, ptr %60, align 16, !tbaa !57
  %71 = add nuw i64 %59, 2
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %73, label %58, !llvm.loop !98

73:                                               ; preds = %58
  %74 = load <2 x double>, ptr %12, align 16
  br label %75

75:                                               ; preds = %73, %75
  %76 = phi i64 [ 1, %73 ], [ %85, %75 ]
  %77 = phi <2 x double> [ %74, %73 ], [ %84, %75 ]
  %78 = phi <2 x double> [ %74, %73 ], [ %82, %75 ]
  %79 = getelementptr inbounds [4 x %struct._PointInfo], ptr %12, i64 0, i64 %76
  %80 = load <2 x double>, ptr %79, align 16, !tbaa !57
  %81 = fcmp ogt <2 x double> %78, %80
  %82 = select <2 x i1> %81, <2 x double> %80, <2 x double> %78
  %83 = fcmp olt <2 x double> %77, %80
  %84 = select <2 x i1> %83, <2 x double> %80, <2 x double> %77
  %85 = add nuw nsw i64 %76, 1
  %86 = icmp eq i64 %85, 4
  br i1 %86, label %87, label %75, !llvm.loop !101

87:                                               ; preds = %75
  %88 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #35
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %142, label %90

90:                                               ; preds = %87
  store i32 1, ptr %10, align 4, !tbaa !6
  %91 = extractelement <2 x double> %82, i64 0
  %92 = tail call fastcc double @MagickMax(double noundef %91, double noundef 0.000000e+00) #38
  store double %92, ptr %13, align 8, !tbaa !102
  %93 = extractelement <2 x double> %82, i64 1
  %94 = tail call fastcc double @MagickMax(double noundef %93, double noundef 0.000000e+00) #38
  %95 = getelementptr inbounds %struct._SegmentInfo, ptr %13, i64 0, i32 1
  store double %94, ptr %95, align 8, !tbaa !103
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %97 = load i64, ptr %96, align 8, !tbaa !104
  %98 = uitofp i64 %97 to double
  %99 = fadd double %98, -1.000000e+00
  %100 = extractelement <2 x double> %84, i64 0
  %101 = tail call fastcc double @MagickMin(double noundef %100, double noundef %99) #38
  %102 = getelementptr inbounds %struct._SegmentInfo, ptr %13, i64 0, i32 2
  store double %101, ptr %102, align 8, !tbaa !105
  %103 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %104 = load i64, ptr %103, align 8, !tbaa !106
  %105 = uitofp i64 %104 to double
  %106 = fadd double %105, -1.000000e+00
  %107 = extractelement <2 x double> %84, i64 1
  %108 = tail call fastcc double @MagickMin(double noundef %107, double noundef %106) #38
  %109 = getelementptr inbounds %struct._SegmentInfo, ptr %13, i64 0, i32 3
  store double %108, ptr %109, align 8, !tbaa !107
  call fastcc void @InverseAffineMatrix(ptr dead_on_unwind nonnull writable sret(%struct._AffineMatrix) align 8 %6, ptr noundef nonnull %2) #38
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %11) #35
  %110 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %110, ptr %9, align 8, !tbaa !72
  %111 = fadd double %94, -5.000000e-01
  %112 = call double @llvm.ceil.f64(double %111)
  %113 = fptosi double %112 to i64
  store i64 %113, ptr %14, align 8, !tbaa !55
  %114 = fadd double %108, 5.000000e-01
  %115 = call double @llvm.floor.f64(double %114)
  %116 = fptosi double %115 to i64
  store i64 %116, ptr %15, align 8, !tbaa !55
  %117 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef nonnull %110) #35
  store ptr %117, ptr %8, align 8, !tbaa !72
  %118 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %110) #35
  store ptr %118, ptr %7, align 8, !tbaa !72
  %119 = call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %120 = and i64 %119, 576460752303423487
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %90
  %123 = call i32 @GetImagePixelCacheType(ptr noundef %1) #35
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #35
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  br label %134

130:                                              ; preds = %125, %122, %90
  %131 = call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %132 = icmp ult i64 %131, 2
  %133 = select i1 %132, i64 1, i64 2
  br label %134

134:                                              ; preds = %130, %128
  %135 = phi i64 [ %129, %128 ], [ %133, %130 ]
  %136 = trunc i64 %135 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %136)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @DrawAffineImage.omp_outlined, ptr nonnull %14, ptr nonnull %15, ptr nonnull %5, ptr nonnull %6, ptr nonnull %13, ptr nonnull %7, ptr nonnull %9, ptr nonnull %11, ptr nonnull %8, ptr nonnull %4, ptr nonnull %10)
  %137 = load ptr, ptr %8, align 8, !tbaa !72
  %138 = call ptr @DestroyCacheView(ptr noundef %137) #35
  store ptr %138, ptr %8, align 8, !tbaa !72
  %139 = load ptr, ptr %7, align 8, !tbaa !72
  %140 = call ptr @DestroyCacheView(ptr noundef %139) #35
  %141 = load i32, ptr %10, align 4, !tbaa !6
  br label %142

142:                                              ; preds = %87, %134
  %143 = phi i32 [ %141, %134 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #12
  ret i32 %143
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #9 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #9 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @InverseAffineMatrix(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._AffineMatrix) align 8 %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = load double, ptr %1, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %5 = load double, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 1
  %7 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 1
  %8 = load <2 x double>, ptr %6, align 8, !tbaa !57
  %9 = fneg <2 x double> %8
  %10 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %11 = fmul <2 x double> %10, %9
  %12 = extractelement <2 x double> %11, i64 0
  %13 = tail call double @llvm.fmuladd.f64(double %3, double %5, double %12)
  %14 = tail call fastcc double @PerceptibleReciprocal(double noundef %13) #38
  %15 = fmul double %5, %14
  store double %15, ptr %0, align 8, !tbaa !97
  %16 = insertelement <2 x double> poison, double %14, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x double> %17, %9
  store <2 x double> %18, ptr %7, align 8, !tbaa !57
  %19 = fmul double %3, %14
  %20 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 3
  store double %19, ptr %20, align 8, !tbaa !93
  %21 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %22 = load double, ptr %21, align 8, !tbaa !95
  %23 = fneg double %22
  %24 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 5
  %25 = load double, ptr %24, align 8, !tbaa !92
  %26 = fneg double %25
  %27 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 4
  %28 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %29 = insertelement <2 x double> %28, double %19, i64 1
  %30 = insertelement <2 x double> poison, double %26, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x double> %29, %31
  %33 = insertelement <2 x double> poison, double %23, i64 0
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = insertelement <2 x double> %28, double %15, i64 0
  %36 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %35, <2 x double> %32)
  store <2 x double> %36, ptr %27, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @DrawAffineImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %12) #11 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct._MagickPixelPacket, align 8
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = alloca %struct._SegmentInfo, align 8
  %21 = load i64, ptr %2, align 8, !tbaa !55
  %22 = load i64, ptr %3, align 8, !tbaa !55
  %23 = sub i64 %22, %21
  %24 = icmp sgt i64 %21, %22
  br i1 %24, label %123, label %25

25:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  store i64 0, ptr %14, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #12
  store i64 %23, ptr %15, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #12
  store i64 1, ptr %16, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #12
  store i32 0, ptr %17, align 4, !tbaa !6
  %26 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8u(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %27 = load i64, ptr %15, align 8
  %28 = call i64 @llvm.umin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %15, align 8, !tbaa !55
  %29 = load i64, ptr %14, align 8, !tbaa !55
  %30 = icmp ugt i64 %29, %28
  br i1 %30, label %122, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %20, i64 16
  %33 = getelementptr inbounds %struct._AffineMatrix, ptr %5, i64 0, i32 2
  %34 = getelementptr inbounds %struct._AffineMatrix, ptr %5, i64 0, i32 4
  %35 = getelementptr inbounds %struct._AffineMatrix, ptr %5, i64 0, i32 1
  %36 = getelementptr inbounds %struct._AffineMatrix, ptr %5, i64 0, i32 3
  %37 = getelementptr inbounds %struct._AffineMatrix, ptr %5, i64 0, i32 5
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %19, i64 0, i32 8
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 8
  br label %40

40:                                               ; preds = %31, %114
  %41 = phi i64 [ %28, %31 ], [ %120, %114 ]
  %42 = phi i64 [ %29, %31 ], [ %118, %114 ]
  %43 = icmp ugt i64 %42, %41
  br i1 %43, label %114, label %44

44:                                               ; preds = %40, %108
  %45 = phi i64 [ %109, %108 ], [ %42, %40 ]
  %46 = add i64 %45, %21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #12
  %47 = load ptr, ptr %4, align 8, !tbaa !72
  %48 = sitofp i64 %46 to double
  call fastcc void @AffineEdge(ptr dead_on_unwind nonnull writable sret(%struct._SegmentInfo) align 8 %20, ptr noundef %47, ptr noundef nonnull %5, double noundef %48, ptr noundef nonnull %6) #38
  %49 = load double, ptr %20, align 8, !tbaa.struct !77
  %50 = load double, ptr %32, align 8, !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #12
  %51 = fcmp olt double %50, %49
  br i1 %51, label %108, label %52

52:                                               ; preds = %44
  %53 = load ptr, ptr %7, align 8, !tbaa !72
  %54 = fadd double %49, -5.000000e-01
  %55 = call double @llvm.ceil.f64(double %54)
  %56 = fptosi double %55 to i64
  %57 = fadd double %50, 5.000000e-01
  %58 = call double @llvm.floor.f64(double %57)
  %59 = fsub double %58, %55
  %60 = fadd double %59, 1.000000e+00
  %61 = fptoui double %60 to i64
  %62 = load ptr, ptr %8, align 8, !tbaa !72
  %63 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %53, i64 noundef %56, i64 noundef %46, i64 noundef %61, i64 noundef 1, ptr noundef %62) #40
  %64 = icmp eq ptr %63, null
  br i1 %64, label %108, label %65

65:                                               ; preds = %52
  %66 = load ptr, ptr %7, align 8, !tbaa !72
  %67 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %66) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !109
  %68 = fptosi double %58 to i64
  %69 = icmp sgt i64 %56, %68
  br i1 %69, label %102, label %70

70:                                               ; preds = %65
  %71 = add i64 %68, 1
  %72 = sub i64 %71, %56
  br label %73

73:                                               ; preds = %70, %73
  %74 = phi i64 [ %98, %73 ], [ 0, %70 ]
  %75 = phi i64 [ %100, %73 ], [ %56, %70 ]
  %76 = phi ptr [ %99, %73 ], [ %63, %70 ]
  %77 = sitofp i64 %75 to double
  %78 = load double, ptr %5, align 8, !tbaa !97
  %79 = load double, ptr %33, align 8, !tbaa !96
  %80 = fmul double %79, %48
  %81 = call double @llvm.fmuladd.f64(double %77, double %78, double %80)
  %82 = load double, ptr %34, align 8, !tbaa !95
  %83 = fadd double %82, %81
  %84 = load double, ptr %35, align 8, !tbaa !94
  %85 = load double, ptr %36, align 8, !tbaa !93
  %86 = fmul double %85, %48
  %87 = call double @llvm.fmuladd.f64(double %77, double %84, double %86)
  %88 = load double, ptr %37, align 8, !tbaa !92
  %89 = fadd double %88, %87
  %90 = load ptr, ptr %4, align 8, !tbaa !72
  %91 = load ptr, ptr %10, align 8, !tbaa !72
  %92 = load ptr, ptr %8, align 8, !tbaa !72
  %93 = call i32 @InterpolateMagickPixelPacket(ptr noundef %90, ptr noundef %91, i32 noundef 0, double noundef %83, double noundef %89, ptr noundef nonnull %19, ptr noundef %92) #35
  %94 = load ptr, ptr %11, align 8, !tbaa !72
  %95 = getelementptr inbounds i16, ptr %67, i64 %74
  call fastcc void @SetMagickPixelPacket(ptr noundef %94, ptr noundef nonnull %76, ptr noundef %95, ptr noundef nonnull %18) #38
  %96 = load float, ptr %38, align 4, !tbaa !110
  %97 = load float, ptr %39, align 4, !tbaa !110
  call fastcc void @MagickPixelCompositeOver(ptr noundef nonnull %19, float noundef %96, ptr noundef nonnull %18, float noundef %97, ptr noundef nonnull %18) #38
  call fastcc void @SetPixelPacket(ptr noundef %94, ptr noundef nonnull %18, ptr noundef nonnull %76, ptr noundef %95) #38
  %98 = add nuw i64 %74, 1
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %100 = add nsw i64 %75, 1
  %101 = icmp eq i64 %98, %72
  br i1 %101, label %102, label %73, !llvm.loop !112

102:                                              ; preds = %73, %65
  %103 = load ptr, ptr %7, align 8, !tbaa !72
  %104 = load ptr, ptr %8, align 8, !tbaa !72
  %105 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %103, ptr noundef %104) #40
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, ptr %12, align 4, !tbaa !6
  br label %108

108:                                              ; preds = %102, %107, %52, %44
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %18) #12
  %109 = add i64 %45, 1
  %110 = load i64, ptr %15, align 8, !tbaa !55
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %44

112:                                              ; preds = %108
  %113 = load i64, ptr %14, align 8, !tbaa !55
  br label %114

114:                                              ; preds = %112, %40
  %115 = phi i64 [ %42, %40 ], [ %113, %112 ]
  %116 = phi i64 [ %41, %40 ], [ %110, %112 ]
  %117 = load i64, ptr %16, align 8, !tbaa !55
  %118 = add i64 %117, %115
  store i64 %118, ptr %14, align 8, !tbaa !55
  %119 = add i64 %117, %116
  %120 = call i64 @llvm.umin.i64(i64 %119, i64 %23)
  store i64 %120, ptr %15, align 8, !tbaa !55
  %121 = icmp ugt i64 %118, %120
  br i1 %121, label %122, label %40

122:                                              ; preds = %114, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  br label %123

123:                                              ; preds = %122, %13
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8u(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @AffineEdge(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._SegmentInfo) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, double noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = load <2 x double>, ptr %4, align 8, !tbaa !57
  store <2 x double> %6, ptr %0, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct._SegmentInfo, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct._SegmentInfo, ptr %0, i64 0, i32 2
  %9 = load <2 x double>, ptr %7, align 8, !tbaa !57
  store <2 x double> %9, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 4
  %13 = load double, ptr %12, align 8, !tbaa !95
  %14 = tail call double @llvm.fmuladd.f64(double %11, double %3, double %13)
  %15 = load double, ptr %2, align 8, !tbaa !97
  %16 = fcmp ult double %15, 1.000000e-15
  br i1 %16, label %32, label %17

17:                                               ; preds = %5
  %18 = fneg double %14
  %19 = fdiv double %18, %15
  %20 = extractelement <2 x double> %6, i64 0
  %21 = fcmp ogt double %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store double %19, ptr %0, align 8, !tbaa !102
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi double [ %19, %22 ], [ %20, %17 ]
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !104
  %27 = uitofp i64 %26 to double
  %28 = fsub double %27, %14
  %29 = fdiv double %28, %15
  %30 = extractelement <2 x double> %9, i64 0
  %31 = fcmp olt double %29, %30
  br i1 %31, label %60, label %63

32:                                               ; preds = %5
  %33 = fcmp olt double %15, -1.000000e-15
  br i1 %33, label %34, label %49

34:                                               ; preds = %32
  %35 = fneg double %14
  %36 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !104
  %38 = uitofp i64 %37 to double
  %39 = fsub double %38, %14
  %40 = fdiv double %39, %15
  %41 = extractelement <2 x double> %6, i64 0
  %42 = fcmp ogt double %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store double %40, ptr %0, align 8, !tbaa !102
  br label %44

44:                                               ; preds = %43, %34
  %45 = phi double [ %40, %43 ], [ %41, %34 ]
  %46 = fdiv double %35, %15
  %47 = extractelement <2 x double> %9, i64 0
  %48 = fcmp olt double %46, %47
  br i1 %48, label %60, label %63

49:                                               ; preds = %32
  %50 = fcmp olt double %14, 0.000000e+00
  %51 = extractelement <2 x double> %6, i64 0
  br i1 %50, label %110, label %52

52:                                               ; preds = %49
  %53 = fadd double %14, 5.000000e-01
  %54 = tail call double @llvm.floor.f64(double %53)
  %55 = fptoui double %54 to i64
  %56 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !104
  %58 = icmp ugt i64 %57, %55
  %59 = extractelement <2 x double> %9, i64 0
  br i1 %58, label %63, label %110

60:                                               ; preds = %44, %23
  %61 = phi double [ %29, %23 ], [ %46, %44 ]
  %62 = phi double [ %24, %23 ], [ %45, %44 ]
  store double %61, ptr %8, align 8, !tbaa !105
  br label %63

63:                                               ; preds = %60, %44, %52, %23
  %64 = phi double [ %47, %44 ], [ %59, %52 ], [ %30, %23 ], [ %61, %60 ]
  %65 = phi double [ %45, %44 ], [ %51, %52 ], [ %24, %23 ], [ %62, %60 ]
  %66 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 3
  %67 = load double, ptr %66, align 8, !tbaa !93
  %68 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 5
  %69 = load double, ptr %68, align 8, !tbaa !92
  %70 = tail call double @llvm.fmuladd.f64(double %67, double %3, double %69)
  %71 = getelementptr inbounds %struct._AffineMatrix, ptr %2, i64 0, i32 1
  %72 = load double, ptr %71, align 8, !tbaa !94
  %73 = fcmp ult double %72, 1.000000e-15
  br i1 %73, label %86, label %74

74:                                               ; preds = %63
  %75 = fneg double %70
  %76 = fdiv double %75, %72
  %77 = fcmp ogt double %76, %65
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store double %76, ptr %0, align 8, !tbaa !102
  br label %79

79:                                               ; preds = %78, %74
  %80 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %81 = load i64, ptr %80, align 8, !tbaa !106
  %82 = uitofp i64 %81 to double
  %83 = fsub double %82, %70
  %84 = fdiv double %83, %72
  %85 = fcmp olt double %84, %64
  br i1 %85, label %110, label %112

86:                                               ; preds = %63
  %87 = fcmp olt double %72, -1.000000e-15
  br i1 %87, label %88, label %100

88:                                               ; preds = %86
  %89 = fneg double %70
  %90 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %91 = load i64, ptr %90, align 8, !tbaa !106
  %92 = uitofp i64 %91 to double
  %93 = fsub double %92, %70
  %94 = fdiv double %93, %72
  %95 = fcmp ogt double %94, %65
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store double %94, ptr %0, align 8, !tbaa !102
  br label %97

97:                                               ; preds = %96, %88
  %98 = fdiv double %89, %72
  %99 = fcmp olt double %98, %64
  br i1 %99, label %110, label %112

100:                                              ; preds = %86
  %101 = fcmp olt double %70, 0.000000e+00
  %102 = extractelement <2 x double> %9, i64 0
  br i1 %101, label %110, label %103

103:                                              ; preds = %100
  %104 = fadd double %70, 5.000000e-01
  %105 = tail call double @llvm.floor.f64(double %104)
  %106 = fptoui double %105 to i64
  %107 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %108 = load i64, ptr %107, align 8, !tbaa !106
  %109 = icmp ugt i64 %108, %106
  br i1 %109, label %112, label %110

110:                                              ; preds = %100, %103, %97, %79, %49, %52
  %111 = phi double [ %51, %52 ], [ %51, %49 ], [ %84, %79 ], [ %98, %97 ], [ %102, %103 ], [ %102, %100 ]
  store double %111, ptr %8, align 8, !tbaa !105
  br label %112

112:                                              ; preds = %110, %79, %103, %97
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !113
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !114
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !113
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !115
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeOver(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #10 {
  %6 = fcmp oeq float %1, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !109
  br label %58

8:                                                ; preds = %5
  %9 = fpext float %1 to double
  %10 = fpext float %3 to double
  %11 = fmul double %9, 0xBDF0002000300040
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %10, double 1.000000e+00)
  %13 = fcmp olt double %12, 0.000000e+00
  %14 = select i1 %13, double 0.000000e+00, double %12
  %15 = fsub double 1.000000e+00, %14
  %16 = tail call fastcc double @PerceptibleReciprocal(double noundef %14) #38
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %18 = load float, ptr %17, align 8, !tbaa !116
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = load float, ptr %19, align 8, !tbaa !116
  %21 = tail call fastcc float @MagickOver_(float noundef %18, float noundef %1, float noundef %20, float noundef %3) #38
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %24 = load float, ptr %23, align 4, !tbaa !117
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %26 = load float, ptr %25, align 4, !tbaa !117
  %27 = tail call fastcc float @MagickOver_(float noundef %24, float noundef %1, float noundef %26, float noundef %3) #38
  %28 = insertelement <2 x float> poison, float %21, i64 0
  %29 = insertelement <2 x float> %28, float %27, i64 1
  %30 = fpext <2 x float> %29 to <2 x double>
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %32 = load float, ptr %31, align 8, !tbaa !118
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %34 = load float, ptr %33, align 8, !tbaa !118
  %35 = tail call fastcc float @MagickOver_(float noundef %32, float noundef %1, float noundef %34, float noundef %3) #38
  %36 = fpext float %35 to double
  %37 = insertelement <4 x double> poison, double %16, i64 0
  %38 = insertelement <4 x double> %37, double %15, i64 1
  %39 = shufflevector <4 x double> %38, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %40 = shufflevector <2 x double> %30, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %41 = insertelement <4 x double> %40, double 6.553500e+04, i64 3
  %42 = insertelement <4 x double> %41, double %36, i64 2
  %43 = fmul <4 x double> %39, %42
  %44 = fptrunc <4 x double> %43 to <4 x float>
  store <4 x float> %44, ptr %22, align 8, !tbaa !73
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !119
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %58

48:                                               ; preds = %8
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !115
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %52 = load float, ptr %51, align 8, !tbaa !115
  %53 = tail call fastcc float @MagickOver_(float noundef %50, float noundef %1, float noundef %52, float noundef %3) #38
  %54 = fpext float %53 to double
  %55 = fmul double %16, %54
  %56 = fptrunc double %55 to float
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %56, ptr %57, align 8, !tbaa !115
  br label %58

58:                                               ; preds = %8, %48, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #10 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !116
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #38
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !120
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !117
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #38
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !121
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !118
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #38
  store i16 %15, ptr %2, align 2, !tbaa !122
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !110
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #38
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !123
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !114
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !124
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !115
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #38
  store i16 %33, ptr %3, align 2, !tbaa !113
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !125 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #9 {
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
define internal fastcc float @MagickOver_(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #9 {
  %5 = fpext float %1 to double
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 0xBEF0001000100010, double 1.000000e+00)
  %7 = fpext float %0 to double
  %8 = fpext float %3 to double
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 0xBEF0001000100010, double 1.000000e+00)
  %10 = fpext float %2 to double
  %11 = fmul double %9, %10
  %12 = fmul double %11, 0x3EF0001000100010
  %13 = fmul double %12, %5
  %14 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %13)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #9 {
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
define dso_local i32 @DrawClipPath(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !80
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1447, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #35
  br label %11

11:                                               ; preds = %8, %3
  %12 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %2) #35
  %13 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull %4) #35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %61, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 38
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !104
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !106
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %25 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %21, i64 noundef %23, i32 noundef 1, ptr noundef nonnull %24) #35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %61, label %27

27:                                               ; preds = %19
  %28 = call i32 @SetImageClipMask(ptr noundef nonnull %0, ptr noundef nonnull %25) #35
  %29 = call ptr @DestroyImage(ptr noundef nonnull %25) #35
  %30 = load ptr, ptr %16, align 8, !tbaa !127
  br label %31

31:                                               ; preds = %27, %15
  %32 = phi ptr [ %30, %27 ], [ %17, %15 ]
  %33 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 12
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %35 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.7, ptr noundef nonnull %33, ptr noundef nonnull %34) #35
  %36 = load ptr, ptr %16, align 8, !tbaa !127
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 12, i32 3
  store i16 -1, ptr %37, align 2, !tbaa !128
  %38 = call i32 @SetImageBackgroundColor(ptr noundef %36) #35
  %39 = load i32, ptr %5, align 8, !tbaa !80
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 37
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  %44 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1470, ptr noundef nonnull @.str.8, ptr noundef %43) #35
  br label %45

45:                                               ; preds = %41, %31
  %46 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #38
  %47 = call ptr @CloneString(ptr noundef %46, ptr noundef nonnull %13) #35
  %48 = getelementptr inbounds %struct._DrawInfo, ptr %46, i64 0, i32 5
  %49 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.9, ptr noundef nonnull %48, ptr noundef nonnull %34) #35
  %50 = getelementptr inbounds %struct._DrawInfo, ptr %46, i64 0, i32 37
  store ptr null, ptr %50, align 8, !tbaa !76
  %51 = load ptr, ptr %16, align 8, !tbaa !127
  %52 = call i32 @DrawImage(ptr noundef %51, ptr noundef %46) #38, !range !129
  %53 = load ptr, ptr %16, align 8, !tbaa !127
  %54 = call i32 @NegateImage(ptr noundef %53, i32 noundef 0) #35
  %55 = and i32 %54, %52
  %56 = call ptr @DestroyDrawInfo(ptr noundef %46) #38
  %57 = load i32, ptr %5, align 8, !tbaa !80
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %45
  %60 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1480, ptr noundef nonnull @.str.10) #35
  br label %61

61:                                               ; preds = %19, %45, %59, %11
  %62 = phi i32 [ 0, %11 ], [ %55, %59 ], [ %55, %45 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #12
  ret i32 %62
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageClipMask(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @QueryColorDatabase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._AffineMatrix, align 8
  %4 = alloca %struct._AffineMatrix, align 16
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca %struct._PixelPacket, align 8
  %12 = alloca [4096 x i8], align 16
  %13 = alloca [8192 x i8], align 16
  %14 = alloca [4096 x i8], align 16
  %15 = alloca [4096 x i8], align 16
  %16 = alloca %struct._PixelPacket, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !80
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1775, ptr noundef nonnull @.str.6, ptr noundef nonnull %24) #35
  %26 = load i32, ptr %20, align 8, !tbaa !80
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1779, ptr noundef nonnull @.str.5) #35
  br label %30

30:                                               ; preds = %2, %28, %23
  %31 = load ptr, ptr %1, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %1698, label %33

33:                                               ; preds = %30
  %34 = load i8, ptr %31, align 1, !tbaa !130
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %1698, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %20, align 8, !tbaa !80
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1784, ptr noundef nonnull @.str.11) #35
  %41 = load ptr, ptr %1, align 8, !tbaa !52
  %42 = load i8, ptr %41, align 1, !tbaa !130
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i8 [ %42, %39 ], [ %34, %36 ]
  %45 = phi ptr [ %41, %39 ], [ %31, %36 ]
  %46 = icmp eq i8 %44, 64
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @AcquireString(ptr noundef nonnull %45) #35
  br label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds i8, ptr %45, i64 1
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %52 = tail call ptr @FileToString(ptr noundef nonnull %50, i64 noundef -1, ptr noundef nonnull %51) #35
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi ptr [ %48, %47 ], [ %52, %49 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %1698, label %56

56:                                               ; preds = %53
  %57 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %54) #41
  %58 = uitofp i64 %57 to double
  %59 = tail call i32 @SetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %54) #35
  %60 = tail call dereferenceable_or_null(8) ptr @AcquireMagickMemory(i64 noundef 8) #34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = tail call ptr @DestroyString(ptr noundef nonnull %54) #35
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %66 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %64, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1803, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %65) #35
  br label %1698

67:                                               ; preds = %56
  %68 = tail call dereferenceable_or_null(262120) ptr @AcquireQuantumMemory(i64 noundef 6553, i64 noundef 40) #39
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = tail call ptr @DestroyString(ptr noundef nonnull %54) #35
  %72 = load ptr, ptr %60, align 8, !tbaa !72
  %73 = tail call ptr @DestroyDrawInfo(ptr noundef %72) #38
  store ptr %73, ptr %60, align 8, !tbaa !72
  %74 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %60) #35
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %77 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %75, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1815, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %76) #35
  br label %1698

78:                                               ; preds = %67
  %79 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef nonnull %1) #38
  store ptr %79, ptr %60, align 8, !tbaa !72
  %80 = getelementptr inbounds %struct._DrawInfo, ptr %79, i64 0, i32 2
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 8 dereferenceable(32) %81, i64 32, i1 false), !tbaa.struct !54
  %82 = load i64, ptr %81, align 8, !tbaa !131
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !132
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84, %78
  %89 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %90 = load ptr, ptr %60, align 8, !tbaa !72
  %91 = getelementptr inbounds %struct._DrawInfo, ptr %90, i64 0, i32 2
  %92 = load <2 x i64>, ptr %89, align 8, !tbaa !55
  store <2 x i64> %92, ptr %91, align 8, !tbaa !55
  br label %93

93:                                               ; preds = %88, %84
  %94 = tail call ptr @AcquireString(ptr noundef nonnull %54) #35
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %96 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.13, ptr noundef nonnull %11, ptr noundef nonnull %95) #35
  %97 = call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #35
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %1698, label %99

99:                                               ; preds = %93
  store ptr %54, ptr %10, align 8, !tbaa !72
  %100 = load i8, ptr %54, align 1, !tbaa !130
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %1667, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct._AffineMatrix, ptr %3, i64 0, i32 4
  %104 = getelementptr inbounds %struct._AffineMatrix, ptr %3, i64 0, i32 5
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %106 = getelementptr inbounds %struct._AffineMatrix, ptr %3, i64 0, i32 1
  %107 = getelementptr inbounds %struct._AffineMatrix, ptr %3, i64 0, i32 2
  %108 = getelementptr inbounds %struct._AffineMatrix, ptr %3, i64 0, i32 3
  %109 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 38
  %110 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 38, i32 2
  %111 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 38, i32 3
  %112 = getelementptr inbounds %struct._AffineMatrix, ptr %4, i64 0, i32 2
  %113 = getelementptr inbounds %struct._AffineMatrix, ptr %4, i64 0, i32 4
  %114 = ptrtoint ptr %54 to i64
  %115 = fptoui double %58 to i64
  br label %116

116:                                              ; preds = %102, %1662
  %117 = phi ptr [ %54, %102 ], [ %1664, %1662 ]
  %118 = phi ptr [ %60, %102 ], [ %1177, %1662 ]
  %119 = phi i32 [ 1, %102 ], [ %1663, %1662 ]
  %120 = phi ptr [ %68, %102 ], [ %1380, %1662 ]
  %121 = phi i64 [ 6553, %102 ], [ %1379, %1662 ]
  %122 = phi i64 [ 0, %102 ], [ %1182, %1662 ]
  br label %123

123:                                              ; preds = %116, %1230
  %124 = phi ptr [ %117, %116 ], [ %1231, %1230 ]
  %125 = phi ptr [ %118, %116 ], [ %1177, %1230 ]
  %126 = phi i32 [ %119, %116 ], [ %1178, %1230 ]
  %127 = phi i64 [ %122, %116 ], [ %1182, %1230 ]
  br label %128

128:                                              ; preds = %133, %123
  %129 = phi ptr [ %124, %123 ], [ %134, %133 ]
  call void @GetMagickToken(ptr noundef nonnull %129, ptr noundef nonnull %10, ptr noundef nonnull %6) #35
  %130 = load i8, ptr %6, align 16, !tbaa !130
  switch i8 %130, label %138 [
    i8 0, label %1667
    i8 35, label %131
  ]

131:                                              ; preds = %128
  %132 = load ptr, ptr %10, align 8, !tbaa !72
  br label %133

133:                                              ; preds = %131, %136
  %134 = phi ptr [ %132, %131 ], [ %137, %136 ]
  %135 = load i8, ptr %134, align 1, !tbaa !130
  switch i8 %135, label %136 [
    i8 0, label %1667
    i8 10, label %128
  ]

136:                                              ; preds = %133
  %137 = getelementptr inbounds i8, ptr %134, i64 1
  store ptr %137, ptr %10, align 8, !tbaa !72
  br label %133, !llvm.loop !133

138:                                              ; preds = %128
  %139 = load ptr, ptr %10, align 8, !tbaa !72
  %140 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #41
  %141 = sub i64 0, %140
  %142 = getelementptr inbounds i8, ptr %139, i64 %141
  %143 = getelementptr inbounds i8, ptr %142, i64 -1
  %144 = getelementptr inbounds ptr, ptr %125, i64 %127
  %145 = load ptr, ptr %144, align 8, !tbaa !72
  %146 = getelementptr inbounds %struct._DrawInfo, ptr %145, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %146, i64 48, i1 false), !tbaa.struct !56
  call void @GetAffineMatrix(ptr noundef nonnull %3) #38
  %147 = load i8, ptr %6, align 16, !tbaa !130
  switch i8 %147, label %1667 [
    i8 59, label %1169
    i8 97, label %148
    i8 65, label %148
    i8 98, label %192
    i8 66, label %192
    i8 99, label %203
    i8 67, label %203
    i8 100, label %248
    i8 68, label %248
    i8 101, label %270
    i8 69, label %270
    i8 102, label %281
    i8 70, label %281
    i8 103, label %433
    i8 71, label %433
    i8 105, label %449
    i8 73, label %449
    i8 107, label %476
    i8 75, label %476
    i8 108, label %484
    i8 76, label %484
    i8 109, label %487
    i8 77, label %487
    i8 111, label %490
    i8 79, label %490
    i8 112, label %519
    i8 80, label %519
    i8 114, label %818
    i8 82, label %818
    i8 115, label %843
    i8 83, label %843
    i8 116, label %1066
    i8 84, label %1066
    i8 118, label %1122
    i8 86, label %1122
  ]

148:                                              ; preds = %138, %138
  %149 = call i32 @LocaleCompare(ptr noundef nonnull @.str.14, ptr noundef nonnull %6) #35
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %189

151:                                              ; preds = %148
  %152 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %152, ptr noundef nonnull %10, ptr noundef %94) #35
  %153 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  store double %153, ptr %3, align 8, !tbaa !97
  %154 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %154, ptr noundef nonnull %10, ptr noundef %94) #35
  %155 = load i8, ptr %94, align 1, !tbaa !130
  %156 = icmp eq i8 %155, 44
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %158, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %159

159:                                              ; preds = %157, %151
  %160 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  store double %160, ptr %106, align 8, !tbaa !94
  %161 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %161, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %162 = load i8, ptr %94, align 1, !tbaa !130
  %163 = icmp eq i8 %162, 44
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %165, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %166

166:                                              ; preds = %164, %159
  %167 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  store double %167, ptr %107, align 8, !tbaa !96
  %168 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %168, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %169 = load i8, ptr %94, align 1, !tbaa !130
  %170 = icmp eq i8 %169, 44
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %172, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %173

173:                                              ; preds = %171, %166
  %174 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  store double %174, ptr %108, align 8, !tbaa !93
  %175 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %175, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %176 = load i8, ptr %94, align 1, !tbaa !130
  %177 = icmp eq i8 %176, 44
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %179, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %180

180:                                              ; preds = %178, %173
  %181 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  store double %181, ptr %103, align 8, !tbaa !95
  %182 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %182, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %183 = load i8, ptr %94, align 1, !tbaa !130
  %184 = icmp eq i8 %183, 44
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %186, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %187

187:                                              ; preds = %185, %180
  %188 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  store double %188, ptr %104, align 8, !tbaa !92
  br label %1169

189:                                              ; preds = %148
  %190 = call i32 @LocaleCompare(ptr noundef nonnull @.str.15, ptr noundef nonnull %6) #35
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %1169, label %1667

192:                                              ; preds = %138, %138
  %193 = call i32 @LocaleCompare(ptr noundef nonnull @.str.16, ptr noundef nonnull %6) #35
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %1169, label %195

195:                                              ; preds = %192
  %196 = call i32 @LocaleCompare(ptr noundef nonnull @.str.17, ptr noundef nonnull %6) #35
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %1667

198:                                              ; preds = %195
  %199 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %199, ptr noundef nonnull %10, ptr noundef %94) #35
  %200 = load ptr, ptr %144, align 8, !tbaa !72
  %201 = getelementptr inbounds %struct._DrawInfo, ptr %200, i64 0, i32 34
  %202 = call i32 @QueryColorDatabase(ptr noundef %94, ptr noundef nonnull %201, ptr noundef nonnull %95) #35
  br label %1169

203:                                              ; preds = %138, %138
  %204 = call i32 @LocaleCompare(ptr noundef nonnull @.str.18, ptr noundef nonnull %6) #35
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %207, ptr noundef nonnull %10, ptr noundef %94) #35
  %208 = load ptr, ptr %144, align 8, !tbaa !72
  %209 = getelementptr inbounds %struct._DrawInfo, ptr %208, i64 0, i32 37
  %210 = call ptr @CloneString(ptr noundef nonnull %209, ptr noundef %94) #35
  %211 = load ptr, ptr %144, align 8, !tbaa !72
  %212 = getelementptr inbounds %struct._DrawInfo, ptr %211, i64 0, i32 37
  %213 = load ptr, ptr %212, align 8, !tbaa !76
  %214 = call i32 @DrawClipPath(ptr noundef %0, ptr noundef %211, ptr noundef %213) #38, !range !129
  br label %1169

215:                                              ; preds = %203
  %216 = call i32 @LocaleCompare(ptr noundef nonnull @.str.19, ptr noundef nonnull %6) #35
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %219, ptr noundef nonnull %10, ptr noundef %94) #35
  %220 = call i64 @ParseCommandOption(i32 noundef 24, i32 noundef 0, ptr noundef %94) #35
  %221 = icmp eq i64 %220, -1
  br i1 %221, label %1667, label %222

222:                                              ; preds = %218
  %223 = trunc i64 %220 to i32
  %224 = load ptr, ptr %144, align 8, !tbaa !72
  %225 = getelementptr inbounds %struct._DrawInfo, ptr %224, i64 0, i32 14
  store i32 %223, ptr %225, align 8, !tbaa !28
  br label %1169

226:                                              ; preds = %215
  %227 = call i32 @LocaleCompare(ptr noundef nonnull @.str.20, ptr noundef nonnull %6) #35
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %226
  %230 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %230, ptr noundef nonnull %10, ptr noundef %94) #35
  %231 = call i64 @ParseCommandOption(i32 noundef 6, i32 noundef 0, ptr noundef %94) #35
  %232 = icmp eq i64 %231, -1
  br i1 %232, label %1667, label %233

233:                                              ; preds = %229
  %234 = trunc i64 %231 to i32
  %235 = load ptr, ptr %144, align 8, !tbaa !72
  %236 = getelementptr inbounds %struct._DrawInfo, ptr %235, i64 0, i32 39
  store i32 %234, ptr %236, align 8, !tbaa !78
  %237 = icmp eq i64 %231, 3
  br i1 %237, label %238, label %1169

238:                                              ; preds = %233
  call void @GetAffineMatrix(ptr noundef nonnull %4) #38
  %239 = load double, ptr %110, align 8, !tbaa !134
  store double %239, ptr %3, align 8, !tbaa !97
  %240 = load double, ptr %111, align 8, !tbaa !135
  store double %240, ptr %108, align 8, !tbaa !93
  %241 = load <2 x double>, ptr %109, align 8, !tbaa !57
  store <2 x double> %241, ptr %103, align 8, !tbaa !57
  br label %1169

242:                                              ; preds = %226
  %243 = call i32 @LocaleCompare(ptr noundef nonnull @.str.21, ptr noundef nonnull %6) #35
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %1169, label %245

245:                                              ; preds = %242
  %246 = call i32 @LocaleCompare(ptr noundef nonnull @.str.22, ptr noundef nonnull %6) #35
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %1169, label %1667

248:                                              ; preds = %138, %138
  %249 = call i32 @LocaleCompare(ptr noundef nonnull @.str.23, ptr noundef nonnull %6) #35
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %248
  %252 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %252, ptr noundef nonnull %10, ptr noundef %94) #35
  %253 = call i64 @ParseCommandOption(i32 noundef 16, i32 noundef 0, ptr noundef %94) #35
  %254 = icmp eq i64 %253, -1
  br i1 %254, label %1667, label %255

255:                                              ; preds = %251
  %256 = trunc i64 %253 to i32
  %257 = load ptr, ptr %144, align 8, !tbaa !72
  %258 = getelementptr inbounds %struct._DrawInfo, ptr %257, i64 0, i32 19
  store i32 %256, ptr %258, align 8, !tbaa !32
  br label %1169

259:                                              ; preds = %248
  %260 = call i32 @LocaleCompare(ptr noundef nonnull @.str.24, ptr noundef nonnull %6) #35
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %1667

262:                                              ; preds = %259
  %263 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %263, ptr noundef nonnull %10, ptr noundef %94) #35
  %264 = call i64 @ParseCommandOption(i32 noundef 18, i32 noundef 0, ptr noundef %94) #35
  %265 = icmp eq i64 %264, -1
  br i1 %265, label %1667, label %266

266:                                              ; preds = %262
  %267 = trunc i64 %264 to i32
  %268 = load ptr, ptr %144, align 8, !tbaa !72
  %269 = getelementptr inbounds %struct._DrawInfo, ptr %268, i64 0, i32 48
  store i32 %267, ptr %269, align 8, !tbaa !48
  br label %1169

270:                                              ; preds = %138, %138
  %271 = call i32 @LocaleCompare(ptr noundef nonnull @.str.25, ptr noundef nonnull %6) #35
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %1169, label %273

273:                                              ; preds = %270
  %274 = call i32 @LocaleCompare(ptr noundef nonnull @.str.26, ptr noundef nonnull %6) #35
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %1667

276:                                              ; preds = %273
  %277 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %277, ptr noundef nonnull %10, ptr noundef %94) #35
  %278 = load ptr, ptr %144, align 8, !tbaa !72
  %279 = getelementptr inbounds %struct._DrawInfo, ptr %278, i64 0, i32 29
  %280 = call ptr @CloneString(ptr noundef nonnull %279, ptr noundef %94) #35
  br label %1169

281:                                              ; preds = %138, %138
  %282 = call i32 @LocaleCompare(ptr noundef nonnull @.str.27, ptr noundef nonnull %6) #35
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %306

284:                                              ; preds = %281
  %285 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %285, ptr noundef nonnull %10, ptr noundef %94) #35
  %286 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %94) #35
  %287 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull %9) #35
  %288 = icmp eq ptr %287, null
  %289 = load ptr, ptr %144, align 8, !tbaa !72
  br i1 %288, label %293, label %290

290:                                              ; preds = %284
  %291 = getelementptr inbounds %struct._DrawInfo, ptr %289, i64 0, i32 9
  %292 = call i32 @DrawPatternPath(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %94, ptr noundef nonnull %291) #38, !range !129
  br label %1169

293:                                              ; preds = %284
  %294 = getelementptr inbounds %struct._DrawInfo, ptr %289, i64 0, i32 5
  %295 = call i32 @QueryColorDatabase(ptr noundef %94, ptr noundef nonnull %294, ptr noundef nonnull %95) #35
  %296 = and i32 %295, %126
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %1176

298:                                              ; preds = %293
  %299 = call ptr @AcquireImageInfo() #35
  %300 = getelementptr inbounds %struct._ImageInfo, ptr %299, i64 0, i32 51
  %301 = call i64 @CopyMagickString(ptr noundef nonnull %300, ptr noundef %94, i64 noundef 4096) #35
  %302 = call ptr @ReadImage(ptr noundef %299, ptr noundef nonnull %95) #35
  %303 = load ptr, ptr %144, align 8, !tbaa !72
  %304 = getelementptr inbounds %struct._DrawInfo, ptr %303, i64 0, i32 9
  store ptr %302, ptr %304, align 8, !tbaa !58
  call void @CatchException(ptr noundef nonnull %95) #35
  %305 = call ptr @DestroyImageInfo(ptr noundef %299) #35
  br label %1667

306:                                              ; preds = %281
  %307 = call i32 @LocaleCompare(ptr noundef nonnull @.str.28, ptr noundef nonnull %6) #35
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %322

309:                                              ; preds = %306
  %310 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %310, ptr noundef nonnull %10, ptr noundef %94) #35
  %311 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %94, i32 noundef 37) #41
  %312 = icmp eq ptr %311, null
  %313 = select i1 %312, double 1.000000e+00, double 1.000000e-02
  %314 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %315 = fneg double %313
  %316 = call double @llvm.fmuladd.f64(double %315, double %314, double 1.000000e+00)
  %317 = fmul double %316, 6.553500e+04
  %318 = fptrunc double %317 to float
  %319 = call fastcc zeroext i16 @ClampToQuantum(float noundef %318) #38
  %320 = load ptr, ptr %144, align 8, !tbaa !72
  %321 = getelementptr inbounds %struct._DrawInfo, ptr %320, i64 0, i32 5, i32 3
  store i16 %319, ptr %321, align 2, !tbaa !136
  br label %1169

322:                                              ; preds = %306
  %323 = call i32 @LocaleCompare(ptr noundef nonnull @.str.29, ptr noundef nonnull %6) #35
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %322
  %326 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %326, ptr noundef nonnull %10, ptr noundef %94) #35
  %327 = call i64 @ParseCommandOption(i32 noundef 24, i32 noundef 0, ptr noundef %94) #35
  %328 = icmp eq i64 %327, -1
  br i1 %328, label %1667, label %329

329:                                              ; preds = %325
  %330 = trunc i64 %327 to i32
  %331 = load ptr, ptr %144, align 8, !tbaa !72
  %332 = getelementptr inbounds %struct._DrawInfo, ptr %331, i64 0, i32 14
  store i32 %330, ptr %332, align 8, !tbaa !28
  br label %1169

333:                                              ; preds = %322
  %334 = call i32 @LocaleCompare(ptr noundef nonnull @.str.30, ptr noundef nonnull %6) #35
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %350

336:                                              ; preds = %333
  %337 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %337, ptr noundef nonnull %10, ptr noundef %94) #35
  %338 = load ptr, ptr %144, align 8, !tbaa !72
  %339 = getelementptr inbounds %struct._DrawInfo, ptr %338, i64 0, i32 23
  %340 = call ptr @CloneString(ptr noundef nonnull %339, ptr noundef %94) #35
  %341 = call i32 @LocaleCompare(ptr noundef nonnull @.str.31, ptr noundef %94) #35
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %1169

343:                                              ; preds = %336
  %344 = load ptr, ptr %144, align 8, !tbaa !72
  %345 = getelementptr inbounds %struct._DrawInfo, ptr %344, i64 0, i32 23
  %346 = load ptr, ptr %345, align 8, !tbaa !34
  %347 = call ptr @RelinquishMagickMemory(ptr noundef %346) #35
  %348 = load ptr, ptr %144, align 8, !tbaa !72
  %349 = getelementptr inbounds %struct._DrawInfo, ptr %348, i64 0, i32 23
  store ptr %347, ptr %349, align 8, !tbaa !34
  br label %1169

350:                                              ; preds = %333
  %351 = call i32 @LocaleCompare(ptr noundef nonnull @.str.32, ptr noundef nonnull %6) #35
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %350
  %354 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %354, ptr noundef nonnull %10, ptr noundef %94) #35
  %355 = load ptr, ptr %144, align 8, !tbaa !72
  %356 = getelementptr inbounds %struct._DrawInfo, ptr %355, i64 0, i32 25
  %357 = call ptr @CloneString(ptr noundef nonnull %356, ptr noundef %94) #35
  br label %1169

358:                                              ; preds = %350
  %359 = call i32 @LocaleCompare(ptr noundef nonnull @.str.33, ptr noundef nonnull %6) #35
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  %362 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %362, ptr noundef nonnull %10, ptr noundef %94) #35
  %363 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %364 = load ptr, ptr %144, align 8, !tbaa !72
  %365 = getelementptr inbounds %struct._DrawInfo, ptr %364, i64 0, i32 30
  store double %363, ptr %365, align 8, !tbaa !38
  br label %1169

366:                                              ; preds = %358
  %367 = call i32 @LocaleCompare(ptr noundef nonnull @.str.34, ptr noundef nonnull %6) #35
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %366
  %370 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %370, ptr noundef nonnull %10, ptr noundef %94) #35
  %371 = call i64 @ParseCommandOption(i32 noundef 63, i32 noundef 0, ptr noundef %94) #35
  %372 = icmp eq i64 %371, -1
  br i1 %372, label %1667, label %373

373:                                              ; preds = %369
  %374 = trunc i64 %371 to i32
  %375 = load ptr, ptr %144, align 8, !tbaa !72
  %376 = getelementptr inbounds %struct._DrawInfo, ptr %375, i64 0, i32 27
  store i32 %374, ptr %376, align 4, !tbaa !137
  br label %1169

377:                                              ; preds = %366
  %378 = call i32 @LocaleCompare(ptr noundef nonnull @.str.35, ptr noundef nonnull %6) #35
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %377
  %381 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %381, ptr noundef nonnull %10, ptr noundef %94) #35
  %382 = call i64 @ParseCommandOption(i32 noundef 64, i32 noundef 0, ptr noundef %94) #35
  %383 = icmp eq i64 %382, -1
  br i1 %383, label %1667, label %384

384:                                              ; preds = %380
  %385 = trunc i64 %382 to i32
  %386 = load ptr, ptr %144, align 8, !tbaa !72
  %387 = getelementptr inbounds %struct._DrawInfo, ptr %386, i64 0, i32 26
  store i32 %385, ptr %387, align 8, !tbaa !138
  br label %1169

388:                                              ; preds = %377
  %389 = call i32 @LocaleCompare(ptr noundef nonnull @.str.36, ptr noundef nonnull %6) #35
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %1667

391:                                              ; preds = %388
  %392 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %392, ptr noundef nonnull %10, ptr noundef %94) #35
  %393 = call fastcc i64 @StringToUnsignedLong(ptr noundef %94) #38
  %394 = load ptr, ptr %144, align 8, !tbaa !72
  %395 = getelementptr inbounds %struct._DrawInfo, ptr %394, i64 0, i32 28
  store i64 %393, ptr %395, align 8, !tbaa !65
  %396 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.37) #35
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %391
  %399 = load ptr, ptr %144, align 8, !tbaa !72
  %400 = getelementptr inbounds %struct._DrawInfo, ptr %399, i64 0, i32 28
  store i64 0, ptr %400, align 8, !tbaa !65
  br label %401

401:                                              ; preds = %398, %391
  %402 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.38) #35
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %401
  %405 = load ptr, ptr %144, align 8, !tbaa !72
  %406 = getelementptr inbounds %struct._DrawInfo, ptr %405, i64 0, i32 28
  store i64 700, ptr %406, align 8, !tbaa !65
  br label %407

407:                                              ; preds = %404, %401
  %408 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.39) #35
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %407
  %411 = load ptr, ptr %144, align 8, !tbaa !72
  %412 = getelementptr inbounds %struct._DrawInfo, ptr %411, i64 0, i32 28
  %413 = load i64, ptr %412, align 8, !tbaa !65
  %414 = icmp ult i64 %413, 801
  br i1 %414, label %415, label %417

415:                                              ; preds = %410
  %416 = add nuw nsw i64 %413, 100
  store i64 %416, ptr %412, align 8, !tbaa !65
  br label %417

417:                                              ; preds = %410, %415, %407
  %418 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.40) #35
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %427

420:                                              ; preds = %417
  %421 = load ptr, ptr %144, align 8, !tbaa !72
  %422 = getelementptr inbounds %struct._DrawInfo, ptr %421, i64 0, i32 28
  %423 = load i64, ptr %422, align 8, !tbaa !65
  %424 = icmp ugt i64 %423, 99
  br i1 %424, label %425, label %427

425:                                              ; preds = %420
  %426 = add i64 %423, -100
  store i64 %426, ptr %422, align 8, !tbaa !65
  br label %427

427:                                              ; preds = %420, %425, %417
  %428 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.41) #35
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %1169

430:                                              ; preds = %427
  %431 = load ptr, ptr %144, align 8, !tbaa !72
  %432 = getelementptr inbounds %struct._DrawInfo, ptr %431, i64 0, i32 28
  store i64 400, ptr %432, align 8, !tbaa !65
  br label %1169

433:                                              ; preds = %138, %138
  %434 = call i32 @LocaleCompare(ptr noundef nonnull @.str.42, ptr noundef nonnull %6) #35
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %433
  %437 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %437, ptr noundef nonnull %10, ptr noundef %94) #35
  br label %1169

438:                                              ; preds = %433
  %439 = call i32 @LocaleCompare(ptr noundef nonnull @.str.43, ptr noundef nonnull %6) #35
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %1667

441:                                              ; preds = %438
  %442 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %442, ptr noundef nonnull %10, ptr noundef %94) #35
  %443 = call i64 @ParseCommandOption(i32 noundef 30, i32 noundef 0, ptr noundef %94) #35
  %444 = icmp eq i64 %443, -1
  br i1 %444, label %1667, label %445

445:                                              ; preds = %441
  %446 = trunc i64 %443 to i32
  %447 = load ptr, ptr %144, align 8, !tbaa !72
  %448 = getelementptr inbounds %struct._DrawInfo, ptr %447, i64 0, i32 4
  store i32 %446, ptr %448, align 8, !tbaa !50
  br label %1169

449:                                              ; preds = %138, %138
  %450 = call i32 @LocaleCompare(ptr noundef nonnull @.str.44, ptr noundef nonnull %6) #35
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %460

452:                                              ; preds = %449
  %453 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %453, ptr noundef nonnull %10, ptr noundef %94) #35
  %454 = call i64 @ParseCommandOption(i32 noundef 11, i32 noundef 0, ptr noundef %94) #35
  %455 = icmp eq i64 %454, -1
  br i1 %455, label %1667, label %456

456:                                              ; preds = %452
  %457 = trunc i64 %454 to i32
  %458 = load ptr, ptr %144, align 8, !tbaa !72
  %459 = getelementptr inbounds %struct._DrawInfo, ptr %458, i64 0, i32 20
  store i32 %457, ptr %459, align 4, !tbaa !41
  br label %1169

460:                                              ; preds = %449
  %461 = call i32 @LocaleCompare(ptr noundef nonnull @.str.45, ptr noundef nonnull %6) #35
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %468

463:                                              ; preds = %460
  %464 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %464, ptr noundef nonnull %10, ptr noundef %94) #35
  %465 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %466 = load ptr, ptr %144, align 8, !tbaa !72
  %467 = getelementptr inbounds %struct._DrawInfo, ptr %466, i64 0, i32 47
  store double %465, ptr %467, align 8, !tbaa !47
  br label %1169

468:                                              ; preds = %460
  %469 = call i32 @LocaleCompare(ptr noundef nonnull @.str.46, ptr noundef nonnull %6) #35
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %1667

471:                                              ; preds = %468
  %472 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %472, ptr noundef nonnull %10, ptr noundef %94) #35
  %473 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %474 = load ptr, ptr %144, align 8, !tbaa !72
  %475 = getelementptr inbounds %struct._DrawInfo, ptr %474, i64 0, i32 46
  store double %473, ptr %475, align 8, !tbaa !49
  br label %1169

476:                                              ; preds = %138, %138
  %477 = call i32 @LocaleCompare(ptr noundef nonnull @.str.47, ptr noundef nonnull %6) #35
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %1667

479:                                              ; preds = %476
  %480 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %480, ptr noundef nonnull %10, ptr noundef %94) #35
  %481 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %482 = load ptr, ptr %144, align 8, !tbaa !72
  %483 = getelementptr inbounds %struct._DrawInfo, ptr %482, i64 0, i32 45
  store double %481, ptr %483, align 8, !tbaa !46
  br label %1169

484:                                              ; preds = %138, %138
  %485 = call i32 @LocaleCompare(ptr noundef nonnull @.str.48, ptr noundef nonnull %6) #35
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %1169, label %1667

487:                                              ; preds = %138, %138
  %488 = call i32 @LocaleCompare(ptr noundef nonnull @.str.49, ptr noundef nonnull %6) #35
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %1169, label %1667

490:                                              ; preds = %138, %138
  %491 = call i32 @LocaleCompare(ptr noundef nonnull @.str.50, ptr noundef nonnull %6) #35
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %490
  %494 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %494, ptr noundef nonnull %10, ptr noundef %94) #35
  br label %1169

495:                                              ; preds = %490
  %496 = call i32 @LocaleCompare(ptr noundef nonnull @.str.51, ptr noundef nonnull %6) #35
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %1667

498:                                              ; preds = %495
  %499 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %499, ptr noundef nonnull %10, ptr noundef %94) #35
  %500 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %94, i32 noundef 37) #41
  %501 = icmp eq ptr %500, null
  %502 = select i1 %501, double 1.000000e+00, double 1.000000e-02
  %503 = load ptr, ptr %144, align 8, !tbaa !72
  %504 = getelementptr inbounds %struct._DrawInfo, ptr %503, i64 0, i32 40
  %505 = load i16, ptr %504, align 4, !tbaa !27
  %506 = uitofp i16 %505 to double
  %507 = call double @llvm.fmuladd.f64(double %506, double 0xBEF0001000100010, double 1.000000e+00)
  %508 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %509 = fneg double %507
  %510 = fmul double %502, %509
  %511 = call double @llvm.fmuladd.f64(double %510, double %508, double 1.000000e+00)
  %512 = fmul double %511, 6.553500e+04
  %513 = fptrunc double %512 to float
  %514 = call fastcc zeroext i16 @ClampToQuantum(float noundef %513) #38
  %515 = load ptr, ptr %144, align 8, !tbaa !72
  %516 = getelementptr inbounds %struct._DrawInfo, ptr %515, i64 0, i32 40
  store i16 %514, ptr %516, align 4, !tbaa !27
  %517 = getelementptr inbounds %struct._DrawInfo, ptr %515, i64 0, i32 5, i32 3
  store i16 %514, ptr %517, align 2, !tbaa !136
  %518 = getelementptr inbounds %struct._DrawInfo, ptr %515, i64 0, i32 6, i32 3
  store i16 %514, ptr %518, align 2, !tbaa !139
  br label %1169

519:                                              ; preds = %138, %138
  %520 = call i32 @LocaleCompare(ptr noundef nonnull @.str.52, ptr noundef nonnull %6) #35
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %1169, label %522

522:                                              ; preds = %519
  %523 = call i32 @LocaleCompare(ptr noundef nonnull @.str.53, ptr noundef nonnull %6) #35
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %1169, label %525

525:                                              ; preds = %522
  %526 = call i32 @LocaleCompare(ptr noundef nonnull @.str.54, ptr noundef nonnull %6) #35
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %1169, label %528

528:                                              ; preds = %525
  %529 = call i32 @LocaleCompare(ptr noundef nonnull @.str.55, ptr noundef nonnull %6) #35
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %1169, label %531

531:                                              ; preds = %528
  %532 = call i32 @LocaleCompare(ptr noundef nonnull @.str.56, ptr noundef nonnull %6) #35
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %572

534:                                              ; preds = %531
  %535 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %535, ptr noundef nonnull %10, ptr noundef %94) #35
  %536 = call i32 @LocaleCompare(ptr noundef nonnull @.str.18, ptr noundef %94) #35
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %1169, label %538

538:                                              ; preds = %534
  %539 = call i32 @LocaleCompare(ptr noundef nonnull @.str.57, ptr noundef %94) #35
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %1169, label %541

541:                                              ; preds = %538
  %542 = call i32 @LocaleCompare(ptr noundef nonnull @.str.58, ptr noundef %94) #35
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %1169, label %544

544:                                              ; preds = %541
  %545 = call i32 @LocaleCompare(ptr noundef nonnull @.str.59, ptr noundef %94) #35
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %569

547:                                              ; preds = %544
  %548 = icmp slt i64 %127, 1
  br i1 %548, label %549, label %551

549:                                              ; preds = %547
  %550 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %95, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2311, i32 noundef 460, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.3, ptr noundef %94) #35
  br label %1169

551:                                              ; preds = %547
  %552 = load ptr, ptr %144, align 8, !tbaa !72
  %553 = getelementptr inbounds %struct._DrawInfo, ptr %552, i64 0, i32 37
  %554 = load ptr, ptr %553, align 8, !tbaa !76
  %555 = icmp eq ptr %554, null
  %556 = add nsw i64 %127, -1
  br i1 %555, label %566, label %557

557:                                              ; preds = %551
  %558 = getelementptr inbounds ptr, ptr %125, i64 %556
  %559 = load ptr, ptr %558, align 8, !tbaa !72
  %560 = getelementptr inbounds %struct._DrawInfo, ptr %559, i64 0, i32 37
  %561 = load ptr, ptr %560, align 8, !tbaa !76
  %562 = call i32 @LocaleCompare(ptr noundef nonnull %554, ptr noundef %561) #35
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %566, label %564

564:                                              ; preds = %557
  %565 = call i32 @SetImageClipMask(ptr noundef %0, ptr noundef null) #35
  br label %566

566:                                              ; preds = %551, %557, %564
  %567 = load ptr, ptr %144, align 8, !tbaa !72
  %568 = call ptr @DestroyDrawInfo(ptr noundef %567) #38
  store ptr %568, ptr %144, align 8, !tbaa !72
  br label %1169

569:                                              ; preds = %544
  %570 = call i32 @LocaleCompare(ptr noundef nonnull @.str.61, ptr noundef %94) #35
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %1169, label %1667

572:                                              ; preds = %531
  %573 = call i32 @LocaleCompare(ptr noundef nonnull @.str.62, ptr noundef nonnull %6) #35
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %1667

575:                                              ; preds = %572
  %576 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %576, ptr noundef nonnull %10, ptr noundef %94) #35
  %577 = call i32 @LocaleCompare(ptr noundef nonnull @.str.18, ptr noundef %94) #35
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %608

579:                                              ; preds = %575
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %12) #12
  %580 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %580, ptr noundef nonnull %10, ptr noundef %94) #35
  %581 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %12, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %94) #35
  %582 = load ptr, ptr %10, align 8, !tbaa !72
  %583 = load i8, ptr %582, align 1, !tbaa !130
  %584 = icmp eq i8 %583, 0
  br i1 %584, label %599, label %585

585:                                              ; preds = %579, %589
  %586 = phi ptr [ %590, %589 ], [ %582, %579 ]
  call void @GetMagickToken(ptr noundef nonnull %586, ptr noundef nonnull %10, ptr noundef %94) #35
  %587 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.56) #35
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %593, label %589

589:                                              ; preds = %585, %593
  %590 = load ptr, ptr %10, align 8, !tbaa !72
  %591 = load i8, ptr %590, align 1, !tbaa !130
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %599, label %585, !llvm.loop !140

593:                                              ; preds = %585
  %594 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %594, ptr noundef null, ptr noundef %94) #35
  %595 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.18) #35
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %589

597:                                              ; preds = %593
  %598 = load ptr, ptr %10, align 8, !tbaa !72
  br label %599

599:                                              ; preds = %589, %597, %579
  %600 = phi ptr [ %582, %579 ], [ %598, %597 ], [ %590, %589 ]
  %601 = ptrtoint ptr %600 to i64
  %602 = ptrtoint ptr %582 to i64
  %603 = sub i64 %601, %602
  %604 = add i64 %603, -3
  %605 = call i64 @CopyMagickString(ptr noundef %94, ptr noundef nonnull %582, i64 noundef %604) #35
  %606 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %94) #35
  %607 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %607, ptr noundef nonnull %10, ptr noundef %94) #35
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %12) #12
  br label %1169

608:                                              ; preds = %575
  %609 = call i32 @LocaleCompare(ptr noundef nonnull @.str.58, ptr noundef %94) #35
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %725

611:                                              ; preds = %608
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %15) #12
  %612 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %612, ptr noundef nonnull %10, ptr noundef %94) #35
  %613 = call i64 @CopyMagickString(ptr noundef nonnull %14, ptr noundef %94, i64 noundef 4096) #35
  %614 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %614, ptr noundef nonnull %10, ptr noundef %94) #35
  %615 = call i64 @CopyMagickString(ptr noundef nonnull %15, ptr noundef %94, i64 noundef 4096) #35
  %616 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %616, ptr noundef nonnull %10, ptr noundef %94) #35
  %617 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %618 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %618, ptr noundef nonnull %10, ptr noundef %94) #35
  %619 = load i8, ptr %94, align 1, !tbaa !130
  %620 = icmp eq i8 %619, 44
  br i1 %620, label %621, label %623

621:                                              ; preds = %611
  %622 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %622, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %623

623:                                              ; preds = %621, %611
  %624 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %625 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %625, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %626 = load i8, ptr %94, align 1, !tbaa !130
  %627 = icmp eq i8 %626, 44
  br i1 %627, label %628, label %630

628:                                              ; preds = %623
  %629 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %629, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %630

630:                                              ; preds = %628, %623
  %631 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %632 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %632, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %633 = load i8, ptr %94, align 1, !tbaa !130
  %634 = icmp eq i8 %633, 44
  br i1 %634, label %635, label %637

635:                                              ; preds = %630
  %636 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %636, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %637

637:                                              ; preds = %635, %630
  %638 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %639 = call i32 @LocaleCompare(ptr noundef nonnull %15, ptr noundef nonnull @.str.63) #35
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %647

641:                                              ; preds = %637
  %642 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %642, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %643 = load i8, ptr %94, align 1, !tbaa !130
  %644 = icmp eq i8 %643, 44
  br i1 %644, label %645, label %647

645:                                              ; preds = %641
  %646 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %646, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %647

647:                                              ; preds = %641, %645, %637
  %648 = load ptr, ptr %10, align 8, !tbaa !72
  %649 = load i8, ptr %648, align 1, !tbaa !130
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %665, label %651

651:                                              ; preds = %647, %655
  %652 = phi ptr [ %656, %655 ], [ %648, %647 ]
  call void @GetMagickToken(ptr noundef nonnull %652, ptr noundef nonnull %10, ptr noundef %94) #35
  %653 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.56) #35
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %659, label %655

655:                                              ; preds = %651, %659
  %656 = load ptr, ptr %10, align 8, !tbaa !72
  %657 = load i8, ptr %656, align 1, !tbaa !130
  %658 = icmp eq i8 %657, 0
  br i1 %658, label %665, label %651, !llvm.loop !141

659:                                              ; preds = %651
  %660 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %660, ptr noundef null, ptr noundef %94) #35
  %661 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.58) #35
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %655

663:                                              ; preds = %659
  %664 = load ptr, ptr %10, align 8, !tbaa !72
  br label %665

665:                                              ; preds = %655, %663, %647
  %666 = phi ptr [ %648, %647 ], [ %664, %663 ], [ %656, %655 ]
  %667 = ptrtoint ptr %666 to i64
  %668 = ptrtoint ptr %648 to i64
  %669 = sub i64 %667, %668
  %670 = add i64 %669, -3
  %671 = call i64 @CopyMagickString(ptr noundef %94, ptr noundef nonnull %648, i64 noundef %670) #35
  %672 = load ptr, ptr %144, align 8, !tbaa !72
  %673 = getelementptr inbounds %struct._DrawInfo, ptr %672, i64 0, i32 3
  %674 = load double, ptr %673, align 8, !tbaa !142
  %675 = getelementptr inbounds %struct._DrawInfo, ptr %672, i64 0, i32 3, i32 2
  %676 = load double, ptr %675, align 8, !tbaa !143
  %677 = getelementptr inbounds %struct._DrawInfo, ptr %672, i64 0, i32 3, i32 4
  %678 = load double, ptr %677, align 8, !tbaa !144
  %679 = getelementptr inbounds %struct._DrawInfo, ptr %672, i64 0, i32 3, i32 1
  %680 = load double, ptr %679, align 8, !tbaa !145
  %681 = getelementptr inbounds %struct._DrawInfo, ptr %672, i64 0, i32 3, i32 3
  %682 = load double, ptr %681, align 8, !tbaa !146
  %683 = getelementptr inbounds %struct._DrawInfo, ptr %672, i64 0, i32 3, i32 5
  %684 = load double, ptr %683, align 8, !tbaa !147
  %685 = insertelement <2 x double> poison, double %638, i64 0
  %686 = insertelement <2 x double> %685, double %624, i64 1
  %687 = insertelement <2 x double> poison, double %676, i64 0
  %688 = shufflevector <2 x double> %687, <2 x double> poison, <2 x i32> zeroinitializer
  %689 = fmul <2 x double> %686, %688
  %690 = insertelement <2 x double> poison, double %674, i64 0
  %691 = shufflevector <2 x double> %690, <2 x double> poison, <2 x i32> zeroinitializer
  %692 = insertelement <2 x double> poison, double %631, i64 0
  %693 = insertelement <2 x double> %692, double %617, i64 1
  %694 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %691, <2 x double> %693, <2 x double> %689)
  %695 = insertelement <2 x double> poison, double %678, i64 0
  %696 = shufflevector <2 x double> %695, <2 x double> poison, <2 x i32> zeroinitializer
  %697 = fadd <2 x double> %696, %694
  %698 = insertelement <2 x double> poison, double %682, i64 0
  %699 = shufflevector <2 x double> %698, <2 x double> poison, <2 x i32> zeroinitializer
  %700 = fmul <2 x double> %686, %699
  %701 = insertelement <2 x double> poison, double %680, i64 0
  %702 = shufflevector <2 x double> %701, <2 x double> poison, <2 x i32> zeroinitializer
  %703 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %702, <2 x double> %693, <2 x double> %700)
  %704 = insertelement <2 x double> poison, double %684, i64 0
  %705 = shufflevector <2 x double> %704, <2 x double> poison, <2 x i32> zeroinitializer
  %706 = fadd <2 x double> %705, %703
  %707 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %13, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull %14) #35
  %708 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %94) #35
  %709 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %13, i64 noundef 4096, ptr noundef nonnull @.str.64, ptr noundef nonnull %14) #35
  %710 = extractelement <2 x double> %697, i64 0
  %711 = extractelement <2 x double> %697, i64 1
  %712 = fsub double %710, %711
  %713 = fadd double %712, 1.000000e+00
  %714 = call double @llvm.fabs.f64(double %713)
  %715 = call fastcc double @MagickMax(double noundef %714, double noundef 1.000000e+00) #38
  %716 = extractelement <2 x double> %706, i64 0
  %717 = extractelement <2 x double> %706, i64 1
  %718 = fsub double %716, %717
  %719 = fadd double %718, 1.000000e+00
  %720 = call double @llvm.fabs.f64(double %719)
  %721 = call fastcc double @MagickMax(double noundef %720, double noundef 1.000000e+00) #38
  %722 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.65, double noundef %715, double noundef %721, double noundef %711, double noundef %717) #35
  %723 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %7) #35
  %724 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %724, ptr noundef nonnull %10, ptr noundef %94) #35
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %13) #12
  br label %1169

725:                                              ; preds = %608
  %726 = call i32 @LocaleCompare(ptr noundef nonnull @.str.61, ptr noundef %94) #35
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %800

728:                                              ; preds = %725
  %729 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %729, ptr noundef nonnull %10, ptr noundef %94) #35
  %730 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef %94, i64 noundef 4096) #35
  %731 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %731, ptr noundef nonnull %10, ptr noundef %94) #35
  %732 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %733 = fadd double %732, -5.000000e-01
  %734 = call double @llvm.ceil.f64(double %733)
  %735 = fptosi double %734 to i64
  %736 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %736, ptr noundef nonnull %10, ptr noundef %94) #35
  %737 = load i8, ptr %94, align 1, !tbaa !130
  %738 = icmp eq i8 %737, 44
  br i1 %738, label %739, label %741

739:                                              ; preds = %728
  %740 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %740, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %741

741:                                              ; preds = %739, %728
  %742 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %743 = fadd double %742, -5.000000e-01
  %744 = call double @llvm.ceil.f64(double %743)
  %745 = fptosi double %744 to i64
  %746 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %746, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %747 = load i8, ptr %94, align 1, !tbaa !130
  %748 = icmp eq i8 %747, 44
  br i1 %748, label %749, label %751

749:                                              ; preds = %741
  %750 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %750, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %751

751:                                              ; preds = %749, %741
  %752 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %753 = fadd double %752, 5.000000e-01
  %754 = call double @llvm.floor.f64(double %753)
  %755 = fptoui double %754 to i64
  %756 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %756, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %757 = load i8, ptr %94, align 1, !tbaa !130
  %758 = icmp eq i8 %757, 44
  br i1 %758, label %759, label %761

759:                                              ; preds = %751
  %760 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %760, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %761

761:                                              ; preds = %759, %751
  %762 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %763 = fadd double %762, 5.000000e-01
  %764 = call double @llvm.floor.f64(double %763)
  %765 = fptoui double %764 to i64
  %766 = load ptr, ptr %10, align 8, !tbaa !72
  %767 = load i8, ptr %766, align 1, !tbaa !130
  %768 = icmp eq i8 %767, 0
  br i1 %768, label %783, label %769

769:                                              ; preds = %761, %773
  %770 = phi ptr [ %774, %773 ], [ %766, %761 ]
  call void @GetMagickToken(ptr noundef nonnull %770, ptr noundef nonnull %10, ptr noundef %94) #35
  %771 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.56) #35
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %777, label %773

773:                                              ; preds = %769, %777
  %774 = load ptr, ptr %10, align 8, !tbaa !72
  %775 = load i8, ptr %774, align 1, !tbaa !130
  %776 = icmp eq i8 %775, 0
  br i1 %776, label %783, label %769, !llvm.loop !148

777:                                              ; preds = %769
  %778 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %778, ptr noundef null, ptr noundef %94) #35
  %779 = call i32 @LocaleCompare(ptr noundef %94, ptr noundef nonnull @.str.61) #35
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %773

781:                                              ; preds = %777
  %782 = load ptr, ptr %10, align 8, !tbaa !72
  br label %783

783:                                              ; preds = %773, %781, %761
  %784 = phi ptr [ %766, %761 ], [ %782, %781 ], [ %774, %773 ]
  %785 = ptrtoint ptr %784 to i64
  %786 = ptrtoint ptr %766 to i64
  %787 = sub i64 %785, %786
  %788 = add i64 %787, -3
  %789 = call i64 @CopyMagickString(ptr noundef %94, ptr noundef nonnull %766, i64 noundef %788) #35
  %790 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull %8) #35
  %791 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %94) #35
  %792 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.64, ptr noundef nonnull %8) #35
  %793 = uitofp i64 %755 to double
  %794 = uitofp i64 %765 to double
  %795 = sitofp i64 %735 to double
  %796 = sitofp i64 %745 to double
  %797 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.66, double noundef %793, double noundef %794, double noundef %795, double noundef %796) #35
  %798 = call i32 @SetImageArtifact(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %7) #35
  %799 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %799, ptr noundef nonnull %10, ptr noundef %94) #35
  br label %1169

800:                                              ; preds = %725
  %801 = call i32 @LocaleCompare(ptr noundef nonnull @.str.59, ptr noundef %94) #35
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %815

803:                                              ; preds = %800
  %804 = add nsw i64 %127, 1
  %805 = add nsw i64 %127, 2
  %806 = call ptr @ResizeQuantumMemory(ptr noundef nonnull %125, i64 noundef %805, i64 noundef 8) #42
  %807 = icmp eq ptr %806, null
  br i1 %807, label %808, label %810

808:                                              ; preds = %803
  %809 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %95, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2477, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %105) #35
  br label %1169

810:                                              ; preds = %803
  %811 = getelementptr inbounds ptr, ptr %806, i64 %127
  %812 = load ptr, ptr %811, align 8, !tbaa !72
  %813 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %812) #38
  %814 = getelementptr inbounds ptr, ptr %806, i64 %804
  store ptr %813, ptr %814, align 8, !tbaa !72
  br label %1169

815:                                              ; preds = %800
  %816 = call i32 @LocaleCompare(ptr noundef nonnull @.str.57, ptr noundef %94) #35
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %1169, label %1667

818:                                              ; preds = %138, %138
  %819 = call i32 @LocaleCompare(ptr noundef nonnull @.str.67, ptr noundef nonnull %6) #35
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %1169, label %821

821:                                              ; preds = %818
  %822 = call i32 @LocaleCompare(ptr noundef nonnull @.str.68, ptr noundef nonnull %6) #35
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %840

824:                                              ; preds = %821
  %825 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %825, ptr noundef nonnull %10, ptr noundef %94) #35
  %826 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %827 = call double @fmod(double noundef %826, double noundef 3.600000e+02) #35
  %828 = call fastcc double @DegreesToRadians(double noundef %827) #38
  %829 = call double @cos(double noundef %828) #35
  store double %829, ptr %3, align 8, !tbaa !97
  %830 = call double @fmod(double noundef %826, double noundef 3.600000e+02) #35
  %831 = call fastcc double @DegreesToRadians(double noundef %830) #38
  %832 = call double @sin(double noundef %831) #35
  store double %832, ptr %106, align 8, !tbaa !94
  %833 = call double @fmod(double noundef %826, double noundef 3.600000e+02) #35
  %834 = call fastcc double @DegreesToRadians(double noundef %833) #38
  %835 = call double @sin(double noundef %834) #35
  %836 = fneg double %835
  store double %836, ptr %107, align 8, !tbaa !96
  %837 = call double @fmod(double noundef %826, double noundef 3.600000e+02) #35
  %838 = call fastcc double @DegreesToRadians(double noundef %837) #38
  %839 = call double @cos(double noundef %838) #35
  store double %839, ptr %108, align 8, !tbaa !93
  br label %1169

840:                                              ; preds = %821
  %841 = call i32 @LocaleCompare(ptr noundef nonnull @.str.69, ptr noundef nonnull %6) #35
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %1169, label %1667

843:                                              ; preds = %138, %138
  %844 = call i32 @LocaleCompare(ptr noundef nonnull @.str.70, ptr noundef nonnull %6) #35
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %856

846:                                              ; preds = %843
  %847 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %847, ptr noundef nonnull %10, ptr noundef %94) #35
  %848 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  store double %848, ptr %3, align 8, !tbaa !97
  %849 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %849, ptr noundef nonnull %10, ptr noundef %94) #35
  %850 = load i8, ptr %94, align 1, !tbaa !130
  %851 = icmp eq i8 %850, 44
  br i1 %851, label %852, label %854

852:                                              ; preds = %846
  %853 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %853, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %854

854:                                              ; preds = %852, %846
  %855 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  store double %855, ptr %108, align 8, !tbaa !93
  br label %1169

856:                                              ; preds = %843
  %857 = call i32 @LocaleCompare(ptr noundef nonnull @.str.71, ptr noundef nonnull %6) #35
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %859, label %864

859:                                              ; preds = %856
  %860 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %860, ptr noundef nonnull %10, ptr noundef %94) #35
  %861 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %862 = call fastcc double @DegreesToRadians(double noundef %861) #38
  %863 = call double @sin(double noundef %862) #35
  store double %863, ptr %107, align 8, !tbaa !96
  br label %1169

864:                                              ; preds = %856
  %865 = call i32 @LocaleCompare(ptr noundef nonnull @.str.72, ptr noundef nonnull %6) #35
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %867, label %874

867:                                              ; preds = %864
  %868 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %868, ptr noundef nonnull %10, ptr noundef %94) #35
  %869 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %870 = call fastcc double @DegreesToRadians(double noundef %869) #38
  %871 = fmul double %870, 5.000000e-01
  %872 = call double @tan(double noundef %871) #35
  %873 = fneg double %872
  store double %873, ptr %106, align 8, !tbaa !94
  br label %1169

874:                                              ; preds = %864
  %875 = call i32 @LocaleCompare(ptr noundef nonnull @.str.73, ptr noundef nonnull %6) #35
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %877, label %883

877:                                              ; preds = %874
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #12
  %878 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %878, ptr noundef nonnull %10, ptr noundef %94) #35
  %879 = call i32 @QueryColorDatabase(ptr noundef %94, ptr noundef nonnull %16, ptr noundef nonnull %95) #35
  %880 = call i32 @GradientImage(ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %11, ptr noundef nonnull %16) #35
  %881 = load i64, ptr %16, align 8
  store i64 %881, ptr %11, align 8
  %882 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %882, ptr noundef nonnull %10, ptr noundef %94) #35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #12
  br label %1169

883:                                              ; preds = %874
  %884 = call i32 @LocaleCompare(ptr noundef nonnull @.str.74, ptr noundef nonnull %6) #35
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %908

886:                                              ; preds = %883
  %887 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %887, ptr noundef nonnull %10, ptr noundef %94) #35
  %888 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %94) #35
  %889 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull %9) #35
  %890 = icmp eq ptr %889, null
  %891 = load ptr, ptr %144, align 8, !tbaa !72
  br i1 %890, label %895, label %892

892:                                              ; preds = %886
  %893 = getelementptr inbounds %struct._DrawInfo, ptr %891, i64 0, i32 11
  %894 = call i32 @DrawPatternPath(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %94, ptr noundef nonnull %893) #38, !range !129
  br label %1169

895:                                              ; preds = %886
  %896 = getelementptr inbounds %struct._DrawInfo, ptr %891, i64 0, i32 6
  %897 = call i32 @QueryColorDatabase(ptr noundef %94, ptr noundef nonnull %896, ptr noundef nonnull %95) #35
  %898 = and i32 %897, %126
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %1176

900:                                              ; preds = %895
  %901 = call ptr @AcquireImageInfo() #35
  %902 = getelementptr inbounds %struct._ImageInfo, ptr %901, i64 0, i32 51
  %903 = call i64 @CopyMagickString(ptr noundef nonnull %902, ptr noundef %94, i64 noundef 4096) #35
  %904 = call ptr @ReadImage(ptr noundef %901, ptr noundef nonnull %95) #35
  %905 = load ptr, ptr %144, align 8, !tbaa !72
  %906 = getelementptr inbounds %struct._DrawInfo, ptr %905, i64 0, i32 11
  store ptr %904, ptr %906, align 8, !tbaa !60
  call void @CatchException(ptr noundef nonnull %95) #35
  %907 = call ptr @DestroyImageInfo(ptr noundef %901) #35
  br label %1667

908:                                              ; preds = %883
  %909 = call i32 @LocaleCompare(ptr noundef nonnull @.str.75, ptr noundef nonnull %6) #35
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %918

911:                                              ; preds = %908
  %912 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %912, ptr noundef nonnull %10, ptr noundef %94) #35
  %913 = call fastcc i64 @StringToLong(ptr noundef %94) #38
  %914 = icmp ne i64 %913, 0
  %915 = zext i1 %914 to i32
  %916 = load ptr, ptr %144, align 8, !tbaa !72
  %917 = getelementptr inbounds %struct._DrawInfo, ptr %916, i64 0, i32 12
  store i32 %915, ptr %917, align 8, !tbaa !17
  br label %1169

918:                                              ; preds = %908
  %919 = call i32 @LocaleCompare(ptr noundef nonnull @.str.76, ptr noundef nonnull %6) #35
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %921, label %1004

921:                                              ; preds = %918
  %922 = load ptr, ptr %144, align 8, !tbaa !72
  %923 = getelementptr inbounds %struct._DrawInfo, ptr %922, i64 0, i32 36
  %924 = load ptr, ptr %923, align 8, !tbaa !68
  %925 = icmp eq ptr %924, null
  br i1 %925, label %930, label %926

926:                                              ; preds = %921
  %927 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %924) #35
  %928 = load ptr, ptr %144, align 8, !tbaa !72
  %929 = getelementptr inbounds %struct._DrawInfo, ptr %928, i64 0, i32 36
  store ptr %927, ptr %929, align 8, !tbaa !68
  br label %930

930:                                              ; preds = %926, %921
  %931 = load ptr, ptr %10, align 8, !tbaa !72
  %932 = call fastcc i32 @IsPoint(ptr noundef %931) #38, !range !129
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %1002, label %934

934:                                              ; preds = %930
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #12
  %935 = load ptr, ptr %10, align 8, !tbaa !72
  store ptr %935, ptr %17, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %935, ptr noundef nonnull %17, ptr noundef %94) #35
  %936 = load i8, ptr %94, align 1, !tbaa !130
  %937 = icmp eq i8 %936, 44
  br i1 %937, label %938, label %940

938:                                              ; preds = %934
  %939 = load ptr, ptr %17, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %939, ptr noundef nonnull %17, ptr noundef nonnull %94) #35
  br label %940

940:                                              ; preds = %938, %934
  %941 = call fastcc i32 @IsPoint(ptr noundef nonnull %94) #38, !range !129
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %954, label %943

943:                                              ; preds = %940, %950
  %944 = phi i64 [ %951, %950 ], [ 0, %940 ]
  %945 = load ptr, ptr %17, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %945, ptr noundef nonnull %17, ptr noundef nonnull %94) #35
  %946 = load i8, ptr %94, align 1, !tbaa !130
  %947 = icmp eq i8 %946, 44
  br i1 %947, label %948, label %950

948:                                              ; preds = %943
  %949 = load ptr, ptr %17, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %949, ptr noundef nonnull %17, ptr noundef nonnull %94) #35
  br label %950

950:                                              ; preds = %943, %948
  %951 = add nuw nsw i64 %944, 1
  %952 = call fastcc i32 @IsPoint(ptr noundef nonnull %94) #38, !range !129
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %943, !llvm.loop !149

954:                                              ; preds = %950, %940
  %955 = phi i64 [ 0, %940 ], [ %951, %950 ]
  %956 = shl nuw i64 %955, 1
  %957 = or disjoint i64 %956, 1
  %958 = call ptr @AcquireQuantumMemory(i64 noundef %957, i64 noundef 8) #39
  %959 = load ptr, ptr %144, align 8, !tbaa !72
  %960 = getelementptr inbounds %struct._DrawInfo, ptr %959, i64 0, i32 36
  store ptr %958, ptr %960, align 8, !tbaa !68
  %961 = load ptr, ptr %144, align 8, !tbaa !72
  %962 = getelementptr inbounds %struct._DrawInfo, ptr %961, i64 0, i32 36
  %963 = load ptr, ptr %962, align 8, !tbaa !68
  %964 = icmp eq ptr %963, null
  br i1 %964, label %967, label %965

965:                                              ; preds = %954
  %966 = icmp eq i64 %955, 0
  br i1 %966, label %997, label %969

967:                                              ; preds = %954
  %968 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %95, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2619, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %105) #35
  br label %1001

969:                                              ; preds = %965, %976
  %970 = phi i64 [ %982, %976 ], [ 0, %965 ]
  %971 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %971, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %972 = load i8, ptr %94, align 1, !tbaa !130
  %973 = icmp eq i8 %972, 44
  br i1 %973, label %974, label %976

974:                                              ; preds = %969
  %975 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %975, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %976

976:                                              ; preds = %974, %969
  %977 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %978 = load ptr, ptr %144, align 8, !tbaa !72
  %979 = getelementptr inbounds %struct._DrawInfo, ptr %978, i64 0, i32 36
  %980 = load ptr, ptr %979, align 8, !tbaa !68
  %981 = getelementptr inbounds double, ptr %980, i64 %970
  store double %977, ptr %981, align 8, !tbaa !57
  %982 = add nuw i64 %970, 1
  %983 = icmp eq i64 %982, %955
  br i1 %983, label %984, label %969, !llvm.loop !150

984:                                              ; preds = %976
  %985 = and i64 %955, 1
  %986 = icmp ne i64 %985, 0
  %987 = icmp slt i64 %955, %956
  %988 = and i1 %986, %987
  br i1 %988, label %989, label %997

989:                                              ; preds = %984, %989
  %990 = phi i64 [ %995, %989 ], [ %955, %984 ]
  %991 = sub nuw nsw i64 %990, %955
  %992 = getelementptr inbounds double, ptr %980, i64 %991
  %993 = load double, ptr %992, align 8, !tbaa !57
  %994 = getelementptr inbounds double, ptr %980, i64 %990
  store double %993, ptr %994, align 8, !tbaa !57
  %995 = add nuw nsw i64 %990, 1
  %996 = icmp eq i64 %995, %956
  br i1 %996, label %997, label %989, !llvm.loop !151

997:                                              ; preds = %989, %965, %984
  %998 = phi ptr [ %980, %984 ], [ %963, %965 ], [ %980, %989 ]
  %999 = phi i64 [ %955, %984 ], [ 0, %965 ], [ %956, %989 ]
  %1000 = getelementptr inbounds double, ptr %998, i64 %999
  store double 0.000000e+00, ptr %1000, align 8, !tbaa !57
  br label %1001

1001:                                             ; preds = %997, %967
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #12
  br label %1169

1002:                                             ; preds = %930
  %1003 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1003, ptr noundef nonnull %10, ptr noundef %94) #35
  br label %1169

1004:                                             ; preds = %918
  %1005 = call i32 @LocaleCompare(ptr noundef nonnull @.str.77, ptr noundef nonnull %6) #35
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1012

1007:                                             ; preds = %1004
  %1008 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1008, ptr noundef nonnull %10, ptr noundef %94) #35
  %1009 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %1010 = load ptr, ptr %144, align 8, !tbaa !72
  %1011 = getelementptr inbounds %struct._DrawInfo, ptr %1010, i64 0, i32 18
  store double %1009, ptr %1011, align 8, !tbaa !61
  br label %1169

1012:                                             ; preds = %1004
  %1013 = call i32 @LocaleCompare(ptr noundef nonnull @.str.78, ptr noundef nonnull %6) #35
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %1023

1015:                                             ; preds = %1012
  %1016 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1016, ptr noundef nonnull %10, ptr noundef %94) #35
  %1017 = call i64 @ParseCommandOption(i32 noundef 36, i32 noundef 0, ptr noundef %94) #35
  %1018 = icmp eq i64 %1017, -1
  br i1 %1018, label %1667, label %1019

1019:                                             ; preds = %1015
  %1020 = trunc i64 %1017 to i32
  %1021 = load ptr, ptr %144, align 8, !tbaa !72
  %1022 = getelementptr inbounds %struct._DrawInfo, ptr %1021, i64 0, i32 15
  store i32 %1020, ptr %1022, align 4, !tbaa !29
  br label %1169

1023:                                             ; preds = %1012
  %1024 = call i32 @LocaleCompare(ptr noundef nonnull @.str.79, ptr noundef nonnull %6) #35
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1026, label %1034

1026:                                             ; preds = %1023
  %1027 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1027, ptr noundef nonnull %10, ptr noundef %94) #35
  %1028 = call i64 @ParseCommandOption(i32 noundef 37, i32 noundef 0, ptr noundef %94) #35
  %1029 = icmp eq i64 %1028, -1
  br i1 %1029, label %1667, label %1030

1030:                                             ; preds = %1026
  %1031 = trunc i64 %1028 to i32
  %1032 = load ptr, ptr %144, align 8, !tbaa !72
  %1033 = getelementptr inbounds %struct._DrawInfo, ptr %1032, i64 0, i32 16
  store i32 %1031, ptr %1033, align 8, !tbaa !30
  br label %1169

1034:                                             ; preds = %1023
  %1035 = call i32 @LocaleCompare(ptr noundef nonnull @.str.80, ptr noundef nonnull %6) #35
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1037, label %1042

1037:                                             ; preds = %1034
  %1038 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1038, ptr noundef nonnull %10, ptr noundef %94) #35
  %1039 = call fastcc i64 @StringToUnsignedLong(ptr noundef %94) #38
  %1040 = load ptr, ptr %144, align 8, !tbaa !72
  %1041 = getelementptr inbounds %struct._DrawInfo, ptr %1040, i64 0, i32 17
  store i64 %1039, ptr %1041, align 8, !tbaa !31
  br label %1169

1042:                                             ; preds = %1034
  %1043 = call i32 @LocaleCompare(ptr noundef nonnull @.str.81, ptr noundef nonnull %6) #35
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1045, label %1058

1045:                                             ; preds = %1042
  %1046 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1046, ptr noundef nonnull %10, ptr noundef %94) #35
  %1047 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %94, i32 noundef 37) #41
  %1048 = icmp eq ptr %1047, null
  %1049 = select i1 %1048, double 1.000000e+00, double 1.000000e-02
  %1050 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %1051 = fneg double %1049
  %1052 = call double @llvm.fmuladd.f64(double %1051, double %1050, double 1.000000e+00)
  %1053 = fmul double %1052, 6.553500e+04
  %1054 = fptrunc double %1053 to float
  %1055 = call fastcc zeroext i16 @ClampToQuantum(float noundef %1054) #38
  %1056 = load ptr, ptr %144, align 8, !tbaa !72
  %1057 = getelementptr inbounds %struct._DrawInfo, ptr %1056, i64 0, i32 6, i32 3
  store i16 %1055, ptr %1057, align 2, !tbaa !139
  br label %1169

1058:                                             ; preds = %1042
  %1059 = call i32 @LocaleCompare(ptr noundef nonnull @.str.82, ptr noundef nonnull %6) #35
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1061, label %1667

1061:                                             ; preds = %1058
  %1062 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1062, ptr noundef nonnull %10, ptr noundef %94) #35
  %1063 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %1064 = load ptr, ptr %144, align 8, !tbaa !72
  %1065 = getelementptr inbounds %struct._DrawInfo, ptr %1064, i64 0, i32 7
  store double %1063, ptr %1065, align 8, !tbaa !26
  br label %1169

1066:                                             ; preds = %138, %138
  %1067 = call i32 @LocaleCompare(ptr noundef nonnull @.str.83, ptr noundef nonnull %6) #35
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1169, label %1069

1069:                                             ; preds = %1066
  %1070 = call i32 @LocaleCompare(ptr noundef nonnull @.str.84, ptr noundef nonnull %6) #35
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1072, label %1080

1072:                                             ; preds = %1069
  %1073 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1073, ptr noundef nonnull %10, ptr noundef %94) #35
  %1074 = call i64 @ParseCommandOption(i32 noundef 0, i32 noundef 0, ptr noundef %94) #35
  %1075 = icmp eq i64 %1074, -1
  br i1 %1075, label %1667, label %1076

1076:                                             ; preds = %1072
  %1077 = trunc i64 %1074 to i32
  %1078 = load ptr, ptr %144, align 8, !tbaa !72
  %1079 = getelementptr inbounds %struct._DrawInfo, ptr %1078, i64 0, i32 32
  store i32 %1077, ptr %1079, align 8, !tbaa !67
  br label %1169

1080:                                             ; preds = %1069
  %1081 = call i32 @LocaleCompare(ptr noundef nonnull @.str.85, ptr noundef nonnull %6) #35
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1083, label %1091

1083:                                             ; preds = %1080
  %1084 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1084, ptr noundef nonnull %10, ptr noundef %94) #35
  %1085 = call i64 @ParseCommandOption(i32 noundef 0, i32 noundef 0, ptr noundef %94) #35
  %1086 = icmp eq i64 %1085, -1
  br i1 %1086, label %1667, label %1087

1087:                                             ; preds = %1083
  %1088 = trunc i64 %1085 to i32
  %1089 = load ptr, ptr %144, align 8, !tbaa !72
  %1090 = getelementptr inbounds %struct._DrawInfo, ptr %1089, i64 0, i32 32
  store i32 %1088, ptr %1090, align 8, !tbaa !67
  br label %1169

1091:                                             ; preds = %1080
  %1092 = call i32 @LocaleCompare(ptr noundef nonnull @.str.86, ptr noundef nonnull %6) #35
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1094, label %1101

1094:                                             ; preds = %1091
  %1095 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1095, ptr noundef nonnull %10, ptr noundef %94) #35
  %1096 = call fastcc i64 @StringToLong(ptr noundef %94) #38
  %1097 = icmp ne i64 %1096, 0
  %1098 = zext i1 %1097 to i32
  %1099 = load ptr, ptr %144, align 8, !tbaa !72
  %1100 = getelementptr inbounds %struct._DrawInfo, ptr %1099, i64 0, i32 13
  store i32 %1098, ptr %1100, align 4, !tbaa !37
  br label %1169

1101:                                             ; preds = %1091
  %1102 = call i32 @LocaleCompare(ptr noundef nonnull @.str.87, ptr noundef nonnull %6) #35
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1104, label %1109

1104:                                             ; preds = %1101
  %1105 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1105, ptr noundef nonnull %10, ptr noundef %94) #35
  %1106 = load ptr, ptr %144, align 8, !tbaa !72
  %1107 = getelementptr inbounds %struct._DrawInfo, ptr %1106, i64 0, i32 33
  %1108 = call i32 @QueryColorDatabase(ptr noundef %94, ptr noundef nonnull %1107, ptr noundef nonnull %95) #35
  br label %1169

1109:                                             ; preds = %1101
  %1110 = call i32 @LocaleCompare(ptr noundef nonnull @.str.88, ptr noundef nonnull %6) #35
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1112, label %1667

1112:                                             ; preds = %1109
  %1113 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1113, ptr noundef nonnull %10, ptr noundef %94) #35
  %1114 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  store double %1114, ptr %103, align 8, !tbaa !95
  %1115 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1115, ptr noundef nonnull %10, ptr noundef %94) #35
  %1116 = load i8, ptr %94, align 1, !tbaa !130
  %1117 = icmp eq i8 %1116, 44
  br i1 %1117, label %1118, label %1120

1118:                                             ; preds = %1112
  %1119 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1119, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %1120

1120:                                             ; preds = %1118, %1112
  %1121 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  store double %1121, ptr %104, align 8, !tbaa !92
  br label %1169

1122:                                             ; preds = %138, %138
  %1123 = call i32 @LocaleCompare(ptr noundef nonnull @.str.89, ptr noundef nonnull %6) #35
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1125, label %1667

1125:                                             ; preds = %1122
  %1126 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1126, ptr noundef nonnull %10, ptr noundef %94) #35
  %1127 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %1128 = fadd double %1127, -5.000000e-01
  %1129 = call double @llvm.ceil.f64(double %1128)
  %1130 = fptosi double %1129 to i64
  %1131 = load ptr, ptr %144, align 8, !tbaa !72
  %1132 = getelementptr inbounds %struct._DrawInfo, ptr %1131, i64 0, i32 2, i32 2
  store i64 %1130, ptr %1132, align 8, !tbaa !152
  %1133 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1133, ptr noundef nonnull %10, ptr noundef %94) #35
  %1134 = load i8, ptr %94, align 1, !tbaa !130
  %1135 = icmp eq i8 %1134, 44
  br i1 %1135, label %1136, label %1138

1136:                                             ; preds = %1125
  %1137 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1137, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %1138

1138:                                             ; preds = %1136, %1125
  %1139 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %1140 = fadd double %1139, -5.000000e-01
  %1141 = call double @llvm.ceil.f64(double %1140)
  %1142 = fptosi double %1141 to i64
  %1143 = load ptr, ptr %144, align 8, !tbaa !72
  %1144 = getelementptr inbounds %struct._DrawInfo, ptr %1143, i64 0, i32 2, i32 3
  store i64 %1142, ptr %1144, align 8, !tbaa !153
  %1145 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1145, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %1146 = load i8, ptr %94, align 1, !tbaa !130
  %1147 = icmp eq i8 %1146, 44
  br i1 %1147, label %1148, label %1150

1148:                                             ; preds = %1138
  %1149 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1149, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %1150

1150:                                             ; preds = %1148, %1138
  %1151 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %1152 = fadd double %1151, 5.000000e-01
  %1153 = call double @llvm.floor.f64(double %1152)
  %1154 = fptoui double %1153 to i64
  %1155 = load ptr, ptr %144, align 8, !tbaa !72
  %1156 = getelementptr inbounds %struct._DrawInfo, ptr %1155, i64 0, i32 2
  store i64 %1154, ptr %1156, align 8, !tbaa !154
  %1157 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1157, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  %1158 = load i8, ptr %94, align 1, !tbaa !130
  %1159 = icmp eq i8 %1158, 44
  br i1 %1159, label %1160, label %1162

1160:                                             ; preds = %1150
  %1161 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1161, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %1162

1162:                                             ; preds = %1160, %1150
  %1163 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %1164 = fadd double %1163, 5.000000e-01
  %1165 = call double @llvm.floor.f64(double %1164)
  %1166 = fptoui double %1165 to i64
  %1167 = load ptr, ptr %144, align 8, !tbaa !72
  %1168 = getelementptr inbounds %struct._DrawInfo, ptr %1167, i64 0, i32 2, i32 1
  store i64 %1166, ptr %1168, align 8, !tbaa !155
  br label %1169

1169:                                             ; preds = %840, %815, %569, %487, %484, %245, %189, %1087, %1076, %1066, %1030, %1019, %818, %528, %525, %522, %519, %456, %445, %384, %373, %329, %270, %266, %255, %242, %238, %233, %222, %192, %892, %541, %538, %534, %427, %430, %336, %343, %290, %1162, %1120, %1104, %1094, %138, %1061, %1045, %1037, %1007, %1002, %1001, %911, %877, %867, %859, %854, %824, %810, %808, %783, %665, %599, %566, %549, %498, %493, %479, %471, %463, %436, %361, %353, %309, %276, %206, %198, %187
  %1170 = phi i64 [ %127, %1162 ], [ %127, %1094 ], [ %127, %1104 ], [ %127, %1120 ], [ %127, %854 ], [ %127, %859 ], [ %127, %867 ], [ %127, %877 ], [ %127, %892 ], [ %127, %911 ], [ %127, %1001 ], [ %127, %1002 ], [ %127, %1007 ], [ %127, %1037 ], [ %127, %1045 ], [ %127, %1061 ], [ %127, %824 ], [ %127, %534 ], [ %127, %538 ], [ %127, %541 ], [ 0, %549 ], [ %556, %566 ], [ %127, %599 ], [ %127, %665 ], [ %127, %783 ], [ %804, %808 ], [ %804, %810 ], [ %127, %493 ], [ %127, %498 ], [ %127, %479 ], [ %127, %463 ], [ %127, %471 ], [ %127, %436 ], [ %127, %290 ], [ %127, %309 ], [ %127, %343 ], [ %127, %336 ], [ %127, %353 ], [ %127, %361 ], [ %127, %430 ], [ %127, %427 ], [ %127, %276 ], [ %127, %206 ], [ %127, %198 ], [ %127, %187 ], [ %127, %138 ], [ %127, %192 ], [ %127, %222 ], [ %127, %233 ], [ %127, %238 ], [ %127, %242 ], [ %127, %255 ], [ %127, %266 ], [ %127, %270 ], [ %127, %329 ], [ %127, %373 ], [ %127, %384 ], [ %127, %445 ], [ %127, %456 ], [ %127, %519 ], [ %127, %522 ], [ %127, %525 ], [ %127, %528 ], [ %127, %818 ], [ %127, %1019 ], [ %127, %1030 ], [ %127, %1066 ], [ %127, %1076 ], [ %127, %1087 ], [ %127, %189 ], [ %127, %245 ], [ %127, %484 ], [ %127, %487 ], [ %127, %569 ], [ %127, %815 ], [ %127, %840 ]
  %1171 = phi ptr [ %143, %1162 ], [ %143, %1094 ], [ %143, %1104 ], [ %143, %1120 ], [ %143, %854 ], [ %143, %859 ], [ %143, %867 ], [ %143, %877 ], [ %143, %892 ], [ %143, %911 ], [ %143, %1001 ], [ %143, %1002 ], [ %143, %1007 ], [ %143, %1037 ], [ %143, %1045 ], [ %143, %1061 ], [ %143, %824 ], [ %143, %534 ], [ %143, %538 ], [ %143, %541 ], [ %143, %549 ], [ %143, %566 ], [ %582, %599 ], [ %648, %665 ], [ %766, %783 ], [ %143, %808 ], [ %143, %810 ], [ %143, %493 ], [ %143, %498 ], [ %143, %479 ], [ %143, %463 ], [ %143, %471 ], [ %143, %436 ], [ %143, %290 ], [ %143, %309 ], [ %143, %343 ], [ %143, %336 ], [ %143, %353 ], [ %143, %361 ], [ %143, %430 ], [ %143, %427 ], [ %143, %276 ], [ %143, %206 ], [ %143, %198 ], [ %143, %187 ], [ %143, %138 ], [ %143, %192 ], [ %143, %222 ], [ %143, %233 ], [ %143, %238 ], [ %143, %242 ], [ %143, %255 ], [ %143, %266 ], [ %143, %270 ], [ %143, %329 ], [ %143, %373 ], [ %143, %384 ], [ %143, %445 ], [ %143, %456 ], [ %143, %519 ], [ %143, %522 ], [ %143, %525 ], [ %143, %528 ], [ %143, %818 ], [ %143, %1019 ], [ %143, %1030 ], [ %143, %1066 ], [ %143, %1076 ], [ %143, %1087 ], [ %143, %189 ], [ %143, %245 ], [ %143, %484 ], [ %143, %487 ], [ %143, %569 ], [ %143, %815 ], [ %143, %840 ]
  %1172 = phi i1 [ true, %1162 ], [ true, %1094 ], [ true, %1104 ], [ true, %1120 ], [ true, %854 ], [ true, %859 ], [ true, %867 ], [ true, %877 ], [ true, %892 ], [ true, %911 ], [ true, %1001 ], [ true, %1002 ], [ true, %1007 ], [ true, %1037 ], [ true, %1045 ], [ true, %1061 ], [ true, %824 ], [ true, %534 ], [ true, %538 ], [ true, %541 ], [ true, %549 ], [ true, %566 ], [ true, %599 ], [ true, %665 ], [ true, %783 ], [ true, %808 ], [ true, %810 ], [ true, %493 ], [ true, %498 ], [ true, %479 ], [ true, %463 ], [ true, %471 ], [ true, %436 ], [ true, %290 ], [ true, %309 ], [ true, %343 ], [ true, %336 ], [ true, %353 ], [ true, %361 ], [ true, %430 ], [ true, %427 ], [ true, %276 ], [ true, %206 ], [ true, %198 ], [ true, %187 ], [ true, %138 ], [ false, %192 ], [ true, %222 ], [ true, %233 ], [ true, %238 ], [ false, %242 ], [ true, %255 ], [ true, %266 ], [ false, %270 ], [ true, %329 ], [ true, %373 ], [ true, %384 ], [ true, %445 ], [ false, %456 ], [ false, %519 ], [ false, %522 ], [ false, %525 ], [ false, %528 ], [ false, %818 ], [ true, %1019 ], [ true, %1030 ], [ false, %1066 ], [ true, %1076 ], [ true, %1087 ], [ false, %189 ], [ false, %245 ], [ false, %484 ], [ false, %487 ], [ true, %569 ], [ true, %815 ], [ false, %840 ]
  %1173 = phi i32 [ 0, %1162 ], [ 0, %1094 ], [ 0, %1104 ], [ 0, %1120 ], [ 0, %854 ], [ 0, %859 ], [ 0, %867 ], [ 0, %877 ], [ 0, %892 ], [ 0, %911 ], [ 0, %1001 ], [ 0, %1002 ], [ 0, %1007 ], [ 0, %1037 ], [ 0, %1045 ], [ 0, %1061 ], [ 0, %824 ], [ 0, %534 ], [ 0, %538 ], [ 0, %541 ], [ 0, %549 ], [ 0, %566 ], [ 0, %599 ], [ 0, %665 ], [ 0, %783 ], [ 0, %808 ], [ 0, %810 ], [ 0, %493 ], [ 0, %498 ], [ 0, %479 ], [ 0, %463 ], [ 0, %471 ], [ 0, %436 ], [ 0, %290 ], [ 0, %309 ], [ 0, %343 ], [ 0, %336 ], [ 0, %353 ], [ 0, %361 ], [ 0, %430 ], [ 0, %427 ], [ 0, %276 ], [ 0, %206 ], [ 0, %198 ], [ 0, %187 ], [ 0, %138 ], [ 10, %192 ], [ 0, %222 ], [ 0, %233 ], [ 0, %238 ], [ 7, %242 ], [ 0, %255 ], [ 0, %266 ], [ 6, %270 ], [ 0, %329 ], [ 0, %373 ], [ 0, %384 ], [ 0, %445 ], [ 14, %456 ], [ 15, %519 ], [ 1, %522 ], [ 8, %525 ], [ 9, %528 ], [ 3, %818 ], [ 0, %1019 ], [ 0, %1030 ], [ 13, %1066 ], [ 0, %1076 ], [ 0, %1087 ], [ 5, %189 ], [ 11, %245 ], [ 2, %484 ], [ 12, %487 ], [ 0, %569 ], [ 0, %815 ], [ 4, %840 ]
  %1174 = phi ptr [ %125, %1162 ], [ %125, %1094 ], [ %125, %1104 ], [ %125, %1120 ], [ %125, %854 ], [ %125, %859 ], [ %125, %867 ], [ %125, %877 ], [ %125, %892 ], [ %125, %911 ], [ %125, %1001 ], [ %125, %1002 ], [ %125, %1007 ], [ %125, %1037 ], [ %125, %1045 ], [ %125, %1061 ], [ %125, %824 ], [ %125, %534 ], [ %125, %538 ], [ %125, %541 ], [ %125, %549 ], [ %125, %566 ], [ %125, %599 ], [ %125, %665 ], [ %125, %783 ], [ null, %808 ], [ %806, %810 ], [ %125, %493 ], [ %125, %498 ], [ %125, %479 ], [ %125, %463 ], [ %125, %471 ], [ %125, %436 ], [ %125, %290 ], [ %125, %309 ], [ %125, %343 ], [ %125, %336 ], [ %125, %353 ], [ %125, %361 ], [ %125, %430 ], [ %125, %427 ], [ %125, %276 ], [ %125, %206 ], [ %125, %198 ], [ %125, %187 ], [ %125, %138 ], [ %125, %192 ], [ %125, %222 ], [ %125, %233 ], [ %125, %238 ], [ %125, %242 ], [ %125, %255 ], [ %125, %266 ], [ %125, %270 ], [ %125, %329 ], [ %125, %373 ], [ %125, %384 ], [ %125, %445 ], [ %125, %456 ], [ %125, %519 ], [ %125, %522 ], [ %125, %525 ], [ %125, %528 ], [ %125, %818 ], [ %125, %1019 ], [ %125, %1030 ], [ %125, %1066 ], [ %125, %1076 ], [ %125, %1087 ], [ %125, %189 ], [ %125, %245 ], [ %125, %484 ], [ %125, %487 ], [ %125, %569 ], [ %125, %815 ], [ %125, %840 ]
  %1175 = icmp eq i32 %126, 0
  br i1 %1175, label %1667, label %1176

1176:                                             ; preds = %293, %895, %1169
  %1177 = phi ptr [ %1174, %1169 ], [ %125, %895 ], [ %125, %293 ]
  %1178 = phi i32 [ %126, %1169 ], [ %898, %895 ], [ %296, %293 ]
  %1179 = phi i32 [ %1173, %1169 ], [ 0, %895 ], [ 0, %293 ]
  %1180 = phi i1 [ %1172, %1169 ], [ true, %895 ], [ true, %293 ]
  %1181 = phi ptr [ %1171, %1169 ], [ %143, %895 ], [ %143, %293 ]
  %1182 = phi i64 [ %1170, %1169 ], [ %127, %895 ], [ %127, %293 ]
  %1183 = load <4 x double>, ptr %3, align 8
  %1184 = freeze <4 x double> %1183
  %1185 = fcmp une <4 x double> %1184, <double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00>
  %1186 = load double, ptr %103, align 8
  %1187 = freeze double %1186
  %1188 = fcmp une double %1187, 0.000000e+00
  %1189 = load double, ptr %104, align 8
  %1190 = fcmp une double %1189, 0.000000e+00
  %1191 = bitcast <4 x i1> %1185 to i4
  %1192 = icmp ne i4 %1191, 0
  %1193 = or i1 %1192, %1188
  %1194 = select i1 %1193, i1 true, i1 %1190
  br i1 %1194, label %1195, label %1219

1195:                                             ; preds = %1176
  %1196 = getelementptr inbounds ptr, ptr %1177, i64 %1182
  %1197 = load ptr, ptr %1196, align 8, !tbaa !72
  %1198 = getelementptr inbounds %struct._DrawInfo, ptr %1197, i64 0, i32 3
  %1199 = getelementptr inbounds %struct._DrawInfo, ptr %1197, i64 0, i32 3, i32 2
  %1200 = getelementptr inbounds %struct._DrawInfo, ptr %1197, i64 0, i32 3, i32 4
  %1201 = load <2 x double>, ptr %112, align 16, !tbaa !57
  %1202 = load <2 x double>, ptr %4, align 16, !tbaa !57
  %1203 = shufflevector <4 x double> %1184, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %1204 = fmul <2 x double> %1203, %1201
  %1205 = shufflevector <4 x double> %1184, <4 x double> poison, <2 x i32> zeroinitializer
  %1206 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1202, <2 x double> %1205, <2 x double> %1204)
  store <2 x double> %1206, ptr %1198, align 8, !tbaa !57
  %1207 = shufflevector <4 x double> %1184, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %1208 = fmul <2 x double> %1207, %1201
  %1209 = shufflevector <4 x double> %1184, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %1210 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1202, <2 x double> %1209, <2 x double> %1208)
  store <2 x double> %1210, ptr %1199, align 8, !tbaa !57
  %1211 = insertelement <2 x double> poison, double %1189, i64 0
  %1212 = shufflevector <2 x double> %1211, <2 x double> poison, <2 x i32> zeroinitializer
  %1213 = fmul <2 x double> %1212, %1201
  %1214 = insertelement <2 x double> poison, double %1187, i64 0
  %1215 = shufflevector <2 x double> %1214, <2 x double> poison, <2 x i32> zeroinitializer
  %1216 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1202, <2 x double> %1215, <2 x double> %1213)
  %1217 = load <2 x double>, ptr %113, align 16, !tbaa !57
  %1218 = fadd <2 x double> %1216, %1217
  store <2 x double> %1218, ptr %1200, align 8, !tbaa !57
  br label %1219

1219:                                             ; preds = %1176, %1195
  br i1 %1180, label %1220, label %1234

1220:                                             ; preds = %1219
  %1221 = load i32, ptr %20, align 8, !tbaa !80
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1230, label %1223

1223:                                             ; preds = %1220
  %1224 = load ptr, ptr %10, align 8, !tbaa !72
  %1225 = ptrtoint ptr %1224 to i64
  %1226 = ptrtoint ptr %1181 to i64
  %1227 = sub i64 %1225, %1226
  %1228 = trunc i64 %1227 to i32
  %1229 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2818, ptr noundef nonnull @.str.90, i32 noundef %1228, ptr noundef %1181) #35
  br label %1230

1230:                                             ; preds = %1223, %1220
  %1231 = load ptr, ptr %10, align 8, !tbaa !72
  %1232 = load i8, ptr %1231, align 1, !tbaa !130
  %1233 = icmp eq i8 %1232, 0
  br i1 %1233, label %1667, label %123, !llvm.loop !156

1234:                                             ; preds = %1219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %120, i8 0, i64 16, i1 false)
  %1235 = load ptr, ptr %10, align 8, !tbaa !72
  %1236 = load i8, ptr %1235, align 1, !tbaa !130
  %1237 = icmp eq i8 %1236, 0
  br i1 %1237, label %1238, label %1243

1238:                                             ; preds = %1234
  %1239 = getelementptr inbounds %struct._PrimitiveInfo, ptr %120, i64 0, i32 2
  store i32 %1179, ptr %1239, align 8, !tbaa !157
  %1240 = getelementptr inbounds %struct._PrimitiveInfo, ptr %120, i64 0, i32 1
  store i64 0, ptr %1240, align 8, !tbaa !159
  %1241 = getelementptr inbounds %struct._PrimitiveInfo, ptr %120, i64 0, i32 3
  store i32 3, ptr %1241, align 4, !tbaa !160
  %1242 = getelementptr inbounds %struct._PrimitiveInfo, ptr %120, i64 0, i32 4
  store ptr null, ptr %1242, align 8, !tbaa !161
  br label %1314

1243:                                             ; preds = %1234, %1279
  %1244 = phi ptr [ %1282, %1279 ], [ %1235, %1234 ]
  %1245 = phi ptr [ %1281, %1279 ], [ %120, %1234 ]
  %1246 = phi i64 [ %1271, %1279 ], [ 0, %1234 ]
  %1247 = phi i64 [ %1280, %1279 ], [ %121, %1234 ]
  %1248 = call fastcc i32 @IsPoint(ptr noundef nonnull %1244) #38, !range !129
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1285, label %1250

1250:                                             ; preds = %1243
  %1251 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1251, ptr noundef nonnull %10, ptr noundef %94) #35
  %1252 = call fastcc double @StringToDouble(ptr noundef %94, ptr noundef null) #38
  %1253 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1253, ptr noundef nonnull %10, ptr noundef %94) #35
  %1254 = load i8, ptr %94, align 1, !tbaa !130
  %1255 = icmp eq i8 %1254, 44
  br i1 %1255, label %1256, label %1258

1256:                                             ; preds = %1250
  %1257 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1257, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %1258

1258:                                             ; preds = %1256, %1250
  %1259 = call fastcc double @StringToDouble(ptr noundef nonnull %94, ptr noundef null) #38
  %1260 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1260, ptr noundef null, ptr noundef nonnull %94) #35
  %1261 = load i8, ptr %94, align 1, !tbaa !130
  %1262 = icmp eq i8 %1261, 44
  br i1 %1262, label %1263, label %1265

1263:                                             ; preds = %1258
  %1264 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1264, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %1265

1265:                                             ; preds = %1263, %1258
  %1266 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1245, i64 %1246
  %1267 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1245, i64 %1246, i32 2
  store i32 %1179, ptr %1267, align 8, !tbaa !157
  store double %1252, ptr %1266, align 8, !tbaa.struct !108
  %1268 = getelementptr inbounds i8, ptr %1266, i64 8
  store double %1259, ptr %1268, align 8, !tbaa.struct !162
  %1269 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1245, i64 %1246, i32 1
  store i64 0, ptr %1269, align 8, !tbaa !159
  %1270 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1245, i64 %1246, i32 3
  store i32 3, ptr %1270, align 4, !tbaa !160
  %1271 = add nuw i64 %1246, 1
  %1272 = icmp slt i64 %1271, %1247
  br i1 %1272, label %1279, label %1273

1273:                                             ; preds = %1265
  %1274 = shl i64 %1247, 1
  %1275 = call ptr @ResizeQuantumMemory(ptr noundef nonnull %1245, i64 noundef %1274, i64 noundef 40) #42
  %1276 = icmp eq ptr %1275, null
  br i1 %1276, label %1277, label %1279

1277:                                             ; preds = %1273
  %1278 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %95, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2857, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %105) #35
  unreachable

1279:                                             ; preds = %1273, %1265
  %1280 = phi i64 [ %1247, %1265 ], [ %1274, %1273 ]
  %1281 = phi ptr [ %1245, %1265 ], [ %1275, %1273 ]
  %1282 = load ptr, ptr %10, align 8, !tbaa !72
  %1283 = load i8, ptr %1282, align 1, !tbaa !130
  %1284 = icmp eq i8 %1283, 0
  br i1 %1284, label %1285, label %1243, !llvm.loop !163

1285:                                             ; preds = %1279, %1243
  %1286 = phi i64 [ %1280, %1279 ], [ %1247, %1243 ]
  %1287 = phi i64 [ %1271, %1279 ], [ %1246, %1243 ]
  %1288 = phi ptr [ %1281, %1279 ], [ %1245, %1243 ]
  %1289 = load <2 x double>, ptr %1288, align 8, !tbaa !57
  %1290 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1288, i64 0, i32 2
  store i32 %1179, ptr %1290, align 8, !tbaa !157
  %1291 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1288, i64 0, i32 1
  store i64 %1287, ptr %1291, align 8, !tbaa !159
  %1292 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1288, i64 0, i32 3
  store i32 3, ptr %1292, align 4, !tbaa !160
  %1293 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1288, i64 0, i32 4
  store ptr null, ptr %1293, align 8, !tbaa !161
  %1294 = icmp ugt i64 %1287, 1
  %1295 = extractelement <2 x double> %1289, i64 0
  %1296 = extractelement <2 x double> %1289, i64 1
  br i1 %1294, label %1297, label %1314

1297:                                             ; preds = %1285, %1297
  %1298 = phi i64 [ %1307, %1297 ], [ 1, %1285 ]
  %1299 = phi <2 x double> [ %1306, %1297 ], [ %1289, %1285 ]
  %1300 = phi <2 x double> [ %1304, %1297 ], [ %1289, %1285 ]
  %1301 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1288, i64 %1298
  %1302 = load <2 x double>, ptr %1301, align 8
  %1303 = fcmp olt <2 x double> %1302, %1300
  %1304 = select <2 x i1> %1303, <2 x double> %1302, <2 x double> %1300
  %1305 = fcmp ogt <2 x double> %1302, %1299
  %1306 = select <2 x i1> %1305, <2 x double> %1302, <2 x double> %1299
  %1307 = add nuw nsw i64 %1298, 1
  %1308 = icmp eq i64 %1307, %1287
  br i1 %1308, label %1309, label %1297, !llvm.loop !164

1309:                                             ; preds = %1297
  %1310 = extractelement <2 x double> %1304, i64 1
  %1311 = extractelement <2 x double> %1304, i64 0
  %1312 = extractelement <2 x double> %1306, i64 1
  %1313 = extractelement <2 x double> %1306, i64 0
  br label %1314

1314:                                             ; preds = %1309, %1238, %1285
  %1315 = phi ptr [ %1291, %1285 ], [ %1240, %1238 ], [ %1291, %1309 ]
  %1316 = phi ptr [ %1288, %1285 ], [ %120, %1238 ], [ %1288, %1309 ]
  %1317 = phi i64 [ %1287, %1285 ], [ 0, %1238 ], [ %1287, %1309 ]
  %1318 = phi i64 [ %1286, %1285 ], [ %121, %1238 ], [ %1286, %1309 ]
  %1319 = phi double [ %1295, %1285 ], [ 0.000000e+00, %1238 ], [ %1311, %1309 ]
  %1320 = phi double [ %1296, %1285 ], [ 0.000000e+00, %1238 ], [ %1310, %1309 ]
  %1321 = phi double [ %1295, %1285 ], [ 0.000000e+00, %1238 ], [ %1313, %1309 ]
  %1322 = phi double [ %1296, %1285 ], [ 0.000000e+00, %1238 ], [ %1312, %1309 ]
  switch i32 %1179, label %1367 [
    i32 3, label %1323
    i32 4, label %1325
    i32 10, label %1327
    i32 15, label %1335
    i32 7, label %1358
    i32 5, label %1358
    i32 6, label %1358
  ]

1323:                                             ; preds = %1314
  %1324 = mul i64 %1317, 5
  br label %1367

1325:                                             ; preds = %1314
  %1326 = mul i64 %1317, 1605
  br label %1367

1327:                                             ; preds = %1314
  %1328 = icmp ugt i64 %1317, 107
  br i1 %1328, label %1329, label %1332

1329:                                             ; preds = %1327
  %1330 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %95, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2904, i32 noundef 460, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.3, ptr noundef %94) #35
  %1331 = load i64, ptr %1315, align 8, !tbaa !159
  br label %1332

1332:                                             ; preds = %1329, %1327
  %1333 = phi i64 [ %1331, %1329 ], [ %1317, %1327 ]
  %1334 = mul i64 %1333, 200
  br label %1367

1335:                                             ; preds = %1314
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #12
  %1336 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1336, ptr noundef nonnull %10, ptr noundef %94) #35
  store ptr %94, ptr %18, align 8, !tbaa !72
  %1337 = load i8, ptr %94, align 1, !tbaa !130
  %1338 = icmp eq i8 %1337, 0
  br i1 %1338, label %1354, label %1339

1339:                                             ; preds = %1335, %1349
  %1340 = phi ptr [ %1350, %1349 ], [ %94, %1335 ]
  %1341 = phi i64 [ %1351, %1349 ], [ 1, %1335 ]
  %1342 = call fastcc double @StringToDouble(ptr noundef nonnull %1340, ptr noundef nonnull %18) #38
  %1343 = load ptr, ptr %18, align 8, !tbaa !72
  %1344 = icmp eq ptr %1340, %1343
  br i1 %1344, label %1345, label %1347

1345:                                             ; preds = %1339
  %1346 = getelementptr inbounds i8, ptr %1340, i64 1
  store ptr %1346, ptr %18, align 8, !tbaa !72
  br label %1349

1347:                                             ; preds = %1339
  %1348 = add i64 %1341, 1
  br label %1349

1349:                                             ; preds = %1347, %1345
  %1350 = phi ptr [ %1346, %1345 ], [ %1343, %1347 ]
  %1351 = phi i64 [ %1341, %1345 ], [ %1348, %1347 ]
  %1352 = load i8, ptr %1350, align 1, !tbaa !130
  %1353 = icmp eq i8 %1352, 0
  br i1 %1353, label %1354, label %1339, !llvm.loop !165

1354:                                             ; preds = %1349, %1335
  %1355 = phi i64 [ 1, %1335 ], [ %1351, %1349 ]
  %1356 = mul i64 %1355, 200
  %1357 = lshr exact i64 %1356, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #12
  br label %1367

1358:                                             ; preds = %1314, %1314, %1314
  %1359 = fsub double %1321, %1319
  %1360 = fsub double %1322, %1320
  %1361 = call double @hypot(double noundef %1359, double noundef %1360) #35
  %1362 = fmul double %1361, 0x400921FB54442D18
  %1363 = call double @llvm.ceil.f64(double %1362)
  %1364 = fptoui double %1363 to i64
  %1365 = shl i64 %1364, 1
  %1366 = add i64 %1365, 1560
  br label %1367

1367:                                             ; preds = %1314, %1358, %1354, %1332, %1325, %1323
  %1368 = phi i64 [ %1317, %1314 ], [ %1366, %1358 ], [ %1357, %1354 ], [ %1334, %1332 ], [ %1326, %1325 ], [ %1324, %1323 ]
  %1369 = add i64 %1368, %1317
  %1370 = icmp ult i64 %1369, %1318
  br i1 %1370, label %1378, label %1371

1371:                                             ; preds = %1367
  %1372 = add i64 %1318, 1
  %1373 = add i64 %1372, %1368
  %1374 = call ptr @ResizeQuantumMemory(ptr noundef nonnull %1316, i64 noundef %1373, i64 noundef 40) #42
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %1376, label %1378

1376:                                             ; preds = %1371
  %1377 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %95, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2963, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %105) #35
  br label %1667

1378:                                             ; preds = %1371, %1367
  %1379 = phi i64 [ %1373, %1371 ], [ %1318, %1367 ]
  %1380 = phi ptr [ %1374, %1371 ], [ %1316, %1367 ]
  switch i32 %1179, label %1381 [
    i32 14, label %1518
    i32 2, label %1390
    i32 3, label %1403
    i32 4, label %1416
    i32 5, label %1433
    i32 6, label %1450
    i32 7, label %1467
    i32 8, label %1526
    i32 9, label %1480
    i32 10, label %1487
    i32 15, label %1493
    i32 11, label %1495
    i32 12, label %1495
    i32 13, label %1506
  ]

1381:                                             ; preds = %1378
  %1382 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1383 = load i64, ptr %1382, align 8, !tbaa !159
  %1384 = icmp eq i64 %1383, 1
  br i1 %1384, label %1385, label %1526

1385:                                             ; preds = %1381
  %1386 = load double, ptr %1380, align 8
  %1387 = getelementptr inbounds { double, double }, ptr %1380, i64 0, i32 1
  %1388 = load double, ptr %1387, align 8
  call fastcc void @TracePoint(ptr noundef nonnull %1380, double %1386, double %1388) #38
  %1389 = load i64, ptr %1382, align 8, !tbaa !159
  br label %1526

1390:                                             ; preds = %1378
  %1391 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1392 = load i64, ptr %1391, align 8, !tbaa !159
  %1393 = icmp eq i64 %1392, 2
  br i1 %1393, label %1394, label %1526

1394:                                             ; preds = %1390
  %1395 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1
  %1396 = load double, ptr %1380, align 8
  %1397 = getelementptr inbounds { double, double }, ptr %1380, i64 0, i32 1
  %1398 = load double, ptr %1397, align 8
  %1399 = load double, ptr %1395, align 8
  %1400 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1, i32 0, i32 1
  %1401 = load double, ptr %1400, align 8
  call fastcc void @TraceLine(ptr noundef nonnull %1380, double %1396, double %1398, double %1399, double %1401) #38
  %1402 = load i64, ptr %1391, align 8, !tbaa !159
  br label %1526

1403:                                             ; preds = %1378
  %1404 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1405 = load i64, ptr %1404, align 8, !tbaa !159
  %1406 = icmp eq i64 %1405, 2
  br i1 %1406, label %1407, label %1526

1407:                                             ; preds = %1403
  %1408 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1
  %1409 = load double, ptr %1380, align 8
  %1410 = getelementptr inbounds { double, double }, ptr %1380, i64 0, i32 1
  %1411 = load double, ptr %1410, align 8
  %1412 = load double, ptr %1408, align 8
  %1413 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1, i32 0, i32 1
  %1414 = load double, ptr %1413, align 8
  call fastcc void @TraceRectangle(ptr noundef nonnull %1380, double %1409, double %1411, double %1412, double %1414) #38
  %1415 = load i64, ptr %1404, align 8, !tbaa !159
  br label %1526

1416:                                             ; preds = %1378
  %1417 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1418 = load i64, ptr %1417, align 8, !tbaa !159
  %1419 = icmp eq i64 %1418, 3
  br i1 %1419, label %1420, label %1526

1420:                                             ; preds = %1416
  %1421 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1
  %1422 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 2
  %1423 = load double, ptr %1380, align 8
  %1424 = getelementptr inbounds { double, double }, ptr %1380, i64 0, i32 1
  %1425 = load double, ptr %1424, align 8
  %1426 = load double, ptr %1421, align 8
  %1427 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1, i32 0, i32 1
  %1428 = load double, ptr %1427, align 8
  %1429 = load double, ptr %1422, align 8
  %1430 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 2, i32 0, i32 1
  %1431 = load double, ptr %1430, align 8
  call fastcc void @TraceRoundRectangle(ptr noundef nonnull %1380, double %1423, double %1425, double %1426, double %1428, double %1429, double %1431) #38
  %1432 = load i64, ptr %1417, align 8, !tbaa !159
  br label %1526

1433:                                             ; preds = %1378
  %1434 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1435 = load i64, ptr %1434, align 8, !tbaa !159
  %1436 = icmp eq i64 %1435, 3
  br i1 %1436, label %1437, label %1526

1437:                                             ; preds = %1433
  %1438 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1
  %1439 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 2
  %1440 = load double, ptr %1380, align 8
  %1441 = getelementptr inbounds { double, double }, ptr %1380, i64 0, i32 1
  %1442 = load double, ptr %1441, align 8
  %1443 = load double, ptr %1438, align 8
  %1444 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1, i32 0, i32 1
  %1445 = load double, ptr %1444, align 8
  %1446 = load double, ptr %1439, align 8
  %1447 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 2, i32 0, i32 1
  %1448 = load double, ptr %1447, align 8
  call fastcc void @TraceArc(ptr noundef nonnull %1380, double %1440, double %1442, double %1443, double %1445, double %1446, double %1448) #38
  %1449 = load i64, ptr %1434, align 8, !tbaa !159
  br label %1526

1450:                                             ; preds = %1378
  %1451 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1452 = load i64, ptr %1451, align 8, !tbaa !159
  %1453 = icmp eq i64 %1452, 3
  br i1 %1453, label %1454, label %1526

1454:                                             ; preds = %1450
  %1455 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1
  %1456 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 2
  %1457 = load double, ptr %1380, align 8
  %1458 = getelementptr inbounds { double, double }, ptr %1380, i64 0, i32 1
  %1459 = load double, ptr %1458, align 8
  %1460 = load double, ptr %1455, align 8
  %1461 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1, i32 0, i32 1
  %1462 = load double, ptr %1461, align 8
  %1463 = load double, ptr %1456, align 8
  %1464 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 2, i32 0, i32 1
  %1465 = load double, ptr %1464, align 8
  call fastcc void @TraceEllipse(ptr noundef nonnull %1380, double %1457, double %1459, double %1460, double %1462, double %1463, double %1465) #38
  %1466 = load i64, ptr %1451, align 8, !tbaa !159
  br label %1526

1467:                                             ; preds = %1378
  %1468 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1469 = load i64, ptr %1468, align 8, !tbaa !159
  %1470 = icmp eq i64 %1469, 2
  br i1 %1470, label %1471, label %1526

1471:                                             ; preds = %1467
  %1472 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1
  %1473 = load double, ptr %1380, align 8
  %1474 = getelementptr inbounds { double, double }, ptr %1380, i64 0, i32 1
  %1475 = load double, ptr %1474, align 8
  %1476 = load double, ptr %1472, align 8
  %1477 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 1, i32 0, i32 1
  %1478 = load double, ptr %1477, align 8
  call fastcc void @TraceCircle(ptr noundef nonnull %1380, double %1473, double %1475, double %1476, double %1478) #38
  %1479 = load i64, ptr %1468, align 8, !tbaa !159
  br label %1526

1480:                                             ; preds = %1378
  %1481 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 %1317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1481, ptr noundef nonnull align 8 dereferenceable(40) %1380, i64 40, i1 false), !tbaa.struct !166
  %1482 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 %1317, i32 1
  store i64 0, ptr %1482, align 8, !tbaa !159
  %1483 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1484 = load i64, ptr %1483, align 8, !tbaa !159
  %1485 = add i64 %1484, 1
  store i64 %1485, ptr %1483, align 8, !tbaa !159
  %1486 = add nuw nsw i64 %1317, 1
  br label %1526

1487:                                             ; preds = %1378
  %1488 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1489 = load i64, ptr %1488, align 8, !tbaa !159
  %1490 = icmp ult i64 %1489, 3
  br i1 %1490, label %1526, label %1491

1491:                                             ; preds = %1487
  call fastcc void @TraceBezier(ptr noundef nonnull %1380, i64 noundef %1489) #38
  %1492 = load i64, ptr %1488, align 8, !tbaa !159
  br label %1526

1493:                                             ; preds = %1378
  %1494 = call fastcc i64 @TracePath(ptr noundef nonnull %1380, ptr noundef %94) #38
  br label %1526

1495:                                             ; preds = %1378, %1378
  %1496 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1497 = load i64, ptr %1496, align 8, !tbaa !159
  %1498 = icmp eq i64 %1497, 1
  br i1 %1498, label %1499, label %1526

1499:                                             ; preds = %1495
  %1500 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1500, ptr noundef nonnull %10, ptr noundef %94) #35
  %1501 = call i64 @ParseCommandOption(i32 noundef 43, i32 noundef 0, ptr noundef %94) #35
  %1502 = icmp eq i64 %1501, -1
  br i1 %1502, label %1526, label %1503

1503:                                             ; preds = %1499
  %1504 = trunc i64 %1501 to i32
  %1505 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 3
  store i32 %1504, ptr %1505, align 4, !tbaa !160
  br label %1526

1506:                                             ; preds = %1378
  %1507 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1508 = load i64, ptr %1507, align 8, !tbaa !159
  %1509 = icmp eq i64 %1508, 1
  br i1 %1509, label %1510, label %1526

1510:                                             ; preds = %1506
  %1511 = load i8, ptr %94, align 1, !tbaa !130
  %1512 = icmp eq i8 %1511, 44
  br i1 %1512, label %1515, label %1513

1513:                                             ; preds = %1510
  %1514 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1514, ptr noundef nonnull %10, ptr noundef nonnull %94) #35
  br label %1515

1515:                                             ; preds = %1513, %1510
  %1516 = call ptr @AcquireString(ptr noundef nonnull %94) #35
  %1517 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 4
  store ptr %1516, ptr %1517, align 8, !tbaa !161
  br label %1526

1518:                                             ; preds = %1378
  %1519 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 1
  %1520 = load i64, ptr %1519, align 8, !tbaa !159
  %1521 = icmp eq i64 %1520, 2
  br i1 %1521, label %1522, label %1526

1522:                                             ; preds = %1518
  %1523 = load ptr, ptr %10, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %1523, ptr noundef nonnull %10, ptr noundef %94) #35
  %1524 = call ptr @AcquireString(ptr noundef %94) #35
  %1525 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 4
  store ptr %1524, ptr %1525, align 8, !tbaa !161
  br label %1526

1526:                                             ; preds = %1385, %1394, %1407, %1420, %1437, %1454, %1471, %1480, %1491, %1378, %1493, %1515, %1522, %1381, %1390, %1403, %1416, %1433, %1450, %1467, %1487, %1499, %1495, %1503, %1506, %1518
  %1527 = phi i64 [ %1389, %1385 ], [ %1317, %1515 ], [ %1494, %1493 ], [ %1492, %1491 ], [ %1486, %1480 ], [ %1317, %1378 ], [ %1479, %1471 ], [ %1466, %1454 ], [ %1449, %1437 ], [ %1432, %1420 ], [ %1415, %1407 ], [ %1402, %1394 ], [ %1317, %1522 ], [ %1317, %1381 ], [ %1317, %1390 ], [ %1317, %1403 ], [ %1317, %1416 ], [ %1317, %1433 ], [ %1317, %1450 ], [ %1317, %1467 ], [ %1317, %1487 ], [ %1317, %1499 ], [ %1317, %1495 ], [ %1317, %1503 ], [ %1317, %1506 ], [ %1317, %1518 ]
  %1528 = phi i32 [ %1178, %1385 ], [ %1178, %1515 ], [ %1178, %1493 ], [ %1178, %1491 ], [ %1178, %1480 ], [ %1178, %1378 ], [ %1178, %1471 ], [ %1178, %1454 ], [ %1178, %1437 ], [ %1178, %1420 ], [ %1178, %1407 ], [ %1178, %1394 ], [ %1178, %1522 ], [ 0, %1381 ], [ 0, %1390 ], [ 0, %1403 ], [ 0, %1416 ], [ %1178, %1433 ], [ 0, %1450 ], [ 0, %1467 ], [ 0, %1487 ], [ 0, %1499 ], [ 0, %1495 ], [ %1178, %1503 ], [ 0, %1506 ], [ 0, %1518 ]
  %1529 = load i32, ptr %20, align 8, !tbaa !80
  %1530 = icmp eq i32 %1529, 0
  br i1 %1530, label %1538, label %1531

1531:                                             ; preds = %1526
  %1532 = load ptr, ptr %10, align 8, !tbaa !72
  %1533 = ptrtoint ptr %1532 to i64
  %1534 = ptrtoint ptr %1181 to i64
  %1535 = sub i64 %1533, %1534
  %1536 = trunc i64 %1535 to i32
  %1537 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3129, ptr noundef nonnull @.str.90, i32 noundef %1536, ptr noundef %1181) #35
  br label %1538

1538:                                             ; preds = %1531, %1526
  %1539 = icmp eq i32 %1528, 0
  br i1 %1539, label %1667, label %1540

1540:                                             ; preds = %1538
  %1541 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 %1527, i32 2
  store i32 0, ptr %1541, align 8, !tbaa !157
  %1542 = icmp eq i64 %1527, 0
  br i1 %1542, label %1662, label %1543

1543:                                             ; preds = %1540
  %1544 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 2
  %1545 = load i32, ptr %1544, align 8, !tbaa !157
  %1546 = icmp eq i32 %1545, 0
  %1547 = getelementptr inbounds ptr, ptr %1177, i64 %1182
  %1548 = load ptr, ptr %1547, align 8, !tbaa !72
  br i1 %1546, label %1616, label %1549

1549:                                             ; preds = %1543
  %1550 = getelementptr inbounds %struct._DrawInfo, ptr %1548, i64 0, i32 3
  %1551 = getelementptr inbounds %struct._DrawInfo, ptr %1548, i64 0, i32 3, i32 2
  %1552 = getelementptr inbounds %struct._DrawInfo, ptr %1548, i64 0, i32 3, i32 4
  %1553 = load <2 x double>, ptr %1550, align 8, !tbaa !57
  %1554 = load <2 x double>, ptr %1551, align 8, !tbaa !57
  %1555 = load <2 x double>, ptr %1552, align 8, !tbaa !57
  %1556 = getelementptr inbounds %struct._DrawInfo, ptr %1548, i64 0, i32 38
  %1557 = getelementptr inbounds %struct._DrawInfo, ptr %1548, i64 0, i32 38, i32 1
  %1558 = getelementptr inbounds %struct._DrawInfo, ptr %1548, i64 0, i32 38, i32 2
  %1559 = getelementptr inbounds %struct._DrawInfo, ptr %1548, i64 0, i32 38, i32 3
  %1560 = load double, ptr %1556, align 8, !tbaa !167
  %1561 = load double, ptr %1557, align 8, !tbaa !168
  %1562 = load double, ptr %1558, align 8, !tbaa !134
  %1563 = load double, ptr %1559, align 8, !tbaa !135
  %1564 = call i64 @llvm.smax.i64(i64 %1379, i64 0)
  br label %1570

1565:                                             ; preds = %1607
  %1566 = add nuw i64 %1576, 1
  %1567 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 %1566, i32 2
  %1568 = load i32, ptr %1567, align 8, !tbaa !157
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1616, label %1570, !llvm.loop !169

1570:                                             ; preds = %1549, %1565
  %1571 = phi double [ %1563, %1549 ], [ %1605, %1565 ]
  %1572 = phi double [ %1562, %1549 ], [ %1601, %1565 ]
  %1573 = phi double [ %1561, %1549 ], [ %1597, %1565 ]
  %1574 = phi double [ %1560, %1549 ], [ %1592, %1565 ]
  %1575 = phi i32 [ %1545, %1549 ], [ %1568, %1565 ]
  %1576 = phi i64 [ 0, %1549 ], [ %1566, %1565 ]
  %1577 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 %1576
  %1578 = load double, ptr %1577, align 8, !tbaa.struct !108
  %1579 = getelementptr inbounds i8, ptr %1577, i64 8
  %1580 = load double, ptr %1579, align 8, !tbaa.struct !162
  %1581 = insertelement <2 x double> poison, double %1580, i64 0
  %1582 = shufflevector <2 x double> %1581, <2 x double> poison, <2 x i32> zeroinitializer
  %1583 = fmul <2 x double> %1582, %1554
  %1584 = insertelement <2 x double> poison, double %1578, i64 0
  %1585 = shufflevector <2 x double> %1584, <2 x double> poison, <2 x i32> zeroinitializer
  %1586 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1553, <2 x double> %1585, <2 x double> %1583)
  %1587 = fadd <2 x double> %1555, %1586
  store <2 x double> %1587, ptr %1577, align 8, !tbaa !57
  %1588 = extractelement <2 x double> %1587, i64 0
  %1589 = fcmp olt double %1588, %1574
  br i1 %1589, label %1590, label %1591

1590:                                             ; preds = %1570
  store double %1588, ptr %1556, align 8, !tbaa !167
  br label %1591

1591:                                             ; preds = %1590, %1570
  %1592 = phi double [ %1588, %1590 ], [ %1574, %1570 ]
  %1593 = extractelement <2 x double> %1587, i64 1
  %1594 = fcmp olt double %1593, %1573
  br i1 %1594, label %1595, label %1596

1595:                                             ; preds = %1591
  store double %1593, ptr %1557, align 8, !tbaa !168
  br label %1596

1596:                                             ; preds = %1595, %1591
  %1597 = phi double [ %1593, %1595 ], [ %1573, %1591 ]
  %1598 = fcmp ogt double %1588, %1572
  br i1 %1598, label %1599, label %1600

1599:                                             ; preds = %1596
  store double %1588, ptr %1558, align 8, !tbaa !134
  br label %1600

1600:                                             ; preds = %1599, %1596
  %1601 = phi double [ %1588, %1599 ], [ %1572, %1596 ]
  %1602 = fcmp ogt double %1593, %1571
  br i1 %1602, label %1603, label %1604

1603:                                             ; preds = %1600
  store double %1593, ptr %1559, align 8, !tbaa !135
  br label %1604

1604:                                             ; preds = %1603, %1600
  %1605 = phi double [ %1593, %1603 ], [ %1571, %1600 ]
  %1606 = icmp eq i32 %1575, 14
  br i1 %1606, label %1616, label %1607

1607:                                             ; preds = %1604
  %1608 = icmp eq i64 %1576, %1564
  br i1 %1608, label %1609, label %1565

1609:                                             ; preds = %1607
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #12
  call void @GetExceptionInfo(ptr noundef nonnull %19) #35
  %1610 = tail call ptr @__errno_location() #36
  %1611 = load i32, ptr %1610, align 4, !tbaa !6
  %1612 = call ptr @GetExceptionMessage(i32 noundef %1611) #35
  %1613 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3157, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %1612) #35
  %1614 = call ptr @DestroyString(ptr noundef %1612) #35
  call void @CatchException(ptr noundef nonnull %19) #35
  %1615 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %19) #35
  call void @MagickCoreTerminus() #35
  call void @_exit(i32 noundef 1) #37
  unreachable

1616:                                             ; preds = %1565, %1604, %1543
  %1617 = getelementptr inbounds ptr, ptr %1177, i64 %1182
  %1618 = getelementptr inbounds %struct._DrawInfo, ptr %1548, i64 0, i32 41
  %1619 = load i32, ptr %1618, align 8, !tbaa !44
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %1647, label %1621

1621:                                             ; preds = %1616
  %1622 = icmp eq i64 %1182, 0
  br i1 %1622, label %1642, label %1623

1623:                                             ; preds = %1621
  %1624 = getelementptr inbounds %struct._DrawInfo, ptr %1548, i64 0, i32 37
  %1625 = load ptr, ptr %1624, align 8, !tbaa !76
  %1626 = icmp eq ptr %1625, null
  br i1 %1626, label %1642, label %1627

1627:                                             ; preds = %1623
  %1628 = add nsw i64 %1182, -1
  %1629 = getelementptr inbounds ptr, ptr %1177, i64 %1628
  %1630 = load ptr, ptr %1629, align 8, !tbaa !72
  %1631 = getelementptr inbounds %struct._DrawInfo, ptr %1630, i64 0, i32 37
  %1632 = load ptr, ptr %1631, align 8, !tbaa !76
  %1633 = call i32 @LocaleCompare(ptr noundef nonnull %1625, ptr noundef %1632) #35
  %1634 = icmp eq i32 %1633, 0
  %1635 = load ptr, ptr %1617, align 8, !tbaa !72
  br i1 %1634, label %1642, label %1636

1636:                                             ; preds = %1627
  %1637 = getelementptr inbounds %struct._DrawInfo, ptr %1635, i64 0, i32 37
  %1638 = load ptr, ptr %1637, align 8, !tbaa !76
  %1639 = call i32 @DrawClipPath(ptr noundef %0, ptr noundef %1635, ptr noundef %1638) #38, !range !129
  %1640 = and i32 %1639, %1528
  %1641 = load ptr, ptr %1617, align 8, !tbaa !72
  br label %1642

1642:                                             ; preds = %1636, %1627, %1623, %1621
  %1643 = phi ptr [ %1641, %1636 ], [ %1635, %1627 ], [ %1548, %1623 ], [ %1548, %1621 ]
  %1644 = phi i32 [ %1640, %1636 ], [ %1528, %1627 ], [ %1528, %1623 ], [ %1528, %1621 ]
  %1645 = call i32 @DrawPrimitive(ptr noundef %0, ptr noundef %1643, ptr noundef nonnull %1380) #38, !range !129
  %1646 = and i32 %1645, %1644
  br label %1647

1647:                                             ; preds = %1642, %1616
  %1648 = phi i32 [ %1646, %1642 ], [ %1528, %1616 ]
  %1649 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1380, i64 0, i32 4
  %1650 = load ptr, ptr %1649, align 8, !tbaa !161
  %1651 = icmp eq ptr %1650, null
  br i1 %1651, label %1654, label %1652

1652:                                             ; preds = %1647
  %1653 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %1650) #35
  store ptr %1653, ptr %1649, align 8, !tbaa !161
  br label %1654

1654:                                             ; preds = %1652, %1647
  %1655 = load ptr, ptr %10, align 8, !tbaa !72
  %1656 = ptrtoint ptr %1655 to i64
  %1657 = sub i64 %1656, %114
  %1658 = call fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1657, i64 noundef %115) #38
  %1659 = icmp eq i32 %1658, 0
  %1660 = icmp eq i32 %1648, 0
  %1661 = select i1 %1659, i1 true, i1 %1660
  br i1 %1661, label %1667, label %1662

1662:                                             ; preds = %1654, %1540
  %1663 = phi i32 [ %1528, %1540 ], [ %1648, %1654 ]
  %1664 = load ptr, ptr %10, align 8, !tbaa !72
  %1665 = load i8, ptr %1664, align 1, !tbaa !130
  %1666 = icmp eq i8 %1665, 0
  br i1 %1666, label %1667, label %116, !llvm.loop !156

1667:                                             ; preds = %1662, %1654, %1538, %1230, %138, %1122, %1109, %1083, %1072, %1058, %1026, %1015, %840, %572, %815, %569, %495, %487, %484, %476, %468, %452, %438, %441, %388, %380, %369, %325, %273, %259, %262, %251, %245, %229, %218, %195, %189, %1169, %128, %133, %99, %298, %900, %1376
  %1668 = phi i64 [ %1182, %1376 ], [ %127, %900 ], [ %127, %298 ], [ 0, %99 ], [ %127, %133 ], [ %127, %128 ], [ %1182, %1230 ], [ %127, %138 ], [ %127, %1122 ], [ %127, %1109 ], [ %127, %1083 ], [ %127, %1072 ], [ %127, %1058 ], [ %127, %1026 ], [ %127, %1015 ], [ %127, %840 ], [ %127, %572 ], [ %127, %815 ], [ %127, %569 ], [ %127, %495 ], [ %127, %487 ], [ %127, %484 ], [ %127, %476 ], [ %127, %468 ], [ %127, %452 ], [ %127, %438 ], [ %127, %441 ], [ %127, %388 ], [ %127, %380 ], [ %127, %369 ], [ %127, %325 ], [ %127, %273 ], [ %127, %259 ], [ %127, %262 ], [ %127, %251 ], [ %127, %245 ], [ %127, %229 ], [ %127, %218 ], [ %127, %195 ], [ %127, %189 ], [ %1170, %1169 ], [ %1182, %1538 ], [ %1182, %1654 ], [ %1182, %1662 ]
  %1669 = phi ptr [ null, %1376 ], [ %120, %900 ], [ %120, %298 ], [ %68, %99 ], [ %120, %133 ], [ %120, %128 ], [ %120, %1169 ], [ %120, %189 ], [ %120, %195 ], [ %120, %218 ], [ %120, %229 ], [ %120, %245 ], [ %120, %251 ], [ %120, %262 ], [ %120, %259 ], [ %120, %273 ], [ %120, %325 ], [ %120, %369 ], [ %120, %380 ], [ %120, %388 ], [ %120, %441 ], [ %120, %438 ], [ %120, %452 ], [ %120, %468 ], [ %120, %476 ], [ %120, %484 ], [ %120, %487 ], [ %120, %495 ], [ %120, %569 ], [ %120, %815 ], [ %120, %572 ], [ %120, %840 ], [ %120, %1015 ], [ %120, %1026 ], [ %120, %1058 ], [ %120, %1072 ], [ %120, %1083 ], [ %120, %1109 ], [ %120, %1122 ], [ %120, %138 ], [ %120, %1230 ], [ %1380, %1538 ], [ %1380, %1654 ], [ %1380, %1662 ]
  %1670 = phi i32 [ 1, %1376 ], [ 0, %900 ], [ 0, %298 ], [ 1, %99 ], [ %126, %133 ], [ %126, %128 ], [ 1, %1230 ], [ 0, %138 ], [ 0, %1122 ], [ 0, %1109 ], [ 0, %1083 ], [ 0, %1072 ], [ 0, %1058 ], [ 0, %1026 ], [ 0, %1015 ], [ 0, %840 ], [ 0, %572 ], [ 0, %815 ], [ 0, %569 ], [ 0, %495 ], [ 0, %487 ], [ 0, %484 ], [ 0, %476 ], [ 0, %468 ], [ 0, %452 ], [ 0, %438 ], [ 0, %441 ], [ 0, %388 ], [ 0, %380 ], [ 0, %369 ], [ 0, %325 ], [ 0, %273 ], [ 0, %259 ], [ 0, %262 ], [ 0, %251 ], [ 0, %245 ], [ 0, %229 ], [ 0, %218 ], [ 0, %195 ], [ 0, %189 ], [ 0, %1169 ], [ %1663, %1662 ], [ %1648, %1654 ], [ 0, %1538 ]
  %1671 = phi ptr [ %1177, %1376 ], [ %125, %900 ], [ %125, %298 ], [ %60, %99 ], [ %125, %133 ], [ %125, %128 ], [ %1177, %1230 ], [ %125, %138 ], [ %125, %1122 ], [ %125, %1109 ], [ %125, %1083 ], [ %125, %1072 ], [ %125, %1058 ], [ %125, %1026 ], [ %125, %1015 ], [ %125, %840 ], [ %125, %572 ], [ %125, %815 ], [ %125, %569 ], [ %125, %495 ], [ %125, %487 ], [ %125, %484 ], [ %125, %476 ], [ %125, %468 ], [ %125, %452 ], [ %125, %438 ], [ %125, %441 ], [ %125, %388 ], [ %125, %380 ], [ %125, %369 ], [ %125, %325 ], [ %125, %273 ], [ %125, %259 ], [ %125, %262 ], [ %125, %251 ], [ %125, %245 ], [ %125, %229 ], [ %125, %218 ], [ %125, %195 ], [ %125, %189 ], [ %1174, %1169 ], [ %1177, %1538 ], [ %1177, %1654 ], [ %1177, %1662 ]
  %1672 = load i32, ptr %20, align 8, !tbaa !80
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1676, label %1674

1674:                                             ; preds = %1667
  %1675 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3179, ptr noundef nonnull @.str.93) #35
  br label %1676

1676:                                             ; preds = %1674, %1667
  %1677 = call ptr @DestroyString(ptr noundef %94) #35
  %1678 = icmp eq ptr %1669, null
  br i1 %1678, label %1681, label %1679

1679:                                             ; preds = %1676
  %1680 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %1669) #35
  br label %1681

1681:                                             ; preds = %1679, %1676
  %1682 = call ptr @DestroyString(ptr noundef nonnull %54) #35
  %1683 = icmp sgt i64 %1668, -1
  br i1 %1683, label %1684, label %1691

1684:                                             ; preds = %1681, %1684
  %1685 = phi i64 [ %1689, %1684 ], [ %1668, %1681 ]
  %1686 = getelementptr inbounds ptr, ptr %1671, i64 %1685
  %1687 = load ptr, ptr %1686, align 8, !tbaa !72
  %1688 = call ptr @DestroyDrawInfo(ptr noundef %1687) #38
  store ptr %1688, ptr %1686, align 8, !tbaa !72
  %1689 = add nsw i64 %1685, -1
  %1690 = icmp eq i64 %1685, 0
  br i1 %1690, label %1691, label %1684, !llvm.loop !170

1691:                                             ; preds = %1684, %1681
  %1692 = call ptr @RelinquishMagickMemory(ptr noundef %1671) #35
  %1693 = icmp eq i32 %1670, 0
  br i1 %1693, label %1694, label %1698

1694:                                             ; preds = %1691
  %1695 = icmp eq ptr %0, null
  br i1 %1695, label %1698, label %1696

1696:                                             ; preds = %1694
  %1697 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %95, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3192, i32 noundef 460, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.3, ptr noundef nonnull %6) #35
  br label %1698

1698:                                             ; preds = %1691, %1694, %1696, %93, %70, %62, %53, %30, %33
  %1699 = phi i32 [ 0, %33 ], [ 0, %30 ], [ 0, %53 ], [ 0, %62 ], [ 0, %70 ], [ 0, %93 ], [ 0, %1696 ], [ 0, %1694 ], [ 1, %1691 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #12
  ret i32 %1699
}

; Function Attrs: optsize
declare i32 @NegateImage(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare i32 @SetImageArtifact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetAffineMatrix(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4779, ptr noundef nonnull @.str.5) #35
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 48) #35
  store double 1.000000e+00, ptr %0, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct._AffineMatrix, ptr %0, i64 0, i32 3
  store double 1.000000e+00, ptr %4, align 8, !tbaa !93
  ret void
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0, ptr noalias noundef %1) unnamed_addr #0 {
  %3 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef %1) #35
  ret double %3
}

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @DrawPatternPath(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !80
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3567, ptr noundef nonnull @.str.6, ptr noundef nonnull %10) #35
  br label %12

12:                                               ; preds = %9, %4
  %13 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %2) #35
  %14 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull %5) #35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %12
  %17 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.64, ptr noundef %2) #35
  %18 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull %5) #35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8, !tbaa !72
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call ptr @DestroyImage(ptr noundef nonnull %21) #35
  store ptr %24, ptr %3, align 8, !tbaa !72
  br label %25

25:                                               ; preds = %23, %20
  %26 = call ptr @AcquireImageInfo() #35
  %27 = call ptr @AcquireString(ptr noundef nonnull %18) #35
  %28 = getelementptr inbounds %struct._ImageInfo, ptr %26, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !171
  %29 = call ptr @AcquireImage(ptr noundef %26) #35
  store ptr %29, ptr %3, align 8, !tbaa !72
  %30 = call ptr @DestroyImageInfo(ptr noundef %26) #35
  %31 = load ptr, ptr %3, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 12
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %34 = call i32 @QueryColorDatabase(ptr noundef nonnull @.str.7, ptr noundef nonnull %32, ptr noundef nonnull %33) #35
  %35 = load ptr, ptr %3, align 8, !tbaa !72
  %36 = call i32 @SetImageBackgroundColor(ptr noundef %35) #35
  %37 = load i32, ptr %6, align 8, !tbaa !80
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %25
  %40 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3588, ptr noundef nonnull @.str.99, ptr noundef %2, ptr noundef nonnull %18) #35
  br label %41

41:                                               ; preds = %39, %25
  %42 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #38
  %43 = call ptr @NewImageList() #35
  %44 = getelementptr inbounds %struct._DrawInfo, ptr %42, i64 0, i32 9
  store ptr %43, ptr %44, align 8, !tbaa !58
  %45 = call ptr @NewImageList() #35
  %46 = getelementptr inbounds %struct._DrawInfo, ptr %42, i64 0, i32 11
  store ptr %45, ptr %46, align 8, !tbaa !60
  %47 = call ptr @CloneString(ptr noundef %42, ptr noundef nonnull %14) #35
  %48 = load ptr, ptr %3, align 8, !tbaa !72
  %49 = call i32 @DrawImage(ptr noundef %48, ptr noundef %42) #38, !range !129
  %50 = call ptr @DestroyDrawInfo(ptr noundef %42) #38
  %51 = load i32, ptr %6, align 8, !tbaa !80
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %41
  %54 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3597, ptr noundef nonnull @.str.100) #35
  br label %55

55:                                               ; preds = %41, %53, %16, %12
  %56 = phi i32 [ 0, %12 ], [ 0, %16 ], [ %49, %53 ], [ %49, %41 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #12
  ret i32 %56
}

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToUnsignedLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = tail call i64 @strtoul(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #35
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: optsize allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #9 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare i32 @GradientImage(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #35
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsPoint(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %3 = call fastcc double @StringToDouble(ptr noundef %0, ptr noundef nonnull %2) #38
  %4 = fcmp une double %3, 0.000000e+00
  %5 = load ptr, ptr %2, align 8
  %6 = icmp ne ptr %5, %0
  %7 = select i1 %4, i1 true, i1 %6
  %8 = zext i1 %7 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %8
}

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @TracePoint(ptr nocapture noundef writeonly %0, double %1, double %2) unnamed_addr #19 {
  %4 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 1
  store i64 1, ptr %4, align 8, !tbaa !159
  store double %1, ptr %0, align 8, !tbaa.struct !108
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store double %2, ptr %5, align 8, !tbaa.struct !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @TraceLine(ptr nocapture noundef %0, double %1, double %2, double %3, double %4) unnamed_addr #10 {
  tail call fastcc void @TracePoint(ptr noundef %0, double %1, double %2) #38
  %6 = fsub double %1, %3
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = fcmp olt double %7, 1.000000e-15
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = fsub double %2, %4
  %11 = tail call double @llvm.fabs.f64(double %10)
  %12 = fcmp olt double %11, 1.000000e-15
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 1
  tail call fastcc void @TracePoint(ptr noundef nonnull %14, double %3, double %4) #38
  %15 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !157
  br label %17

17:                                               ; preds = %9, %13
  %18 = phi i64 [ 1, %13 ], [ 0, %9 ]
  %19 = phi i32 [ %16, %13 ], [ 1, %9 ]
  %20 = phi i64 [ 2, %13 ], [ 1, %9 ]
  %21 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %18, i32 2
  store i32 %19, ptr %21, align 8, !tbaa !157
  %22 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 1
  store i64 %20, ptr %22, align 8, !tbaa !159
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @TraceRectangle(ptr noundef %0, double %1, double %2, double %3, double %4) unnamed_addr #20 {
  tail call fastcc void @TracePoint(ptr noundef %0, double %1, double %2) #38
  %6 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !159
  %8 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %7
  tail call fastcc void @TracePoint(ptr noundef %8, double %1, double %4) #38
  %9 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %7, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !159
  %11 = getelementptr inbounds %struct._PrimitiveInfo, ptr %8, i64 %10
  tail call fastcc void @TracePoint(ptr noundef %11, double %3, double %4) #38
  %12 = getelementptr inbounds %struct._PrimitiveInfo, ptr %8, i64 %10, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !159
  %14 = getelementptr inbounds %struct._PrimitiveInfo, ptr %11, i64 %13
  tail call fastcc void @TracePoint(ptr noundef %14, double %3, double %2) #38
  %15 = getelementptr inbounds %struct._PrimitiveInfo, ptr %11, i64 %13, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !159
  %17 = getelementptr inbounds %struct._PrimitiveInfo, ptr %14, i64 %16
  tail call fastcc void @TracePoint(ptr noundef %17, double %1, double %2) #38
  %18 = getelementptr inbounds %struct._PrimitiveInfo, ptr %14, i64 %16, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !159
  %20 = getelementptr inbounds %struct._PrimitiveInfo, ptr %17, i64 %19
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %0 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 40
  store i64 %24, ptr %6, align 8, !tbaa !159
  %25 = icmp sgt i64 %23, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %28 = tail call i64 @llvm.smax.i64(i64 %24, i64 1)
  %29 = load i32, ptr %27, align 8, !tbaa !157
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi i64 [ 0, %26 ], [ %35, %30 ]
  %32 = phi ptr [ %20, %26 ], [ %34, %30 ]
  %33 = getelementptr inbounds %struct._PrimitiveInfo, ptr %32, i64 0, i32 2
  store i32 %29, ptr %33, align 8, !tbaa !157
  %34 = getelementptr inbounds %struct._PrimitiveInfo, ptr %32, i64 -1
  %35 = add nuw nsw i64 %31, 1
  %36 = icmp eq i64 %35, %28
  br i1 %36, label %37, label %30, !llvm.loop !172

37:                                               ; preds = %30, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @TraceRoundRectangle(ptr noundef %0, double %1, double %2, double %3, double %4, double %5, double %6) unnamed_addr #21 {
  %8 = fsub double %3, %1
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fsub double %4, %2
  %11 = tail call double @llvm.fabs.f64(double %10)
  %12 = fmul double %9, 5.000000e-01
  %13 = fcmp olt double %12, %5
  %14 = select i1 %13, double %12, double %5
  %15 = fmul double %11, 5.000000e-01
  %16 = fcmp olt double %15, %6
  %17 = select i1 %16, double %15, double %6
  %18 = fadd double %9, %1
  %19 = fsub double %18, %14
  %20 = fadd double %17, %2
  tail call fastcc void @TraceEllipse(ptr noundef %0, double %19, double %20, double %14, double %17, double 2.700000e+02, double 3.600000e+02) #38
  %21 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !159
  %23 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %22
  %24 = fadd double %11, %2
  %25 = fsub double %24, %17
  tail call fastcc void @TraceEllipse(ptr noundef %23, double %19, double %25, double %14, double %17, double 0.000000e+00, double 9.000000e+01) #38
  %26 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %22, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !159
  %28 = getelementptr inbounds %struct._PrimitiveInfo, ptr %23, i64 %27
  %29 = fadd double %14, %1
  tail call fastcc void @TraceEllipse(ptr noundef %28, double %29, double %25, double %14, double %17, double 9.000000e+01, double 1.800000e+02) #38
  %30 = getelementptr inbounds %struct._PrimitiveInfo, ptr %23, i64 %27, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !159
  %32 = getelementptr inbounds %struct._PrimitiveInfo, ptr %28, i64 %31
  tail call fastcc void @TraceEllipse(ptr noundef %32, double %29, double %20, double %14, double %17, double 1.800000e+02, double 2.700000e+02) #38
  %33 = getelementptr inbounds %struct._PrimitiveInfo, ptr %28, i64 %31, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !159
  %35 = getelementptr inbounds %struct._PrimitiveInfo, ptr %32, i64 %34
  %36 = load double, ptr %0, align 8
  %37 = getelementptr inbounds { double, double }, ptr %0, i64 0, i32 1
  %38 = load double, ptr %37, align 8
  tail call fastcc void @TracePoint(ptr noundef nonnull %35, double %36, double %38) #38
  %39 = getelementptr inbounds %struct._PrimitiveInfo, ptr %32, i64 %34, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !159
  %41 = getelementptr inbounds %struct._PrimitiveInfo, ptr %35, i64 %40
  %42 = ptrtoint ptr %41 to i64
  %43 = ptrtoint ptr %0 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 40
  store i64 %45, ptr %21, align 8, !tbaa !159
  %46 = icmp sgt i64 %44, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %7
  %48 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %49 = tail call i64 @llvm.smax.i64(i64 %45, i64 1)
  %50 = load i32, ptr %48, align 8, !tbaa !157
  br label %51

51:                                               ; preds = %47, %51
  %52 = phi i64 [ 0, %47 ], [ %56, %51 ]
  %53 = phi ptr [ %41, %47 ], [ %55, %51 ]
  %54 = getelementptr inbounds %struct._PrimitiveInfo, ptr %53, i64 0, i32 2
  store i32 %50, ptr %54, align 8, !tbaa !157
  %55 = getelementptr inbounds %struct._PrimitiveInfo, ptr %53, i64 -1
  %56 = add nuw nsw i64 %52, 1
  %57 = icmp eq i64 %56, %49
  br i1 %57, label %58, label %51, !llvm.loop !173

58:                                               ; preds = %51, %7
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @TraceArc(ptr noundef %0, double %1, double %2, double %3, double %4, double %5, double %6) unnamed_addr #21 {
  %8 = fadd double %1, %3
  %9 = fmul double %8, 5.000000e-01
  %10 = fadd double %2, %4
  %11 = fmul double %10, 5.000000e-01
  %12 = fsub double %9, %1
  %13 = tail call double @llvm.fabs.f64(double %12)
  %14 = fsub double %11, %2
  %15 = tail call double @llvm.fabs.f64(double %14)
  tail call fastcc void @TraceEllipse(ptr noundef %0, double %9, double %11, double %13, double %15, double %5, double %6) #38
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @TraceEllipse(ptr noundef %0, double %1, double %2, double %3, double %4, double %5, double %6) unnamed_addr #21 {
  %8 = fcmp oeq double %3, 0.000000e+00
  %9 = fcmp oeq double %4, 0.000000e+00
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call fastcc void @TracePoint(ptr noundef %0, double %1, double %2) #38
  br label %80

12:                                               ; preds = %7
  %13 = tail call fastcc double @MagickMax(double noundef %3, double noundef %4) #38
  %14 = fdiv double 2.000000e+00, %13
  %15 = fcmp oge double %14, 0.000000e+00
  %16 = fcmp olt double %14, 0x3FD921FB54442D18
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = fdiv double 0x400921FB54442D18, %14
  %20 = fmul double %19, 5.000000e-01
  %21 = fadd double %20, 5.000000e-01
  %22 = fmul double %21, 4.000000e+00
  %23 = fdiv double 0x400921FB54442D18, %22
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi double [ %23, %18 ], [ 0x3FD921FB54442D18, %12 ]
  %26 = tail call fastcc double @DegreesToRadians(double noundef %5) #38
  %27 = fcmp olt double %6, %5
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %28
  %29 = phi double [ %30, %28 ], [ %6, %24 ]
  %30 = fadd double %29, 3.600000e+02
  %31 = fcmp olt double %30, %5
  br i1 %31, label %28, label %32, !llvm.loop !174

32:                                               ; preds = %28, %24
  %33 = phi double [ %6, %24 ], [ %30, %28 ]
  %34 = tail call fastcc double @DegreesToRadians(double noundef %33) #38
  %35 = fadd double %34, -1.000000e-15
  %36 = fcmp olt double %26, %35
  %37 = tail call fastcc double @DegreesToRadians(double noundef 3.600000e+02) #38
  br i1 %36, label %38, label %52

38:                                               ; preds = %32, %38
  %39 = phi ptr [ %49, %38 ], [ %0, %32 ]
  %40 = phi double [ %50, %38 ], [ %26, %32 ]
  %41 = tail call double @fmod(double noundef %40, double noundef %37) #35
  %42 = tail call double @cos(double noundef %41) #35
  %43 = tail call double @llvm.fmuladd.f64(double %42, double %3, double %1)
  %44 = tail call double @fmod(double noundef %40, double noundef %37) #35
  %45 = tail call double @sin(double noundef %44) #35
  %46 = tail call double @llvm.fmuladd.f64(double %45, double %4, double %2)
  tail call fastcc void @TracePoint(ptr noundef %39, double %43, double %46) #38
  %47 = getelementptr inbounds %struct._PrimitiveInfo, ptr %39, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !159
  %49 = getelementptr inbounds %struct._PrimitiveInfo, ptr %39, i64 %48
  %50 = fadd double %25, %40
  %51 = fcmp olt double %50, %35
  br i1 %51, label %38, label %52, !llvm.loop !175

52:                                               ; preds = %38, %32
  %53 = phi ptr [ %0, %32 ], [ %49, %38 ]
  %54 = tail call double @fmod(double noundef %35, double noundef %37) #35
  %55 = tail call double @cos(double noundef %54) #35
  %56 = tail call double @llvm.fmuladd.f64(double %55, double %3, double %1)
  %57 = tail call double @fmod(double noundef %35, double noundef %37) #35
  %58 = tail call double @sin(double noundef %57) #35
  %59 = tail call double @llvm.fmuladd.f64(double %58, double %4, double %2)
  tail call fastcc void @TracePoint(ptr noundef %53, double %56, double %59) #38
  %60 = getelementptr inbounds %struct._PrimitiveInfo, ptr %53, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !159
  %62 = getelementptr inbounds %struct._PrimitiveInfo, ptr %53, i64 %61
  %63 = ptrtoint ptr %62 to i64
  %64 = ptrtoint ptr %0 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 40
  %67 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 1
  store i64 %66, ptr %67, align 8, !tbaa !159
  %68 = icmp sgt i64 %65, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %71 = tail call i64 @llvm.smax.i64(i64 %66, i64 1)
  %72 = load i32, ptr %70, align 8, !tbaa !157
  br label %73

73:                                               ; preds = %69, %73
  %74 = phi i64 [ 0, %69 ], [ %78, %73 ]
  %75 = phi ptr [ %62, %69 ], [ %77, %73 ]
  %76 = getelementptr inbounds %struct._PrimitiveInfo, ptr %75, i64 0, i32 2
  store i32 %72, ptr %76, align 8, !tbaa !157
  %77 = getelementptr inbounds %struct._PrimitiveInfo, ptr %75, i64 -1
  %78 = add nuw nsw i64 %74, 1
  %79 = icmp eq i64 %78, %71
  br i1 %79, label %80, label %73, !llvm.loop !176

80:                                               ; preds = %73, %52, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @TraceCircle(ptr noundef %0, double %1, double %2, double %3, double %4) unnamed_addr #0 {
  %6 = fsub double %3, %1
  %7 = fsub double %4, %2
  %8 = tail call double @hypot(double noundef %6, double noundef %7) #35
  tail call fastcc void @TraceEllipse(ptr noundef %0, double %1, double %2, double %8, double %8, double 0.000000e+00, double 3.600000e+02) #38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @TraceBezier(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = icmp sgt i64 %1, 0
  br i1 %4, label %8, label %39

5:                                                ; preds = %18, %8
  %6 = phi i64 [ %9, %8 ], [ %36, %18 ]
  %7 = icmp eq i64 %11, %1
  br i1 %7, label %39, label %8, !llvm.loop !177

8:                                                ; preds = %2, %5
  %9 = phi i64 [ %6, %5 ], [ %1, %2 ]
  %10 = phi i64 [ %11, %5 ], [ 0, %2 ]
  %11 = add nuw nsw i64 %10, 1
  %12 = icmp slt i64 %11, %1
  br i1 %12, label %13, label %5

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %10
  %15 = load double, ptr %14, align 8, !tbaa !178
  %16 = getelementptr inbounds %struct._PointInfo, ptr %14, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !179
  br label %18

18:                                               ; preds = %13, %18
  %19 = phi i64 [ %9, %13 ], [ %36, %18 ]
  %20 = phi i64 [ %11, %13 ], [ %37, %18 ]
  %21 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %20
  %22 = load double, ptr %21, align 8, !tbaa !178
  %23 = fsub double %22, %15
  %24 = tail call double @llvm.fabs.f64(double %23)
  %25 = uitofp i64 %19 to double
  %26 = fcmp ogt double %24, %25
  %27 = fptoui double %24 to i64
  %28 = select i1 %26, i64 %27, i64 %19
  %29 = getelementptr inbounds %struct._PointInfo, ptr %21, i64 0, i32 1
  %30 = load double, ptr %29, align 8, !tbaa !179
  %31 = fsub double %30, %17
  %32 = tail call double @llvm.fabs.f64(double %31)
  %33 = uitofp i64 %28 to double
  %34 = fcmp ogt double %32, %33
  %35 = fptoui double %32 to i64
  %36 = select i1 %34, i64 %35, i64 %28
  %37 = add nuw nsw i64 %20, 1
  %38 = icmp slt i64 %37, %1
  br i1 %38, label %18, label %5, !llvm.loop !180

39:                                               ; preds = %5, %2
  %40 = phi i64 [ %1, %2 ], [ %6, %5 ]
  %41 = uitofp i64 %40 to double
  %42 = uitofp i64 %1 to double
  %43 = fdiv double %41, %42
  %44 = tail call fastcc double @MagickMin(double noundef %43, double noundef 2.000000e+02) #38
  %45 = fptoui double %44 to i64
  %46 = mul i64 %45, %1
  %47 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #39
  %48 = tail call ptr @AcquireQuantumMemory(i64 noundef %46, i64 noundef 16) #39
  %49 = icmp eq ptr %47, null
  %50 = icmp eq ptr %48, null
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  call void @GetExceptionInfo(ptr noundef nonnull %3) #35
  %53 = tail call ptr @__errno_location() #36
  %54 = load i32, ptr %53, align 4, !tbaa !6
  %55 = call ptr @GetExceptionMessage(i32 noundef %54) #35
  %56 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 5146, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %55) #35
  %57 = call ptr @DestroyString(ptr noundef %55) #35
  call void @CatchException(ptr noundef nonnull %3) #35
  %58 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #35
  call void @MagickCoreTerminus() #35
  call void @_exit(i32 noundef 1) #37
  unreachable

59:                                               ; preds = %39
  %60 = add i64 %1, -1
  %61 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa.struct !108
  %63 = getelementptr inbounds i8, ptr %61, i64 8
  %64 = load double, ptr %63, align 8, !tbaa.struct !162
  br i1 %4, label %71, label %65

65:                                               ; preds = %71, %59
  %66 = icmp sgt i64 %46, 0
  br i1 %66, label %67, label %119

67:                                               ; preds = %65
  %68 = fadd double %42, -1.000000e+00
  %69 = uitofp i64 %46 to double
  %70 = fdiv double 1.000000e+00, %69
  br label %78

71:                                               ; preds = %59, %71
  %72 = phi i64 [ %75, %71 ], [ 0, %59 ]
  %73 = tail call fastcc double @Permutate(i64 noundef %60, i64 noundef %72) #38
  %74 = getelementptr inbounds double, ptr %47, i64 %72
  store double %73, ptr %74, align 8, !tbaa !57
  %75 = add nuw nsw i64 %72, 1
  %76 = icmp eq i64 %75, %1
  br i1 %76, label %65, label %71, !llvm.loop !181

77:                                               ; preds = %101
  br i1 %66, label %107, label %119

78:                                               ; preds = %67, %101
  %79 = phi i64 [ 0, %67 ], [ %105, %101 ]
  %80 = phi double [ 0.000000e+00, %67 ], [ %104, %101 ]
  %81 = fsub double 1.000000e+00, %80
  %82 = tail call double @pow(double noundef %81, double noundef %68) #35
  br i1 %4, label %83, label %101

83:                                               ; preds = %78
  %84 = fdiv double %80, %81
  br label %85

85:                                               ; preds = %83, %85
  %86 = phi double [ %82, %83 ], [ %97, %85 ]
  %87 = phi i64 [ 0, %83 ], [ %99, %85 ]
  %88 = phi ptr [ %0, %83 ], [ %98, %85 ]
  %89 = phi <2 x double> [ zeroinitializer, %83 ], [ %96, %85 ]
  %90 = getelementptr inbounds double, ptr %47, i64 %87
  %91 = load double, ptr %90, align 8, !tbaa !57
  %92 = fmul double %86, %91
  %93 = load <2 x double>, ptr %88, align 8, !tbaa !57
  %94 = insertelement <2 x double> poison, double %92, i64 0
  %95 = shufflevector <2 x double> %94, <2 x double> poison, <2 x i32> zeroinitializer
  %96 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %95, <2 x double> %93, <2 x double> %89)
  %97 = fmul double %84, %86
  %98 = getelementptr inbounds %struct._PrimitiveInfo, ptr %88, i64 1
  %99 = add nuw nsw i64 %87, 1
  %100 = icmp eq i64 %99, %1
  br i1 %100, label %101, label %85, !llvm.loop !182

101:                                              ; preds = %85, %78
  %102 = phi <2 x double> [ zeroinitializer, %78 ], [ %96, %85 ]
  %103 = getelementptr inbounds %struct._PointInfo, ptr %48, i64 %79
  store <2 x double> %102, ptr %103, align 8
  %104 = fadd double %70, %80
  %105 = add nuw nsw i64 %79, 1
  %106 = icmp eq i64 %105, %46
  br i1 %106, label %77, label %78, !llvm.loop !183

107:                                              ; preds = %77, %107
  %108 = phi i64 [ %117, %107 ], [ 0, %77 ]
  %109 = phi ptr [ %116, %107 ], [ %0, %77 ]
  %110 = getelementptr inbounds %struct._PointInfo, ptr %48, i64 %108
  %111 = load double, ptr %110, align 8
  %112 = getelementptr inbounds { double, double }, ptr %110, i64 0, i32 1
  %113 = load double, ptr %112, align 8
  tail call fastcc void @TracePoint(ptr noundef %109, double %111, double %113) #38
  %114 = getelementptr inbounds %struct._PrimitiveInfo, ptr %109, i64 0, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !159
  %116 = getelementptr inbounds %struct._PrimitiveInfo, ptr %109, i64 %115
  %117 = add nuw nsw i64 %108, 1
  %118 = icmp eq i64 %117, %46
  br i1 %118, label %119, label %107, !llvm.loop !184

119:                                              ; preds = %107, %65, %77
  %120 = phi ptr [ %0, %77 ], [ %0, %65 ], [ %116, %107 ]
  tail call fastcc void @TracePoint(ptr noundef %120, double %62, double %64) #38
  %121 = getelementptr inbounds %struct._PrimitiveInfo, ptr %120, i64 0, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !159
  %123 = getelementptr inbounds %struct._PrimitiveInfo, ptr %120, i64 %122
  %124 = ptrtoint ptr %123 to i64
  %125 = ptrtoint ptr %0 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 40
  %128 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 1
  store i64 %127, ptr %128, align 8, !tbaa !159
  %129 = icmp sgt i64 %126, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %132 = tail call i64 @llvm.smax.i64(i64 %127, i64 1)
  %133 = load i32, ptr %131, align 8, !tbaa !157
  br label %134

134:                                              ; preds = %130, %134
  %135 = phi i64 [ 0, %130 ], [ %139, %134 ]
  %136 = phi ptr [ %123, %130 ], [ %138, %134 ]
  %137 = getelementptr inbounds %struct._PrimitiveInfo, ptr %136, i64 0, i32 2
  store i32 %133, ptr %137, align 8, !tbaa !157
  %138 = getelementptr inbounds %struct._PrimitiveInfo, ptr %136, i64 -1
  %139 = add nuw nsw i64 %135, 1
  %140 = icmp eq i64 %139, %132
  br i1 %140, label %141, label %134, !llvm.loop !185

141:                                              ; preds = %134, %119
  %142 = tail call ptr @RelinquishMagickMemory(ptr noundef %48) #35
  %143 = tail call ptr @RelinquishMagickMemory(ptr noundef %47) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @TracePath(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca ptr, align 8
  %5 = alloca [4 x %struct._PointInfo], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %6 = call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 16) #35
  %7 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !157
  store ptr %1, ptr %4, align 8, !tbaa !72
  %9 = load i8, ptr %1, align 1, !tbaa !130
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %509, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @__ctype_b_loc() #36
  %13 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 2
  %14 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 1
  %15 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 2, i32 1
  %16 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 3
  %17 = getelementptr inbounds i8, ptr %5, i64 8
  br label %18

18:                                               ; preds = %11, %491
  %19 = phi i8 [ %9, %11 ], [ %501, %491 ]
  %20 = phi ptr [ %1, %11 ], [ %500, %491 ]
  %21 = phi ptr [ %0, %11 ], [ %499, %491 ]
  %22 = phi i32 [ 0, %11 ], [ %52, %491 ]
  %23 = phi i64 [ 0, %11 ], [ %498, %491 ]
  %24 = phi i64 [ 0, %11 ], [ %497, %491 ]
  %25 = phi ptr [ %0, %11 ], [ %496, %491 ]
  %26 = phi double [ 0.000000e+00, %11 ], [ %495, %491 ]
  %27 = phi double [ 0.000000e+00, %11 ], [ %494, %491 ]
  %28 = phi double [ 0.000000e+00, %11 ], [ %493, %491 ]
  %29 = phi double [ 0.000000e+00, %11 ], [ %492, %491 ]
  %30 = load ptr, ptr %12, align 8, !tbaa !72
  %31 = zext i8 %19 to i64
  %32 = getelementptr inbounds i16, ptr %30, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !113
  %34 = and i16 %33, 8192
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %18, %36
  %37 = phi ptr [ %38, %36 ], [ %20, %18 ]
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %38, ptr %4, align 8, !tbaa !72
  %39 = load ptr, ptr %12, align 8, !tbaa !72
  %40 = load i8, ptr %38, align 1, !tbaa !130
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i16, ptr %39, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !113
  %44 = and i16 %43, 8192
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %36, !llvm.loop !186

46:                                               ; preds = %36
  %47 = icmp eq i8 %40, 0
  br i1 %47, label %503, label %48

48:                                               ; preds = %18, %46
  %49 = phi ptr [ %38, %46 ], [ %20, %18 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %50, ptr %4, align 8, !tbaa !72
  %51 = load i8, ptr %49, align 1, !tbaa !130
  %52 = sext i8 %51 to i32
  switch i8 %51, label %481 [
    i8 97, label %53
    i8 65, label %53
    i8 99, label %147
    i8 67, label %147
    i8 72, label %190
    i8 104, label %190
    i8 108, label %210
    i8 76, label %210
    i8 77, label %240
    i8 109, label %240
    i8 113, label %294
    i8 81, label %294
    i8 115, label %345
    i8 83, label %345
    i8 116, label %405
    i8 84, label %405
    i8 118, label %450
    i8 86, label %450
    i8 122, label %470
    i8 90, label %470
  ]

53:                                               ; preds = %48, %48
  %54 = icmp eq i8 %51, 65
  br label %55

55:                                               ; preds = %143, %53
  %56 = phi double [ %29, %53 ], [ %115, %143 ]
  %57 = phi double [ %28, %53 ], [ %113, %143 ]
  %58 = phi ptr [ %25, %53 ], [ %118, %143 ]
  %59 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %59, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %60 = load i8, ptr %3, align 16, !tbaa !130
  %61 = icmp eq i8 %60, 44
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %63, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %64

64:                                               ; preds = %62, %55
  %65 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %66 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %66, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %67 = load i8, ptr %3, align 16, !tbaa !130
  %68 = icmp eq i8 %67, 44
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %70, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %71

71:                                               ; preds = %69, %64
  %72 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %73 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %73, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %74 = load i8, ptr %3, align 16, !tbaa !130
  %75 = icmp eq i8 %74, 44
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %77, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %78

78:                                               ; preds = %76, %71
  %79 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %80 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %80, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %81 = load i8, ptr %3, align 16, !tbaa !130
  %82 = icmp eq i8 %81, 44
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %84, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %85

85:                                               ; preds = %83, %78
  %86 = call fastcc i64 @StringToLong(ptr noundef nonnull %3) #38
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %89, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %90 = load i8, ptr %3, align 16, !tbaa !130
  %91 = icmp eq i8 %90, 44
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %93, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %94

94:                                               ; preds = %92, %85
  %95 = call fastcc i64 @StringToLong(ptr noundef nonnull %3) #38
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %98, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %99 = load i8, ptr %3, align 16, !tbaa !130
  %100 = icmp eq i8 %99, 44
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %102, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %103

103:                                              ; preds = %101, %94
  %104 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %105 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %105, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %106 = load i8, ptr %3, align 16, !tbaa !130
  %107 = icmp eq i8 %106, 44
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %109, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %110

110:                                              ; preds = %108, %103
  %111 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %112 = select i1 %54, double -0.000000e+00, double %57
  %113 = fadd double %112, %104
  %114 = select i1 %54, double -0.000000e+00, double %56
  %115 = fadd double %114, %111
  call fastcc void @TraceArcPath(ptr noundef %58, double %57, double %56, double %113, double %115, double %65, double %72, double noundef %79, i32 noundef %88, i32 noundef %97) #38
  %116 = getelementptr inbounds %struct._PrimitiveInfo, ptr %58, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !159
  %118 = getelementptr inbounds %struct._PrimitiveInfo, ptr %58, i64 %117
  %119 = load ptr, ptr %12, align 8, !tbaa !72
  %120 = load ptr, ptr %4, align 8, !tbaa !72
  %121 = load i8, ptr %120, align 1, !tbaa !130
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds i16, ptr %119, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !113
  %125 = and i16 %124, 8192
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %110, %127
  %128 = phi ptr [ %129, %127 ], [ %120, %110 ]
  %129 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %129, ptr %4, align 8, !tbaa !72
  %130 = load ptr, ptr %12, align 8, !tbaa !72
  %131 = load i8, ptr %129, align 1, !tbaa !130
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds i16, ptr %130, i64 %132
  %134 = load i16, ptr %133, align 2, !tbaa !113
  %135 = and i16 %134, 8192
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %127, !llvm.loop !187

137:                                              ; preds = %127, %110
  %138 = phi ptr [ %120, %110 ], [ %129, %127 ]
  %139 = phi i8 [ %121, %110 ], [ %131, %127 ]
  %140 = icmp eq i8 %139, 44
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %142, ptr %4, align 8, !tbaa !72
  br label %143

143:                                              ; preds = %137, %141
  %144 = phi ptr [ %138, %137 ], [ %142, %141 ]
  %145 = call fastcc i32 @IsPoint(ptr noundef nonnull %144) #38, !range !129
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %491, label %55, !llvm.loop !188

147:                                              ; preds = %48, %48
  %148 = icmp eq i8 %51, 67
  br label %149

149:                                              ; preds = %183, %147
  %150 = phi double [ %29, %147 ], [ %172, %183 ]
  %151 = phi double [ %28, %147 ], [ %171, %183 ]
  %152 = phi ptr [ %25, %147 ], [ %186, %183 ]
  store double %151, ptr %5, align 16, !tbaa.struct !108
  store double %150, ptr %17, align 8, !tbaa.struct !162
  %153 = select i1 %148, double -0.000000e+00, double %151
  %154 = select i1 %148, double -0.000000e+00, double %150
  br label %155

155:                                              ; preds = %149, %169
  %156 = phi i64 [ 1, %149 ], [ %175, %169 ]
  %157 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %157, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %158 = load i8, ptr %3, align 16, !tbaa !130
  %159 = icmp eq i8 %158, 44
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %161, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %162

162:                                              ; preds = %160, %155
  %163 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %164 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %164, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %165 = load i8, ptr %3, align 16, !tbaa !130
  %166 = icmp eq i8 %165, 44
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %168, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %169

169:                                              ; preds = %167, %162
  %170 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %171 = fadd double %153, %163
  %172 = fadd double %154, %170
  %173 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 %156
  store double %171, ptr %173, align 16, !tbaa.struct !108
  %174 = getelementptr inbounds i8, ptr %173, i64 8
  store double %172, ptr %174, align 8, !tbaa.struct !162
  %175 = add nuw nsw i64 %156, 1
  %176 = icmp eq i64 %175, 4
  br i1 %176, label %177, label %155, !llvm.loop !189

177:                                              ; preds = %169, %177
  %178 = phi i64 [ %181, %177 ], [ 0, %169 ]
  %179 = getelementptr inbounds %struct._PrimitiveInfo, ptr %152, i64 %178
  %180 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 %178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %179, ptr noundef nonnull align 16 dereferenceable(16) %180, i64 16, i1 false), !tbaa.struct !108
  %181 = add nuw nsw i64 %178, 1
  %182 = icmp eq i64 %181, 4
  br i1 %182, label %183, label %177, !llvm.loop !190

183:                                              ; preds = %177
  call fastcc void @TraceBezier(ptr noundef nonnull %152, i64 noundef 4) #38
  %184 = getelementptr inbounds %struct._PrimitiveInfo, ptr %152, i64 0, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !159
  %186 = getelementptr inbounds %struct._PrimitiveInfo, ptr %152, i64 %185
  %187 = load ptr, ptr %4, align 8, !tbaa !72
  %188 = call fastcc i32 @IsPoint(ptr noundef %187) #38, !range !129
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %491, label %149, !llvm.loop !191

190:                                              ; preds = %48, %48
  %191 = icmp eq i8 %51, 72
  br label %192

192:                                              ; preds = %200, %190
  %193 = phi double [ %28, %190 ], [ %203, %200 ]
  %194 = phi ptr [ %25, %190 ], [ %206, %200 ]
  %195 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %195, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %196 = load i8, ptr %3, align 16, !tbaa !130
  %197 = icmp eq i8 %196, 44
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %199, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %200

200:                                              ; preds = %198, %192
  %201 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %202 = select i1 %191, double -0.000000e+00, double %193
  %203 = fadd double %202, %201
  call fastcc void @TracePoint(ptr noundef %194, double %203, double %29) #38
  %204 = getelementptr inbounds %struct._PrimitiveInfo, ptr %194, i64 0, i32 1
  %205 = load i64, ptr %204, align 8, !tbaa !159
  %206 = getelementptr inbounds %struct._PrimitiveInfo, ptr %194, i64 %205
  %207 = load ptr, ptr %4, align 8, !tbaa !72
  %208 = call fastcc i32 @IsPoint(ptr noundef %207) #38, !range !129
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %491, label %192, !llvm.loop !192

210:                                              ; preds = %48, %48
  %211 = icmp eq i8 %51, 76
  br label %212

212:                                              ; preds = %228, %210
  %213 = phi double [ %29, %210 ], [ %233, %228 ]
  %214 = phi double [ %28, %210 ], [ %231, %228 ]
  %215 = phi ptr [ %25, %210 ], [ %236, %228 ]
  %216 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %216, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %217 = load i8, ptr %3, align 16, !tbaa !130
  %218 = icmp eq i8 %217, 44
  br i1 %218, label %219, label %221

219:                                              ; preds = %212
  %220 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %220, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %221

221:                                              ; preds = %219, %212
  %222 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %223 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %223, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %224 = load i8, ptr %3, align 16, !tbaa !130
  %225 = icmp eq i8 %224, 44
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %227, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %228

228:                                              ; preds = %226, %221
  %229 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %230 = select i1 %211, double -0.000000e+00, double %214
  %231 = fadd double %230, %222
  %232 = select i1 %211, double -0.000000e+00, double %213
  %233 = fadd double %232, %229
  call fastcc void @TracePoint(ptr noundef %215, double %231, double %233) #38
  %234 = getelementptr inbounds %struct._PrimitiveInfo, ptr %215, i64 0, i32 1
  %235 = load i64, ptr %234, align 8, !tbaa !159
  %236 = getelementptr inbounds %struct._PrimitiveInfo, ptr %215, i64 %235
  %237 = load ptr, ptr %4, align 8, !tbaa !72
  %238 = call fastcc i32 @IsPoint(ptr noundef %237) #38, !range !129
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %491, label %212, !llvm.loop !193

240:                                              ; preds = %48, %48
  %241 = icmp eq ptr %25, %21
  br i1 %241, label %249, label %242

242:                                              ; preds = %240
  %243 = ptrtoint ptr %25 to i64
  %244 = ptrtoint ptr %21 to i64
  %245 = sub i64 %243, %244
  %246 = sdiv exact i64 %245, 40
  %247 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 0, i32 1
  store i64 %246, ptr %247, align 8, !tbaa !159
  %248 = add i64 %246, %24
  br label %249

249:                                              ; preds = %242, %240
  %250 = phi i64 [ %248, %242 ], [ %24, %240 ]
  %251 = phi ptr [ %25, %242 ], [ %21, %240 ]
  %252 = icmp eq i8 %51, 77
  br label %253

253:                                              ; preds = %289, %249
  %254 = phi double [ %29, %249 ], [ %277, %289 ]
  %255 = phi double [ %28, %249 ], [ %275, %289 ]
  %256 = phi double [ %27, %249 ], [ %279, %289 ]
  %257 = phi double [ %26, %249 ], [ %280, %289 ]
  %258 = phi ptr [ %25, %249 ], [ %290, %289 ]
  %259 = phi i64 [ 0, %249 ], [ %281, %289 ]
  %260 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %260, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %261 = load i8, ptr %3, align 16, !tbaa !130
  %262 = icmp eq i8 %261, 44
  br i1 %262, label %263, label %265

263:                                              ; preds = %253
  %264 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %264, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %265

265:                                              ; preds = %263, %253
  %266 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %267 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %267, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %268 = load i8, ptr %3, align 16, !tbaa !130
  %269 = icmp eq i8 %268, 44
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %271, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %272

272:                                              ; preds = %270, %265
  %273 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %274 = select i1 %252, double -0.000000e+00, double %255
  %275 = fadd double %274, %266
  %276 = select i1 %252, double -0.000000e+00, double %254
  %277 = fadd double %276, %273
  %278 = icmp eq i64 %259, 0
  %279 = select i1 %278, double %277, double %256
  %280 = select i1 %278, double %275, double %257
  %281 = add nuw nsw i64 %259, 1
  call fastcc void @TracePoint(ptr noundef %258, double %275, double %277) #38
  %282 = getelementptr inbounds %struct._PrimitiveInfo, ptr %258, i64 0, i32 1
  %283 = load i64, ptr %282, align 8, !tbaa !159
  %284 = getelementptr inbounds %struct._PrimitiveInfo, ptr %258, i64 %283
  br i1 %252, label %285, label %289

285:                                              ; preds = %272
  call fastcc void @TracePoint(ptr noundef nonnull %284, double %275, double %277) #38
  %286 = getelementptr inbounds %struct._PrimitiveInfo, ptr %258, i64 %283, i32 1
  %287 = load i64, ptr %286, align 8, !tbaa !159
  %288 = getelementptr inbounds %struct._PrimitiveInfo, ptr %284, i64 %287
  br label %289

289:                                              ; preds = %272, %285
  %290 = phi ptr [ %288, %285 ], [ %284, %272 ]
  %291 = load ptr, ptr %4, align 8, !tbaa !72
  %292 = call fastcc i32 @IsPoint(ptr noundef %291) #38, !range !129
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %491, label %253, !llvm.loop !194

294:                                              ; preds = %48, %48
  %295 = icmp eq i8 %51, 81
  br label %296

296:                                              ; preds = %338, %294
  %297 = phi double [ %29, %294 ], [ %327, %338 ]
  %298 = phi double [ %28, %294 ], [ %326, %338 ]
  %299 = phi ptr [ %25, %294 ], [ %341, %338 ]
  store double %298, ptr %5, align 16, !tbaa.struct !108
  store double %297, ptr %17, align 8, !tbaa.struct !162
  %300 = select i1 %295, double -0.000000e+00, double %298
  %301 = select i1 %295, double -0.000000e+00, double %297
  %302 = load ptr, ptr %4, align 8, !tbaa !72
  br label %303

303:                                              ; preds = %296, %324
  %304 = phi ptr [ %302, %296 ], [ %325, %324 ]
  %305 = phi i64 [ 1, %296 ], [ %330, %324 ]
  call void @GetMagickToken(ptr noundef %304, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %306 = load i8, ptr %3, align 16, !tbaa !130
  %307 = icmp eq i8 %306, 44
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %309, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %310

310:                                              ; preds = %308, %303
  %311 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %312 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %312, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %313 = load i8, ptr %3, align 16, !tbaa !130
  %314 = icmp eq i8 %313, 44
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %316, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %317

317:                                              ; preds = %315, %310
  %318 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %319 = load ptr, ptr %4, align 8, !tbaa !72
  %320 = load i8, ptr %319, align 1, !tbaa !130
  %321 = icmp eq i8 %320, 44
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = getelementptr inbounds i8, ptr %319, i64 1
  store ptr %323, ptr %4, align 8, !tbaa !72
  br label %324

324:                                              ; preds = %322, %317
  %325 = phi ptr [ %323, %322 ], [ %319, %317 ]
  %326 = fadd double %300, %311
  %327 = fadd double %301, %318
  %328 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 %305
  store double %326, ptr %328, align 16, !tbaa.struct !108
  %329 = getelementptr inbounds i8, ptr %328, i64 8
  store double %327, ptr %329, align 8, !tbaa.struct !162
  %330 = add nuw nsw i64 %305, 1
  %331 = icmp eq i64 %330, 3
  br i1 %331, label %332, label %303, !llvm.loop !195

332:                                              ; preds = %324, %332
  %333 = phi i64 [ %336, %332 ], [ 0, %324 ]
  %334 = getelementptr inbounds %struct._PrimitiveInfo, ptr %299, i64 %333
  %335 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 %333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %334, ptr noundef nonnull align 16 dereferenceable(16) %335, i64 16, i1 false), !tbaa.struct !108
  %336 = add nuw nsw i64 %333, 1
  %337 = icmp eq i64 %336, 3
  br i1 %337, label %338, label %332, !llvm.loop !196

338:                                              ; preds = %332
  call fastcc void @TraceBezier(ptr noundef nonnull %299, i64 noundef 3) #38
  %339 = getelementptr inbounds %struct._PrimitiveInfo, ptr %299, i64 0, i32 1
  %340 = load i64, ptr %339, align 8, !tbaa !159
  %341 = getelementptr inbounds %struct._PrimitiveInfo, ptr %299, i64 %340
  %342 = load ptr, ptr %4, align 8, !tbaa !72
  %343 = call fastcc i32 @IsPoint(ptr noundef %342) #38, !range !129
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %491, label %296, !llvm.loop !197

345:                                              ; preds = %48, %48
  %346 = icmp eq i8 %51, 83
  br label %347

347:                                              ; preds = %398, %345
  %348 = phi double [ %29, %345 ], [ %382, %398 ]
  %349 = phi double [ %28, %345 ], [ %381, %398 ]
  %350 = phi ptr [ %25, %345 ], [ %401, %398 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !108
  %351 = load <2 x double>, ptr %16, align 16, !tbaa !57
  %352 = load <2 x double>, ptr %13, align 16, !tbaa !57
  %353 = fneg <2 x double> %352
  %354 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %351, <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double> %353)
  store <2 x double> %354, ptr %14, align 16, !tbaa !57
  %355 = select i1 %346, double -0.000000e+00, double %349
  %356 = select i1 %346, double -0.000000e+00, double %348
  %357 = load ptr, ptr %4, align 8, !tbaa !72
  br label %358

358:                                              ; preds = %347, %379
  %359 = phi ptr [ %357, %347 ], [ %380, %379 ]
  %360 = phi i64 [ 2, %347 ], [ %385, %379 ]
  call void @GetMagickToken(ptr noundef %359, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %361 = load i8, ptr %3, align 16, !tbaa !130
  %362 = icmp eq i8 %361, 44
  br i1 %362, label %363, label %365

363:                                              ; preds = %358
  %364 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %364, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %365

365:                                              ; preds = %363, %358
  %366 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %367 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %367, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %368 = load i8, ptr %3, align 16, !tbaa !130
  %369 = icmp eq i8 %368, 44
  br i1 %369, label %370, label %372

370:                                              ; preds = %365
  %371 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %371, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %372

372:                                              ; preds = %370, %365
  %373 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %374 = load ptr, ptr %4, align 8, !tbaa !72
  %375 = load i8, ptr %374, align 1, !tbaa !130
  %376 = icmp eq i8 %375, 44
  br i1 %376, label %377, label %379

377:                                              ; preds = %372
  %378 = getelementptr inbounds i8, ptr %374, i64 1
  store ptr %378, ptr %4, align 8, !tbaa !72
  br label %379

379:                                              ; preds = %377, %372
  %380 = phi ptr [ %378, %377 ], [ %374, %372 ]
  %381 = fadd double %355, %366
  %382 = fadd double %356, %373
  %383 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 %360
  store double %381, ptr %383, align 16, !tbaa.struct !108
  %384 = getelementptr inbounds i8, ptr %383, i64 8
  store double %382, ptr %384, align 8, !tbaa.struct !162
  %385 = add nuw nsw i64 %360, 1
  %386 = icmp eq i64 %385, 4
  br i1 %386, label %387, label %358, !llvm.loop !198

387:                                              ; preds = %379
  %388 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.95, i32 %22, i64 5)
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %391

390:                                              ; preds = %387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !108
  br label %391

391:                                              ; preds = %390, %387
  br label %392

392:                                              ; preds = %391, %392
  %393 = phi i64 [ %396, %392 ], [ 0, %391 ]
  %394 = getelementptr inbounds %struct._PrimitiveInfo, ptr %350, i64 %393
  %395 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 %393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %394, ptr noundef nonnull align 16 dereferenceable(16) %395, i64 16, i1 false), !tbaa.struct !108
  %396 = add nuw nsw i64 %393, 1
  %397 = icmp eq i64 %396, 4
  br i1 %397, label %398, label %392, !llvm.loop !199

398:                                              ; preds = %392
  call fastcc void @TraceBezier(ptr noundef nonnull %350, i64 noundef 4) #38
  %399 = getelementptr inbounds %struct._PrimitiveInfo, ptr %350, i64 0, i32 1
  %400 = load i64, ptr %399, align 8, !tbaa !159
  %401 = getelementptr inbounds %struct._PrimitiveInfo, ptr %350, i64 %400
  %402 = load ptr, ptr %4, align 8, !tbaa !72
  %403 = call fastcc i32 @IsPoint(ptr noundef %402) #38, !range !129
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %491, label %347, !llvm.loop !200

405:                                              ; preds = %48, %48
  %406 = icmp eq i8 %51, 84
  br label %407

407:                                              ; preds = %443, %405
  %408 = phi double [ %29, %405 ], [ %432, %443 ]
  %409 = phi double [ %28, %405 ], [ %431, %443 ]
  %410 = phi ptr [ %25, %405 ], [ %446, %443 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !108
  %411 = load <2 x double>, ptr %13, align 16, !tbaa !57
  %412 = load <2 x double>, ptr %14, align 16, !tbaa !57
  %413 = fneg <2 x double> %412
  %414 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %411, <2 x double> <double 2.000000e+00, double 2.000000e+00>, <2 x double> %413)
  store <2 x double> %414, ptr %14, align 16, !tbaa !57
  %415 = select i1 %406, double -0.000000e+00, double %409
  %416 = select i1 %406, double -0.000000e+00, double %408
  %417 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %417, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %418 = load i8, ptr %3, align 16, !tbaa !130
  %419 = icmp eq i8 %418, 44
  br i1 %419, label %420, label %422

420:                                              ; preds = %407
  %421 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %421, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %422

422:                                              ; preds = %420, %407
  %423 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %424 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %424, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %425 = load i8, ptr %3, align 16, !tbaa !130
  %426 = icmp eq i8 %425, 44
  br i1 %426, label %427, label %429

427:                                              ; preds = %422
  %428 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %428, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %429

429:                                              ; preds = %427, %422
  %430 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %431 = fadd double %415, %423
  %432 = fadd double %416, %430
  store double %431, ptr %13, align 16, !tbaa.struct !108
  store double %432, ptr %15, align 8, !tbaa.struct !162
  %433 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.96, i32 %22, i64 5)
  %434 = icmp eq ptr %433, null
  br i1 %434, label %435, label %436

435:                                              ; preds = %429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !108
  br label %436

436:                                              ; preds = %435, %429
  br label %437

437:                                              ; preds = %436, %437
  %438 = phi i64 [ %441, %437 ], [ 0, %436 ]
  %439 = getelementptr inbounds %struct._PrimitiveInfo, ptr %410, i64 %438
  %440 = getelementptr inbounds [4 x %struct._PointInfo], ptr %5, i64 0, i64 %438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %439, ptr noundef nonnull align 16 dereferenceable(16) %440, i64 16, i1 false), !tbaa.struct !108
  %441 = add nuw nsw i64 %438, 1
  %442 = icmp eq i64 %441, 3
  br i1 %442, label %443, label %437, !llvm.loop !201

443:                                              ; preds = %437
  call fastcc void @TraceBezier(ptr noundef nonnull %410, i64 noundef 3) #38
  %444 = getelementptr inbounds %struct._PrimitiveInfo, ptr %410, i64 0, i32 1
  %445 = load i64, ptr %444, align 8, !tbaa !159
  %446 = getelementptr inbounds %struct._PrimitiveInfo, ptr %410, i64 %445
  %447 = load ptr, ptr %4, align 8, !tbaa !72
  %448 = call fastcc i32 @IsPoint(ptr noundef %447) #38, !range !129
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %491, label %407, !llvm.loop !202

450:                                              ; preds = %48, %48
  %451 = icmp eq i8 %51, 86
  br label %452

452:                                              ; preds = %460, %450
  %453 = phi double [ %29, %450 ], [ %463, %460 ]
  %454 = phi ptr [ %25, %450 ], [ %466, %460 ]
  %455 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %455, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  %456 = load i8, ptr %3, align 16, !tbaa !130
  %457 = icmp eq i8 %456, 44
  br i1 %457, label %458, label %460

458:                                              ; preds = %452
  %459 = load ptr, ptr %4, align 8, !tbaa !72
  call void @GetMagickToken(ptr noundef %459, ptr noundef nonnull %4, ptr noundef nonnull %3) #35
  br label %460

460:                                              ; preds = %458, %452
  %461 = call fastcc double @StringToDouble(ptr noundef nonnull %3, ptr noundef null) #38
  %462 = select i1 %451, double -0.000000e+00, double %453
  %463 = fadd double %462, %461
  call fastcc void @TracePoint(ptr noundef %454, double %28, double %463) #38
  %464 = getelementptr inbounds %struct._PrimitiveInfo, ptr %454, i64 0, i32 1
  %465 = load i64, ptr %464, align 8, !tbaa !159
  %466 = getelementptr inbounds %struct._PrimitiveInfo, ptr %454, i64 %465
  %467 = load ptr, ptr %4, align 8, !tbaa !72
  %468 = call fastcc i32 @IsPoint(ptr noundef %467) #38, !range !129
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %491, label %452, !llvm.loop !203

470:                                              ; preds = %48, %48
  call fastcc void @TracePoint(ptr noundef %25, double %26, double %27) #38
  %471 = getelementptr inbounds %struct._PrimitiveInfo, ptr %25, i64 0, i32 1
  %472 = load i64, ptr %471, align 8, !tbaa !159
  %473 = getelementptr inbounds %struct._PrimitiveInfo, ptr %25, i64 %472
  %474 = ptrtoint ptr %473 to i64
  %475 = ptrtoint ptr %21 to i64
  %476 = sub i64 %474, %475
  %477 = sdiv exact i64 %476, 40
  %478 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 0, i32 1
  store i64 %477, ptr %478, align 8, !tbaa !159
  %479 = add i64 %477, %24
  %480 = add i64 %23, 1
  br label %491

481:                                              ; preds = %48
  %482 = load ptr, ptr %12, align 8, !tbaa !72
  %483 = zext i8 %51 to i64
  %484 = getelementptr inbounds i16, ptr %482, i64 %483
  %485 = load i16, ptr %484, align 2, !tbaa !113
  %486 = and i16 %485, 1024
  %487 = icmp eq i16 %486, 0
  br i1 %487, label %491, label %488

488:                                              ; preds = %481
  %489 = load ptr, ptr @stderr, align 8, !tbaa !72
  %490 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %489, ptr noundef nonnull @.str.97, i32 noundef %52) #35
  br label %491

491:                                              ; preds = %460, %443, %398, %338, %289, %228, %200, %183, %143, %481, %488, %470
  %492 = phi double [ %29, %488 ], [ %29, %481 ], [ %27, %470 ], [ %115, %143 ], [ %172, %183 ], [ %29, %200 ], [ %233, %228 ], [ %277, %289 ], [ %327, %338 ], [ %382, %398 ], [ %432, %443 ], [ %463, %460 ]
  %493 = phi double [ %28, %488 ], [ %28, %481 ], [ %26, %470 ], [ %113, %143 ], [ %171, %183 ], [ %203, %200 ], [ %231, %228 ], [ %275, %289 ], [ %326, %338 ], [ %381, %398 ], [ %431, %443 ], [ %28, %460 ]
  %494 = phi double [ %27, %488 ], [ %27, %481 ], [ %27, %470 ], [ %27, %143 ], [ %27, %183 ], [ %27, %200 ], [ %27, %228 ], [ %279, %289 ], [ %27, %338 ], [ %27, %398 ], [ %27, %443 ], [ %27, %460 ]
  %495 = phi double [ %26, %488 ], [ %26, %481 ], [ %26, %470 ], [ %26, %143 ], [ %26, %183 ], [ %26, %200 ], [ %26, %228 ], [ %280, %289 ], [ %26, %338 ], [ %26, %398 ], [ %26, %443 ], [ %26, %460 ]
  %496 = phi ptr [ %25, %488 ], [ %25, %481 ], [ %473, %470 ], [ %118, %143 ], [ %186, %183 ], [ %206, %200 ], [ %236, %228 ], [ %290, %289 ], [ %341, %338 ], [ %401, %398 ], [ %446, %443 ], [ %466, %460 ]
  %497 = phi i64 [ %24, %488 ], [ %24, %481 ], [ %479, %470 ], [ %24, %143 ], [ %24, %183 ], [ %24, %200 ], [ %24, %228 ], [ %250, %289 ], [ %24, %338 ], [ %24, %398 ], [ %24, %443 ], [ %24, %460 ]
  %498 = phi i64 [ %23, %488 ], [ %23, %481 ], [ %480, %470 ], [ %23, %143 ], [ %23, %183 ], [ %23, %200 ], [ %23, %228 ], [ %23, %289 ], [ %23, %338 ], [ %23, %398 ], [ %23, %443 ], [ %23, %460 ]
  %499 = phi ptr [ %21, %488 ], [ %21, %481 ], [ %473, %470 ], [ %21, %143 ], [ %21, %183 ], [ %21, %200 ], [ %21, %228 ], [ %251, %289 ], [ %21, %338 ], [ %21, %398 ], [ %21, %443 ], [ %21, %460 ]
  %500 = load ptr, ptr %4, align 8, !tbaa !72
  %501 = load i8, ptr %500, align 1, !tbaa !130
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %503, label %18, !llvm.loop !204

503:                                              ; preds = %46, %491
  %504 = phi ptr [ %496, %491 ], [ %25, %46 ]
  %505 = phi i64 [ %497, %491 ], [ %24, %46 ]
  %506 = phi i64 [ %498, %491 ], [ %23, %46 ]
  %507 = phi ptr [ %499, %491 ], [ %21, %46 ]
  %508 = icmp ugt i64 %506, 1
  br label %509

509:                                              ; preds = %503, %2
  %510 = phi ptr [ %0, %2 ], [ %504, %503 ]
  %511 = phi i64 [ 0, %2 ], [ %505, %503 ]
  %512 = phi i1 [ false, %2 ], [ %508, %503 ]
  %513 = phi ptr [ %0, %2 ], [ %507, %503 ]
  %514 = ptrtoint ptr %510 to i64
  %515 = ptrtoint ptr %513 to i64
  %516 = sub i64 %514, %515
  %517 = sdiv exact i64 %516, 40
  %518 = getelementptr inbounds %struct._PrimitiveInfo, ptr %513, i64 0, i32 1
  store i64 %517, ptr %518, align 8, !tbaa !159
  %519 = add i64 %517, %511
  %520 = icmp sgt i64 %519, 0
  br i1 %520, label %521, label %531

521:                                              ; preds = %509, %528
  %522 = phi i64 [ %529, %528 ], [ 0, %509 ]
  %523 = phi ptr [ %524, %528 ], [ %510, %509 ]
  %524 = getelementptr inbounds %struct._PrimitiveInfo, ptr %523, i64 -1
  %525 = getelementptr %struct._PrimitiveInfo, ptr %523, i64 -1, i32 2
  store i32 %8, ptr %525, align 8, !tbaa !157
  br i1 %512, label %526, label %528

526:                                              ; preds = %521
  %527 = getelementptr %struct._PrimitiveInfo, ptr %523, i64 -1, i32 3
  store i32 4, ptr %527, align 4, !tbaa !160
  br label %528

528:                                              ; preds = %521, %526
  %529 = add nuw nsw i64 %522, 1
  %530 = icmp eq i64 %529, %519
  br i1 %530, label %531, label %521, !llvm.loop !205

531:                                              ; preds = %528, %509
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #12
  ret i64 %519
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawPrimitive(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._PixelPacket, align 2
  %5 = alloca %struct._PixelPacket, align 2
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._PixelPacket, align 2
  %8 = alloca %struct._PixelPacket, align 2
  %9 = alloca %struct._PixelPacket, align 2
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._PixelPacket, align 2
  %12 = alloca [4096 x i8], align 16
  %13 = alloca %struct._AffineMatrix, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca ptr, align 8
  %16 = alloca %struct._RectangleInfo, align 8
  %17 = alloca [4096 x i8], align 16
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %19 = load i32, ptr %18, align 8, !tbaa !80
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %3
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4221, ptr noundef nonnull @.str.101) #35
  %23 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %24 = load double, ptr %23, align 8, !tbaa !142
  %25 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 1
  %26 = load double, ptr %25, align 8, !tbaa !145
  %27 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 2
  %28 = load double, ptr %27, align 8, !tbaa !143
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 3
  %30 = load double, ptr %29, align 8, !tbaa !146
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 4
  %32 = load double, ptr %31, align 8, !tbaa !144
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 5
  %34 = load double, ptr %33, align 8, !tbaa !147
  %35 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4223, ptr noundef nonnull @.str.102, double noundef %24, double noundef %26, double noundef %28, double noundef %30, double noundef %32, double noundef %34) #35
  br label %36

36:                                               ; preds = %21, %3
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !114
  %39 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %38) #38, !range !129
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %43 = tail call fastcc i32 @IsPixelGray(ptr noundef nonnull %42) #38, !range !129
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6
  %47 = tail call fastcc i32 @IsPixelGray(ptr noundef nonnull %46) #38, !range !129
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41
  %50 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #35
  br label %51

51:                                               ; preds = %49, %45, %36
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %53 = load double, ptr %2, align 8, !tbaa !178
  %54 = fadd double %53, -5.000000e-01
  %55 = tail call double @llvm.ceil.f64(double %54)
  %56 = fptosi double %55 to i64
  %57 = getelementptr inbounds %struct._PointInfo, ptr %2, i64 0, i32 1
  %58 = load double, ptr %57, align 8, !tbaa !179
  %59 = fadd double %58, -5.000000e-01
  %60 = tail call double @llvm.ceil.f64(double %59)
  %61 = fptosi double %60 to i64
  %62 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %52) #35
  %63 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !157
  switch i32 %64, label %412 [
    i32 1, label %65
    i32 11, label %91
    i32 12, label %180
    i32 13, label %289
    i32 14, label %308
  ]

65:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %66 = icmp slt i64 %61, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %69 = load i64, ptr %68, align 8, !tbaa !106
  %70 = icmp sle i64 %69, %61
  %71 = icmp slt i64 %56, 0
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %89, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %75 = load i64, ptr %74, align 8, !tbaa !104
  %76 = icmp sgt i64 %75, %56
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %62, i64 noundef %56, i64 noundef %61, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %52) #40
  %79 = icmp eq ptr %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  call fastcc void @GetFillColor(ptr noundef %1, i64 noundef %56, i64 noundef %61, ptr noundef nonnull %4) #38
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %4, i64 0, i32 3
  %82 = load i16, ptr %81, align 2, !tbaa !123
  %83 = uitofp i16 %82 to float
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !123
  %86 = uitofp i16 %85 to float
  call fastcc void @MagickCompositeOver(ptr noundef nonnull %4, float noundef %83, ptr noundef nonnull %78, float noundef %86, ptr noundef nonnull %78) #38
  %87 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %62, ptr noundef nonnull %52) #40
  %88 = and i32 %87, 1
  br label %89

89:                                               ; preds = %77, %73, %65, %67, %80
  %90 = phi i32 [ %88, %80 ], [ 1, %67 ], [ 1, %65 ], [ 1, %73 ], [ 1, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %498

91:                                               ; preds = %51
  %92 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !160
  switch i32 %93, label %99 [
    i32 5, label %94
    i32 2, label %105
    i32 3, label %139
    i32 4, label %139
  ]

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %97 = load i64, ptr %96, align 8, !tbaa !106
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %162, label %498

99:                                               ; preds = %91
  %100 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %62, i64 noundef %56, i64 noundef %61, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %52) #40
  %101 = icmp eq ptr %100, null
  br i1 %101, label %498, label %102

102:                                              ; preds = %99
  tail call fastcc void @GetFillColor(ptr noundef %1, i64 noundef %56, i64 noundef %61, ptr noundef nonnull %100) #38
  %103 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %62, ptr noundef nonnull %52) #40
  %104 = and i32 %103, 1
  br label %498

105:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %106 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %62, i64 noundef %56, i64 noundef %61, ptr noundef nonnull %5, ptr noundef nonnull %52) #35
  %107 = and i32 %106, 1
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %109 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %110 = load i64, ptr %109, align 8, !tbaa !106
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %116, label %138

112:                                              ; preds = %135
  %113 = add nuw nsw i64 %117, 1
  %114 = load i64, ptr %109, align 8, !tbaa !106
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %138, !llvm.loop !206

116:                                              ; preds = %105, %112
  %117 = phi i64 [ %113, %112 ], [ 0, %105 ]
  %118 = load i64, ptr %108, align 8, !tbaa !104
  %119 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %62, i64 noundef 0, i64 noundef %117, i64 noundef %118, i64 noundef 1, ptr noundef nonnull %52) #40
  %120 = icmp eq ptr %119, null
  br i1 %120, label %138, label %121

121:                                              ; preds = %116
  %122 = load i64, ptr %108, align 8, !tbaa !104
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121, %130
  %125 = phi i64 [ %132, %130 ], [ 0, %121 ]
  %126 = phi ptr [ %131, %130 ], [ %119, %121 ]
  %127 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef nonnull %126, ptr noundef nonnull %5) #35
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  call fastcc void @GetFillColor(ptr noundef %1, i64 noundef %125, i64 noundef %117, ptr noundef nonnull %126) #38
  br label %130

130:                                              ; preds = %124, %129
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %126, i64 1
  %132 = add nuw nsw i64 %125, 1
  %133 = load i64, ptr %108, align 8, !tbaa !104
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %124, label %135, !llvm.loop !207

135:                                              ; preds = %130, %121
  %136 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %62, ptr noundef nonnull %52) #40
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %112

138:                                              ; preds = %112, %116, %135, %105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %498

139:                                              ; preds = %91, %91
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #12
  %140 = call i32 @GetOneVirtualMagickPixel(ptr noundef nonnull %0, i64 noundef %56, i64 noundef %61, ptr noundef nonnull %6, ptr noundef nonnull %52) #35
  %141 = load i32, ptr %92, align 4, !tbaa !160
  %142 = icmp eq i32 %141, 4
  br i1 %142, label %143, label %153

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %146 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34, i32 1
  %147 = load <2 x i16>, ptr %146, align 2, !tbaa !113
  %148 = uitofp <2 x i16> %147 to <2 x float>
  %149 = shufflevector <2 x float> %148, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %149, ptr %145, align 8, !tbaa !73
  %150 = load i16, ptr %144, align 4, !tbaa !208
  %151 = uitofp i16 %150 to float
  %152 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  store float %151, ptr %152, align 8, !tbaa !118
  br label %153

153:                                              ; preds = %143, %139
  %154 = icmp ne i32 %141, 3
  %155 = zext i1 %154 to i32
  %156 = call i32 @FloodfillPaintImage(ptr noundef nonnull %0, i32 noundef 134217719, ptr noundef %1, ptr noundef nonnull %6, i64 noundef %56, i64 noundef %61, i32 noundef %155) #35
  %157 = and i32 %156, 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #12
  br label %498

158:                                              ; preds = %177
  %159 = add nuw nsw i64 %163, 1
  %160 = load i64, ptr %96, align 8, !tbaa !106
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %162, label %498, !llvm.loop !209

162:                                              ; preds = %94, %158
  %163 = phi i64 [ %159, %158 ], [ 0, %94 ]
  %164 = load i64, ptr %95, align 8, !tbaa !104
  %165 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %62, i64 noundef 0, i64 noundef %163, i64 noundef %164, i64 noundef 1, ptr noundef nonnull %52) #40
  %166 = icmp eq ptr %165, null
  br i1 %166, label %498, label %167

167:                                              ; preds = %162
  %168 = load i64, ptr %95, align 8, !tbaa !104
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167, %170
  %171 = phi ptr [ %173, %170 ], [ %165, %167 ]
  %172 = phi i64 [ %174, %170 ], [ 0, %167 ]
  tail call fastcc void @GetFillColor(ptr noundef %1, i64 noundef %172, i64 noundef %163, ptr noundef nonnull %171) #38
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 1
  %174 = add nuw nsw i64 %172, 1
  %175 = load i64, ptr %95, align 8, !tbaa !104
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %170, label %177, !llvm.loop !210

177:                                              ; preds = %170, %167
  %178 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %62, ptr noundef nonnull %52) #40
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %498, label %158

180:                                              ; preds = %51
  %181 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %182 = load i32, ptr %181, align 8, !tbaa !211
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #35
  br label %186

186:                                              ; preds = %184, %180
  %187 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 3
  %188 = load i32, ptr %187, align 4, !tbaa !160
  switch i32 %188, label %189 [
    i32 5, label %257
    i32 2, label %200
    i32 3, label %238
    i32 4, label %238
  ]

189:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %190 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %62, i64 noundef %56, i64 noundef %61, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %52) #40
  %191 = icmp eq ptr %190, null
  br i1 %191, label %198, label %192

192:                                              ; preds = %189
  call fastcc void @GetFillColor(ptr noundef %1, i64 noundef %56, i64 noundef %61, ptr noundef nonnull %7) #38
  %193 = getelementptr inbounds %struct._PixelPacket, ptr %7, i64 0, i32 3
  %194 = load i16, ptr %193, align 2, !tbaa !123
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %190, i64 0, i32 3
  store i16 %194, ptr %195, align 2, !tbaa !123
  %196 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %62, ptr noundef nonnull %52) #40
  %197 = and i32 %196, 1
  br label %198

198:                                              ; preds = %189, %192
  %199 = phi i32 [ %197, %192 ], [ 1, %189 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  br label %498

200:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  %201 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %62, i64 noundef %56, i64 noundef %61, ptr noundef nonnull %9, ptr noundef nonnull %52) #35
  %202 = and i32 %201, 1
  %203 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %204 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %205 = load i64, ptr %204, align 8, !tbaa !106
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %237

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 3
  br label %213

209:                                              ; preds = %234
  %210 = add nuw nsw i64 %214, 1
  %211 = load i64, ptr %204, align 8, !tbaa !106
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %237, !llvm.loop !212

213:                                              ; preds = %207, %209
  %214 = phi i64 [ 0, %207 ], [ %210, %209 ]
  %215 = load i64, ptr %203, align 8, !tbaa !104
  %216 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %62, i64 noundef 0, i64 noundef %214, i64 noundef %215, i64 noundef 1, ptr noundef nonnull %52) #40
  %217 = icmp eq ptr %216, null
  br i1 %217, label %237, label %218

218:                                              ; preds = %213
  %219 = load i64, ptr %203, align 8, !tbaa !104
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %218, %229
  %222 = phi i64 [ %231, %229 ], [ 0, %218 ]
  %223 = phi ptr [ %230, %229 ], [ %216, %218 ]
  %224 = call i32 @IsColorSimilar(ptr noundef nonnull %0, ptr noundef nonnull %223, ptr noundef nonnull %9) #35
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %221
  call fastcc void @GetFillColor(ptr noundef %1, i64 noundef %222, i64 noundef %214, ptr noundef nonnull %8) #38
  %227 = load i16, ptr %208, align 2, !tbaa !123
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %223, i64 0, i32 3
  store i16 %227, ptr %228, align 2, !tbaa !123
  br label %229

229:                                              ; preds = %221, %226
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %223, i64 1
  %231 = add nuw nsw i64 %222, 1
  %232 = load i64, ptr %203, align 8, !tbaa !104
  %233 = icmp slt i64 %231, %232
  br i1 %233, label %221, label %234, !llvm.loop !213

234:                                              ; preds = %229, %218
  %235 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %62, ptr noundef nonnull %52) #40
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %209

237:                                              ; preds = %209, %213, %234, %200
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  br label %498

238:                                              ; preds = %186, %186
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #12
  %239 = call i32 @GetOneVirtualMagickPixel(ptr noundef nonnull %0, i64 noundef %56, i64 noundef %61, ptr noundef nonnull %10, ptr noundef nonnull %52) #35
  %240 = load i32, ptr %187, align 4, !tbaa !160
  %241 = icmp eq i32 %240, 4
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34
  %244 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %245 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 34, i32 1
  %246 = load <2 x i16>, ptr %245, align 2, !tbaa !113
  %247 = uitofp <2 x i16> %246 to <2 x float>
  %248 = shufflevector <2 x float> %247, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %248, ptr %244, align 8, !tbaa !73
  %249 = load i16, ptr %243, align 4, !tbaa !208
  %250 = uitofp i16 %249 to float
  %251 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  store float %250, ptr %251, align 8, !tbaa !118
  br label %252

252:                                              ; preds = %242, %238
  %253 = icmp ne i32 %240, 3
  %254 = zext i1 %253 to i32
  %255 = call i32 @FloodfillPaintImage(ptr noundef nonnull %0, i32 noundef 8, ptr noundef %1, ptr noundef nonnull %10, i64 noundef %56, i64 noundef %61, i32 noundef %254) #35
  %256 = and i32 %255, 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #12
  br label %498

257:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  %258 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %259 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %260 = load i64, ptr %259, align 8, !tbaa !106
  %261 = icmp sgt i64 %260, 0
  br i1 %261, label %262, label %288

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct._PixelPacket, ptr %11, i64 0, i32 3
  br label %268

264:                                              ; preds = %285
  %265 = add nuw nsw i64 %269, 1
  %266 = load i64, ptr %259, align 8, !tbaa !106
  %267 = icmp slt i64 %265, %266
  br i1 %267, label %268, label %288, !llvm.loop !214

268:                                              ; preds = %262, %264
  %269 = phi i64 [ 0, %262 ], [ %265, %264 ]
  %270 = load i64, ptr %258, align 8, !tbaa !104
  %271 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %62, i64 noundef 0, i64 noundef %269, i64 noundef %270, i64 noundef 1, ptr noundef nonnull %52) #40
  %272 = icmp eq ptr %271, null
  br i1 %272, label %288, label %273

273:                                              ; preds = %268
  %274 = load i64, ptr %258, align 8, !tbaa !104
  %275 = icmp sgt i64 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %273, %276
  %277 = phi i64 [ %282, %276 ], [ 0, %273 ]
  %278 = phi ptr [ %281, %276 ], [ %271, %273 ]
  call fastcc void @GetFillColor(ptr noundef %1, i64 noundef %277, i64 noundef %269, ptr noundef nonnull %11) #38
  %279 = load i16, ptr %263, align 2, !tbaa !123
  %280 = getelementptr inbounds %struct._PixelPacket, ptr %278, i64 0, i32 3
  store i16 %279, ptr %280, align 2, !tbaa !123
  %281 = getelementptr inbounds %struct._PixelPacket, ptr %278, i64 1
  %282 = add nuw nsw i64 %277, 1
  %283 = load i64, ptr %258, align 8, !tbaa !104
  %284 = icmp slt i64 %282, %283
  br i1 %284, label %276, label %285, !llvm.loop !215

285:                                              ; preds = %276, %273
  %286 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %62, ptr noundef nonnull %52) #40
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %264

288:                                              ; preds = %264, %268, %285, %257
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  br label %498

289:                                              ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %12) #12
  %290 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 4
  %291 = load ptr, ptr %290, align 8, !tbaa !161
  %292 = icmp eq ptr %291, null
  br i1 %292, label %306, label %293

293:                                              ; preds = %289
  %294 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #38
  %295 = getelementptr inbounds %struct._DrawInfo, ptr %294, i64 0, i32 21
  %296 = load ptr, ptr %290, align 8, !tbaa !161
  %297 = tail call ptr @CloneString(ptr noundef nonnull %295, ptr noundef %296) #35
  %298 = load double, ptr %2, align 8, !tbaa !178
  %299 = load double, ptr %57, align 8, !tbaa !179
  %300 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %12, i64 noundef 4096, ptr noundef nonnull @.str.103, double noundef %298, double noundef %299) #35
  %301 = getelementptr inbounds %struct._DrawInfo, ptr %294, i64 0, i32 1
  %302 = call ptr @CloneString(ptr noundef nonnull %301, ptr noundef nonnull %12) #35
  %303 = call i32 @AnnotateImage(ptr noundef nonnull %0, ptr noundef %294) #35
  %304 = and i32 %303, 1
  %305 = call ptr @DestroyDrawInfo(ptr noundef %294) #38
  br label %306

306:                                              ; preds = %289, %293
  %307 = phi i32 [ %304, %293 ], [ 1, %289 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %12) #12
  br label %498

308:                                              ; preds = %51
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #12
  %309 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 4
  %310 = load ptr, ptr %309, align 8, !tbaa !161
  %311 = icmp eq ptr %310, null
  br i1 %311, label %411, label %312

312:                                              ; preds = %308
  %313 = tail call ptr @AcquireImageInfo() #35
  %314 = load ptr, ptr %309, align 8, !tbaa !161
  %315 = tail call i32 @LocaleNCompare(ptr noundef %314, ptr noundef nonnull @.str.104, i64 noundef 5) #35
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %312
  %318 = load ptr, ptr %309, align 8, !tbaa !161
  %319 = tail call ptr @ReadInlineImage(ptr noundef %313, ptr noundef %318, ptr noundef nonnull %52) #35
  br label %325

320:                                              ; preds = %312
  %321 = getelementptr inbounds %struct._ImageInfo, ptr %313, i64 0, i32 51
  %322 = load ptr, ptr %309, align 8, !tbaa !161
  %323 = tail call i64 @CopyMagickString(ptr noundef nonnull %321, ptr noundef %322, i64 noundef 4096) #35
  %324 = tail call ptr @ReadImage(ptr noundef %313, ptr noundef nonnull %52) #35
  br label %325

325:                                              ; preds = %320, %317
  %326 = phi ptr [ %324, %320 ], [ %319, %317 ]
  store ptr %326, ptr %15, align 8, !tbaa !72
  %327 = tail call ptr @DestroyImageInfo(ptr noundef %313) #35
  %328 = icmp eq ptr %326, null
  br i1 %328, label %411, label %329

329:                                              ; preds = %325
  %330 = tail call ptr @SetImageProgressMonitor(ptr noundef nonnull %326, ptr noundef null, ptr noundef null) #35
  %331 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 1
  %332 = load double, ptr %331, align 8, !tbaa !178
  %333 = fadd double %332, -5.000000e-01
  %334 = tail call double @llvm.ceil.f64(double %333)
  %335 = fptosi double %334 to i64
  %336 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 1, i32 0, i32 1
  %337 = load double, ptr %336, align 8, !tbaa !179
  %338 = fadd double %337, -5.000000e-01
  %339 = tail call double @llvm.ceil.f64(double %338)
  %340 = fptosi double %339 to i64
  %341 = icmp eq i64 %335, 0
  br i1 %341, label %346, label %342

342:                                              ; preds = %329
  %343 = getelementptr inbounds %struct._Image, ptr %326, i64 0, i32 7
  %344 = load i64, ptr %343, align 8, !tbaa !104
  %345 = icmp eq i64 %344, %335
  br i1 %345, label %346, label %352

346:                                              ; preds = %342, %329
  %347 = icmp eq i64 %340, 0
  br i1 %347, label %359, label %348

348:                                              ; preds = %346
  %349 = getelementptr inbounds %struct._Image, ptr %326, i64 0, i32 8
  %350 = load i64, ptr %349, align 8, !tbaa !106
  %351 = icmp eq i64 %350, %340
  br i1 %351, label %359, label %352

352:                                              ; preds = %348, %342
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %17) #12
  %353 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %17, i64 noundef 4096, ptr noundef nonnull @.str.105, double noundef %332, double noundef %337) #35
  %354 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %355 = load i32, ptr %354, align 8, !tbaa !216
  %356 = getelementptr inbounds %struct._Image, ptr %326, i64 0, i32 32
  store i32 %355, ptr %356, align 8, !tbaa !216
  %357 = call i32 @TransformImage(ptr noundef nonnull %15, ptr noundef null, ptr noundef nonnull %17) #35
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %17) #12
  %358 = load ptr, ptr %15, align 8, !tbaa !72
  br label %359

359:                                              ; preds = %352, %348, %346
  %360 = phi ptr [ %358, %352 ], [ %326, %348 ], [ %326, %346 ]
  %361 = getelementptr inbounds %struct._Image, ptr %360, i64 0, i32 6
  %362 = load i32, ptr %361, align 8, !tbaa !211
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %359
  %365 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %360, i32 noundef 6) #35
  br label %366

366:                                              ; preds = %364, %359
  %367 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 40
  %368 = load i16, ptr %367, align 4, !tbaa !27
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %366
  %371 = load ptr, ptr %15, align 8, !tbaa !72
  %372 = call i32 @SetImageOpacity(ptr noundef %371, i16 noundef zeroext %368) #35
  br label %373

373:                                              ; preds = %370, %366
  call void @SetGeometry(ptr noundef nonnull %0, ptr noundef nonnull %16) #35
  %374 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 4
  %375 = load i32, ptr %374, align 8, !tbaa !50
  %376 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  store i32 %375, ptr %376, align 4, !tbaa !217
  %377 = getelementptr inbounds %struct._RectangleInfo, ptr %16, i64 0, i32 2
  store i64 %56, ptr %377, align 8, !tbaa !218
  %378 = getelementptr inbounds %struct._RectangleInfo, ptr %16, i64 0, i32 3
  store i64 %61, ptr %378, align 8, !tbaa !219
  %379 = load ptr, ptr %15, align 8, !tbaa !72
  %380 = getelementptr inbounds %struct._Image, ptr %379, i64 0, i32 7
  %381 = load i64, ptr %380, align 8, !tbaa !104
  %382 = uitofp i64 %381 to double
  %383 = getelementptr inbounds %struct._Image, ptr %379, i64 0, i32 8
  %384 = load i64, ptr %383, align 8, !tbaa !106
  %385 = uitofp i64 %384 to double
  %386 = sitofp i64 %56 to double
  %387 = sitofp i64 %61 to double
  %388 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %14, i64 noundef 4096, ptr noundef nonnull @.str.66, double noundef %382, double noundef %385, double noundef %386, double noundef %387) #35
  %389 = call i32 @ParseGravityGeometry(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef nonnull %52) #35
  %390 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %390, i64 32, i1 false), !tbaa.struct !56
  %391 = load i64, ptr %377, align 8, !tbaa !218
  %392 = sitofp i64 %391 to double
  %393 = getelementptr inbounds %struct._AffineMatrix, ptr %13, i64 0, i32 4
  store double %392, ptr %393, align 8, !tbaa !95
  %394 = load i64, ptr %378, align 8, !tbaa !219
  %395 = sitofp i64 %394 to double
  %396 = getelementptr inbounds %struct._AffineMatrix, ptr %13, i64 0, i32 5
  store double %395, ptr %396, align 8, !tbaa !92
  %397 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 70
  %398 = load i32, ptr %397, align 8, !tbaa !220
  %399 = load ptr, ptr %15, align 8, !tbaa !72
  %400 = getelementptr inbounds %struct._Image, ptr %399, i64 0, i32 70
  store i32 %398, ptr %400, align 8, !tbaa !220
  %401 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 20
  %402 = load i32, ptr %401, align 4, !tbaa !41
  %403 = icmp eq i32 %402, 40
  br i1 %403, label %404, label %406

404:                                              ; preds = %373
  %405 = call i32 @DrawAffineImage(ptr noundef nonnull %0, ptr noundef nonnull %399, ptr noundef nonnull %13) #38
  br label %408

406:                                              ; preds = %373
  %407 = call i32 @CompositeImage(ptr noundef nonnull %0, i32 noundef %402, ptr noundef nonnull %399, i64 noundef %391, i64 noundef %394) #35
  br label %408

408:                                              ; preds = %406, %404
  %409 = load ptr, ptr %15, align 8, !tbaa !72
  %410 = call ptr @DestroyImage(ptr noundef %409) #35
  br label %411

411:                                              ; preds = %325, %308, %408
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #12
  br label %498

412:                                              ; preds = %51
  %413 = tail call i32 @IsEventLogging() #35
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %412
  tail call fastcc void @LogPrimitiveInfo(ptr noundef nonnull %2) #38
  br label %416

416:                                              ; preds = %415, %412
  %417 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %418 = tail call double @ExpandAffine(ptr noundef nonnull %417) #35
  %419 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 36
  %420 = load ptr, ptr %419, align 8, !tbaa !68
  %421 = icmp eq ptr %420, null
  br i1 %421, label %441, label %422

422:                                              ; preds = %416
  %423 = load double, ptr %420, align 8, !tbaa !57
  %424 = fcmp une double %423, 0.000000e+00
  br i1 %424, label %425, label %441

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %427 = load double, ptr %426, align 8, !tbaa !26
  %428 = fmul double %418, %427
  %429 = fcmp ult double %428, 1.000000e-15
  br i1 %429, label %441, label %430

430:                                              ; preds = %425
  %431 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6, i32 3
  %432 = load i16, ptr %431, align 2, !tbaa !139
  %433 = icmp eq i16 %432, -1
  br i1 %433, label %441, label %434

434:                                              ; preds = %430
  %435 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef nonnull %1) #38
  %436 = getelementptr inbounds %struct._DrawInfo, ptr %435, i64 0, i32 7
  store double 0.000000e+00, ptr %436, align 8, !tbaa !26
  %437 = getelementptr inbounds %struct._DrawInfo, ptr %435, i64 0, i32 6, i32 3
  store i16 -1, ptr %437, align 2, !tbaa !139
  %438 = tail call fastcc i32 @DrawPolygonPrimitive(ptr noundef nonnull %0, ptr noundef %435, ptr noundef nonnull %2) #38
  %439 = and i32 %438, 1
  %440 = tail call ptr @DestroyDrawInfo(ptr noundef %435) #38
  tail call fastcc void @DrawDashPolygon(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %0) #38
  br label %498

441:                                              ; preds = %430, %425, %422, %416
  %442 = tail call double @ExpandAffine(ptr noundef nonnull %417) #35
  %443 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %444 = load double, ptr %443, align 8, !tbaa !26
  %445 = fmul double %442, %444
  %446 = fmul double %445, 5.000000e-01
  %447 = fcmp ogt double %446, 1.000000e+00
  br i1 %447, label %448, label %495

448:                                              ; preds = %441
  %449 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6, i32 3
  %450 = load i16, ptr %449, align 2, !tbaa !139
  %451 = icmp eq i16 %450, -1
  br i1 %451, label %495, label %452

452:                                              ; preds = %448, %452
  %453 = phi i64 [ %457, %452 ], [ 0, %448 ]
  %454 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %453, i32 2
  %455 = load i32, ptr %454, align 8, !tbaa !157
  %456 = icmp eq i32 %455, 0
  %457 = add nuw nsw i64 %453, 1
  br i1 %456, label %458, label %452, !llvm.loop !221

458:                                              ; preds = %452
  %459 = getelementptr %struct._PrimitiveInfo, ptr %2, i64 %453
  %460 = getelementptr %struct._PrimitiveInfo, ptr %459, i64 -1
  %461 = load double, ptr %460, align 8, !tbaa !178
  %462 = load double, ptr %2, align 8, !tbaa !178
  %463 = fcmp oeq double %461, %462
  br i1 %463, label %464, label %469

464:                                              ; preds = %458
  %465 = getelementptr %struct._PrimitiveInfo, ptr %459, i64 -1, i32 0, i32 1
  %466 = load double, ptr %465, align 8, !tbaa !179
  %467 = load double, ptr %57, align 8, !tbaa !179
  %468 = fcmp oeq double %466, %467
  br label %469

469:                                              ; preds = %464, %458
  %470 = phi i1 [ false, %458 ], [ %468, %464 ]
  %471 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 1
  %472 = load i64, ptr %471, align 8, !tbaa !159
  %473 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 15
  %474 = load i32, ptr %473, align 4, !tbaa !29
  %475 = icmp eq i32 %474, 2
  %476 = select i1 %475, i1 true, i1 %470
  br i1 %476, label %477, label %481

477:                                              ; preds = %469
  %478 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 16
  %479 = load i32, ptr %478, align 8, !tbaa !30
  %480 = icmp eq i32 %479, 2
  br i1 %480, label %485, label %481

481:                                              ; preds = %469, %477
  %482 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 %472, i32 2
  %483 = load i32, ptr %482, align 8, !tbaa !157
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %487, label %485

485:                                              ; preds = %481, %477
  %486 = tail call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #38
  br label %498

487:                                              ; preds = %481
  %488 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef nonnull %1) #38
  %489 = getelementptr inbounds %struct._DrawInfo, ptr %488, i64 0, i32 7
  store double 0.000000e+00, ptr %489, align 8, !tbaa !26
  %490 = getelementptr inbounds %struct._DrawInfo, ptr %488, i64 0, i32 6, i32 3
  store i16 -1, ptr %490, align 2, !tbaa !139
  %491 = tail call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %488, ptr noundef nonnull %2) #38
  %492 = tail call ptr @DestroyDrawInfo(ptr noundef %488) #38
  %493 = tail call fastcc i32 @DrawStrokePolygon(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #38, !range !129
  %494 = and i32 %493, %491
  br label %498

495:                                              ; preds = %448, %441
  %496 = tail call fastcc i32 @DrawPolygonPrimitive(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #38
  %497 = and i32 %496, 1
  br label %498

498:                                              ; preds = %158, %162, %177, %94, %434, %495, %487, %485, %102, %99, %198, %237, %252, %288, %138, %153, %411, %306, %89
  %499 = phi i32 [ 1, %411 ], [ %307, %306 ], [ %199, %198 ], [ %256, %252 ], [ %202, %237 ], [ 1, %288 ], [ %157, %153 ], [ %107, %138 ], [ %90, %89 ], [ %104, %102 ], [ 1, %99 ], [ %439, %434 ], [ %497, %495 ], [ 1, %485 ], [ %494, %487 ], [ 1, %94 ], [ 1, %177 ], [ 1, %162 ], [ 1, %158 ]
  %500 = call ptr @DestroyCacheView(ptr noundef %62) #35
  %501 = load i32, ptr %18, align 8, !tbaa !80
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %505, label %503

503:                                              ; preds = %498
  %504 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4639, ptr noundef nonnull @.str.106) #35
  br label %505

505:                                              ; preds = %503, %498
  %506 = icmp ne i32 %499, 0
  %507 = zext i1 %506 to i32
  ret i32 %507
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !222
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.92, ptr noundef nonnull %9) #35
  %11 = load ptr, ptr %5, align 8, !tbaa !222
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !223
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #35
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc double @Permutate(i64 noundef %0, i64 noundef %1) unnamed_addr #23 {
  %3 = icmp slt i64 %1, %0
  br i1 %3, label %10, label %4

4:                                                ; preds = %10, %2
  %5 = phi double [ 1.000000e+00, %2 ], [ %15, %10 ]
  %6 = icmp sgt i64 %0, %1
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = add i64 %0, 1
  %9 = sub i64 %8, %1
  br label %17

10:                                               ; preds = %2, %10
  %11 = phi i64 [ %13, %10 ], [ %1, %2 ]
  %12 = phi double [ %15, %10 ], [ 1.000000e+00, %2 ]
  %13 = add nsw i64 %11, 1
  %14 = sitofp i64 %13 to double
  %15 = fmul double %12, %14
  %16 = icmp eq i64 %13, %0
  br i1 %16, label %4, label %10, !llvm.loop !224

17:                                               ; preds = %7, %17
  %18 = phi i64 [ %22, %17 ], [ 1, %7 ]
  %19 = phi double [ %21, %17 ], [ %5, %7 ]
  %20 = sitofp i64 %18 to double
  %21 = fdiv double %19, %20
  %22 = add nuw i64 %18, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %24, label %17, !llvm.loop !225

24:                                               ; preds = %17, %4
  %25 = phi double [ %5, %4 ], [ %21, %17 ]
  ret double %25
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @TraceArcPath(ptr noundef %0, double %1, double %2, double %3, double %4, double %5, double %6, double noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = fcmp oeq double %1, %3
  %12 = fcmp oeq double %2, %4
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call fastcc void @TracePoint(ptr noundef %0, double %3, double %4) #38
  br label %242

15:                                               ; preds = %10
  %16 = tail call double @llvm.fabs.f64(double %5)
  %17 = tail call double @llvm.fabs.f64(double %6)
  %18 = fcmp oeq double %5, 0.000000e+00
  %19 = fcmp oeq double %6, 0.000000e+00
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  tail call fastcc void @TraceLine(ptr noundef %0, double %1, double %2, double %3, double %4) #38
  br label %242

22:                                               ; preds = %15
  %23 = tail call double @fmod(double noundef %7, double noundef 3.600000e+02) #35
  %24 = tail call fastcc double @DegreesToRadians(double noundef %23) #38
  %25 = tail call double @cos(double noundef %24) #35
  %26 = tail call double @fmod(double noundef %7, double noundef 3.600000e+02) #35
  %27 = tail call fastcc double @DegreesToRadians(double noundef %26) #38
  %28 = tail call double @sin(double noundef %27) #35
  %29 = insertelement <2 x double> poison, double %3, i64 0
  %30 = insertelement <2 x double> %29, double %4, i64 1
  %31 = insertelement <2 x double> poison, double %1, i64 0
  %32 = insertelement <2 x double> %31, double %2, i64 1
  %33 = fsub <2 x double> %30, %32
  %34 = insertelement <2 x double> poison, double %5, i64 0
  %35 = insertelement <2 x double> %34, double %6, i64 1
  %36 = fmul <2 x double> %35, %35
  %37 = insertelement <2 x double> poison, double %25, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %39 = fmul <2 x double> %33, %38
  %40 = fmul <2 x double> %39, <double 5.000000e-01, double 5.000000e-01>
  %41 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %42 = insertelement <2 x double> poison, double %28, i64 0
  %43 = shufflevector <2 x double> %42, <2 x double> poison, <2 x i32> zeroinitializer
  %44 = fmul <2 x double> %41, %43
  %45 = fmul <2 x double> %44, <double 5.000000e-01, double 5.000000e-01>
  %46 = fadd <2 x double> %40, %45
  %47 = fsub <2 x double> %40, %45
  %48 = shufflevector <2 x double> %46, <2 x double> %47, <2 x i32> <i32 0, i32 3>
  %49 = fmul <2 x double> %48, %48
  %50 = fdiv <2 x double> %49, %36
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %52 = fadd <2 x double> %50, %51
  %53 = extractelement <2 x double> %52, i64 0
  %54 = fcmp olt double %53, 1.000000e-15
  br i1 %54, label %55, label %56

55:                                               ; preds = %22
  tail call fastcc void @TraceLine(ptr noundef %0, double %1, double %2, double %3, double %4) #38
  br label %242

56:                                               ; preds = %22
  %57 = fcmp ogt double %53, 1.000000e+00
  %58 = tail call double @llvm.sqrt.f64(double %53)
  %59 = select i1 %57, double %58, double 1.000000e+00
  %60 = fmul double %17, %59
  %61 = fmul double %16, %59
  %62 = insertelement <2 x double> %29, double %1, i64 1
  %63 = fmul <2 x double> %38, %62
  %64 = insertelement <2 x double> poison, double %4, i64 0
  %65 = insertelement <2 x double> %64, double %2, i64 1
  %66 = fmul <2 x double> %43, %65
  %67 = fmul <2 x double> %38, %65
  %68 = fmul <2 x double> %43, %62
  %69 = insertelement <2 x double> poison, double %61, i64 0
  %70 = shufflevector <2 x double> %69, <2 x double> poison, <2 x i32> zeroinitializer
  %71 = fdiv <2 x double> %63, %70
  %72 = fdiv <2 x double> %66, %70
  %73 = fadd <2 x double> %71, %72
  %74 = insertelement <2 x double> poison, double %60, i64 0
  %75 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> zeroinitializer
  %76 = fdiv <2 x double> %67, %75
  %77 = fdiv <2 x double> %68, %75
  %78 = fsub <2 x double> %76, %77
  %79 = extractelement <2 x double> %73, i64 0
  %80 = extractelement <2 x double> %73, i64 1
  %81 = fsub double %79, %80
  %82 = extractelement <2 x double> %78, i64 0
  %83 = extractelement <2 x double> %78, i64 1
  %84 = fsub double %82, %83
  %85 = fmul double %84, %84
  %86 = tail call double @llvm.fmuladd.f64(double %81, double %81, double %85)
  %87 = tail call fastcc double @PerceptibleReciprocal(double noundef %86) #38
  %88 = fadd double %87, -2.500000e-01
  %89 = fcmp ugt double %88, 0.000000e+00
  br i1 %89, label %90, label %95

90:                                               ; preds = %56
  %91 = tail call double @sqrt(double noundef %88) #35
  %92 = icmp eq i32 %9, %8
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = fneg double %91
  br label %95

95:                                               ; preds = %56, %90, %93
  %96 = phi double [ %94, %93 ], [ %91, %90 ], [ 0.000000e+00, %56 ]
  %97 = fadd double %80, %79
  %98 = fmul double %97, 5.000000e-01
  %99 = fneg double %96
  %100 = tail call double @llvm.fmuladd.f64(double %99, double %84, double %98)
  %101 = fadd double %83, %82
  %102 = fmul double %101, 5.000000e-01
  %103 = tail call double @llvm.fmuladd.f64(double %96, double %81, double %102)
  %104 = fsub double %83, %103
  %105 = fsub double %80, %100
  %106 = tail call double @atan2(double noundef %104, double noundef %105) #35
  %107 = fsub double %82, %103
  %108 = fsub double %79, %100
  %109 = tail call double @atan2(double noundef %107, double noundef %108) #35
  %110 = fsub double %109, %106
  %111 = fcmp olt double %110, 0.000000e+00
  %112 = icmp ne i32 %9, 0
  %113 = and i1 %112, %111
  br i1 %113, label %114, label %116

114:                                              ; preds = %95
  %115 = fadd double %110, 0x401921FB54442D18
  br label %122

116:                                              ; preds = %95
  %117 = fcmp ogt double %110, 0.000000e+00
  %118 = icmp eq i32 %9, 0
  %119 = and i1 %118, %117
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = fadd double %110, 0xC01921FB54442D18
  br label %122

122:                                              ; preds = %116, %120, %114
  %123 = phi double [ %115, %114 ], [ %121, %120 ], [ %110, %116 ]
  %124 = fdiv double %123, 0x3FF921FB54442D1D
  %125 = tail call double @llvm.fabs.f64(double %124)
  %126 = tail call double @llvm.ceil.f64(double %125)
  %127 = fptoui double %126 to i64
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %223

129:                                              ; preds = %122
  %130 = uitofp i64 %127 to double
  %131 = tail call fastcc double @DegreesToRadians(double noundef 3.600000e+02) #38
  %132 = fneg double %28
  %133 = insertelement <2 x double> %37, double %28, i64 1
  %134 = fmul <2 x double> %133, %70
  %135 = insertelement <2 x double> poison, double %132, i64 0
  %136 = insertelement <2 x double> %135, double %25, i64 1
  %137 = fmul <2 x double> %75, %136
  %138 = add nsw i64 %127, -1
  br label %139

139:                                              ; preds = %129, %218
  %140 = phi i64 [ 0, %129 ], [ %142, %218 ]
  %141 = phi ptr [ %0, %129 ], [ %221, %218 ]
  %142 = add nuw nsw i64 %140, 1
  %143 = sitofp i64 %142 to double
  %144 = fmul double %123, %143
  %145 = fdiv double %144, %130
  %146 = fadd double %106, %145
  %147 = sitofp i64 %140 to double
  %148 = fmul double %123, %147
  %149 = fdiv double %148, %130
  %150 = fadd double %106, %149
  %151 = fsub double %146, %150
  %152 = fmul double %151, 5.000000e-01
  %153 = fmul double %152, 5.000000e-01
  %154 = tail call double @fmod(double noundef %153, double noundef %131) #35
  %155 = tail call double @sin(double noundef %154) #35
  %156 = fmul double %155, 0x4005555555555555
  %157 = tail call double @fmod(double noundef %153, double noundef %131) #35
  %158 = tail call double @sin(double noundef %157) #35
  %159 = fmul double %156, %158
  %160 = tail call double @fmod(double noundef %152, double noundef %131) #35
  %161 = tail call double @sin(double noundef %160) #35
  %162 = fdiv double %159, %161
  %163 = tail call double @fmod(double noundef %150, double noundef %131) #35
  %164 = tail call double @cos(double noundef %163) #35
  %165 = fadd double %100, %164
  %166 = tail call double @fmod(double noundef %150, double noundef %131) #35
  %167 = tail call double @sin(double noundef %166) #35
  %168 = fneg double %162
  %169 = tail call double @llvm.fmuladd.f64(double %168, double %167, double %165)
  %170 = tail call double @fmod(double noundef %150, double noundef %131) #35
  %171 = tail call double @sin(double noundef %170) #35
  %172 = fadd double %103, %171
  %173 = tail call double @fmod(double noundef %150, double noundef %131) #35
  %174 = tail call double @cos(double noundef %173) #35
  %175 = tail call double @llvm.fmuladd.f64(double %162, double %174, double %172)
  %176 = tail call double @fmod(double noundef %146, double noundef %131) #35
  %177 = tail call double @cos(double noundef %176) #35
  %178 = fadd double %100, %177
  %179 = tail call double @fmod(double noundef %146, double noundef %131) #35
  %180 = tail call double @sin(double noundef %179) #35
  %181 = fadd double %103, %180
  %182 = tail call double @fmod(double noundef %146, double noundef %131) #35
  %183 = tail call double @sin(double noundef %182) #35
  %184 = tail call double @llvm.fmuladd.f64(double %162, double %183, double %178)
  %185 = tail call double @fmod(double noundef %146, double noundef %131) #35
  %186 = tail call double @cos(double noundef %185) #35
  %187 = tail call double @llvm.fmuladd.f64(double %168, double %186, double %181)
  %188 = icmp eq ptr %141, %0
  br i1 %188, label %192, label %189

189:                                              ; preds = %139
  %190 = getelementptr inbounds %struct._PrimitiveInfo, ptr %141, i64 -1
  %191 = load <2 x double>, ptr %190, align 8, !tbaa !57
  br label %192

192:                                              ; preds = %139, %189
  %193 = phi <2 x double> [ %191, %189 ], [ %32, %139 ]
  store <2 x double> %193, ptr %141, align 8
  %194 = insertelement <2 x double> poison, double %175, i64 0
  %195 = shufflevector <2 x double> %194, <2 x double> poison, <2 x i32> zeroinitializer
  %196 = fmul <2 x double> %137, %195
  %197 = getelementptr inbounds %struct._PrimitiveInfo, ptr %141, i64 1
  %198 = insertelement <2 x double> poison, double %169, i64 0
  %199 = shufflevector <2 x double> %198, <2 x double> poison, <2 x i32> zeroinitializer
  %200 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %134, <2 x double> %199, <2 x double> %196)
  store <2 x double> %200, ptr %197, align 8, !tbaa !57
  %201 = getelementptr inbounds %struct._PrimitiveInfo, ptr %141, i64 2
  %202 = insertelement <2 x double> poison, double %187, i64 0
  %203 = shufflevector <2 x double> %202, <2 x double> poison, <2 x i32> zeroinitializer
  %204 = fmul <2 x double> %137, %203
  %205 = insertelement <2 x double> poison, double %184, i64 0
  %206 = shufflevector <2 x double> %205, <2 x double> poison, <2 x i32> zeroinitializer
  %207 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %134, <2 x double> %206, <2 x double> %204)
  store <2 x double> %207, ptr %201, align 8, !tbaa !57
  %208 = getelementptr inbounds %struct._PrimitiveInfo, ptr %141, i64 3
  %209 = insertelement <2 x double> poison, double %181, i64 0
  %210 = shufflevector <2 x double> %209, <2 x double> poison, <2 x i32> zeroinitializer
  %211 = fmul <2 x double> %137, %210
  %212 = insertelement <2 x double> poison, double %178, i64 0
  %213 = shufflevector <2 x double> %212, <2 x double> poison, <2 x i32> zeroinitializer
  %214 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %134, <2 x double> %213, <2 x double> %211)
  store <2 x double> %214, ptr %208, align 8, !tbaa !57
  %215 = icmp eq i64 %140, %138
  br i1 %215, label %216, label %218

216:                                              ; preds = %192
  %217 = getelementptr inbounds %struct._PrimitiveInfo, ptr %141, i64 3, i32 0, i32 1
  store double %3, ptr %208, align 8, !tbaa.struct !108
  store double %4, ptr %217, align 8, !tbaa.struct !162
  br label %218

218:                                              ; preds = %216, %192
  tail call fastcc void @TraceBezier(ptr noundef nonnull %141, i64 noundef 4) #38
  %219 = getelementptr inbounds %struct._PrimitiveInfo, ptr %141, i64 0, i32 1
  %220 = load i64, ptr %219, align 8, !tbaa !159
  %221 = getelementptr inbounds %struct._PrimitiveInfo, ptr %141, i64 %220
  %222 = icmp eq i64 %142, %127
  br i1 %222, label %223, label %139, !llvm.loop !226

223:                                              ; preds = %218, %122
  %224 = phi ptr [ %0, %122 ], [ %221, %218 ]
  %225 = ptrtoint ptr %224 to i64
  %226 = ptrtoint ptr %0 to i64
  %227 = sub i64 %225, %226
  %228 = sdiv exact i64 %227, 40
  %229 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 1
  store i64 %228, ptr %229, align 8, !tbaa !159
  %230 = icmp sgt i64 %227, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %223
  %232 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %233 = tail call i64 @llvm.smax.i64(i64 %228, i64 1)
  %234 = load i32, ptr %232, align 8, !tbaa !157
  br label %235

235:                                              ; preds = %231, %235
  %236 = phi i64 [ 0, %231 ], [ %240, %235 ]
  %237 = phi ptr [ %224, %231 ], [ %239, %235 ]
  %238 = getelementptr inbounds %struct._PrimitiveInfo, ptr %237, i64 0, i32 2
  store i32 %234, ptr %238, align 8, !tbaa !157
  %239 = getelementptr inbounds %struct._PrimitiveInfo, ptr %237, i64 -1
  %240 = add nuw nsw i64 %236, 1
  %241 = icmp eq i64 %240, %233
  br i1 %241, label %242, label %235, !llvm.loop !227

242:                                              ; preds = %235, %223, %55, %21, %14
  ret void
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @DrawGradientImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._RectangleInfo, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #12
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !80
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3316, ptr noundef nonnull @.str.6, ptr noundef nonnull %17) #35
  br label %19

19:                                               ; preds = %16, %2
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8
  store ptr %20, ptr %5, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 2
  store ptr %21, ptr %6, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 2, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !105
  %24 = load double, ptr %21, align 8, !tbaa !102
  %25 = fsub double %23, %24
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 2, i32 3
  %27 = load double, ptr %26, align 8, !tbaa !107
  %28 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 2, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !103
  %30 = fsub double %27, %29
  %31 = fmul double %30, %30
  %32 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %31)
  %33 = tail call double @llvm.sqrt.f64(double %32)
  store double %33, ptr %7, align 8, !tbaa !57
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 8, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %34, i64 32, i1 false), !tbaa.struct !54
  store i32 1, ptr %9, align 4, !tbaa !6
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %35, ptr %8, align 8, !tbaa !72
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %10) #35
  %36 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %35) #35
  store ptr %36, ptr %4, align 8, !tbaa !72
  %37 = call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %38 = and i64 %37, 576460752303423487
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %19
  %41 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #35
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #35
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  br label %52

48:                                               ; preds = %43, %40, %19
  %49 = call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %50 = icmp ult i64 %49, 2
  %51 = select i1 %50, i64 1, i64 2
  br label %52

52:                                               ; preds = %48, %46
  %53 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %54 = trunc i64 %53 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %54)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @DrawGradientImage.omp_outlined, ptr nonnull %11, ptr nonnull %9, ptr nonnull %4, ptr nonnull %3, ptr nonnull %8, ptr nonnull %10, ptr nonnull %5, ptr nonnull %7, ptr nonnull %6)
  %55 = load ptr, ptr %4, align 8, !tbaa !72
  %56 = call ptr @DestroyCacheView(ptr noundef %55) #35
  %57 = load i32, ptr %9, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %57
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @DrawGradientImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10) #11 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = alloca %struct._MagickPixelPacket, align 8
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !219
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !228
  %22 = xor i64 %19, -1
  %23 = add i64 %21, %22
  %24 = icmp slt i64 %19, %21
  br i1 %24, label %25, label %385

25:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #12
  store i64 0, ptr %12, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #12
  store i64 %23, ptr %13, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  store i64 1, ptr %14, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  store i32 0, ptr %15, align 4, !tbaa !6
  %26 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8u(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %27 = load i64, ptr %13, align 8
  %28 = call i64 @llvm.umin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %13, align 8, !tbaa !55
  %29 = load i64, ptr %12, align 8, !tbaa !55
  %30 = add i64 %28, 1
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %384

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %16, i64 0, i32 8
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %17, i64 0, i32 8
  br label %36

36:                                               ; preds = %32, %375
  %37 = phi i64 [ %28, %32 ], [ %381, %375 ]
  %38 = phi i64 [ %29, %32 ], [ %379, %375 ]
  %39 = icmp ugt i64 %38, %37
  br i1 %39, label %375, label %40

40:                                               ; preds = %36, %368
  %41 = phi i64 [ %369, %368 ], [ %38, %36 ]
  %42 = add i64 %41, %19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #12
  %43 = load i32, ptr %3, align 4, !tbaa !6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %368, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %4, align 8, !tbaa !72
  %47 = load ptr, ptr %5, align 8, !tbaa !72
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !104
  %50 = load ptr, ptr %6, align 8, !tbaa !72
  %51 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %46, i64 noundef 0, i64 noundef %42, i64 noundef %49, i64 noundef 1, ptr noundef %50) #40
  %52 = icmp eq ptr %51, null
  br i1 %52, label %367, label %53

53:                                               ; preds = %45
  %54 = load ptr, ptr %4, align 8, !tbaa !72
  %55 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %54) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !109
  %56 = load i64, ptr %33, align 8, !tbaa !218
  %57 = load i64, ptr %2, align 8, !tbaa !229
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %362

59:                                               ; preds = %53
  %60 = load ptr, ptr %8, align 8, !tbaa !72
  %61 = call fastcc double @GetStopColorOffset(ptr noundef %60, i64 noundef 0, i64 noundef %42) #38
  %62 = load i32, ptr %60, align 8, !tbaa !230
  %63 = icmp eq i32 %62, 2
  %64 = load double, ptr %9, align 8
  %65 = select i1 %63, double 1.000000e+00, double %64
  %66 = fdiv double %61, %65
  br label %67

67:                                               ; preds = %59, %353
  %68 = phi ptr [ %358, %353 ], [ %51, %59 ]
  %69 = phi i64 [ %359, %353 ], [ %56, %59 ]
  %70 = phi double [ %354, %353 ], [ %66, %59 ]
  %71 = load ptr, ptr %5, align 8, !tbaa !72
  %72 = getelementptr inbounds i16, ptr %55, i64 %69
  call fastcc void @SetMagickPixelPacket(ptr noundef %71, ptr noundef nonnull %68, ptr noundef %72, ptr noundef nonnull %17) #38
  %73 = load ptr, ptr %8, align 8, !tbaa !72
  %74 = getelementptr inbounds %struct._GradientInfo, ptr %73, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !231
  switch i32 %75, label %353 [
    i32 0, label %76
    i32 1, label %76
    i32 2, label %146
    i32 3, label %223
  ]

76:                                               ; preds = %67, %67
  %77 = load ptr, ptr %10, align 8, !tbaa !72
  %78 = load double, ptr %77, align 8, !tbaa !102
  %79 = fadd double %78, -5.000000e-01
  %80 = call double @llvm.ceil.f64(double %79)
  %81 = fptosi double %80 to i64
  %82 = icmp eq i64 %69, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct._SegmentInfo, ptr %77, i64 0, i32 1
  %85 = load double, ptr %84, align 8, !tbaa !103
  %86 = fadd double %85, -5.000000e-01
  %87 = call double @llvm.ceil.f64(double %86)
  %88 = fptosi double %87 to i64
  %89 = icmp eq i64 %42, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %83, %76
  %91 = call fastcc double @GetStopColorOffset(ptr noundef nonnull %73, i64 noundef %69, i64 noundef %42) #38
  %92 = load i32, ptr %73, align 8, !tbaa !230
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load double, ptr %9, align 8, !tbaa !57
  %96 = fdiv double %91, %95
  br label %97

97:                                               ; preds = %90, %94, %83
  %98 = phi double [ %96, %94 ], [ %91, %90 ], [ %70, %83 ]
  %99 = getelementptr inbounds %struct._GradientInfo, ptr %73, i64 0, i32 4
  %100 = load i64, ptr %99, align 8, !tbaa !232
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct._GradientInfo, ptr %73, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !233
  br label %105

105:                                              ; preds = %102, %111
  %106 = phi i64 [ 0, %102 ], [ %112, %111 ]
  %107 = getelementptr inbounds %struct._StopInfo, ptr %104, i64 %106, i32 1
  %108 = load float, ptr %107, align 8, !tbaa !234
  %109 = fpext float %108 to double
  %110 = fcmp olt double %98, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %105
  %112 = add nuw nsw i64 %106, 1
  %113 = icmp eq i64 %112, %100
  br i1 %113, label %114, label %105, !llvm.loop !236

114:                                              ; preds = %111, %105
  %115 = phi i64 [ %100, %111 ], [ %106, %105 ]
  %116 = fcmp olt double %98, 0.000000e+00
  %117 = icmp eq i64 %115, 0
  %118 = or i1 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %97, %114
  %120 = getelementptr inbounds %struct._GradientInfo, ptr %73, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %121, i64 56, i1 false), !tbaa.struct !109
  br label %353

122:                                              ; preds = %114
  %123 = fcmp ogt double %98, 1.000000e+00
  %124 = icmp eq i64 %115, %100
  %125 = or i1 %123, %124
  %126 = getelementptr inbounds %struct._GradientInfo, ptr %73, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !233
  br i1 %125, label %128, label %131

128:                                              ; preds = %122
  %129 = getelementptr %struct._StopInfo, ptr %127, i64 %100
  %130 = getelementptr %struct._StopInfo, ptr %129, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %130, i64 56, i1 false), !tbaa.struct !109
  br label %353

131:                                              ; preds = %122
  %132 = getelementptr %struct._StopInfo, ptr %127, i64 %115
  %133 = getelementptr %struct._StopInfo, ptr %132, i64 -1
  %134 = getelementptr %struct._StopInfo, ptr %132, i64 -1, i32 1
  %135 = load float, ptr %134, align 8, !tbaa !234
  %136 = fpext float %135 to double
  %137 = fsub double %98, %136
  %138 = getelementptr inbounds %struct._StopInfo, ptr %127, i64 %115, i32 1
  %139 = load float, ptr %138, align 8, !tbaa !234
  %140 = fsub float %139, %135
  %141 = fpext float %140 to double
  %142 = fdiv double %137, %141
  %143 = fsub double 1.000000e+00, %142
  %144 = fptrunc double %143 to float
  %145 = fptrunc double %142 to float
  call fastcc void @MagickPixelCompositeBlend(ptr noundef %133, float noundef %144, ptr noundef %132, float noundef %145, ptr noundef nonnull %16) #38
  br label %353

146:                                              ; preds = %67
  %147 = load ptr, ptr %10, align 8, !tbaa !72
  %148 = load double, ptr %147, align 8, !tbaa !102
  %149 = fadd double %148, -5.000000e-01
  %150 = call double @llvm.ceil.f64(double %149)
  %151 = fptosi double %150 to i64
  %152 = icmp eq i64 %69, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct._SegmentInfo, ptr %147, i64 0, i32 1
  %155 = load double, ptr %154, align 8, !tbaa !103
  %156 = fadd double %155, -5.000000e-01
  %157 = call double @llvm.ceil.f64(double %156)
  %158 = fptosi double %157 to i64
  %159 = icmp eq i64 %42, %158
  br i1 %159, label %167, label %160

160:                                              ; preds = %153, %146
  %161 = call fastcc double @GetStopColorOffset(ptr noundef nonnull %73, i64 noundef %69, i64 noundef %42) #38
  %162 = load i32, ptr %73, align 8, !tbaa !230
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = load double, ptr %9, align 8, !tbaa !57
  %166 = fdiv double %161, %165
  br label %167

167:                                              ; preds = %160, %164, %153
  %168 = phi double [ %166, %164 ], [ %161, %160 ], [ %70, %153 ]
  %169 = fcmp olt double %168, 0.000000e+00
  %170 = fneg double %168
  %171 = select i1 %169, double %170, double %168
  %172 = call double @fmod(double noundef %171, double noundef 2.000000e+00) #35
  %173 = fptosi double %172 to i64
  %174 = icmp eq i64 %173, 0
  %175 = call double @fmod(double noundef %171, double noundef 1.000000e+00) #35
  %176 = fsub double 1.000000e+00, %175
  %177 = select i1 %174, double %175, double %176
  %178 = load ptr, ptr %8, align 8, !tbaa !72
  %179 = getelementptr inbounds %struct._GradientInfo, ptr %178, i64 0, i32 4
  %180 = load i64, ptr %179, align 8, !tbaa !232
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %167
  %183 = getelementptr inbounds %struct._GradientInfo, ptr %178, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !233
  br label %185

185:                                              ; preds = %182, %191
  %186 = phi i64 [ 0, %182 ], [ %192, %191 ]
  %187 = getelementptr inbounds %struct._StopInfo, ptr %184, i64 %186, i32 1
  %188 = load float, ptr %187, align 8, !tbaa !234
  %189 = fpext float %188 to double
  %190 = fcmp olt double %177, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %185
  %192 = add nuw nsw i64 %186, 1
  %193 = icmp eq i64 %192, %180
  br i1 %193, label %201, label %185, !llvm.loop !237

194:                                              ; preds = %185
  %195 = icmp eq i64 %186, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %167, %194
  %197 = getelementptr inbounds %struct._GradientInfo, ptr %178, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %198, i64 56, i1 false), !tbaa.struct !109
  br label %353

199:                                              ; preds = %194
  %200 = icmp eq i64 %186, %180
  br i1 %200, label %201, label %206

201:                                              ; preds = %191, %199
  %202 = getelementptr inbounds %struct._GradientInfo, ptr %178, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !233
  %204 = getelementptr %struct._StopInfo, ptr %203, i64 %180
  %205 = getelementptr %struct._StopInfo, ptr %204, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %205, i64 56, i1 false), !tbaa.struct !109
  br label %353

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct._GradientInfo, ptr %178, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !233
  %209 = getelementptr %struct._StopInfo, ptr %208, i64 %186
  %210 = getelementptr %struct._StopInfo, ptr %209, i64 -1
  %211 = getelementptr %struct._StopInfo, ptr %209, i64 -1, i32 1
  %212 = load float, ptr %211, align 8, !tbaa !234
  %213 = fpext float %212 to double
  %214 = fsub double %177, %213
  %215 = getelementptr inbounds %struct._StopInfo, ptr %208, i64 %186, i32 1
  %216 = load float, ptr %215, align 8, !tbaa !234
  %217 = fsub float %216, %212
  %218 = fpext float %217 to double
  %219 = fdiv double %214, %218
  %220 = fsub double 1.000000e+00, %219
  %221 = fptrunc double %220 to float
  %222 = fptrunc double %219 to float
  call fastcc void @MagickPixelCompositeBlend(ptr noundef %210, float noundef %221, ptr noundef nonnull %209, float noundef %222, ptr noundef nonnull %16) #38
  br label %353

223:                                              ; preds = %67
  %224 = load ptr, ptr %10, align 8, !tbaa !72
  %225 = load double, ptr %224, align 8, !tbaa !102
  %226 = fadd double %225, -5.000000e-01
  %227 = call double @llvm.ceil.f64(double %226)
  %228 = fptosi double %227 to i64
  %229 = icmp eq i64 %69, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct._SegmentInfo, ptr %224, i64 0, i32 1
  %232 = load double, ptr %231, align 8, !tbaa !103
  %233 = fadd double %232, -5.000000e-01
  %234 = call double @llvm.ceil.f64(double %233)
  %235 = fptosi double %234 to i64
  %236 = icmp eq i64 %42, %235
  br i1 %236, label %286, label %237

237:                                              ; preds = %230, %223
  %238 = call fastcc double @GetStopColorOffset(ptr noundef nonnull %73, i64 noundef %69, i64 noundef %42) #38
  %239 = load i32, ptr %73, align 8, !tbaa !230
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %261

241:                                              ; preds = %237
  %242 = load double, ptr %9, align 8, !tbaa !57
  %243 = call double @fmod(double noundef %238, double noundef %242) #35
  %244 = fcmp olt double %243, 0.000000e+00
  %245 = load double, ptr %9, align 8, !tbaa !57
  br i1 %244, label %246, label %250

246:                                              ; preds = %241
  %247 = fneg double %243
  %248 = call double @fmod(double noundef %247, double noundef %245) #35
  %249 = fsub double %245, %248
  br label %252

250:                                              ; preds = %241
  %251 = call double @fmod(double noundef %238, double noundef %245) #35
  br label %252

252:                                              ; preds = %250, %246
  %253 = phi double [ %249, %246 ], [ %251, %250 ]
  %254 = load double, ptr %9, align 8, !tbaa !57
  %255 = fcmp olt double %253, %254
  %256 = fadd double %253, 1.000000e+00
  %257 = fcmp ogt double %256, %254
  %258 = and i1 %255, %257
  %259 = fdiv double %253, %254
  %260 = load ptr, ptr %8, align 8, !tbaa !72
  br label %286

261:                                              ; preds = %237
  %262 = getelementptr inbounds %struct._GradientInfo, ptr %73, i64 0, i32 9
  %263 = load float, ptr %262, align 8, !tbaa !238
  %264 = fpext float %263 to double
  %265 = call double @fmod(double noundef %238, double noundef %264) #35
  %266 = fcmp olt double %265, 0.000000e+00
  %267 = load ptr, ptr %8, align 8, !tbaa !72
  %268 = getelementptr inbounds %struct._GradientInfo, ptr %267, i64 0, i32 9
  %269 = load float, ptr %268, align 8, !tbaa !238
  %270 = fpext float %269 to double
  br i1 %266, label %271, label %275

271:                                              ; preds = %261
  %272 = fneg double %265
  %273 = call double @fmod(double noundef %272, double noundef %270) #35
  %274 = fsub double %270, %273
  br label %277

275:                                              ; preds = %261
  %276 = call double @fmod(double noundef %238, double noundef %270) #35
  br label %277

277:                                              ; preds = %275, %271
  %278 = phi double [ %274, %271 ], [ %276, %275 ]
  %279 = fadd double %278, 1.000000e+00
  %280 = load ptr, ptr %8, align 8, !tbaa !72
  %281 = getelementptr inbounds %struct._GradientInfo, ptr %280, i64 0, i32 9
  %282 = load float, ptr %281, align 8, !tbaa !238
  %283 = fpext float %282 to double
  %284 = fcmp ogt double %279, %283
  %285 = fdiv double %278, %283
  br label %286

286:                                              ; preds = %252, %277, %230
  %287 = phi ptr [ %260, %252 ], [ %280, %277 ], [ %73, %230 ]
  %288 = phi double [ %259, %252 ], [ %285, %277 ], [ %70, %230 ]
  %289 = phi double [ %253, %252 ], [ %278, %277 ], [ 0.000000e+00, %230 ]
  %290 = phi i1 [ %258, %252 ], [ %284, %277 ], [ false, %230 ]
  %291 = getelementptr inbounds %struct._GradientInfo, ptr %287, i64 0, i32 4
  %292 = load i64, ptr %291, align 8, !tbaa !232
  %293 = icmp sgt i64 %292, 0
  br i1 %293, label %294, label %308

294:                                              ; preds = %286
  %295 = getelementptr inbounds %struct._GradientInfo, ptr %287, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !233
  br label %297

297:                                              ; preds = %294, %303
  %298 = phi i64 [ 0, %294 ], [ %304, %303 ]
  %299 = getelementptr inbounds %struct._StopInfo, ptr %296, i64 %298, i32 1
  %300 = load float, ptr %299, align 8, !tbaa !234
  %301 = fpext float %300 to double
  %302 = fcmp olt double %288, %301
  br i1 %302, label %306, label %303

303:                                              ; preds = %297
  %304 = add nuw nsw i64 %298, 1
  %305 = icmp eq i64 %304, %292
  br i1 %305, label %313, label %297, !llvm.loop !239

306:                                              ; preds = %297
  %307 = icmp eq i64 %298, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %286, %306
  %309 = getelementptr inbounds %struct._GradientInfo, ptr %287, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %310, i64 56, i1 false), !tbaa.struct !109
  br label %353

311:                                              ; preds = %306
  %312 = icmp eq i64 %298, %292
  br i1 %312, label %313, label %318

313:                                              ; preds = %303, %311
  %314 = getelementptr inbounds %struct._GradientInfo, ptr %287, i64 0, i32 3
  %315 = load ptr, ptr %314, align 8, !tbaa !233
  %316 = getelementptr %struct._StopInfo, ptr %315, i64 %292
  %317 = getelementptr %struct._StopInfo, ptr %316, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %317, i64 56, i1 false), !tbaa.struct !109
  br label %353

318:                                              ; preds = %311
  %319 = add nsw i64 %298, -1
  %320 = getelementptr inbounds %struct._GradientInfo, ptr %287, i64 0, i32 3
  %321 = load ptr, ptr %320, align 8, !tbaa !233
  %322 = getelementptr inbounds %struct._StopInfo, ptr %321, i64 %319, i32 1
  %323 = load float, ptr %322, align 8, !tbaa !234
  %324 = fpext float %323 to double
  %325 = fsub double %288, %324
  %326 = getelementptr inbounds %struct._StopInfo, ptr %321, i64 %298, i32 1
  %327 = load float, ptr %326, align 8, !tbaa !234
  %328 = fsub float %327, %323
  %329 = fpext float %328 to double
  %330 = fdiv double %325, %329
  br i1 %290, label %331, label %344

331:                                              ; preds = %318
  %332 = load i32, ptr %287, align 8, !tbaa !230
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %334, label %336

334:                                              ; preds = %331
  %335 = load double, ptr %9, align 8, !tbaa !57
  br label %340

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct._GradientInfo, ptr %287, i64 0, i32 9
  %338 = load float, ptr %337, align 8, !tbaa !238
  %339 = fpext float %338 to double
  br label %340

340:                                              ; preds = %336, %334
  %341 = phi double [ %335, %334 ], [ %339, %336 ]
  %342 = fsub double %341, %289
  %343 = add nsw i64 %292, -1
  br label %344

344:                                              ; preds = %340, %318
  %345 = phi double [ %342, %340 ], [ %330, %318 ]
  %346 = phi i64 [ 0, %340 ], [ %319, %318 ]
  %347 = phi i64 [ %343, %340 ], [ %298, %318 ]
  %348 = getelementptr inbounds %struct._StopInfo, ptr %321, i64 %346
  %349 = fsub double 1.000000e+00, %345
  %350 = fptrunc double %349 to float
  %351 = getelementptr inbounds %struct._StopInfo, ptr %321, i64 %347
  %352 = fptrunc double %345 to float
  call fastcc void @MagickPixelCompositeBlend(ptr noundef %348, float noundef %350, ptr noundef %351, float noundef %352, ptr noundef nonnull %16) #38
  br label %353

353:                                              ; preds = %308, %344, %313, %196, %206, %201, %119, %131, %128, %67
  %354 = phi double [ %70, %67 ], [ %177, %196 ], [ %177, %201 ], [ %177, %206 ], [ %98, %119 ], [ %98, %128 ], [ %98, %131 ], [ %288, %313 ], [ %288, %344 ], [ %288, %308 ]
  %355 = load float, ptr %34, align 4, !tbaa !110
  %356 = load float, ptr %35, align 4, !tbaa !110
  call fastcc void @MagickPixelCompositeOver(ptr noundef nonnull %16, float noundef %355, ptr noundef nonnull %17, float noundef %356, ptr noundef nonnull %17) #38
  %357 = load ptr, ptr %5, align 8, !tbaa !72
  call fastcc void @SetPixelPacket(ptr noundef %357, ptr noundef nonnull %17, ptr noundef nonnull %68, ptr noundef %72) #38
  %358 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 1
  %359 = add nsw i64 %69, 1
  %360 = load i64, ptr %2, align 8, !tbaa !229
  %361 = icmp slt i64 %359, %360
  br i1 %361, label %67, label %362, !llvm.loop !240

362:                                              ; preds = %353, %53
  %363 = load ptr, ptr %4, align 8, !tbaa !72
  %364 = load ptr, ptr %6, align 8, !tbaa !72
  %365 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %363, ptr noundef %364) #40
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %362, %45
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %368

368:                                              ; preds = %367, %362, %40
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #12
  %369 = add nuw i64 %41, 1
  %370 = load i64, ptr %13, align 8, !tbaa !55
  %371 = add i64 %370, 1
  %372 = icmp ult i64 %369, %371
  br i1 %372, label %40, label %373

373:                                              ; preds = %368
  %374 = load i64, ptr %12, align 8, !tbaa !55
  br label %375

375:                                              ; preds = %373, %36
  %376 = phi i64 [ %38, %36 ], [ %374, %373 ]
  %377 = phi i64 [ %37, %36 ], [ %370, %373 ]
  %378 = load i64, ptr %14, align 8, !tbaa !55
  %379 = add i64 %378, %376
  store i64 %379, ptr %12, align 8, !tbaa !55
  %380 = add i64 %378, %377
  %381 = call i64 @llvm.umin.i64(i64 %380, i64 %23)
  store i64 %381, ptr %13, align 8, !tbaa !55
  %382 = add i64 %381, 1
  %383 = icmp ult i64 %379, %382
  br i1 %383, label %36, label %384

384:                                              ; preds = %375, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #12
  br label %385

385:                                              ; preds = %384, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc double @GetStopColorOffset(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #24 {
  %4 = load i32, ptr %0, align 8, !tbaa !230
  switch i32 %4, label %61 [
    i32 0, label %5
    i32 1, label %5
    i32 2, label %41
  ]

5:                                                ; preds = %3, %3
  %6 = getelementptr inbounds %struct._GradientInfo, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct._GradientInfo, ptr %0, i64 0, i32 2, i32 2
  %8 = load double, ptr %7, align 8, !tbaa !105
  %9 = load double, ptr %6, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct._GradientInfo, ptr %0, i64 0, i32 2, i32 3
  %11 = load double, ptr %10, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct._GradientInfo, ptr %0, i64 0, i32 2, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !103
  %14 = sitofp i64 %1 to double
  %15 = sitofp i64 %2 to double
  %16 = insertelement <2 x double> poison, double %8, i64 0
  %17 = insertelement <2 x double> %16, double %14, i64 1
  %18 = insertelement <2 x double> poison, double %9, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = fsub <2 x double> %17, %19
  %21 = insertelement <2 x double> poison, double %11, i64 0
  %22 = insertelement <2 x double> %21, double %15, i64 1
  %23 = insertelement <2 x double> poison, double %13, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = fsub <2 x double> %22, %24
  %26 = fmul <2 x double> %25, %25
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %20, <2 x double> %26)
  %28 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %27)
  %29 = extractelement <2 x double> %28, i64 0
  %30 = extractelement <2 x double> %28, i64 1
  %31 = fmul double %29, %30
  %32 = tail call fastcc double @PerceptibleReciprocal(double noundef %31) #38
  %33 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %34 = fmul <2 x double> %25, %33
  %35 = extractelement <2 x double> %34, i64 0
  %36 = extractelement <2 x double> %20, i64 0
  %37 = extractelement <2 x double> %20, i64 1
  %38 = tail call double @llvm.fmuladd.f64(double %36, double %37, double %35)
  %39 = fmul double %32, %38
  %40 = fmul double %39, %30
  br label %61

41:                                               ; preds = %3
  %42 = sitofp i64 %1 to double
  %43 = getelementptr inbounds %struct._GradientInfo, ptr %0, i64 0, i32 8
  %44 = load double, ptr %43, align 8, !tbaa !241
  %45 = fsub double %42, %44
  %46 = sitofp i64 %2 to double
  %47 = getelementptr inbounds %struct._GradientInfo, ptr %0, i64 0, i32 8, i32 1
  %48 = load double, ptr %47, align 8, !tbaa !242
  %49 = fsub double %46, %48
  %50 = fmul double %49, %49
  %51 = tail call double @llvm.fmuladd.f64(double %45, double %45, double %50)
  %52 = tail call double @llvm.sqrt.f64(double %51)
  %53 = getelementptr inbounds %struct._GradientInfo, ptr %0, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !231
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %61, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct._GradientInfo, ptr %0, i64 0, i32 9
  %58 = load float, ptr %57, align 8, !tbaa !238
  %59 = fpext float %58 to double
  %60 = fdiv double %52, %59
  br label %61

61:                                               ; preds = %3, %56, %41, %5
  %62 = phi double [ %40, %5 ], [ %60, %56 ], [ %52, %41 ], [ 0.000000e+00, %3 ]
  ret double %62
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeBlend(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #10 {
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !110
  %8 = fsub float 6.553500e+04, %7
  %9 = fneg float %1
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %8, float 6.553500e+04)
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !110
  %13 = fsub float 6.553500e+04, %12
  %14 = fneg float %3
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %13, float 6.553500e+04)
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %10, ptr noundef %2, float noundef %15, ptr noundef %4) #38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositePlus(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #10 {
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = insertelement <2 x float> %6, float %3, i64 1
  %8 = fpext <2 x float> %7 to <2 x double>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %10 = fptrunc <2 x double> %9 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %13 = fadd float %11, %12
  %14 = tail call fastcc float @RoundToUnity(float noundef %13) #38
  %15 = fpext float %14 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %15) #38
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !73
  %22 = load <2 x float>, ptr %19, align 8, !tbaa !73
  %23 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %22, %23
  %25 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %21, <2 x float> %24)
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %29 = load float, ptr %28, align 8, !tbaa !118
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %31 = load float, ptr %30, align 8, !tbaa !118
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
  store <4 x float> %42, ptr %20, align 8, !tbaa !73
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !119
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !115
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !115
  %51 = fmul float %50, %12
  %52 = tail call float @llvm.fmuladd.f32(float %11, float %48, float %51)
  %53 = fpext float %52 to double
  %54 = fmul double %17, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %55, ptr %56, align 8, !tbaa !115
  br label %57

57:                                               ; preds = %46, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @RoundToUnity(float noundef %0) unnamed_addr #9 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fcmp ogt float %0, 1.000000e+00
  %4 = select i1 %3, float 1.000000e+00, float %0
  %5 = select i1 %2, float 0.000000e+00, float %4
  ret float %5
}

; Function Attrs: optsize
declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #9 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsPixelGray(ptr nocapture noundef readonly %0) unnamed_addr #24 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %3 = load <2 x i16>, ptr %2, align 2, !tbaa !113
  %4 = uitofp <2 x i16> %3 to <2 x float>
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = fsub <2 x float> %5, %4
  %7 = extractelement <2 x float> %6, i64 0
  %8 = tail call fastcc float @AbsolutePixelValue(float noundef %7) #38
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = extractelement <2 x float> %4, i64 0
  %13 = load i16, ptr %0, align 2, !tbaa !122
  %14 = uitofp i16 %13 to float
  %15 = fsub float %12, %14
  %16 = tail call fastcc float @AbsolutePixelValue(float noundef %15) #38
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetFillColor(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 5
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %3, align 2
  br label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !243
  %14 = add nsw i64 %13, %1
  %15 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !244
  %17 = add nsw i64 %16, %2
  %18 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 58
  %19 = tail call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %6, i32 noundef 7, i64 noundef %14, i64 noundef %17, ptr noundef %3, ptr noundef nonnull %18) #35
  %20 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !211
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 3
  store i16 0, ptr %24, align 2, !tbaa !123
  br label %25

25:                                               ; preds = %11, %23, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickCompositeOver(ptr nocapture noundef readonly %0, float noundef %1, ptr noundef readonly %2, float noundef %3, ptr noundef writeonly %4) unnamed_addr #10 {
  %6 = fcmp oeq float %1, 6.553500e+04
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = icmp eq ptr %4, %2
  br i1 %8, label %51, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %2, align 2
  store i64 %10, ptr %4, align 2
  br label %51

11:                                               ; preds = %5
  %12 = fpext float %1 to double
  %13 = fpext float %3 to double
  %14 = fmul double %12, 0xBDF0002000300040
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %13, double 1.000000e+00)
  %16 = fcmp olt double %15, 0.000000e+00
  %17 = select i1 %16, double 0.000000e+00, double %15
  %18 = fsub double 1.000000e+00, %17
  %19 = tail call fastcc double @PerceptibleReciprocal(double noundef %17) #38
  %20 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !120
  %22 = uitofp i16 %21 to float
  %23 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !120
  %25 = uitofp i16 %24 to float
  %26 = tail call fastcc float @MagickOver_(float noundef %22, float noundef %1, float noundef %25, float noundef %3) #38
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !121
  %30 = uitofp i16 %29 to float
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !121
  %33 = uitofp i16 %32 to float
  %34 = tail call fastcc float @MagickOver_(float noundef %30, float noundef %1, float noundef %33, float noundef %3) #38
  %35 = load i16, ptr %0, align 2, !tbaa !122
  %36 = uitofp i16 %35 to float
  %37 = load i16, ptr %2, align 2, !tbaa !122
  %38 = uitofp i16 %37 to float
  %39 = tail call fastcc float @MagickOver_(float noundef %36, float noundef %1, float noundef %38, float noundef %3) #38
  %40 = insertelement <2 x float> poison, float %39, i64 0
  %41 = insertelement <2 x float> %40, float %34, i64 1
  %42 = fpext <2 x float> %41 to <2 x double>
  %43 = insertelement <4 x double> poison, double %19, i64 0
  %44 = insertelement <4 x double> %43, double %18, i64 1
  %45 = shufflevector <4 x double> %44, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %46 = shufflevector <2 x double> %42, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %47 = insertelement <4 x double> %46, double 6.553500e+04, i64 3
  %48 = insertelement <4 x double> %47, double %27, i64 2
  %49 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %45, <4 x double> %48, <4 x double> <double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01>)
  %50 = fptoui <4 x double> %49 to <4 x i16>
  store <4 x i16> %50, ptr %4, align 2, !tbaa !113
  br label %51

51:                                               ; preds = %7, %9, %11
  ret void
}

; Function Attrs: optsize
declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsColorSimilar(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetOneVirtualMagickPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @FloodfillPaintImage(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AnnotateImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ReadInlineImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @SetImageProgressMonitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @TransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageOpacity(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ParseGravityGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @LogPrimitiveInfo(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load double, ptr %0, align 8
  %3 = fadd double %2, -5.000000e-01
  %4 = tail call double @llvm.ceil.f64(double %3)
  %5 = fptosi double %4 to i64
  %6 = getelementptr inbounds %struct._PointInfo, ptr %0, i64 0, i32 1
  %7 = load double, ptr %6, align 8
  %8 = fadd double %7, -5.000000e-01
  %9 = tail call double @llvm.ceil.f64(double %8)
  %10 = fptosi double %9 to i64
  %11 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !157
  switch i32 %12, label %48 [
    i32 1, label %13
    i32 11, label %22
    i32 12, label %31
    i32 13, label %40
    i32 14, label %44
    i32 0, label %108
  ]

13:                                               ; preds = %1
  %14 = sitofp i64 %5 to double
  %15 = sitofp i64 %10 to double
  %16 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !160
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [6 x ptr], ptr @__const.LogPrimitiveInfo.methods, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4130, ptr noundef nonnull @.str.112, double noundef %14, double noundef %15, ptr noundef %20) #35
  br label %108

22:                                               ; preds = %1
  %23 = sitofp i64 %5 to double
  %24 = sitofp i64 %10 to double
  %25 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !160
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [6 x ptr], ptr @__const.LogPrimitiveInfo.methods, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4137, ptr noundef nonnull @.str.113, double noundef %23, double noundef %24, ptr noundef %29) #35
  br label %108

31:                                               ; preds = %1
  %32 = sitofp i64 %5 to double
  %33 = sitofp i64 %10 to double
  %34 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !160
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [6 x ptr], ptr @__const.LogPrimitiveInfo.methods, i64 0, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  %39 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4144, ptr noundef nonnull @.str.114, double noundef %32, double noundef %33, ptr noundef %38) #35
  br label %108

40:                                               ; preds = %1
  %41 = sitofp i64 %5 to double
  %42 = sitofp i64 %10 to double
  %43 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4151, ptr noundef nonnull @.str.115, double noundef %41, double noundef %42) #35
  br label %108

44:                                               ; preds = %1
  %45 = sitofp i64 %5 to double
  %46 = sitofp i64 %10 to double
  %47 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4157, ptr noundef nonnull @.str.116, double noundef %45, double noundef %46) #35
  br label %108

48:                                               ; preds = %1, %102
  %49 = phi ptr [ %104, %102 ], [ %0, %1 ]
  %50 = phi double [ %70, %102 ], [ %7, %1 ]
  %51 = phi i64 [ %86, %102 ], [ 0, %1 ]
  %52 = phi double [ %68, %102 ], [ %2, %1 ]
  %53 = phi i64 [ %103, %102 ], [ 0, %1 ]
  %54 = phi double [ %67, %102 ], [ -1.000000e+00, %1 ]
  %55 = phi double [ %71, %102 ], [ -1.000000e+00, %1 ]
  %56 = getelementptr inbounds i8, ptr %49, i64 8
  %57 = icmp slt i64 %51, 1
  %58 = load double, ptr %49, align 8
  br i1 %57, label %59, label %66

59:                                               ; preds = %48
  %60 = load double, ptr %56, align 8, !tbaa.struct !162
  %61 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %53, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !159
  %63 = sitofp i64 %62 to double
  %64 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4174, ptr noundef nonnull @.str.117, double noundef %63) #35
  %65 = load double, ptr %49, align 8, !tbaa.struct !108
  br label %66

66:                                               ; preds = %59, %48
  %67 = phi double [ %65, %59 ], [ %58, %48 ]
  %68 = phi double [ %58, %59 ], [ %52, %48 ]
  %69 = phi i64 [ %62, %59 ], [ %51, %48 ]
  %70 = phi double [ %60, %59 ], [ %50, %48 ]
  %71 = load double, ptr %56, align 8, !tbaa.struct !162
  %72 = fsub double %54, %67
  %73 = tail call double @llvm.fabs.f64(double %72)
  %74 = fcmp ult double %73, 1.000000e-15
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = fsub double %55, %71
  %77 = tail call double @llvm.fabs.f64(double %76)
  %78 = fcmp ult double %77, 1.000000e-15
  br i1 %78, label %82, label %79

79:                                               ; preds = %75, %66
  %80 = sitofp i64 %69 to double
  %81 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4181, ptr noundef nonnull @.str.118, double noundef %80, double noundef %67, double noundef %71) #35
  br label %85

82:                                               ; preds = %75
  %83 = sitofp i64 %69 to double
  %84 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4184, ptr noundef nonnull @.str.119, double noundef %83, double noundef %67, double noundef %71) #35
  br label %85

85:                                               ; preds = %82, %79
  %86 = add nsw i64 %69, -1
  %87 = icmp sgt i64 %69, 1
  br i1 %87, label %102, label %88

88:                                               ; preds = %85
  %89 = fsub double %68, %67
  %90 = tail call double @llvm.fabs.f64(double %89)
  %91 = fcmp ult double %90, 1.000000e-15
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = fsub double %70, %71
  %94 = tail call double @llvm.fabs.f64(double %93)
  %95 = fcmp ult double %94, 1.000000e-15
  br i1 %95, label %99, label %96

96:                                               ; preds = %92, %88
  %97 = sitofp i64 %86 to double
  %98 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4192, ptr noundef nonnull @.str.120, double noundef %97) #35
  br label %102

99:                                               ; preds = %92
  %100 = sitofp i64 %86 to double
  %101 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4195, ptr noundef nonnull @.str.121, double noundef %100) #35
  br label %102

102:                                              ; preds = %96, %99, %85
  %103 = add nuw nsw i64 %53, 1
  %104 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %103
  %105 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %103, i32 2
  %106 = load i32, ptr %105, align 8, !tbaa !157
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %48, !llvm.loop !245

108:                                              ; preds = %102, %1, %44, %40, %31, %22, %13
  ret void
}

; Function Attrs: optsize
declare double @ExpandAffine(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca %struct._SegmentInfo, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %4, align 8, !tbaa !72
  store ptr %2, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !80
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3888, ptr noundef nonnull @.str.6, ptr noundef nonnull %20) #35
  br label %22

22:                                               ; preds = %19, %3
  %23 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !159
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %233, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @AcquirePolygonThreadSet(ptr noundef nonnull %2) #38
  store ptr %27, ptr %11, align 8, !tbaa !72
  %28 = icmp eq ptr %27, null
  br i1 %28, label %233, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %16, align 8, !tbaa !80
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3902, ptr noundef nonnull @.str.122) #35
  br label %34

34:                                               ; preds = %32, %29
  %35 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !160
  %37 = add i32 %36, -3
  %38 = icmp ult i32 %37, 2
  %39 = zext i1 %38 to i32
  store i32 %39, ptr %9, align 4, !tbaa !6
  %40 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %41 = tail call double @ExpandAffine(ptr noundef nonnull %40) #35
  %42 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %43 = load double, ptr %42, align 8, !tbaa !26
  %44 = fmul double %41, %43
  %45 = fmul double %44, 5.000000e-01
  store double %45, ptr %7, align 8, !tbaa !57
  %46 = load ptr, ptr %27, align 8, !tbaa !72
  %47 = load ptr, ptr %46, align 8, !tbaa !246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %47, i64 32, i1 false), !tbaa.struct !77
  %48 = getelementptr inbounds %struct._PolygonInfo, ptr %46, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !248
  %50 = icmp sgt i64 %49, 1
  %51 = load double, ptr %12, align 8, !tbaa !102
  br i1 %50, label %52, label %89

52:                                               ; preds = %34
  %53 = getelementptr inbounds %struct._SegmentInfo, ptr %12, i64 0, i32 1
  %54 = getelementptr inbounds %struct._SegmentInfo, ptr %12, i64 0, i32 2
  %55 = getelementptr inbounds %struct._SegmentInfo, ptr %12, i64 0, i32 3
  %56 = load double, ptr %53, align 8, !tbaa !103
  %57 = load double, ptr %54, align 8, !tbaa !105
  %58 = load double, ptr %55, align 8, !tbaa !107
  br label %59

59:                                               ; preds = %52, %85
  %60 = phi double [ %58, %52 ], [ %86, %85 ]
  %61 = phi double [ %57, %52 ], [ %80, %85 ]
  %62 = phi double [ %56, %52 ], [ %74, %85 ]
  %63 = phi i64 [ 1, %52 ], [ %87, %85 ]
  %64 = phi double [ %51, %52 ], [ %68, %85 ]
  %65 = getelementptr inbounds %struct._EdgeInfo, ptr %47, i64 %63
  %66 = load double, ptr %65, align 8, !tbaa !249
  %67 = fcmp olt double %66, %64
  %68 = select i1 %67, double %66, double %64
  %69 = getelementptr inbounds %struct._SegmentInfo, ptr %65, i64 0, i32 1
  %70 = load double, ptr %69, align 8, !tbaa !251
  %71 = fcmp olt double %70, %62
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  store double %70, ptr %53, align 8, !tbaa !103
  br label %73

73:                                               ; preds = %72, %59
  %74 = phi double [ %70, %72 ], [ %62, %59 ]
  %75 = getelementptr inbounds %struct._SegmentInfo, ptr %65, i64 0, i32 2
  %76 = load double, ptr %75, align 8, !tbaa !252
  %77 = fcmp ogt double %76, %61
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store double %76, ptr %54, align 8, !tbaa !105
  br label %79

79:                                               ; preds = %78, %73
  %80 = phi double [ %76, %78 ], [ %61, %73 ]
  %81 = getelementptr inbounds %struct._SegmentInfo, ptr %65, i64 0, i32 3
  %82 = load double, ptr %81, align 8, !tbaa !253
  %83 = fcmp ogt double %82, %60
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store double %82, ptr %55, align 8, !tbaa !107
  br label %85

85:                                               ; preds = %79, %84
  %86 = phi double [ %60, %79 ], [ %82, %84 ]
  %87 = add nuw nsw i64 %63, 1
  %88 = icmp eq i64 %87, %49
  br i1 %88, label %89, label %59, !llvm.loop !254

89:                                               ; preds = %85, %34
  %90 = phi double [ %51, %34 ], [ %68, %85 ]
  %91 = fadd double %45, 1.000000e+00
  %92 = fsub double %90, %91
  %93 = fcmp olt double %92, 0.000000e+00
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = fadd double %92, -5.000000e-01
  %96 = tail call double @llvm.ceil.f64(double %95)
  %97 = fptoui double %96 to i64
  %98 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %99 = load i64, ptr %98, align 8, !tbaa !104
  %100 = icmp ugt i64 %99, %97
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = uitofp i64 %99 to double
  %103 = fadd double %102, -1.000000e+00
  br label %104

104:                                              ; preds = %94, %101, %89
  %105 = phi double [ 0.000000e+00, %89 ], [ %103, %101 ], [ %92, %94 ]
  store double %105, ptr %12, align 8, !tbaa !102
  %106 = getelementptr inbounds %struct._SegmentInfo, ptr %12, i64 0, i32 1
  %107 = load double, ptr %106, align 8, !tbaa !103
  %108 = fsub double %107, %91
  %109 = fcmp olt double %108, 0.000000e+00
  br i1 %109, label %120, label %110

110:                                              ; preds = %104
  %111 = fadd double %108, -5.000000e-01
  %112 = tail call double @llvm.ceil.f64(double %111)
  %113 = fptoui double %112 to i64
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %115 = load i64, ptr %114, align 8, !tbaa !106
  %116 = icmp ugt i64 %115, %113
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = uitofp i64 %115 to double
  %119 = fadd double %118, -1.000000e+00
  br label %120

120:                                              ; preds = %110, %117, %104
  %121 = phi double [ 0.000000e+00, %104 ], [ %119, %117 ], [ %108, %110 ]
  store double %121, ptr %106, align 8, !tbaa !103
  %122 = getelementptr inbounds %struct._SegmentInfo, ptr %12, i64 0, i32 2
  %123 = load double, ptr %122, align 8, !tbaa !105
  %124 = fadd double %91, %123
  %125 = fcmp olt double %124, 0.000000e+00
  br i1 %125, label %136, label %126

126:                                              ; preds = %120
  %127 = fadd double %124, 5.000000e-01
  %128 = tail call double @llvm.floor.f64(double %127)
  %129 = fptoui double %128 to i64
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %131 = load i64, ptr %130, align 8, !tbaa !104
  %132 = icmp ugt i64 %131, %129
  br i1 %132, label %136, label %133

133:                                              ; preds = %126
  %134 = uitofp i64 %131 to double
  %135 = fadd double %134, -1.000000e+00
  br label %136

136:                                              ; preds = %126, %133, %120
  %137 = phi double [ 0.000000e+00, %120 ], [ %135, %133 ], [ %124, %126 ]
  store double %137, ptr %122, align 8, !tbaa !105
  %138 = getelementptr inbounds %struct._SegmentInfo, ptr %12, i64 0, i32 3
  %139 = load double, ptr %138, align 8, !tbaa !107
  %140 = fadd double %91, %139
  %141 = fcmp olt double %140, 0.000000e+00
  br i1 %141, label %152, label %142

142:                                              ; preds = %136
  %143 = fadd double %140, 5.000000e-01
  %144 = tail call double @llvm.floor.f64(double %143)
  %145 = fptoui double %144 to i64
  %146 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %147 = load i64, ptr %146, align 8, !tbaa !106
  %148 = icmp ugt i64 %147, %145
  br i1 %148, label %152, label %149

149:                                              ; preds = %142
  %150 = uitofp i64 %147 to double
  %151 = fadd double %150, -1.000000e+00
  br label %152

152:                                              ; preds = %142, %149, %136
  %153 = phi double [ 0.000000e+00, %136 ], [ %151, %149 ], [ %140, %142 ]
  store double %153, ptr %138, align 8, !tbaa !107
  store i32 1, ptr %10, align 4, !tbaa !6
  %154 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %154, ptr %8, align 8, !tbaa !72
  %155 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %154) #35
  store ptr %155, ptr %6, align 8, !tbaa !72
  %156 = load i64, ptr %23, align 8, !tbaa !159
  %157 = icmp eq i64 %156, 1
  br i1 %157, label %158, label %192

158:                                              ; preds = %152
  %159 = fadd double %121, -5.000000e-01
  %160 = tail call double @llvm.ceil.f64(double %159)
  %161 = fptosi double %160 to i64
  store i64 %161, ptr %13, align 8, !tbaa !55
  %162 = fadd double %153, 5.000000e-01
  %163 = tail call double @llvm.floor.f64(double %162)
  %164 = fptosi double %163 to i64
  store i64 %164, ptr %14, align 8, !tbaa !55
  %165 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %166 = and i64 %165, 576460752303423487
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %158
  %169 = tail call i32 @GetImagePixelCacheType(ptr noundef %0) #35
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = tail call i32 @GetImagePixelCacheType(ptr noundef %0) #35
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  br label %180

176:                                              ; preds = %171, %168, %158
  %177 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %178 = icmp ult i64 %177, 2
  %179 = select i1 %178, i64 1, i64 2
  br label %180

180:                                              ; preds = %176, %174
  %181 = phi i64 [ %175, %174 ], [ %179, %176 ]
  %182 = trunc i64 %181 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %182)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @DrawPolygonPrimitive.omp_outlined, ptr nonnull %13, ptr nonnull %14, ptr nonnull %10, ptr nonnull %12, ptr nonnull %6, ptr nonnull %8, ptr nonnull %5, ptr nonnull %4)
  %183 = load ptr, ptr %6, align 8, !tbaa !72
  %184 = call ptr @DestroyCacheView(ptr noundef %183) #35
  store ptr %184, ptr %6, align 8, !tbaa !72
  %185 = call fastcc ptr @DestroyPolygonThreadSet(ptr noundef nonnull %27) #38
  %186 = load i32, ptr %16, align 8, !tbaa !80
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %180
  %189 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3986, ptr noundef nonnull @.str.123) #35
  br label %190

190:                                              ; preds = %188, %180
  %191 = load i32, ptr %10, align 4, !tbaa !6
  br label %233

192:                                              ; preds = %152
  %193 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %194 = load i32, ptr %193, align 8, !tbaa !211
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #35
  br label %198

198:                                              ; preds = %196, %192
  %199 = fadd double %121, -5.000000e-01
  %200 = tail call double @llvm.ceil.f64(double %199)
  %201 = fptosi double %200 to i64
  store i64 %201, ptr %13, align 8, !tbaa !55
  %202 = fadd double %153, 5.000000e-01
  %203 = tail call double @llvm.floor.f64(double %202)
  %204 = fptosi double %203 to i64
  store i64 %204, ptr %14, align 8, !tbaa !55
  %205 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %206 = and i64 %205, 576460752303423487
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %198
  %209 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #35
  %210 = icmp eq i32 %209, 3
  br i1 %210, label %216, label %211

211:                                              ; preds = %208
  %212 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #35
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  br label %220

216:                                              ; preds = %211, %208, %198
  %217 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %218 = icmp ult i64 %217, 2
  %219 = select i1 %218, i64 1, i64 2
  br label %220

220:                                              ; preds = %216, %214
  %221 = phi i64 [ %215, %214 ], [ %219, %216 ]
  %222 = trunc i64 %221 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %222)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @DrawPolygonPrimitive.omp_outlined.124, ptr nonnull %13, ptr nonnull %14, ptr nonnull %10, ptr nonnull %12, ptr nonnull %6, ptr nonnull %8, ptr nonnull %11, ptr nonnull %7, ptr nonnull %9, ptr nonnull %4)
  %223 = load ptr, ptr %6, align 8, !tbaa !72
  %224 = call ptr @DestroyCacheView(ptr noundef %223) #35
  store ptr %224, ptr %6, align 8, !tbaa !72
  %225 = load ptr, ptr %11, align 8, !tbaa !72
  %226 = call fastcc ptr @DestroyPolygonThreadSet(ptr noundef %225) #38
  store ptr %226, ptr %11, align 8, !tbaa !72
  %227 = load i32, ptr %16, align 8, !tbaa !80
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %220
  %230 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4065, ptr noundef nonnull @.str.123) #35
  br label %231

231:                                              ; preds = %229, %220
  %232 = load i32, ptr %10, align 4, !tbaa !6
  br label %233

233:                                              ; preds = %26, %22, %231, %190
  %234 = phi i32 [ %191, %190 ], [ %232, %231 ], [ 1, %22 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret i32 %234
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawDashPolygon(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1549, ptr noundef nonnull @.str.143) #35
  br label %9

9:                                                ; preds = %7, %3
  %10 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %0) #38
  %11 = getelementptr inbounds %struct._DrawInfo, ptr %10, i64 0, i32 17
  store i64 0, ptr %11, align 8, !tbaa !31
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %17, %12 ]
  %14 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1, i64 %13, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !157
  %16 = icmp eq i32 %15, 0
  %17 = add nuw nsw i64 %13, 1
  br i1 %16, label %18, label %12, !llvm.loop !255

18:                                               ; preds = %12
  %19 = shl nuw i64 %13, 1
  %20 = or disjoint i64 %19, 1
  %21 = tail call ptr @AcquireQuantumMemory(i64 noundef %20, i64 noundef 40) #39
  %22 = icmp eq ptr %21, null
  br i1 %22, label %204, label %23

23:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !166
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 3
  %25 = tail call double @ExpandAffine(ptr noundef nonnull %24) #35
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 36
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = load double, ptr %27, align 8, !tbaa !57
  %29 = fadd double %28, -5.000000e-01
  %30 = fmul double %25, %29
  %31 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 18
  %32 = load double, ptr %31, align 8, !tbaa !61
  %33 = fcmp une double %32, 0.000000e+00
  %34 = fmul double %25, %32
  %35 = select i1 %33, double %34, double 0.000000e+00
  %36 = fcmp ogt double %35, 0.000000e+00
  br i1 %36, label %37, label %69

37:                                               ; preds = %23
  %38 = load double, ptr %27, align 8, !tbaa !57
  %39 = fcmp ugt double %38, 0.000000e+00
  br i1 %39, label %44, label %69

40:                                               ; preds = %60
  %41 = getelementptr inbounds double, ptr %27, i64 %62
  %42 = load double, ptr %41, align 8, !tbaa !57
  %43 = fcmp ugt double %42, 0.000000e+00
  br i1 %43, label %44, label %64, !llvm.loop !256

44:                                               ; preds = %37, %40
  %45 = phi double [ %42, %40 ], [ %38, %37 ]
  %46 = phi double [ %61, %40 ], [ %35, %37 ]
  %47 = phi i64 [ 0, %40 ], [ 1, %37 ]
  %48 = phi i64 [ %62, %40 ], [ 0, %37 ]
  %49 = icmp eq i64 %48, 0
  %50 = select i1 %49, double -5.000000e-01, double 5.000000e-01
  %51 = fadd double %50, %45
  %52 = fmul double %25, %51
  %53 = fcmp ogt double %46, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = fcmp olt double %46, %52
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = fsub double %52, %46
  br label %69

58:                                               ; preds = %54
  %59 = add nuw nsw i64 %48, 1
  br label %69

60:                                               ; preds = %44
  %61 = fsub double %46, %52
  %62 = add nuw nsw i64 %48, 1
  %63 = fcmp ogt double %61, 0.000000e+00
  br i1 %63, label %40, label %64, !llvm.loop !256

64:                                               ; preds = %60, %40
  %65 = getelementptr inbounds double, ptr %27, i64 %62
  %66 = load double, ptr %65, align 8, !tbaa !57
  %67 = fadd double %66, 5.000000e-01
  %68 = fmul double %25, %67
  br label %69

69:                                               ; preds = %64, %37, %58, %23, %56
  %70 = phi i64 [ %47, %56 ], [ 1, %23 ], [ 0, %58 ], [ 1, %37 ], [ 0, %64 ]
  %71 = phi i64 [ %48, %56 ], [ 0, %23 ], [ %59, %58 ], [ 0, %37 ], [ %62, %64 ]
  %72 = phi double [ %57, %56 ], [ %30, %23 ], [ %52, %58 ], [ %30, %37 ], [ %68, %64 ]
  %73 = icmp ugt i64 %13, 1
  br i1 %73, label %74, label %197

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 0, i32 1
  br label %76

76:                                               ; preds = %74, %175
  %77 = phi i64 [ %71, %74 ], [ %165, %175 ]
  %78 = phi i64 [ %70, %74 ], [ %176, %175 ]
  %79 = phi i64 [ 1, %74 ], [ %177, %175 ]
  %80 = phi double [ %72, %74 ], [ %168, %175 ]
  %81 = phi i32 [ 1, %74 ], [ %162, %175 ]
  %82 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1, i64 %79
  %83 = getelementptr %struct._PrimitiveInfo, ptr %82, i64 -1
  %84 = load <2 x double>, ptr %82, align 8, !tbaa !57
  %85 = load <2 x double>, ptr %83, align 8, !tbaa !57
  %86 = fsub <2 x double> %84, %85
  %87 = extractelement <2 x double> %86, i64 0
  %88 = extractelement <2 x double> %86, i64 1
  %89 = tail call double @hypot(double noundef %87, double noundef %88) #35
  %90 = fcmp oeq double %80, 0.000000e+00
  br i1 %90, label %91, label %104

91:                                               ; preds = %76
  %92 = add nsw i64 %77, 1
  %93 = load ptr, ptr %26, align 8, !tbaa !68
  %94 = getelementptr inbounds double, ptr %93, i64 %92
  %95 = load double, ptr %94, align 8, !tbaa !57
  %96 = fcmp oeq double %95, 0.000000e+00
  %97 = select i1 %96, i64 0, i64 %92
  %98 = getelementptr inbounds double, ptr %93, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !57
  %100 = icmp eq i64 %97, 0
  %101 = select i1 %100, double -5.000000e-01, double 5.000000e-01
  %102 = fadd double %99, %101
  %103 = fmul double %25, %102
  br label %104

104:                                              ; preds = %91, %76
  %105 = phi double [ %103, %91 ], [ %80, %76 ]
  %106 = phi i64 [ %97, %91 ], [ %77, %76 ]
  %107 = fadd double %105, 0.000000e+00
  %108 = fcmp ugt double %107, %89
  br i1 %108, label %161, label %109

109:                                              ; preds = %104
  %110 = insertelement <2 x double> poison, double %89, i64 0
  %111 = shufflevector <2 x double> %110, <2 x double> poison, <2 x i32> zeroinitializer
  %112 = insertelement <2 x double> poison, double %89, i64 0
  %113 = shufflevector <2 x double> %112, <2 x double> poison, <2 x i32> zeroinitializer
  br label %114

114:                                              ; preds = %109, %144
  %115 = phi double [ %159, %144 ], [ %107, %109 ]
  %116 = phi i64 [ %152, %144 ], [ %106, %109 ]
  %117 = phi i64 [ %146, %144 ], [ %78, %109 ]
  %118 = phi double [ %158, %144 ], [ %105, %109 ]
  %119 = phi i32 [ %145, %144 ], [ %81, %109 ]
  %120 = and i64 %116, 1
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !166
  %123 = load <2 x double>, ptr %83, align 8, !tbaa !57
  %124 = insertelement <2 x double> poison, double %115, i64 0
  %125 = shufflevector <2 x double> %124, <2 x double> poison, <2 x i32> zeroinitializer
  %126 = fmul <2 x double> %86, %125
  %127 = fdiv <2 x double> %126, %111
  %128 = fadd <2 x double> %127, %123
  store <2 x double> %128, ptr %21, align 8, !tbaa !57
  br label %144

129:                                              ; preds = %114
  %130 = icmp slt i64 %117, %19
  br i1 %130, label %131, label %161

131:                                              ; preds = %129
  %132 = add nsw i64 %117, 1
  %133 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 %117
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %133, ptr noundef nonnull align 8 dereferenceable(40) %83, i64 40, i1 false), !tbaa.struct !166
  %134 = insertelement <2 x double> poison, double %115, i64 0
  %135 = shufflevector <2 x double> %134, <2 x double> poison, <2 x i32> zeroinitializer
  %136 = fmul <2 x double> %86, %135
  %137 = load <2 x double>, ptr %83, align 8, !tbaa !57
  %138 = fdiv <2 x double> %136, %113
  %139 = fadd <2 x double> %138, %137
  store <2 x double> %139, ptr %133, align 8, !tbaa !57
  %140 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 %117, i32 1
  store i64 1, ptr %140, align 8, !tbaa !159
  store i64 %132, ptr %75, align 8, !tbaa !159
  %141 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 %132, i32 2
  store i32 0, ptr %141, align 8, !tbaa !157
  %142 = tail call fastcc i32 @DrawStrokePolygon(ptr noundef %2, ptr noundef %10, ptr noundef nonnull %21) #38, !range !129
  %143 = and i32 %142, %119
  br label %144

144:                                              ; preds = %131, %122
  %145 = phi i32 [ %119, %122 ], [ %143, %131 ]
  %146 = phi i64 [ 1, %122 ], [ %132, %131 ]
  %147 = add nsw i64 %116, 1
  %148 = load ptr, ptr %26, align 8, !tbaa !68
  %149 = getelementptr inbounds double, ptr %148, i64 %147
  %150 = load double, ptr %149, align 8, !tbaa !57
  %151 = fcmp oeq double %150, 0.000000e+00
  %152 = select i1 %151, i64 0, i64 %147
  %153 = getelementptr inbounds double, ptr %148, i64 %152
  %154 = load double, ptr %153, align 8, !tbaa !57
  %155 = icmp eq i64 %152, 0
  %156 = select i1 %155, double -5.000000e-01, double 5.000000e-01
  %157 = fadd double %154, %156
  %158 = fmul double %25, %157
  %159 = fadd double %115, %158
  %160 = fcmp ugt double %159, %89
  br i1 %160, label %161, label %114, !llvm.loop !257

161:                                              ; preds = %144, %129, %104
  %162 = phi i32 [ %81, %104 ], [ %119, %129 ], [ %145, %144 ]
  %163 = phi double [ %105, %104 ], [ %118, %129 ], [ %158, %144 ]
  %164 = phi i64 [ %78, %104 ], [ %117, %129 ], [ %146, %144 ]
  %165 = phi i64 [ %106, %104 ], [ %116, %129 ], [ %152, %144 ]
  %166 = phi double [ 0.000000e+00, %104 ], [ %115, %129 ], [ %115, %144 ]
  %167 = fsub double %89, %166
  %168 = fsub double %163, %167
  %169 = and i64 %165, 1
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %161
  %172 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 %164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %172, ptr noundef nonnull align 8 dereferenceable(40) %82, i64 40, i1 false), !tbaa.struct !166
  %173 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 %164, i32 1
  store i64 1, ptr %173, align 8, !tbaa !159
  %174 = add nsw i64 %164, 1
  br label %175

175:                                              ; preds = %161, %171
  %176 = phi i64 [ %164, %161 ], [ %174, %171 ]
  %177 = add nuw nsw i64 %79, 1
  %178 = icmp eq i64 %177, %13
  br i1 %178, label %179, label %76, !llvm.loop !258

179:                                              ; preds = %175
  %180 = fcmp ugt double %166, %89
  br i1 %180, label %197, label %181

181:                                              ; preds = %179
  %182 = and i64 %165, 1
  %183 = icmp eq i64 %182, 0
  %184 = icmp sgt i64 %176, 1
  %185 = select i1 %183, i1 %184, i1 false
  br i1 %185, label %186, label %197

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 %176
  %188 = getelementptr %struct._PrimitiveInfo, ptr %1, i64 %13
  %189 = getelementptr %struct._PrimitiveInfo, ptr %188, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %187, ptr noundef nonnull align 8 dereferenceable(40) %189, i64 40, i1 false), !tbaa.struct !166
  %190 = load <2 x double>, ptr %187, align 8, !tbaa !57
  %191 = fadd <2 x double> %190, <double 1.000000e-15, double 1.000000e-15>
  store <2 x double> %191, ptr %187, align 8, !tbaa !57
  %192 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 %176, i32 1
  store i64 1, ptr %192, align 8, !tbaa !159
  %193 = add nuw nsw i64 %176, 1
  %194 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 0, i32 1
  store i64 %193, ptr %194, align 8, !tbaa !159
  %195 = getelementptr inbounds %struct._PrimitiveInfo, ptr %21, i64 %193, i32 2
  store i32 0, ptr %195, align 8, !tbaa !157
  %196 = tail call fastcc i32 @DrawStrokePolygon(ptr noundef %2, ptr noundef %10, ptr noundef nonnull %21) #38, !range !129
  br label %197

197:                                              ; preds = %69, %186, %181, %179
  %198 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %21) #35
  %199 = tail call ptr @DestroyDrawInfo(ptr noundef %10) #38
  %200 = load i32, ptr %4, align 8, !tbaa !80
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %197
  %203 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1652, ptr noundef nonnull @.str.144) #35
  br label %204

204:                                              ; preds = %197, %202, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @DrawStrokePolygon(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4717, ptr noundef nonnull @.str.145) #35
  br label %9

9:                                                ; preds = %7, %3
  %10 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #38
  %11 = getelementptr inbounds %struct._DrawInfo, ptr %10, i64 0, i32 5
  %12 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 6
  %13 = load i64, ptr %12, align 4
  store i64 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct._DrawInfo, ptr %10, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = tail call ptr @DestroyImage(ptr noundef nonnull %15) #35
  store ptr %18, ptr %14, align 8, !tbaa !58
  br label %19

19:                                               ; preds = %17, %9
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %10, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 58
  %25 = tail call ptr @CloneImage(ptr noundef nonnull %21, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %24) #35
  store ptr %25, ptr %14, align 8, !tbaa !58
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct._DrawInfo, ptr %10, i64 0, i32 6, i32 3
  store i16 -1, ptr %27, align 2, !tbaa !139
  %28 = getelementptr inbounds %struct._DrawInfo, ptr %10, i64 0, i32 7
  store double 0.000000e+00, ptr %28, align 8, !tbaa !26
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %10, i64 0, i32 14
  store i32 2, ptr %29, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct._PrimitiveInfo, ptr %2, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !157
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 15
  br label %35

35:                                               ; preds = %33, %63
  %36 = phi ptr [ %2, %33 ], [ %65, %63 ]
  %37 = tail call fastcc ptr @TraceStrokePolygon(ptr noundef nonnull %1, ptr noundef nonnull %36) #38
  %38 = tail call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %10, ptr noundef %37) #38
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %35
  %42 = tail call ptr @RelinquishMagickMemory(ptr noundef %37) #35
  %43 = getelementptr inbounds %struct._PrimitiveInfo, ptr %36, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !159
  %45 = getelementptr inbounds %struct._PrimitiveInfo, ptr %36, i64 %44
  %46 = getelementptr inbounds %struct._PrimitiveInfo, ptr %45, i64 -1
  %47 = load double, ptr %46, align 8, !tbaa !178
  %48 = load double, ptr %36, align 8, !tbaa !178
  %49 = fcmp oeq double %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = getelementptr %struct._PrimitiveInfo, ptr %45, i64 -1, i32 0, i32 1
  %52 = load double, ptr %51, align 8, !tbaa !179
  %53 = getelementptr inbounds %struct._PointInfo, ptr %36, i64 0, i32 1
  %54 = load double, ptr %53, align 8, !tbaa !179
  %55 = fcmp oeq double %52, %54
  br label %56

56:                                               ; preds = %50, %41
  %57 = phi i1 [ false, %41 ], [ %55, %50 ]
  %58 = load i32, ptr %34, align 4, !tbaa !29
  %59 = icmp ne i32 %58, 2
  %60 = select i1 %59, i1 true, i1 %57
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  tail call fastcc void @DrawRoundLinecap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %36) #38
  tail call fastcc void @DrawRoundLinecap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %46) #38
  %62 = load i64, ptr %43, align 8, !tbaa !159
  br label %63

63:                                               ; preds = %56, %61
  %64 = phi i64 [ %44, %56 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct._PrimitiveInfo, ptr %36, i64 %64
  %66 = getelementptr inbounds %struct._PrimitiveInfo, ptr %36, i64 %64, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !157
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %35, !llvm.loop !259

69:                                               ; preds = %63, %35, %26
  %70 = phi i32 [ 1, %26 ], [ 1, %63 ], [ 0, %35 ]
  %71 = tail call ptr @DestroyDrawInfo(ptr noundef %10) #38
  %72 = load i32, ptr %4, align 8, !tbaa !80
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4748, ptr noundef nonnull @.str.146) #35
  br label %76

76:                                               ; preds = %74, %69
  ret i32 %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @AbsolutePixelValue(float noundef %0) unnamed_addr #9 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: optsize
declare i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquirePolygonThreadSet(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %3 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %7 = shl i64 %6, 3
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef %7) #35
  %9 = tail call fastcc ptr @ConvertPrimitiveToPath(ptr noundef %0) #38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = icmp sgt i64 %2, 0
  br i1 %12, label %18, label %25

13:                                               ; preds = %5
  %14 = tail call fastcc ptr @DestroyPolygonThreadSet(ptr noundef nonnull %3) #38
  br label %27

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, %2
  br i1 %17, label %25, label %18, !llvm.loop !260

18:                                               ; preds = %11, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %11 ]
  %20 = tail call fastcc ptr @ConvertPathToPolygon(ptr noundef nonnull %9) #38
  %21 = getelementptr inbounds ptr, ptr %3, i64 %19
  store ptr %20, ptr %21, align 8, !tbaa !72
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %15

23:                                               ; preds = %18
  %24 = tail call fastcc ptr @DestroyPolygonThreadSet(ptr noundef nonnull %3) #38
  br label %27

25:                                               ; preds = %15, %11
  %26 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %9) #35
  br label %27

27:                                               ; preds = %1, %25, %23, %13
  %28 = phi ptr [ %14, %13 ], [ %24, %23 ], [ %3, %25 ], [ null, %1 ]
  ret ptr %28
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @DrawPolygonPrimitive.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9) #11 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load i64, ptr %2, align 8, !tbaa !55
  %16 = load i64, ptr %3, align 8, !tbaa !55
  %17 = sub i64 %16, %15
  %18 = icmp sgt i64 %15, %16
  br i1 %18, label %96, label %19

19:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  store i64 0, ptr %11, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #12
  store i64 %17, ptr %12, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #12
  store i64 1, ptr %13, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #12
  store i32 0, ptr %14, align 4, !tbaa !6
  %20 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8u(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %21 = load i64, ptr %12, align 8
  %22 = call i64 @llvm.umin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %12, align 8, !tbaa !55
  %23 = load i64, ptr %11, align 8, !tbaa !55
  %24 = icmp ugt i64 %23, %22
  br i1 %24, label %95, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._SegmentInfo, ptr %5, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %87
  %28 = phi i64 [ %22, %25 ], [ %93, %87 ]
  %29 = phi i64 [ %23, %25 ], [ %91, %87 ]
  %30 = icmp ugt i64 %29, %28
  br i1 %30, label %87, label %31

31:                                               ; preds = %27, %81
  %32 = phi i64 [ %82, %81 ], [ %29, %27 ]
  %33 = add i64 %32, %15
  %34 = load i32, ptr %4, align 4, !tbaa !6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %81, label %36

36:                                               ; preds = %31
  %37 = load double, ptr %5, align 8, !tbaa !102
  %38 = fadd double %37, -5.000000e-01
  %39 = call double @llvm.ceil.f64(double %38)
  %40 = fptosi double %39 to i64
  %41 = load double, ptr %26, align 8, !tbaa !105
  %42 = fadd double %41, 5.000000e-01
  %43 = call double @llvm.floor.f64(double %42)
  %44 = fptosi double %43 to i64
  %45 = load ptr, ptr %6, align 8, !tbaa !72
  %46 = sub i64 %44, %40
  %47 = add i64 %46, 1
  %48 = load ptr, ptr %7, align 8, !tbaa !72
  %49 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %45, i64 noundef %40, i64 noundef %33, i64 noundef %47, i64 noundef 1, ptr noundef %48) #40
  %50 = icmp eq ptr %49, null
  br i1 %50, label %80, label %51

51:                                               ; preds = %36
  %52 = icmp sgt i64 %40, %44
  br i1 %52, label %75, label %53

53:                                               ; preds = %51, %71
  %54 = phi ptr [ %72, %71 ], [ %49, %51 ]
  %55 = phi i64 [ %73, %71 ], [ %40, %51 ]
  %56 = load ptr, ptr %8, align 8, !tbaa !72
  %57 = load double, ptr %56, align 8, !tbaa !178
  %58 = fadd double %57, -5.000000e-01
  %59 = call double @llvm.ceil.f64(double %58)
  %60 = fptosi double %59 to i64
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct._PointInfo, ptr %56, i64 0, i32 1
  %64 = load double, ptr %63, align 8, !tbaa !179
  %65 = fadd double %64, -5.000000e-01
  %66 = call double @llvm.ceil.f64(double %65)
  %67 = fptosi double %66 to i64
  %68 = icmp eq i64 %33, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load ptr, ptr %9, align 8, !tbaa !72
  call fastcc void @GetStrokeColor(ptr noundef %70, i64 noundef %55, i64 noundef %33, ptr noundef nonnull %54) #38
  br label %71

71:                                               ; preds = %69, %62, %53
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 1
  %73 = add i64 %55, 1
  %74 = icmp eq i64 %55, %44
  br i1 %74, label %75, label %53, !llvm.loop !261

75:                                               ; preds = %71, %51
  %76 = load ptr, ptr %6, align 8, !tbaa !72
  %77 = load ptr, ptr %7, align 8, !tbaa !72
  %78 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %76, ptr noundef %77) #40
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %36
  store i32 0, ptr %4, align 4, !tbaa !6
  br label %81

81:                                               ; preds = %80, %75, %31
  %82 = add i64 %32, 1
  %83 = load i64, ptr %12, align 8, !tbaa !55
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %31

85:                                               ; preds = %81
  %86 = load i64, ptr %11, align 8, !tbaa !55
  br label %87

87:                                               ; preds = %85, %27
  %88 = phi i64 [ %29, %27 ], [ %86, %85 ]
  %89 = phi i64 [ %28, %27 ], [ %83, %85 ]
  %90 = load i64, ptr %13, align 8, !tbaa !55
  %91 = add i64 %90, %88
  store i64 %91, ptr %11, align 8, !tbaa !55
  %92 = add i64 %90, %89
  %93 = call i64 @llvm.umin.i64(i64 %92, i64 %17)
  store i64 %93, ptr %12, align 8, !tbaa !55
  %94 = icmp ugt i64 %91, %93
  br i1 %94, label %95, label %27

95:                                               ; preds = %87, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  br label %96

96:                                               ; preds = %95, %10
  ret void
}

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc void @GetStrokeColor(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #25 {
  %5 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 6
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %3, align 2
  br label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !243
  %14 = add nsw i64 %13, %1
  %15 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !244
  %17 = add nsw i64 %16, %2
  %18 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 58
  %19 = tail call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %6, i32 noundef 7, i64 noundef %14, i64 noundef %17, ptr noundef %3, ptr noundef nonnull %18) #35
  %20 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !211
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 3
  store i16 0, ptr %24, align 2, !tbaa !123
  br label %25

25:                                               ; preds = %11, %23, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyPolygonThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @DestroyPolygonInfo(ptr noundef nonnull %7) #38
  store ptr %10, ptr %6, align 8, !tbaa !72
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #35
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !262

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #35
  ret ptr %16
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @DrawPolygonPrimitive.omp_outlined.124(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11) #11 {
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca %struct._PixelPacket, align 2
  %19 = alloca %struct._PixelPacket, align 2
  %20 = load i64, ptr %2, align 8, !tbaa !55
  %21 = load i64, ptr %3, align 8, !tbaa !55
  %22 = sub i64 %21, %20
  %23 = icmp sgt i64 %20, %21
  br i1 %23, label %130, label %24

24:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #12
  store i64 0, ptr %13, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  store i64 %22, ptr %14, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #12
  store i64 1, ptr %15, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #12
  store i32 0, ptr %16, align 4, !tbaa !6
  %25 = load i32, ptr %0, align 4, !tbaa !6
  call void @__kmpc_for_static_init_8u(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %16, ptr nonnull %13, ptr nonnull %14, ptr nonnull %15, i64 1, i64 4)
  %26 = load i64, ptr %14, align 8
  %27 = call i64 @llvm.umin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %14, align 8, !tbaa !55
  %28 = load i64, ptr %13, align 8, !tbaa !55
  %29 = icmp ugt i64 %28, %27
  br i1 %29, label %129, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._SegmentInfo, ptr %5, i64 0, i32 2
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %18, i64 0, i32 3
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 0, i32 3
  br label %34

34:                                               ; preds = %30, %121
  %35 = phi i64 [ %27, %30 ], [ %127, %121 ]
  %36 = phi i64 [ %28, %30 ], [ %125, %121 ]
  %37 = icmp ugt i64 %36, %35
  br i1 %37, label %121, label %38

38:                                               ; preds = %34, %115
  %39 = phi i64 [ %116, %115 ], [ %36, %34 ]
  %40 = add i64 %39, %20
  %41 = call fastcc i32 @GetOpenMPThreadId() #38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #12
  %42 = load i32, ptr %4, align 4, !tbaa !6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %115, label %44

44:                                               ; preds = %38
  %45 = load double, ptr %5, align 8, !tbaa !102
  %46 = fadd double %45, -5.000000e-01
  %47 = call double @llvm.ceil.f64(double %46)
  %48 = fptosi double %47 to i64
  %49 = load double, ptr %31, align 8, !tbaa !105
  %50 = fadd double %49, 5.000000e-01
  %51 = call double @llvm.floor.f64(double %50)
  %52 = fptosi double %51 to i64
  %53 = load ptr, ptr %6, align 8, !tbaa !72
  %54 = sub i64 %52, %48
  %55 = add i64 %54, 1
  %56 = load ptr, ptr %7, align 8, !tbaa !72
  %57 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %53, i64 noundef %48, i64 noundef %40, i64 noundef %55, i64 noundef 1, ptr noundef %56) #40
  %58 = icmp eq ptr %57, null
  br i1 %58, label %114, label %59

59:                                               ; preds = %44
  %60 = icmp sgt i64 %48, %52
  br i1 %60, label %109, label %61

61:                                               ; preds = %59
  %62 = sext i32 %41 to i64
  br label %63

63:                                               ; preds = %61, %85
  %64 = phi i64 [ %48, %61 ], [ %107, %85 ]
  %65 = phi ptr [ %57, %61 ], [ %106, %85 ]
  %66 = load ptr, ptr %8, align 8, !tbaa !72
  %67 = getelementptr inbounds ptr, ptr %66, i64 %62
  %68 = load ptr, ptr %67, align 8, !tbaa !72
  %69 = load double, ptr %9, align 8, !tbaa !57
  %70 = load i32, ptr %10, align 4, !tbaa !6
  %71 = load ptr, ptr %11, align 8, !tbaa !72
  %72 = getelementptr inbounds %struct._DrawInfo, ptr %71, i64 0, i32 14
  %73 = load i32, ptr %72, align 8, !tbaa !28
  %74 = call fastcc double @GetOpacityPixel(ptr noundef %68, double noundef %69, i32 noundef %70, i32 noundef %73, i64 noundef %64, i64 noundef %40, ptr noundef nonnull %17) #38
  %75 = load ptr, ptr %11, align 8, !tbaa !72
  %76 = getelementptr inbounds %struct._DrawInfo, ptr %75, i64 0, i32 12
  %77 = load i32, ptr %76, align 8, !tbaa !17
  %78 = icmp eq i32 %77, 0
  %79 = load double, ptr %17, align 8, !tbaa !57
  br i1 %78, label %80, label %85

80:                                               ; preds = %63
  %81 = fcmp ogt double %74, 2.500000e-01
  %82 = select i1 %81, double 1.000000e+00, double 0.000000e+00
  %83 = fcmp ogt double %79, 2.500000e-01
  %84 = select i1 %83, double 1.000000e+00, double 0.000000e+00
  br label %85

85:                                               ; preds = %80, %63
  %86 = phi double [ %84, %80 ], [ %79, %63 ]
  %87 = phi double [ %82, %80 ], [ %74, %63 ]
  call fastcc void @GetFillColor(ptr noundef nonnull %75, i64 noundef %64, i64 noundef %40, ptr noundef nonnull %18) #38
  %88 = load i16, ptr %32, align 2, !tbaa !123
  %89 = xor i16 %88, -1
  %90 = uitofp i16 %89 to double
  %91 = fneg double %87
  %92 = call double @llvm.fmuladd.f64(double %91, double %90, double 6.553500e+04)
  %93 = fptrunc double %92 to float
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 3
  %95 = load i16, ptr %94, align 2, !tbaa !123
  %96 = uitofp i16 %95 to float
  call fastcc void @MagickCompositeOver(ptr noundef nonnull %18, float noundef %93, ptr noundef nonnull %65, float noundef %96, ptr noundef nonnull %65) #38
  %97 = load ptr, ptr %11, align 8, !tbaa !72
  call fastcc void @GetStrokeColor(ptr noundef %97, i64 noundef %64, i64 noundef %40, ptr noundef nonnull %19) #38
  %98 = load i16, ptr %33, align 2, !tbaa !123
  %99 = xor i16 %98, -1
  %100 = uitofp i16 %99 to double
  %101 = fneg double %86
  %102 = call double @llvm.fmuladd.f64(double %101, double %100, double 6.553500e+04)
  store double %102, ptr %17, align 8, !tbaa !57
  %103 = fptrunc double %102 to float
  %104 = load i16, ptr %94, align 2, !tbaa !123
  %105 = uitofp i16 %104 to float
  call fastcc void @MagickCompositeOver(ptr noundef nonnull %19, float noundef %103, ptr noundef nonnull %65, float noundef %105, ptr noundef nonnull %65) #38
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 1
  %107 = add i64 %64, 1
  %108 = icmp eq i64 %64, %52
  br i1 %108, label %109, label %63, !llvm.loop !263

109:                                              ; preds = %85, %59
  %110 = load ptr, ptr %6, align 8, !tbaa !72
  %111 = load ptr, ptr %7, align 8, !tbaa !72
  %112 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %110, ptr noundef %111) #40
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109, %44
  store i32 0, ptr %4, align 4, !tbaa !6
  br label %115

115:                                              ; preds = %114, %109, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #12
  %116 = add i64 %39, 1
  %117 = load i64, ptr %14, align 8, !tbaa !55
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %38

119:                                              ; preds = %115
  %120 = load i64, ptr %13, align 8, !tbaa !55
  br label %121

121:                                              ; preds = %119, %34
  %122 = phi i64 [ %36, %34 ], [ %120, %119 ]
  %123 = phi i64 [ %35, %34 ], [ %117, %119 ]
  %124 = load i64, ptr %15, align 8, !tbaa !55
  %125 = add i64 %124, %122
  store i64 %125, ptr %13, align 8, !tbaa !55
  %126 = add i64 %124, %123
  %127 = call i64 @llvm.umin.i64(i64 %126, i64 %22)
  store i64 %127, ptr %14, align 8, !tbaa !55
  %128 = icmp ugt i64 %125, %127
  br i1 %128, label %129, label %34

129:                                              ; preds = %121, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #12
  br label %130

130:                                              ; preds = %129, %12
  ret void
}

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #25 {
  %1 = tail call i32 @omp_get_thread_num() #38
  ret i32 %1
}

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc double @GetOpacityPixel(ptr nocapture noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, ptr nocapture noundef %6) unnamed_addr #25 {
  store double 0.000000e+00, ptr %6, align 8, !tbaa !57
  %8 = sitofp i64 %5 to double
  %9 = getelementptr inbounds %struct._PolygonInfo, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !248
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %179

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !246
  %14 = sitofp i64 %4 to double
  %15 = fadd double %1, 5.000000e-01
  %16 = fadd double %15, 2.500000e-01
  %17 = fmul double %16, %16
  %18 = fadd double %1, -5.000000e-01
  %19 = fadd double %18, 2.500000e-01
  %20 = fmul double %19, %19
  %21 = icmp eq i32 %2, 0
  %22 = getelementptr inbounds %struct._SegmentInfo, ptr %13, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !251
  %24 = fsub double %23, %1
  %25 = fadd double %24, -5.000000e-01
  %26 = fcmp ult double %25, %8
  br i1 %26, label %34, label %175

27:                                               ; preds = %170
  %28 = getelementptr inbounds %struct._EdgeInfo, ptr %36, i64 1
  %29 = getelementptr inbounds %struct._EdgeInfo, ptr %36, i64 1, i32 0, i32 1
  %30 = load double, ptr %29, align 8, !tbaa !251
  %31 = fsub double %30, %1
  %32 = fadd double %31, -5.000000e-01
  %33 = fcmp ult double %32, %8
  br i1 %33, label %34, label %175, !llvm.loop !264

34:                                               ; preds = %12, %27
  %35 = phi double [ %171, %27 ], [ 0.000000e+00, %12 ]
  %36 = phi ptr [ %28, %27 ], [ %13, %12 ]
  %37 = phi i64 [ %172, %27 ], [ 0, %12 ]
  %38 = getelementptr inbounds %struct._SegmentInfo, ptr %36, i64 0, i32 3
  %39 = load double, ptr %38, align 8, !tbaa !253
  %40 = fadd double %39, %1
  %41 = fadd double %40, 5.000000e-01
  %42 = fcmp olt double %41, %8
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  tail call fastcc void @DestroyEdge(ptr noundef nonnull %0, i64 noundef %37) #38
  br label %170

44:                                               ; preds = %34
  %45 = load double, ptr %36, align 8, !tbaa !249
  %46 = fsub double %45, %1
  %47 = fadd double %46, -5.000000e-01
  %48 = fcmp ult double %47, %14
  br i1 %48, label %49, label %170

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct._SegmentInfo, ptr %36, i64 0, i32 2
  %51 = load double, ptr %50, align 8, !tbaa !252
  %52 = fadd double %51, %1
  %53 = fadd double %52, 5.000000e-01
  %54 = fcmp olt double %53, %14
  br i1 %54, label %170, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct._EdgeInfo, ptr %36, i64 0, i32 6
  %57 = load i64, ptr %56, align 8, !tbaa !265
  %58 = uitofp i64 %57 to double
  %59 = tail call fastcc double @MagickMax(double noundef %58, double noundef 1.000000e+00) #38
  %60 = fptosi double %59 to i64
  %61 = getelementptr inbounds %struct._EdgeInfo, ptr %36, i64 0, i32 2
  %62 = getelementptr inbounds %struct._EdgeInfo, ptr %36, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !266
  %64 = icmp sgt i64 %63, %60
  br i1 %64, label %65, label %170

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct._EdgeInfo, ptr %36, i64 0, i32 1
  %67 = getelementptr inbounds %struct._EdgeInfo, ptr %36, i64 0, i32 5
  br label %68

68:                                               ; preds = %65, %165
  %69 = phi i64 [ %60, %65 ], [ %167, %165 ]
  %70 = phi double [ %35, %65 ], [ %166, %165 ]
  %71 = load ptr, ptr %61, align 8, !tbaa !267
  %72 = getelementptr %struct._PointInfo, ptr %71, i64 %69
  %73 = getelementptr %struct._PointInfo, ptr %72, i64 -1, i32 1
  %74 = load double, ptr %73, align 8, !tbaa !90
  %75 = fsub double %74, %1
  %76 = fadd double %75, -5.000000e-01
  %77 = fcmp ult double %76, %8
  br i1 %77, label %78, label %170

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct._PointInfo, ptr %71, i64 %69, i32 1
  %80 = load double, ptr %79, align 8, !tbaa !90
  %81 = fadd double %80, %1
  %82 = fadd double %81, 5.000000e-01
  %83 = fcmp olt double %82, %8
  br i1 %83, label %165, label %84

84:                                               ; preds = %78
  %85 = load double, ptr %66, align 8, !tbaa !268
  %86 = fcmp une double %85, %8
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store double %8, ptr %66, align 8, !tbaa !268
  store i64 %69, ptr %56, align 8, !tbaa !265
  br label %88

88:                                               ; preds = %87, %84
  %89 = getelementptr inbounds %struct._PointInfo, ptr %72, i64 -1
  %90 = load double, ptr %72, align 8, !tbaa !91
  %91 = load double, ptr %89, align 8, !tbaa !91
  %92 = fsub double %90, %91
  %93 = fsub double %80, %74
  %94 = fsub double %14, %91
  %95 = fsub double %8, %74
  %96 = fmul double %95, %93
  %97 = tail call double @llvm.fmuladd.f64(double %92, double %94, double %96)
  %98 = fcmp olt double %97, 0.000000e+00
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = fmul double %95, %95
  %101 = tail call double @llvm.fmuladd.f64(double %94, double %94, double %100)
  br label %118

102:                                              ; preds = %88
  %103 = fmul double %93, %93
  %104 = tail call double @llvm.fmuladd.f64(double %92, double %92, double %103)
  %105 = fcmp ogt double %97, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = fsub double %14, %90
  %108 = fsub double %8, %80
  %109 = fmul double %108, %108
  %110 = tail call double @llvm.fmuladd.f64(double %107, double %107, double %109)
  br label %118

111:                                              ; preds = %102
  %112 = fdiv double 1.000000e+00, %104
  %113 = fneg double %93
  %114 = fmul double %94, %113
  %115 = tail call double @llvm.fmuladd.f64(double %92, double %95, double %114)
  %116 = fmul double %112, %115
  %117 = fmul double %115, %116
  br label %118

118:                                              ; preds = %106, %111, %99
  %119 = phi double [ %101, %99 ], [ %110, %106 ], [ %117, %111 ]
  %120 = load i32, ptr %67, align 8, !tbaa !269
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %118
  %123 = load double, ptr %6, align 8, !tbaa !57
  %124 = fcmp uge double %123, 1.000000e+00
  %125 = fcmp ugt double %119, %17
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %145, label %127

127:                                              ; preds = %122
  %128 = fcmp ugt double %119, %20
  br i1 %128, label %129, label %142

129:                                              ; preds = %127
  %130 = fcmp une double %119, 1.000000e+00
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = tail call double @sqrt(double noundef %119) #35
  %133 = load double, ptr %6, align 8, !tbaa !57
  br label %134

134:                                              ; preds = %131, %129
  %135 = phi double [ %133, %131 ], [ %123, %129 ]
  %136 = phi double [ %132, %131 ], [ 1.000000e+00, %129 ]
  %137 = fsub double %136, %1
  %138 = fadd double %137, -5.000000e-01
  %139 = fadd double %138, -2.500000e-01
  %140 = fmul double %139, %139
  %141 = fcmp olt double %135, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %134, %127
  %143 = phi double [ 1.000000e+00, %127 ], [ %140, %134 ]
  %144 = phi double [ 0.000000e+00, %127 ], [ %136, %134 ]
  store double %143, ptr %6, align 8, !tbaa !57
  br label %145

145:                                              ; preds = %142, %122, %134, %118
  %146 = phi double [ %136, %134 ], [ 0.000000e+00, %122 ], [ 0.000000e+00, %118 ], [ %144, %142 ]
  %147 = fcmp ogt double %119, 1.000000e+00
  %148 = select i1 %21, i1 true, i1 %147
  %149 = fcmp oge double %70, 1.000000e+00
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %165, label %151

151:                                              ; preds = %145
  %152 = fcmp ugt double %119, 0.000000e+00
  br i1 %152, label %153, label %165

153:                                              ; preds = %151
  %154 = fcmp oeq double %146, 0.000000e+00
  br i1 %154, label %155, label %159

155:                                              ; preds = %153
  %156 = fcmp une double %119, 1.000000e+00
  br i1 %156, label %157, label %159

157:                                              ; preds = %155
  %158 = tail call double @sqrt(double noundef %119) #35
  br label %159

159:                                              ; preds = %155, %157, %153
  %160 = phi double [ %158, %157 ], [ 1.000000e+00, %155 ], [ %146, %153 ]
  %161 = fadd double %160, -1.000000e+00
  %162 = fmul double %161, %161
  %163 = fcmp olt double %70, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %151, %159, %164, %145, %78
  %166 = phi double [ %70, %78 ], [ %70, %145 ], [ %162, %164 ], [ %70, %159 ], [ 1.000000e+00, %151 ]
  %167 = add nsw i64 %69, 1
  %168 = load i64, ptr %62, align 8, !tbaa !266
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %68, label %170, !llvm.loop !270

170:                                              ; preds = %68, %165, %55, %44, %49, %43
  %171 = phi double [ %35, %43 ], [ %35, %44 ], [ %35, %49 ], [ %35, %55 ], [ %70, %68 ], [ %166, %165 ]
  %172 = add nuw nsw i64 %37, 1
  %173 = load i64, ptr %9, align 8, !tbaa !248
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %27, label %175, !llvm.loop !264

175:                                              ; preds = %27, %170, %12
  %176 = phi double [ 0.000000e+00, %12 ], [ %171, %170 ], [ %171, %27 ]
  %177 = phi i64 [ %10, %12 ], [ %173, %170 ], [ %173, %27 ]
  %178 = icmp eq i32 %2, 0
  br i1 %178, label %262, label %181

179:                                              ; preds = %7
  %180 = icmp eq i32 %2, 0
  br i1 %180, label %262, label %251

181:                                              ; preds = %175
  %182 = fcmp ult double %176, 1.000000e+00
  br i1 %182, label %183, label %262

183:                                              ; preds = %181
  %184 = icmp sgt i64 %177, 0
  br i1 %184, label %185, label %251

185:                                              ; preds = %183
  %186 = load ptr, ptr %0, align 8, !tbaa !246
  %187 = sitofp i64 %4 to double
  %188 = insertelement <2 x double> poison, double %187, i64 0
  %189 = insertelement <2 x double> %188, double %8, i64 1
  br label %190

190:                                              ; preds = %185, %246
  %191 = phi i64 [ 0, %185 ], [ %247, %246 ]
  %192 = phi i64 [ 0, %185 ], [ %248, %246 ]
  %193 = phi ptr [ %186, %185 ], [ %249, %246 ]
  %194 = getelementptr inbounds %struct._SegmentInfo, ptr %193, i64 0, i32 1
  %195 = load double, ptr %194, align 8, !tbaa !251
  %196 = fcmp ult double %195, %8
  br i1 %196, label %197, label %251

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct._SegmentInfo, ptr %193, i64 0, i32 3
  %199 = load double, ptr %198, align 8, !tbaa !253
  %200 = fcmp olt double %199, %8
  br i1 %200, label %246, label %201

201:                                              ; preds = %197
  %202 = load double, ptr %193, align 8, !tbaa !249
  %203 = fcmp ult double %202, %187
  br i1 %203, label %204, label %246

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct._SegmentInfo, ptr %193, i64 0, i32 2
  %206 = load double, ptr %205, align 8, !tbaa !252
  %207 = fcmp olt double %206, %187
  br i1 %207, label %240, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct._EdgeInfo, ptr %193, i64 0, i32 6
  %210 = load i64, ptr %209, align 8, !tbaa !265
  %211 = uitofp i64 %210 to double
  %212 = tail call fastcc double @MagickMax(double noundef %211, double noundef 1.000000e+00) #38
  %213 = fptosi double %212 to i64
  %214 = getelementptr inbounds %struct._EdgeInfo, ptr %193, i64 0, i32 3
  %215 = load i64, ptr %214, align 8, !tbaa !266
  %216 = icmp sgt i64 %215, %213
  %217 = getelementptr inbounds %struct._EdgeInfo, ptr %193, i64 0, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !267
  br i1 %216, label %219, label %227

219:                                              ; preds = %208, %224
  %220 = phi i64 [ %225, %224 ], [ %213, %208 ]
  %221 = getelementptr inbounds %struct._PointInfo, ptr %218, i64 %220, i32 1
  %222 = load double, ptr %221, align 8, !tbaa !90
  %223 = fcmp ult double %222, %8
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = add i64 %220, 1
  %226 = icmp eq i64 %225, %215
  br i1 %226, label %227, label %219, !llvm.loop !271

227:                                              ; preds = %224, %219, %208
  %228 = phi i64 [ %213, %208 ], [ %220, %219 ], [ %215, %224 ]
  %229 = getelementptr inbounds %struct._PointInfo, ptr %218, i64 %228
  %230 = getelementptr inbounds %struct._PointInfo, ptr %229, i64 -1
  %231 = load <2 x double>, ptr %230, align 8, !tbaa !57
  %232 = load <2 x double>, ptr %229, align 8, !tbaa !57
  %233 = fsub <2 x double> %232, %231
  %234 = fsub <2 x double> %189, %231
  %235 = shufflevector <2 x double> %234, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %236 = fmul <2 x double> %235, %233
  %237 = extractelement <2 x double> %236, i64 0
  %238 = extractelement <2 x double> %236, i64 1
  %239 = fcmp ugt double %237, %238
  br i1 %239, label %246, label %240

240:                                              ; preds = %227, %204
  %241 = getelementptr inbounds %struct._EdgeInfo, ptr %193, i64 0, i32 4
  %242 = load i64, ptr %241, align 8, !tbaa !272
  %243 = icmp eq i64 %242, 0
  %244 = select i1 %243, i64 -1, i64 1
  %245 = add nsw i64 %244, %191
  br label %246

246:                                              ; preds = %240, %227, %197, %201
  %247 = phi i64 [ %191, %197 ], [ %191, %201 ], [ %191, %227 ], [ %245, %240 ]
  %248 = add nuw nsw i64 %192, 1
  %249 = getelementptr inbounds %struct._EdgeInfo, ptr %193, i64 1
  %250 = icmp eq i64 %248, %177
  br i1 %250, label %251, label %190, !llvm.loop !273

251:                                              ; preds = %246, %190, %179, %183
  %252 = phi double [ %176, %183 ], [ 0.000000e+00, %179 ], [ %176, %190 ], [ %176, %246 ]
  %253 = phi i64 [ 0, %183 ], [ 0, %179 ], [ %247, %246 ], [ %191, %190 ]
  %254 = icmp eq i32 %3, 2
  %255 = tail call fastcc i64 @MagickAbsoluteValue(i64 noundef %253) #38
  br i1 %254, label %259, label %256

256:                                              ; preds = %251
  %257 = and i64 %255, 1
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %261, label %262

259:                                              ; preds = %251
  %260 = icmp eq i64 %255, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %259, %256
  br label %262

262:                                              ; preds = %179, %259, %256, %181, %175, %261
  %263 = phi double [ %252, %261 ], [ 0.000000e+00, %175 ], [ 1.000000e+00, %181 ], [ 1.000000e+00, %256 ], [ 1.000000e+00, %259 ], [ 0.000000e+00, %179 ]
  ret double %263
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ConvertPrimitiveToPath(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !157
  switch i32 %3, label %4 [
    i32 1, label %96
    i32 11, label %96
    i32 12, label %96
    i32 13, label %96
    i32 14, label %96
  ]

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %9, %4 ], [ 0, %1 ]
  %6 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %5, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !157
  %8 = icmp eq i32 %7, 0
  %9 = add nuw nsw i64 %5, 1
  br i1 %8, label %10, label %4, !llvm.loop !274

10:                                               ; preds = %4
  %11 = shl nuw i64 %5, 1
  %12 = add i64 %11, 3
  %13 = tail call ptr @AcquireQuantumMemory(i64 noundef %12, i64 noundef 24) #39
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %2, align 8, !tbaa !157
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %89, label %18

18:                                               ; preds = %15, %82
  %19 = phi ptr [ %85, %82 ], [ %0, %15 ]
  %20 = phi i64 [ %35, %82 ], [ 0, %15 ]
  %21 = phi i64 [ %37, %82 ], [ 0, %15 ]
  %22 = phi i64 [ %83, %82 ], [ 0, %15 ]
  %23 = phi i64 [ %84, %82 ], [ 0, %15 ]
  %24 = phi double [ %61, %82 ], [ -1.000000e+00, %15 ]
  %25 = phi double [ %60, %82 ], [ -1.000000e+00, %15 ]
  %26 = phi <2 x double> [ %36, %82 ], [ <double -1.000000e+00, double -1.000000e+00>, %15 ]
  %27 = icmp slt i64 %21, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %23, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !159
  %31 = load <2 x double>, ptr %19, align 8
  br label %32

32:                                               ; preds = %28, %18
  %33 = phi i32 [ 0, %28 ], [ 3, %18 ]
  %34 = phi i64 [ %30, %28 ], [ %21, %18 ]
  %35 = phi i64 [ %22, %28 ], [ %20, %18 ]
  %36 = phi <2 x double> [ %31, %28 ], [ %26, %18 ]
  %37 = add nsw i64 %34, -1
  %38 = icmp eq i64 %23, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %32
  %40 = load double, ptr %19, align 8, !tbaa !178
  %41 = fsub double %24, %40
  %42 = tail call double @llvm.fabs.f64(double %41)
  %43 = fcmp ult double %42, 1.000000e-15
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct._PointInfo, ptr %19, i64 0, i32 1
  %46 = load double, ptr %45, align 8, !tbaa !179
  %47 = fsub double %25, %46
  %48 = tail call double @llvm.fabs.f64(double %47)
  %49 = fcmp ult double %48, 1.000000e-15
  br i1 %49, label %57, label %50

50:                                               ; preds = %44, %39, %32
  %51 = getelementptr inbounds %struct._PathInfo, ptr %13, i64 %22
  %52 = getelementptr inbounds %struct._PathInfo, ptr %13, i64 %22, i32 1
  store i32 %33, ptr %52, align 8, !tbaa !275
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !108
  %53 = load double, ptr %19, align 8
  %54 = getelementptr inbounds i8, ptr %19, i64 8
  %55 = load double, ptr %54, align 8
  %56 = add nsw i64 %22, 1
  br label %57

57:                                               ; preds = %50, %44
  %58 = phi double [ %55, %50 ], [ %46, %44 ]
  %59 = phi double [ %53, %50 ], [ %40, %44 ]
  %60 = phi double [ %55, %50 ], [ %25, %44 ]
  %61 = phi double [ %53, %50 ], [ %24, %44 ]
  %62 = phi i64 [ %56, %50 ], [ %22, %44 ]
  %63 = icmp sgt i64 %34, 1
  br i1 %63, label %82, label %64

64:                                               ; preds = %57
  %65 = extractelement <2 x double> %36, i64 0
  %66 = fsub double %65, %59
  %67 = tail call double @llvm.fabs.f64(double %66)
  %68 = fcmp olt double %67, 1.000000e-15
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = extractelement <2 x double> %36, i64 1
  %71 = fsub double %70, %58
  %72 = tail call double @llvm.fabs.f64(double %71)
  %73 = fcmp olt double %72, 1.000000e-15
  br i1 %73, label %82, label %74

74:                                               ; preds = %69, %64
  %75 = getelementptr inbounds %struct._PathInfo, ptr %13, i64 %35, i32 1
  store i32 1, ptr %75, align 8, !tbaa !275
  %76 = getelementptr inbounds %struct._PathInfo, ptr %13, i64 %62
  %77 = getelementptr inbounds %struct._PathInfo, ptr %13, i64 %62, i32 1
  store i32 2, ptr %77, align 8, !tbaa !275
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !108
  %78 = add nsw i64 %62, 1
  %79 = getelementptr inbounds %struct._PathInfo, ptr %13, i64 %78
  %80 = getelementptr inbounds %struct._PathInfo, ptr %13, i64 %78, i32 1
  store i32 3, ptr %80, align 8, !tbaa !275
  store <2 x double> %36, ptr %79, align 8
  %81 = add nsw i64 %62, 2
  br label %82

82:                                               ; preds = %69, %57, %74
  %83 = phi i64 [ %62, %57 ], [ %62, %69 ], [ %81, %74 ]
  %84 = add nuw nsw i64 %23, 1
  %85 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %84
  %86 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %84, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !157
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %18, !llvm.loop !277

89:                                               ; preds = %82, %15
  %90 = phi i64 [ 0, %15 ], [ %83, %82 ]
  %91 = getelementptr inbounds %struct._PathInfo, ptr %13, i64 %90
  %92 = getelementptr inbounds %struct._PathInfo, ptr %13, i64 %90, i32 1
  store i32 4, ptr %92, align 8, !tbaa !275
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %91, i8 0, i64 16, i1 false)
  %93 = tail call i32 @IsEventLogging() #35
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  tail call fastcc void @LogPathInfo(ptr noundef nonnull %13) #38
  br label %96

96:                                               ; preds = %89, %95, %10, %1, %1, %1, %1, %1
  %97 = phi ptr [ null, %1 ], [ null, %1 ], [ null, %1 ], [ null, %1 ], [ null, %1 ], [ null, %10 ], [ %13, %95 ], [ %13, %89 ]
  ret ptr %97
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ConvertPathToPolygon(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct._PointInfo, align 8
  %3 = alloca %struct._SegmentInfo, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %4 = tail call dereferenceable_or_null(16) ptr @AcquireMagickMemory(i64 noundef 16) #34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %218, label %6

6:                                                ; preds = %1
  %7 = tail call dereferenceable_or_null(1280) ptr @AcquireQuantumMemory(i64 noundef 16, i64 noundef 80) #39
  store ptr %7, ptr %4, align 8, !tbaa !246
  %8 = icmp eq ptr %7, null
  br i1 %8, label %218, label %9

9:                                                ; preds = %6
  %10 = call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 16) #35
  %11 = call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 32) #35
  %12 = getelementptr inbounds %struct._SegmentInfo, ptr %3, i64 0, i32 2
  %13 = getelementptr inbounds %struct._PointInfo, ptr %2, i64 0, i32 1
  br label %14

14:                                               ; preds = %164, %9
  %15 = phi i64 [ 0, %9 ], [ %165, %164 ]
  %16 = phi ptr [ null, %9 ], [ %166, %164 ]
  %17 = phi i64 [ 0, %9 ], [ %172, %164 ]
  %18 = phi i64 [ 0, %9 ], [ %167, %164 ]
  %19 = phi i32 [ 0, %9 ], [ %168, %164 ]
  %20 = phi i64 [ 0, %9 ], [ %169, %164 ]
  %21 = phi i64 [ 16, %9 ], [ %170, %164 ]
  %22 = phi i64 [ 0, %9 ], [ %171, %164 ]
  %23 = getelementptr inbounds %struct._PathInfo, ptr %0, i64 %17
  %24 = getelementptr inbounds %struct._PathInfo, ptr %0, i64 %17, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !275
  switch i32 %25, label %81 [
    i32 4, label %173
    i32 0, label %26
    i32 1, label %26
    i32 2, label %26
  ]

26:                                               ; preds = %14, %14, %14
  %27 = icmp ne ptr %16, null
  %28 = icmp sgt i64 %18, 1
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  %31 = icmp eq i64 %20, %21
  %32 = load ptr, ptr %4, align 8, !tbaa !246
  br i1 %31, label %33, label %37

33:                                               ; preds = %30
  %34 = shl i64 %20, 1
  %35 = call ptr @ResizeQuantumMemory(ptr noundef %32, i64 noundef %34, i64 noundef 80) #42
  store ptr %35, ptr %4, align 8, !tbaa !246
  %36 = icmp eq ptr %35, null
  br i1 %36, label %218, label %37

37:                                               ; preds = %33, %30
  %38 = phi ptr [ %35, %33 ], [ %32, %30 ]
  %39 = phi i64 [ %34, %33 ], [ %21, %30 ]
  %40 = getelementptr inbounds %struct._EdgeInfo, ptr %38, i64 %20, i32 3
  store i64 %18, ptr %40, align 8, !tbaa !266
  %41 = getelementptr inbounds %struct._EdgeInfo, ptr %38, i64 %20, i32 1
  store double -1.000000e+00, ptr %41, align 8, !tbaa !268
  %42 = getelementptr inbounds %struct._EdgeInfo, ptr %38, i64 %20, i32 6
  store i64 0, ptr %42, align 8, !tbaa !265
  %43 = getelementptr inbounds %struct._EdgeInfo, ptr %38, i64 %20, i32 5
  store i32 %19, ptr %43, align 8, !tbaa !269
  %44 = icmp sgt i64 %15, 0
  %45 = zext i1 %44 to i64
  %46 = getelementptr inbounds %struct._EdgeInfo, ptr %38, i64 %20, i32 4
  store i64 %45, ptr %46, align 8, !tbaa !272
  %47 = icmp slt i64 %15, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  call fastcc void @ReversePoints(ptr noundef nonnull %16, i64 noundef %18) #38
  %49 = load ptr, ptr %4, align 8, !tbaa !246
  br label %50

50:                                               ; preds = %37, %48
  %51 = phi ptr [ %38, %37 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct._EdgeInfo, ptr %51, i64 %20, i32 2
  store ptr %16, ptr %52, align 8, !tbaa !267
  %53 = getelementptr inbounds %struct._EdgeInfo, ptr %51, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !77
  %54 = getelementptr inbounds %struct._PointInfo, ptr %16, i64 0, i32 1
  %55 = load double, ptr %54, align 8, !tbaa !90
  %56 = load ptr, ptr %4, align 8, !tbaa !246
  %57 = getelementptr inbounds %struct._EdgeInfo, ptr %56, i64 %20, i32 0, i32 1
  store double %55, ptr %57, align 8, !tbaa !251
  %58 = add nsw i64 %18, -1
  %59 = getelementptr inbounds %struct._PointInfo, ptr %16, i64 %58, i32 1
  %60 = load double, ptr %59, align 8, !tbaa !90
  %61 = getelementptr inbounds %struct._EdgeInfo, ptr %56, i64 %20, i32 0, i32 3
  store double %60, ptr %61, align 8, !tbaa !253
  %62 = add i64 %20, 1
  br label %65

63:                                               ; preds = %26
  %64 = icmp eq ptr %16, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %50, %63
  %66 = phi i64 [ %39, %50 ], [ %21, %63 ]
  %67 = phi i64 [ %62, %50 ], [ %20, %63 ]
  %68 = call dereferenceable_or_null(256) ptr @AcquireQuantumMemory(i64 noundef 16, i64 noundef 16) #39
  %69 = icmp eq ptr %68, null
  br i1 %69, label %218, label %70

70:                                               ; preds = %65
  %71 = load i32, ptr %24, align 8, !tbaa !275
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi i32 [ %71, %70 ], [ %25, %63 ]
  %74 = phi i64 [ %66, %70 ], [ %21, %63 ]
  %75 = phi i64 [ %67, %70 ], [ %20, %63 ]
  %76 = phi ptr [ %68, %70 ], [ %16, %63 ]
  %77 = phi i64 [ 16, %70 ], [ %22, %63 ]
  %78 = icmp eq i32 %73, 2
  %79 = zext i1 %78 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !108
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false)
  %80 = load double, ptr %2, align 8, !tbaa !91
  store double %80, ptr %3, align 8, !tbaa !102
  store double %80, ptr %12, align 8, !tbaa !105
  br label %164

81:                                               ; preds = %14
  %82 = getelementptr inbounds %struct._PointInfo, ptr %23, i64 0, i32 1
  %83 = load double, ptr %82, align 8, !tbaa !278
  %84 = load double, ptr %13, align 8, !tbaa !90
  %85 = fcmp ogt double %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = fcmp oeq double %83, %84
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = load double, ptr %23, align 8, !tbaa !279
  %90 = load double, ptr %2, align 8, !tbaa !91
  %91 = fcmp ogt double %89, %90
  %92 = freeze i1 %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81, %88
  br label %94

94:                                               ; preds = %86, %88, %93
  %95 = phi i64 [ 1, %93 ], [ -1, %88 ], [ -1, %86 ]
  %96 = icmp eq ptr %16, null
  %97 = icmp eq i64 %15, 0
  %98 = icmp eq i64 %15, %95
  %99 = or i1 %97, %98
  %100 = or i1 %99, %96
  br i1 %100, label %139, label %101

101:                                              ; preds = %94
  %102 = add nsw i64 %18, -1
  %103 = getelementptr inbounds %struct._PointInfo, ptr %16, i64 %102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %103, i64 16, i1 false), !tbaa.struct !108
  %104 = icmp eq i64 %20, %21
  %105 = load ptr, ptr %4, align 8, !tbaa !246
  br i1 %104, label %106, label %110

106:                                              ; preds = %101
  %107 = shl i64 %20, 1
  %108 = call ptr @ResizeQuantumMemory(ptr noundef %105, i64 noundef %107, i64 noundef 80) #42
  store ptr %108, ptr %4, align 8, !tbaa !246
  %109 = icmp eq ptr %108, null
  br i1 %109, label %218, label %110

110:                                              ; preds = %106, %101
  %111 = phi ptr [ %108, %106 ], [ %105, %101 ]
  %112 = phi i64 [ %107, %106 ], [ %21, %101 ]
  %113 = getelementptr inbounds %struct._EdgeInfo, ptr %111, i64 %20, i32 3
  store i64 %18, ptr %113, align 8, !tbaa !266
  %114 = getelementptr inbounds %struct._EdgeInfo, ptr %111, i64 %20, i32 1
  store double -1.000000e+00, ptr %114, align 8, !tbaa !268
  %115 = getelementptr inbounds %struct._EdgeInfo, ptr %111, i64 %20, i32 6
  store i64 0, ptr %115, align 8, !tbaa !265
  %116 = getelementptr inbounds %struct._EdgeInfo, ptr %111, i64 %20, i32 5
  store i32 %19, ptr %116, align 8, !tbaa !269
  %117 = icmp sgt i64 %15, 0
  %118 = zext i1 %117 to i64
  %119 = getelementptr inbounds %struct._EdgeInfo, ptr %111, i64 %20, i32 4
  store i64 %118, ptr %119, align 8, !tbaa !272
  %120 = icmp slt i64 %15, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  call fastcc void @ReversePoints(ptr noundef nonnull %16, i64 noundef %18) #38
  %122 = load ptr, ptr %4, align 8, !tbaa !246
  br label %123

123:                                              ; preds = %121, %110
  %124 = phi ptr [ %122, %121 ], [ %111, %110 ]
  %125 = getelementptr inbounds %struct._EdgeInfo, ptr %124, i64 %20, i32 2
  store ptr %16, ptr %125, align 8, !tbaa !267
  %126 = getelementptr inbounds %struct._EdgeInfo, ptr %124, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !77
  %127 = getelementptr inbounds %struct._PointInfo, ptr %16, i64 0, i32 1
  %128 = load double, ptr %127, align 8, !tbaa !90
  %129 = load ptr, ptr %4, align 8, !tbaa !246
  %130 = getelementptr inbounds %struct._EdgeInfo, ptr %129, i64 %20, i32 0, i32 1
  store double %128, ptr %130, align 8, !tbaa !251
  %131 = getelementptr inbounds %struct._PointInfo, ptr %16, i64 %102, i32 1
  %132 = load double, ptr %131, align 8, !tbaa !90
  %133 = getelementptr inbounds %struct._EdgeInfo, ptr %129, i64 %20, i32 0, i32 3
  store double %132, ptr %133, align 8, !tbaa !253
  %134 = call dereferenceable_or_null(256) ptr @AcquireQuantumMemory(i64 noundef 16, i64 noundef 16) #39
  %135 = icmp eq ptr %134, null
  br i1 %135, label %218, label %136

136:                                              ; preds = %123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %134, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !108
  %137 = load double, ptr %2, align 8, !tbaa !91
  store double %137, ptr %3, align 8, !tbaa !102
  store double %137, ptr %12, align 8, !tbaa !105
  %138 = add i64 %20, 1
  br label %146

139:                                              ; preds = %94
  br i1 %96, label %164, label %140

140:                                              ; preds = %139
  %141 = icmp eq i64 %18, %22
  br i1 %141, label %142, label %146

142:                                              ; preds = %140
  %143 = shl i64 %18, 1
  %144 = call ptr @ResizeQuantumMemory(ptr noundef nonnull %16, i64 noundef %143, i64 noundef 16) #42
  %145 = icmp eq ptr %144, null
  br i1 %145, label %218, label %146

146:                                              ; preds = %136, %142, %140
  %147 = phi i64 [ %18, %142 ], [ %18, %140 ], [ 1, %136 ]
  %148 = phi i32 [ %19, %142 ], [ %19, %140 ], [ 0, %136 ]
  %149 = phi i64 [ %20, %142 ], [ %20, %140 ], [ %138, %136 ]
  %150 = phi i64 [ %21, %142 ], [ %21, %140 ], [ %112, %136 ]
  %151 = phi ptr [ %144, %142 ], [ %16, %140 ], [ %134, %136 ]
  %152 = phi i64 [ %143, %142 ], [ %22, %140 ], [ 16, %136 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !108
  %153 = getelementptr inbounds %struct._PointInfo, ptr %151, i64 %147
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %153, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false)
  %154 = load double, ptr %2, align 8, !tbaa !91
  %155 = load double, ptr %3, align 8, !tbaa !102
  %156 = fcmp olt double %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %146
  store double %154, ptr %3, align 8, !tbaa !102
  br label %158

158:                                              ; preds = %157, %146
  %159 = load double, ptr %12, align 8, !tbaa !105
  %160 = fcmp ogt double %154, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store double %154, ptr %12, align 8, !tbaa !105
  br label %162

162:                                              ; preds = %161, %158
  %163 = add nsw i64 %147, 1
  br label %164

164:                                              ; preds = %139, %162, %72
  %165 = phi i64 [ 0, %72 ], [ %95, %139 ], [ %95, %162 ]
  %166 = phi ptr [ %76, %72 ], [ null, %139 ], [ %151, %162 ]
  %167 = phi i64 [ 1, %72 ], [ %18, %139 ], [ %163, %162 ]
  %168 = phi i32 [ %79, %72 ], [ %19, %139 ], [ %148, %162 ]
  %169 = phi i64 [ %75, %72 ], [ %20, %139 ], [ %149, %162 ]
  %170 = phi i64 [ %74, %72 ], [ %21, %139 ], [ %150, %162 ]
  %171 = phi i64 [ %77, %72 ], [ %22, %139 ], [ %152, %162 ]
  %172 = add nuw nsw i64 %17, 1
  br label %14, !llvm.loop !280

173:                                              ; preds = %14
  %174 = icmp eq ptr %16, null
  br i1 %174, label %211, label %175

175:                                              ; preds = %173
  %176 = icmp slt i64 %18, 2
  br i1 %176, label %177, label %179

177:                                              ; preds = %175
  %178 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %16) #35
  br label %211

179:                                              ; preds = %175
  %180 = icmp eq i64 %20, %21
  %181 = load ptr, ptr %4, align 8, !tbaa !246
  br i1 %180, label %182, label %186

182:                                              ; preds = %179
  %183 = shl i64 %20, 1
  %184 = call ptr @ResizeQuantumMemory(ptr noundef %181, i64 noundef %183, i64 noundef 80) #42
  store ptr %184, ptr %4, align 8, !tbaa !246
  %185 = icmp eq ptr %184, null
  br i1 %185, label %218, label %186

186:                                              ; preds = %182, %179
  %187 = phi ptr [ %184, %182 ], [ %181, %179 ]
  %188 = getelementptr inbounds %struct._EdgeInfo, ptr %187, i64 %20, i32 3
  store i64 %18, ptr %188, align 8, !tbaa !266
  %189 = getelementptr inbounds %struct._EdgeInfo, ptr %187, i64 %20, i32 1
  store double -1.000000e+00, ptr %189, align 8, !tbaa !268
  %190 = getelementptr inbounds %struct._EdgeInfo, ptr %187, i64 %20, i32 6
  store i64 0, ptr %190, align 8, !tbaa !265
  %191 = getelementptr inbounds %struct._EdgeInfo, ptr %187, i64 %20, i32 5
  store i32 %19, ptr %191, align 8, !tbaa !269
  %192 = icmp sgt i64 %15, 0
  %193 = zext i1 %192 to i64
  %194 = getelementptr inbounds %struct._EdgeInfo, ptr %187, i64 %20, i32 4
  store i64 %193, ptr %194, align 8, !tbaa !272
  %195 = icmp slt i64 %15, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %186
  call fastcc void @ReversePoints(ptr noundef nonnull %16, i64 noundef %18) #38
  %197 = load ptr, ptr %4, align 8, !tbaa !246
  br label %198

198:                                              ; preds = %196, %186
  %199 = phi ptr [ %197, %196 ], [ %187, %186 ]
  %200 = getelementptr inbounds %struct._EdgeInfo, ptr %199, i64 %20, i32 2
  store ptr %16, ptr %200, align 8, !tbaa !267
  %201 = getelementptr inbounds %struct._EdgeInfo, ptr %199, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %201, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !77
  %202 = getelementptr inbounds %struct._PointInfo, ptr %16, i64 0, i32 1
  %203 = load double, ptr %202, align 8, !tbaa !90
  %204 = load ptr, ptr %4, align 8, !tbaa !246
  %205 = getelementptr inbounds %struct._EdgeInfo, ptr %204, i64 %20, i32 0, i32 1
  store double %203, ptr %205, align 8, !tbaa !251
  %206 = add nsw i64 %18, -1
  %207 = getelementptr inbounds %struct._PointInfo, ptr %16, i64 %206, i32 1
  %208 = load double, ptr %207, align 8, !tbaa !90
  %209 = getelementptr inbounds %struct._EdgeInfo, ptr %204, i64 %20, i32 0, i32 3
  store double %208, ptr %209, align 8, !tbaa !253
  %210 = add i64 %20, 1
  br label %211

211:                                              ; preds = %177, %198, %173
  %212 = phi i64 [ %20, %177 ], [ %210, %198 ], [ %20, %173 ]
  %213 = getelementptr inbounds %struct._PolygonInfo, ptr %4, i64 0, i32 1
  store i64 %212, ptr %213, align 8, !tbaa !248
  %214 = load ptr, ptr %4, align 8, !tbaa !246
  call void @qsort(ptr noundef %214, i64 noundef %212, i64 noundef 80, ptr noundef nonnull @CompareEdges) #35
  %215 = call i32 @IsEventLogging() #35
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %211
  call fastcc void @LogPolygonInfo(ptr noundef nonnull %4) #38
  br label %218

218:                                              ; preds = %142, %123, %106, %65, %33, %211, %217, %182, %6, %1
  %219 = phi ptr [ null, %1 ], [ null, %6 ], [ null, %182 ], [ %4, %217 ], [ %4, %211 ], [ null, %33 ], [ null, %65 ], [ null, %106 ], [ null, %123 ], [ null, %142 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret ptr %219
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @LogPathInfo(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 705, ptr noundef nonnull @.str.125) #35
  %3 = getelementptr inbounds %struct._PathInfo, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !275
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %27, label %6

6:                                                ; preds = %1, %20
  %7 = phi i32 [ %25, %20 ], [ %4, %1 ]
  %8 = phi ptr [ %23, %20 ], [ %0, %1 ]
  %9 = load double, ptr %8, align 8, !tbaa !279
  %10 = getelementptr inbounds %struct._PointInfo, ptr %8, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !278
  %12 = icmp ult i32 %7, 3
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = icmp eq i32 %7, 3
  %15 = select i1 %14, ptr @.str.130, ptr @.str.111
  br label %20

16:                                               ; preds = %6
  %17 = zext nneg i32 %7 to i64
  %18 = shl i64 %17, 2
  %19 = call ptr @llvm.load.relative.i64(ptr @reltable.LogPathInfo, i64 %18)
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi ptr [ %15, %13 ], [ %19, %16 ]
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 707, ptr noundef nonnull @.str.126, double noundef %9, double noundef %11, ptr noundef nonnull %21) #35
  %23 = getelementptr inbounds %struct._PathInfo, ptr %8, i64 1
  %24 = getelementptr inbounds %struct._PathInfo, ptr %8, i64 1, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !275
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %6, !llvm.loop !281

27:                                               ; preds = %20, %1
  %28 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 712, ptr noundef nonnull @.str.131) #35
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @ReversePoints(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #26 {
  %3 = alloca %struct._PointInfo, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %4 = lshr i64 %1, 1
  %5 = icmp ult i64 %1, 2
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ %9, %6 ], [ 0, %2 ]
  %8 = getelementptr inbounds %struct._PointInfo, ptr %0, i64 %7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !108
  %9 = add nuw nsw i64 %7, 1
  %10 = sub i64 %1, %9
  %11 = getelementptr inbounds %struct._PointInfo, ptr %0, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !108
  %12 = icmp eq i64 %9, %4
  br i1 %12, label %13, label %6, !llvm.loop !282

13:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @CompareEdges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #28 {
  %3 = getelementptr inbounds %struct._EdgeInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = getelementptr inbounds %struct._PointInfo, ptr %4, i64 0, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !90
  %7 = fadd double %6, -1.000000e-15
  %8 = getelementptr inbounds %struct._EdgeInfo, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !267
  %10 = getelementptr inbounds %struct._PointInfo, ptr %9, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !90
  %12 = fcmp ogt double %7, %11
  br i1 %12, label %42, label %13

13:                                               ; preds = %2
  %14 = fadd double %6, 1.000000e-15
  %15 = fcmp olt double %14, %11
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = load double, ptr %4, align 8, !tbaa !91
  %18 = fadd double %17, -1.000000e-15
  %19 = load double, ptr %9, align 8, !tbaa !91
  %20 = fcmp ogt double %18, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %16
  %22 = fadd double %17, 1.000000e-15
  %23 = fcmp olt double %22, %19
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._PointInfo, ptr %4, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !91
  %27 = fsub double %26, %17
  %28 = getelementptr inbounds %struct._PointInfo, ptr %9, i64 1
  %29 = getelementptr inbounds %struct._PointInfo, ptr %9, i64 1, i32 1
  %30 = load double, ptr %29, align 8, !tbaa !90
  %31 = fsub double %30, %11
  %32 = getelementptr inbounds %struct._PointInfo, ptr %4, i64 1, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !90
  %34 = fsub double %33, %6
  %35 = load double, ptr %28, align 8, !tbaa !91
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @LogPolygonInfo(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 428, ptr noundef nonnull @.str.132) #35
  %3 = getelementptr inbounds %struct._PolygonInfo, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !248
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %52

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !246
  br label %8

8:                                                ; preds = %6, %47
  %9 = phi i64 [ %49, %47 ], [ 0, %6 ]
  %10 = phi ptr [ %48, %47 ], [ %7, %6 ]
  %11 = sitofp i64 %9 to double
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 432, ptr noundef nonnull @.str.133, double noundef %11) #35
  %13 = getelementptr inbounds %struct._EdgeInfo, ptr %10, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !272
  %15 = icmp eq i64 %14, 0
  %16 = select i1 %15, ptr @.str.136, ptr @.str.135
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 434, ptr noundef nonnull @.str.134, ptr noundef nonnull %16) #35
  %18 = getelementptr inbounds %struct._EdgeInfo, ptr %10, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !269
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.139, ptr @.str.138
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 436, ptr noundef nonnull @.str.137, ptr noundef nonnull %21) #35
  %23 = load double, ptr %10, align 8, !tbaa !249
  %24 = getelementptr inbounds %struct._SegmentInfo, ptr %10, i64 0, i32 1
  %25 = load double, ptr %24, align 8, !tbaa !251
  %26 = getelementptr inbounds %struct._SegmentInfo, ptr %10, i64 0, i32 2
  %27 = load double, ptr %26, align 8, !tbaa !252
  %28 = getelementptr inbounds %struct._SegmentInfo, ptr %10, i64 0, i32 3
  %29 = load double, ptr %28, align 8, !tbaa !253
  %30 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 438, ptr noundef nonnull @.str.140, double noundef %23, double noundef %25, double noundef %27, double noundef %29) #35
  %31 = getelementptr inbounds %struct._EdgeInfo, ptr %10, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !266
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct._EdgeInfo, ptr %10, i64 0, i32 2
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ 0, %34 ], [ %44, %36 ]
  %38 = load ptr, ptr %35, align 8, !tbaa !267
  %39 = getelementptr inbounds %struct._PointInfo, ptr %38, i64 %37
  %40 = load double, ptr %39, align 8, !tbaa !91
  %41 = getelementptr inbounds %struct._PointInfo, ptr %38, i64 %37, i32 1
  %42 = load double, ptr %41, align 8, !tbaa !90
  %43 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 442, ptr noundef nonnull @.str.141, double noundef %40, double noundef %42) #35
  %44 = add nuw nsw i64 %37, 1
  %45 = load i64, ptr %31, align 8, !tbaa !266
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %36, label %47, !llvm.loop !283

47:                                               ; preds = %36, %8
  %48 = getelementptr inbounds %struct._EdgeInfo, ptr %10, i64 1
  %49 = add nuw nsw i64 %9, 1
  %50 = load i64, ptr %3, align 8, !tbaa !248
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %8, label %52, !llvm.loop !284

52:                                               ; preds = %47, %1
  %53 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 446, ptr noundef nonnull @.str.142) #35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyPolygonInfo(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PolygonInfo, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !248
  %4 = icmp sgt i64 %3, 0
  %5 = load ptr, ptr %0, align 8, !tbaa !246
  br i1 %4, label %6, label %17

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %12, %6 ], [ %5, %1 ]
  %8 = phi i64 [ %14, %6 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct._EdgeInfo, ptr %7, i64 %8, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !267
  %11 = tail call ptr @RelinquishMagickMemory(ptr noundef %10) #35
  %12 = load ptr, ptr %0, align 8, !tbaa !246
  %13 = getelementptr inbounds %struct._EdgeInfo, ptr %12, i64 %8, i32 2
  store ptr %11, ptr %13, align 8, !tbaa !267
  %14 = add nuw nsw i64 %8, 1
  %15 = load i64, ptr %2, align 8, !tbaa !248
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %6, label %17, !llvm.loop !285

17:                                               ; preds = %6, %1
  %18 = phi ptr [ %5, %1 ], [ %12, %6 ]
  %19 = tail call ptr @RelinquishMagickMemory(ptr noundef %18) #35
  store ptr %19, ptr %0, align 8, !tbaa !246
  %20 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #35
  ret ptr %20
}

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #18

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc void @DestroyEdge(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #25 {
  %3 = load ptr, ptr %0, align 8, !tbaa !246
  %4 = getelementptr inbounds %struct._EdgeInfo, ptr %3, i64 %1, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !267
  %6 = tail call ptr @RelinquishMagickMemory(ptr noundef %5) #35
  %7 = load ptr, ptr %0, align 8, !tbaa !246
  %8 = getelementptr inbounds %struct._EdgeInfo, ptr %7, i64 %1, i32 2
  store ptr %6, ptr %8, align 8, !tbaa !267
  %9 = getelementptr inbounds %struct._PolygonInfo, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !248
  %11 = add i64 %10, -1
  store i64 %11, ptr %9, align 8, !tbaa !248
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._EdgeInfo, ptr %7, i64 %1
  %15 = getelementptr inbounds %struct._EdgeInfo, ptr %14, i64 1
  %16 = sub i64 %11, %1
  %17 = mul i64 %16, 80
  %18 = tail call ptr @CopyMagickMemory(ptr noundef %14, ptr noundef nonnull %15, i64 noundef %17) #35
  br label %19

19:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @MagickAbsoluteValue(i64 noundef %0) unnamed_addr #9 {
  %2 = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @TraceStrokePolygon(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !159
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 1560
  %7 = tail call ptr @AcquireQuantumMemory(i64 noundef %6, i64 noundef 16) #39
  %8 = tail call ptr @AcquireQuantumMemory(i64 noundef %6, i64 noundef 16) #39
  %9 = add i64 %4, 2
  %10 = tail call ptr @AcquireQuantumMemory(i64 noundef %9, i64 noundef 40) #39
  %11 = icmp eq ptr %7, null
  %12 = icmp eq ptr %8, null
  %13 = select i1 %11, i1 true, i1 %12
  %14 = icmp eq ptr %10, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %571, label %16

16:                                               ; preds = %2
  %17 = mul i64 %4, 40
  %18 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %10, ptr noundef nonnull %1, i64 noundef %17) #35
  %19 = getelementptr %struct._PrimitiveInfo, ptr %1, i64 %4
  %20 = getelementptr %struct._PrimitiveInfo, ptr %19, i64 -1
  %21 = load double, ptr %20, align 8, !tbaa !178
  %22 = load double, ptr %1, align 8, !tbaa !178
  %23 = fcmp oeq double %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = getelementptr %struct._PrimitiveInfo, ptr %19, i64 -1, i32 0, i32 1
  %26 = load double, ptr %25, align 8, !tbaa !179
  %27 = getelementptr inbounds %struct._PointInfo, ptr %1, i64 0, i32 1
  %28 = load double, ptr %27, align 8, !tbaa !179
  %29 = fcmp oeq double %26, %28
  br label %30

30:                                               ; preds = %24, %16
  %31 = phi i1 [ false, %16 ], [ %29, %24 ]
  %32 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 16
  %33 = load i32, ptr %32, align 8, !tbaa !30
  %34 = icmp eq i32 %33, 2
  %35 = icmp eq i32 %33, 1
  %36 = select i1 %35, i1 %31, i1 false
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct._PrimitiveInfo, ptr %10, i64 %4
  %40 = getelementptr inbounds %struct._PrimitiveInfo, ptr %1, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull align 8 dereferenceable(40) %40, i64 40, i1 false), !tbaa.struct !166
  %41 = add i64 %4, 1
  br label %42

42:                                               ; preds = %30, %38
  %43 = phi i64 [ %41, %38 ], [ %4, %30 ]
  %44 = getelementptr inbounds %struct._PrimitiveInfo, ptr %10, i64 %43, i32 2
  store i32 0, ptr %44, align 8, !tbaa !157
  %45 = icmp sgt i64 %43, 1
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load <2 x double>, ptr %10, align 8, !tbaa !57
  br label %48

48:                                               ; preds = %46, %58
  %49 = phi i64 [ 1, %46 ], [ %59, %58 ]
  %50 = getelementptr inbounds %struct._PrimitiveInfo, ptr %10, i64 %49
  %51 = load <2 x double>, ptr %50, align 8, !tbaa !57
  %52 = fsub <2 x double> %51, %47
  %53 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %52)
  %54 = fcmp ult <2 x double> %53, <double 1.000000e-15, double 1.000000e-15>
  %55 = extractelement <2 x i1> %54, i64 0
  %56 = extractelement <2 x i1> %54, i64 1
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = add nuw nsw i64 %49, 1
  %60 = icmp eq i64 %59, %43
  br i1 %60, label %61, label %48, !llvm.loop !286

61:                                               ; preds = %58, %48, %42
  %62 = phi i64 [ 1, %42 ], [ %49, %48 ], [ %43, %58 ]
  %63 = phi <2 x double> [ zeroinitializer, %42 ], [ %52, %48 ], [ %52, %58 ]
  %64 = icmp eq i64 %62, %43
  %65 = add nsw i64 %43, -1
  %66 = select i1 %64, i64 %65, i64 %62
  %67 = extractelement <2 x double> %63, i64 0
  %68 = tail call fastcc double @DrawEpsilonReciprocal(double noundef %67) #38
  %69 = extractelement <2 x double> %63, i64 1
  %70 = fmul double %69, %68
  %71 = tail call fastcc double @DrawEpsilonReciprocal(double noundef %70) #38
  %72 = fneg double %71
  %73 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 3
  %74 = tail call double @ExpandAffine(ptr noundef nonnull %73) #35
  %75 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 7
  %76 = load double, ptr %75, align 8, !tbaa !26
  %77 = fmul double %74, %76
  %78 = fmul double %77, 5.000000e-01
  %79 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 17
  %80 = load i64, ptr %79, align 8, !tbaa !31
  %81 = mul i64 %80, %80
  %82 = uitofp i64 %81 to double
  %83 = fmul double %78, %82
  %84 = fmul double %78, %83
  %85 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 15
  %86 = load i32, ptr %85, align 4, !tbaa !29
  %87 = icmp ne i32 %86, 3
  %88 = select i1 %87, i1 true, i1 %31
  br i1 %88, label %90, label %89

89:                                               ; preds = %61
  tail call fastcc void @TraceSquareLinecap(ptr noundef nonnull %10, i64 noundef %43, double noundef %78) #38
  br label %90

90:                                               ; preds = %89, %61
  %91 = fmul double %78, %78
  %92 = tail call double @llvm.fmuladd.f64(double %71, double %71, double 1.000000e+00)
  %93 = fdiv double %91, %92
  %94 = tail call double @llvm.sqrt.f64(double %93)
  %95 = fmul double %94, %72
  %96 = fneg double %67
  %97 = fmul double %95, %96
  %98 = tail call double @llvm.fmuladd.f64(double %69, double %94, double %97)
  %99 = fcmp ogt double %98, 0.000000e+00
  %100 = load double, ptr %10, align 8, !tbaa !178
  %101 = getelementptr inbounds %struct._PointInfo, ptr %10, i64 0, i32 1
  %102 = load double, ptr %101, align 8, !tbaa !179
  %103 = getelementptr inbounds %struct._PrimitiveInfo, ptr %10, i64 %66
  %104 = load <2 x double>, ptr %103, align 8, !tbaa !57
  br i1 %99, label %105, label %127

105:                                              ; preds = %90
  %106 = fsub double %100, %94
  %107 = extractelement <2 x double> %104, i64 0
  %108 = fsub double %107, %94
  %109 = extractelement <2 x double> %104, i64 1
  %110 = tail call double @llvm.fmuladd.f64(double %94, double %71, double %109)
  %111 = fadd double %94, %100
  %112 = insertelement <2 x double> poison, double %94, i64 0
  %113 = shufflevector <2 x double> %112, <2 x double> poison, <2 x i32> zeroinitializer
  %114 = insertelement <2 x double> poison, double %71, i64 0
  %115 = insertelement <2 x double> %114, double %72, i64 1
  %116 = insertelement <2 x double> poison, double %102, i64 0
  %117 = shufflevector <2 x double> %116, <2 x double> poison, <2 x i32> zeroinitializer
  %118 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %113, <2 x double> %115, <2 x double> %117)
  %119 = fadd double %94, %107
  %120 = tail call double @llvm.fmuladd.f64(double %94, double %72, double %109)
  %121 = insertelement <2 x double> poison, double %108, i64 0
  %122 = insertelement <2 x double> %121, double %110, i64 1
  %123 = insertelement <2 x double> poison, double %119, i64 0
  %124 = insertelement <2 x double> %123, double %120, i64 1
  %125 = insertelement <2 x double> poison, double %106, i64 0
  %126 = insertelement <2 x double> %125, double %111, i64 1
  br label %140

127:                                              ; preds = %90
  %128 = fadd double %94, %100
  %129 = fadd double %95, %102
  %130 = insertelement <2 x double> poison, double %94, i64 0
  %131 = insertelement <2 x double> %130, double %95, i64 1
  %132 = fadd <2 x double> %131, %104
  %133 = fsub double %100, %94
  %134 = fsub double %102, %95
  %135 = fsub <2 x double> %104, %131
  %136 = insertelement <2 x double> poison, double %128, i64 0
  %137 = insertelement <2 x double> %136, double %133, i64 1
  %138 = insertelement <2 x double> poison, double %129, i64 0
  %139 = insertelement <2 x double> %138, double %134, i64 1
  br label %140

140:                                              ; preds = %127, %105
  %141 = phi <2 x double> [ %122, %105 ], [ %132, %127 ]
  %142 = phi <2 x double> [ %124, %105 ], [ %135, %127 ]
  %143 = phi <2 x double> [ %126, %105 ], [ %137, %127 ]
  %144 = phi <2 x double> [ %118, %105 ], [ %139, %127 ]
  %145 = shufflevector <2 x double> %143, <2 x double> %144, <2 x i32> <i32 1, i32 3>
  store <2 x double> %145, ptr %8, align 8
  %146 = extractelement <2 x double> %143, i64 0
  store double %146, ptr %7, align 8, !tbaa.struct !108
  %147 = getelementptr inbounds i8, ptr %7, i64 8
  %148 = extractelement <2 x double> %144, i64 0
  store double %148, ptr %147, align 8, !tbaa.struct !162
  %149 = add nsw i64 %66, 1
  %150 = icmp slt i64 %149, %43
  br i1 %150, label %151, label %509

151:                                              ; preds = %140
  %152 = fdiv double 1.000000e+00, %78
  br label %153

153:                                              ; preds = %151, %494
  %154 = phi i64 [ %149, %151 ], [ %507, %494 ]
  %155 = phi i64 [ 1, %151 ], [ %501, %494 ]
  %156 = phi i64 [ 1, %151 ], [ %500, %494 ]
  %157 = phi i64 [ %66, %151 ], [ %499, %494 ]
  %158 = phi i64 [ %6, %151 ], [ %498, %494 ]
  %159 = phi ptr [ %8, %151 ], [ %497, %494 ]
  %160 = phi ptr [ %7, %151 ], [ %496, %494 ]
  %161 = phi double [ %70, %151 ], [ %495, %494 ]
  %162 = phi <2 x double> [ %141, %151 ], [ %502, %494 ]
  %163 = phi <2 x double> [ %142, %151 ], [ %503, %494 ]
  %164 = phi <2 x double> [ %63, %151 ], [ %504, %494 ]
  %165 = phi <2 x double> [ %143, %151 ], [ %505, %494 ]
  %166 = phi <2 x double> [ %144, %151 ], [ %506, %494 ]
  %167 = getelementptr inbounds %struct._PrimitiveInfo, ptr %10, i64 %154
  %168 = getelementptr inbounds %struct._PrimitiveInfo, ptr %10, i64 %157
  %169 = load <2 x double>, ptr %167, align 8, !tbaa !57
  %170 = getelementptr inbounds %struct._PointInfo, ptr %168, i64 0, i32 1
  %171 = load <2 x double>, ptr %168, align 8, !tbaa !57
  %172 = fsub <2 x double> %169, %171
  %173 = extractelement <2 x double> %172, i64 1
  %174 = fmul double %173, %173
  %175 = extractelement <2 x double> %172, i64 0
  %176 = tail call double @llvm.fmuladd.f64(double %175, double %175, double %174)
  %177 = fcmp olt double %176, 2.500000e-01
  br i1 %177, label %494, label %178

178:                                              ; preds = %153
  %179 = tail call fastcc double @DrawEpsilonReciprocal(double noundef %175) #38
  %180 = fmul double %173, %179
  %181 = tail call fastcc double @DrawEpsilonReciprocal(double noundef %180) #38
  %182 = fneg double %181
  %183 = tail call double @llvm.fmuladd.f64(double %181, double %181, double 1.000000e+00)
  %184 = fdiv double %91, %183
  %185 = tail call double @llvm.sqrt.f64(double %184)
  %186 = fmul double %185, %182
  %187 = fneg double %175
  %188 = fmul double %186, %187
  %189 = tail call double @llvm.fmuladd.f64(double %173, double %185, double %188)
  %190 = fcmp ogt double %189, 0.000000e+00
  br i1 %190, label %191, label %198

191:                                              ; preds = %178
  %192 = insertelement <2 x double> poison, double %185, i64 0
  %193 = insertelement <2 x double> %192, double %186, i64 1
  %194 = fsub <2 x double> %171, %193
  %195 = fsub <2 x double> %169, %193
  %196 = fadd <2 x double> %193, %171
  %197 = fadd <2 x double> %193, %169
  br label %205

198:                                              ; preds = %178
  %199 = insertelement <2 x double> poison, double %185, i64 0
  %200 = insertelement <2 x double> %199, double %186, i64 1
  %201 = fadd <2 x double> %200, %171
  %202 = fadd <2 x double> %200, %169
  %203 = fsub <2 x double> %171, %200
  %204 = fsub <2 x double> %169, %200
  br label %205

205:                                              ; preds = %198, %191
  %206 = phi <2 x double> [ %195, %191 ], [ %202, %198 ]
  %207 = phi <2 x double> [ %197, %191 ], [ %204, %198 ]
  %208 = phi <2 x double> [ %196, %191 ], [ %203, %198 ]
  %209 = phi <2 x double> [ %194, %191 ], [ %201, %198 ]
  %210 = fsub double %161, %180
  %211 = tail call double @llvm.fabs.f64(double %210)
  %212 = fcmp olt double %211, 1.000000e-15
  %213 = shufflevector <2 x double> %162, <2 x double> %163, <2 x i32> <i32 0, i32 2>
  %214 = shufflevector <2 x double> %162, <2 x double> %163, <2 x i32> <i32 1, i32 3>
  br i1 %212, label %232, label %215

215:                                              ; preds = %205
  %216 = fneg <2 x double> %166
  %217 = fneg double %180
  %218 = insertelement <2 x double> poison, double %161, i64 0
  %219 = shufflevector <2 x double> %218, <2 x double> poison, <2 x i32> zeroinitializer
  %220 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %219, <2 x double> %165, <2 x double> %216)
  %221 = insertelement <2 x double> poison, double %217, i64 0
  %222 = shufflevector <2 x double> %221, <2 x double> poison, <2 x i32> zeroinitializer
  %223 = shufflevector <2 x double> %206, <2 x double> %207, <2 x i32> <i32 0, i32 2>
  %224 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %222, <2 x double> %223, <2 x double> %220)
  %225 = shufflevector <2 x double> %206, <2 x double> %207, <2 x i32> <i32 1, i32 3>
  %226 = fadd <2 x double> %225, %224
  %227 = insertelement <2 x double> poison, double %210, i64 0
  %228 = shufflevector <2 x double> %227, <2 x double> poison, <2 x i32> zeroinitializer
  %229 = fdiv <2 x double> %226, %228
  %230 = fsub <2 x double> %229, %165
  %231 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %219, <2 x double> %230, <2 x double> %166)
  br label %232

232:                                              ; preds = %205, %215
  %233 = phi <2 x double> [ %229, %215 ], [ %213, %205 ]
  %234 = phi <2 x double> [ %231, %215 ], [ %214, %205 ]
  %235 = add i64 %158, -1560
  %236 = icmp slt i64 %155, %235
  br i1 %236, label %244, label %237

237:                                              ; preds = %232
  %238 = add i64 %158, 1560
  %239 = tail call ptr @ResizeQuantumMemory(ptr noundef %160, i64 noundef %238, i64 noundef 16) #42
  %240 = tail call ptr @ResizeQuantumMemory(ptr noundef %159, i64 noundef %238, i64 noundef 16) #42
  %241 = icmp eq ptr %239, null
  %242 = icmp eq ptr %240, null
  %243 = select i1 %241, i1 true, i1 %242
  br i1 %243, label %568, label %244

244:                                              ; preds = %237, %232
  %245 = phi ptr [ %239, %237 ], [ %160, %232 ]
  %246 = phi ptr [ %240, %237 ], [ %159, %232 ]
  %247 = phi i64 [ %238, %237 ], [ %158, %232 ]
  %248 = extractelement <2 x double> %164, i64 0
  %249 = fneg double %248
  %250 = fmul double %173, %249
  %251 = extractelement <2 x double> %164, i64 1
  %252 = tail call double @llvm.fmuladd.f64(double %175, double %251, double %250)
  %253 = fcmp ugt double %252, 0.000000e+00
  %254 = load i32, ptr %32, align 8, !tbaa !30
  br i1 %253, label %376, label %255

255:                                              ; preds = %244
  %256 = shufflevector <2 x double> %209, <2 x double> %208, <2 x i32> <i32 0, i32 2>
  %257 = shufflevector <2 x double> %209, <2 x double> %208, <2 x i32> <i32 1, i32 3>
  switch i32 %254, label %494 [
    i32 3, label %258
    i32 1, label %281
    i32 2, label %305
  ]

258:                                              ; preds = %255
  %259 = add nsw i64 %155, 1
  %260 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %155
  store <2 x double> %163, ptr %260, align 8
  %261 = add nsw i64 %155, 2
  %262 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %259
  store <2 x double> %208, ptr %262, align 8
  %263 = shufflevector <2 x double> %233, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %264 = fsub <2 x double> %263, %233
  %265 = extractelement <2 x double> %264, i64 0
  %266 = shufflevector <2 x double> %234, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %267 = fsub <2 x double> %266, %234
  %268 = fmul <2 x double> %267, %267
  %269 = extractelement <2 x double> %268, i64 0
  %270 = tail call double @llvm.fmuladd.f64(double %265, double %265, double %269)
  %271 = fcmp ugt double %270, %84
  %272 = add nsw i64 %156, 1
  %273 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %156
  br i1 %271, label %278, label %274

274:                                              ; preds = %258
  %275 = getelementptr inbounds i8, ptr %273, i64 8
  %276 = extractelement <2 x double> %234, i64 0
  %277 = extractelement <2 x double> %233, i64 0
  store double %277, ptr %273, align 8, !tbaa.struct !108
  store double %276, ptr %275, align 8, !tbaa.struct !162
  br label %494

278:                                              ; preds = %258
  store <2 x double> %162, ptr %273, align 8
  %279 = add nsw i64 %156, 2
  %280 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %272
  store <2 x double> %209, ptr %280, align 8
  br label %494

281:                                              ; preds = %255
  %282 = extractelement <2 x double> %233, i64 0
  %283 = extractelement <2 x double> %233, i64 1
  %284 = fsub double %283, %282
  %285 = extractelement <2 x double> %234, i64 0
  %286 = extractelement <2 x double> %234, i64 1
  %287 = fsub double %286, %285
  %288 = fmul double %287, %287
  %289 = tail call double @llvm.fmuladd.f64(double %284, double %284, double %288)
  %290 = fcmp ugt double %289, %84
  %291 = add nsw i64 %155, 1
  %292 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %155
  br i1 %290, label %298, label %293

293:                                              ; preds = %281
  %294 = getelementptr inbounds i8, ptr %292, i64 8
  store double %283, ptr %292, align 8, !tbaa.struct !108
  store double %286, ptr %294, align 8, !tbaa.struct !162
  %295 = add nsw i64 %156, 1
  %296 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %156
  store double %282, ptr %296, align 8, !tbaa.struct !108
  %297 = getelementptr inbounds i8, ptr %296, i64 8
  store double %285, ptr %297, align 8, !tbaa.struct !162
  br label %494

298:                                              ; preds = %281
  store <2 x double> %163, ptr %292, align 8
  %299 = add nsw i64 %155, 2
  %300 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %291
  store <2 x double> %208, ptr %300, align 8
  %301 = add nsw i64 %156, 1
  %302 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %156
  store <2 x double> %162, ptr %302, align 8
  %303 = add nsw i64 %156, 2
  %304 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %301
  store <2 x double> %209, ptr %304, align 8
  br label %494

305:                                              ; preds = %255
  %306 = shufflevector <2 x double> %233, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %307 = fsub <2 x double> %306, %233
  %308 = extractelement <2 x double> %307, i64 0
  %309 = shufflevector <2 x double> %234, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %310 = fsub <2 x double> %309, %234
  %311 = fmul <2 x double> %310, %310
  %312 = extractelement <2 x double> %311, i64 0
  %313 = tail call double @llvm.fmuladd.f64(double %308, double %308, double %312)
  %314 = fcmp ugt double %313, %84
  %315 = add nsw i64 %156, 1
  %316 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %156
  br i1 %314, label %321, label %317

317:                                              ; preds = %305
  %318 = getelementptr inbounds i8, ptr %316, i64 8
  %319 = extractelement <2 x double> %234, i64 0
  %320 = extractelement <2 x double> %233, i64 0
  store double %320, ptr %316, align 8, !tbaa.struct !108
  store double %319, ptr %318, align 8, !tbaa.struct !162
  br label %324

321:                                              ; preds = %305
  store <2 x double> %162, ptr %316, align 8
  %322 = add nsw i64 %156, 2
  %323 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %315
  store <2 x double> %209, ptr %323, align 8
  br label %324

324:                                              ; preds = %321, %317
  %325 = phi i64 [ %315, %317 ], [ %322, %321 ]
  %326 = load double, ptr %168, align 8, !tbaa.struct !108
  %327 = load double, ptr %170, align 8, !tbaa.struct !162
  %328 = extractelement <2 x double> %163, i64 1
  %329 = fsub double %328, %327
  %330 = extractelement <2 x double> %163, i64 0
  %331 = fsub double %330, %326
  %332 = tail call double @atan2(double noundef %329, double noundef %331) #35
  %333 = extractelement <2 x double> %208, i64 1
  %334 = fsub double %333, %327
  %335 = extractelement <2 x double> %208, i64 0
  %336 = fsub double %335, %326
  %337 = tail call double @atan2(double noundef %334, double noundef %336) #35
  %338 = fcmp olt double %337, %332
  %339 = fadd double %337, 0x401921FB54442D18
  %340 = select i1 %338, double %339, double %337
  %341 = fsub double %340, %332
  %342 = tail call double @sqrt(double noundef %152) #35
  %343 = fmul double %342, 2.000000e+00
  %344 = fdiv double %341, %343
  %345 = tail call double @llvm.ceil.f64(double %344)
  %346 = fptoui double %345 to i64
  %347 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %155
  store <2 x double> %163, ptr %347, align 8, !tbaa !57
  %348 = add nsw i64 %155, 1
  %349 = icmp sgt i64 %346, 1
  br i1 %349, label %350, label %371

350:                                              ; preds = %324
  %351 = uitofp i64 %346 to double
  %352 = tail call fastcc double @DegreesToRadians(double noundef 3.600000e+02) #38
  br label %353

353:                                              ; preds = %350, %353
  %354 = phi i64 [ %348, %350 ], [ %369, %353 ]
  %355 = phi i64 [ 1, %350 ], [ %368, %353 ]
  %356 = sitofp i64 %355 to double
  %357 = fmul double %341, %356
  %358 = fdiv double %357, %351
  %359 = fadd double %332, %358
  %360 = tail call double @fmod(double noundef %359, double noundef %352) #35
  %361 = tail call double @cos(double noundef %360) #35
  %362 = tail call double @llvm.fmuladd.f64(double %78, double %361, double %326)
  %363 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %354
  store double %362, ptr %363, align 8, !tbaa !91
  %364 = tail call double @fmod(double noundef %359, double noundef %352) #35
  %365 = tail call double @sin(double noundef %364) #35
  %366 = tail call double @llvm.fmuladd.f64(double %78, double %365, double %327)
  %367 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %354, i32 1
  store double %366, ptr %367, align 8, !tbaa !90
  %368 = add nuw nsw i64 %355, 1
  %369 = add nsw i64 %354, 1
  %370 = icmp eq i64 %368, %346
  br i1 %370, label %371, label %353, !llvm.loop !287

371:                                              ; preds = %353, %324
  %372 = phi i64 [ %155, %324 ], [ %354, %353 ]
  %373 = phi i64 [ %348, %324 ], [ %369, %353 ]
  %374 = add nsw i64 %372, 2
  %375 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %373
  store <2 x double> %208, ptr %375, align 8
  br label %494

376:                                              ; preds = %244
  %377 = shufflevector <2 x double> %209, <2 x double> %208, <2 x i32> <i32 0, i32 2>
  %378 = shufflevector <2 x double> %209, <2 x double> %208, <2 x i32> <i32 1, i32 3>
  switch i32 %254, label %494 [
    i32 3, label %379
    i32 1, label %400
    i32 2, label %424
  ]

379:                                              ; preds = %376
  %380 = add nsw i64 %156, 1
  %381 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %156
  store <2 x double> %162, ptr %381, align 8
  %382 = add nsw i64 %156, 2
  %383 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %380
  store <2 x double> %209, ptr %383, align 8
  %384 = extractelement <2 x double> %233, i64 0
  %385 = extractelement <2 x double> %233, i64 1
  %386 = fsub double %385, %384
  %387 = extractelement <2 x double> %234, i64 0
  %388 = extractelement <2 x double> %234, i64 1
  %389 = fsub double %388, %387
  %390 = fmul double %389, %389
  %391 = tail call double @llvm.fmuladd.f64(double %386, double %386, double %390)
  %392 = fcmp ugt double %391, %84
  %393 = add nsw i64 %155, 1
  %394 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %155
  br i1 %392, label %397, label %395

395:                                              ; preds = %379
  %396 = getelementptr inbounds i8, ptr %394, i64 8
  store double %385, ptr %394, align 8, !tbaa.struct !108
  store double %388, ptr %396, align 8, !tbaa.struct !162
  br label %494

397:                                              ; preds = %379
  store <2 x double> %163, ptr %394, align 8
  %398 = add nsw i64 %155, 2
  %399 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %393
  store <2 x double> %208, ptr %399, align 8
  br label %494

400:                                              ; preds = %376
  %401 = extractelement <2 x double> %233, i64 0
  %402 = extractelement <2 x double> %233, i64 1
  %403 = fsub double %402, %401
  %404 = extractelement <2 x double> %234, i64 0
  %405 = extractelement <2 x double> %234, i64 1
  %406 = fsub double %405, %404
  %407 = fmul double %406, %406
  %408 = tail call double @llvm.fmuladd.f64(double %403, double %403, double %407)
  %409 = fcmp ugt double %408, %84
  %410 = add nsw i64 %155, 1
  %411 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %155
  br i1 %409, label %417, label %412

412:                                              ; preds = %400
  %413 = getelementptr inbounds i8, ptr %411, i64 8
  store double %402, ptr %411, align 8, !tbaa.struct !108
  store double %405, ptr %413, align 8, !tbaa.struct !162
  %414 = add nsw i64 %156, 1
  %415 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %156
  store double %401, ptr %415, align 8, !tbaa.struct !108
  %416 = getelementptr inbounds i8, ptr %415, i64 8
  store double %404, ptr %416, align 8, !tbaa.struct !162
  br label %494

417:                                              ; preds = %400
  store <2 x double> %163, ptr %411, align 8
  %418 = add nsw i64 %155, 2
  %419 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %410
  store <2 x double> %208, ptr %419, align 8
  %420 = add nsw i64 %156, 1
  %421 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %156
  store <2 x double> %162, ptr %421, align 8
  %422 = add nsw i64 %156, 2
  %423 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %420
  store <2 x double> %209, ptr %423, align 8
  br label %494

424:                                              ; preds = %376
  %425 = extractelement <2 x double> %233, i64 0
  %426 = extractelement <2 x double> %233, i64 1
  %427 = fsub double %426, %425
  %428 = extractelement <2 x double> %234, i64 0
  %429 = extractelement <2 x double> %234, i64 1
  %430 = fsub double %429, %428
  %431 = fmul double %430, %430
  %432 = tail call double @llvm.fmuladd.f64(double %427, double %427, double %431)
  %433 = fcmp ugt double %432, %84
  %434 = add nsw i64 %155, 1
  %435 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %155
  br i1 %433, label %438, label %436

436:                                              ; preds = %424
  %437 = getelementptr inbounds i8, ptr %435, i64 8
  store double %426, ptr %435, align 8, !tbaa.struct !108
  store double %429, ptr %437, align 8, !tbaa.struct !162
  br label %441

438:                                              ; preds = %424
  store <2 x double> %163, ptr %435, align 8
  %439 = add nsw i64 %155, 2
  %440 = getelementptr inbounds %struct._PointInfo, ptr %246, i64 %434
  store <2 x double> %208, ptr %440, align 8
  br label %441

441:                                              ; preds = %438, %436
  %442 = phi i64 [ %434, %436 ], [ %439, %438 ]
  %443 = load double, ptr %168, align 8, !tbaa.struct !108
  %444 = load double, ptr %170, align 8, !tbaa.struct !162
  %445 = extractelement <2 x double> %162, i64 1
  %446 = fsub double %445, %444
  %447 = extractelement <2 x double> %162, i64 0
  %448 = fsub double %447, %443
  %449 = tail call double @atan2(double noundef %446, double noundef %448) #35
  %450 = extractelement <2 x double> %209, i64 1
  %451 = fsub double %450, %444
  %452 = extractelement <2 x double> %209, i64 0
  %453 = fsub double %452, %443
  %454 = tail call double @atan2(double noundef %451, double noundef %453) #35
  %455 = fcmp olt double %449, %454
  %456 = fadd double %449, 0x401921FB54442D18
  %457 = select i1 %455, double %456, double %449
  %458 = fsub double %457, %454
  %459 = tail call double @sqrt(double noundef %152) #35
  %460 = fmul double %459, 2.000000e+00
  %461 = fdiv double %458, %460
  %462 = tail call double @llvm.ceil.f64(double %461)
  %463 = fptoui double %462 to i64
  %464 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %156
  store <2 x double> %162, ptr %464, align 8
  %465 = add nsw i64 %156, 1
  %466 = icmp sgt i64 %463, 1
  br i1 %466, label %467, label %489

467:                                              ; preds = %441
  %468 = fsub double %454, %457
  %469 = uitofp i64 %463 to double
  %470 = tail call fastcc double @DegreesToRadians(double noundef 3.600000e+02) #38
  br label %471

471:                                              ; preds = %467, %471
  %472 = phi i64 [ %465, %467 ], [ %487, %471 ]
  %473 = phi i64 [ 1, %467 ], [ %486, %471 ]
  %474 = sitofp i64 %473 to double
  %475 = fmul double %468, %474
  %476 = fdiv double %475, %469
  %477 = fadd double %457, %476
  %478 = tail call double @fmod(double noundef %477, double noundef %470) #35
  %479 = tail call double @cos(double noundef %478) #35
  %480 = tail call double @llvm.fmuladd.f64(double %78, double %479, double %443)
  %481 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %472
  store double %480, ptr %481, align 8, !tbaa !91
  %482 = tail call double @fmod(double noundef %477, double noundef %470) #35
  %483 = tail call double @sin(double noundef %482) #35
  %484 = tail call double @llvm.fmuladd.f64(double %78, double %483, double %444)
  %485 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %472, i32 1
  store double %484, ptr %485, align 8, !tbaa !90
  %486 = add nuw nsw i64 %473, 1
  %487 = add nsw i64 %472, 1
  %488 = icmp eq i64 %486, %463
  br i1 %488, label %489, label %471, !llvm.loop !288

489:                                              ; preds = %471, %441
  %490 = phi i64 [ %156, %441 ], [ %472, %471 ]
  %491 = phi i64 [ %465, %441 ], [ %487, %471 ]
  %492 = add nsw i64 %490, 2
  %493 = getelementptr inbounds %struct._PointInfo, ptr %245, i64 %491
  store <2 x double> %209, ptr %493, align 8
  br label %494

494:                                              ; preds = %255, %293, %298, %274, %278, %371, %376, %412, %417, %395, %397, %489, %153
  %495 = phi double [ %161, %153 ], [ %180, %489 ], [ %180, %397 ], [ %180, %395 ], [ %180, %417 ], [ %180, %412 ], [ %180, %376 ], [ %180, %371 ], [ %180, %278 ], [ %180, %274 ], [ %180, %298 ], [ %180, %293 ], [ %180, %255 ]
  %496 = phi ptr [ %160, %153 ], [ %245, %489 ], [ %245, %397 ], [ %245, %395 ], [ %245, %417 ], [ %245, %412 ], [ %245, %376 ], [ %245, %371 ], [ %245, %278 ], [ %245, %274 ], [ %245, %298 ], [ %245, %293 ], [ %245, %255 ]
  %497 = phi ptr [ %159, %153 ], [ %246, %489 ], [ %246, %397 ], [ %246, %395 ], [ %246, %417 ], [ %246, %412 ], [ %246, %376 ], [ %246, %371 ], [ %246, %278 ], [ %246, %274 ], [ %246, %298 ], [ %246, %293 ], [ %246, %255 ]
  %498 = phi i64 [ %158, %153 ], [ %247, %489 ], [ %247, %397 ], [ %247, %395 ], [ %247, %417 ], [ %247, %412 ], [ %247, %376 ], [ %247, %371 ], [ %247, %278 ], [ %247, %274 ], [ %247, %298 ], [ %247, %293 ], [ %247, %255 ]
  %499 = phi i64 [ %157, %153 ], [ %154, %489 ], [ %154, %397 ], [ %154, %395 ], [ %154, %417 ], [ %154, %412 ], [ %154, %376 ], [ %154, %371 ], [ %154, %278 ], [ %154, %274 ], [ %154, %298 ], [ %154, %293 ], [ %154, %255 ]
  %500 = phi i64 [ %156, %153 ], [ %492, %489 ], [ %382, %397 ], [ %382, %395 ], [ %422, %417 ], [ %414, %412 ], [ %156, %376 ], [ %325, %371 ], [ %279, %278 ], [ %272, %274 ], [ %303, %298 ], [ %295, %293 ], [ %156, %255 ]
  %501 = phi i64 [ %155, %153 ], [ %442, %489 ], [ %398, %397 ], [ %393, %395 ], [ %418, %417 ], [ %410, %412 ], [ %155, %376 ], [ %374, %371 ], [ %261, %278 ], [ %261, %274 ], [ %299, %298 ], [ %291, %293 ], [ %155, %255 ]
  %502 = phi <2 x double> [ %162, %153 ], [ %206, %489 ], [ %206, %397 ], [ %206, %395 ], [ %206, %417 ], [ %206, %412 ], [ %206, %376 ], [ %206, %371 ], [ %206, %278 ], [ %206, %274 ], [ %206, %298 ], [ %206, %293 ], [ %206, %255 ]
  %503 = phi <2 x double> [ %163, %153 ], [ %207, %489 ], [ %207, %397 ], [ %207, %395 ], [ %207, %417 ], [ %207, %412 ], [ %207, %376 ], [ %207, %371 ], [ %207, %278 ], [ %207, %274 ], [ %207, %298 ], [ %207, %293 ], [ %207, %255 ]
  %504 = phi <2 x double> [ %164, %153 ], [ %172, %489 ], [ %172, %397 ], [ %172, %395 ], [ %172, %417 ], [ %172, %412 ], [ %172, %376 ], [ %172, %371 ], [ %172, %278 ], [ %172, %274 ], [ %172, %298 ], [ %172, %293 ], [ %172, %255 ]
  %505 = phi <2 x double> [ %165, %153 ], [ %377, %489 ], [ %377, %397 ], [ %377, %395 ], [ %377, %417 ], [ %377, %412 ], [ %377, %376 ], [ %256, %371 ], [ %256, %278 ], [ %256, %274 ], [ %256, %298 ], [ %256, %293 ], [ %256, %255 ]
  %506 = phi <2 x double> [ %166, %153 ], [ %378, %489 ], [ %378, %397 ], [ %378, %395 ], [ %378, %417 ], [ %378, %412 ], [ %378, %376 ], [ %257, %371 ], [ %257, %278 ], [ %257, %274 ], [ %257, %298 ], [ %257, %293 ], [ %257, %255 ]
  %507 = add i64 %154, 1
  %508 = icmp eq i64 %507, %43
  br i1 %508, label %509, label %153, !llvm.loop !289

509:                                              ; preds = %494, %140
  %510 = phi ptr [ %7, %140 ], [ %496, %494 ]
  %511 = phi ptr [ %8, %140 ], [ %497, %494 ]
  %512 = phi i64 [ 1, %140 ], [ %500, %494 ]
  %513 = phi i64 [ 1, %140 ], [ %501, %494 ]
  %514 = phi <2 x double> [ %141, %140 ], [ %502, %494 ]
  %515 = phi <2 x double> [ %142, %140 ], [ %503, %494 ]
  %516 = add i64 %512, 1
  %517 = getelementptr inbounds %struct._PointInfo, ptr %510, i64 %512
  store <2 x double> %514, ptr %517, align 8
  %518 = add nsw i64 %513, 1
  %519 = getelementptr inbounds %struct._PointInfo, ptr %511, i64 %513
  store <2 x double> %515, ptr %519, align 8
  %520 = add nsw i64 %518, %516
  %521 = zext i1 %31 to i64
  %522 = select i1 %31, i64 4, i64 2
  %523 = add i64 %522, %520
  %524 = tail call ptr @AcquireQuantumMemory(i64 noundef %523, i64 noundef 40) #39
  %525 = icmp eq ptr %524, null
  br i1 %525, label %565, label %526

526:                                              ; preds = %509
  %527 = icmp slt i64 %512, 0
  br i1 %527, label %534, label %528

528:                                              ; preds = %526, %528
  %529 = phi i64 [ %532, %528 ], [ 0, %526 ]
  %530 = getelementptr inbounds %struct._PrimitiveInfo, ptr %524, i64 %529
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %530, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !166
  %531 = getelementptr inbounds %struct._PointInfo, ptr %510, i64 %529
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %530, ptr noundef nonnull align 8 dereferenceable(16) %531, i64 16, i1 false), !tbaa.struct !108
  %532 = add nuw i64 %529, 1
  %533 = icmp eq i64 %529, %512
  br i1 %533, label %534, label %528, !llvm.loop !290

534:                                              ; preds = %528, %526
  %535 = phi i64 [ 0, %526 ], [ %516, %528 ]
  br i1 %31, label %536, label %539

536:                                              ; preds = %534
  %537 = getelementptr inbounds %struct._PrimitiveInfo, ptr %524, i64 %535
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %537, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %537, ptr noundef nonnull align 8 dereferenceable(16) %524, i64 16, i1 false), !tbaa.struct !108
  %538 = add nuw nsw i64 %535, 1
  br label %539

539:                                              ; preds = %536, %534
  %540 = phi i64 [ %538, %536 ], [ %535, %534 ]
  %541 = add nsw i64 %520, %521
  %542 = icmp slt i64 %540, %541
  br i1 %542, label %543, label %550

543:                                              ; preds = %539, %543
  %544 = phi i64 [ %546, %543 ], [ %540, %539 ]
  %545 = getelementptr inbounds %struct._PrimitiveInfo, ptr %524, i64 %544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %545, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !166
  %546 = add nsw i64 %544, 1
  %547 = sub nsw i64 %541, %546
  %548 = getelementptr inbounds %struct._PointInfo, ptr %511, i64 %547
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %545, ptr noundef nonnull align 8 dereferenceable(16) %548, i64 16, i1 false), !tbaa.struct !108
  %549 = icmp slt i64 %546, %541
  br i1 %549, label %543, label %550, !llvm.loop !291

550:                                              ; preds = %543, %539
  %551 = phi i64 [ %540, %539 ], [ %546, %543 ]
  br i1 %31, label %552, label %557

552:                                              ; preds = %550
  %553 = getelementptr inbounds %struct._PrimitiveInfo, ptr %524, i64 %551
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %553, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !166
  %554 = getelementptr %struct._PrimitiveInfo, ptr %524, i64 %516
  %555 = getelementptr %struct._PrimitiveInfo, ptr %554, i64 %521
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %553, ptr noundef nonnull align 8 dereferenceable(16) %555, i64 16, i1 false), !tbaa.struct !108
  %556 = add nsw i64 %551, 1
  br label %557

557:                                              ; preds = %552, %550
  %558 = phi i64 [ 2, %552 ], [ 0, %550 ]
  %559 = phi i64 [ %556, %552 ], [ %551, %550 ]
  %560 = getelementptr inbounds %struct._PrimitiveInfo, ptr %524, i64 %559
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %560, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %560, ptr noundef nonnull align 8 dereferenceable(16) %524, i64 16, i1 false), !tbaa.struct !108
  %561 = getelementptr %struct._PrimitiveInfo, ptr %560, i64 1, i32 2
  store i32 0, ptr %561, align 8, !tbaa !157
  %562 = add i64 %520, 1
  %563 = add i64 %562, %558
  %564 = getelementptr inbounds %struct._PrimitiveInfo, ptr %524, i64 0, i32 1
  store i64 %563, ptr %564, align 8, !tbaa !159
  br label %565

565:                                              ; preds = %557, %509
  %566 = tail call ptr @RelinquishMagickMemory(ptr noundef %510) #35
  %567 = tail call ptr @RelinquishMagickMemory(ptr noundef %511) #35
  br label %568

568:                                              ; preds = %237, %565
  %569 = phi ptr [ %524, %565 ], [ null, %237 ]
  %570 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %10) #35
  br label %571

571:                                              ; preds = %568, %2
  %572 = phi ptr [ null, %2 ], [ %569, %568 ]
  ret ptr %572
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DrawRoundLinecap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [5 x %struct._PrimitiveInfo], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #12
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %8, %5 ]
  %7 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !166
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp eq i64 %8, 4
  br i1 %9, label %10, label %5, !llvm.loop !292

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._PrimitiveInfo, ptr %4, i64 0, i32 1
  store i64 4, ptr %11, align 16, !tbaa !159
  %12 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !178
  %14 = fadd double %13, 0x3D06849B86A12B9C
  store double %14, ptr %12, align 8, !tbaa !178
  %15 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 2
  %16 = load <2 x double>, ptr %15, align 16, !tbaa !57
  %17 = fadd <2 x double> %16, <double 0x3D06849B86A12B9C, double 0x3D06849B86A12B9C>
  store <2 x double> %17, ptr %15, align 16, !tbaa !57
  %18 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 3, i32 0, i32 1
  %19 = load double, ptr %18, align 16, !tbaa !179
  %20 = fadd double %19, 0x3D06849B86A12B9C
  store double %20, ptr %18, align 16, !tbaa !179
  %21 = getelementptr inbounds [5 x %struct._PrimitiveInfo], ptr %4, i64 0, i64 4, i32 2
  store i32 0, ptr %21, align 8, !tbaa !157
  %22 = call fastcc i32 @DrawPolygonPrimitive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #38
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DrawEpsilonReciprocal(double noundef %0) unnamed_addr #9 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp oge double %4, 1.000000e-10
  %6 = fdiv double 1.000000e+00, %0
  %7 = fmul double %3, 1.000000e+10
  %8 = select i1 %5, double %6, double %7
  ret double %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @TraceSquareLinecap(ptr nocapture noundef %0, i64 noundef %1, double noundef %2) unnamed_addr #0 {
  %4 = icmp sgt i64 %1, 1
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = load <2 x double>, ptr %0, align 8, !tbaa !57
  br label %7

7:                                                ; preds = %5, %17
  %8 = phi i64 [ 1, %5 ], [ %18, %17 ]
  %9 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %8
  %10 = load <2 x double>, ptr %9, align 8, !tbaa !57
  %11 = fsub <2 x double> %6, %10
  %12 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %11)
  %13 = fcmp ult <2 x double> %12, <double 1.000000e-15, double 1.000000e-15>
  %14 = extractelement <2 x i1> %13, i64 0
  %15 = extractelement <2 x i1> %13, i64 1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %20, label %7, !llvm.loop !293

20:                                               ; preds = %17, %7, %3
  %21 = phi i64 [ 1, %3 ], [ %8, %7 ], [ %1, %17 ]
  %22 = phi <2 x double> [ zeroinitializer, %3 ], [ %11, %7 ], [ %11, %17 ]
  %23 = icmp eq i64 %21, %1
  %24 = add nsw i64 %1, -1
  %25 = select i1 %23, i64 %24, i64 %21
  %26 = extractelement <2 x double> %22, i64 0
  %27 = extractelement <2 x double> %22, i64 1
  %28 = tail call double @hypot(double noundef %26, double noundef %27) #35
  %29 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %25
  %30 = fadd double %28, %2
  %31 = load <2 x double>, ptr %29, align 8, !tbaa !57
  %32 = insertelement <2 x double> poison, double %30, i64 0
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> zeroinitializer
  %34 = fmul <2 x double> %22, %33
  %35 = insertelement <2 x double> poison, double %28, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %37 = fdiv <2 x double> %34, %36
  %38 = fadd <2 x double> %31, %37
  store <2 x double> %38, ptr %0, align 8, !tbaa !57
  %39 = add nsw i64 %1, -2
  br i1 %4, label %40, label %57

40:                                               ; preds = %20
  %41 = getelementptr %struct._PrimitiveInfo, ptr %0, i64 %1
  %42 = getelementptr %struct._PrimitiveInfo, ptr %41, i64 -1
  %43 = load <2 x double>, ptr %42, align 8, !tbaa !57
  br label %44

44:                                               ; preds = %40, %54
  %45 = phi i64 [ %39, %40 ], [ %55, %54 ]
  %46 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %45
  %47 = load <2 x double>, ptr %46, align 8, !tbaa !57
  %48 = fsub <2 x double> %43, %47
  %49 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %48)
  %50 = fcmp ult <2 x double> %49, <double 1.000000e-15, double 1.000000e-15>
  %51 = extractelement <2 x i1> %50, i64 0
  %52 = extractelement <2 x i1> %50, i64 1
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = add nsw i64 %45, -1
  %56 = icmp sgt i64 %45, 0
  br i1 %56, label %44, label %57, !llvm.loop !294

57:                                               ; preds = %54, %44, %20
  %58 = phi i64 [ %39, %20 ], [ %45, %44 ], [ -1, %54 ]
  %59 = phi <2 x double> [ %22, %20 ], [ %48, %44 ], [ %48, %54 ]
  %60 = extractelement <2 x double> %59, i64 0
  %61 = extractelement <2 x double> %59, i64 1
  %62 = tail call double @hypot(double noundef %60, double noundef %61) #35
  %63 = getelementptr inbounds %struct._PrimitiveInfo, ptr %0, i64 %58
  %64 = fadd double %62, %2
  %65 = getelementptr %struct._PrimitiveInfo, ptr %0, i64 %1
  %66 = getelementptr %struct._PrimitiveInfo, ptr %65, i64 -1
  %67 = load <2 x double>, ptr %63, align 8, !tbaa !57
  %68 = insertelement <2 x double> poison, double %64, i64 0
  %69 = shufflevector <2 x double> %68, <2 x double> poison, <2 x i32> zeroinitializer
  %70 = fmul <2 x double> %59, %69
  %71 = insertelement <2 x double> poison, double %62, i64 0
  %72 = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = fdiv <2 x double> %70, %72
  %74 = fadd <2 x double> %67, %73
  store <2 x double> %74, ptr %66, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #30

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #29

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #32

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #33

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { optsize allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nofree nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #32 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #34 = { nounwind optsize allocsize(0) }
attributes #35 = { nounwind optsize }
attributes #36 = { nounwind optsize willreturn memory(none) }
attributes #37 = { noreturn nounwind optsize }
attributes #38 = { optsize }
attributes #39 = { nounwind optsize allocsize(0,1) }
attributes #40 = { hot nounwind optsize }
attributes #41 = { nounwind optsize willreturn memory(read) }
attributes #42 = { nounwind optsize allocsize(1,2) }

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
!10 = !{!11, !7, i64 20}
!11 = !{!"_ImageInfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !13, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !14, i64 144, !14, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !7, i64 184, !7, i64 188, !13, i64 192, !7, i64 200, !7, i64 204, !7, i64 208, !13, i64 216, !7, i64 224, !7, i64 228, !12, i64 232, !12, i64 240, !7, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !13, i64 320, !8, i64 328, !8, i64 4424, !8, i64 8520, !8, i64 12616, !7, i64 16712, !12, i64 16720, !13, i64 16728, !13, i64 16736, !15, i64 16744, !13, i64 16752, !7, i64 16760, !15, i64 16764, !12, i64 16776, !7, i64 16784}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_PixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!16 = !{!"short", !8, i64 0}
!17 = !{!18, !7, i64 280}
!18 = !{!"_DrawInfo", !12, i64 0, !12, i64 8, !19, i64 16, !20, i64 48, !7, i64 96, !15, i64 100, !15, i64 108, !14, i64 120, !21, i64 128, !12, i64 256, !12, i64 264, !12, i64 272, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !13, i64 304, !14, i64 312, !7, i64 320, !7, i64 324, !12, i64 328, !13, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !7, i64 368, !7, i64 372, !13, i64 376, !12, i64 384, !14, i64 392, !12, i64 400, !7, i64 408, !15, i64 412, !15, i64 420, !12, i64 432, !12, i64 440, !12, i64 448, !22, i64 456, !7, i64 488, !16, i64 492, !7, i64 496, !25, i64 504, !7, i64 672, !13, i64 680, !14, i64 688, !14, i64 696, !14, i64 704, !7, i64 712}
!19 = !{!"_RectangleInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!20 = !{!"_AffineMatrix", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!21 = !{!"_GradientInfo", !7, i64 0, !19, i64 8, !22, i64 40, !12, i64 72, !13, i64 80, !7, i64 88, !7, i64 92, !13, i64 96, !23, i64 104, !24, i64 120}
!22 = !{!"_SegmentInfo", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!23 = !{!"_PointInfo", !14, i64 0, !14, i64 8}
!24 = !{!"float", !8, i64 0}
!25 = !{!"_ElementReference", !12, i64 0, !7, i64 8, !21, i64 16, !13, i64 144, !12, i64 152, !12, i64 160}
!26 = !{!18, !14, i64 120}
!27 = !{!18, !16, i64 492}
!28 = !{!18, !7, i64 288}
!29 = !{!18, !7, i64 292}
!30 = !{!18, !7, i64 296}
!31 = !{!18, !13, i64 304}
!32 = !{!18, !7, i64 320}
!33 = !{!11, !12, i64 120}
!34 = !{!18, !12, i64 344}
!35 = !{!11, !12, i64 136}
!36 = !{!18, !12, i64 400}
!37 = !{!18, !7, i64 284}
!38 = !{!18, !14, i64 392}
!39 = !{!11, !14, i64 144}
!40 = !{!18, !16, i64 418}
!41 = !{!18, !7, i64 324}
!42 = !{!11, !12, i64 112}
!43 = !{!18, !12, i64 432}
!44 = !{!18, !7, i64 496}
!45 = !{!18, !7, i64 672}
!46 = !{!18, !14, i64 688}
!47 = !{!18, !14, i64 704}
!48 = !{!18, !7, i64 712}
!49 = !{!18, !14, i64 696}
!50 = !{!18, !7, i64 96}
!51 = !{!18, !13, i64 680}
!52 = !{!18, !12, i64 0}
!53 = !{!18, !12, i64 8}
!54 = !{i64 0, i64 8, !55, i64 8, i64 8, !55, i64 16, i64 8, !55, i64 24, i64 8, !55}
!55 = !{!13, !13, i64 0}
!56 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !57, i64 24, i64 8, !57, i64 32, i64 8, !57, i64 40, i64 8, !57}
!57 = !{!14, !14, i64 0}
!58 = !{!18, !12, i64 256}
!59 = !{!18, !12, i64 264}
!60 = !{!18, !12, i64 272}
!61 = !{!18, !14, i64 312}
!62 = !{!18, !12, i64 328}
!63 = !{!18, !12, i64 352}
!64 = !{!18, !12, i64 360}
!65 = !{!18, !13, i64 376}
!66 = !{!18, !12, i64 384}
!67 = !{!18, !7, i64 408}
!68 = !{!18, !12, i64 440}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{i64 0, i64 4, !6, i64 8, i64 8, !55, i64 16, i64 8, !55, i64 24, i64 8, !55, i64 32, i64 8, !55, i64 40, i64 8, !57, i64 48, i64 8, !57, i64 56, i64 8, !57, i64 64, i64 8, !57, i64 72, i64 8, !72, i64 80, i64 8, !55, i64 88, i64 4, !6, i64 92, i64 4, !6, i64 96, i64 8, !55, i64 104, i64 8, !57, i64 112, i64 8, !57, i64 120, i64 4, !73}
!72 = !{!12, !12, i64 0}
!73 = !{!24, !24, i64 0}
!74 = !{!18, !12, i64 200}
!75 = !{!18, !13, i64 208}
!76 = !{!18, !12, i64 448}
!77 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !57, i64 24, i64 8, !57}
!78 = !{!18, !7, i64 488}
!79 = !{i64 0, i64 8, !72, i64 8, i64 4, !6, i64 16, i64 4, !6, i64 24, i64 8, !55, i64 32, i64 8, !55, i64 40, i64 8, !55, i64 48, i64 8, !55, i64 56, i64 8, !57, i64 64, i64 8, !57, i64 72, i64 8, !57, i64 80, i64 8, !57, i64 88, i64 8, !72, i64 96, i64 8, !55, i64 104, i64 4, !6, i64 108, i64 4, !6, i64 112, i64 8, !55, i64 120, i64 8, !57, i64 128, i64 8, !57, i64 136, i64 4, !73, i64 144, i64 8, !55, i64 152, i64 8, !72, i64 160, i64 8, !72}
!80 = !{!81, !7, i64 12976}
!81 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !12, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !14, i64 104, !82, i64 112, !7, i64 208, !12, i64 216, !7, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !13, i64 256, !14, i64 264, !14, i64 272, !19, i64 280, !19, i64 312, !19, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !12, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !84, i64 480, !85, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !13, i64 12904, !13, i64 12912, !87, i64 12920, !7, i64 12976, !13, i64 12984, !12, i64 12992, !88, i64 13000, !88, i64 13032, !12, i64 13064, !13, i64 13072, !13, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !7, i64 13112, !7, i64 13116, !15, i64 13120, !12, i64 13128, !19, i64 13136, !12, i64 13168, !12, i64 13176, !7, i64 13184, !7, i64 13188, !89, i64 13192, !7, i64 13200, !13, i64 13208, !13, i64 13216, !7, i64 13224, !13, i64 13232}
!82 = !{!"_ChromaticityInfo", !83, i64 0, !83, i64 24, !83, i64 48, !83, i64 72}
!83 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!84 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!85 = !{!"_TimerInfo", !86, i64 0, !86, i64 24, !7, i64 48, !13, i64 56}
!86 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!87 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !7, i64 32, !12, i64 40, !13, i64 48}
!88 = !{!"_ProfileInfo", !12, i64 0, !13, i64 8, !12, i64 16, !13, i64 24}
!89 = !{!"long long", !8, i64 0}
!90 = !{!23, !14, i64 8}
!91 = !{!23, !14, i64 0}
!92 = !{!20, !14, i64 40}
!93 = !{!20, !14, i64 24}
!94 = !{!20, !14, i64 8}
!95 = !{!20, !14, i64 32}
!96 = !{!20, !14, i64 16}
!97 = !{!20, !14, i64 0}
!98 = distinct !{!98, !70, !99, !100}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = distinct !{!101, !70}
!102 = !{!22, !14, i64 0}
!103 = !{!22, !14, i64 8}
!104 = !{!81, !13, i64 40}
!105 = !{!22, !14, i64 16}
!106 = !{!81, !13, i64 48}
!107 = !{!22, !14, i64 24}
!108 = !{i64 0, i64 8, !57, i64 8, i64 8, !57}
!109 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 16, i64 8, !57, i64 24, i64 8, !55, i64 32, i64 4, !73, i64 36, i64 4, !73, i64 40, i64 4, !73, i64 44, i64 4, !73, i64 48, i64 4, !73}
!110 = !{!111, !24, i64 44}
!111 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !13, i64 24, !24, i64 32, !24, i64 36, !24, i64 40, !24, i64 44, !24, i64 48}
!112 = distinct !{!112, !70}
!113 = !{!16, !16, i64 0}
!114 = !{!81, !7, i64 4}
!115 = !{!111, !24, i64 48}
!116 = !{!111, !24, i64 32}
!117 = !{!111, !24, i64 36}
!118 = !{!111, !24, i64 40}
!119 = !{!111, !7, i64 4}
!120 = !{!15, !16, i64 4}
!121 = !{!15, !16, i64 2}
!122 = !{!15, !16, i64 0}
!123 = !{!15, !16, i64 6}
!124 = !{!81, !7, i64 0}
!125 = !{!126}
!126 = !{i64 2, i64 -1, i64 -1, i1 true}
!127 = !{!81, !12, i64 424}
!128 = !{!81, !16, i64 86}
!129 = !{i32 0, i32 2}
!130 = !{!8, !8, i64 0}
!131 = !{!81, !13, i64 280}
!132 = !{!81, !13, i64 288}
!133 = distinct !{!133, !70}
!134 = !{!18, !14, i64 472}
!135 = !{!18, !14, i64 480}
!136 = !{!18, !16, i64 106}
!137 = !{!18, !7, i64 372}
!138 = !{!18, !7, i64 368}
!139 = !{!18, !16, i64 114}
!140 = distinct !{!140, !70}
!141 = distinct !{!141, !70}
!142 = !{!18, !14, i64 48}
!143 = !{!18, !14, i64 64}
!144 = !{!18, !14, i64 80}
!145 = !{!18, !14, i64 56}
!146 = !{!18, !14, i64 72}
!147 = !{!18, !14, i64 88}
!148 = distinct !{!148, !70}
!149 = distinct !{!149, !70}
!150 = distinct !{!150, !70}
!151 = distinct !{!151, !70}
!152 = !{!18, !13, i64 32}
!153 = !{!18, !13, i64 40}
!154 = !{!18, !13, i64 16}
!155 = !{!18, !13, i64 24}
!156 = distinct !{!156, !70}
!157 = !{!158, !7, i64 24}
!158 = !{!"_PrimitiveInfo", !23, i64 0, !13, i64 16, !7, i64 24, !7, i64 28, !12, i64 32}
!159 = !{!158, !13, i64 16}
!160 = !{!158, !7, i64 28}
!161 = !{!158, !12, i64 32}
!162 = !{i64 0, i64 8, !57}
!163 = distinct !{!163, !70}
!164 = distinct !{!164, !70}
!165 = distinct !{!165, !70}
!166 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !55, i64 24, i64 4, !6, i64 28, i64 4, !6, i64 32, i64 8, !72}
!167 = !{!18, !14, i64 456}
!168 = !{!18, !14, i64 464}
!169 = distinct !{!169, !70}
!170 = distinct !{!170, !70}
!171 = !{!11, !12, i64 24}
!172 = distinct !{!172, !70}
!173 = distinct !{!173, !70}
!174 = distinct !{!174, !70}
!175 = distinct !{!175, !70}
!176 = distinct !{!176, !70}
!177 = distinct !{!177, !70}
!178 = !{!158, !14, i64 0}
!179 = !{!158, !14, i64 8}
!180 = distinct !{!180, !70}
!181 = distinct !{!181, !70}
!182 = distinct !{!182, !70}
!183 = distinct !{!183, !70}
!184 = distinct !{!184, !70}
!185 = distinct !{!185, !70}
!186 = distinct !{!186, !70}
!187 = distinct !{!187, !70}
!188 = distinct !{!188, !70}
!189 = distinct !{!189, !70}
!190 = distinct !{!190, !70}
!191 = distinct !{!191, !70}
!192 = distinct !{!192, !70}
!193 = distinct !{!193, !70}
!194 = distinct !{!194, !70}
!195 = distinct !{!195, !70}
!196 = distinct !{!196, !70}
!197 = distinct !{!197, !70}
!198 = distinct !{!198, !70}
!199 = distinct !{!199, !70}
!200 = distinct !{!200, !70}
!201 = distinct !{!201, !70}
!202 = distinct !{!202, !70}
!203 = distinct !{!203, !70}
!204 = distinct !{!204, !70}
!205 = distinct !{!205, !70}
!206 = distinct !{!206, !70}
!207 = distinct !{!207, !70}
!208 = !{!18, !16, i64 420}
!209 = distinct !{!209, !70}
!210 = distinct !{!210, !70}
!211 = !{!81, !7, i64 32}
!212 = distinct !{!212, !70}
!213 = distinct !{!213, !70}
!214 = distinct !{!214, !70}
!215 = distinct !{!215, !70}
!216 = !{!81, !7, i64 400}
!217 = !{!81, !7, i64 412}
!218 = !{!19, !13, i64 16}
!219 = !{!19, !13, i64 24}
!220 = !{!81, !7, i64 13112}
!221 = distinct !{!221, !70}
!222 = !{!81, !12, i64 568}
!223 = !{!81, !12, i64 576}
!224 = distinct !{!224, !70}
!225 = distinct !{!225, !70}
!226 = distinct !{!226, !70}
!227 = distinct !{!227, !70}
!228 = !{!19, !13, i64 8}
!229 = !{!19, !13, i64 0}
!230 = !{!21, !7, i64 0}
!231 = !{!21, !7, i64 88}
!232 = !{!21, !13, i64 80}
!233 = !{!21, !12, i64 72}
!234 = !{!235, !24, i64 56}
!235 = !{!"_StopInfo", !111, i64 0, !24, i64 56}
!236 = distinct !{!236, !70}
!237 = distinct !{!237, !70}
!238 = !{!21, !24, i64 120}
!239 = distinct !{!239, !70}
!240 = distinct !{!240, !70}
!241 = !{!21, !14, i64 104}
!242 = !{!21, !14, i64 112}
!243 = !{!81, !13, i64 13152}
!244 = !{!81, !13, i64 13160}
!245 = distinct !{!245, !70}
!246 = !{!247, !12, i64 0}
!247 = !{!"_PolygonInfo", !12, i64 0, !13, i64 8}
!248 = !{!247, !13, i64 8}
!249 = !{!250, !14, i64 0}
!250 = !{!"_EdgeInfo", !22, i64 0, !14, i64 32, !12, i64 40, !13, i64 48, !13, i64 56, !7, i64 64, !13, i64 72}
!251 = !{!250, !14, i64 8}
!252 = !{!250, !14, i64 16}
!253 = !{!250, !14, i64 24}
!254 = distinct !{!254, !70}
!255 = distinct !{!255, !70}
!256 = distinct !{!256, !70}
!257 = distinct !{!257, !70}
!258 = distinct !{!258, !70}
!259 = distinct !{!259, !70}
!260 = distinct !{!260, !70}
!261 = distinct !{!261, !70}
!262 = distinct !{!262, !70}
!263 = distinct !{!263, !70}
!264 = distinct !{!264, !70}
!265 = !{!250, !13, i64 72}
!266 = !{!250, !13, i64 48}
!267 = !{!250, !12, i64 40}
!268 = !{!250, !14, i64 32}
!269 = !{!250, !7, i64 64}
!270 = distinct !{!270, !70}
!271 = distinct !{!271, !70}
!272 = !{!250, !13, i64 56}
!273 = distinct !{!273, !70}
!274 = distinct !{!274, !70}
!275 = !{!276, !7, i64 16}
!276 = !{!"_PathInfo", !23, i64 0, !7, i64 16}
!277 = distinct !{!277, !70}
!278 = !{!276, !14, i64 8}
!279 = !{!276, !14, i64 0}
!280 = distinct !{!280, !70}
!281 = distinct !{!281, !70}
!282 = distinct !{!282, !70}
!283 = distinct !{!283, !70}
!284 = distinct !{!284, !70}
!285 = distinct !{!285, !70}
!286 = distinct !{!286, !70}
!287 = distinct !{!287, !70}
!288 = distinct !{!288, !70}
!289 = distinct !{!289, !70}
!290 = distinct !{!290, !70}
!291 = distinct !{!291, !70}
!292 = distinct !{!292, !70}
!293 = distinct !{!293, !70}
!294 = distinct !{!294, !70}
