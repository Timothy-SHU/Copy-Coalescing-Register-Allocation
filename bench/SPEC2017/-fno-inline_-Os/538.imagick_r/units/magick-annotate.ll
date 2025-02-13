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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @AnnotateComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @annotate_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #14
  store ptr %4, ptr @annotate_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AnnotateComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @annotate_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @annotate_semaphore) #14
  br label %4

4:                                                ; preds = %3, %0
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @annotate_semaphore) #14
  ret void
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @AnnotateImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct._GeometryInfo, align 8
  %5 = alloca %struct._PointInfo, align 8
  %6 = alloca %struct._RectangleInfo, align 16
  %7 = alloca %struct._TypeMetric, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #15
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 258, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #14
  br label %14

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %586, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %16, align 1, !tbaa !62
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %586, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @StringToList(ptr noundef nonnull %16) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %586, label %24

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
  %36 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #14
  %37 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #14
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %6) #14
  call void @SetGeometryInfo(ptr noundef nonnull %4) #14
  %38 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %43 = call i32 @ParsePageGeometry(ptr noundef %0, ptr noundef nonnull %39, ptr noundef nonnull %6, ptr noundef nonnull %42) #14
  %44 = load ptr, ptr %38, align 8, !tbaa !65
  %45 = call i32 @ParseGeometry(ptr noundef %44, ptr noundef nonnull %4) #14
  br label %46

46:                                               ; preds = %41, %34
  %47 = call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %586, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !66
  %52 = call fastcc i32 @IsGrayColorspace(i32 noundef %51) #16, !range !67
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #14
  br label %56

56:                                               ; preds = %54, %49
  %57 = load ptr, ptr %22, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %569, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 2
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %62 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3
  %63 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 4
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
  %76 = getelementptr inbounds %struct._DrawInfo, ptr %37, i64 0, i32 3, i32 1
  %77 = getelementptr inbounds %struct._PointInfo, ptr %5, i64 0, i32 1
  %78 = fneg double %74
  %79 = add nsw i64 %35, -1
  %80 = getelementptr inbounds %struct._DrawInfo, ptr %36, i64 0, i32 32
  %81 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 33, i32 3
  %82 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 33
  %83 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %84 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 2
  %85 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 3
  %86 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 9
  %87 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 7
  %88 = getelementptr inbounds %struct._DrawInfo, ptr %36, i64 0, i32 19
  %89 = getelementptr inbounds %struct._TypeMetric, ptr %7, i64 0, i32 6
  %90 = insertelement <2 x double> poison, double %74, i64 0
  %91 = shufflevector <2 x double> %90, <2 x double> poison, <2 x i32> zeroinitializer
  br label %92

92:                                               ; preds = %59, %564
  %93 = phi ptr [ %57, %59 ], [ %567, %564 ]
  %94 = phi i64 [ 0, %59 ], [ %565, %564 ]
  %95 = load <2 x double>, ptr %60, align 8, !tbaa !68
  %96 = load <2 x i64>, ptr %61, align 8, !tbaa !69
  %97 = sitofp <2 x i64> %96 to <2 x double>
  %98 = fsub <2 x double> %95, %97
  store <2 x double> %98, ptr %63, align 8, !tbaa !68
  %99 = call ptr @CloneString(ptr noundef nonnull %65, ptr noundef nonnull %93) #14
  %100 = call i32 @GetTypeMetrics(ptr noundef nonnull %0, ptr noundef %36, ptr noundef nonnull %7) #16, !range !67
  %101 = load double, ptr %66, align 8, !tbaa !70
  %102 = load double, ptr %67, align 8, !tbaa !72
  %103 = fsub double %101, %102
  %104 = load double, ptr %68, align 8, !tbaa !73
  %105 = fadd double %103, %104
  %106 = fadd double %105, 5.000000e-01
  %107 = fptosi double %106 to i64
  %108 = load i32, ptr %69, align 8, !tbaa !74
  switch i32 %108, label %109 [
    i32 9, label %417
    i32 1, label %121
    i32 2, label %141
    i32 3, label %181
    i32 4, label %219
    i32 10, label %253
    i32 5, label %253
    i32 6, label %290
    i32 7, label %337
    i32 8, label %368
  ]

109:                                              ; preds = %92
  %110 = sitofp i64 %94 to double
  %111 = uitofp i64 %107 to double
  %112 = load <2 x double>, ptr %63, align 8, !tbaa !68
  %113 = load <2 x double>, ptr %70, align 8, !tbaa !68
  %114 = insertelement <2 x double> poison, double %110, i64 0
  %115 = shufflevector <2 x double> %114, <2 x double> poison, <2 x i32> zeroinitializer
  %116 = fmul <2 x double> %113, %115
  %117 = insertelement <2 x double> poison, double %111, i64 0
  %118 = shufflevector <2 x double> %117, <2 x double> poison, <2 x i32> zeroinitializer
  %119 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %116, <2 x double> %118, <2 x double> %112)
  %120 = extractelement <2 x double> %119, i64 0
  store double %120, ptr %5, align 8, !tbaa !75
  br label %447

121:                                              ; preds = %92
  %122 = sitofp i64 %94 to double
  %123 = uitofp i64 %107 to double
  %124 = fadd double %101, %102
  %125 = load <2 x i64>, ptr %6, align 16, !tbaa !69
  %126 = icmp eq <2 x i64> %125, zeroinitializer
  %127 = select <2 x i1> %126, <2 x double> <double -1.000000e+00, double -1.000000e+00>, <2 x double> <double 1.000000e+00, double 1.000000e+00>
  %128 = load <2 x double>, ptr %63, align 8, !tbaa !68
  %129 = load <2 x double>, ptr %70, align 8, !tbaa !68
  %130 = insertelement <2 x double> poison, double %122, i64 0
  %131 = shufflevector <2 x double> %130, <2 x double> poison, <2 x i32> zeroinitializer
  %132 = fmul <2 x double> %129, %131
  %133 = insertelement <2 x double> poison, double %123, i64 0
  %134 = shufflevector <2 x double> %133, <2 x double> poison, <2 x i32> zeroinitializer
  %135 = fmul <2 x double> %132, %134
  %136 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %127, <2 x double> %128, <2 x double> %135)
  %137 = insertelement <2 x double> poison, double %124, i64 0
  %138 = insertelement <2 x double> %137, double %101, i64 1
  %139 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %129, <2 x double> %138, <2 x double> %136)
  %140 = extractelement <2 x double> %139, i64 0
  store double %140, ptr %5, align 8, !tbaa !75
  br label %447

141:                                              ; preds = %92
  %142 = load i64, ptr %6, align 16, !tbaa !76
  %143 = icmp eq i64 %142, 0
  %144 = select i1 %143, double -1.000000e+00, double 1.000000e+00
  %145 = uitofp i64 %142 to double
  %146 = fmul double %145, 5.000000e-01
  %147 = sitofp i64 %94 to double
  %148 = uitofp i64 %107 to double
  %149 = load double, ptr %62, align 8, !tbaa !77
  %150 = load double, ptr %71, align 8, !tbaa !78
  %151 = load double, ptr %72, align 8, !tbaa !79
  %152 = fadd double %150, %151
  %153 = fmul double %149, %152
  %154 = fmul double %153, 5.000000e-01
  %155 = fadd double %101, %102
  %156 = load i64, ptr %75, align 8, !tbaa !80
  %157 = icmp eq i64 %156, 0
  %158 = select i1 %157, double -1.000000e+00, double 1.000000e+00
  %159 = load <2 x double>, ptr %63, align 8, !tbaa !68
  %160 = extractelement <2 x double> %159, i64 0
  %161 = call double @llvm.fmuladd.f64(double %144, double %160, double %146)
  %162 = load <2 x double>, ptr %70, align 8, !tbaa !68
  %163 = extractelement <2 x double> %162, i64 0
  %164 = fmul double %163, %147
  %165 = call double @llvm.fmuladd.f64(double %164, double %148, double %161)
  %166 = fsub double %165, %154
  %167 = call double @llvm.fmuladd.f64(double %163, double %155, double %166)
  store double %167, ptr %5, align 8, !tbaa !75
  %168 = extractelement <2 x double> %162, i64 1
  %169 = fmul double %168, %147
  %170 = fmul double %169, %148
  %171 = extractelement <2 x double> %159, i64 1
  %172 = call double @llvm.fmuladd.f64(double %158, double %171, double %170)
  %173 = call double @llvm.fmuladd.f64(double %168, double %101, double %172)
  %174 = load double, ptr %76, align 8, !tbaa !81
  %175 = fsub double %150, %151
  %176 = fmul double %175, %174
  %177 = fmul double %176, 5.000000e-01
  %178 = fsub double %173, %177
  %179 = insertelement <2 x double> poison, double %167, i64 0
  %180 = insertelement <2 x double> %179, double %178, i64 1
  br label %447

181:                                              ; preds = %92
  %182 = load i64, ptr %6, align 16, !tbaa !76
  %183 = icmp eq i64 %182, 0
  %184 = select i1 %183, double 1.000000e+00, double -1.000000e+00
  %185 = uitofp i64 %182 to double
  %186 = sitofp i64 %94 to double
  %187 = uitofp i64 %107 to double
  %188 = load double, ptr %62, align 8, !tbaa !77
  %189 = load double, ptr %71, align 8, !tbaa !78
  %190 = load double, ptr %72, align 8, !tbaa !79
  %191 = fadd double %189, %190
  %192 = fneg double %188
  %193 = fadd double %101, %102
  %194 = load i64, ptr %75, align 8, !tbaa !80
  %195 = icmp eq i64 %194, 0
  %196 = select i1 %195, double -1.000000e+00, double 1.000000e+00
  %197 = load <2 x double>, ptr %63, align 8, !tbaa !68
  %198 = extractelement <2 x double> %197, i64 0
  %199 = call double @llvm.fmuladd.f64(double %184, double %198, double %185)
  %200 = load <2 x double>, ptr %70, align 8, !tbaa !68
  %201 = extractelement <2 x double> %200, i64 0
  %202 = fmul double %201, %186
  %203 = call double @llvm.fmuladd.f64(double %202, double %187, double %199)
  %204 = call double @llvm.fmuladd.f64(double %192, double %191, double %203)
  %205 = call double @llvm.fmuladd.f64(double %201, double %193, double %204)
  %206 = fadd double %205, -1.000000e+00
  store double %206, ptr %5, align 8, !tbaa !75
  %207 = extractelement <2 x double> %200, i64 1
  %208 = fmul double %207, %186
  %209 = fmul double %208, %187
  %210 = extractelement <2 x double> %197, i64 1
  %211 = call double @llvm.fmuladd.f64(double %196, double %210, double %209)
  %212 = call double @llvm.fmuladd.f64(double %207, double %101, double %211)
  %213 = load double, ptr %76, align 8, !tbaa !81
  %214 = fsub double %189, %190
  %215 = fneg double %213
  %216 = call double @llvm.fmuladd.f64(double %215, double %214, double %212)
  %217 = insertelement <2 x double> poison, double %206, i64 0
  %218 = insertelement <2 x double> %217, double %216, i64 1
  br label %447

