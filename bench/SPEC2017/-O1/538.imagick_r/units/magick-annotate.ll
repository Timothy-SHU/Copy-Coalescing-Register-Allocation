; ModuleID = 'magick/annotate.c'
source_filename = "magick/annotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UTFInfo = type { i32, i32, i32, i32 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._PointInfo = type { double, double }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._TypeMetric = type { %struct._PointInfo, double, double, double, double, double, double, double, %struct._SegmentInfo, %struct._PointInfo }
%struct._SegmentInfo = type { double, double, double, double }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._DrawInfo = type { ptr, ptr, %struct._RectangleInfo, %struct._AffineMatrix, i32, %struct._PixelPacket, %struct._PixelPacket, double, %struct._GradientInfo, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, double, i32, i32, ptr, i64, ptr, ptr, ptr, i32, i32, i64, ptr, double, ptr, i32, %struct._PixelPacket, %struct._PixelPacket, ptr, ptr, ptr, %struct._SegmentInfo, i32, i16, i32, %struct._ElementReference, i32, i64, double, double, double, i32 }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._GradientInfo = type { i32, %struct._RectangleInfo, %struct._SegmentInfo, ptr, i64, i32, i32, i64, %struct._PointInfo, float }
%struct._ElementReference = type { ptr, i32, %struct._GradientInfo, i64, ptr, ptr }
%struct._TypeInfo = type { i64, ptr, ptr, ptr, ptr, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }

@annotate_semaphore = internal global ptr null, align 8
@.str = private unnamed_addr constant [18 x i8] c"magick/annotate.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"rectangle -0.5,-0.5 %g,%.20g\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"stroke-width %g line 0,0 %g,0\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"Metrics: text: %s; width: %g; height: %g; ascent: %g; descent: %g; max advance: %g; bounds: %g,%g  %g,%g; origin: %g,%g; pixels per em: %g,%g; underline position: %g; underline thickness: %g\00", align 1
@utf_info = internal unnamed_addr constant [6 x %struct.UTFInfo] [%struct.UTFInfo { i32 128, i32 0, i32 127, i32 0 }, %struct.UTFInfo { i32 224, i32 192, i32 2047, i32 128 }, %struct.UTFInfo { i32 240, i32 224, i32 65535, i32 2048 }, %struct.UTFInfo { i32 248, i32 240, i32 2097151, i32 65536 }, %struct.UTFInfo { i32 252, i32 248, i32 4194303, i32 2097152 }, %struct.UTFInfo { i32 254, i32 252, i32 134217727, i32 67108864 }], align 16
@.str.7 = private unnamed_addr constant [17 x i8] c"UnableToReadFont\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Century Schoolbook\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Sans\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"`%s' (Freetype)\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Font %s; pointsize %g\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"UnableToOpenFile\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"`%s': %s\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"%%!PS-Adobe-3.0\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"/ReencodeType\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"  findfont dup length\0A\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"  dict begin { 1 index /FID ne {def} {pop pop} ifelse } forall\0A\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"  /Encoding ISOLatin1Encoding def currentdict end definefont pop\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"} bind def\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"%g %g moveto\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"%g %g scale\0A\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"/Times-Roman-ISO dup /Times-Roman ReencodeType findfont setfont\0A\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"/%s-ISO dup /%s ReencodeType findfont setfont\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"[%g %g %g %g 0 0] concat\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"(%s) stringwidth pop -0.5 mul -0.5 rmoveto\0A\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"(%s) show\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"showpage\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"%.20gx%.20g+0+0!\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"ps:%s\00", align 1
@DefaultResolution = external local_unnamed_addr constant double, align 8
@.str.38 = private unnamed_addr constant [4 x i8] c"0x0\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"%.20gx%.20g%+.20g%+.20g\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @AnnotateComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @annotate_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #12
  store ptr %4, ptr @annotate_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @AnnotateComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @annotate_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @annotate_semaphore) #12
  br label %4

4:                                                ; preds = %3, %0
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @annotate_semaphore) #12
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @AnnotateImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = alloca %struct._PointInfo, align 8
  %6 = alloca %struct._RectangleInfo, align 8
  %7 = alloca %struct._TypeMetric, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #12
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 258, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #12
  br label %14

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %661, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %16, align 1, !tbaa !62
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %661, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @StringToList(ptr noundef nonnull %16) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %661, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds ptr, ptr %22, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %30, %28 ], [ 1, %24 ]
  %30 = add nuw nsw i64 %29, 1
  %31 = getelementptr inbounds ptr, ptr %22, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %28, !llvm.loop !63

34:                                               ; preds = %28, %24
  %35 = phi i64 [ 1, %24 ], [ %30, %28 ]
  %36 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #12
  %37 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #12
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %6) #12
  call void @SetGeometryInfo(ptr noundef nonnull %4) #12
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !66
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %43 = call i32 @ParsePageGeometry(ptr noundef %0, ptr noundef nonnull %39, ptr noundef nonnull %6, ptr noundef nonnull %42) #12
  %44 = load ptr, ptr %38, align 8, !tbaa !66
  %45 = call i32 @ParseGeometry(ptr noundef %44, ptr noundef nonnull %4) #12
  br label %46

46:                                               ; preds = %41, %34
  %47 = call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %661, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !67
  switch i32 %51, label %54 [
    i32 19, label %52
    i32 17, label %52
    i32 2, label %52
  ]

52:                                               ; preds = %49, %49, %49
  %53 = call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 13) #12
  br label %54

54:                                               ; preds = %49, %52
  %55 = load ptr, ptr %22, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %644, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %60 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3
  %61 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 4
  %62 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 3
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %64 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 5
  %65 = getelementptr inbounds %struct._DrawInfo, ptr %36, i64 0, i32 21
  %66 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 1
  %67 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 2
  %68 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 47
  %69 = getelementptr inbounds %struct._DrawInfo, ptr %36, i64 0, i32 4
  %70 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %71 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 3
  %72 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 8
  %73 = uitofp i64 %35 to double
  %74 = fadd double %73, -1.000000e+00
  %75 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %76 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %77 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 1
  %78 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %79 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %80 = uitofp i64 %35 to double
  %81 = fadd double %80, -1.000000e+00
  %82 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %83 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %84 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %85 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %86 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 3
  %87 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 8
  %88 = uitofp i64 %35 to double
  %89 = fadd double %88, -1.000000e+00
  %90 = fneg double %89
  %91 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %92 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %93 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 1
  %94 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %95 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %96 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 3
  %97 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 8
  %98 = add nsw i64 %35, -1
  %99 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %100 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %101 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 1
  %102 = uitofp i64 %35 to double
  %103 = fadd double %102, -1.000000e+00
  %104 = fneg double %103
  %105 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %106 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %107 = uitofp i64 %35 to double
  %108 = fadd double %107, -1.000000e+00
  %109 = fneg double %108
  %110 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %111 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %112 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %113 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %114 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 3
  %115 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 8
  %116 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %117 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %118 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 1
  %119 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %120 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %121 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 3
  %122 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 8
  %123 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %124 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %125 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 1
  %126 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %127 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %128 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %129 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %130 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %131 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %132 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 3
  %133 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 8
  %134 = uitofp i64 %35 to double
  %135 = fadd double %134, -1.000000e+00
  %136 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %137 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %138 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 1
  %139 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %140 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %141 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %142 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %143 = getelementptr inbounds %struct._DrawInfo, ptr %36, i64 0, i32 32
  %144 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %145 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 3
  %146 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 8
  %147 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %148 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 1
  %149 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %150 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %151 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 3
  %152 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 8
  %153 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %154 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 1
  %155 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %156 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 2
  %157 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 3
  %158 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %159 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 33, i32 3
  %160 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 33
  %161 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %162 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 2
  %163 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 3
  %164 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 9
  %165 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 7
  %166 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 3
  %167 = getelementptr inbounds %struct._DrawInfo, ptr %36, i64 0, i32 19
  %168 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 6
  %169 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 6
  %170 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 3
  %171 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 6
  %172 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 3
  br label %173

173:                                              ; preds = %57, %639
  %174 = phi ptr [ %55, %57 ], [ %642, %639 ]
  %175 = phi i64 [ 0, %57 ], [ %640, %639 ]
  %176 = load double, ptr %58, align 8, !tbaa !68
  %177 = load i64, ptr %59, align 8, !tbaa !70
  %178 = sitofp i64 %177 to double
  %179 = fsub double %176, %178
  store double %179, ptr %61, align 8, !tbaa !71
  %180 = load double, ptr %62, align 8, !tbaa !72
  %181 = load i64, ptr %63, align 8, !tbaa !73
  %182 = sitofp i64 %181 to double
  %183 = fsub double %180, %182
  store double %183, ptr %64, align 8, !tbaa !74
  %184 = call ptr @CloneString(ptr noundef nonnull %65, ptr noundef nonnull %174) #12
  %185 = call i32 @GetTypeMetrics(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %7), !range !75
  %186 = load double, ptr %66, align 8, !tbaa !76
  %187 = load double, ptr %67, align 8, !tbaa !78
  %188 = fsub double %186, %187
  %189 = load double, ptr %68, align 8, !tbaa !79
  %190 = fadd double %188, %189
  %191 = fadd double %190, 5.000000e-01
  %192 = fptosi double %191 to i64
  %193 = load i32, ptr %69, align 8, !tbaa !80
  switch i32 %193, label %194 [
    i32 9, label %479
    i32 1, label %205
    i32 2, label %227
    i32 3, label %263
    i32 4, label %297
    i32 10, label %326
    i32 5, label %326
    i32 6, label %371
    i32 7, label %411
    i32 8, label %438
  ]

194:                                              ; preds = %173
  %195 = load double, ptr %61, align 8, !tbaa !71
  %196 = sitofp i64 %175 to double
  %197 = load double, ptr %140, align 8, !tbaa !81
  %198 = fmul double %197, %196
  %199 = uitofp i64 %192 to double
  %200 = call double @llvm.fmuladd.f64(double %198, double %199, double %195)
  store double %200, ptr %5, align 8, !tbaa !82
  %201 = load double, ptr %64, align 8, !tbaa !74
  %202 = load double, ptr %141, align 8, !tbaa !83
  %203 = fmul double %202, %196
  %204 = call double @llvm.fmuladd.f64(double %203, double %199, double %201)
  store double %204, ptr %142, align 8, !tbaa !84
  br label %517

205:                                              ; preds = %173
  %206 = load i64, ptr %6, align 8, !tbaa !85
  %207 = icmp eq i64 %206, 0
  %208 = select i1 %207, double -1.000000e+00, double 1.000000e+00
  %209 = load double, ptr %61, align 8, !tbaa !71
  %210 = sitofp i64 %175 to double
  %211 = load double, ptr %127, align 8, !tbaa !81
  %212 = fmul double %211, %210
  %213 = uitofp i64 %192 to double
  %214 = fmul double %212, %213
  %215 = call double @llvm.fmuladd.f64(double %208, double %209, double %214)
  %216 = fadd double %186, %187
  %217 = call double @llvm.fmuladd.f64(double %211, double %216, double %215)
  store double %217, ptr %5, align 8, !tbaa !82
  %218 = load i64, ptr %128, align 8, !tbaa !86
  %219 = icmp eq i64 %218, 0
  %220 = select i1 %219, double -1.000000e+00, double 1.000000e+00
  %221 = load double, ptr %64, align 8, !tbaa !74
  %222 = load double, ptr %129, align 8, !tbaa !83
  %223 = fmul double %222, %210
  %224 = fmul double %223, %213
  %225 = call double @llvm.fmuladd.f64(double %220, double %221, double %224)
  %226 = call double @llvm.fmuladd.f64(double %222, double %186, double %225)
  store double %226, ptr %130, align 8, !tbaa !84
  br label %517

227:                                              ; preds = %173
  %228 = load i64, ptr %6, align 8, !tbaa !85
  %229 = icmp eq i64 %228, 0
  %230 = select i1 %229, double -1.000000e+00, double 1.000000e+00
  %231 = load double, ptr %61, align 8, !tbaa !71
  %232 = uitofp i64 %228 to double
  %233 = fmul double %232, 5.000000e-01
  %234 = call double @llvm.fmuladd.f64(double %230, double %231, double %233)
  %235 = sitofp i64 %175 to double
  %236 = load double, ptr %120, align 8, !tbaa !81
  %237 = fmul double %236, %235
  %238 = uitofp i64 %192 to double
  %239 = call double @llvm.fmuladd.f64(double %237, double %238, double %234)
  %240 = load double, ptr %60, align 8, !tbaa !87
  %241 = load double, ptr %121, align 8, !tbaa !88
  %242 = load double, ptr %122, align 8, !tbaa !89
  %243 = fadd double %241, %242
  %244 = fmul double %240, %243
  %245 = fmul double %244, 5.000000e-01
  %246 = fsub double %239, %245
  %247 = fadd double %186, %187
  %248 = call double @llvm.fmuladd.f64(double %236, double %247, double %246)
  store double %248, ptr %5, align 8, !tbaa !82
  %249 = load i64, ptr %123, align 8, !tbaa !86
  %250 = icmp eq i64 %249, 0
  %251 = select i1 %250, double -1.000000e+00, double 1.000000e+00
  %252 = load double, ptr %64, align 8, !tbaa !74
  %253 = load double, ptr %124, align 8, !tbaa !83
  %254 = fmul double %253, %235
  %255 = fmul double %254, %238
  %256 = call double @llvm.fmuladd.f64(double %251, double %252, double %255)
  %257 = call double @llvm.fmuladd.f64(double %253, double %186, double %256)
  %258 = load double, ptr %125, align 8, !tbaa !90
  %259 = fsub double %241, %242
  %260 = fmul double %259, %258
  %261 = fmul double %260, 5.000000e-01
  %262 = fsub double %257, %261
  store double %262, ptr %126, align 8, !tbaa !84
  br label %517