219:                                              ; preds = %92
  %220 = load i64, ptr %6, align 16, !tbaa !76
  %221 = icmp eq i64 %220, 0
  %222 = select i1 %221, double -1.000000e+00, double 1.000000e+00
  %223 = sitofp i64 %94 to double
  %224 = uitofp i64 %107 to double
  %225 = fadd double %101, %102
  %226 = call double @llvm.fmuladd.f64(double %78, double %224, double %225)
  %227 = load i64, ptr %75, align 8, !tbaa !80
  %228 = icmp eq i64 %227, 0
  %229 = select i1 %228, double -1.000000e+00, double 1.000000e+00
  %230 = uitofp i64 %227 to double
  %231 = fmul double %230, 5.000000e-01
  %232 = load <2 x double>, ptr %70, align 8, !tbaa !68
  %233 = extractelement <2 x double> %232, i64 0
  %234 = fmul double %233, %223
  %235 = fmul double %234, %224
  %236 = load <2 x double>, ptr %63, align 8, !tbaa !68
  %237 = extractelement <2 x double> %236, i64 1
  %238 = call double @llvm.fmuladd.f64(double %229, double %237, double %231)
  %239 = extractelement <2 x double> %232, i64 1
  %240 = fmul double %239, %223
  %241 = insertelement <2 x double> poison, double %222, i64 0
  %242 = insertelement <2 x double> %241, double %240, i64 1
  %243 = insertelement <2 x double> %236, double %224, i64 1
  %244 = insertelement <2 x double> poison, double %235, i64 0
  %245 = insertelement <2 x double> %244, double %238, i64 1
  %246 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %242, <2 x double> %243, <2 x double> %245)
  %247 = insertelement <2 x double> poison, double %226, i64 0
  %248 = shufflevector <2 x double> %247, <2 x double> poison, <2 x i32> zeroinitializer
  %249 = fmul <2 x double> %248, %232
  %250 = fmul <2 x double> %249, <double 5.000000e-01, double 5.000000e-01>
  %251 = fadd <2 x double> %250, %246
  %252 = extractelement <2 x double> %251, i64 0
  store double %252, ptr %5, align 8, !tbaa !75
  br label %447

253:                                              ; preds = %92, %92
  %254 = sitofp i64 %94 to double
  %255 = uitofp i64 %107 to double
  %256 = load double, ptr %71, align 8, !tbaa !78
  %257 = load double, ptr %72, align 8, !tbaa !79
  %258 = fadd double %256, %257
  %259 = fadd double %101, %102
  %260 = mul i64 %79, %107
  %261 = uitofp i64 %260 to double
  %262 = fsub double %259, %261
  %263 = call double @llvm.fmuladd.f64(double %78, double %255, double %259)
  %264 = load <2 x i64>, ptr %6, align 16, !tbaa !69
  %265 = icmp eq <2 x i64> %264, zeroinitializer
  %266 = select <2 x i1> %265, <2 x double> <double -1.000000e+00, double -1.000000e+00>, <2 x double> <double 1.000000e+00, double 1.000000e+00>
  %267 = load <2 x double>, ptr %63, align 8, !tbaa !68
  %268 = uitofp <2 x i64> %264 to <2 x double>
  %269 = fmul <2 x double> %268, <double 5.000000e-01, double 5.000000e-01>
  %270 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %266, <2 x double> %267, <2 x double> %269)
  %271 = load <2 x double>, ptr %70, align 8, !tbaa !68
  %272 = insertelement <2 x double> poison, double %254, i64 0
  %273 = shufflevector <2 x double> %272, <2 x double> poison, <2 x i32> zeroinitializer
  %274 = fmul <2 x double> %271, %273
  %275 = insertelement <2 x double> poison, double %255, i64 0
  %276 = shufflevector <2 x double> %275, <2 x double> poison, <2 x i32> zeroinitializer
  %277 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %274, <2 x double> %276, <2 x double> %270)
  %278 = load <2 x double>, ptr %62, align 8, !tbaa !68
  %279 = insertelement <2 x double> poison, double %258, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = fmul <2 x double> %278, %280
  %282 = fmul <2 x double> %281, <double 5.000000e-01, double 5.000000e-01>
  %283 = fsub <2 x double> %277, %282
  %284 = insertelement <2 x double> poison, double %262, i64 0
  %285 = insertelement <2 x double> %284, double %263, i64 1
  %286 = fmul <2 x double> %285, %271
  %287 = fmul <2 x double> %286, <double 5.000000e-01, double 5.000000e-01>
  %288 = fadd <2 x double> %287, %283
  %289 = extractelement <2 x double> %288, i64 0
  store double %289, ptr %5, align 8, !tbaa !75
  br label %447

290:                                              ; preds = %92
  %291 = load i64, ptr %6, align 16, !tbaa !76
  %292 = icmp eq i64 %291, 0
  %293 = select i1 %292, double 1.000000e+00, double -1.000000e+00
  %294 = uitofp i64 %291 to double
  %295 = sitofp i64 %94 to double
  %296 = uitofp i64 %107 to double
  %297 = load double, ptr %62, align 8, !tbaa !77
  %298 = load double, ptr %71, align 8, !tbaa !78
  %299 = load double, ptr %72, align 8, !tbaa !79
  %300 = fadd double %298, %299
  %301 = fneg double %297
  %302 = fadd double %101, %102
  %303 = call double @llvm.fmuladd.f64(double %78, double %296, double %302)
  %304 = load i64, ptr %75, align 8, !tbaa !80
  %305 = icmp eq i64 %304, 0
  %306 = select i1 %305, double -1.000000e+00, double 1.000000e+00
  %307 = uitofp i64 %304 to double
  %308 = fmul double %307, 5.000000e-01
  %309 = load double, ptr %76, align 8, !tbaa !81
  %310 = fneg double %309
  %311 = load <2 x double>, ptr %63, align 8, !tbaa !68
  %312 = extractelement <2 x double> %311, i64 0
  %313 = call double @llvm.fmuladd.f64(double %293, double %312, double %294)
  %314 = load <2 x double>, ptr %70, align 8, !tbaa !68
  %315 = extractelement <2 x double> %314, i64 0
  %316 = fmul double %315, %295
  %317 = call double @llvm.fmuladd.f64(double %316, double %296, double %313)
  %318 = call double @llvm.fmuladd.f64(double %301, double %300, double %317)
  %319 = fmul double %303, %315
  %320 = extractelement <2 x double> %311, i64 1
  %321 = call double @llvm.fmuladd.f64(double %306, double %320, double %308)
  %322 = extractelement <2 x double> %314, i64 1
  %323 = fmul double %322, %295
  %324 = call double @llvm.fmuladd.f64(double %323, double %296, double %321)
  %325 = call double @llvm.fmuladd.f64(double %310, double %300, double %324)
  %326 = insertelement <2 x double> poison, double %319, i64 0
  %327 = insertelement <2 x double> %326, double %303, i64 1
  %328 = insertelement <2 x double> %314, double 5.000000e-01, i64 0
  %329 = fmul <2 x double> %327, %328
  %330 = insertelement <2 x double> <double poison, double 5.000000e-01>, double %318, i64 0
  %331 = fadd <2 x double> %329, %330
  %332 = fmul <2 x double> %329, %330
  %333 = shufflevector <2 x double> %331, <2 x double> %332, <2 x i32> <i32 0, i32 3>
  %334 = insertelement <2 x double> <double -1.000000e+00, double poison>, double %325, i64 1
  %335 = fadd <2 x double> %333, %334
  %336 = extractelement <2 x double> %335, i64 0
  store double %336, ptr %5, align 8, !tbaa !75
  br label %447

337:                                              ; preds = %92
  %338 = load i64, ptr %6, align 16, !tbaa !76
  %339 = icmp eq i64 %338, 0
  %340 = select i1 %339, double -1.000000e+00, double 1.000000e+00
  %341 = sitofp i64 %94 to double
  %342 = uitofp i64 %107 to double
  %343 = load i64, ptr %75, align 8, !tbaa !80
  %344 = icmp eq i64 %343, 0
  %345 = select i1 %344, double 1.000000e+00, double -1.000000e+00
  %346 = uitofp i64 %343 to double
  %347 = load <2 x double>, ptr %70, align 8, !tbaa !68
  %348 = extractelement <2 x double> %347, i64 0
  %349 = fmul double %348, %341
  %350 = fmul double %349, %342
  %351 = load <2 x double>, ptr %63, align 8, !tbaa !68
  %352 = extractelement <2 x double> %351, i64 0
  %353 = call double @llvm.fmuladd.f64(double %340, double %352, double %350)
  %354 = fneg double %348
  %355 = fmul double %74, %354
  %356 = call double @llvm.fmuladd.f64(double %355, double %342, double %353)
  store double %356, ptr %5, align 8, !tbaa !75
  %357 = extractelement <2 x double> %351, i64 1
  %358 = call double @llvm.fmuladd.f64(double %345, double %357, double %346)
  %359 = extractelement <2 x double> %347, i64 1
  %360 = fmul double %359, %341
  %361 = call double @llvm.fmuladd.f64(double %360, double %342, double %358)
  %362 = fneg double %359
  %363 = fmul double %74, %362
  %364 = call double @llvm.fmuladd.f64(double %363, double %342, double %361)
  %365 = fadd double %102, %364
  %366 = insertelement <2 x double> poison, double %356, i64 0
  %367 = insertelement <2 x double> %366, double %365, i64 1
  br label %447

368:                                              ; preds = %92
  %369 = load i64, ptr %6, align 16, !tbaa !76
  %370 = icmp eq i64 %369, 0
  %371 = select i1 %370, double -1.000000e+00, double 1.000000e+00
  %372 = uitofp i64 %369 to double
  %373 = fmul double %372, 5.000000e-01
  %374 = sitofp i64 %94 to double
  %375 = uitofp i64 %107 to double
  %376 = load double, ptr %62, align 8, !tbaa !77
  %377 = load double, ptr %71, align 8, !tbaa !78
  %378 = load double, ptr %72, align 8, !tbaa !79
  %379 = fadd double %377, %378
  %380 = load i64, ptr %75, align 8, !tbaa !80
  %381 = icmp eq i64 %380, 0
  %382 = select i1 %381, double 1.000000e+00, double -1.000000e+00
  %383 = uitofp i64 %380 to double
  %384 = load <2 x double>, ptr %63, align 8, !tbaa !68
  %385 = extractelement <2 x double> %384, i64 0
  %386 = call double @llvm.fmuladd.f64(double %371, double %385, double %373)
  %387 = load <2 x double>, ptr %70, align 8, !tbaa !68
  %388 = extractelement <2 x double> %387, i64 0
  %389 = fmul double %388, %374
  %390 = call double @llvm.fmuladd.f64(double %389, double %375, double %386)
  %391 = fmul double %74, %388
  %392 = insertelement <2 x double> poison, double %376, i64 0
  %393 = insertelement <2 x double> %392, double %375, i64 1
  %394 = insertelement <2 x double> poison, double %379, i64 0
  %395 = insertelement <2 x double> %394, double %391, i64 1
  %396 = fmul <2 x double> %393, %395
  %397 = fmul <2 x double> %396, <double 5.000000e-01, double 5.000000e-01>
  %398 = extractelement <2 x double> %397, i64 0
  %399 = fsub double %390, %398
  %400 = extractelement <2 x double> %397, i64 1
  %401 = fsub double %399, %400
  store double %401, ptr %5, align 8, !tbaa !75
  %402 = extractelement <2 x double> %384, i64 1
  %403 = call double @llvm.fmuladd.f64(double %382, double %402, double %383)
  %404 = extractelement <2 x double> %387, i64 1
  %405 = fmul double %404, %374
  %406 = call double @llvm.fmuladd.f64(double %405, double %375, double %403)
  %407 = load double, ptr %76, align 8, !tbaa !81
  %408 = fmul double %379, %407
  %409 = fmul double %408, 5.000000e-01
  %410 = fsub double %406, %409
  %411 = fneg double %404
  %412 = fmul double %74, %411
  %413 = call double @llvm.fmuladd.f64(double %412, double %375, double %410)
  %414 = fadd double %102, %413
  %415 = insertelement <2 x double> poison, double %401, i64 0
  %416 = insertelement <2 x double> %415, double %414, i64 1
  br label %447

417:                                              ; preds = %92
  %418 = sitofp i64 %94 to double
  %419 = uitofp i64 %107 to double
  %420 = load double, ptr %71, align 8, !tbaa !78
  %421 = load double, ptr %72, align 8, !tbaa !79
  %422 = fadd double %420, %421
  %423 = load <2 x i64>, ptr %6, align 16, !tbaa !69
  %424 = icmp eq <2 x i64> %423, zeroinitializer
  %425 = select <2 x i1> %424, <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double> <double -1.000000e+00, double -1.000000e+00>
  %426 = load <2 x double>, ptr %63, align 8, !tbaa !68
  %427 = uitofp <2 x i64> %423 to <2 x double>
  %428 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %425, <2 x double> %426, <2 x double> %427)
  %429 = load <2 x double>, ptr %70, align 8, !tbaa !68
  %430 = insertelement <2 x double> poison, double %418, i64 0
  %431 = shufflevector <2 x double> %430, <2 x double> poison, <2 x i32> zeroinitializer
  %432 = fmul <2 x double> %429, %431
  %433 = insertelement <2 x double> poison, double %419, i64 0
  %434 = shufflevector <2 x double> %433, <2 x double> poison, <2 x i32> zeroinitializer
  %435 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %432, <2 x double> %434, <2 x double> %428)
  %436 = load <2 x double>, ptr %62, align 8, !tbaa !68
  %437 = fneg <2 x double> %436
  %438 = insertelement <2 x double> poison, double %422, i64 0
  %439 = shufflevector <2 x double> %438, <2 x double> poison, <2 x i32> zeroinitializer
  %440 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %437, <2 x double> %439, <2 x double> %435)
  %441 = fneg <2 x double> %429
  %442 = fmul <2 x double> %91, %441
  %443 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %442, <2 x double> %434, <2 x double> %440)
  %444 = insertelement <2 x double> <double -1.000000e+00, double poison>, double %102, i64 1
  %445 = fadd <2 x double> %444, %443
  %446 = extractelement <2 x double> %445, i64 0
  store double %446, ptr %5, align 8, !tbaa !75
  br label %447

447:                                              ; preds = %417, %368, %337, %290, %253, %219, %181, %141, %121, %109
  %448 = phi <2 x double> [ %445, %417 ], [ %416, %368 ], [ %367, %337 ], [ %335, %290 ], [ %288, %253 ], [ %251, %219 ], [ %218, %181 ], [ %180, %141 ], [ %139, %121 ], [ %119, %109 ]
  %449 = phi <2 x double> [ %429, %417 ], [ %387, %368 ], [ %347, %337 ], [ %314, %290 ], [ %271, %253 ], [ %232, %219 ], [ %200, %181 ], [ %162, %141 ], [ %129, %121 ], [ %113, %109 ]
  %450 = phi <2 x double> [ %426, %417 ], [ %384, %368 ], [ %351, %337 ], [ %311, %290 ], [ %267, %253 ], [ %236, %219 ], [ %197, %181 ], [ %159, %141 ], [ %128, %121 ], [ %112, %109 ]
  %451 = extractelement <2 x double> %448, i64 1
  store double %451, ptr %77, align 8, !tbaa !82
  %452 = load i32, ptr %80, align 8, !tbaa !83
  switch i32 %452, label %503 [
    i32 1, label %453
    i32 2, label %463
    i32 3, label %482
  ]

453:                                              ; preds = %447
  %454 = sitofp i64 %94 to double
  %455 = uitofp i64 %107 to double
  %456 = insertelement <2 x double> poison, double %454, i64 0
  %457 = shufflevector <2 x double> %456, <2 x double> poison, <2 x i32> zeroinitializer
  %458 = fmul <2 x double> %449, %457
  %459 = insertelement <2 x double> poison, double %455, i64 0
  %460 = shufflevector <2 x double> %459, <2 x double> poison, <2 x i32> zeroinitializer
  %461 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %458, <2 x double> %460, <2 x double> %450)
  %462 = extractelement <2 x double> %461, i64 0
  store double %462, ptr %5, align 8, !tbaa !75
  br label %500

463:                                              ; preds = %447
  %464 = sitofp i64 %94 to double
  %465 = uitofp i64 %107 to double
  %466 = load double, ptr %71, align 8, !tbaa !78
  %467 = load double, ptr %72, align 8, !tbaa !79
  %468 = fadd double %466, %467
  %469 = insertelement <2 x double> poison, double %464, i64 0
  %470 = shufflevector <2 x double> %469, <2 x double> poison, <2 x i32> zeroinitializer
  %471 = fmul <2 x double> %449, %470
  %472 = insertelement <2 x double> poison, double %465, i64 0
  %473 = shufflevector <2 x double> %472, <2 x double> poison, <2 x i32> zeroinitializer
  %474 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %471, <2 x double> %473, <2 x double> %450)
  %475 = load <2 x double>, ptr %62, align 8, !tbaa !68
  %476 = insertelement <2 x double> poison, double %468, i64 0
  %477 = shufflevector <2 x double> %476, <2 x double> poison, <2 x i32> zeroinitializer
  %478 = fmul <2 x double> %475, %477
  %479 = fmul <2 x double> %478, <double 5.000000e-01, double 5.000000e-01>
  %480 = fsub <2 x double> %474, %479
  %481 = extractelement <2 x double> %480, i64 0
  store double %481, ptr %5, align 8, !tbaa !75
  br label %500

482:                                              ; preds = %447
  %483 = sitofp i64 %94 to double
  %484 = uitofp i64 %107 to double
  %485 = load double, ptr %71, align 8, !tbaa !78
  %486 = load double, ptr %72, align 8, !tbaa !79
  %487 = fadd double %485, %486
  %488 = insertelement <2 x double> poison, double %483, i64 0
  %489 = shufflevector <2 x double> %488, <2 x double> poison, <2 x i32> zeroinitializer
  %490 = fmul <2 x double> %449, %489
  %491 = insertelement <2 x double> poison, double %484, i64 0
  %492 = shufflevector <2 x double> %491, <2 x double> poison, <2 x i32> zeroinitializer
  %493 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %490, <2 x double> %492, <2 x double> %450)
  %494 = load <2 x double>, ptr %62, align 8, !tbaa !68
  %495 = fneg <2 x double> %494
  %496 = insertelement <2 x double> poison, double %487, i64 0
  %497 = shufflevector <2 x double> %496, <2 x double> poison, <2 x i32> zeroinitializer
  %498 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %495, <2 x double> %497, <2 x double> %493)
  %499 = extractelement <2 x double> %498, i64 0
  store double %499, ptr %5, align 8, !tbaa !75
  br label %500

500:                                              ; preds = %453, %463, %482
  %501 = phi <2 x double> [ %498, %482 ], [ %480, %463 ], [ %461, %453 ]
  %502 = extractelement <2 x double> %501, i64 1
  store double %502, ptr %77, align 8, !tbaa !82
  br label %503

503:                                              ; preds = %500, %447
  %504 = phi <2 x double> [ %448, %447 ], [ %501, %500 ]
  %505 = load i16, ptr %81, align 2, !tbaa !84
  %506 = icmp eq i16 %505, -1
  br i1 %506, label %524, label %507

507:                                              ; preds = %503
  %508 = call ptr @CloneDrawInfo(ptr noundef null, ptr noundef null) #14
  %509 = getelementptr inbounds %struct._DrawInfo, ptr %508, i64 0, i32 5
  %510 = load i64, ptr %82, align 4
  store i64 %510, ptr %509, align 4
  %511 = getelementptr inbounds %struct._DrawInfo, ptr %508, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %511, ptr noundef nonnull align 8 dereferenceable(48) %83, i64 48, i1 false), !tbaa.struct !85
  %512 = load <2 x double>, ptr %66, align 8
  %513 = getelementptr inbounds %struct._DrawInfo, ptr %508, i64 0, i32 3, i32 4
  %514 = load <2 x double>, ptr %84, align 8, !tbaa !68
  %515 = fneg <2 x double> %514
  %516 = shufflevector <2 x double> %512, <2 x double> poison, <2 x i32> zeroinitializer
  %517 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %515, <2 x double> %516, <2 x double> %504)
  store <2 x double> %517, ptr %513, align 8, !tbaa !68
  %518 = load double, ptr %86, align 8, !tbaa !86
  %519 = uitofp i64 %107 to double
  %520 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.3, double noundef %518, double noundef %519) #14
  %521 = call ptr @CloneString(ptr noundef %508, ptr noundef nonnull %3) #14
  %522 = call i32 @DrawImage(ptr noundef nonnull %0, ptr noundef %508) #14
  %523 = call ptr @DestroyDrawInfo(ptr noundef %508) #14
  br label %524