263:                                              ; preds = %173
  %264 = load i64, ptr %6, align 8, !tbaa !85
  %265 = icmp eq i64 %264, 0
  %266 = select i1 %265, double 1.000000e+00, double -1.000000e+00
  %267 = load double, ptr %61, align 8, !tbaa !71
  %268 = uitofp i64 %264 to double
  %269 = call double @llvm.fmuladd.f64(double %266, double %267, double %268)
  %270 = sitofp i64 %175 to double
  %271 = load double, ptr %113, align 8, !tbaa !81
  %272 = fmul double %271, %270
  %273 = uitofp i64 %192 to double
  %274 = call double @llvm.fmuladd.f64(double %272, double %273, double %269)
  %275 = load double, ptr %60, align 8, !tbaa !87
  %276 = load double, ptr %114, align 8, !tbaa !88
  %277 = load double, ptr %115, align 8, !tbaa !89
  %278 = fadd double %276, %277
  %279 = fneg double %275
  %280 = call double @llvm.fmuladd.f64(double %279, double %278, double %274)
  %281 = fadd double %186, %187
  %282 = call double @llvm.fmuladd.f64(double %271, double %281, double %280)
  %283 = fadd double %282, -1.000000e+00
  store double %283, ptr %5, align 8, !tbaa !82
  %284 = load i64, ptr %116, align 8, !tbaa !86
  %285 = icmp eq i64 %284, 0
  %286 = select i1 %285, double -1.000000e+00, double 1.000000e+00
  %287 = load double, ptr %64, align 8, !tbaa !74
  %288 = load double, ptr %117, align 8, !tbaa !83
  %289 = fmul double %288, %270
  %290 = fmul double %289, %273
  %291 = call double @llvm.fmuladd.f64(double %286, double %287, double %290)
  %292 = call double @llvm.fmuladd.f64(double %288, double %186, double %291)
  %293 = load double, ptr %118, align 8, !tbaa !90
  %294 = fsub double %276, %277
  %295 = fneg double %293
  %296 = call double @llvm.fmuladd.f64(double %295, double %294, double %292)
  store double %296, ptr %119, align 8, !tbaa !84
  br label %517

297:                                              ; preds = %173
  %298 = load i64, ptr %6, align 8, !tbaa !85
  %299 = icmp eq i64 %298, 0
  %300 = select i1 %299, double -1.000000e+00, double 1.000000e+00
  %301 = load double, ptr %61, align 8, !tbaa !71
  %302 = sitofp i64 %175 to double
  %303 = load double, ptr %106, align 8, !tbaa !81
  %304 = fmul double %303, %302
  %305 = uitofp i64 %192 to double
  %306 = fmul double %304, %305
  %307 = call double @llvm.fmuladd.f64(double %300, double %301, double %306)
  %308 = fadd double %186, %187
  %309 = call double @llvm.fmuladd.f64(double %109, double %305, double %308)
  %310 = fmul double %309, %303
  %311 = fmul double %310, 5.000000e-01
  %312 = fadd double %311, %307
  store double %312, ptr %5, align 8, !tbaa !82
  %313 = load i64, ptr %110, align 8, !tbaa !86
  %314 = icmp eq i64 %313, 0
  %315 = select i1 %314, double -1.000000e+00, double 1.000000e+00
  %316 = load double, ptr %64, align 8, !tbaa !74
  %317 = uitofp i64 %313 to double
  %318 = fmul double %317, 5.000000e-01
  %319 = call double @llvm.fmuladd.f64(double %315, double %316, double %318)
  %320 = load double, ptr %111, align 8, !tbaa !83
  %321 = fmul double %320, %302
  %322 = call double @llvm.fmuladd.f64(double %321, double %305, double %319)
  %323 = fmul double %309, %320
  %324 = fmul double %323, 5.000000e-01
  %325 = fadd double %322, %324
  store double %325, ptr %112, align 8, !tbaa !84
  br label %517

326:                                              ; preds = %173, %173
  %327 = load i64, ptr %6, align 8, !tbaa !85
  %328 = icmp eq i64 %327, 0
  %329 = select i1 %328, double -1.000000e+00, double 1.000000e+00
  %330 = load double, ptr %61, align 8, !tbaa !71
  %331 = uitofp i64 %327 to double
  %332 = fmul double %331, 5.000000e-01
  %333 = call double @llvm.fmuladd.f64(double %329, double %330, double %332)
  %334 = sitofp i64 %175 to double
  %335 = load double, ptr %95, align 8, !tbaa !81
  %336 = fmul double %335, %334
  %337 = uitofp i64 %192 to double
  %338 = call double @llvm.fmuladd.f64(double %336, double %337, double %333)
  %339 = load double, ptr %60, align 8, !tbaa !87
  %340 = load double, ptr %96, align 8, !tbaa !88
  %341 = load double, ptr %97, align 8, !tbaa !89
  %342 = fadd double %340, %341
  %343 = fmul double %339, %342
  %344 = fmul double %343, 5.000000e-01
  %345 = fsub double %338, %344
  %346 = fadd double %186, %187
  %347 = mul i64 %98, %192
  %348 = uitofp i64 %347 to double
  %349 = fsub double %346, %348
  %350 = fmul double %349, %335
  %351 = fmul double %350, 5.000000e-01
  %352 = fadd double %351, %345
  store double %352, ptr %5, align 8, !tbaa !82
  %353 = load i64, ptr %99, align 8, !tbaa !86
  %354 = icmp eq i64 %353, 0
  %355 = select i1 %354, double -1.000000e+00, double 1.000000e+00
  %356 = load double, ptr %64, align 8, !tbaa !74
  %357 = uitofp i64 %353 to double
  %358 = fmul double %357, 5.000000e-01
  %359 = call double @llvm.fmuladd.f64(double %355, double %356, double %358)
  %360 = load double, ptr %100, align 8, !tbaa !83
  %361 = fmul double %360, %334
  %362 = call double @llvm.fmuladd.f64(double %361, double %337, double %359)
  %363 = load double, ptr %101, align 8, !tbaa !90
  %364 = fmul double %342, %363
  %365 = fmul double %364, 5.000000e-01
  %366 = fsub double %362, %365
  %367 = call double @llvm.fmuladd.f64(double %104, double %337, double %346)
  %368 = fmul double %367, %360
  %369 = fmul double %368, 5.000000e-01
  %370 = fadd double %369, %366
  store double %370, ptr %105, align 8, !tbaa !84
  br label %517

371:                                              ; preds = %173
  %372 = load i64, ptr %6, align 8, !tbaa !85
  %373 = icmp eq i64 %372, 0
  %374 = select i1 %373, double 1.000000e+00, double -1.000000e+00
  %375 = load double, ptr %61, align 8, !tbaa !71
  %376 = uitofp i64 %372 to double
  %377 = call double @llvm.fmuladd.f64(double %374, double %375, double %376)
  %378 = sitofp i64 %175 to double
  %379 = load double, ptr %85, align 8, !tbaa !81
  %380 = fmul double %379, %378
  %381 = uitofp i64 %192 to double
  %382 = call double @llvm.fmuladd.f64(double %380, double %381, double %377)
  %383 = load double, ptr %60, align 8, !tbaa !87
  %384 = load double, ptr %86, align 8, !tbaa !88
  %385 = load double, ptr %87, align 8, !tbaa !89
  %386 = fadd double %384, %385
  %387 = fneg double %383
  %388 = call double @llvm.fmuladd.f64(double %387, double %386, double %382)
  %389 = fadd double %186, %187
  %390 = call double @llvm.fmuladd.f64(double %90, double %381, double %389)
  %391 = fmul double %390, %379
  %392 = fmul double %391, 5.000000e-01
  %393 = fadd double %392, %388
  %394 = fadd double %393, -1.000000e+00
  store double %394, ptr %5, align 8, !tbaa !82
  %395 = load i64, ptr %91, align 8, !tbaa !86
  %396 = icmp eq i64 %395, 0
  %397 = select i1 %396, double -1.000000e+00, double 1.000000e+00
  %398 = load double, ptr %64, align 8, !tbaa !74
  %399 = uitofp i64 %395 to double
  %400 = fmul double %399, 5.000000e-01
  %401 = call double @llvm.fmuladd.f64(double %397, double %398, double %400)
  %402 = load double, ptr %92, align 8, !tbaa !83
  %403 = fmul double %402, %378
  %404 = call double @llvm.fmuladd.f64(double %403, double %381, double %401)
  %405 = load double, ptr %93, align 8, !tbaa !90
  %406 = fneg double %405
  %407 = call double @llvm.fmuladd.f64(double %406, double %386, double %404)
  %408 = fmul double %390, %402
  %409 = fmul double %408, 5.000000e-01
  %410 = fadd double %409, %407
  store double %410, ptr %94, align 8, !tbaa !84
  br label %517

411:                                              ; preds = %173
  %412 = load i64, ptr %6, align 8, !tbaa !85
  %413 = icmp eq i64 %412, 0
  %414 = select i1 %413, double -1.000000e+00, double 1.000000e+00
  %415 = load double, ptr %61, align 8, !tbaa !71
  %416 = sitofp i64 %175 to double
  %417 = load double, ptr %79, align 8, !tbaa !81
  %418 = fmul double %417, %416
  %419 = uitofp i64 %192 to double
  %420 = fmul double %418, %419
  %421 = call double @llvm.fmuladd.f64(double %414, double %415, double %420)
  %422 = fneg double %417
  %423 = fmul double %81, %422
  %424 = call double @llvm.fmuladd.f64(double %423, double %419, double %421)
  store double %424, ptr %5, align 8, !tbaa !82
  %425 = load i64, ptr %82, align 8, !tbaa !86
  %426 = icmp eq i64 %425, 0
  %427 = select i1 %426, double 1.000000e+00, double -1.000000e+00
  %428 = load double, ptr %64, align 8, !tbaa !74
  %429 = uitofp i64 %425 to double
  %430 = call double @llvm.fmuladd.f64(double %427, double %428, double %429)
  %431 = load double, ptr %83, align 8, !tbaa !83
  %432 = fmul double %431, %416
  %433 = call double @llvm.fmuladd.f64(double %432, double %419, double %430)
  %434 = fneg double %431
  %435 = fmul double %81, %434
  %436 = call double @llvm.fmuladd.f64(double %435, double %419, double %433)
  %437 = fadd double %187, %436
  store double %437, ptr %84, align 8, !tbaa !84
  br label %517

438:                                              ; preds = %173
  %439 = load i64, ptr %6, align 8, !tbaa !85
  %440 = icmp eq i64 %439, 0
  %441 = select i1 %440, double -1.000000e+00, double 1.000000e+00
  %442 = load double, ptr %61, align 8, !tbaa !71
  %443 = uitofp i64 %439 to double
  %444 = fmul double %443, 5.000000e-01
  %445 = call double @llvm.fmuladd.f64(double %441, double %442, double %444)
  %446 = sitofp i64 %175 to double
  %447 = load double, ptr %70, align 8, !tbaa !81
  %448 = fmul double %447, %446
  %449 = uitofp i64 %192 to double
  %450 = call double @llvm.fmuladd.f64(double %448, double %449, double %445)
  %451 = load double, ptr %60, align 8, !tbaa !87
  %452 = load double, ptr %71, align 8, !tbaa !88
  %453 = load double, ptr %72, align 8, !tbaa !89
  %454 = fadd double %452, %453
  %455 = fmul double %451, %454
  %456 = fmul double %455, 5.000000e-01
  %457 = fsub double %450, %456
  %458 = fmul double %74, %447
  %459 = fmul double %458, %449
  %460 = fmul double %459, 5.000000e-01
  %461 = fsub double %457, %460
  store double %461, ptr %5, align 8, !tbaa !82
  %462 = load i64, ptr %75, align 8, !tbaa !86
  %463 = icmp eq i64 %462, 0
  %464 = select i1 %463, double 1.000000e+00, double -1.000000e+00
  %465 = load double, ptr %64, align 8, !tbaa !74
  %466 = uitofp i64 %462 to double
  %467 = call double @llvm.fmuladd.f64(double %464, double %465, double %466)
  %468 = load double, ptr %76, align 8, !tbaa !83
  %469 = fmul double %468, %446
  %470 = call double @llvm.fmuladd.f64(double %469, double %449, double %467)
  %471 = load double, ptr %77, align 8, !tbaa !90
  %472 = fmul double %454, %471
  %473 = fmul double %472, 5.000000e-01
  %474 = fsub double %470, %473
  %475 = fneg double %468
  %476 = fmul double %74, %475
  %477 = call double @llvm.fmuladd.f64(double %476, double %449, double %474)
  %478 = fadd double %187, %477
  store double %478, ptr %78, align 8, !tbaa !84
  br label %517