524:                                              ; preds = %507, %503
  store <2 x double> %504, ptr %63, align 8, !tbaa !68
  %525 = load double, ptr %87, align 8, !tbaa !87
  %526 = load double, ptr %71, align 8, !tbaa !78
  %527 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.4, double noundef %525, double noundef %526) #14
  %528 = load i32, ptr %88, align 8, !tbaa !88
  switch i32 %528, label %545 [
    i32 3, label %529
    i32 2, label %535
  ]

529:                                              ; preds = %524
  %530 = load double, ptr %66, align 8, !tbaa !70
  %531 = load double, ptr %67, align 8, !tbaa !72
  %532 = fadd double %530, %531
  %533 = load double, ptr %89, align 8, !tbaa !89
  %534 = fsub double %532, %533
  br label %537

535:                                              ; preds = %524
  %536 = load double, ptr %89, align 8, !tbaa !89
  br label %537

537:                                              ; preds = %529, %535
  %538 = phi double [ %536, %535 ], [ %534, %529 ]
  %539 = load double, ptr %85, align 8, !tbaa !90
  %540 = load double, ptr %64, align 8, !tbaa !91
  %541 = fneg double %539
  %542 = call double @llvm.fmuladd.f64(double %541, double %538, double %540)
  store double %542, ptr %64, align 8, !tbaa !91
  %543 = call ptr @CloneString(ptr noundef nonnull %37, ptr noundef nonnull %3) #14
  %544 = call i32 @DrawImage(ptr noundef nonnull %0, ptr noundef nonnull %37) #14
  br label %545

545:                                              ; preds = %537, %524
  %546 = call fastcc i32 @RenderType(ptr noundef nonnull %0, ptr noundef nonnull %36, ptr noundef nonnull %5, ptr noundef nonnull %7) #16, !range !67
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %569, label %548

548:                                              ; preds = %545
  %549 = load i32, ptr %88, align 8, !tbaa !88
  %550 = icmp eq i32 %549, 4
  br i1 %550, label %551, label %564

551:                                              ; preds = %548
  %552 = load double, ptr %85, align 8, !tbaa !90
  %553 = uitofp i64 %107 to double
  %554 = load double, ptr %89, align 8, !tbaa !89
  %555 = fadd double %554, %553
  %556 = load double, ptr %67, align 8, !tbaa !72
  %557 = fadd double %555, %556
  %558 = fmul double %552, %557
  %559 = fmul double %558, 5.000000e-01
  %560 = load double, ptr %64, align 8, !tbaa !91
  %561 = fsub double %560, %559
  store double %561, ptr %64, align 8, !tbaa !91
  %562 = call ptr @CloneString(ptr noundef nonnull %37, ptr noundef nonnull %3) #14
  %563 = call i32 @DrawImage(ptr noundef nonnull %0, ptr noundef nonnull %37) #14
  br label %564

564:                                              ; preds = %548, %551
  %565 = add nuw nsw i64 %94, 1
  %566 = getelementptr inbounds ptr, ptr %22, i64 %565
  %567 = load ptr, ptr %566, align 8, !tbaa !34
  %568 = icmp eq ptr %567, null
  br i1 %568, label %569, label %92, !llvm.loop !92

569:                                              ; preds = %564, %545, %56
  %570 = phi i32 [ 1, %56 ], [ 0, %545 ], [ 1, %564 ]
  %571 = call ptr @DestroyDrawInfo(ptr noundef nonnull %37) #14
  %572 = call ptr @DestroyDrawInfo(ptr noundef %36) #14
  %573 = load ptr, ptr %22, align 8, !tbaa !34
  %574 = icmp eq ptr %573, null
  br i1 %574, label %584, label %575

575:                                              ; preds = %569, %575
  %576 = phi ptr [ %582, %575 ], [ %573, %569 ]
  %577 = phi ptr [ %581, %575 ], [ %22, %569 ]
  %578 = phi i64 [ %580, %575 ], [ 0, %569 ]
  %579 = call ptr @DestroyString(ptr noundef nonnull %576) #14
  store ptr %579, ptr %577, align 8, !tbaa !34
  %580 = add nuw nsw i64 %578, 1
  %581 = getelementptr inbounds ptr, ptr %22, i64 %580
  %582 = load ptr, ptr %581, align 8, !tbaa !34
  %583 = icmp eq ptr %582, null
  br i1 %583, label %584, label %575, !llvm.loop !93

584:                                              ; preds = %575, %569
  %585 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %22) #14
  br label %586

586:                                              ; preds = %46, %21, %18, %14, %584
  %587 = phi i32 [ %570, %584 ], [ 0, %14 ], [ 1, %18 ], [ 0, %21 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  ret i32 %587
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @StringToList(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CloneDrawInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @SetGeometryInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ParsePageGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #4 !PGOFuncName !94 {
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
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetTypeMetrics(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._PointInfo, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 786, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #14
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef %1) #14
  %13 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 41
  store i32 0, ptr %13, align 8, !tbaa !95
  %14 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 48
  store i32 0, ptr %14, align 8, !tbaa !96
  %15 = tail call ptr @ResetMagickMemory(ptr noundef %2, i32 noundef 0, i64 noundef 120) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %16 = call fastcc i32 @RenderType(ptr noundef nonnull %0, ptr noundef %12, ptr noundef nonnull %4, ptr noundef %2) #16, !range !67
  %17 = load i32, ptr %5, align 8, !tbaa !38
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct._DrawInfo, ptr %12, i64 0, i32 21
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 3
  %23 = load double, ptr %22, align 8, !tbaa !78
  %24 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 4
  %25 = load double, ptr %24, align 8, !tbaa !97
  %26 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 1
  %27 = load double, ptr %26, align 8, !tbaa !70
  %28 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 2
  %29 = load double, ptr %28, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 5
  %31 = load double, ptr %30, align 8, !tbaa !98
  %32 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 8
  %33 = load double, ptr %32, align 8, !tbaa !79
  %34 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 8, i32 1
  %35 = load double, ptr %34, align 8, !tbaa !99
  %36 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 8, i32 2
  %37 = load double, ptr %36, align 8, !tbaa !100
  %38 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 8, i32 3
  %39 = load double, ptr %38, align 8, !tbaa !101
  %40 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 9
  %41 = load double, ptr %40, align 8, !tbaa !86
  %42 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 9, i32 1
  %43 = load double, ptr %42, align 8, !tbaa !102
  %44 = load double, ptr %2, align 8, !tbaa !103
  %45 = getelementptr inbounds %struct._PointInfo, ptr %2, i64 0, i32 1
  %46 = load double, ptr %45, align 8, !tbaa !104
  %47 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 6
  %48 = load double, ptr %47, align 8, !tbaa !89
  %49 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 7
  %50 = load double, ptr %49, align 8, !tbaa !87
  %51 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 798, ptr noundef nonnull @.str.6, ptr noundef %21, double noundef %23, double noundef %25, double noundef %27, double noundef %29, double noundef %31, double noundef %33, double noundef %35, double noundef %37, double noundef %39, double noundef %41, double noundef %43, double noundef %44, double noundef %46, double noundef %48, double noundef %50) #14
  br label %52

52:                                               ; preds = %19, %11
  %53 = tail call ptr @DestroyDrawInfo(ptr noundef nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @DrawImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyDrawInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @RenderType(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !105 {
  %5 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = load i8, ptr %6, align 1, !tbaa !62
  switch i8 %9, label %12 [
    i8 64, label %10
    i8 45, label %102
  ]

10:                                               ; preds = %8
  %11 = tail call fastcc i32 @RenderFreetype(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #16
  br label %102

12:                                               ; preds = %8
  %13 = tail call i32 @IsPathAccessible(ptr noundef nonnull %6) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @RenderFreetype(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #16
  br label %102

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = tail call ptr @GetTypeInfo(ptr noundef %18, ptr noundef nonnull %19) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %81

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 8, !tbaa !106
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 872, i32 noundef 305, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %23) #14
  br label %25

25:                                               ; preds = %22, %4
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 25
  %27 = load ptr, ptr %26, align 8, !tbaa !107
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 26
  %31 = load i32, ptr %30, align 8, !tbaa !108
  %32 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 27
  %33 = load i32, ptr %32, align 4, !tbaa !109
  %34 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 28
  %35 = load i64, ptr %34, align 8, !tbaa !110
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %37 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull %27, i32 noundef %31, i32 noundef %33, i64 noundef %35, ptr noundef nonnull %36) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %81

39:                                               ; preds = %29
  %40 = load ptr, ptr %26, align 8, !tbaa !107
  %41 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %36, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 881, i32 noundef 305, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %40) #14
  br label %42

42:                                               ; preds = %25, %39
  %43 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 26
  %44 = load i32, ptr %43, align 8, !tbaa !108
  %45 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 27
  %46 = load i32, ptr %45, align 4, !tbaa !109
  %47 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 28
  %48 = load i64, ptr %47, align 8, !tbaa !110
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %50 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.9, i32 noundef %44, i32 noundef %46, i64 noundef %48, ptr noundef nonnull %49) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %81

52:                                               ; preds = %42
  %53 = load i32, ptr %43, align 8, !tbaa !108
  %54 = load i32, ptr %45, align 4, !tbaa !109
  %55 = load i64, ptr %47, align 8, !tbaa !110
  %56 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.10, i32 noundef %53, i32 noundef %54, i64 noundef %55, ptr noundef nonnull %49) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %81

58:                                               ; preds = %52
  %59 = load i32, ptr %43, align 8, !tbaa !108
  %60 = load i32, ptr %45, align 4, !tbaa !109
  %61 = load i64, ptr %47, align 8, !tbaa !110
  %62 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.11, i32 noundef %59, i32 noundef %60, i64 noundef %61, ptr noundef nonnull %49) #14
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load i32, ptr %43, align 8, !tbaa !108
  %66 = load i32, ptr %45, align 4, !tbaa !109
  %67 = load i64, ptr %47, align 8, !tbaa !110
  %68 = tail call ptr @GetTypeInfoByFamily(ptr noundef nonnull @.str.12, i32 noundef %65, i32 noundef %66, i64 noundef %67, ptr noundef nonnull %49) #14
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i32, ptr %43, align 8, !tbaa !108
  %72 = load i32, ptr %45, align 4, !tbaa !109
  %73 = load i64, ptr %47, align 8, !tbaa !110
  %74 = tail call ptr @GetTypeInfoByFamily(ptr noundef null, i32 noundef %71, i32 noundef %72, i64 noundef %73, ptr noundef nonnull %49) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str.13, ptr noundef nonnull %49) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = tail call fastcc i32 @RenderFreetype(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #16
  br label %102

81:                                               ; preds = %17, %29, %42, %52, %58, %64, %70, %76
  %82 = phi ptr [ %77, %76 ], [ %74, %70 ], [ %68, %64 ], [ %62, %58 ], [ %56, %52 ], [ %50, %42 ], [ %20, %17 ], [ %37, %29 ]
  %83 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef nonnull %1) #14
  %84 = load i64, ptr %82, align 8, !tbaa !111
  %85 = getelementptr inbounds %struct._DrawInfo, ptr %83, i64 0, i32 22
  store i64 %84, ptr %85, align 8, !tbaa !113
  %86 = getelementptr inbounds %struct._TypeInfo, ptr %82, i64 0, i32 11
  %87 = load ptr, ptr %86, align 8, !tbaa !114
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct._DrawInfo, ptr %83, i64 0, i32 24
  %91 = tail call ptr @CloneString(ptr noundef nonnull %90, ptr noundef nonnull %87) #14
  br label %92

92:                                               ; preds = %89, %81
  %93 = getelementptr inbounds %struct._TypeInfo, ptr %82, i64 0, i32 12
  %94 = load ptr, ptr %93, align 8, !tbaa !115
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct._DrawInfo, ptr %83, i64 0, i32 23
  %98 = tail call ptr @CloneString(ptr noundef nonnull %97, ptr noundef nonnull %94) #14
  br label %99

99:                                               ; preds = %96, %92
  %100 = tail call fastcc i32 @RenderFreetype(ptr noundef %0, ptr noundef nonnull %83, ptr noundef %2, ptr noundef %3) #16
  %101 = tail call ptr @DestroyDrawInfo(ptr noundef nonnull %83) #14
  br label %102

102:                                              ; preds = %8, %99, %79, %15, %10
  %103 = phi i32 [ %11, %10 ], [ %16, %15 ], [ %80, %79 ], [ %100, %99 ], [ 0, %8 ]
  ret i32 %103
}

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @FormatMagickCaption(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call ptr @AcquireString(ptr noundef %7) #14
  %9 = load ptr, ptr %6, align 8, !tbaa !54
  %10 = load ptr, ptr %4, align 8, !tbaa !34
  %11 = tail call fastcc i32 @GetUTFCode(ptr noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %101, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 3
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %17 = icmp eq i32 %2, 0
  br label %18

18:                                               ; preds = %13, %92
  %19 = phi ptr [ %10, %13 ], [ %98, %92 ]
  %20 = phi ptr [ null, %13 ], [ %94, %92 ]
  %21 = phi ptr [ %9, %13 ], [ %93, %92 ]
  %22 = tail call fastcc i32 @GetUTFCode(ptr noundef %19) #16
  %23 = tail call fastcc i32 @IsUTFSpace(i32 noundef %22) #16, !range !67
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, ptr %20, ptr %19
  %26 = tail call fastcc i32 @GetUTFCode(ptr noundef %19) #16
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load ptr, ptr %6, align 8, !tbaa !54
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ %29, %28 ], [ %21, %18 ]
  %32 = tail call fastcc i32 @GetUTFOctets(ptr noundef %19) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30, %34
  %35 = phi i64 [ %40, %34 ], [ 0, %30 ]
  %36 = phi ptr [ %39, %34 ], [ %31, %30 ]
  %37 = getelementptr inbounds i8, ptr %19, i64 %35
  %38 = load i8, ptr %37, align 1, !tbaa !62
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 %38, ptr %36, align 1, !tbaa !62
  %40 = add nuw nsw i64 %35, 1
  %41 = tail call fastcc i32 @GetUTFOctets(ptr noundef %19) #16
  %42 = zext i32 %41 to i64
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %34, label %44, !llvm.loop !116

44:                                               ; preds = %34, %30
  %45 = phi ptr [ %31, %30 ], [ %39, %34 ]
  store i8 0, ptr %45, align 1, !tbaa !62
  %46 = tail call i32 @GetTypeMetrics(ptr noundef %0, ptr noundef %1, ptr noundef %3) #16, !range !67
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %101, label %48

48:                                               ; preds = %44
  %49 = load double, ptr %14, align 8, !tbaa !78
  %50 = load double, ptr %15, align 8, !tbaa !117
  %51 = fadd double %49, %50
  %52 = fadd double %51, 5.000000e-01
  %53 = tail call double @llvm.floor.f64(double %52)
  %54 = fptoui double %53 to i64
  %55 = load i64, ptr %16, align 8, !tbaa !118
  %56 = icmp ult i64 %55, %54
  br i1 %56, label %57, label %92

57:                                               ; preds = %48
  %58 = load ptr, ptr %6, align 8, !tbaa !54
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %58) #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %92, label %61

61:                                               ; preds = %57
  %62 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %58) #14
  %63 = icmp eq ptr %25, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = tail call fastcc i32 @GetUTFOctets(ptr noundef nonnull %25) #16
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  store i8 10, ptr %25, align 1, !tbaa !62
  br label %89

68:                                               ; preds = %61
  br i1 %17, label %89, label %69

69:                                               ; preds = %64, %68
  %70 = load ptr, ptr %4, align 8, !tbaa !34
  %71 = tail call ptr @AcquireString(ptr noundef %70) #14
  %72 = load ptr, ptr %4, align 8, !tbaa !34
  %73 = ptrtoint ptr %19 to i64
  %74 = ptrtoint ptr %72 to i64
  %75 = sub i64 %73, %74
  %76 = add nsw i64 %75, 1
  %77 = tail call i64 @CopyMagickString(ptr noundef %71, ptr noundef %72, i64 noundef %76) #14
  %78 = load ptr, ptr %4, align 8, !tbaa !34
  %79 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %78) #17
  %80 = add i64 %79, 1
  %81 = tail call i64 @ConcatenateMagickString(ptr noundef %71, ptr noundef nonnull @.str.5, i64 noundef %80) #14
  %82 = load ptr, ptr %4, align 8, !tbaa !34
  %83 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %82) #17
  %84 = add i64 %83, 2
  %85 = tail call i64 @ConcatenateMagickString(ptr noundef %71, ptr noundef %19, i64 noundef %84) #14
  %86 = load ptr, ptr %4, align 8, !tbaa !34
  %87 = tail call ptr @DestroyString(ptr noundef %86) #14
  store ptr %71, ptr %4, align 8, !tbaa !34
  %88 = getelementptr inbounds i8, ptr %71, i64 %75
  br label %89

89:                                               ; preds = %69, %68, %67
  %90 = phi ptr [ %25, %67 ], [ %88, %69 ], [ %19, %68 ]
  %91 = load ptr, ptr %6, align 8, !tbaa !54
  br label %92

92:                                               ; preds = %48, %57, %89
  %93 = phi ptr [ %45, %48 ], [ %45, %57 ], [ %91, %89 ]
  %94 = phi ptr [ %25, %48 ], [ %25, %57 ], [ null, %89 ]
  %95 = phi ptr [ %19, %48 ], [ %19, %57 ], [ %90, %89 ]
  %96 = tail call fastcc i32 @GetUTFOctets(ptr noundef %95) #16
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %95, i64 %97
  %99 = tail call fastcc i32 @GetUTFCode(ptr noundef %98) #16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %18, !llvm.loop !119

101:                                              ; preds = %92, %44, %5
  %102 = tail call ptr @DestroyString(ptr noundef %8) #14
  %103 = load ptr, ptr %4, align 8, !tbaa !34
  %104 = tail call fastcc i32 @GetUTFCode(ptr noundef %103) #16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %101, %106
  %107 = phi i64 [ %112, %106 ], [ 0, %101 ]
  %108 = phi ptr [ %115, %106 ], [ %103, %101 ]
  %109 = tail call fastcc i32 @GetUTFCode(ptr noundef %108) #16
  %110 = icmp eq i32 %109, 10
  %111 = zext i1 %110 to i64
  %112 = add nuw nsw i64 %107, %111
  %113 = tail call fastcc i32 @GetUTFOctets(ptr noundef %108) #16
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %108, i64 %114
  %116 = tail call fastcc i32 @GetUTFCode(ptr noundef %115) #16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %106, !llvm.loop !120

118:                                              ; preds = %106, %101
  %119 = phi i64 [ 0, %101 ], [ %112, %106 ]
  ret i64 %119
}

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @GetUTFCode(ptr noundef %0) unnamed_addr #7 !PGOFuncName !121 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %3 = call fastcc i32 @GetNextUTFCode(ptr noundef %0, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsUTFSpace(i32 noundef %0) unnamed_addr #4 !PGOFuncName !122 {
  switch i32 %0, label %2 [
    i32 6158, label %7
    i32 5760, label %7
    i32 160, label %7
    i32 133, label %7
    i32 32, label %7
    i32 13, label %7
    i32 12, label %7
    i32 11, label %7
    i32 10, label %7
    i32 9, label %7
  ]

2:                                                ; preds = %1
  %3 = add i32 %0, -8192
  %4 = icmp ult i32 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  switch i32 %0, label %6 [
    i32 12288, label %7
    i32 8287, label %7
    i32 8239, label %7
    i32 8233, label %7
    i32 8232, label %7
  ]

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2, %5, %5, %5, %5, %5, %6
  %8 = phi i32 [ 0, %6 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 1, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %8
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @GetUTFOctets(ptr noundef %0) unnamed_addr #7 !PGOFuncName !123 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %3 = call fastcc i32 @GetNextUTFCode(ptr noundef %0, ptr noundef nonnull %2) #16
  %4 = load i32, ptr %2, align 4, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetMultilineTypeMetrics(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._TypeMetric, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 683, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #14
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = load i8, ptr %13, align 1, !tbaa !62
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %82, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @CloneDrawInfo(ptr noundef null, ptr noundef nonnull %1) #14
  %18 = getelementptr inbounds %struct._DrawInfo, ptr %17, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = tail call ptr @DestroyString(ptr noundef %19) #14
  store ptr %20, ptr %18, align 8, !tbaa !54
  %21 = load ptr, ptr %12, align 8, !tbaa !54
  %22 = tail call ptr @StringToList(ptr noundef %21) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %82, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct._DrawInfo, ptr %17, i64 0, i32 41
  store i32 0, ptr %25, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct._DrawInfo, ptr %17, i64 0, i32 48
  store i32 0, ptr %26, align 8, !tbaa !96
  %27 = tail call ptr @ResetMagickMemory(ptr noundef %2, i32 noundef 0, i64 noundef 120) #14
  %28 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 120) #14
  %29 = load ptr, ptr %22, align 8, !tbaa !34
  store ptr %29, ptr %18, align 8, !tbaa !54
  %30 = call i32 @GetTypeMetrics(ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %4) #16, !range !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false), !tbaa.struct !125
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
  %40 = call i32 @GetTypeMetrics(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %4) #16, !range !67
  %41 = load double, ptr %35, align 8, !tbaa !78
  %42 = load double, ptr %36, align 8, !tbaa !78
  %43 = fcmp ogt double %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false), !tbaa.struct !125
  br label %45

45:                                               ; preds = %37, %44
  %46 = add nuw nsw i64 %39, 1
  %47 = getelementptr inbounds ptr, ptr %22, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %37, !llvm.loop !126