479:                                              ; preds = %173
  %480 = load i64, ptr %6, align 8, !tbaa !85
  %481 = icmp eq i64 %480, 0
  %482 = select i1 %481, double 1.000000e+00, double -1.000000e+00
  %483 = load double, ptr %61, align 8, !tbaa !71
  %484 = uitofp i64 %480 to double
  %485 = call double @llvm.fmuladd.f64(double %482, double %483, double %484)
  %486 = sitofp i64 %175 to double
  %487 = load double, ptr %131, align 8, !tbaa !81
  %488 = fmul double %487, %486
  %489 = uitofp i64 %192 to double
  %490 = call double @llvm.fmuladd.f64(double %488, double %489, double %485)
  %491 = load double, ptr %60, align 8, !tbaa !87
  %492 = load double, ptr %132, align 8, !tbaa !88
  %493 = load double, ptr %133, align 8, !tbaa !89
  %494 = fadd double %492, %493
  %495 = fneg double %491
  %496 = call double @llvm.fmuladd.f64(double %495, double %494, double %490)
  %497 = fneg double %487
  %498 = fmul double %135, %497
  %499 = call double @llvm.fmuladd.f64(double %498, double %489, double %496)
  %500 = fadd double %499, -1.000000e+00
  store double %500, ptr %5, align 8, !tbaa !82
  %501 = load i64, ptr %136, align 8, !tbaa !86
  %502 = icmp eq i64 %501, 0
  %503 = select i1 %502, double 1.000000e+00, double -1.000000e+00
  %504 = load double, ptr %64, align 8, !tbaa !74
  %505 = uitofp i64 %501 to double
  %506 = call double @llvm.fmuladd.f64(double %503, double %504, double %505)
  %507 = load double, ptr %137, align 8, !tbaa !83
  %508 = fmul double %507, %486
  %509 = call double @llvm.fmuladd.f64(double %508, double %489, double %506)
  %510 = load double, ptr %138, align 8, !tbaa !90
  %511 = fneg double %510
  %512 = call double @llvm.fmuladd.f64(double %511, double %494, double %509)
  %513 = fneg double %507
  %514 = fmul double %135, %513
  %515 = call double @llvm.fmuladd.f64(double %514, double %489, double %512)
  %516 = fadd double %187, %515
  store double %516, ptr %139, align 8, !tbaa !84
  br label %517

517:                                              ; preds = %479, %438, %411, %371, %326, %297, %263, %227, %205, %194
  %518 = phi double [ %516, %479 ], [ %478, %438 ], [ %437, %411 ], [ %410, %371 ], [ %370, %326 ], [ %325, %297 ], [ %296, %263 ], [ %262, %227 ], [ %226, %205 ], [ %204, %194 ]
  %519 = phi double [ %500, %479 ], [ %461, %438 ], [ %424, %411 ], [ %394, %371 ], [ %352, %326 ], [ %312, %297 ], [ %283, %263 ], [ %248, %227 ], [ %217, %205 ], [ %200, %194 ]
  %520 = load i32, ptr %143, align 8, !tbaa !91
  switch i32 %520, label %574 [
    i32 1, label %521
    i32 2, label %532
    i32 3, label %554
  ]

521:                                              ; preds = %517
  %522 = load double, ptr %61, align 8, !tbaa !71
  %523 = sitofp i64 %175 to double
  %524 = load double, ptr %156, align 8, !tbaa !81
  %525 = fmul double %524, %523
  %526 = uitofp i64 %192 to double
  %527 = call double @llvm.fmuladd.f64(double %525, double %526, double %522)
  store double %527, ptr %5, align 8, !tbaa !82
  %528 = load double, ptr %64, align 8, !tbaa !74
  %529 = load double, ptr %157, align 8, !tbaa !83
  %530 = fmul double %529, %523
  %531 = call double @llvm.fmuladd.f64(double %530, double %526, double %528)
  store double %531, ptr %158, align 8, !tbaa !84
  br label %574

532:                                              ; preds = %517
  %533 = load double, ptr %61, align 8, !tbaa !71
  %534 = sitofp i64 %175 to double
  %535 = load double, ptr %150, align 8, !tbaa !81
  %536 = fmul double %535, %534
  %537 = uitofp i64 %192 to double
  %538 = call double @llvm.fmuladd.f64(double %536, double %537, double %533)
  %539 = load double, ptr %60, align 8, !tbaa !87
  %540 = load double, ptr %151, align 8, !tbaa !88
  %541 = load double, ptr %152, align 8, !tbaa !89
  %542 = fadd double %540, %541
  %543 = fmul double %539, %542
  %544 = fmul double %543, 5.000000e-01
  %545 = fsub double %538, %544
  store double %545, ptr %5, align 8, !tbaa !82
  %546 = load double, ptr %64, align 8, !tbaa !74
  %547 = load double, ptr %153, align 8, !tbaa !83
  %548 = fmul double %547, %534
  %549 = call double @llvm.fmuladd.f64(double %548, double %537, double %546)
  %550 = load double, ptr %154, align 8, !tbaa !90
  %551 = fmul double %542, %550
  %552 = fmul double %551, 5.000000e-01
  %553 = fsub double %549, %552
  store double %553, ptr %155, align 8, !tbaa !84
  br label %574

554:                                              ; preds = %517
  %555 = load double, ptr %61, align 8, !tbaa !71
  %556 = sitofp i64 %175 to double
  %557 = load double, ptr %144, align 8, !tbaa !81
  %558 = fmul double %557, %556
  %559 = uitofp i64 %192 to double
  %560 = call double @llvm.fmuladd.f64(double %558, double %559, double %555)
  %561 = load double, ptr %60, align 8, !tbaa !87
  %562 = load double, ptr %145, align 8, !tbaa !88
  %563 = load double, ptr %146, align 8, !tbaa !89
  %564 = fadd double %562, %563
  %565 = fneg double %561
  %566 = call double @llvm.fmuladd.f64(double %565, double %564, double %560)
  store double %566, ptr %5, align 8, !tbaa !82
  %567 = load double, ptr %64, align 8, !tbaa !74
  %568 = load double, ptr %147, align 8, !tbaa !83
  %569 = fmul double %568, %556
  %570 = call double @llvm.fmuladd.f64(double %569, double %559, double %567)
  %571 = load double, ptr %148, align 8, !tbaa !90
  %572 = fneg double %571
  %573 = call double @llvm.fmuladd.f64(double %572, double %564, double %570)
  store double %573, ptr %149, align 8, !tbaa !84
  br label %574

574:                                              ; preds = %517, %554, %532, %521
  %575 = phi double [ %518, %517 ], [ %573, %554 ], [ %553, %532 ], [ %531, %521 ]
  %576 = phi double [ %519, %517 ], [ %566, %554 ], [ %545, %532 ], [ %527, %521 ]
  %577 = load i16, ptr %159, align 2, !tbaa !92
  %578 = icmp eq i16 %577, -1
  br i1 %578, label %599, label %579

579:                                              ; preds = %574
  %580 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #12
  %581 = getelementptr inbounds %struct._DrawInfo, ptr %580, i64 0, i32 5
  %582 = load i64, ptr %160, align 4
  store i64 %582, ptr %581, align 4
  %583 = getelementptr inbounds %struct._DrawInfo, ptr %580, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %583, ptr noundef nonnull align 8 dereferenceable(48) %161, i64 48, i1 false), !tbaa.struct !93
  %584 = load double, ptr %162, align 8, !tbaa !81
  %585 = load double, ptr %66, align 8, !tbaa !76
  %586 = fneg double %584
  %587 = call double @llvm.fmuladd.f64(double %586, double %585, double %576)
  %588 = getelementptr inbounds %struct._DrawInfo, ptr %580, i64 0, i32 3, i32 4
  store double %587, ptr %588, align 8, !tbaa !71
  %589 = load double, ptr %163, align 8, !tbaa !83
  %590 = fneg double %589
  %591 = call double @llvm.fmuladd.f64(double %590, double %585, double %575)
  %592 = getelementptr inbounds %struct._DrawInfo, ptr %580, i64 0, i32 3, i32 5
  store double %591, ptr %592, align 8, !tbaa !74
  %593 = load double, ptr %164, align 8, !tbaa !95
  %594 = uitofp i64 %192 to double
  %595 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.3, double noundef %593, double noundef %594) #12
  %596 = call ptr @CloneString(ptr noundef %580, ptr noundef nonnull %3) #12
  %597 = call i32 @DrawImage(ptr noundef %0, ptr noundef %580) #12
  %598 = call ptr @DestroyDrawInfo(ptr noundef %580) #12
  br label %599

599:                                              ; preds = %579, %574
  store double %576, ptr %61, align 8, !tbaa !71
  store double %575, ptr %64, align 8, !tbaa !74
  %600 = load double, ptr %165, align 8, !tbaa !96
  %601 = load double, ptr %166, align 8, !tbaa !88
  %602 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.4, double noundef %600, double noundef %601) #12
  %603 = load i32, ptr %167, align 8, !tbaa !97
  switch i32 %603, label %620 [
    i32 3, label %604
    i32 2, label %610
  ]

604:                                              ; preds = %599
  %605 = load double, ptr %66, align 8, !tbaa !76
  %606 = load double, ptr %67, align 8, !tbaa !78
  %607 = fadd double %605, %606
  %608 = load double, ptr %169, align 8, !tbaa !98
  %609 = fsub double %607, %608
  br label %612

610:                                              ; preds = %599
  %611 = load double, ptr %168, align 8, !tbaa !98
  br label %612

612:                                              ; preds = %604, %610
  %613 = phi double [ %611, %610 ], [ %609, %604 ]
  %614 = load double, ptr %172, align 8, !tbaa !83
  %615 = load double, ptr %64, align 8, !tbaa !74
  %616 = fneg double %614
  %617 = call double @llvm.fmuladd.f64(double %616, double %613, double %615)
  store double %617, ptr %64, align 8, !tbaa !74
  %618 = call ptr @CloneString(ptr noundef %37, ptr noundef nonnull %3) #12
  %619 = call i32 @DrawImage(ptr noundef %0, ptr noundef %37) #12
  br label %620

620:                                              ; preds = %612, %599
  %621 = call fastcc i32 @RenderType(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %5, ptr noundef nonnull %7), !range !75
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %644, label %623

623:                                              ; preds = %620
  %624 = load i32, ptr %167, align 8, !tbaa !97
  %625 = icmp eq i32 %624, 4
  br i1 %625, label %626, label %639

626:                                              ; preds = %623
  %627 = load double, ptr %170, align 8, !tbaa !83
  %628 = uitofp i64 %192 to double
  %629 = load double, ptr %171, align 8, !tbaa !98
  %630 = fadd double %629, %628
  %631 = load double, ptr %67, align 8, !tbaa !78
  %632 = fadd double %630, %631
  %633 = fmul double %627, %632
  %634 = fmul double %633, 5.000000e-01
  %635 = load double, ptr %64, align 8, !tbaa !74
  %636 = fsub double %635, %634
  store double %636, ptr %64, align 8, !tbaa !74
  %637 = call ptr @CloneString(ptr noundef %37, ptr noundef nonnull %3) #12
  %638 = call i32 @DrawImage(ptr noundef %0, ptr noundef %37) #12
  br label %639

639:                                              ; preds = %623, %626
  %640 = add nuw nsw i64 %175, 1
  %641 = getelementptr inbounds ptr, ptr %22, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !34
  %643 = icmp eq ptr %642, null
  br i1 %643, label %644, label %173, !llvm.loop !99

644:                                              ; preds = %639, %620, %54
  %645 = phi i32 [ 1, %54 ], [ 1, %639 ], [ 0, %620 ]
  %646 = call ptr @DestroyDrawInfo(ptr noundef %37) #12
  %647 = call ptr @DestroyDrawInfo(ptr noundef %36) #12
  %648 = load ptr, ptr %22, align 8, !tbaa !34
  %649 = icmp eq ptr %648, null
  br i1 %649, label %659, label %650

650:                                              ; preds = %644, %650
  %651 = phi ptr [ %657, %650 ], [ %648, %644 ]
  %652 = phi ptr [ %656, %650 ], [ %22, %644 ]
  %653 = phi i64 [ %655, %650 ], [ 0, %644 ]
  %654 = call ptr @DestroyString(ptr noundef nonnull %651) #12
  store ptr %654, ptr %652, align 8, !tbaa !34
  %655 = add nuw nsw i64 %653, 1
  %656 = getelementptr inbounds ptr, ptr %22, i64 %655
  %657 = load ptr, ptr %656, align 8, !tbaa !34
  %658 = icmp eq ptr %657, null
  br i1 %658, label %659, label %650, !llvm.loop !100

659:                                              ; preds = %650, %644
  %660 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %22) #12
  br label %661