50:                                               ; preds = %45, %24
  %51 = phi i32 [ %30, %24 ], [ %40, %45 ]
  %52 = phi i64 [ 1, %24 ], [ %46, %45 ]
  %53 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 1
  %54 = load double, ptr %53, align 8, !tbaa !70
  %55 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 2
  %56 = load double, ptr %55, align 8, !tbaa !72
  %57 = fsub double %54, %56
  %58 = fadd double %57, 5.000000e-01
  %59 = fptoui double %58 to i64
  %60 = mul i64 %52, %59
  %61 = uitofp i64 %60 to double
  %62 = add nsw i64 %52, -1
  %63 = sitofp i64 %62 to double
  %64 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 47
  %65 = load double, ptr %64, align 8, !tbaa !73
  %66 = call double @llvm.fmuladd.f64(double %63, double %65, double %61)
  %67 = getelementptr inbounds %struct._TypeMetric, ptr %2, i64 0, i32 4
  store double %66, ptr %67, align 8, !tbaa !97
  store ptr null, ptr %18, align 8, !tbaa !54
  %68 = call ptr @DestroyDrawInfo(ptr noundef nonnull %17) #14
  %69 = load ptr, ptr %22, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %50, %71
  %72 = phi ptr [ %78, %71 ], [ %69, %50 ]
  %73 = phi ptr [ %77, %71 ], [ %22, %50 ]
  %74 = phi i64 [ %76, %71 ], [ 0, %50 ]
  %75 = call ptr @DestroyString(ptr noundef nonnull %72) #14
  store ptr %75, ptr %73, align 8, !tbaa !34
  %76 = add nuw nsw i64 %74, 1
  %77 = getelementptr inbounds ptr, ptr %22, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %71, !llvm.loop !127

80:                                               ; preds = %71, %50
  %81 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %22) #14
  br label %82

82:                                               ; preds = %16, %11, %80
  %83 = phi i32 [ %51, %80 ], [ 0, %11 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #15
  ret i32 %83
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @GetNextUTFCode(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !128 {
  store i32 1, ptr %1, align 4, !tbaa !124
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call ptr @__errno_location() #18
  store i32 22, ptr %5, align 4, !tbaa !124
  br label %46

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1, !tbaa !62
  %8 = zext i8 %7 to i32
  br label %9

9:                                                ; preds = %6, %38
  %10 = phi ptr [ %0, %6 ], [ %13, %38 ]
  %11 = phi i32 [ %8, %6 ], [ %41, %38 ]
  %12 = phi i64 [ 0, %6 ], [ %42, %38 ]
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  %14 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %12
  %15 = load i32, ptr %14, align 16, !tbaa !129
  %16 = and i32 %15, %8
  %17 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %12, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !131
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %9
  %21 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %12, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !132
  %23 = and i32 %22, %11
  %24 = getelementptr inbounds [6 x %struct.UTFInfo], ptr @utf_info, i64 0, i64 %12, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !133
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = tail call ptr @__errno_location() #18
  store i32 84, ptr %28, align 4, !tbaa !124
  br label %46

29:                                               ; preds = %20
  %30 = trunc i64 %12 to i32
  %31 = add nuw nsw i32 %30, 1
  store i32 %31, ptr %1, align 4, !tbaa !124
  br label %46

32:                                               ; preds = %9
  %33 = load i8, ptr %13, align 1, !tbaa !62
  %34 = xor i8 %33, -128
  %35 = icmp ult i8 %34, 64
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @__errno_location() #18
  store i32 84, ptr %37, align 4, !tbaa !124
  br label %46

38:                                               ; preds = %32
  %39 = zext nneg i8 %34 to i32
  %40 = shl i32 %11, 6
  %41 = or disjoint i32 %40, %39
  %42 = add nuw nsw i64 %12, 1
  %43 = icmp eq i64 %42, 6
  br i1 %43, label %44, label %9, !llvm.loop !134

44:                                               ; preds = %38
  %45 = tail call ptr @__errno_location() #18
  store i32 84, ptr %45, align 4, !tbaa !124
  br label %46

46:                                               ; preds = %44, %36, %29, %27, %4
  %47 = phi i32 [ -1, %4 ], [ -1, %27 ], [ %23, %29 ], [ -1, %36 ], [ -1, %44 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @RenderFreetype(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !135 {
  %5 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.16, ptr %6
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %10 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1538, i32 noundef 320, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull %8) #14
  %11 = tail call fastcc i32 @RenderPostscript(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16, !range !67
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetTypeInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetTypeInfoByFamily(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @RenderPostscript(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !136 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca %struct._GeometryInfo, align 8
  %9 = alloca %struct._RectangleInfo, align 8
  %10 = alloca %struct._PixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.16, ptr %16
  %19 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 30
  %20 = load double, ptr %19, align 8, !tbaa !137
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1654, ptr noundef nonnull @.str.17, ptr noundef nonnull %18, double noundef %20) #14
  br label %22

22:                                               ; preds = %14, %4
  %23 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %5) #14
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call noalias ptr @fdopen(i32 noundef %23, ptr noundef nonnull @.str.18) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %22, %25
  %29 = tail call ptr @__errno_location() #18
  %30 = load i32, ptr %29, align 4, !tbaa !124
  %31 = call ptr @GetExceptionMessage(i32 noundef %30) #14
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %33 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1664, i32 noundef 430, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull %5, ptr noundef %31) #14
  %34 = call ptr @DestroyString(ptr noundef %31) #14
  br label %332

35:                                               ; preds = %25
  %36 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.21) #14
  %37 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.22) #14
  %38 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.23) #14
  %39 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.24) #14
  %40 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.25) #14
  %41 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.26) #14
  %42 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.27) #14
  %43 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3
  %44 = load double, ptr %43, align 8, !tbaa !77
  %45 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 3
  %46 = load double, ptr %45, align 8, !tbaa !90
  %47 = fsub double %44, %46
  %48 = call double @llvm.fabs.f64(double %47)
  %49 = fcmp olt double %48, 1.000000e-15
  br i1 %49, label %50, label %60

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 1
  %52 = load double, ptr %51, align 8, !tbaa !81
  %53 = call double @llvm.fabs.f64(double %52)
  %54 = fcmp olt double %53, 1.000000e-15
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 2
  %57 = load double, ptr %56, align 8, !tbaa !138
  %58 = call double @llvm.fabs.f64(double %57)
  %59 = fcmp olt double %58, 1.000000e-15
  br label %60

60:                                               ; preds = %55, %50, %35
  %61 = phi i1 [ false, %50 ], [ false, %35 ], [ %59, %55 ]
  %62 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 21
  %63 = load ptr, ptr %62, align 8, !tbaa !54
  %64 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %63) #17
  %65 = add i64 %64, 2
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 30
  %69 = load double, ptr %68, align 8, !tbaa !137
  %70 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 2
  %71 = load double, ptr %70, align 8, !tbaa !138
  %72 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 1
  %73 = load double, ptr %72, align 8, !tbaa !81
  %74 = insertelement <2 x double> poison, double %71, i64 0
  %75 = insertelement <2 x double> %74, double %46, i64 1
  %76 = fmul <2 x double> %75, <double 2.000000e+00, double 2.000000e+00>
  %77 = insertelement <2 x double> poison, double %69, i64 0
  %78 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> zeroinitializer
  %79 = fmul <2 x double> %78, %76
  %80 = add i64 %64, 2
  %81 = insertelement <2 x double> poison, double %44, i64 0
  %82 = insertelement <2 x double> %81, double %73, i64 1
  br label %83

83:                                               ; preds = %67, %83
  %84 = phi i64 [ 0, %67 ], [ %94, %83 ]
  %85 = phi <2 x double> [ zeroinitializer, %67 ], [ %93, %83 ]
  %86 = sitofp i64 %84 to double
  %87 = insertelement <2 x double> poison, double %86, i64 0
  %88 = shufflevector <2 x double> %87, <2 x double> poison, <2 x i32> zeroinitializer
  %89 = fmul <2 x double> %82, %88
  %90 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %89, <2 x double> %78, <2 x double> %79)
  %91 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %90)
  %92 = fcmp ogt <2 x double> %91, %85
  %93 = select <2 x i1> %92, <2 x double> %91, <2 x double> %85
  %94 = add nuw i64 %84, 1
  %95 = icmp eq i64 %84, %80
  br i1 %95, label %96, label %83, !llvm.loop !139

96:                                               ; preds = %83, %60
  %97 = phi <2 x double> [ zeroinitializer, %60 ], [ %93, %83 ]
  %98 = extractelement <2 x double> %97, i64 0
  %99 = fmul double %98, 5.000000e-01
  %100 = select i1 %61, double 0.000000e+00, double %99
  %101 = extractelement <2 x double> %97, i64 1
  %102 = fmul double %101, 5.000000e-01
  %103 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.28, double noundef %100, double noundef %102) #14
  %104 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 30
  %105 = load double, ptr %104, align 8, !tbaa !137
  %106 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.29, double noundef %105, double noundef %105) #14
  %107 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 23
  %108 = load ptr, ptr %107, align 8, !tbaa !106
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %96
  %111 = load i8, ptr %108, align 1, !tbaa !62
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %108, i32 noundef 47) #17
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113, %110, %96
  %117 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.30) #14
  br label %120

118:                                              ; preds = %113
  %119 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.31, ptr noundef nonnull %108, ptr noundef nonnull %108) #14
  br label %120

120:                                              ; preds = %118, %116
  %121 = load double, ptr %43, align 8, !tbaa !77
  %122 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 1
  %123 = load double, ptr %122, align 8, !tbaa !81
  %124 = fneg double %123
  %125 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 3, i32 2
  %126 = load double, ptr %125, align 8, !tbaa !138
  %127 = fneg double %126
  %128 = load double, ptr %45, align 8, !tbaa !90
  %129 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.32, double noundef %121, double noundef %124, double noundef %127, double noundef %128) #14
  %130 = load ptr, ptr %62, align 8, !tbaa !54
  %131 = call fastcc ptr @EscapeParenthesis(ptr noundef %130) #16
  br i1 %61, label %134, label %132

132:                                              ; preds = %120
  %133 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.33, ptr noundef %131) #14
  br label %134