661:                                              ; preds = %46, %21, %18, %14, %659
  %662 = phi i32 [ %645, %659 ], [ 0, %14 ], [ 1, %18 ], [ 0, %21 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #12
  ret i32 %662
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @StringToList(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @SetGeometryInfo(ptr noundef) local_unnamed_addr #1

declare i32 @ParsePageGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetTypeMetrics(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._PointInfo, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 786, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #12
  %13 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 41
  store i32 0, ptr %13, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 48
  store i32 0, ptr %14, align 8, !tbaa !102
  %15 = tail call ptr @ResetMagickMemory(ptr noundef %2, i32 noundef 0, i64 noundef 120) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %16 = call fastcc i32 @RenderType(ptr noundef %0, ptr noundef %12, ptr noundef nonnull %4, ptr noundef %2), !range !75
  %17 = load i32, ptr %5, align 8, !tbaa !38
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 21
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 3
  %23 = load double, ptr %22, align 8, !tbaa !88
  %24 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 4
  %25 = load double, ptr %24, align 8, !tbaa !103
  %26 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 1
  %27 = load double, ptr %26, align 8, !tbaa !76
  %28 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 2
  %29 = load double, ptr %28, align 8, !tbaa !78
  %30 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 5
  %31 = load double, ptr %30, align 8, !tbaa !104
  %32 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 8
  %33 = load double, ptr %32, align 8, !tbaa !89
  %34 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 8, i32 1
  %35 = load double, ptr %34, align 8, !tbaa !105
  %36 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 8, i32 2
  %37 = load double, ptr %36, align 8, !tbaa !106
  %38 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 8, i32 3
  %39 = load double, ptr %38, align 8, !tbaa !107
  %40 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 9
  %41 = load double, ptr %40, align 8, !tbaa !95
  %42 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 9, i32 1
  %43 = load double, ptr %42, align 8, !tbaa !108
  %44 = load double, ptr %2, align 8, !tbaa !109
  %45 = getelementptr inbounds %struct._PointInfo, ptr %2, i64 0, i32 1
  %46 = load double, ptr %45, align 8, !tbaa !110
  %47 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 6
  %48 = load double, ptr %47, align 8, !tbaa !98
  %49 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 7
  %50 = load double, ptr %49, align 8, !tbaa !96
  %51 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 798, ptr noundef nonnull @.str.6, ptr noundef %21, double noundef %23, double noundef %25, double noundef %27, double noundef %29, double noundef %31, double noundef %33, double noundef %35, double noundef %37, double noundef %39, double noundef %41, double noundef %43, double noundef %44, double noundef %46, double noundef %48, double noundef %50) #12
  br label %52

52:                                               ; preds = %19, %11
  %53 = tail call ptr @DestroyDrawInfo(ptr noundef %12) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @DrawImage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @RenderType(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = load i8, ptr %6, align 1, !tbaa !62
  switch i8 %9, label %12 [
    i8 64, label %10
    i8 45, label %136
  ]

10:                                               ; preds = %8
  %11 = tail call fastcc i32 @RenderFreetype(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %136

12:                                               ; preds = %8
  %13 = tail call i32 @IsPathAccessible(ptr noundef nonnull %6) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @RenderFreetype(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %136

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !tbaa !111
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = tail call ptr @GetTypeInfo(ptr noundef %18, ptr noundef nonnull %19) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !111
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 872, i32 noundef 305, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %23) #12
  br label %25

25:                                               ; preds = %17, %22, %4
  %26 = phi ptr [ null, %22 ], [ %20, %17 ], [ null, %4 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 25
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 26
  %34 = load i32, ptr %33, align 8, !tbaa !113
  %35 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 27
  %36 = load i32, ptr %35, align 4, !tbaa !114
  %37 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 28
  %38 = load i64, ptr %37, align 8, !tbaa !115
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %40 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull %30, i32 noundef %34, i32 noundef %36, i64 noundef %38, ptr noundef nonnull %39) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load ptr, ptr %29, align 8, !tbaa !112
  %44 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 881, i32 noundef 305, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %43) #12
  br label %45

45:                                               ; preds = %32, %42, %28, %25
  %46 = phi ptr [ null, %42 ], [ %40, %32 ], [ null, %28 ], [ %26, %25 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 26
  %50 = load i32, ptr %49, align 8, !tbaa !113
  %51 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 27
  %52 = load i32, ptr %51, align 4, !tbaa !114
  %53 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 28
  %54 = load i64, ptr %53, align 8, !tbaa !115
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %56 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.9, i32 noundef %50, i32 noundef %52, i64 noundef %54, ptr noundef nonnull %55) #12
  br label %57

57:                                               ; preds = %48, %45
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 26
  %62 = load i32, ptr %61, align 8, !tbaa !113
  %63 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 27
  %64 = load i32, ptr %63, align 4, !tbaa !114
  %65 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 28
  %66 = load i64, ptr %65, align 8, !tbaa !115
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %68 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.10, i32 noundef %62, i32 noundef %64, i64 noundef %66, ptr noundef nonnull %67) #12
  br label %69

69:                                               ; preds = %60, %57
  %70 = phi ptr [ %68, %60 ], [ %58, %57 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 26
  %74 = load i32, ptr %73, align 8, !tbaa !113
  %75 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 27
  %76 = load i32, ptr %75, align 4, !tbaa !114
  %77 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 28
  %78 = load i64, ptr %77, align 8, !tbaa !115
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %80 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.11, i32 noundef %74, i32 noundef %76, i64 noundef %78, ptr noundef nonnull %79) #12
  br label %81

81:                                               ; preds = %72, %69
  %82 = phi ptr [ %80, %72 ], [ %70, %69 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 26
  %86 = load i32, ptr %85, align 8, !tbaa !113
  %87 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 27
  %88 = load i32, ptr %87, align 4, !tbaa !114
  %89 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 28
  %90 = load i64, ptr %89, align 8, !tbaa !115
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %92 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.12, i32 noundef %86, i32 noundef %88, i64 noundef %90, ptr noundef nonnull %91) #12
  br label %93

93:                                               ; preds = %84, %81
  %94 = phi ptr [ %92, %84 ], [ %82, %81 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 26
  %98 = load i32, ptr %97, align 8, !tbaa !113
  %99 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 27
  %100 = load i32, ptr %99, align 4, !tbaa !114
  %101 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 28
  %102 = load i64, ptr %101, align 8, !tbaa !115
  %103 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %104 = tail call ptr @GetTypeInfoByFamily(ptr noundef null, i32 noundef %98, i32 noundef %100, i64 noundef %102, ptr noundef nonnull %103) #12
  br label %105

105:                                              ; preds = %96, %93
  %106 = phi ptr [ %104, %96 ], [ %94, %93 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %110 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str.13, ptr noundef nonnull %109) #12
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi ptr [ %110, %108 ], [ %106, %105 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = tail call fastcc i32 @RenderFreetype(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %136

116:                                              ; preds = %111
  %117 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #12
  %118 = load i64, ptr %112, align 8, !tbaa !116
  %119 = getelementptr inbounds %struct._DrawInfo, ptr %117, i64 0, i32 22
  store i64 %118, ptr %119, align 8, !tbaa !118
  %120 = getelementptr inbounds %struct._TypeInfo, ptr %112, i64 0, i32 11
  %121 = load ptr, ptr %120, align 8, !tbaa !119
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct._DrawInfo, ptr %117, i64 0, i32 24
  %125 = tail call ptr @CloneString(ptr noundef nonnull %124, ptr noundef nonnull %121) #12
  br label %126

126:                                              ; preds = %123, %116
  %127 = getelementptr inbounds %struct._TypeInfo, ptr %112, i64 0, i32 12
  %128 = load ptr, ptr %127, align 8, !tbaa !120
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct._DrawInfo, ptr %117, i64 0, i32 23
  %132 = tail call ptr @CloneString(ptr noundef nonnull %131, ptr noundef nonnull %128) #12
  br label %133

133:                                              ; preds = %130, %126
  %134 = tail call fastcc i32 @RenderFreetype(ptr noundef %0, ptr noundef %117, ptr noundef %2, ptr noundef %3)
  %135 = tail call ptr @DestroyDrawInfo(ptr noundef %117) #12
  br label %136

136:                                              ; preds = %8, %133, %114, %15, %10
  %137 = phi i32 [ %11, %10 ], [ %16, %15 ], [ %115, %114 ], [ %134, %133 ], [ 0, %8 ]
  ret i32 %137
}

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @FormatMagickCaption(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call ptr @AcquireString(ptr noundef %7) #12
  %9 = load ptr, ptr %6, align 8, !tbaa !54
  %10 = load ptr, ptr %4, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 3
  %12 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = icmp ne i32 %2, 0
  br label %15

15:                                               ; preds = %329, %5
  %16 = phi ptr [ %9, %5 ], [ %284, %329 ]
  %17 = phi ptr [ null, %5 ], [ %285, %329 ]
  %18 = phi ptr [ %10, %5 ], [ %332, %329 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %51, label %20

20:                                               ; preds = %15
  %21 = load i8, ptr %18, align 1, !tbaa !62
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %20, %45
  %24 = phi ptr [ %18, %20 ], [ %27, %45 ]
  %25 = phi i32 [ %22, %20 ], [ %48, %45 ]
  %26 = phi i64 [ 0, %20 ], [ %49, %45 ]
  %27 = getelementptr inbounds i8, ptr %24, i64 1
  %28 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %26
  %29 = load i32, ptr %28, align 16, !tbaa !121
  %30 = and i32 %29, %22
  %31 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %26, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !123
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %26, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !124
  %37 = and i32 %36, %25
  %38 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %26, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !125
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %51, label %54

41:                                               ; preds = %23
  %42 = load i8, ptr %27, align 1, !tbaa !62
  %43 = xor i8 %42, -128
  %44 = icmp ult i8 %43, 64
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = zext nneg i8 %43 to i32
  %47 = shl i32 %25, 6
  %48 = or disjoint i32 %47, %46
  %49 = add nuw nsw i64 %26, 1
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %51, label %23, !llvm.loop !126

51:                                               ; preds = %45, %41, %34, %15
  %52 = phi i32 [ 22, %15 ], [ 84, %34 ], [ 84, %41 ], [ 84, %45 ]
  %53 = tail call ptr @__errno_location() #13
  store i32 %52, ptr %53, align 4, !tbaa !127
  br label %54

54:                                               ; preds = %51, %34
  %55 = phi i32 [ %37, %34 ], [ -1, %51 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %333, label %57

57:                                               ; preds = %54
  br i1 %19, label %89, label %58

58:                                               ; preds = %57
  %59 = load i8, ptr %18, align 1, !tbaa !62
  %60 = zext i8 %59 to i32
  br label %61

61:                                               ; preds = %58, %83
  %62 = phi ptr [ %18, %58 ], [ %65, %83 ]
  %63 = phi i32 [ %60, %58 ], [ %86, %83 ]
  %64 = phi i64 [ 0, %58 ], [ %87, %83 ]
  %65 = getelementptr inbounds i8, ptr %62, i64 1
  %66 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %64
  %67 = load i32, ptr %66, align 16, !tbaa !121
  %68 = and i32 %67, %60
  %69 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %64, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !123
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %61
  %73 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %64, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !124
  %75 = and i32 %74, %63
  %76 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %64, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !125
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %89, label %92

79:                                               ; preds = %61
  %80 = load i8, ptr %65, align 1, !tbaa !62
  %81 = xor i8 %80, -128
  %82 = icmp ult i8 %81, 64
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = zext nneg i8 %81 to i32
  %85 = shl i32 %63, 6
  %86 = or disjoint i32 %85, %84
  %87 = add nuw nsw i64 %64, 1
  %88 = icmp eq i64 %87, 6
  br i1 %88, label %89, label %61, !llvm.loop !126

89:                                               ; preds = %83, %79, %72, %57
  %90 = phi i32 [ 22, %57 ], [ 84, %72 ], [ 84, %79 ], [ 84, %83 ]
  %91 = tail call ptr @__errno_location() #13
  store i32 %90, ptr %91, align 4, !tbaa !127
  br label %92

92:                                               ; preds = %89, %72
  %93 = phi i32 [ %75, %72 ], [ -1, %89 ]
  switch i32 %93, label %94 [
    i32 6158, label %99
    i32 5760, label %99
    i32 160, label %99
    i32 133, label %99
    i32 32, label %99
    i32 13, label %99
    i32 12, label %99
    i32 11, label %99
    i32 10, label %99
    i32 9, label %99
  ]

94:                                               ; preds = %92
  %95 = add i32 %93, -8192
  %96 = icmp ult i32 %95, 11
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  switch i32 %93, label %98 [
    i32 12288, label %99
    i32 8287, label %99
    i32 8239, label %99
    i32 8233, label %99
    i32 8232, label %99
  ]

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %92, %92, %92, %92, %92, %92, %92, %92, %92, %92, %94, %97, %97, %97, %97, %97, %98
  %100 = phi ptr [ %17, %98 ], [ %18, %97 ], [ %18, %97 ], [ %18, %97 ], [ %18, %97 ], [ %18, %97 ], [ %18, %94 ], [ %18, %92 ], [ %18, %92 ], [ %18, %92 ], [ %18, %92 ], [ %18, %92 ], [ %18, %92 ], [ %18, %92 ], [ %18, %92 ], [ %18, %92 ], [ %18, %92 ]
  br i1 %19, label %132, label %101

101:                                              ; preds = %99
  %102 = load i8, ptr %18, align 1, !tbaa !62
  %103 = zext i8 %102 to i32
  br label %104

104:                                              ; preds = %101, %126
  %105 = phi ptr [ %18, %101 ], [ %108, %126 ]
  %106 = phi i32 [ %103, %101 ], [ %129, %126 ]
  %107 = phi i64 [ 0, %101 ], [ %130, %126 ]
  %108 = getelementptr inbounds i8, ptr %105, i64 1
  %109 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %107
  %110 = load i32, ptr %109, align 16, !tbaa !121
  %111 = and i32 %110, %103
  %112 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %107, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !123
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %104
  %116 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %107, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !124
  %118 = and i32 %117, %106
  %119 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %107, i32 3
  %120 = load i32, ptr %119, align 4, !tbaa !125
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %132, label %135

122:                                              ; preds = %104
  %123 = load i8, ptr %108, align 1, !tbaa !62
  %124 = xor i8 %123, -128
  %125 = icmp ult i8 %124, 64
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = zext nneg i8 %124 to i32
  %128 = shl i32 %106, 6
  %129 = or disjoint i32 %128, %127
  %130 = add nuw nsw i64 %107, 1
  %131 = icmp eq i64 %130, 6
  br i1 %131, label %132, label %104, !llvm.loop !126

132:                                              ; preds = %126, %122, %115, %99
  %133 = phi i32 [ 22, %99 ], [ 84, %115 ], [ 84, %122 ], [ 84, %126 ]
  %134 = tail call ptr @__errno_location() #13
  store i32 %133, ptr %134, align 4, !tbaa !127
  br label %135

135:                                              ; preds = %132, %115
  %136 = phi i32 [ %118, %115 ], [ -1, %132 ]
  %137 = icmp eq i32 %136, 10
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load ptr, ptr %6, align 8, !tbaa !54
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi ptr [ %16, %135 ], [ %139, %138 ]
  br label %142

142:                                              ; preds = %140, %190
  %143 = phi ptr [ %193, %190 ], [ %141, %140 ]
  %144 = phi i64 [ %194, %190 ], [ 0, %140 ]
  br i1 %19, label %145, label %147

145:                                              ; preds = %142
  %146 = tail call ptr @__errno_location() #13
  store i32 22, ptr %146, align 4, !tbaa !127
  br label %186

147:                                              ; preds = %142
  %148 = load i8, ptr %18, align 1, !tbaa !62
  %149 = zext i8 %148 to i32
  br label %150

150:                                              ; preds = %147, %178
  %151 = phi ptr [ %18, %147 ], [ %154, %178 ]
  %152 = phi i32 [ %149, %147 ], [ %181, %178 ]
  %153 = phi i64 [ 0, %147 ], [ %182, %178 ]
  %154 = getelementptr inbounds i8, ptr %151, i64 1
  %155 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %153
  %156 = load i32, ptr %155, align 16, !tbaa !121
  %157 = and i32 %156, %149
  %158 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %153, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !123
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %150
  %162 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %153, i32 2
  %163 = load i32, ptr %162, align 8, !tbaa !124
  %164 = and i32 %163, %152
  %165 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %153, i32 3
  %166 = load i32, ptr %165, align 4, !tbaa !125
  %167 = icmp slt i32 %164, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = tail call ptr @__errno_location() #13
  store i32 84, ptr %169, align 4, !tbaa !127
  br label %186

170:                                              ; preds = %161
  %171 = add nuw nsw i64 %153, 1
  br label %186

172:                                              ; preds = %150
  %173 = load i8, ptr %154, align 1, !tbaa !62
  %174 = xor i8 %173, -128
  %175 = icmp ult i8 %174, 64
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = tail call ptr @__errno_location() #13
  store i32 84, ptr %177, align 4, !tbaa !127
  br label %186

178:                                              ; preds = %172
  %179 = zext nneg i8 %174 to i32
  %180 = shl i32 %152, 6
  %181 = or disjoint i32 %180, %179
  %182 = add nuw nsw i64 %153, 1
  %183 = icmp eq i64 %182, 6
  br i1 %183, label %184, label %150, !llvm.loop !126

184:                                              ; preds = %178
  %185 = tail call ptr @__errno_location() #13
  store i32 84, ptr %185, align 4, !tbaa !127
  br label %186

186:                                              ; preds = %145, %168, %170, %176, %184
  %187 = phi i64 [ 1, %145 ], [ 1, %168 ], [ %171, %170 ], [ 1, %176 ], [ 1, %184 ]
  %188 = and i64 %187, 4294967295
  %189 = icmp ult i64 %144, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = getelementptr inbounds i8, ptr %18, i64 %144
  %192 = load i8, ptr %191, align 1, !tbaa !62
  %193 = getelementptr inbounds i8, ptr %143, i64 1
  store i8 %192, ptr %143, align 1, !tbaa !62
  %194 = add nuw nsw i64 %144, 1
  br label %142, !llvm.loop !128

195:                                              ; preds = %186
  store i8 0, ptr %143, align 1, !tbaa !62
  %196 = tail call i32 @GetTypeMetrics(ptr noundef %0, ptr noundef %1, ptr noundef %3), !range !75
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %333, label %198

198:                                              ; preds = %195
  %199 = load double, ptr %11, align 8, !tbaa !88
  %200 = load double, ptr %12, align 8, !tbaa !129
  %201 = fadd double %199, %200
  %202 = fadd double %201, 5.000000e-01
  %203 = tail call double @llvm.floor.f64(double %202)
  %204 = fptoui double %203 to i64
  %205 = load i64, ptr %13, align 8, !tbaa !130
  %206 = icmp ult i64 %205, %204
  br i1 %206, label %207, label %283

207:                                              ; preds = %198
  %208 = load ptr, ptr %6, align 8, !tbaa !54
  %209 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %208) #14
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %283, label %211

211:                                              ; preds = %207
  %212 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %208) #12
  %213 = icmp ne ptr %100, null
  br i1 %213, label %214, label %258

214:                                              ; preds = %211
  %215 = load i8, ptr %100, align 1, !tbaa !62
  %216 = zext i8 %215 to i32
  br label %217

217:                                              ; preds = %214, %246
  %218 = phi ptr [ %100, %214 ], [ %221, %246 ]
  %219 = phi i32 [ %216, %214 ], [ %249, %246 ]
  %220 = phi i64 [ 0, %214 ], [ %250, %246 ]
  %221 = getelementptr inbounds i8, ptr %218, i64 1
  %222 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %220
  %223 = load i32, ptr %222, align 16, !tbaa !121
  %224 = and i32 %223, %216
  %225 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %220, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !123
  %227 = icmp eq i32 %224, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %217
  %229 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %220, i32 2
  %230 = load i32, ptr %229, align 8, !tbaa !124
  %231 = and i32 %230, %219
  %232 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %220, i32 3
  %233 = load i32, ptr %232, align 4, !tbaa !125
  %234 = icmp slt i32 %231, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %228
  %236 = tail call ptr @__errno_location() #13
  store i32 84, ptr %236, align 4, !tbaa !127
  br label %254

237:                                              ; preds = %228
  %238 = trunc i64 %220 to i32
  %239 = add nuw nsw i32 %238, 1
  br label %254

240:                                              ; preds = %217
  %241 = load i8, ptr %221, align 1, !tbaa !62
  %242 = xor i8 %241, -128
  %243 = icmp ult i8 %242, 64
  br i1 %243, label %246, label %244

244:                                              ; preds = %240
  %245 = tail call ptr @__errno_location() #13
  store i32 84, ptr %245, align 4, !tbaa !127
  br label %254

246:                                              ; preds = %240
  %247 = zext nneg i8 %242 to i32
  %248 = shl i32 %219, 6
  %249 = or disjoint i32 %248, %247
  %250 = add nuw nsw i64 %220, 1
  %251 = icmp eq i64 %250, 6
  br i1 %251, label %252, label %217, !llvm.loop !126

252:                                              ; preds = %246
  %253 = tail call ptr @__errno_location() #13
  store i32 84, ptr %253, align 4, !tbaa !127
  br label %254

254:                                              ; preds = %235, %237, %244, %252
  %255 = phi i32 [ 1, %235 ], [ %239, %237 ], [ 1, %244 ], [ 1, %252 ]
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i8 10, ptr %100, align 1, !tbaa !62
  br label %280

258:                                              ; preds = %254, %211
  %259 = or i1 %14, %213
  br i1 %259, label %260, label %280

260:                                              ; preds = %258
  %261 = load ptr, ptr %4, align 8, !tbaa !34
  %262 = tail call ptr @AcquireString(ptr noundef %261) #12
  %263 = load ptr, ptr %4, align 8, !tbaa !34
  %264 = ptrtoint ptr %18 to i64
  %265 = ptrtoint ptr %263 to i64
  %266 = sub i64 %264, %265
  %267 = add nsw i64 %266, 1
  %268 = tail call i64 @CopyMagickString(ptr noundef %262, ptr noundef %263, i64 noundef %267) #12
  %269 = load ptr, ptr %4, align 8, !tbaa !34
  %270 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %269) #14
  %271 = add i64 %270, 1
  %272 = tail call i64 @ConcatenateMagickString(ptr noundef %262, ptr noundef nonnull @.str.5, i64 noundef %271) #12
  %273 = load ptr, ptr %4, align 8, !tbaa !34
  %274 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %273) #14
  %275 = add i64 %274, 2
  %276 = tail call i64 @ConcatenateMagickString(ptr noundef %262, ptr noundef %18, i64 noundef %275) #12
  %277 = load ptr, ptr %4, align 8, !tbaa !34
  %278 = tail call ptr @DestroyString(ptr noundef %277) #12
  store ptr %262, ptr %4, align 8, !tbaa !34
  %279 = getelementptr inbounds i8, ptr %262, i64 %266
  br label %280

280:                                              ; preds = %260, %258, %257
  %281 = phi ptr [ %100, %257 ], [ %279, %260 ], [ %18, %258 ]
  %282 = load ptr, ptr %6, align 8, !tbaa !54
  br label %283

283:                                              ; preds = %198, %207, %280
  %284 = phi ptr [ %143, %198 ], [ %143, %207 ], [ %282, %280 ]
  %285 = phi ptr [ %100, %198 ], [ %100, %207 ], [ null, %280 ]
  %286 = phi ptr [ %18, %198 ], [ %18, %207 ], [ %281, %280 ]
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  %289 = tail call ptr @__errno_location() #13
  store i32 22, ptr %289, align 4, !tbaa !127
  br label %329

290:                                              ; preds = %283
  %291 = load i8, ptr %286, align 1, !tbaa !62
  %292 = zext i8 %291 to i32
  br label %293

293:                                              ; preds = %290, %321
  %294 = phi ptr [ %286, %290 ], [ %297, %321 ]
  %295 = phi i32 [ %292, %290 ], [ %324, %321 ]
  %296 = phi i64 [ 0, %290 ], [ %325, %321 ]
  %297 = getelementptr inbounds i8, ptr %294, i64 1
  %298 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %296
  %299 = load i32, ptr %298, align 16, !tbaa !121
  %300 = and i32 %299, %292
  %301 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %296, i32 1
  %302 = load i32, ptr %301, align 4, !tbaa !123
  %303 = icmp eq i32 %300, %302
  br i1 %303, label %304, label %315

304:                                              ; preds = %293
  %305 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %296, i32 2
  %306 = load i32, ptr %305, align 8, !tbaa !124
  %307 = and i32 %306, %295
  %308 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %296, i32 3
  %309 = load i32, ptr %308, align 4, !tbaa !125
  %310 = icmp slt i32 %307, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %304
  %312 = tail call ptr @__errno_location() #13
  store i32 84, ptr %312, align 4, !tbaa !127
  br label %329

313:                                              ; preds = %304
  %314 = add nuw nsw i64 %296, 1
  br label %329

315:                                              ; preds = %293
  %316 = load i8, ptr %297, align 1, !tbaa !62
  %317 = xor i8 %316, -128
  %318 = icmp ult i8 %317, 64
  br i1 %318, label %321, label %319

319:                                              ; preds = %315
  %320 = tail call ptr @__errno_location() #13
  store i32 84, ptr %320, align 4, !tbaa !127
  br label %329

321:                                              ; preds = %315
  %322 = zext nneg i8 %317 to i32
  %323 = shl i32 %295, 6
  %324 = or disjoint i32 %323, %322
  %325 = add nuw nsw i64 %296, 1
  %326 = icmp eq i64 %325, 6
  br i1 %326, label %327, label %293, !llvm.loop !126

327:                                              ; preds = %321
  %328 = tail call ptr @__errno_location() #13
  store i32 84, ptr %328, align 4, !tbaa !127
  br label %329

329:                                              ; preds = %288, %311, %313, %319, %327
  %330 = phi i64 [ 1, %288 ], [ 1, %311 ], [ %314, %313 ], [ 1, %319 ], [ 1, %327 ]
  %331 = and i64 %330, 4294967295
  %332 = getelementptr inbounds i8, ptr %286, i64 %331
  br label %15, !llvm.loop !131

333:                                              ; preds = %195, %54
  %334 = tail call ptr @DestroyString(ptr noundef %8) #12
  %335 = load ptr, ptr %4, align 8, !tbaa !34
  br label %336

336:                                              ; preds = %458, %333
  %337 = phi ptr [ %335, %333 ], [ %461, %458 ]
  %338 = phi i64 [ 0, %333 ], [ %416, %458 ]
  %339 = icmp eq ptr %337, null
  br i1 %339, label %371, label %340

340:                                              ; preds = %336
  %341 = load i8, ptr %337, align 1, !tbaa !62
  %342 = zext i8 %341 to i32
  br label %343

343:                                              ; preds = %340, %365
  %344 = phi ptr [ %337, %340 ], [ %347, %365 ]
  %345 = phi i32 [ %342, %340 ], [ %368, %365 ]
  %346 = phi i64 [ 0, %340 ], [ %369, %365 ]
  %347 = getelementptr inbounds i8, ptr %344, i64 1
  %348 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %346
  %349 = load i32, ptr %348, align 16, !tbaa !121
  %350 = and i32 %349, %342
  %351 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %346, i32 1
  %352 = load i32, ptr %351, align 4, !tbaa !123
  %353 = icmp eq i32 %350, %352
  br i1 %353, label %354, label %361

354:                                              ; preds = %343
  %355 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %346, i32 2
  %356 = load i32, ptr %355, align 8, !tbaa !124
  %357 = and i32 %356, %345
  %358 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %346, i32 3
  %359 = load i32, ptr %358, align 4, !tbaa !125
  %360 = icmp slt i32 %357, %359
  br i1 %360, label %371, label %374

361:                                              ; preds = %343
  %362 = load i8, ptr %347, align 1, !tbaa !62
  %363 = xor i8 %362, -128
  %364 = icmp ult i8 %363, 64
  br i1 %364, label %365, label %371

365:                                              ; preds = %361
  %366 = zext nneg i8 %363 to i32
  %367 = shl i32 %345, 6
  %368 = or disjoint i32 %367, %366
  %369 = add nuw nsw i64 %346, 1
  %370 = icmp eq i64 %369, 6
  br i1 %370, label %371, label %343, !llvm.loop !126

371:                                              ; preds = %365, %361, %354, %336
  %372 = phi i32 [ 22, %336 ], [ 84, %354 ], [ 84, %361 ], [ 84, %365 ]
  %373 = tail call ptr @__errno_location() #13
  store i32 %372, ptr %373, align 4, !tbaa !127
  br label %374

374:                                              ; preds = %371, %354
  %375 = phi i32 [ %357, %354 ], [ -1, %371 ]
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %462, label %377

377:                                              ; preds = %374
  br i1 %339, label %409, label %378

378:                                              ; preds = %377
  %379 = load i8, ptr %337, align 1, !tbaa !62
  %380 = zext i8 %379 to i32
  br label %381

381:                                              ; preds = %378, %403
  %382 = phi ptr [ %337, %378 ], [ %385, %403 ]
  %383 = phi i32 [ %380, %378 ], [ %406, %403 ]
  %384 = phi i64 [ 0, %378 ], [ %407, %403 ]
  %385 = getelementptr inbounds i8, ptr %382, i64 1
  %386 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %384
  %387 = load i32, ptr %386, align 16, !tbaa !121
  %388 = and i32 %387, %380
  %389 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %384, i32 1
  %390 = load i32, ptr %389, align 4, !tbaa !123
  %391 = icmp eq i32 %388, %390
  br i1 %391, label %392, label %399

392:                                              ; preds = %381
  %393 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %384, i32 2
  %394 = load i32, ptr %393, align 8, !tbaa !124
  %395 = and i32 %394, %383
  %396 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %384, i32 3
  %397 = load i32, ptr %396, align 4, !tbaa !125
  %398 = icmp slt i32 %395, %397
  br i1 %398, label %409, label %412

399:                                              ; preds = %381
  %400 = load i8, ptr %385, align 1, !tbaa !62
  %401 = xor i8 %400, -128
  %402 = icmp ult i8 %401, 64
  br i1 %402, label %403, label %409

403:                                              ; preds = %399
  %404 = zext nneg i8 %401 to i32
  %405 = shl i32 %383, 6
  %406 = or disjoint i32 %405, %404
  %407 = add nuw nsw i64 %384, 1
  %408 = icmp eq i64 %407, 6
  br i1 %408, label %409, label %381, !llvm.loop !126

409:                                              ; preds = %403, %399, %392, %377
  %410 = phi i32 [ 22, %377 ], [ 84, %392 ], [ 84, %399 ], [ 84, %403 ]
  %411 = tail call ptr @__errno_location() #13
  store i32 %410, ptr %411, align 4, !tbaa !127
  br label %412

412:                                              ; preds = %409, %392
  %413 = phi i32 [ %395, %392 ], [ -1, %409 ]
  %414 = icmp eq i32 %413, 10
  %415 = zext i1 %414 to i64
  %416 = add nuw nsw i64 %338, %415
  br i1 %339, label %417, label %419

417:                                              ; preds = %412
  %418 = tail call ptr @__errno_location() #13
  store i32 22, ptr %418, align 4, !tbaa !127
  br label %458

419:                                              ; preds = %412
  %420 = load i8, ptr %337, align 1, !tbaa !62
  %421 = zext i8 %420 to i32
  br label %422

422:                                              ; preds = %419, %450
  %423 = phi ptr [ %337, %419 ], [ %426, %450 ]
  %424 = phi i32 [ %421, %419 ], [ %453, %450 ]
  %425 = phi i64 [ 0, %419 ], [ %454, %450 ]
  %426 = getelementptr inbounds i8, ptr %423, i64 1
  %427 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %425
  %428 = load i32, ptr %427, align 16, !tbaa !121
  %429 = and i32 %428, %421
  %430 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %425, i32 1
  %431 = load i32, ptr %430, align 4, !tbaa !123
  %432 = icmp eq i32 %429, %431
  br i1 %432, label %433, label %444

433:                                              ; preds = %422
  %434 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %425, i32 2
  %435 = load i32, ptr %434, align 8, !tbaa !124
  %436 = and i32 %435, %424
  %437 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %425, i32 3
  %438 = load i32, ptr %437, align 4, !tbaa !125
  %439 = icmp slt i32 %436, %438
  br i1 %439, label %440, label %442

440:                                              ; preds = %433
  %441 = tail call ptr @__errno_location() #13
  store i32 84, ptr %441, align 4, !tbaa !127
  br label %458

442:                                              ; preds = %433
  %443 = add nuw nsw i64 %425, 1
  br label %458

444:                                              ; preds = %422
  %445 = load i8, ptr %426, align 1, !tbaa !62
  %446 = xor i8 %445, -128
  %447 = icmp ult i8 %446, 64
  br i1 %447, label %450, label %448

448:                                              ; preds = %444
  %449 = tail call ptr @__errno_location() #13
  store i32 84, ptr %449, align 4, !tbaa !127
  br label %458

450:                                              ; preds = %444
  %451 = zext nneg i8 %446 to i32
  %452 = shl i32 %424, 6
  %453 = or disjoint i32 %452, %451
  %454 = add nuw nsw i64 %425, 1
  %455 = icmp eq i64 %454, 6
  br i1 %455, label %456, label %422, !llvm.loop !126

456:                                              ; preds = %450
  %457 = tail call ptr @__errno_location() #13
  store i32 84, ptr %457, align 4, !tbaa !127
  br label %458

458:                                              ; preds = %417, %440, %442, %448, %456
  %459 = phi i64 [ 1, %417 ], [ 1, %440 ], [ %443, %442 ], [ 1, %448 ], [ 1, %456 ]
  %460 = and i64 %459, 4294967295
  %461 = getelementptr inbounds i8, ptr %337, i64 %460
  br label %336, !llvm.loop !132

462:                                              ; preds = %374
  ret i64 %338
}

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetMultilineTypeMetrics(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._TypeMetric, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 683, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = load i8, ptr %13, align 1, !tbaa !62
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %82, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #12
  %18 = getelementptr inbounds %struct._DrawInfo, ptr %17, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = tail call ptr @DestroyString(ptr noundef %19) #12
  store ptr %20, ptr %18, align 8, !tbaa !54
  %21 = load ptr, ptr %12, align 8, !tbaa !54
  %22 = tail call ptr @StringToList(ptr noundef %21) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %82, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct._DrawInfo, ptr %17, i64 0, i32 41
  store i32 0, ptr %25, align 8, !tbaa !101
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %17, i64 0, i32 48
  store i32 0, ptr %26, align 8, !tbaa !102
  %27 = tail call ptr @ResetMagickMemory(ptr noundef %2, i32 noundef 0, i64 noundef 120) #12
  %28 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 120) #12
  %29 = load ptr, ptr %22, align 8, !tbaa !34
  store ptr %29, ptr %18, align 8, !tbaa !54
  %30 = call i32 @GetTypeMetrics(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %4), !range !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false), !tbaa.struct !133
  %31 = getelementptr inbounds ptr, ptr %22, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct._TypeMetric, ptr %4, i64 0, i32 3
  %36 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 3
  br label %37

37:                                               ; preds = %34, %45
  %38 = phi ptr [ %32, %34 ], [ %48, %45 ]
  %39 = phi i64 [ 1, %34 ], [ %46, %45 ]
  store ptr %38, ptr %18, align 8, !tbaa !54
  %40 = call i32 @GetTypeMetrics(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %4), !range !75
  %41 = load double, ptr %35, align 8, !tbaa !88
  %42 = load double, ptr %36, align 8, !tbaa !88
  %43 = fcmp ogt double %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false), !tbaa.struct !133
  br label %45

45:                                               ; preds = %37, %44
  %46 = add nuw nsw i64 %39, 1
  %47 = getelementptr inbounds ptr, ptr %22, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %37, !llvm.loop !134

50:                                               ; preds = %45, %24
  %51 = phi i32 [ %30, %24 ], [ %40, %45 ]
  %52 = phi i64 [ 1, %24 ], [ %46, %45 ]
  %53 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 1
  %54 = load double, ptr %53, align 8, !tbaa !76
  %55 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 2
  %56 = load double, ptr %55, align 8, !tbaa !78
  %57 = fsub double %54, %56
  %58 = fadd double %57, 5.000000e-01
  %59 = fptoui double %58 to i64
  %60 = mul i64 %52, %59
  %61 = uitofp i64 %60 to double
  %62 = add nsw i64 %52, -1
  %63 = sitofp i64 %62 to double
  %64 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 47
  %65 = load double, ptr %64, align 8, !tbaa !79
  %66 = call double @llvm.fmuladd.f64(double %63, double %65, double %61)
  %67 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 4
  store double %66, ptr %67, align 8, !tbaa !103
  store ptr null, ptr %18, align 8, !tbaa !54
  %68 = call ptr @DestroyDrawInfo(ptr noundef %17) #12
  %69 = load ptr, ptr %22, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %50, %71
  %72 = phi ptr [ %78, %71 ], [ %69, %50 ]
  %73 = phi ptr [ %77, %71 ], [ %22, %50 ]
  %74 = phi i64 [ %76, %71 ], [ 0, %50 ]
  %75 = call ptr @DestroyString(ptr noundef nonnull %72) #12
  store ptr %75, ptr %73, align 8, !tbaa !34
  %76 = add nuw nsw i64 %74, 1
  %77 = getelementptr inbounds ptr, ptr %22, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %71, !llvm.loop !135