134:                                              ; preds = %132, %120
  %135 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.34, ptr noundef %131) #14
  %136 = call ptr @DestroyString(ptr noundef %131) #14
  %137 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef nonnull %26, ptr noundef nonnull @.str.35) #14
  %138 = call i32 @fclose(ptr noundef nonnull %26) #16
  %139 = fadd double %98, 5.000000e-01
  %140 = call double @llvm.floor.f64(double %139)
  %141 = fadd double %101, 5.000000e-01
  %142 = call double @llvm.floor.f64(double %141)
  %143 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.36, double noundef %140, double noundef %142) #14
  %144 = call ptr @AcquireImageInfo() #14
  %145 = getelementptr inbounds %struct._ImageInfo, ptr %144, i64 0, i32 51
  %146 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %145, i64 noundef 4096, ptr noundef nonnull @.str.37, ptr noundef nonnull %5) #14
  %147 = getelementptr inbounds %struct._ImageInfo, ptr %144, i64 0, i32 8
  %148 = call ptr @CloneString(ptr noundef nonnull %147, ptr noundef nonnull %6) #14
  %149 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 31
  %150 = load ptr, ptr %149, align 8, !tbaa !140
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %134
  %153 = getelementptr inbounds %struct._ImageInfo, ptr %144, i64 0, i32 21
  %154 = call ptr @CloneString(ptr noundef nonnull %153, ptr noundef nonnull %150) #14
  br label %155

155:                                              ; preds = %152, %134
  %156 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 13
  %157 = load i32, ptr %156, align 4, !tbaa !141
  %158 = getelementptr inbounds %struct._ImageInfo, ptr %144, i64 0, i32 5
  store i32 %157, ptr %158, align 4, !tbaa !142
  %159 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %160 = call ptr @ReadImage(ptr noundef %144, ptr noundef nonnull %159) #14
  store ptr %160, ptr %7, align 8, !tbaa !34
  call void @CatchException(ptr noundef nonnull %159) #14
  %161 = call ptr @DestroyImageInfo(ptr noundef %144) #14
  %162 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %5) #14
  %163 = icmp eq ptr %160, null
  br i1 %163, label %332, label %164

164:                                              ; preds = %155
  %165 = load double, ptr @DefaultResolution, align 8, !tbaa !68
  %166 = load ptr, ptr %149, align 8, !tbaa !140
  %167 = icmp eq ptr %166, null
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #15
  %169 = call i32 @ParseGeometry(ptr noundef nonnull %166, ptr noundef nonnull %8) #14
  %170 = getelementptr inbounds %struct._GeometryInfo, ptr %8, i64 0, i32 1
  %171 = load double, ptr %170, align 8, !tbaa !144
  %172 = and i32 %169, 8
  %173 = icmp eq i32 %172, 0
  %174 = load double, ptr %8, align 8
  %175 = select i1 %173, double %174, double %171
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #15
  br label %176

176:                                              ; preds = %168, %164
  %177 = phi double [ %175, %168 ], [ %165, %164 ]
  br i1 %61, label %181, label %178

178:                                              ; preds = %176
  %179 = call i32 @TransformImage(ptr noundef nonnull %7, ptr noundef nonnull @.str.38, ptr noundef null) #14
  %180 = fdiv double %177, %165
  br label %203

181:                                              ; preds = %176
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  %182 = getelementptr inbounds %struct._Image, ptr %160, i64 0, i32 58
  call void @GetImageBoundingBox(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %9, ptr noundef nonnull %160, ptr noundef nonnull %182) #14
  %183 = load i64, ptr %9, align 8, !tbaa.struct !146
  %184 = getelementptr inbounds i8, ptr %9, i64 16
  %185 = load i64, ptr %184, align 8, !tbaa.struct !147
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  %186 = fdiv double %177, %165
  %187 = call double @ExpandAffine(ptr noundef nonnull %43) #14
  %188 = fmul double %186, %187
  %189 = load double, ptr %104, align 8, !tbaa !137
  %190 = call double @llvm.fmuladd.f64(double %188, double %189, double 5.000000e-01)
  %191 = fptoui double %190 to i64
  %192 = fmul double %101, %186
  %193 = fmul double %192, 1.250000e-01
  %194 = fadd double %193, -5.000000e-01
  %195 = call double @llvm.ceil.f64(double %194)
  %196 = fptosi double %195 to i64
  %197 = uitofp i64 %183 to double
  %198 = uitofp i64 %191 to double
  %199 = sitofp i64 %185 to double
  %200 = sitofp i64 %196 to double
  %201 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.39, double noundef %197, double noundef %198, double noundef %199, double noundef %200) #14
  %202 = call i32 @TransformImage(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null) #14
  br label %203

203:                                              ; preds = %181, %178
  %204 = phi double [ %186, %181 ], [ %180, %178 ]
  %205 = call double @ExpandAffine(ptr noundef nonnull %43) #14
  %206 = fmul double %204, %205
  %207 = load double, ptr %104, align 8, !tbaa !137
  %208 = fmul double %206, %207
  store double %208, ptr %3, align 8, !tbaa !103
  %209 = getelementptr inbounds %struct._PointInfo, ptr %3, i64 0, i32 1
  store double %208, ptr %209, align 8, !tbaa !104
  %210 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 1
  store double %208, ptr %210, align 8, !tbaa !70
  %211 = fdiv double %208, -5.000000e+00
  %212 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 2
  store double %211, ptr %212, align 8, !tbaa !72
  %213 = load ptr, ptr %7, align 8, !tbaa !34
  %214 = getelementptr inbounds %struct._Image, ptr %213, i64 0, i32 7
  %215 = load i64, ptr %214, align 8, !tbaa !118
  %216 = uitofp i64 %215 to double
  %217 = call double @ExpandAffine(ptr noundef nonnull %43) #14
  %218 = fdiv double %216, %217
  %219 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 3
  store double %218, ptr %219, align 8, !tbaa !78
  %220 = load double, ptr %3, align 8, !tbaa !103
  %221 = fmul double %220, 1.152000e+00
  %222 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 4
  store double %221, ptr %222, align 8, !tbaa !97
  %223 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 5
  store double %220, ptr %223, align 8, !tbaa !98
  %224 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 8
  store double 0.000000e+00, ptr %224, align 8, !tbaa !79
  %225 = load double, ptr %212, align 8, !tbaa !72
  %226 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 8, i32 1
  store double %225, ptr %226, align 8, !tbaa !99
  %227 = load double, ptr %210, align 8, !tbaa !70
  %228 = fadd double %225, %227
  %229 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 8, i32 2
  store double %228, ptr %229, align 8, !tbaa !100
  %230 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 8, i32 3
  store double %228, ptr %230, align 8, !tbaa !101
  %231 = getelementptr inbounds %struct._TypeMetric, ptr %3, i64 0, i32 6
  store <2 x double> <double -2.000000e+00, double 1.000000e+00>, ptr %231, align 8, !tbaa !68
  %232 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 41
  %233 = load i32, ptr %232, align 8, !tbaa !95
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %203
  %236 = load ptr, ptr %7, align 8, !tbaa !34
  %237 = call ptr @DestroyImage(ptr noundef %236) #14
  br label %332

238:                                              ; preds = %203
  %239 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5
  %240 = getelementptr inbounds %struct._DrawInfo, ptr %1, i64 0, i32 5, i32 3
  %241 = load i16, ptr %240, align 2, !tbaa !148
  %242 = icmp eq i16 %241, -1
  br i1 %242, label %329, label %243

243:                                              ; preds = %238
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  %244 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %245 = load i32, ptr %244, align 8, !tbaa !149
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #14
  br label %249

249:                                              ; preds = %247, %243
  %250 = load ptr, ptr %7, align 8, !tbaa !34
  %251 = getelementptr inbounds %struct._Image, ptr %250, i64 0, i32 6
  %252 = load i32, ptr %251, align 8, !tbaa !149
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %250, i32 noundef 6) #14
  %256 = load ptr, ptr %7, align 8, !tbaa !34
  br label %257

257:                                              ; preds = %254, %249
  %258 = phi ptr [ %256, %254 ], [ %250, %249 ]
  %259 = load i64, ptr %239, align 4
  store i64 %259, ptr %10, align 8
  %260 = call ptr @AcquireAuthenticCacheView(ptr noundef %258, ptr noundef nonnull %159) #14
  %261 = load ptr, ptr %7, align 8, !tbaa !34
  %262 = getelementptr inbounds %struct._Image, ptr %261, i64 0, i32 8
  %263 = load i64, ptr %262, align 8, !tbaa !150
  %264 = icmp sgt i64 %263, 0
  br i1 %264, label %265, label %312

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 3
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 2
  br label %274

268:                                              ; preds = %309
  %269 = add nuw nsw i64 %276, 1
  %270 = load ptr, ptr %7, align 8, !tbaa !34
  %271 = getelementptr inbounds %struct._Image, ptr %270, i64 0, i32 8
  %272 = load i64, ptr %271, align 8, !tbaa !150
  %273 = icmp slt i64 %269, %272
  br i1 %273, label %274, label %312, !llvm.loop !151

274:                                              ; preds = %265, %268
  %275 = phi ptr [ %261, %265 ], [ %270, %268 ]
  %276 = phi i64 [ 0, %265 ], [ %269, %268 ]
  %277 = getelementptr inbounds %struct._Image, ptr %275, i64 0, i32 7
  %278 = load i64, ptr %277, align 8, !tbaa !118
  %279 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %260, i64 noundef 0, i64 noundef %276, i64 noundef %278, i64 noundef 1, ptr noundef nonnull %159) #19
  %280 = icmp eq ptr %279, null
  br i1 %280, label %312, label %281

281:                                              ; preds = %274
  %282 = load ptr, ptr %7, align 8, !tbaa !34
  %283 = getelementptr inbounds %struct._Image, ptr %282, i64 0, i32 7
  %284 = load i64, ptr %283, align 8, !tbaa !118
  %285 = icmp sgt i64 %284, 0
  br i1 %285, label %286, label %309

286:                                              ; preds = %281, %286
  %287 = phi ptr [ %303, %286 ], [ %279, %281 ]
  %288 = phi i64 [ %304, %286 ], [ 0, %281 ]
  call fastcc void @GetFillColor(ptr noundef %1, i64 noundef %288, i64 noundef %276, ptr noundef nonnull %10) #16
  %289 = load ptr, ptr %7, align 8, !tbaa !34
  %290 = call float @GetPixelIntensity(ptr noundef %289, ptr noundef nonnull %287) #19
  %291 = fsub float 6.553500e+04, %290
  %292 = load i16, ptr %266, align 2, !tbaa !152
  %293 = xor i16 %292, -1
  %294 = uitofp i16 %293 to float
  %295 = fmul float %291, %294
  %296 = fdiv float %295, 6.553500e+04
  %297 = call fastcc zeroext i16 @ClampToQuantum(float noundef %296) #16
  %298 = xor i16 %297, -1
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %287, i64 0, i32 3
  store i16 %298, ptr %299, align 2, !tbaa !152
  %300 = load i16, ptr %267, align 4, !tbaa !153
  %301 = getelementptr inbounds %struct._PixelPacket, ptr %287, i64 0, i32 2
  store i16 %300, ptr %301, align 2, !tbaa !153
  %302 = load <2 x i16>, ptr %10, align 8, !tbaa !154
  store <2 x i16> %302, ptr %287, align 2, !tbaa !154
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %287, i64 1
  %304 = add nuw nsw i64 %288, 1
  %305 = load ptr, ptr %7, align 8, !tbaa !34
  %306 = getelementptr inbounds %struct._Image, ptr %305, i64 0, i32 7
  %307 = load i64, ptr %306, align 8, !tbaa !118
  %308 = icmp slt i64 %304, %307
  br i1 %308, label %286, label %309, !llvm.loop !155