80:                                               ; preds = %71, %50
  %81 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %22) #12
  br label %82

82:                                               ; preds = %16, %11, %80
  %83 = phi i32 [ %51, %80 ], [ 0, %11 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #12
  ret i32 %83
}

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @RenderFreetype(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca %struct._GeometryInfo, align 8
  %9 = alloca %struct._RectangleInfo, align 8
  %10 = alloca %struct._PixelPacket, align 8
  %11 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str.16, ptr %12
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1538, i32 noundef 320, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !38
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %11, align 8, !tbaa !111
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr @.str.16, ptr %21
  %24 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 30
  %25 = load double, ptr %24, align 8, !tbaa !136
  %26 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1654, ptr noundef nonnull @.str.17, ptr noundef nonnull %23, double noundef %25) #12
  br label %27

27:                                               ; preds = %20, %4
  %28 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %5) #12
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call noalias ptr @fdopen(i32 noundef %28, ptr noundef nonnull @.str.18) #12
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %31, %30 ], [ null, %27 ]
  %34 = icmp eq ptr %33, null
  %35 = or i1 %29, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #13
  %38 = load i32, ptr %37, align 4, !tbaa !127
  %39 = call ptr @GetExceptionMessage(i32 noundef %38) #12
  %40 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1664, i32 noundef 430, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull %5, ptr noundef %39) #12
  %41 = call ptr @DestroyString(ptr noundef %39) #12
  br label %395

42:                                               ; preds = %32
  %43 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.21) #12
  %44 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.22) #12
  %45 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.23) #12
  %46 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.24) #12
  %47 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.25) #12
  %48 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.26) #12
  %49 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.27) #12
  %50 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %51 = load double, ptr %50, align 8, !tbaa !87
  %52 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 3
  %53 = load double, ptr %52, align 8, !tbaa !83
  %54 = fsub double %51, %53
  %55 = call double @llvm.fabs.f64(double %54)
  %56 = fcmp olt double %55, 1.000000e-15
  br i1 %56, label %57, label %67

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 1
  %59 = load double, ptr %58, align 8, !tbaa !90
  %60 = call double @llvm.fabs.f64(double %59)
  %61 = fcmp olt double %60, 1.000000e-15
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 2
  %64 = load double, ptr %63, align 8, !tbaa !81
  %65 = call double @llvm.fabs.f64(double %64)
  %66 = fcmp olt double %65, 1.000000e-15
  br label %67

67:                                               ; preds = %62, %57, %42
  %68 = phi i1 [ false, %57 ], [ false, %42 ], [ %66, %62 ]
  %69 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 21
  %70 = load ptr, ptr %69, align 8, !tbaa !54
  %71 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %70) #14
  %72 = add i64 %71, 2
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %103, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 30
  %76 = load double, ptr %75, align 8, !tbaa !136
  %77 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 2
  %78 = load double, ptr %77, align 8, !tbaa !81
  %79 = fmul double %78, 2.000000e+00
  %80 = fmul double %76, %79
  %81 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 1
  %82 = load double, ptr %81, align 8, !tbaa !90
  %83 = fmul double %53, 2.000000e+00
  %84 = fmul double %83, %76
  %85 = add i64 %71, 2
  br label %86

86:                                               ; preds = %74, %86
  %87 = phi double [ 0.000000e+00, %74 ], [ %100, %86 ]
  %88 = phi double [ 0.000000e+00, %74 ], [ %98, %86 ]
  %89 = phi i64 [ 0, %74 ], [ %101, %86 ]
  %90 = sitofp i64 %89 to double
  %91 = fmul double %51, %90
  %92 = call double @llvm.fmuladd.f64(double %91, double %76, double %80)
  %93 = call double @llvm.fabs.f64(double %92)
  %94 = fmul double %82, %90
  %95 = call double @llvm.fmuladd.f64(double %94, double %76, double %84)
  %96 = call double @llvm.fabs.f64(double %95)
  %97 = fcmp ogt double %93, %88
  %98 = select i1 %97, double %93, double %88
  %99 = fcmp ogt double %96, %87
  %100 = select i1 %99, double %96, double %87
  %101 = add nuw i64 %89, 1
  %102 = icmp eq i64 %89, %85
  br i1 %102, label %103, label %86, !llvm.loop !137

103:                                              ; preds = %86, %67
  %104 = phi double [ 0.000000e+00, %67 ], [ %98, %86 ]
  %105 = phi double [ 0.000000e+00, %67 ], [ %100, %86 ]
  %106 = fmul double %104, 5.000000e-01
  %107 = select i1 %68, double 0.000000e+00, double %106
  %108 = fmul double %105, 5.000000e-01
  %109 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.28, double noundef %107, double noundef %108) #12
  %110 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 30
  %111 = load double, ptr %110, align 8, !tbaa !136
  %112 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.29, double noundef %111, double noundef %111) #12
  %113 = load ptr, ptr %11, align 8, !tbaa !111
  %114 = icmp eq ptr %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %103
  %116 = load i8, ptr %113, align 1, !tbaa !62
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %113, i32 noundef 47) #14
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %118, %115, %103
  %122 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.30) #12
  br label %125

123:                                              ; preds = %118
  %124 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.31, ptr noundef nonnull %113, ptr noundef nonnull %113) #12
  br label %125

125:                                              ; preds = %123, %121
  %126 = load double, ptr %50, align 8, !tbaa !87
  %127 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 1
  %128 = load double, ptr %127, align 8, !tbaa !90
  %129 = fneg double %128
  %130 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 2
  %131 = load double, ptr %130, align 8, !tbaa !81
  %132 = fneg double %131
  %133 = load double, ptr %52, align 8, !tbaa !83
  %134 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.32, double noundef %126, double noundef %129, double noundef %132, double noundef %133) #12
  %135 = load ptr, ptr %69, align 8, !tbaa !54
  %136 = call ptr @AcquireString(ptr noundef %135) #12
  %137 = load i8, ptr %135, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %160, label %139

139:                                              ; preds = %125, %150
  %140 = phi i64 [ %152, %150 ], [ 0, %125 ]
  %141 = phi i64 [ %155, %150 ], [ 0, %125 ]
  %142 = phi ptr [ %154, %150 ], [ %136, %125 ]
  %143 = getelementptr inbounds i8, ptr %135, i64 %141
  %144 = load i8, ptr %143, align 1, !tbaa !62
  %145 = and i8 %144, -2
  %146 = icmp eq i8 %145, 40
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = getelementptr inbounds i8, ptr %142, i64 1
  store i8 92, ptr %142, align 1, !tbaa !62
  %149 = add i64 %140, 1
  br label %150

150:                                              ; preds = %147, %139
  %151 = phi ptr [ %148, %147 ], [ %142, %139 ]
  %152 = phi i64 [ %149, %147 ], [ %140, %139 ]
  %153 = load i8, ptr %143, align 1, !tbaa !62
  %154 = getelementptr inbounds i8, ptr %151, i64 1
  store i8 %153, ptr %151, align 1, !tbaa !62
  %155 = add nuw nsw i64 %141, 1
  %156 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %135) #14
  %157 = sub i64 4095, %152
  %158 = call i64 @llvm.umin.i64(i64 %156, i64 %157)
  %159 = icmp slt i64 %155, %158
  br i1 %159, label %139, label %160, !llvm.loop !138

160:                                              ; preds = %150, %125
  %161 = phi ptr [ %136, %125 ], [ %154, %150 ]
  store i8 0, ptr %161, align 1, !tbaa !62
  br i1 %68, label %164, label %162

162:                                              ; preds = %160
  %163 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.33, ptr noundef %136) #12
  br label %164

164:                                              ; preds = %162, %160
  %165 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.34, ptr noundef %136) #12
  %166 = call ptr @DestroyString(ptr noundef %136) #12
  %167 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %33, ptr noundef nonnull @.str.35) #12
  %168 = call i32 @fclose(ptr noundef %33)
  %169 = fadd double %104, 5.000000e-01
  %170 = call double @llvm.floor.f64(double %169)
  %171 = fadd double %105, 5.000000e-01
  %172 = call double @llvm.floor.f64(double %171)
  %173 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.36, double noundef %170, double noundef %172) #12
  %174 = call ptr @AcquireImageInfo() #12
  %175 = getelementptr inbounds %struct._ImageInfo, ptr %174, i64 0, i32 51
  %176 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %175, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull %5) #12
  %177 = getelementptr inbounds %struct._ImageInfo, ptr %174, i64 0, i32 8
  %178 = call ptr @CloneString(ptr noundef nonnull %177, ptr noundef nonnull %6) #12
  %179 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 31
  %180 = load ptr, ptr %179, align 8, !tbaa !139
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %164
  %183 = getelementptr inbounds %struct._ImageInfo, ptr %174, i64 0, i32 21
  %184 = call ptr @CloneString(ptr noundef nonnull %183, ptr noundef nonnull %180) #12
  br label %185

185:                                              ; preds = %182, %164
  %186 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 13
  %187 = load i32, ptr %186, align 4, !tbaa !140
  %188 = getelementptr inbounds %struct._ImageInfo, ptr %174, i64 0, i32 5
  store i32 %187, ptr %188, align 4, !tbaa !141
  %189 = call ptr @ReadImage(ptr noundef %174, ptr noundef nonnull %15) #12
  store ptr %189, ptr %7, align 8, !tbaa !34
  call void @CatchException(ptr noundef nonnull %15) #12
  %190 = call ptr @DestroyImageInfo(ptr noundef %174) #12
  %191 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %5) #12
  %192 = load ptr, ptr %7, align 8, !tbaa !34
  %193 = icmp eq ptr %192, null
  br i1 %193, label %395, label %194

194:                                              ; preds = %185
  %195 = load double, ptr @DefaultResolution, align 8, !tbaa !94
  %196 = load ptr, ptr %179, align 8, !tbaa !139
  %197 = icmp eq ptr %196, null
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #12
  %199 = call i32 @ParseGeometry(ptr noundef nonnull %196, ptr noundef nonnull %8) #12
  %200 = getelementptr inbounds %struct._GeometryInfo, ptr %8, i64 0, i32 1
  %201 = load double, ptr %200, align 8, !tbaa !143
  %202 = and i32 %199, 8
  %203 = icmp eq i32 %202, 0
  %204 = load double, ptr %8, align 8
  %205 = select i1 %203, double %204, double %201
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #12
  br label %206

206:                                              ; preds = %198, %194
  %207 = phi double [ %205, %198 ], [ %195, %194 ]
  br i1 %68, label %208, label %230

208:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  %209 = load ptr, ptr %7, align 8, !tbaa !34
  %210 = getelementptr inbounds %struct._Image, ptr %209, i64 0, i32 58
  call void @GetImageBoundingBox(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %9, ptr noundef %209, ptr noundef nonnull %210) #12
  %211 = load i64, ptr %9, align 8, !tbaa.struct !144
  %212 = getelementptr inbounds i8, ptr %9, i64 16
  %213 = load i64, ptr %212, align 8, !tbaa.struct !146
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  %214 = fdiv double %207, %195
  %215 = call double @ExpandAffine(ptr noundef nonnull %50) #12
  %216 = fmul double %214, %215
  %217 = load double, ptr %110, align 8, !tbaa !136
  %218 = call double @llvm.fmuladd.f64(double %216, double %217, double 5.000000e-01)
  %219 = fptoui double %218 to i64
  %220 = fmul double %105, %214
  %221 = fmul double %220, 1.250000e-01
  %222 = fadd double %221, -5.000000e-01
  %223 = call double @llvm.ceil.f64(double %222)
  %224 = fptosi double %223 to i64
  %225 = uitofp i64 %211 to double
  %226 = uitofp i64 %219 to double
  %227 = sitofp i64 %213 to double
  %228 = sitofp i64 %224 to double
  %229 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.39, double noundef %225, double noundef %226, double noundef %227, double noundef %228) #12
  br label %230

230:                                              ; preds = %206, %208
  %231 = phi ptr [ %6, %208 ], [ @.str.38, %206 ]
  %232 = call i32 @TransformImage(ptr noundef nonnull %7, ptr noundef nonnull %231, ptr noundef null) #12
  %233 = fdiv double %207, %195
  %234 = call double @ExpandAffine(ptr noundef nonnull %50) #12
  %235 = fmul double %233, %234
  %236 = load double, ptr %110, align 8, !tbaa !136
  %237 = fmul double %235, %236
  store double %237, ptr %3, align 8, !tbaa !109
  %238 = getelementptr inbounds %struct._PointInfo, ptr %3, i64 0, i32 1
  store double %237, ptr %238, align 8, !tbaa !110
  %239 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 1
  store double %237, ptr %239, align 8, !tbaa !76
  %240 = fdiv double %237, -5.000000e+00
  %241 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 2
  store double %240, ptr %241, align 8, !tbaa !78
  %242 = load ptr, ptr %7, align 8, !tbaa !34
  %243 = getelementptr inbounds %struct._Image, ptr %242, i64 0, i32 7
  %244 = load i64, ptr %243, align 8, !tbaa !130
  %245 = uitofp i64 %244 to double
  %246 = call double @ExpandAffine(ptr noundef nonnull %50) #12
  %247 = fdiv double %245, %246
  %248 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 3
  store double %247, ptr %248, align 8, !tbaa !88
  %249 = load double, ptr %3, align 8, !tbaa !109
  %250 = fmul double %249, 1.152000e+00
  %251 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 4
  store double %250, ptr %251, align 8, !tbaa !103
  %252 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 5
  store double %249, ptr %252, align 8, !tbaa !104
  %253 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 8
  store double 0.000000e+00, ptr %253, align 8, !tbaa !89
  %254 = load double, ptr %241, align 8, !tbaa !78
  %255 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 8, i32 1
  store double %254, ptr %255, align 8, !tbaa !105
  %256 = load double, ptr %239, align 8, !tbaa !76
  %257 = fadd double %254, %256
  %258 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 8, i32 2
  store double %257, ptr %258, align 8, !tbaa !106
  %259 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 8, i32 3
  store double %257, ptr %259, align 8, !tbaa !107
  %260 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 6
  store double -2.000000e+00, ptr %260, align 8, !tbaa !98
  %261 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 7
  store double 1.000000e+00, ptr %261, align 8, !tbaa !96
  %262 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 41
  %263 = load i32, ptr %262, align 8, !tbaa !101
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %230
  %266 = load ptr, ptr %7, align 8, !tbaa !34
  %267 = call ptr @DestroyImage(ptr noundef %266) #12
  store ptr %267, ptr %7, align 8, !tbaa !34
  br label %395

268:                                              ; preds = %230
  %269 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %270 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5, i32 3
  %271 = load i16, ptr %270, align 2, !tbaa !147
  %272 = icmp eq i16 %271, -1
  br i1 %272, label %392, label %273

273:                                              ; preds = %268
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %274 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %275 = load i32, ptr %274, align 8, !tbaa !148
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = call i32 @SetImageAlphaChannel(ptr noundef %0, i32 noundef 6) #12
  br label %279

279:                                              ; preds = %277, %273
  %280 = load ptr, ptr %7, align 8, !tbaa !34
  %281 = getelementptr inbounds %struct._Image, ptr %280, i64 0, i32 6
  %282 = load i32, ptr %281, align 8, !tbaa !148
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = call i32 @SetImageAlphaChannel(ptr noundef %280, i32 noundef 6) #12
  br label %286

286:                                              ; preds = %284, %279
  %287 = load i64, ptr %269, align 4
  store i64 %287, ptr %10, align 8
  %288 = load ptr, ptr %7, align 8, !tbaa !34
  %289 = call ptr @AcquireAuthenticCacheView(ptr noundef %288, ptr noundef nonnull %15) #12
  %290 = load ptr, ptr %7, align 8, !tbaa !34
  %291 = getelementptr inbounds %struct._Image, ptr %290, i64 0, i32 8
  %292 = load i64, ptr %291, align 8, !tbaa !149
  %293 = icmp sgt i64 %292, 0
  br i1 %293, label %294, label %375

294:                                              ; preds = %286
  %295 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 9
  %296 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 3
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 3
  %298 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 2
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 1
  br label %306

300:                                              ; preds = %372
  %301 = add nuw nsw i64 %308, 1
  %302 = load ptr, ptr %7, align 8, !tbaa !34
  %303 = getelementptr inbounds %struct._Image, ptr %302, i64 0, i32 8
  %304 = load i64, ptr %303, align 8, !tbaa !149
  %305 = icmp slt i64 %301, %304
  br i1 %305, label %306, label %375, !llvm.loop !150

306:                                              ; preds = %294, %300
  %307 = phi ptr [ %290, %294 ], [ %302, %300 ]
  %308 = phi i64 [ 0, %294 ], [ %301, %300 ]
  %309 = getelementptr inbounds %struct._Image, ptr %307, i64 0, i32 7
  %310 = load i64, ptr %309, align 8, !tbaa !130
  %311 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %289, i64 noundef 0, i64 noundef %308, i64 noundef %310, i64 noundef 1, ptr noundef nonnull %15) #15
  %312 = icmp eq ptr %311, null
  br i1 %312, label %372, label %313

313:                                              ; preds = %306
  %314 = load ptr, ptr %7, align 8, !tbaa !34
  %315 = getelementptr inbounds %struct._Image, ptr %314, i64 0, i32 7
  %316 = load i64, ptr %315, align 8, !tbaa !130
  %317 = icmp sgt i64 %316, 0
  br i1 %317, label %318, label %368

318:                                              ; preds = %313, %353
  %319 = phi ptr [ %362, %353 ], [ %311, %313 ]
  %320 = phi i64 [ %363, %353 ], [ 0, %313 ]
  %321 = load ptr, ptr %295, align 8, !tbaa !151
  %322 = icmp eq ptr %321, null
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = load i64, ptr %269, align 4
  store i64 %324, ptr %10, align 8
  br label %338

325:                                              ; preds = %318
  %326 = getelementptr inbounds %struct._Image, ptr %321, i64 0, i32 74, i32 2
  %327 = load i64, ptr %326, align 8, !tbaa !152
  %328 = add nsw i64 %327, %320
  %329 = getelementptr inbounds %struct._Image, ptr %321, i64 0, i32 74, i32 3
  %330 = load i64, ptr %329, align 8, !tbaa !153
  %331 = add nsw i64 %330, %308
  %332 = getelementptr inbounds %struct._Image, ptr %321, i64 0, i32 58
  %333 = call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %321, i32 noundef 7, i64 noundef %328, i64 noundef %331, ptr noundef nonnull %10, ptr noundef nonnull %332) #12
  %334 = getelementptr inbounds %struct._Image, ptr %321, i64 0, i32 6
  %335 = load i32, ptr %334, align 8, !tbaa !148
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %325
  store i16 0, ptr %296, align 2, !tbaa !154
  br label %338