309:                                              ; preds = %286, %281
  %310 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %260, ptr noundef nonnull %159) #19
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %268

312:                                              ; preds = %268, %274, %309, %257
  %313 = call ptr @DestroyCacheView(ptr noundef %260) #14
  %314 = load ptr, ptr %7, align 8, !tbaa !34
  %315 = load double, ptr %2, align 8, !tbaa !75
  %316 = fadd double %315, -5.000000e-01
  %317 = call double @llvm.ceil.f64(double %316)
  %318 = fptosi double %317 to i64
  %319 = getelementptr inbounds %struct._PointInfo, ptr %2, i64 0, i32 1
  %320 = load double, ptr %319, align 8, !tbaa !82
  %321 = load double, ptr %210, align 8, !tbaa !70
  %322 = load double, ptr %212, align 8, !tbaa !72
  %323 = fadd double %321, %322
  %324 = fsub double %320, %323
  %325 = fadd double %324, -5.000000e-01
  %326 = call double @llvm.ceil.f64(double %325)
  %327 = fptosi double %326 to i64
  %328 = call i32 @CompositeImage(ptr noundef %0, i32 noundef 40, ptr noundef %314, i64 noundef %318, i64 noundef %327) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  br label %329

329:                                              ; preds = %312, %238
  %330 = load ptr, ptr %7, align 8, !tbaa !34
  %331 = call ptr @DestroyImage(ptr noundef %330) #14
  br label %332

332:                                              ; preds = %155, %329, %235, %28
  %333 = phi i32 [ 0, %28 ], [ 1, %235 ], [ 1, %329 ], [ 0, %155 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #15
  ret i32 %333
}

; Function Attrs: optsize
declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @EscapeParenthesis(ptr noundef %0) unnamed_addr #0 !PGOFuncName !156 {
  %2 = tail call ptr @AcquireString(ptr noundef %0) #14
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %4 = tail call fastcc i64 @MagickMin(i64 noundef %3, i64 noundef 4095) #16
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1, %18
  %7 = phi i64 [ %21, %18 ], [ 0, %1 ]
  %8 = phi i64 [ %23, %18 ], [ 0, %1 ]
  %9 = phi ptr [ %22, %18 ], [ %2, %1 ]
  %10 = getelementptr inbounds i8, ptr %0, i64 %8
  %11 = load i8, ptr %10, align 1, !tbaa !62
  %12 = and i8 %11, -2
  %13 = icmp eq i8 %12, 40
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 92, ptr %9, align 1, !tbaa !62
  %16 = add i64 %7, 1
  %17 = load i8, ptr %10, align 1, !tbaa !62
  br label %18

18:                                               ; preds = %6, %14
  %19 = phi i8 [ %17, %14 ], [ %11, %6 ]
  %20 = phi ptr [ %15, %14 ], [ %9, %6 ]
  %21 = phi i64 [ %16, %14 ], [ %7, %6 ]
  %22 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %19, ptr %20, align 1, !tbaa !62
  %23 = add nuw nsw i64 %8, 1
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %25 = sub i64 4095, %21
  %26 = tail call fastcc i64 @MagickMin(i64 noundef %24, i64 noundef %25) #16
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %6, label %28, !llvm.loop !157

28:                                               ; preds = %18, %1
  %29 = phi ptr [ %2, %1 ], [ %22, %18 ]
  store i8 0, ptr %29, align 1, !tbaa !62
  ret ptr %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @TransformImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetImageBoundingBox(ptr dead_on_unwind writable sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @ExpandAffine(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetFillColor(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !158 {
  %5 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._DrawInfo, ptr %0, i64 0, i32 5
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %3, align 2
  br label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !160
  %14 = add nsw i64 %13, %1
  %15 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 74, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !161
  %17 = add nsw i64 %16, %2
  %18 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 58
  %19 = tail call i32 @GetOneVirtualMethodPixel(ptr noundef nonnull %6, i32 noundef 7, i64 noundef %14, i64 noundef %17, ptr noundef %3, ptr noundef nonnull %18) #14
  %20 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !149
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %3, i64 0, i32 3
  store i16 0, ptr %24, align 2, !tbaa !152
  br label %25

25:                                               ; preds = %11, %23, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #4 !PGOFuncName !162 {
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

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0, i64 noundef %1) unnamed_addr #4 !PGOFuncName !163 {
  %3 = tail call i64 @llvm.umin.i64(i64 %0, i64 %1)
  ret i64 %3
}

; Function Attrs: optsize
declare i32 @GetOneVirtualMethodPixel(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { nounwind optsize willreturn memory(none) }
attributes #19 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!55, !35, i64 8}
!66 = !{!39, !40, i64 4}
!67 = !{i32 0, i32 2}
!68 = !{!44, !44, i64 0}
!69 = !{!41, !41, i64 0}
!70 = !{!71, !44, i64 16}
!71 = !{!"_TypeMetric", !59, i64 0, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !58, i64 72, !59, i64 104}
!72 = !{!71, !44, i64 24}
!73 = !{!55, !44, i64 704}
!74 = !{!55, !40, i64 96}
!75 = !{!59, !44, i64 0}
!76 = !{!47, !41, i64 0}
!77 = !{!55, !44, i64 48}
!78 = !{!71, !44, i64 32}
!79 = !{!71, !44, i64 72}
!80 = !{!47, !41, i64 8}
!81 = !{!55, !44, i64 56}
!82 = !{!59, !44, i64 8}
!83 = !{!55, !40, i64 408}
!84 = !{!55, !43, i64 418}
!85 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 8, !68, i64 32, i64 8, !68, i64 40, i64 8, !68}
!86 = !{!71, !44, i64 104}
!87 = !{!71, !44, i64 64}
!88 = !{!55, !40, i64 320}
!89 = !{!71, !44, i64 56}
!90 = !{!55, !44, i64 72}
!91 = !{!55, !44, i64 88}
!92 = distinct !{!92, !64}
!93 = distinct !{!93, !64}
!94 = !{!"annotate.c:IsGrayColorspace"}
!95 = !{!55, !40, i64 496}
!96 = !{!55, !40, i64 712}
!97 = !{!71, !44, i64 40}
!98 = !{!71, !44, i64 48}
!99 = !{!71, !44, i64 80}
!100 = !{!71, !44, i64 88}
!101 = !{!71, !44, i64 96}
!102 = !{!71, !44, i64 112}
!103 = !{!71, !44, i64 0}
!104 = !{!71, !44, i64 8}
!105 = !{!"annotate.c:RenderType"}
!106 = !{!55, !35, i64 344}
!107 = !{!55, !35, i64 360}
!108 = !{!55, !40, i64 368}
!109 = !{!55, !40, i64 372}
!110 = !{!55, !41, i64 376}
!111 = !{!112, !41, i64 0}
!112 = !{!"_TypeInfo", !41, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !41, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !40, i64 96, !35, i64 104, !35, i64 112, !41, i64 120}
!113 = !{!55, !41, i64 336}
!114 = !{!112, !35, i64 80}
!115 = !{!112, !35, i64 88}
!116 = distinct !{!116, !64}
!117 = !{!55, !44, i64 120}
!118 = !{!39, !41, i64 40}
!119 = distinct !{!119, !64}
!120 = distinct !{!120, !64}
!121 = !{!"annotate.c:GetUTFCode"}
!122 = !{!"annotate.c:IsUTFSpace"}
!123 = !{!"annotate.c:GetUTFOctets"}
!124 = !{!40, !40, i64 0}
!125 = !{i64 0, i64 8, !68, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 8, !68, i64 32, i64 8, !68, i64 40, i64 8, !68, i64 48, i64 8, !68, i64 56, i64 8, !68, i64 64, i64 8, !68, i64 72, i64 8, !68, i64 80, i64 8, !68, i64 88, i64 8, !68, i64 96, i64 8, !68, i64 104, i64 8, !68, i64 112, i64 8, !68}
!126 = distinct !{!126, !64}
!127 = distinct !{!127, !64}
!128 = !{!"annotate.c:GetNextUTFCode"}
!129 = !{!130, !40, i64 0}
!130 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!131 = !{!130, !40, i64 4}
!132 = !{!130, !40, i64 8}
!133 = !{!130, !40, i64 12}
!134 = distinct !{!134, !64}
!135 = !{!"annotate.c:RenderFreetype"}
!136 = !{!"annotate.c:RenderPostscript"}
!137 = !{!55, !44, i64 392}
!138 = !{!55, !44, i64 64}
!139 = distinct !{!139, !64}
!140 = !{!55, !35, i64 400}
!141 = !{!55, !40, i64 284}
!142 = !{!143, !40, i64 20}
!143 = !{!"_ImageInfo", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !40, i64 80, !40, i64 84, !40, i64 88, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !44, i64 144, !44, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !40, i64 184, !40, i64 188, !41, i64 192, !40, i64 200, !40, i64 204, !40, i64 208, !41, i64 216, !40, i64 224, !40, i64 228, !35, i64 232, !35, i64 240, !40, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !35, i64 312, !41, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !40, i64 16712, !35, i64 16720, !41, i64 16728, !41, i64 16736, !42, i64 16744, !41, i64 16752, !40, i64 16760, !42, i64 16764, !35, i64 16776, !40, i64 16784}
!144 = !{!145, !44, i64 8}
!145 = !{!"_GeometryInfo", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32}
!146 = !{i64 0, i64 8, !69, i64 8, i64 8, !69, i64 16, i64 8, !69, i64 24, i64 8, !69}
!147 = !{i64 0, i64 8, !69, i64 8, i64 8, !69}
!148 = !{!55, !43, i64 106}
!149 = !{!39, !40, i64 32}
!150 = !{!39, !41, i64 48}
!151 = distinct !{!151, !64}
!152 = !{!42, !43, i64 6}
!153 = !{!42, !43, i64 4}
!154 = !{!43, !43, i64 0}
!155 = distinct !{!155, !64}
!156 = !{!"annotate.c:EscapeParenthesis"}
!157 = distinct !{!157, !64}
!158 = !{!"annotate.c:GetFillColor"}
!159 = !{!55, !35, i64 256}
!160 = !{!39, !41, i64 13152}
!161 = !{!39, !41, i64 13160}
!162 = !{!"annotate.c:ClampToQuantum"}
!163 = !{!"annotate.c:MagickMin"}