338:                                              ; preds = %337, %325, %323
  %339 = load ptr, ptr %7, align 8, !tbaa !34
  %340 = call float @GetPixelIntensity(ptr noundef %339, ptr noundef nonnull %319) #15
  %341 = fsub float 6.553500e+04, %340
  %342 = load i16, ptr %297, align 2, !tbaa !154
  %343 = xor i16 %342, -1
  %344 = uitofp i16 %343 to float
  %345 = fmul float %341, %344
  %346 = fdiv float %345, 6.553500e+04
  %347 = fcmp ugt float %346, 0.000000e+00
  br i1 %347, label %348, label %353

348:                                              ; preds = %338
  %349 = fcmp ult float %346, 6.553500e+04
  br i1 %349, label %350, label %353

350:                                              ; preds = %348
  %351 = fadd float %346, 5.000000e-01
  %352 = fptoui float %351 to i16
  br label %353

353:                                              ; preds = %350, %348, %338
  %354 = phi i16 [ %352, %350 ], [ 0, %338 ], [ -1, %348 ]
  %355 = xor i16 %354, -1
  %356 = getelementptr inbounds %struct._PixelPacket, ptr %319, i64 0, i32 3
  store i16 %355, ptr %356, align 2, !tbaa !154
  %357 = load i16, ptr %298, align 4, !tbaa !155
  %358 = getelementptr inbounds %struct._PixelPacket, ptr %319, i64 0, i32 2
  store i16 %357, ptr %358, align 2, !tbaa !155
  %359 = load i16, ptr %299, align 2, !tbaa !156
  %360 = getelementptr inbounds %struct._PixelPacket, ptr %319, i64 0, i32 1
  store i16 %359, ptr %360, align 2, !tbaa !156
  %361 = load i16, ptr %10, align 8, !tbaa !157
  store i16 %361, ptr %319, align 2, !tbaa !157
  %362 = getelementptr inbounds %struct._PixelPacket, ptr %319, i64 1
  %363 = add nuw nsw i64 %320, 1
  %364 = load ptr, ptr %7, align 8, !tbaa !34
  %365 = getelementptr inbounds %struct._Image, ptr %364, i64 0, i32 7
  %366 = load i64, ptr %365, align 8, !tbaa !130
  %367 = icmp slt i64 %363, %366
  br i1 %367, label %318, label %368, !llvm.loop !158

368:                                              ; preds = %353, %313
  %369 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %289, ptr noundef nonnull %15) #15
  %370 = icmp eq i32 %369, 0
  %371 = select i1 %370, i32 5, i32 0
  br label %372

372:                                              ; preds = %368, %306
  %373 = phi i32 [ 5, %306 ], [ %371, %368 ]
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %300, label %375

375:                                              ; preds = %300, %372, %286
  %376 = call ptr @DestroyCacheView(ptr noundef %289) #12
  %377 = load ptr, ptr %7, align 8, !tbaa !34
  %378 = load double, ptr %2, align 8, !tbaa !82
  %379 = fadd double %378, -5.000000e-01
  %380 = call double @llvm.ceil.f64(double %379)
  %381 = fptosi double %380 to i64
  %382 = getelementptr inbounds %struct._PointInfo, ptr %2, i64 0, i32 1
  %383 = load double, ptr %382, align 8, !tbaa !84
  %384 = load double, ptr %239, align 8, !tbaa !76
  %385 = load double, ptr %241, align 8, !tbaa !78
  %386 = fadd double %384, %385
  %387 = fsub double %383, %386
  %388 = fadd double %387, -5.000000e-01
  %389 = call double @llvm.ceil.f64(double %388)
  %390 = fptosi double %389 to i64
  %391 = call i32 @CompositeImage(ptr noundef %0, i32 noundef 40, ptr noundef %377, i64 noundef %381, i64 noundef %390) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %392

392:                                              ; preds = %375, %268
  %393 = load ptr, ptr %7, align 8, !tbaa !34
  %394 = call ptr @DestroyImage(ptr noundef %393) #12
  store ptr %394, ptr %7, align 8, !tbaa !34
  br label %395

395:                                              ; preds = %36, %185, %265, %392
  %396 = phi i32 [ 0, %36 ], [ 1, %265 ], [ 1, %392 ], [ 0, %185 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #12
  ret i32 %396
}

declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #1

declare ptr @GetTypeInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @GetTypeInfoByFamily(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #8

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

declare ptr @AcquireImageInfo() local_unnamed_addr #1

declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CatchException(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #1

declare i32 @TransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GetImageBoundingBox(ptr dead_on_unwind writable sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @ExpandAffine(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #1

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { hot nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 12976}
!39 = !{!"_Image", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !35, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !44, i64 104, !45, i64 112, !40, i64 208, !35, i64 216, !40, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !41, i64 256, !44, i64 264, !44, i64 272, !47, i64 280, !47, i64 312, !47, i64 344, !44, i64 376, !44, i64 384, !44, i64 392, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !35, i64 424, !41, i64 432, !41, i64 440, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !48, i64 480, !49, i64 504, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !41, i64 12904, !41, i64 12912, !51, i64 12920, !40, i64 12976, !41, i64 12984, !35, i64 12992, !52, i64 13000, !52, i64 13032, !35, i64 13064, !41, i64 13072, !41, i64 13080, !35, i64 13088, !35, i64 13096, !35, i64 13104, !40, i64 13112, !40, i64 13116, !42, i64 13120, !35, i64 13128, !47, i64 13136, !35, i64 13168, !35, i64 13176, !40, i64 13184, !40, i64 13188, !53, i64 13192, !40, i64 13200, !41, i64 13208, !41, i64 13216, !40, i64 13224, !41, i64 13232}
!40 = !{!"int", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!"_PixelPacket", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!43 = !{!"short", !36, i64 0}
!44 = !{!"double", !36, i64 0}
!45 = !{!"_ChromaticityInfo", !46, i64 0, !46, i64 24, !46, i64 48, !46, i64 72}
!46 = !{!"_PrimaryInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!47 = !{!"_RectangleInfo", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!48 = !{!"_ErrorInfo", !44, i64 0, !44, i64 8, !44, i64 16}
!49 = !{!"_TimerInfo", !50, i64 0, !50, i64 24, !40, i64 48, !41, i64 56}
!50 = !{!"_Timer", !44, i64 0, !44, i64 8, !44, i64 16}
!51 = !{!"_ExceptionInfo", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !41, i64 48}
!52 = !{!"_ProfileInfo", !35, i64 0, !41, i64 8, !35, i64 16, !41, i64 24}
!53 = !{!"long long", !36, i64 0}
!54 = !{!55, !35, i64 328}
!55 = !{!"_DrawInfo", !35, i64 0, !35, i64 8, !47, i64 16, !56, i64 48, !40, i64 96, !42, i64 100, !42, i64 108, !44, i64 120, !57, i64 128, !35, i64 256, !35, i64 264, !35, i64 272, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !41, i64 304, !44, i64 312, !40, i64 320, !40, i64 324, !35, i64 328, !41, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !40, i64 368, !40, i64 372, !41, i64 376, !35, i64 384, !44, i64 392, !35, i64 400, !40, i64 408, !42, i64 412, !42, i64 420, !35, i64 432, !35, i64 440, !35, i64 448, !58, i64 456, !40, i64 488, !43, i64 492, !40, i64 496, !61, i64 504, !40, i64 672, !41, i64 680, !44, i64 688, !44, i64 696, !44, i64 704, !40, i64 712}
!56 = !{!"_AffineMatrix", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40}
!57 = !{!"_GradientInfo", !40, i64 0, !47, i64 8, !58, i64 40, !35, i64 72, !41, i64 80, !40, i64 88, !40, i64 92, !41, i64 96, !59, i64 104, !60, i64 120}
!58 = !{!"_SegmentInfo", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!59 = !{!"_PointInfo", !44, i64 0, !44, i64 8}
!60 = !{!"float", !36, i64 0}
!61 = !{!"_ElementReference", !35, i64 0, !40, i64 8, !57, i64 16, !41, i64 144, !35, i64 152, !35, i64 160}
!62 = !{!36, !36, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!55, !35, i64 8}
!67 = !{!39, !40, i64 4}
!68 = !{!69, !44, i64 16}
!69 = !{!"_GeometryInfo", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!70 = !{!39, !41, i64 296}
!71 = !{!55, !44, i64 80}
!72 = !{!69, !44, i64 24}
!73 = !{!39, !41, i64 304}
!74 = !{!55, !44, i64 88}
!75 = !{i32 0, i32 2}
!76 = !{!77, !44, i64 16}
!77 = !{!"_TypeMetric", !59, i64 0, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !58, i64 72, !59, i64 104}
!78 = !{!77, !44, i64 24}
!79 = !{!55, !44, i64 704}
!80 = !{!55, !40, i64 96}
!81 = !{!55, !44, i64 64}
!82 = !{!59, !44, i64 0}
!83 = !{!55, !44, i64 72}
!84 = !{!59, !44, i64 8}
!85 = !{!47, !41, i64 0}
!86 = !{!47, !41, i64 8}
!87 = !{!55, !44, i64 48}
!88 = !{!77, !44, i64 32}
!89 = !{!77, !44, i64 72}
!90 = !{!55, !44, i64 56}
!91 = !{!55, !40, i64 408}
!92 = !{!55, !43, i64 418}
!93 = !{i64 0, i64 8, !94, i64 8, i64 8, !94, i64 16, i64 8, !94, i64 24, i64 8, !94, i64 32, i64 8, !94, i64 40, i64 8, !94}
!94 = !{!44, !44, i64 0}
!95 = !{!77, !44, i64 104}
!96 = !{!77, !44, i64 64}
!97 = !{!55, !40, i64 320}
!98 = !{!77, !44, i64 56}
!99 = distinct !{!99, !64, !65}
!100 = distinct !{!100, !64, !65}
!101 = !{!55, !40, i64 496}
!102 = !{!55, !40, i64 712}
!103 = !{!77, !44, i64 40}
!104 = !{!77, !44, i64 48}
!105 = !{!77, !44, i64 80}
!106 = !{!77, !44, i64 88}
!107 = !{!77, !44, i64 96}
!108 = !{!77, !44, i64 112}
!109 = !{!77, !44, i64 0}
!110 = !{!77, !44, i64 8}
!111 = !{!55, !35, i64 344}
!112 = !{!55, !35, i64 360}
!113 = !{!55, !40, i64 368}
!114 = !{!55, !40, i64 372}
!115 = !{!55, !41, i64 376}
!116 = !{!117, !41, i64 0}
!117 = !{!"_TypeInfo", !41, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !41, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !40, i64 96, !35, i64 104, !35, i64 112, !41, i64 120}
!118 = !{!55, !41, i64 336}
!119 = !{!117, !35, i64 80}
!120 = !{!117, !35, i64 88}
!121 = !{!122, !40, i64 0}
!122 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!123 = !{!122, !40, i64 4}
!124 = !{!122, !40, i64 8}
!125 = !{!122, !40, i64 12}
!126 = distinct !{!126, !64, !65}
!127 = !{!40, !40, i64 0}
!128 = distinct !{!128, !64, !65}
!129 = !{!55, !44, i64 120}
!130 = !{!39, !41, i64 40}
!131 = distinct !{!131, !64, !65}
!132 = distinct !{!132, !64, !65}
!133 = !{i64 0, i64 8, !94, i64 8, i64 8, !94, i64 16, i64 8, !94, i64 24, i64 8, !94, i64 32, i64 8, !94, i64 40, i64 8, !94, i64 48, i64 8, !94, i64 56, i64 8, !94, i64 64, i64 8, !94, i64 72, i64 8, !94, i64 80, i64 8, !94, i64 88, i64 8, !94, i64 96, i64 8, !94, i64 104, i64 8, !94, i64 112, i64 8, !94}
!134 = distinct !{!134, !64, !65}
!135 = distinct !{!135, !64, !65}
!136 = !{!55, !44, i64 392}
!137 = distinct !{!137, !64, !65}
!138 = distinct !{!138, !64, !65}
!139 = !{!55, !35, i64 400}
!140 = !{!55, !40, i64 284}
!141 = !{!142, !40, i64 20}
!142 = !{!"_ImageInfo", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !44, i64 144, !44, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !40, i64 184, !40, i64 188, !41, i64 192, !40, i64 200, !40, i64 204, !40, i64 208, !41, i64 216, !40, i64 224, !40, i64 228, !35, i64 232, !35, i64 240, !40, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !35, i64 312, !41, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !40, i64 16712, !35, i64 16720, !41, i64 16728, !41, i64 16736, !42, i64 16744, !41, i64 16752, !40, i64 16760, !42, i64 16764, !35, i64 16776, !40, i64 16784}
!143 = !{!69, !44, i64 8}
!144 = !{i64 0, i64 8, !145, i64 8, i64 8, !145, i64 16, i64 8, !145, i64 24, i64 8, !145}
!145 = !{!41, !41, i64 0}
!146 = !{i64 0, i64 8, !145, i64 8, i64 8, !145}
!147 = !{!55, !43, i64 106}
!148 = !{!39, !40, i64 32}
!149 = !{!39, !41, i64 48}
!150 = distinct !{!150, !64, !65}
!151 = !{!55, !35, i64 256}
!152 = !{!39, !41, i64 13152}
!153 = !{!39, !41, i64 13160}
!154 = !{!42, !43, i64 6}
!155 = !{!42, !43, i64 4}
!156 = !{!42, !43, i64 2}
!157 = !{!42, !43, i64 0}
!158 = distinct !{!158, !64, !65}
