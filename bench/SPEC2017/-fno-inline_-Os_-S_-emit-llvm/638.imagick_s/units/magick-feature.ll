; ModuleID = 'magick/feature.c'
source_filename = "magick/feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct._CannyInfo = type { double, double, i32, i64, i64 }
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
%struct._ChannelStatistics = type { [4 x %struct._DoublePixelPacket] }
%struct._DoublePixelPacket = type { double, double, double, double, double }
%struct._LongPixelPacket = type { i32, i32, i32, i32, i32 }
%struct._ChannelFeatures = type { [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double] }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [17 x i8] c"magick/feature.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"blur:%.20gx%.20g;blur:%.20gx%.20g+90\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@CannyEdgeImage.Gx = internal unnamed_addr constant [2 x [2 x double]] [[2 x double] [double -1.000000e+00, double 1.000000e+00], [2 x double] [double -1.000000e+00, double 1.000000e+00]], align 16
@CannyEdgeImage.Gy = internal unnamed_addr constant [2 x [2 x double]] [[2 x double] [double 1.000000e+00, double 1.000000e+00], [2 x double] [double -1.000000e+00, double -1.000000e+00]], align 16
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_CannyEdgeImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"CannyEdge/Image\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.gomp_critical_user_MagickCore_HoughLineImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"HoughLine/Image\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"# Hough line transform: %.20gx%.20g%+.20g\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"viewbox 0 0 %.20g %.20g\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"line %g,%g %g,%g  # %g\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"mvg:%s\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"strokewidth\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"hough-lines:accumulator\00", align 1
@.gomp_critical_user_MagickCore_MeanShiftImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.24 = private unnamed_addr constant [16 x i8] c"MeanShift/Image\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CannyEdgeImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct._CannyInfo, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %struct._CannyInfo, align 8
  %19 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !6
  store ptr %5, ptr %8, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 283, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #21
  br label %26

26:                                               ; preds = %23, %6
  %27 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %11, i64 noundef 4096, ptr noundef nonnull @.str.3, double noundef %1, double noundef %2, double noundef %1, double noundef %2) #21
  %28 = call ptr @AcquireKernelInfo(ptr noundef nonnull %11) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 293, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %31) #21
  br label %172

33:                                               ; preds = %26
  %34 = call ptr @MorphologyApply(ptr noundef nonnull %0, i32 noundef 134217719, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %28, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %5) #21
  store ptr %34, ptr %14, align 8, !tbaa !6
  %35 = call ptr @DestroyKernelInfo(ptr noundef nonnull %28) #21
  %36 = icmp eq ptr %34, null
  br i1 %36, label %172, label %37

37:                                               ; preds = %33
  %38 = call i32 @SetImageColorspace(ptr noundef nonnull %34, i32 noundef 2) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call ptr @DestroyImage(ptr noundef nonnull %34) #21
  br label %172

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !26
  %45 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 8
  %46 = load i64, ptr %45, align 8, !tbaa !27
  %47 = call ptr @AcquireMatrixInfo(i64 noundef %44, i64 noundef %46, i64 noundef 40, ptr noundef %5) #21
  store ptr %47, ptr %17, align 8, !tbaa !6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call ptr @DestroyImage(ptr noundef nonnull %34) #21
  br label %172

51:                                               ; preds = %42
  store i32 1, ptr %15, align 4, !tbaa !28
  %52 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %34, ptr noundef %5) #21
  store ptr %52, ptr %9, align 8, !tbaa !6
  %53 = load i64, ptr %45, align 8, !tbaa !27
  %54 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %55 = shl i64 %54, 5
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %34) #21
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %34) #21
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %69

65:                                               ; preds = %60, %57, %51
  %66 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %67 = icmp ult i64 %66, 2
  %68 = select i1 %67, i64 1, i64 2
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i64 [ %64, %63 ], [ %68, %65 ]
  %71 = trunc i64 %70 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %71)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @CannyEdgeImage.omp_outlined, ptr nonnull %14, ptr nonnull %15, ptr nonnull %9, ptr nonnull %8, ptr nonnull %17)
  %72 = load ptr, ptr %9, align 8, !tbaa !6
  %73 = call ptr @DestroyCacheView(ptr noundef %72) #21
  store ptr %73, ptr %9, align 8, !tbaa !6
  store i64 0, ptr %16, align 8, !tbaa !29
  %74 = load ptr, ptr %17, align 8, !tbaa !6
  %75 = call i32 @GetMatrixElement(ptr noundef %74, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %10) #21
  %76 = getelementptr inbounds %struct._CannyInfo, ptr %10, i64 0, i32 1
  %77 = load double, ptr %76, align 8, !tbaa !30
  store double %77, ptr %12, align 8, !tbaa !32
  store double %77, ptr %13, align 8, !tbaa !32
  %78 = load ptr, ptr %14, align 8, !tbaa !6
  %79 = load ptr, ptr %8, align 8, !tbaa !6
  %80 = call ptr @AcquireAuthenticCacheView(ptr noundef %78, ptr noundef %79) #21
  store ptr %80, ptr %9, align 8, !tbaa !6
  %81 = load ptr, ptr %14, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct._Image, ptr %81, i64 0, i32 8
  %83 = load i64, ptr %82, align 8, !tbaa !27
  %84 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %85 = shl i64 %84, 5
  %86 = icmp ugt i64 %83, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %69
  %88 = load ptr, ptr %14, align 8, !tbaa !6
  %89 = call i32 @GetImagePixelCacheType(ptr noundef %88) #21
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %14, align 8, !tbaa !6
  %93 = call i32 @GetImagePixelCacheType(ptr noundef %92) #21
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %101

97:                                               ; preds = %91, %87, %69
  %98 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %99 = icmp ult i64 %98, 2
  %100 = select i1 %99, i64 1, i64 2
  br label %101

101:                                              ; preds = %97, %95
  %102 = phi i64 [ %96, %95 ], [ %100, %97 ]
  %103 = trunc i64 %102 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %103)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @CannyEdgeImage.omp_outlined.6, ptr nonnull %14, ptr nonnull %15, ptr nonnull %9, ptr nonnull %8, ptr nonnull %17, ptr nonnull %13, ptr nonnull %12, ptr nonnull %7, ptr nonnull %16)
  %104 = load ptr, ptr %9, align 8, !tbaa !6
  %105 = call ptr @DestroyCacheView(ptr noundef %104) #21
  store ptr %105, ptr %9, align 8, !tbaa !6
  %106 = load double, ptr %12, align 8, !tbaa !32
  %107 = load double, ptr %13, align 8, !tbaa !32
  %108 = fsub double %106, %107
  %109 = call double @llvm.fmuladd.f64(double %3, double %108, double %107)
  %110 = call double @llvm.fmuladd.f64(double %4, double %108, double %107)
  %111 = load ptr, ptr %14, align 8, !tbaa !6
  %112 = load ptr, ptr %8, align 8, !tbaa !6
  %113 = call ptr @AcquireAuthenticCacheView(ptr noundef %111, ptr noundef %112) #21
  store ptr %113, ptr %9, align 8, !tbaa !6
  %114 = load ptr, ptr %14, align 8, !tbaa !6
  %115 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 8
  %116 = load i64, ptr %115, align 8, !tbaa !27
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %166

118:                                              ; preds = %101
  %119 = getelementptr inbounds %struct._CannyInfo, ptr %18, i64 0, i32 1
  br label %120

120:                                              ; preds = %118, %158
  %121 = phi ptr [ %114, %118 ], [ %159, %158 ]
  %122 = phi i64 [ 0, %118 ], [ %160, %158 ]
  %123 = load i32, ptr %15, align 4, !tbaa !28
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %158, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct._Image, ptr %121, i64 0, i32 7
  %127 = load i64, ptr %126, align 8, !tbaa !26
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %158

129:                                              ; preds = %125, %152
  %130 = phi i64 [ %153, %152 ], [ 0, %125 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #4
  %131 = load ptr, ptr %9, align 8, !tbaa !6
  %132 = load ptr, ptr %8, align 8, !tbaa !6
  %133 = call ptr @GetCacheViewVirtualPixels(ptr noundef %131, i64 noundef %130, i64 noundef %122, i64 noundef 1, i64 noundef 1, ptr noundef %132) #22
  %134 = icmp eq ptr %133, null
  br i1 %134, label %152, label %135

135:                                              ; preds = %129
  %136 = load ptr, ptr %17, align 8, !tbaa !6
  %137 = call i32 @GetMatrixElement(ptr noundef %136, i64 noundef %130, i64 noundef %122, ptr noundef nonnull %18) #21
  store i32 %137, ptr %15, align 4, !tbaa !28
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %14, align 8, !tbaa !6
  %141 = call float @GetPixelIntensity(ptr noundef %140, ptr noundef nonnull %133) #22
  %142 = fcmp une float %141, 0.000000e+00
  %143 = load double, ptr %119, align 8
  %144 = fcmp ult double %143, %110
  %145 = select i1 %142, i1 true, i1 %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %139
  %147 = load ptr, ptr %14, align 8, !tbaa !6
  %148 = load ptr, ptr %9, align 8, !tbaa !6
  %149 = load ptr, ptr %17, align 8, !tbaa !6
  %150 = load ptr, ptr %8, align 8, !tbaa !6
  %151 = call fastcc i32 @TraceEdges(ptr noundef %147, ptr noundef %148, ptr noundef %149, i64 noundef %130, i64 noundef %122, double noundef %109, ptr noundef %150) #23
  store i32 %151, ptr %15, align 4, !tbaa !28
  br label %152

152:                                              ; preds = %139, %146, %135, %129
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #4
  %153 = add nuw nsw i64 %130, 1
  %154 = load ptr, ptr %14, align 8, !tbaa !6
  %155 = getelementptr inbounds %struct._Image, ptr %154, i64 0, i32 7
  %156 = load i64, ptr %155, align 8, !tbaa !26
  %157 = icmp slt i64 %153, %156
  br i1 %157, label %129, label %158, !llvm.loop !33

158:                                              ; preds = %152, %125, %120
  %159 = phi ptr [ %121, %125 ], [ %121, %120 ], [ %154, %152 ]
  %160 = add nuw nsw i64 %122, 1
  %161 = getelementptr inbounds %struct._Image, ptr %159, i64 0, i32 8
  %162 = load i64, ptr %161, align 8, !tbaa !27
  %163 = icmp slt i64 %160, %162
  br i1 %163, label %120, label %164, !llvm.loop !35

164:                                              ; preds = %158
  %165 = load ptr, ptr %9, align 8, !tbaa !6
  br label %166

166:                                              ; preds = %164, %101
  %167 = phi ptr [ %165, %164 ], [ %113, %101 ]
  %168 = call ptr @DestroyCacheView(ptr noundef %167) #21
  store ptr %168, ptr %9, align 8, !tbaa !6
  %169 = load ptr, ptr %17, align 8, !tbaa !6
  %170 = call ptr @DestroyMatrixInfo(ptr noundef %169) #21
  %171 = load ptr, ptr %14, align 8, !tbaa !6
  br label %172

172:                                              ; preds = %33, %166, %49, %40, %30
  %173 = phi ptr [ null, %30 ], [ null, %40 ], [ null, %49 ], [ %171, %166 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  ret ptr %173
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireKernelInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @MorphologyApply(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyKernelInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireMatrixInfo(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @CannyEdgeImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6) #3 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._CannyInfo, align 8
  %13 = load ptr, ptr %2, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !27
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %129

18:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  store i64 0, ptr %8, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  store i64 %16, ptr %9, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  store i64 1, ptr %10, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  store i32 0, ptr %11, align 4, !tbaa !28
  %19 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %20 = load i64, ptr %9, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %9, align 8, !tbaa !36
  %22 = load i64, ptr %8, align 8, !tbaa !36
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %128, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._CannyInfo, ptr %12, i64 0, i32 2
  br label %26

26:                                               ; preds = %24, %120
  %27 = phi i64 [ %21, %24 ], [ %126, %120 ]
  %28 = phi i64 [ %22, %24 ], [ %124, %120 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %120, label %30

30:                                               ; preds = %26, %114
  %31 = phi i64 [ %115, %114 ], [ %28, %26 ]
  %32 = load i32, ptr %3, align 4, !tbaa !28
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %114, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !6
  %36 = load ptr, ptr %2, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !26
  %39 = add i64 %38, 1
  %40 = load ptr, ptr %5, align 8, !tbaa !6
  %41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %39, i64 noundef 2, ptr noundef %40) #22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr %2, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !26
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %49, label %114

48:                                               ; preds = %34
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %114

49:                                               ; preds = %43, %103
  %50 = phi ptr [ %108, %103 ], [ %41, %43 ]
  %51 = phi i64 [ %109, %103 ], [ 0, %43 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #4
  %52 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 40) #21
  br label %53

53:                                               ; preds = %49, %76
  %54 = phi i1 [ true, %49 ], [ false, %76 ]
  %55 = phi i64 [ 0, %49 ], [ 1, %76 ]
  %56 = phi ptr [ %50, %49 ], [ %81, %76 ]
  %57 = phi <2 x double> [ zeroinitializer, %49 ], [ %75, %76 ]
  br label %58

58:                                               ; preds = %53, %58
  %59 = phi i1 [ true, %53 ], [ false, %58 ]
  %60 = phi i64 [ 0, %53 ], [ 1, %58 ]
  %61 = phi <2 x double> [ %57, %53 ], [ %75, %58 ]
  %62 = load ptr, ptr %2, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 %60
  %64 = call float @GetPixelIntensity(ptr noundef %62, ptr noundef %63) #22
  %65 = fpext float %64 to double
  %66 = getelementptr inbounds [2 x [2 x double]], ptr @CannyEdgeImage.Gx, i64 0, i64 %55, i64 %60
  %67 = load double, ptr %66, align 8, !tbaa !32
  %68 = getelementptr inbounds [2 x [2 x double]], ptr @CannyEdgeImage.Gy, i64 0, i64 %55, i64 %60
  %69 = load double, ptr %68, align 8, !tbaa !32
  %70 = insertelement <2 x double> poison, double %69, i64 0
  %71 = insertelement <2 x double> %70, double %67, i64 1
  %72 = fmul <2 x double> %71, <double 5.000000e-01, double 5.000000e-01>
  %73 = insertelement <2 x double> poison, double %65, i64 0
  %74 = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> zeroinitializer
  %75 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %72, <2 x double> %74, <2 x double> %61)
  br i1 %59, label %58, label %76, !llvm.loop !37

76:                                               ; preds = %58
  %77 = load ptr, ptr %2, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct._Image, ptr %77, i64 0, i32 7
  %79 = load i64, ptr %78, align 8, !tbaa !26
  %80 = add i64 %79, 1
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 %80
  br i1 %54, label %53, label %82, !llvm.loop !38

82:                                               ; preds = %76
  %83 = extractelement <2 x double> %75, i64 0
  %84 = extractelement <2 x double> %75, i64 1
  %85 = call double @hypot(double noundef %84, double noundef %83) #21
  store double %85, ptr %12, align 8, !tbaa !39
  store i32 0, ptr %25, align 8, !tbaa !40
  %86 = call double @llvm.fabs.f64(double %84)
  %87 = fcmp ogt double %86, 1.000000e-15
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = fdiv double %83, %84
  %90 = fcmp olt double %89, 0.000000e+00
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = fcmp olt double %89, 0xC003504F333F82AD
  br i1 %92, label %103, label %93

93:                                               ; preds = %91
  %94 = fcmp olt double %89, 0xBFDA827999FCE882
  %95 = select i1 %94, i32 1, i32 2
  br label %101

96:                                               ; preds = %88
  %97 = fcmp ogt double %89, 0x4003504F333F82AD
  br i1 %97, label %103, label %98

98:                                               ; preds = %96
  %99 = fcmp ogt double %89, 0x3FDA827999FCE882
  %100 = select i1 %99, i32 3, i32 2
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi i32 [ %95, %93 ], [ %100, %98 ]
  store i32 %102, ptr %25, align 8, !tbaa !40
  br label %103

103:                                              ; preds = %101, %96, %91, %82
  %104 = load ptr, ptr %6, align 8, !tbaa !6
  %105 = call i32 @SetMatrixElement(ptr noundef %104, i64 noundef %51, i64 noundef %31, ptr noundef nonnull %12) #21
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %107
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #4
  %109 = add nuw nsw i64 %51, 1
  %110 = load ptr, ptr %2, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct._Image, ptr %110, i64 0, i32 7
  %112 = load i64, ptr %111, align 8, !tbaa !26
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %49, label %114, !llvm.loop !41

114:                                              ; preds = %103, %43, %30, %48
  %115 = add nsw i64 %31, 1
  %116 = load i64, ptr %9, align 8, !tbaa !36
  %117 = icmp slt i64 %31, %116
  br i1 %117, label %30, label %118

118:                                              ; preds = %114
  %119 = load i64, ptr %8, align 8, !tbaa !36
  br label %120

120:                                              ; preds = %118, %26
  %121 = phi i64 [ %28, %26 ], [ %119, %118 ]
  %122 = phi i64 [ %27, %26 ], [ %116, %118 ]
  %123 = load i64, ptr %10, align 8, !tbaa !36
  %124 = add nsw i64 %123, %121
  store i64 %124, ptr %8, align 8, !tbaa !36
  %125 = add nsw i64 %123, %122
  %126 = call i64 @llvm.smin.i64(i64 %125, i64 %16)
  store i64 %126, ptr %9, align 8, !tbaa !36
  %127 = icmp sgt i64 %124, %126
  br i1 %127, label %128, label %26

128:                                              ; preds = %120, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  br label %129

129:                                              ; preds = %128, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: optsize
declare i32 @SetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !42 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @CannyEdgeImage.omp_outlined.6(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #3 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._CannyInfo, align 8
  %17 = alloca %struct._CannyInfo, align 8
  %18 = alloca %struct._CannyInfo, align 8
  %19 = load ptr, ptr %2, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !27
  %22 = add nsw i64 %21, -1
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %148

24:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 0, ptr %12, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 %22, ptr %13, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 1, ptr %14, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  store i32 0, ptr %15, align 4, !tbaa !28
  %25 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %26 = load i64, ptr %13, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %13, align 8, !tbaa !36
  %28 = load i64, ptr %12, align 8, !tbaa !36
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %147, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._CannyInfo, ptr %18, i64 0, i32 2
  %32 = getelementptr inbounds %struct._CannyInfo, ptr %18, i64 0, i32 1
  br label %33

33:                                               ; preds = %30, %139
  %34 = phi i64 [ %27, %30 ], [ %145, %139 ]
  %35 = phi i64 [ %28, %30 ], [ %143, %139 ]
  %36 = icmp sgt i64 %35, %34
  br i1 %36, label %139, label %37

37:                                               ; preds = %33, %133
  %38 = phi i64 [ %134, %133 ], [ %35, %33 ]
  %39 = load i32, ptr %3, align 4, !tbaa !28
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %133, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 8, !tbaa !6
  %43 = load ptr, ptr %2, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !26
  %46 = load ptr, ptr %5, align 8, !tbaa !6
  %47 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %42, i64 noundef 0, i64 noundef %38, i64 noundef %45, i64 noundef 1, ptr noundef %46) #22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %132, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %2, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !26
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %113

54:                                               ; preds = %49
  %55 = add nsw i64 %38, -1
  %56 = add nsw i64 %38, 1
  br label %57

57:                                               ; preds = %54, %104
  %58 = phi i64 [ 0, %54 ], [ %108, %104 ]
  %59 = phi ptr [ %47, %54 ], [ %107, %104 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %17) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #4
  %60 = load ptr, ptr %6, align 8, !tbaa !6
  %61 = call i32 @GetMatrixElement(ptr noundef %60, i64 noundef %58, i64 noundef %38, ptr noundef nonnull %18) #21
  %62 = load i32, ptr %31, align 8, !tbaa !40
  %63 = load ptr, ptr %6, align 8, !tbaa !6
  switch i32 %62, label %64 [
    i32 3, label %80
    i32 1, label %68
    i32 2, label %74
  ]

64:                                               ; preds = %57
  %65 = call i32 @GetMatrixElement(ptr noundef %63, i64 noundef %58, i64 noundef %55, ptr noundef nonnull %16) #21
  %66 = load ptr, ptr %6, align 8, !tbaa !6
  %67 = call i32 @GetMatrixElement(ptr noundef %66, i64 noundef %58, i64 noundef %56, ptr noundef nonnull %17) #21
  br label %86

68:                                               ; preds = %57
  %69 = add nsw i64 %58, -1
  %70 = call i32 @GetMatrixElement(ptr noundef %63, i64 noundef %69, i64 noundef %55, ptr noundef nonnull %16) #21
  %71 = load ptr, ptr %6, align 8, !tbaa !6
  %72 = add nuw nsw i64 %58, 1
  %73 = call i32 @GetMatrixElement(ptr noundef %71, i64 noundef %72, i64 noundef %56, ptr noundef nonnull %17) #21
  br label %86

74:                                               ; preds = %57
  %75 = add nsw i64 %58, -1
  %76 = call i32 @GetMatrixElement(ptr noundef %63, i64 noundef %75, i64 noundef %38, ptr noundef nonnull %16) #21
  %77 = load ptr, ptr %6, align 8, !tbaa !6
  %78 = add nuw nsw i64 %58, 1
  %79 = call i32 @GetMatrixElement(ptr noundef %77, i64 noundef %78, i64 noundef %38, ptr noundef nonnull %17) #21
  br label %86

80:                                               ; preds = %57
  %81 = add nuw nsw i64 %58, 1
  %82 = call i32 @GetMatrixElement(ptr noundef %63, i64 noundef %81, i64 noundef %55, ptr noundef nonnull %17) #21
  %83 = load ptr, ptr %6, align 8, !tbaa !6
  %84 = add nsw i64 %58, -1
  %85 = call i32 @GetMatrixElement(ptr noundef %83, i64 noundef %84, i64 noundef %56, ptr noundef nonnull %16) #21
  br label %86

86:                                               ; preds = %80, %74, %68, %64
  %87 = load double, ptr %18, align 8, !tbaa !39
  %88 = load double, ptr %16, align 8, !tbaa !39
  %89 = fcmp olt double %87, %88
  %90 = load double, ptr %17, align 8
  %91 = fcmp olt double %87, %90
  %92 = select i1 %89, i1 true, i1 %91
  %93 = select i1 %92, double 0.000000e+00, double %87
  store double %93, ptr %32, align 8
  %94 = load ptr, ptr %6, align 8, !tbaa !6
  %95 = call i32 @SetMatrixElement(ptr noundef %94, i64 noundef %58, i64 noundef %38, ptr noundef nonnull %18) #21
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_CannyEdgeImage.var)
  %96 = load double, ptr %32, align 8, !tbaa !30
  %97 = load double, ptr %7, align 8, !tbaa !32
  %98 = fcmp olt double %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  store double %96, ptr %7, align 8, !tbaa !32
  br label %100

100:                                              ; preds = %99, %86
  %101 = load double, ptr %8, align 8, !tbaa !32
  %102 = fcmp ogt double %96, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store double %96, ptr %8, align 8, !tbaa !32
  br label %104

104:                                              ; preds = %103, %100
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_CannyEdgeImage.var)
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 0, i32 2
  store i16 0, ptr %105, align 2, !tbaa !44
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 0, i32 1
  store i16 0, ptr %106, align 2, !tbaa !45
  store i16 0, ptr %59, align 2, !tbaa !46
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #4
  %108 = add nuw nsw i64 %58, 1
  %109 = load ptr, ptr %2, align 8, !tbaa !6
  %110 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 7
  %111 = load i64, ptr %110, align 8, !tbaa !26
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %57, label %113, !llvm.loop !47

113:                                              ; preds = %104, %49
  %114 = load ptr, ptr %4, align 8, !tbaa !6
  %115 = load ptr, ptr %5, align 8, !tbaa !6
  %116 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %114, ptr noundef %115) #22
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %119

119:                                              ; preds = %118, %113
  %120 = load ptr, ptr %9, align 8, !tbaa !6
  %121 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 47
  %122 = load ptr, ptr %121, align 8, !tbaa !48
  %123 = icmp eq ptr %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %119
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_CannyEdgeImage.var)
  %125 = load ptr, ptr %9, align 8, !tbaa !6
  %126 = load i64, ptr %10, align 8, !tbaa !29
  %127 = add nsw i64 %126, 1
  store i64 %127, ptr %10, align 8, !tbaa !29
  %128 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 8
  %129 = load i64, ptr %128, align 8, !tbaa !27
  %130 = call fastcc i32 @SetImageProgress(ptr noundef %125, ptr noundef nonnull @.str.7, i64 noundef %126, i64 noundef %129) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_CannyEdgeImage.var)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124, %41
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %133

133:                                              ; preds = %132, %119, %124, %37
  %134 = add nsw i64 %38, 1
  %135 = load i64, ptr %13, align 8, !tbaa !36
  %136 = icmp slt i64 %38, %135
  br i1 %136, label %37, label %137

137:                                              ; preds = %133
  %138 = load i64, ptr %12, align 8, !tbaa !36
  br label %139

139:                                              ; preds = %137, %33
  %140 = phi i64 [ %35, %33 ], [ %138, %137 ]
  %141 = phi i64 [ %34, %33 ], [ %135, %137 ]
  %142 = load i64, ptr %14, align 8, !tbaa !36
  %143 = add nsw i64 %142, %140
  store i64 %143, ptr %12, align 8, !tbaa !36
  %144 = add nsw i64 %142, %141
  %145 = call i64 @llvm.smin.i64(i64 %144, i64 %22)
  store i64 %145, ptr %13, align 8, !tbaa !36
  %146 = icmp sgt i64 %143, %145
  br i1 %146, label %147, label %33

147:                                              ; preds = %139, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  br label %148

148:                                              ; preds = %147, %11
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #8

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #8

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #4
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef nonnull %10) #21
  %12 = load ptr, ptr %6, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #21
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #4
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @TraceEdges(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, double noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct._CannyInfo, align 8
  %9 = alloca %struct._CannyInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #4
  %10 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %3, i64 noundef %4, i64 noundef 1, i64 noundef 1, ptr noundef %6) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %86, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 2
  store i16 -1, ptr %13, align 2, !tbaa !44
  %14 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 1
  store i16 -1, ptr %14, align 2, !tbaa !45
  store i16 -1, ptr %10, align 2, !tbaa !46
  %15 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef %6) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %86, label %17

17:                                               ; preds = %12
  %18 = call i32 @GetMatrixElement(ptr noundef %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %8) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %86, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._CannyInfo, ptr %8, i64 0, i32 3
  store i64 %3, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct._CannyInfo, ptr %8, i64 0, i32 4
  store i64 %4, ptr %22, align 8, !tbaa !51
  %23 = call i32 @SetMatrixElement(ptr noundef %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %8) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %86, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._CannyInfo, ptr %9, i64 0, i32 1
  br label %29

27:                                               ; preds = %83
  %28 = icmp eq i64 %80, 0
  br i1 %28, label %86, label %29, !llvm.loop !52

29:                                               ; preds = %25, %27
  %30 = phi i64 [ 1, %25 ], [ %80, %27 ]
  %31 = add nsw i64 %30, -1
  %32 = call i32 @GetMatrixElement(ptr noundef %2, i64 noundef %31, i64 noundef 0, ptr noundef nonnull %8) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %29, %83
  %35 = phi i64 [ %84, %83 ], [ -1, %29 ]
  %36 = phi i64 [ %80, %83 ], [ %31, %29 ]
  br label %37

37:                                               ; preds = %34, %79
  %38 = phi i64 [ -1, %34 ], [ %81, %79 ]
  %39 = phi i64 [ %36, %34 ], [ %80, %79 ]
  %40 = or i64 %38, %35
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %79, label %42

42:                                               ; preds = %37
  %43 = load i64, ptr %21, align 8, !tbaa !50
  %44 = add nsw i64 %43, %38
  %45 = load i64, ptr %22, align 8, !tbaa !51
  %46 = add nsw i64 %45, %35
  %47 = call fastcc i32 @IsAuthenticPixel(ptr noundef %0, i64 noundef %44, i64 noundef %46) #23, !range !53
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %42
  %50 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %44, i64 noundef %46, i64 noundef 1, i64 noundef 1, ptr noundef %6) #22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %86, label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %21, align 8, !tbaa !50
  %54 = add nsw i64 %53, %38
  %55 = load i64, ptr %22, align 8, !tbaa !51
  %56 = add nsw i64 %55, %35
  %57 = call i32 @GetMatrixElement(ptr noundef %2, i64 noundef %54, i64 noundef %56, ptr noundef nonnull %9) #21
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %52
  %60 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %50) #22
  %61 = fcmp une float %60, 0.000000e+00
  %62 = load double, ptr %26, align 8
  %63 = fcmp ult double %62, %5
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 2
  store i16 -1, ptr %66, align 2, !tbaa !44
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 1
  store i16 -1, ptr %67, align 2, !tbaa !45
  store i16 -1, ptr %50, align 2, !tbaa !46
  %68 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef %6) #22
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %65
  %71 = load i64, ptr %21, align 8, !tbaa !50
  %72 = add nsw i64 %71, %38
  store i64 %72, ptr %21, align 8, !tbaa !50
  %73 = load i64, ptr %22, align 8, !tbaa !51
  %74 = add nsw i64 %73, %35
  store i64 %74, ptr %22, align 8, !tbaa !51
  %75 = call i32 @SetMatrixElement(ptr noundef %2, i64 noundef %39, i64 noundef 0, ptr noundef nonnull %8) #21
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %70
  %78 = add nsw i64 %39, 1
  br label %79

79:                                               ; preds = %59, %77, %42, %37
  %80 = phi i64 [ %39, %37 ], [ %39, %42 ], [ %78, %77 ], [ %39, %59 ]
  %81 = add nsw i64 %38, 1
  %82 = icmp eq i64 %81, 2
  br i1 %82, label %83, label %37, !llvm.loop !54

83:                                               ; preds = %79
  %84 = add nsw i64 %35, 1
  %85 = icmp eq i64 %84, 2
  br i1 %85, label %27, label %34, !llvm.loop !55

86:                                               ; preds = %29, %27, %49, %52, %65, %70, %20, %17, %12, %7
  %87 = phi i32 [ 0, %7 ], [ 0, %12 ], [ 0, %17 ], [ 0, %20 ], [ 0, %70 ], [ 0, %65 ], [ 0, %52 ], [ 0, %49 ], [ 0, %29 ], [ 1, %27 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #4
  ret i32 %87
}

; Function Attrs: optsize
declare ptr @DestroyMatrixInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @IsAuthenticPixel(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 {
  %4 = icmp slt i64 %1, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %7 = load i64, ptr %6, align 8, !tbaa !26
  %8 = icmp sle i64 %7, %1
  %9 = icmp slt i64 %2, 0
  %10 = or i1 %9, %8
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !27
  %14 = icmp sgt i64 %13, %2
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %11, %3, %5
  %17 = phi i32 [ 0, %5 ], [ 0, %3 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageChannelFeatures(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = sub i64 0, %1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct._ChannelStatistics, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca %struct._ChannelStatistics, align 8
  %15 = alloca %struct._ChannelStatistics, align 8
  %16 = alloca %struct._ChannelStatistics, align 8
  %17 = alloca %struct._ChannelStatistics, align 8
  %18 = alloca %struct._ChannelStatistics, align 8
  %19 = alloca %struct._ChannelStatistics, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca %struct._ChannelStatistics, align 8
  %23 = alloca %struct._ChannelStatistics, align 8
  %24 = alloca %struct._LongPixelPacket, align 4
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct._ExceptionInfo, align 8
  %29 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !6
  store ptr %2, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %17) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %18) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %19) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %22) #4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %23) #4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %24) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #4
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %31 = load i32, ptr %30, align 8, !tbaa !10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 689, ptr noundef nonnull @.str.2, ptr noundef nonnull %34) #21
  br label %36

36:                                               ; preds = %33, %3
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !26
  %39 = add i64 %1, 1
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %796, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !27
  %44 = icmp ult i64 %43, %39
  br i1 %44, label %796, label %45

45:                                               ; preds = %41
  %46 = tail call dereferenceable_or_null(21504) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 448) #24
  store ptr %46, ptr %8, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %28) #4
  call void @GetExceptionInfo(ptr noundef nonnull %28) #21
  %49 = tail call ptr @__errno_location() #25
  %50 = load i32, ptr %49, align 4, !tbaa !28
  %51 = call ptr @GetExceptionMessage(i32 noundef %50) #21
  %52 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %28, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 696, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %51) #21
  %53 = call ptr @DestroyString(ptr noundef %51) #21
  call void @CatchException(ptr noundef nonnull %28) #21
  %54 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %28) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 1) #26
  unreachable

55:                                               ; preds = %45
  %56 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %46, i32 noundef 0, i64 noundef 21504) #21
  %57 = tail call dereferenceable_or_null(1310720) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 20) #24
  store ptr %57, ptr %25, align 8, !tbaa !6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1310720) %57, i8 -1, i64 1310720, i1 false), !tbaa !28
  store i32 1, ptr %26, align 4, !tbaa !28
  %60 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #21
  store ptr %60, ptr %7, align 8, !tbaa !6
  %61 = load i64, ptr %42, align 8, !tbaa !27
  %62 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %63 = shl i64 %62, 5
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %69, label %77

65:                                               ; preds = %55
  %66 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %46) #21
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %68 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 707, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %67) #21
  br label %796

69:                                               ; preds = %59
  %70 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %81

77:                                               ; preds = %72, %69, %59
  %78 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %79 = icmp ult i64 %78, 2
  %80 = select i1 %79, i64 1, i64 2
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i64 [ %76, %75 ], [ %80, %77 ]
  %83 = trunc i64 %82 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %29, i32 %83)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @GetImageChannelFeatures.omp_outlined, ptr nonnull %5, ptr nonnull %26, ptr nonnull %7, ptr nonnull %6, ptr nonnull %25)
  %84 = load ptr, ptr %7, align 8, !tbaa !6
  %85 = call ptr @DestroyCacheView(ptr noundef %84) #21
  store ptr %85, ptr %7, align 8, !tbaa !6
  %86 = load i32, ptr %26, align 4, !tbaa !28
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load ptr, ptr %25, align 8, !tbaa !6
  %90 = call ptr @RelinquishMagickMemory(ptr noundef %89) #21
  store ptr %90, ptr %25, align 8, !tbaa !6
  %91 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %46) #21
  br label %796

92:                                               ; preds = %81
  %93 = call ptr @ResetMagickMemory(ptr noundef nonnull %24, i32 noundef 0, i64 noundef 20) #21
  %94 = load ptr, ptr %25, align 8, !tbaa !6
  %95 = load ptr, ptr %5, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct._Image, ptr %95, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !56
  %98 = icmp eq i32 %97, 12
  %99 = getelementptr inbounds %struct._Image, ptr %95, i64 0, i32 6
  %100 = load i32, ptr %99, align 8, !tbaa !57
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr inbounds %struct._LongPixelPacket, ptr %24, i64 0, i32 1
  %103 = getelementptr inbounds %struct._LongPixelPacket, ptr %24, i64 0, i32 2
  %104 = getelementptr inbounds %struct._LongPixelPacket, ptr %24, i64 0, i32 4
  %105 = getelementptr inbounds %struct._LongPixelPacket, ptr %24, i64 0, i32 3
  br label %106

106:                                              ; preds = %92, %154
  %107 = phi i64 [ 0, %92 ], [ %155, %154 ]
  %108 = getelementptr inbounds %struct._LongPixelPacket, ptr %94, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !58
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i32, ptr %24, align 4, !tbaa !58
  %113 = add i32 %112, 1
  store i32 %113, ptr %24, align 4, !tbaa !58
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds %struct._LongPixelPacket, ptr %94, i64 %114
  store i32 %109, ptr %115, align 4, !tbaa !58
  br label %116

116:                                              ; preds = %111, %106
  %117 = getelementptr inbounds %struct._LongPixelPacket, ptr %94, i64 %107, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !60
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr %102, align 4, !tbaa !60
  %122 = add i32 %121, 1
  store i32 %122, ptr %102, align 4, !tbaa !60
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds %struct._LongPixelPacket, ptr %94, i64 %123, i32 1
  store i32 %118, ptr %124, align 4, !tbaa !60
  br label %125

125:                                              ; preds = %120, %116
  %126 = getelementptr inbounds %struct._LongPixelPacket, ptr %94, i64 %107, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !61
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %103, align 4, !tbaa !61
  %131 = add i32 %130, 1
  store i32 %131, ptr %103, align 4, !tbaa !61
  %132 = zext i32 %130 to i64
  %133 = getelementptr inbounds %struct._LongPixelPacket, ptr %94, i64 %132, i32 2
  store i32 %127, ptr %133, align 4, !tbaa !61
  br label %134

134:                                              ; preds = %129, %125
  br i1 %98, label %135, label %144

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct._LongPixelPacket, ptr %94, i64 %107, i32 4
  %137 = load i32, ptr %136, align 4, !tbaa !62
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr %104, align 4, !tbaa !62
  %141 = add i32 %140, 1
  store i32 %141, ptr %104, align 4, !tbaa !62
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds %struct._LongPixelPacket, ptr %94, i64 %142, i32 4
  store i32 %137, ptr %143, align 4, !tbaa !62
  br label %144

144:                                              ; preds = %135, %139, %134
  br i1 %101, label %154, label %145

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct._LongPixelPacket, ptr %94, i64 %107, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !63
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = load i32, ptr %105, align 4, !tbaa !63
  %151 = add i32 %150, 1
  store i32 %151, ptr %105, align 4, !tbaa !63
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds %struct._LongPixelPacket, ptr %94, i64 %152, i32 3
  store i32 %147, ptr %153, align 4, !tbaa !63
  br label %154

154:                                              ; preds = %144, %149, %145
  %155 = add nuw nsw i64 %107, 1
  %156 = icmp eq i64 %155, 65536
  br i1 %156, label %157, label %106, !llvm.loop !64

157:                                              ; preds = %154
  %158 = load i32, ptr %24, align 4, !tbaa !58
  %159 = load i32, ptr %102, align 4, !tbaa !60
  %160 = call i32 @llvm.umax.i32(i32 %159, i32 %158)
  %161 = load i32, ptr %103, align 4, !tbaa !61
  %162 = call i32 @llvm.umax.i32(i32 %161, i32 %160)
  store i32 %162, ptr %27, align 4
  br i1 %98, label %163, label %167

163:                                              ; preds = %157
  %164 = load i32, ptr %104, align 4, !tbaa !62
  %165 = icmp ugt i32 %164, %162
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 %164, ptr %27, align 4, !tbaa !28
  br label %167

167:                                              ; preds = %163, %166, %157
  %168 = phi i32 [ %162, %163 ], [ %164, %166 ], [ %162, %157 ]
  br i1 %101, label %173, label %169

169:                                              ; preds = %167
  %170 = load i32, ptr %105, align 4, !tbaa !63
  %171 = icmp ugt i32 %170, %168
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i32 %170, ptr %27, align 4, !tbaa !28
  br label %173

173:                                              ; preds = %169, %172, %167
  %174 = phi i32 [ %168, %169 ], [ %170, %172 ], [ %168, %167 ]
  %175 = zext i32 %174 to i64
  %176 = call ptr @AcquireQuantumMemory(i64 noundef %175, i64 noundef 8) #24
  store ptr %176, ptr %9, align 8, !tbaa !6
  %177 = shl i32 %174, 1
  %178 = add i32 %177, 2
  %179 = zext i32 %178 to i64
  %180 = call ptr @AcquireQuantumMemory(i64 noundef %179, i64 noundef 160) #24
  store ptr %180, ptr %11, align 8, !tbaa !6
  %181 = call ptr @AcquireQuantumMemory(i64 noundef %179, i64 noundef 160) #24
  store ptr %181, ptr %12, align 8, !tbaa !6
  %182 = call ptr @AcquireQuantumMemory(i64 noundef %179, i64 noundef 160) #24
  store ptr %182, ptr %13, align 8, !tbaa !6
  %183 = call ptr @AcquireQuantumMemory(i64 noundef %175, i64 noundef 8) #24
  store ptr %183, ptr %20, align 8, !tbaa !6
  %184 = call ptr @AcquireQuantumMemory(i64 noundef %175, i64 noundef 160) #24
  store ptr %184, ptr %21, align 8, !tbaa !6
  %185 = icmp eq ptr %176, null
  %186 = icmp eq ptr %180, null
  %187 = select i1 %185, i1 true, i1 %186
  %188 = icmp eq ptr %181, null
  %189 = select i1 %187, i1 true, i1 %188
  %190 = icmp eq ptr %182, null
  %191 = select i1 %189, i1 true, i1 %190
  %192 = icmp eq ptr %183, null
  %193 = select i1 %191, i1 true, i1 %192
  %194 = icmp eq ptr %184, null
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %196, label %240

196:                                              ; preds = %173
  br i1 %192, label %208, label %197

197:                                              ; preds = %196
  %198 = icmp eq i32 %174, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %197, %199
  %200 = phi i64 [ %204, %199 ], [ 0, %197 ]
  %201 = getelementptr inbounds ptr, ptr %183, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = call ptr @RelinquishMagickMemory(ptr noundef %202) #21
  store ptr %203, ptr %201, align 8, !tbaa !6
  %204 = add nuw nsw i64 %200, 1
  %205 = icmp ult i64 %204, %175
  br i1 %205, label %199, label %206, !llvm.loop !65

206:                                              ; preds = %199, %197
  %207 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %183) #21
  br label %208

208:                                              ; preds = %206, %196
  br i1 %194, label %211, label %209

209:                                              ; preds = %208
  %210 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %184) #21
  br label %211

211:                                              ; preds = %209, %208
  br i1 %190, label %214, label %212

212:                                              ; preds = %211
  %213 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %182) #21
  br label %214

214:                                              ; preds = %212, %211
  br i1 %188, label %217, label %215

215:                                              ; preds = %214
  %216 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %181) #21
  br label %217

217:                                              ; preds = %215, %214
  br i1 %186, label %220, label %218

218:                                              ; preds = %217
  %219 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %180) #21
  br label %220

220:                                              ; preds = %218, %217
  br i1 %185, label %232, label %221

221:                                              ; preds = %220
  %222 = icmp eq i32 %174, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %221, %223
  %224 = phi i64 [ %228, %223 ], [ 0, %221 ]
  %225 = getelementptr inbounds ptr, ptr %176, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !6
  %227 = call ptr @RelinquishMagickMemory(ptr noundef %226) #21
  store ptr %227, ptr %225, align 8, !tbaa !6
  %228 = add nuw nsw i64 %224, 1
  %229 = icmp ult i64 %228, %175
  br i1 %229, label %223, label %230, !llvm.loop !66

230:                                              ; preds = %223, %221
  %231 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %176) #21
  br label %232

232:                                              ; preds = %230, %220
  %233 = load ptr, ptr %25, align 8, !tbaa !6
  %234 = call ptr @RelinquishMagickMemory(ptr noundef %233) #21
  store ptr %234, ptr %25, align 8, !tbaa !6
  %235 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %46) #21
  %236 = load ptr, ptr %6, align 8, !tbaa !6
  %237 = load ptr, ptr %5, align 8, !tbaa !6
  %238 = getelementptr inbounds %struct._Image, ptr %237, i64 0, i32 53
  %239 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %236, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %238) #21
  br label %796

240:                                              ; preds = %173
  %241 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 160) #21
  %242 = mul nuw nsw i64 %179, 160
  %243 = call ptr @ResetMagickMemory(ptr noundef nonnull %180, i32 noundef 0, i64 noundef %242) #21
  %244 = call ptr @ResetMagickMemory(ptr noundef nonnull %181, i32 noundef 0, i64 noundef %242) #21
  %245 = call ptr @ResetMagickMemory(ptr noundef nonnull %182, i32 noundef 0, i64 noundef %242) #21
  %246 = call ptr @ResetMagickMemory(ptr noundef nonnull %19, i32 noundef 0, i64 noundef 160) #21
  %247 = mul nuw nsw i64 %175, 160
  %248 = call ptr @ResetMagickMemory(ptr noundef nonnull %184, i32 noundef 0, i64 noundef %247) #21
  %249 = call ptr @ResetMagickMemory(ptr noundef nonnull %22, i32 noundef 0, i64 noundef 160) #21
  %250 = zext i32 %177 to i64
  %251 = mul nuw nsw i64 %250, 160
  %252 = call ptr @ResetMagickMemory(ptr noundef nonnull %181, i32 noundef 0, i64 noundef %251) #21
  %253 = call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 160) #21
  %254 = call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 160) #21
  %255 = call ptr @ResetMagickMemory(ptr noundef nonnull %16, i32 noundef 0, i64 noundef 160) #21
  %256 = call ptr @ResetMagickMemory(ptr noundef nonnull %17, i32 noundef 0, i64 noundef 160) #21
  %257 = call ptr @ResetMagickMemory(ptr noundef nonnull %18, i32 noundef 0, i64 noundef 160) #21
  %258 = call ptr @ResetMagickMemory(ptr noundef nonnull %23, i32 noundef 0, i64 noundef 160) #21
  %259 = icmp eq i32 %174, 0
  br i1 %259, label %313, label %260

260:                                              ; preds = %240, %270
  %261 = phi i64 [ %274, %270 ], [ 0, %240 ]
  %262 = call ptr @AcquireQuantumMemory(i64 noundef %175, i64 noundef 160) #24
  %263 = getelementptr inbounds ptr, ptr %176, i64 %261
  store ptr %262, ptr %263, align 8, !tbaa !6
  %264 = call ptr @AcquireQuantumMemory(i64 noundef %175, i64 noundef 160) #24
  %265 = getelementptr inbounds ptr, ptr %183, i64 %261
  store ptr %264, ptr %265, align 8, !tbaa !6
  %266 = load ptr, ptr %263, align 8, !tbaa !6
  %267 = icmp eq ptr %266, null
  %268 = icmp eq ptr %264, null
  %269 = select i1 %267, i1 true, i1 %268
  br i1 %269, label %276, label %270

270:                                              ; preds = %260
  %271 = call ptr @ResetMagickMemory(ptr noundef nonnull %266, i32 noundef 0, i64 noundef %247) #21
  %272 = load ptr, ptr %265, align 8, !tbaa !6
  %273 = call ptr @ResetMagickMemory(ptr noundef %272, i32 noundef 0, i64 noundef %247) #21
  %274 = add nuw nsw i64 %261, 1
  %275 = icmp ult i64 %274, %175
  br i1 %275, label %260, label %276, !llvm.loop !67

276:                                              ; preds = %270, %260
  %277 = phi i64 [ %274, %270 ], [ %261, %260 ]
  %278 = icmp ult i64 %277, %175
  br i1 %278, label %279, label %313

279:                                              ; preds = %276
  %280 = icmp sgt i64 %277, 0
  br i1 %280, label %281, label %299

281:                                              ; preds = %279, %297
  %282 = phi i64 [ %283, %297 ], [ %277, %279 ]
  %283 = add nsw i64 %282, -1
  %284 = getelementptr inbounds ptr, ptr %183, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !6
  %286 = icmp eq ptr %285, null
  br i1 %286, label %290, label %287

287:                                              ; preds = %281
  %288 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %285) #21
  %289 = getelementptr inbounds ptr, ptr %183, i64 %283
  store ptr %288, ptr %289, align 8, !tbaa !6
  br label %290

290:                                              ; preds = %287, %281
  %291 = getelementptr inbounds ptr, ptr %176, i64 %283
  %292 = load ptr, ptr %291, align 8, !tbaa !6
  %293 = icmp eq ptr %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %290
  %295 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %292) #21
  %296 = getelementptr inbounds ptr, ptr %176, i64 %283
  store ptr %295, ptr %296, align 8, !tbaa !6
  br label %297

297:                                              ; preds = %290, %294
  %298 = icmp ugt i64 %282, 1
  br i1 %298, label %281, label %299, !llvm.loop !68

299:                                              ; preds = %297, %279
  %300 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %183) #21
  %301 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %176) #21
  %302 = call ptr @RelinquishMagickMemory(ptr noundef %184) #21
  %303 = call ptr @RelinquishMagickMemory(ptr noundef %182) #21
  %304 = call ptr @RelinquishMagickMemory(ptr noundef %181) #21
  %305 = call ptr @RelinquishMagickMemory(ptr noundef %180) #21
  %306 = load ptr, ptr %25, align 8, !tbaa !6
  %307 = call ptr @RelinquishMagickMemory(ptr noundef %306) #21
  store ptr %307, ptr %25, align 8, !tbaa !6
  %308 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %46) #21
  %309 = load ptr, ptr %6, align 8, !tbaa !6
  %310 = load ptr, ptr %5, align 8, !tbaa !6
  %311 = getelementptr inbounds %struct._Image, ptr %310, i64 0, i32 53
  %312 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %309, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 891, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %311) #21
  br label %796

313:                                              ; preds = %240, %276
  store i32 1, ptr %26, align 4, !tbaa !28
  %314 = load ptr, ptr %5, align 8, !tbaa !6
  %315 = load ptr, ptr %6, align 8, !tbaa !6
  %316 = call ptr @AcquireVirtualCacheView(ptr noundef %314, ptr noundef %315) #21
  store ptr %316, ptr %7, align 8, !tbaa !6
  %317 = load ptr, ptr %5, align 8, !tbaa !6
  %318 = getelementptr inbounds %struct._Image, ptr %317, i64 0, i32 8
  %319 = load i64, ptr %318, align 8, !tbaa !27
  %320 = icmp sgt i64 %319, 0
  br i1 %320, label %321, label %551

321:                                              ; preds = %313
  %322 = shl i64 %1, 1
  %323 = add i64 %1, 2
  %324 = mul i64 %1, 3
  br label %325

325:                                              ; preds = %321, %545
  %326 = phi ptr [ %317, %321 ], [ %546, %545 ]
  %327 = phi i64 [ 0, %321 ], [ %547, %545 ]
  %328 = load i32, ptr %26, align 4, !tbaa !28
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %545, label %330

330:                                              ; preds = %325
  %331 = load ptr, ptr %7, align 8, !tbaa !6
  %332 = getelementptr inbounds %struct._Image, ptr %326, i64 0, i32 7
  %333 = load i64, ptr %332, align 8, !tbaa !26
  %334 = add i64 %333, %322
  %335 = load ptr, ptr %6, align 8, !tbaa !6
  %336 = call ptr @GetCacheViewVirtualPixels(ptr noundef %331, i64 noundef %4, i64 noundef %327, i64 noundef %334, i64 noundef %323, ptr noundef %335) #22
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %340

338:                                              ; preds = %330
  store i32 0, ptr %26, align 4, !tbaa !28
  %339 = load ptr, ptr %5, align 8, !tbaa !6
  br label %545

340:                                              ; preds = %330
  %341 = load ptr, ptr %7, align 8, !tbaa !6
  %342 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %341) #21
  %343 = getelementptr inbounds i16, ptr %342, i64 %1
  %344 = load ptr, ptr %5, align 8, !tbaa !6
  %345 = getelementptr inbounds %struct._Image, ptr %344, i64 0, i32 7
  %346 = load i64, ptr %345, align 8, !tbaa !26
  %347 = icmp sgt i64 %346, 0
  br i1 %347, label %348, label %545

348:                                              ; preds = %340
  %349 = getelementptr inbounds %struct._PixelPacket, ptr %336, i64 %1
  %350 = load ptr, ptr %25, align 8, !tbaa !6
  %351 = getelementptr inbounds %struct._Image, ptr %344, i64 0, i32 1
  %352 = load i32, ptr %351, align 4, !tbaa !56
  %353 = icmp eq i32 %352, 12
  %354 = getelementptr inbounds %struct._Image, ptr %344, i64 0, i32 6
  %355 = load i32, ptr %354, align 8, !tbaa !57
  %356 = icmp eq i32 %355, 0
  %357 = add i64 %346, %1
  %358 = add i64 %346, %322
  %359 = add i64 %324, %346
  %360 = icmp eq ptr %342, null
  br label %361

361:                                              ; preds = %348, %541
  %362 = phi i64 [ 0, %348 ], [ %543, %541 ]
  %363 = phi ptr [ %349, %348 ], [ %542, %541 ]
  %364 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 2
  %365 = load i16, ptr %364, align 2, !tbaa !44
  %366 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %365) #23, !range !69
  %367 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 1
  %368 = load i16, ptr %367, align 2, !tbaa !45
  %369 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %368) #23, !range !69
  %370 = load i16, ptr %363, align 2, !tbaa !46
  %371 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %370) #23, !range !69
  %372 = getelementptr inbounds i16, ptr %343, i64 %362
  %373 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 3
  br label %374

374:                                              ; preds = %361, %538
  %375 = phi i64 [ 0, %361 ], [ %539, %538 ]
  switch i64 %375, label %379 [
    i64 3, label %378
    i64 1, label %376
    i64 2, label %377
  ]

376:                                              ; preds = %374
  br label %379

377:                                              ; preds = %374
  br label %379

378:                                              ; preds = %374
  br label %379

379:                                              ; preds = %374, %378, %377, %376
  %380 = phi i64 [ %357, %377 ], [ %358, %376 ], [ %359, %378 ], [ %1, %374 ]
  br label %381

381:                                              ; preds = %381, %379
  %382 = phi i64 [ 0, %379 ], [ %386, %381 ]
  %383 = getelementptr inbounds %struct._LongPixelPacket, ptr %350, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !58
  %385 = icmp eq i32 %384, %366
  %386 = add nuw nsw i64 %382, 1
  br i1 %385, label %387, label %381, !llvm.loop !70

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 %380, i32 2
  %389 = load i16, ptr %388, align 2, !tbaa !44
  %390 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %389) #23, !range !69
  br label %391

391:                                              ; preds = %391, %387
  %392 = phi i64 [ %396, %391 ], [ 0, %387 ]
  %393 = getelementptr inbounds %struct._LongPixelPacket, ptr %350, i64 %392
  %394 = load i32, ptr %393, align 4, !tbaa !58
  %395 = icmp eq i32 %394, %390
  %396 = add nuw nsw i64 %392, 1
  br i1 %395, label %397, label %391, !llvm.loop !71

397:                                              ; preds = %391
  %398 = getelementptr inbounds ptr, ptr %176, i64 %382
  %399 = load ptr, ptr %398, align 8, !tbaa !6
  %400 = getelementptr inbounds %struct._ChannelStatistics, ptr %399, i64 %392
  %401 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %400, i64 0, i64 %375
  %402 = load double, ptr %401, align 8, !tbaa !72
  %403 = fadd double %402, 1.000000e+00
  store double %403, ptr %401, align 8, !tbaa !72
  %404 = getelementptr inbounds ptr, ptr %176, i64 %392
  %405 = load ptr, ptr %404, align 8, !tbaa !6
  %406 = getelementptr inbounds %struct._ChannelStatistics, ptr %405, i64 %382
  %407 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %406, i64 0, i64 %375
  %408 = load double, ptr %407, align 8, !tbaa !72
  %409 = fadd double %408, 1.000000e+00
  store double %409, ptr %407, align 8, !tbaa !72
  br label %410

410:                                              ; preds = %410, %397
  %411 = phi i64 [ 0, %397 ], [ %415, %410 ]
  %412 = getelementptr inbounds %struct._LongPixelPacket, ptr %350, i64 %411, i32 1
  %413 = load i32, ptr %412, align 4, !tbaa !60
  %414 = icmp eq i32 %413, %369
  %415 = add nuw nsw i64 %411, 1
  br i1 %414, label %416, label %410, !llvm.loop !74

416:                                              ; preds = %410
  %417 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 %380, i32 1
  %418 = load i16, ptr %417, align 2, !tbaa !45
  %419 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %418) #23, !range !69
  br label %420

420:                                              ; preds = %420, %416
  %421 = phi i64 [ %425, %420 ], [ 0, %416 ]
  %422 = getelementptr inbounds %struct._LongPixelPacket, ptr %350, i64 %421, i32 1
  %423 = load i32, ptr %422, align 4, !tbaa !60
  %424 = icmp eq i32 %423, %419
  %425 = add nuw nsw i64 %421, 1
  br i1 %424, label %426, label %420, !llvm.loop !75

426:                                              ; preds = %420
  %427 = getelementptr inbounds ptr, ptr %176, i64 %411
  %428 = load ptr, ptr %427, align 8, !tbaa !6
  %429 = getelementptr inbounds %struct._ChannelStatistics, ptr %428, i64 %421
  %430 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %429, i64 0, i64 %375, i32 1
  %431 = load double, ptr %430, align 8, !tbaa !76
  %432 = fadd double %431, 1.000000e+00
  store double %432, ptr %430, align 8, !tbaa !76
  %433 = getelementptr inbounds ptr, ptr %176, i64 %421
  %434 = load ptr, ptr %433, align 8, !tbaa !6
  %435 = getelementptr inbounds %struct._ChannelStatistics, ptr %434, i64 %411
  %436 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %435, i64 0, i64 %375, i32 1
  %437 = load double, ptr %436, align 8, !tbaa !76
  %438 = fadd double %437, 1.000000e+00
  store double %438, ptr %436, align 8, !tbaa !76
  br label %439

439:                                              ; preds = %439, %426
  %440 = phi i64 [ 0, %426 ], [ %444, %439 ]
  %441 = getelementptr inbounds %struct._LongPixelPacket, ptr %350, i64 %440, i32 2
  %442 = load i32, ptr %441, align 4, !tbaa !61
  %443 = icmp eq i32 %442, %371
  %444 = add nuw nsw i64 %440, 1
  br i1 %443, label %445, label %439, !llvm.loop !77

445:                                              ; preds = %439
  %446 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 %380
  %447 = load i16, ptr %446, align 2, !tbaa !46
  %448 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %447) #23, !range !69
  br label %449

449:                                              ; preds = %449, %445
  %450 = phi i64 [ %454, %449 ], [ 0, %445 ]
  %451 = getelementptr inbounds %struct._LongPixelPacket, ptr %350, i64 %450, i32 2
  %452 = load i32, ptr %451, align 4, !tbaa !61
  %453 = icmp eq i32 %452, %448
  %454 = add nuw nsw i64 %450, 1
  br i1 %453, label %455, label %449, !llvm.loop !78

455:                                              ; preds = %449
  %456 = getelementptr inbounds ptr, ptr %176, i64 %440
  %457 = load ptr, ptr %456, align 8, !tbaa !6
  %458 = getelementptr inbounds %struct._ChannelStatistics, ptr %457, i64 %450
  %459 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %458, i64 0, i64 %375, i32 2
  %460 = load double, ptr %459, align 8, !tbaa !79
  %461 = fadd double %460, 1.000000e+00
  store double %461, ptr %459, align 8, !tbaa !79
  %462 = getelementptr inbounds ptr, ptr %176, i64 %450
  %463 = load ptr, ptr %462, align 8, !tbaa !6
  %464 = getelementptr inbounds %struct._ChannelStatistics, ptr %463, i64 %440
  %465 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %464, i64 0, i64 %375, i32 2
  %466 = load double, ptr %465, align 8, !tbaa !79
  %467 = fadd double %466, 1.000000e+00
  store double %467, ptr %465, align 8, !tbaa !79
  br i1 %353, label %468, label %505

468:                                              ; preds = %455, %474
  %469 = phi i64 [ %478, %474 ], [ 0, %455 ]
  %470 = getelementptr inbounds %struct._LongPixelPacket, ptr %350, i64 %469, i32 4
  %471 = load i32, ptr %470, align 4, !tbaa !62
  br i1 %360, label %474, label %472

472:                                              ; preds = %468
  %473 = load i16, ptr %372, align 2, !tbaa !80
  br label %474

474:                                              ; preds = %468, %472
  %475 = phi i16 [ %473, %472 ], [ 0, %468 ]
  %476 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %475) #23, !range !69
  %477 = icmp eq i32 %471, %476
  %478 = add nuw nsw i64 %469, 1
  br i1 %477, label %479, label %468, !llvm.loop !81

479:                                              ; preds = %474
  %480 = getelementptr inbounds i16, ptr %372, i64 %380
  br label %481

481:                                              ; preds = %487, %479
  %482 = phi i64 [ %491, %487 ], [ 0, %479 ]
  %483 = getelementptr inbounds %struct._LongPixelPacket, ptr %350, i64 %482, i32 4
  %484 = load i32, ptr %483, align 4, !tbaa !62
  br i1 %360, label %487, label %485

485:                                              ; preds = %481
  %486 = load i16, ptr %480, align 2, !tbaa !80
  br label %487

487:                                              ; preds = %481, %485
  %488 = phi i16 [ %486, %485 ], [ 0, %481 ]
  %489 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %488) #23, !range !69
  %490 = icmp eq i32 %484, %489
  %491 = add nuw nsw i64 %482, 1
  br i1 %490, label %492, label %481, !llvm.loop !82

492:                                              ; preds = %487
  %493 = getelementptr inbounds ptr, ptr %176, i64 %469
  %494 = load ptr, ptr %493, align 8, !tbaa !6
  %495 = getelementptr inbounds %struct._ChannelStatistics, ptr %494, i64 %482
  %496 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %495, i64 0, i64 %375, i32 4
  %497 = load double, ptr %496, align 8, !tbaa !83
  %498 = fadd double %497, 1.000000e+00
  store double %498, ptr %496, align 8, !tbaa !83
  %499 = getelementptr inbounds ptr, ptr %176, i64 %482
  %500 = load ptr, ptr %499, align 8, !tbaa !6
  %501 = getelementptr inbounds %struct._ChannelStatistics, ptr %500, i64 %469
  %502 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %501, i64 0, i64 %375, i32 4
  %503 = load double, ptr %502, align 8, !tbaa !83
  %504 = fadd double %503, 1.000000e+00
  store double %504, ptr %502, align 8, !tbaa !83
  br label %505

505:                                              ; preds = %492, %455
  br i1 %356, label %538, label %506

506:                                              ; preds = %505
  %507 = load i16, ptr %373, align 2, !tbaa !84
  %508 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %507) #23, !range !69
  br label %509

509:                                              ; preds = %509, %506
  %510 = phi i64 [ %514, %509 ], [ 0, %506 ]
  %511 = getelementptr inbounds %struct._LongPixelPacket, ptr %350, i64 %510, i32 3
  %512 = load i32, ptr %511, align 4, !tbaa !63
  %513 = icmp eq i32 %512, %508
  %514 = add nuw nsw i64 %510, 1
  br i1 %513, label %515, label %509, !llvm.loop !85

515:                                              ; preds = %509
  %516 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 %380, i32 3
  %517 = load i16, ptr %516, align 2, !tbaa !84
  %518 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %517) #23, !range !69
  br label %519

519:                                              ; preds = %519, %515
  %520 = phi i64 [ %524, %519 ], [ 0, %515 ]
  %521 = getelementptr inbounds %struct._LongPixelPacket, ptr %350, i64 %520, i32 3
  %522 = load i32, ptr %521, align 4, !tbaa !63
  %523 = icmp eq i32 %522, %518
  %524 = add nuw nsw i64 %520, 1
  br i1 %523, label %525, label %519, !llvm.loop !86

525:                                              ; preds = %519
  %526 = getelementptr inbounds ptr, ptr %176, i64 %510
  %527 = load ptr, ptr %526, align 8, !tbaa !6
  %528 = getelementptr inbounds %struct._ChannelStatistics, ptr %527, i64 %520
  %529 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %528, i64 0, i64 %375, i32 3
  %530 = load double, ptr %529, align 8, !tbaa !87
  %531 = fadd double %530, 1.000000e+00
  store double %531, ptr %529, align 8, !tbaa !87
  %532 = getelementptr inbounds ptr, ptr %176, i64 %520
  %533 = load ptr, ptr %532, align 8, !tbaa !6
  %534 = getelementptr inbounds %struct._ChannelStatistics, ptr %533, i64 %510
  %535 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %534, i64 0, i64 %375, i32 3
  %536 = load double, ptr %535, align 8, !tbaa !87
  %537 = fadd double %536, 1.000000e+00
  store double %537, ptr %535, align 8, !tbaa !87
  br label %538

538:                                              ; preds = %505, %525
  %539 = add nuw nsw i64 %375, 1
  %540 = icmp eq i64 %539, 4
  br i1 %540, label %541, label %374, !llvm.loop !88

541:                                              ; preds = %538
  %542 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 1
  %543 = add nuw nsw i64 %362, 1
  %544 = icmp eq i64 %543, %346
  br i1 %544, label %545, label %361, !llvm.loop !89

545:                                              ; preds = %541, %340, %325, %338
  %546 = phi ptr [ %344, %340 ], [ %326, %325 ], [ %339, %338 ], [ %344, %541 ]
  %547 = add nuw nsw i64 %327, 1
  %548 = getelementptr inbounds %struct._Image, ptr %546, i64 0, i32 8
  %549 = load i64, ptr %548, align 8, !tbaa !27
  %550 = icmp slt i64 %547, %549
  br i1 %550, label %325, label %551, !llvm.loop !90

551:                                              ; preds = %545, %313
  %552 = load ptr, ptr %25, align 8, !tbaa !6
  %553 = call ptr @RelinquishMagickMemory(ptr noundef %552) #21
  store ptr %553, ptr %25, align 8, !tbaa !6
  %554 = load ptr, ptr %7, align 8, !tbaa !6
  %555 = call ptr @DestroyCacheView(ptr noundef %554) #21
  store ptr %555, ptr %7, align 8, !tbaa !6
  %556 = load i32, ptr %26, align 4, !tbaa !28
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %568, label %558

558:                                              ; preds = %551
  %559 = load ptr, ptr %5, align 8
  %560 = getelementptr inbounds %struct._Image, ptr %559, i64 0, i32 8
  %561 = getelementptr inbounds %struct._Image, ptr %559, i64 0, i32 7
  %562 = getelementptr inbounds %struct._Image, ptr %559, i64 0, i32 1
  %563 = getelementptr inbounds %struct._Image, ptr %559, i64 0, i32 6
  %564 = load i64, ptr %560, align 8, !tbaa !27
  %565 = sub i64 %564, %1
  %566 = sub i64 %564, %1
  %567 = sub i64 %564, %1
  br label %583

568:                                              ; preds = %551
  br i1 %259, label %576, label %569

569:                                              ; preds = %568, %569
  %570 = phi i64 [ %574, %569 ], [ 0, %568 ]
  %571 = getelementptr inbounds ptr, ptr %176, i64 %570
  %572 = load ptr, ptr %571, align 8, !tbaa !6
  %573 = call ptr @RelinquishMagickMemory(ptr noundef %572) #21
  store ptr %573, ptr %571, align 8, !tbaa !6
  %574 = add nuw nsw i64 %570, 1
  %575 = icmp ult i64 %574, %175
  br i1 %575, label %569, label %576, !llvm.loop !91

576:                                              ; preds = %569, %568
  %577 = call ptr @RelinquishMagickMemory(ptr noundef %176) #21
  %578 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %46) #21
  %579 = load ptr, ptr %6, align 8, !tbaa !6
  %580 = load ptr, ptr %5, align 8, !tbaa !6
  %581 = getelementptr inbounds %struct._Image, ptr %580, i64 0, i32 53
  %582 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %579, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %581) #21
  br label %796

583:                                              ; preds = %558, %639
  %584 = phi i64 [ 0, %558 ], [ %640, %639 ]
  switch i64 %584, label %585 [
    i64 3, label %593
    i64 1, label %588
    i64 2, label %590
  ]

585:                                              ; preds = %583
  %586 = load i64, ptr %561, align 8, !tbaa !26
  %587 = sub i64 %586, %1
  br label %596

588:                                              ; preds = %583
  %589 = load i64, ptr %561, align 8, !tbaa !26
  br label %596

590:                                              ; preds = %583
  %591 = load i64, ptr %561, align 8, !tbaa !26
  %592 = sub i64 %591, %1
  br label %596

593:                                              ; preds = %583
  %594 = load i64, ptr %561, align 8, !tbaa !26
  %595 = sub i64 %594, %1
  br label %596

596:                                              ; preds = %593, %590, %588, %585
  %597 = phi i64 [ %595, %593 ], [ %592, %590 ], [ %589, %588 ], [ %587, %585 ]
  %598 = phi i64 [ %567, %593 ], [ %565, %590 ], [ %566, %588 ], [ %564, %585 ]
  %599 = uitofp i64 %598 to double
  %600 = fmul double %599, 2.000000e+00
  %601 = uitofp i64 %597 to double
  %602 = fmul double %600, %601
  %603 = call fastcc double @PerceptibleReciprocal(double noundef %602) #23
  br i1 %259, label %639, label %604

604:                                              ; preds = %596
  %605 = load i32, ptr %562, align 4, !tbaa !56
  %606 = icmp eq i32 %605, 12
  %607 = load i32, ptr %563, align 8, !tbaa !57
  %608 = icmp eq i32 %607, 0
  %609 = insertelement <2 x double> poison, double %603, i64 0
  %610 = shufflevector <2 x double> %609, <2 x double> poison, <2 x i32> zeroinitializer
  br label %611

611:                                              ; preds = %604, %636
  %612 = phi i64 [ 0, %604 ], [ %637, %636 ]
  br label %613

613:                                              ; preds = %611, %633
  %614 = phi i64 [ 0, %611 ], [ %634, %633 ]
  %615 = getelementptr inbounds ptr, ptr %176, i64 %614
  %616 = load ptr, ptr %615, align 8, !tbaa !6
  %617 = getelementptr inbounds %struct._ChannelStatistics, ptr %616, i64 %612
  %618 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %617, i64 0, i64 %584
  %619 = load <2 x double>, ptr %618, align 8, !tbaa !32
  %620 = fmul <2 x double> %610, %619
  store <2 x double> %620, ptr %618, align 8, !tbaa !32
  %621 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %617, i64 0, i64 %584, i32 2
  %622 = load double, ptr %621, align 8, !tbaa !79
  %623 = fmul double %603, %622
  store double %623, ptr %621, align 8, !tbaa !79
  br i1 %606, label %624, label %628

624:                                              ; preds = %613
  %625 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %617, i64 0, i64 %584, i32 4
  %626 = load double, ptr %625, align 8, !tbaa !83
  %627 = fmul double %603, %626
  store double %627, ptr %625, align 8, !tbaa !83
  br label %628

628:                                              ; preds = %624, %613
  br i1 %608, label %633, label %629

629:                                              ; preds = %628
  %630 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %617, i64 0, i64 %584, i32 3
  %631 = load double, ptr %630, align 8, !tbaa !87
  %632 = fmul double %603, %631
  store double %632, ptr %630, align 8, !tbaa !87
  br label %633

633:                                              ; preds = %628, %629
  %634 = add nuw nsw i64 %614, 1
  %635 = icmp eq i64 %634, %175
  br i1 %635, label %636, label %613, !llvm.loop !92

636:                                              ; preds = %633
  %637 = add nuw nsw i64 %612, 1
  %638 = icmp eq i64 %637, %175
  br i1 %638, label %639, label %611, !llvm.loop !93

639:                                              ; preds = %636, %596
  %640 = add nuw nsw i64 %584, 1
  %641 = icmp eq i64 %640, 4
  br i1 %641, label %642, label %583, !llvm.loop !94

642:                                              ; preds = %639
  %643 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %644 = shl i64 %643, 5
  %645 = icmp ult i64 %644, %175
  br i1 %645, label %646, label %656

646:                                              ; preds = %642
  %647 = load ptr, ptr %5, align 8, !tbaa !6
  %648 = call i32 @GetImagePixelCacheType(ptr noundef %647) #21
  %649 = icmp eq i32 %648, 3
  br i1 %649, label %656, label %650

650:                                              ; preds = %646
  %651 = load ptr, ptr %5, align 8, !tbaa !6
  %652 = call i32 @GetImagePixelCacheType(ptr noundef %651) #21
  %653 = icmp eq i32 %652, 3
  br i1 %653, label %656, label %654

654:                                              ; preds = %650
  %655 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %660

656:                                              ; preds = %650, %646, %642
  %657 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %658 = icmp ult i64 %657, 2
  %659 = select i1 %658, i64 1, i64 2
  br label %660

660:                                              ; preds = %656, %654
  %661 = phi i64 [ %655, %654 ], [ %659, %656 ]
  %662 = trunc i64 %661 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %29, i32 %662)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @GetImageChannelFeatures.omp_outlined.9, ptr nonnull %27, ptr nonnull %8, ptr nonnull %9, ptr nonnull %5, ptr nonnull %21, ptr nonnull %10, ptr nonnull %12, ptr nonnull %11, ptr nonnull %13, ptr nonnull %19, ptr nonnull %22)
  %663 = load i32, ptr %27, align 4, !tbaa !28
  %664 = zext i32 %663 to i64
  %665 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %666 = shl i64 %665, 5
  %667 = icmp ult i64 %666, %664
  br i1 %667, label %668, label %678

668:                                              ; preds = %660
  %669 = load ptr, ptr %5, align 8, !tbaa !6
  %670 = call i32 @GetImagePixelCacheType(ptr noundef %669) #21
  %671 = icmp eq i32 %670, 3
  br i1 %671, label %678, label %672

672:                                              ; preds = %668
  %673 = load ptr, ptr %5, align 8, !tbaa !6
  %674 = call i32 @GetImagePixelCacheType(ptr noundef %673) #21
  %675 = icmp eq i32 %674, 3
  br i1 %675, label %678, label %676

676:                                              ; preds = %672
  %677 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %682

678:                                              ; preds = %672, %668, %660
  %679 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %680 = icmp ult i64 %679, 2
  %681 = select i1 %680, i64 1, i64 2
  br label %682

682:                                              ; preds = %678, %676
  %683 = phi i64 [ %677, %676 ], [ %681, %678 ]
  %684 = trunc i64 %683 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %29, i32 %684)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @GetImageChannelFeatures.omp_outlined.10, ptr nonnull %27, ptr nonnull %8, ptr nonnull %12, ptr nonnull %5)
  %685 = load i32, ptr %27, align 4, !tbaa !28
  %686 = zext i32 %685 to i64
  %687 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %688 = shl i64 %687, 5
  %689 = icmp ult i64 %688, %686
  br i1 %689, label %690, label %700

690:                                              ; preds = %682
  %691 = load ptr, ptr %5, align 8, !tbaa !6
  %692 = call i32 @GetImagePixelCacheType(ptr noundef %691) #21
  %693 = icmp eq i32 %692, 3
  br i1 %693, label %700, label %694

694:                                              ; preds = %690
  %695 = load ptr, ptr %5, align 8, !tbaa !6
  %696 = call i32 @GetImagePixelCacheType(ptr noundef %695) #21
  %697 = icmp eq i32 %696, 3
  br i1 %697, label %700, label %698

698:                                              ; preds = %694
  %699 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %704

700:                                              ; preds = %694, %690, %682
  %701 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %702 = icmp ult i64 %701, 2
  %703 = select i1 %702, i64 1, i64 2
  br label %704

704:                                              ; preds = %700, %698
  %705 = phi i64 [ %699, %698 ], [ %703, %700 ]
  %706 = trunc i64 %705 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %29, i32 %706)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @GetImageChannelFeatures.omp_outlined.11, ptr nonnull %27, ptr nonnull %23, ptr nonnull %19, ptr nonnull %9, ptr nonnull %5, ptr nonnull %12, ptr nonnull %15, ptr nonnull %16, ptr nonnull %11, ptr nonnull %13, ptr nonnull %17, ptr nonnull %8)
  %707 = call ptr @ResetMagickMemory(ptr noundef nonnull %23, i32 noundef 0, i64 noundef 160) #21
  %708 = call ptr @ResetMagickMemory(ptr noundef nonnull %22, i32 noundef 0, i64 noundef 160) #21
  %709 = load i32, ptr %27, align 4, !tbaa !28
  %710 = zext i32 %709 to i64
  %711 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %712 = shl i64 %711, 5
  %713 = icmp ult i64 %712, %710
  br i1 %713, label %714, label %724

714:                                              ; preds = %704
  %715 = load ptr, ptr %5, align 8, !tbaa !6
  %716 = call i32 @GetImagePixelCacheType(ptr noundef %715) #21
  %717 = icmp eq i32 %716, 3
  br i1 %717, label %724, label %718

718:                                              ; preds = %714
  %719 = load ptr, ptr %5, align 8, !tbaa !6
  %720 = call i32 @GetImagePixelCacheType(ptr noundef %719) #21
  %721 = icmp eq i32 %720, 3
  br i1 %721, label %724, label %722

722:                                              ; preds = %718
  %723 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %728

724:                                              ; preds = %718, %714, %704
  %725 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %726 = icmp ult i64 %725, 2
  %727 = select i1 %726, i64 1, i64 2
  br label %728

728:                                              ; preds = %724, %722
  %729 = phi i64 [ %723, %722 ], [ %727, %724 ]
  %730 = trunc i64 %729 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %29, i32 %730)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @GetImageChannelFeatures.omp_outlined.12, ptr nonnull %27, ptr nonnull %23, ptr nonnull %12, ptr nonnull %5, ptr nonnull %22, ptr nonnull %8, ptr nonnull %14, ptr nonnull %11, ptr nonnull %18, ptr nonnull %13, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17)
  %731 = load i32, ptr %27, align 4, !tbaa !28
  %732 = zext i32 %731 to i64
  %733 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %734 = shl i64 %733, 5
  %735 = icmp ult i64 %734, %732
  br i1 %735, label %736, label %746

736:                                              ; preds = %728
  %737 = load ptr, ptr %5, align 8, !tbaa !6
  %738 = call i32 @GetImagePixelCacheType(ptr noundef %737) #21
  %739 = icmp eq i32 %738, 3
  br i1 %739, label %746, label %740

740:                                              ; preds = %736
  %741 = load ptr, ptr %5, align 8, !tbaa !6
  %742 = call i32 @GetImagePixelCacheType(ptr noundef %741) #21
  %743 = icmp eq i32 %742, 3
  br i1 %743, label %746, label %744

744:                                              ; preds = %740
  %745 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %750

746:                                              ; preds = %740, %736, %728
  %747 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %748 = icmp ult i64 %747, 2
  %749 = select i1 %748, i64 1, i64 2
  br label %750

750:                                              ; preds = %746, %744
  %751 = phi i64 [ %745, %744 ], [ %749, %746 ]
  %752 = trunc i64 %751 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %29, i32 %752)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @GetImageChannelFeatures.omp_outlined.13, ptr nonnull %27, ptr nonnull %9, ptr nonnull %5, ptr nonnull %20, ptr nonnull %11, ptr nonnull %13, ptr nonnull %8)
  %753 = load ptr, ptr %21, align 8, !tbaa !6
  %754 = call ptr @RelinquishMagickMemory(ptr noundef %753) #21
  store ptr %754, ptr %21, align 8, !tbaa !6
  %755 = load i32, ptr %27, align 4, !tbaa !28
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %769, label %757

757:                                              ; preds = %750, %757
  %758 = phi i64 [ %765, %757 ], [ 0, %750 ]
  %759 = load ptr, ptr %20, align 8, !tbaa !6
  %760 = getelementptr inbounds ptr, ptr %759, i64 %758
  %761 = load ptr, ptr %760, align 8, !tbaa !6
  %762 = call ptr @RelinquishMagickMemory(ptr noundef %761) #21
  %763 = load ptr, ptr %20, align 8, !tbaa !6
  %764 = getelementptr inbounds ptr, ptr %763, i64 %758
  store ptr %762, ptr %764, align 8, !tbaa !6
  %765 = add nuw nsw i64 %758, 1
  %766 = load i32, ptr %27, align 4, !tbaa !28
  %767 = zext i32 %766 to i64
  %768 = icmp ult i64 %765, %767
  br i1 %768, label %757, label %769, !llvm.loop !95

769:                                              ; preds = %757, %750
  %770 = load ptr, ptr %20, align 8, !tbaa !6
  %771 = call ptr @RelinquishMagickMemory(ptr noundef %770) #21
  store ptr %771, ptr %20, align 8, !tbaa !6
  %772 = load ptr, ptr %13, align 8, !tbaa !6
  %773 = call ptr @RelinquishMagickMemory(ptr noundef %772) #21
  store ptr %773, ptr %13, align 8, !tbaa !6
  %774 = load ptr, ptr %12, align 8, !tbaa !6
  %775 = call ptr @RelinquishMagickMemory(ptr noundef %774) #21
  store ptr %775, ptr %12, align 8, !tbaa !6
  %776 = load ptr, ptr %11, align 8, !tbaa !6
  %777 = call ptr @RelinquishMagickMemory(ptr noundef %776) #21
  store ptr %777, ptr %11, align 8, !tbaa !6
  %778 = load i32, ptr %27, align 4, !tbaa !28
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %792, label %780

780:                                              ; preds = %769, %780
  %781 = phi i64 [ %788, %780 ], [ 0, %769 ]
  %782 = load ptr, ptr %9, align 8, !tbaa !6
  %783 = getelementptr inbounds ptr, ptr %782, i64 %781
  %784 = load ptr, ptr %783, align 8, !tbaa !6
  %785 = call ptr @RelinquishMagickMemory(ptr noundef %784) #21
  %786 = load ptr, ptr %9, align 8, !tbaa !6
  %787 = getelementptr inbounds ptr, ptr %786, i64 %781
  store ptr %785, ptr %787, align 8, !tbaa !6
  %788 = add nuw nsw i64 %781, 1
  %789 = load i32, ptr %27, align 4, !tbaa !28
  %790 = zext i32 %789 to i64
  %791 = icmp ult i64 %788, %790
  br i1 %791, label %780, label %792, !llvm.loop !96

792:                                              ; preds = %780, %769
  %793 = load ptr, ptr %9, align 8, !tbaa !6
  %794 = call ptr @RelinquishMagickMemory(ptr noundef %793) #21
  %795 = load ptr, ptr %8, align 8, !tbaa !6
  br label %796

796:                                              ; preds = %36, %41, %792, %576, %299, %232, %88, %65
  %797 = phi ptr [ %66, %65 ], [ %91, %88 ], [ %235, %232 ], [ %308, %299 ], [ %578, %576 ], [ %795, %792 ], [ null, %41 ], [ null, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %24) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %23) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %22) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %19) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  ret ptr %797
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetImageChannelFeatures.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6) #3 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %2, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !27
  %15 = add nsw i64 %14, -1
  %16 = icmp sgt i64 %14, 0
  br i1 %16, label %17, label %108

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  store i64 0, ptr %8, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  store i64 %15, ptr %9, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  store i64 1, ptr %10, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  store i32 0, ptr %11, align 4, !tbaa !28
  %18 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, i64 1, i64 4)
  %19 = load i64, ptr %9, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 %15)
  store i64 %20, ptr %9, align 8, !tbaa !36
  %21 = load i64, ptr %8, align 8, !tbaa !36
  %22 = icmp sgt i64 %21, %20
  br i1 %22, label %107, label %23

23:                                               ; preds = %17, %99
  %24 = phi i64 [ %105, %99 ], [ %20, %17 ]
  %25 = phi i64 [ %103, %99 ], [ %21, %17 ]
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %99, label %27

27:                                               ; preds = %23, %93
  %28 = phi i64 [ %94, %93 ], [ %25, %23 ]
  %29 = load i32, ptr %3, align 4, !tbaa !28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %93, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8, !tbaa !6
  %33 = load ptr, ptr %2, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct._Image, ptr %33, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !26
  %36 = load ptr, ptr %5, align 8, !tbaa !6
  %37 = call ptr @GetCacheViewVirtualPixels(ptr noundef %32, i64 noundef 0, i64 noundef %28, i64 noundef %35, i64 noundef 1, ptr noundef %36) #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %93

40:                                               ; preds = %31
  %41 = load ptr, ptr %4, align 8, !tbaa !6
  %42 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %41) #21
  %43 = load ptr, ptr %2, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !26
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %40
  %48 = load ptr, ptr %6, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !56
  %51 = icmp eq i32 %50, 12
  %52 = icmp eq ptr %42, null
  %53 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !57
  %55 = icmp eq i32 %54, 0
  br label %56

56:                                               ; preds = %47, %89
  %57 = phi i64 [ 0, %47 ], [ %91, %89 ]
  %58 = phi ptr [ %37, %47 ], [ %90, %89 ]
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !44
  %61 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %60) #23, !range !69
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds %struct._LongPixelPacket, ptr %48, i64 %62
  store i32 %61, ptr %63, align 4, !tbaa !58
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !45
  %66 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %65) #23, !range !69
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds %struct._LongPixelPacket, ptr %48, i64 %67, i32 1
  store i32 %66, ptr %68, align 4, !tbaa !60
  %69 = load i16, ptr %58, align 2, !tbaa !46
  %70 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %69) #23, !range !69
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds %struct._LongPixelPacket, ptr %48, i64 %71, i32 2
  store i32 %70, ptr %72, align 4, !tbaa !61
  br i1 %51, label %73, label %82

73:                                               ; preds = %56
  br i1 %52, label %77, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds i16, ptr %42, i64 %57
  %76 = load i16, ptr %75, align 2, !tbaa !80
  br label %77

77:                                               ; preds = %73, %74
  %78 = phi i16 [ %76, %74 ], [ 0, %73 ]
  %79 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %78) #23, !range !69
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds %struct._LongPixelPacket, ptr %48, i64 %80, i32 4
  store i32 %79, ptr %81, align 4, !tbaa !62
  br label %82

82:                                               ; preds = %77, %56
  br i1 %55, label %89, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !84
  %86 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %85) #23, !range !69
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds %struct._LongPixelPacket, ptr %48, i64 %87, i32 3
  store i32 %86, ptr %88, align 4, !tbaa !63
  br label %89

89:                                               ; preds = %83, %82
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %91 = add nuw nsw i64 %57, 1
  %92 = icmp eq i64 %91, %45
  br i1 %92, label %93, label %56, !llvm.loop !97

93:                                               ; preds = %89, %40, %27, %39
  %94 = add nsw i64 %28, 1
  %95 = load i64, ptr %9, align 8, !tbaa !36
  %96 = icmp slt i64 %28, %95
  br i1 %96, label %27, label %97

97:                                               ; preds = %93
  %98 = load i64, ptr %8, align 8, !tbaa !36
  br label %99

99:                                               ; preds = %97, %23
  %100 = phi i64 [ %25, %23 ], [ %98, %97 ]
  %101 = phi i64 [ %24, %23 ], [ %95, %97 ]
  %102 = load i64, ptr %10, align 8, !tbaa !36
  %103 = add nsw i64 %102, %100
  store i64 %103, ptr %8, align 8, !tbaa !36
  %104 = add nsw i64 %102, %101
  %105 = call i64 @llvm.smin.i64(i64 %104, i64 %15)
  store i64 %105, ptr %9, align 8, !tbaa !36
  %106 = icmp sgt i64 %103, %105
  br i1 %106, label %107, label %23

107:                                              ; preds = %99, %17
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  br label %108

108:                                              ; preds = %107, %7
  ret void
}

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @ScaleQuantumToMap(i16 noundef zeroext %0) unnamed_addr #13 {
  %2 = zext i16 %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #13 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetImageChannelFeatures.omp_outlined.9(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull align 8 dereferenceable(160) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull align 8 dereferenceable(160) %11, ptr nocapture noundef nonnull align 8 dereferenceable(160) %12) #3 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 0, ptr %14, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 3, ptr %15, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 1, ptr %16, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #4
  store i32 0, ptr %17, align 4, !tbaa !28
  %18 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %18, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %19 = load i64, ptr %15, align 8
  %20 = call i64 @llvm.smin.i64(i64 %19, i64 3)
  store i64 %20, ptr %15, align 8, !tbaa !36
  %21 = load i64, ptr %14, align 8, !tbaa !36
  %22 = icmp sgt i64 %21, %20
  br i1 %22, label %527, label %23

23:                                               ; preds = %13, %519
  %24 = phi i64 [ %525, %519 ], [ %20, %13 ]
  %25 = phi i64 [ %523, %519 ], [ %21, %13 ]
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %519, label %27

27:                                               ; preds = %23, %513
  %28 = phi i64 [ %514, %513 ], [ %25, %23 ]
  %29 = load i32, ptr %2, align 4, !tbaa !28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %28
  %33 = load double, ptr %32, align 8, !tbaa !72
  br label %405

34:                                               ; preds = %27
  %35 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %28
  %36 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %28, i32 2
  %37 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %28, i32 4
  %38 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %28, i32 3
  %39 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %28
  %40 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %28
  %41 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %28, i32 2
  %42 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %28, i32 2
  %43 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %28, i32 4
  %44 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %28, i32 4
  %45 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %28, i32 3
  %46 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %28, i32 3
  %47 = load ptr, ptr %5, align 8, !tbaa !6
  br label %48

48:                                               ; preds = %34, %399
  %49 = phi ptr [ %47, %34 ], [ %352, %399 ]
  %50 = phi i32 [ 1, %34 ], [ %353, %399 ]
  %51 = phi i64 [ 0, %34 ], [ %400, %399 ]
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !56
  br label %351

56:                                               ; preds = %48
  %57 = load ptr, ptr %4, align 8, !tbaa !6
  %58 = load ptr, ptr %3, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !56
  br label %61

61:                                               ; preds = %56, %346
  %62 = phi i32 [ %304, %346 ], [ %60, %56 ]
  %63 = phi ptr [ %285, %346 ], [ %49, %56 ]
  %64 = phi ptr [ %286, %346 ], [ %58, %56 ]
  %65 = phi ptr [ %287, %346 ], [ %57, %56 ]
  %66 = phi i64 [ %347, %346 ], [ 0, %56 ]
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds %struct._ChannelStatistics, ptr %68, i64 %51
  %70 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28
  %71 = load double, ptr %70, align 8, !tbaa !72
  %72 = getelementptr inbounds %struct._ChannelFeatures, ptr %64, i64 1
  %73 = getelementptr inbounds [4 x double], ptr %72, i64 0, i64 %28
  %74 = load double, ptr %73, align 8, !tbaa !32
  %75 = call double @llvm.fmuladd.f64(double %71, double %71, double %74)
  store double %75, ptr %73, align 8, !tbaa !32
  %76 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 1
  %77 = load double, ptr %76, align 8, !tbaa !76
  %78 = getelementptr inbounds %struct._ChannelFeatures, ptr %64, i64 2
  %79 = getelementptr inbounds [4 x double], ptr %78, i64 0, i64 %28
  %80 = load double, ptr %79, align 8, !tbaa !32
  %81 = call double @llvm.fmuladd.f64(double %77, double %77, double %80)
  store double %81, ptr %79, align 8, !tbaa !32
  %82 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 2
  %83 = load double, ptr %82, align 8, !tbaa !79
  %84 = getelementptr inbounds %struct._ChannelFeatures, ptr %64, i64 4
  %85 = getelementptr inbounds [4 x double], ptr %84, i64 0, i64 %28
  %86 = load double, ptr %85, align 8, !tbaa !32
  %87 = call double @llvm.fmuladd.f64(double %83, double %83, double %86)
  store double %87, ptr %85, align 8, !tbaa !32
  %88 = icmp eq i32 %62, 12
  br i1 %88, label %89, label %96

89:                                               ; preds = %61
  %90 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 4
  %91 = load double, ptr %90, align 8, !tbaa !83
  %92 = getelementptr inbounds %struct._ChannelFeatures, ptr %64, i64 32
  %93 = getelementptr inbounds [4 x double], ptr %92, i64 0, i64 %28
  %94 = load double, ptr %93, align 8, !tbaa !32
  %95 = call double @llvm.fmuladd.f64(double %91, double %91, double %94)
  store double %95, ptr %93, align 8, !tbaa !32
  br label %96

96:                                               ; preds = %89, %61
  %97 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 6
  %98 = load i32, ptr %97, align 8, !tbaa !57
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 3
  %102 = load double, ptr %101, align 8, !tbaa !87
  %103 = getelementptr inbounds %struct._ChannelFeatures, ptr %64, i64 8
  %104 = getelementptr inbounds [4 x double], ptr %103, i64 0, i64 %28
  %105 = load double, ptr %104, align 8, !tbaa !32
  %106 = call double @llvm.fmuladd.f64(double %102, double %102, double %105)
  store double %106, ptr %104, align 8, !tbaa !32
  br label %107

107:                                              ; preds = %100, %96
  %108 = load ptr, ptr %6, align 8, !tbaa !6
  %109 = getelementptr inbounds %struct._ChannelStatistics, ptr %108, i64 %51
  %110 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %109, i64 0, i64 %28
  %111 = load <2 x double>, ptr %70, align 8, !tbaa !32
  %112 = load <2 x double>, ptr %110, align 8, !tbaa !32
  %113 = fadd <2 x double> %111, %112
  store <2 x double> %113, ptr %110, align 8, !tbaa !32
  %114 = load double, ptr %82, align 8, !tbaa !79
  %115 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %109, i64 0, i64 %28, i32 2
  %116 = load double, ptr %115, align 8, !tbaa !79
  %117 = fadd double %114, %116
  store double %117, ptr %115, align 8, !tbaa !79
  br i1 %88, label %118, label %124

118:                                              ; preds = %107
  %119 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 4
  %120 = load double, ptr %119, align 8, !tbaa !83
  %121 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %109, i64 0, i64 %28, i32 4
  %122 = load double, ptr %121, align 8, !tbaa !83
  %123 = fadd double %120, %122
  store double %123, ptr %121, align 8, !tbaa !83
  br label %124

124:                                              ; preds = %118, %107
  br i1 %99, label %131, label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 3
  %127 = load double, ptr %126, align 8, !tbaa !87
  %128 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %109, i64 0, i64 %28, i32 3
  %129 = load double, ptr %128, align 8, !tbaa !87
  %130 = fadd double %127, %129
  store double %130, ptr %128, align 8, !tbaa !87
  br label %131

131:                                              ; preds = %125, %124
  %132 = mul nuw nsw i64 %66, %51
  %133 = sitofp i64 %132 to double
  %134 = load <2 x double>, ptr %70, align 8, !tbaa !32
  %135 = load <2 x double>, ptr %35, align 8, !tbaa !32
  %136 = insertelement <2 x double> poison, double %133, i64 0
  %137 = shufflevector <2 x double> %136, <2 x double> poison, <2 x i32> zeroinitializer
  %138 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %137, <2 x double> %134, <2 x double> %135)
  store <2 x double> %138, ptr %35, align 8, !tbaa !32
  %139 = load double, ptr %82, align 8, !tbaa !79
  %140 = load double, ptr %36, align 8, !tbaa !79
  %141 = call double @llvm.fmuladd.f64(double %133, double %139, double %140)
  store double %141, ptr %36, align 8, !tbaa !79
  br i1 %88, label %142, label %147

142:                                              ; preds = %131
  %143 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 4
  %144 = load double, ptr %143, align 8, !tbaa !83
  %145 = load double, ptr %37, align 8, !tbaa !83
  %146 = call double @llvm.fmuladd.f64(double %133, double %144, double %145)
  store double %146, ptr %37, align 8, !tbaa !83
  br label %147

147:                                              ; preds = %142, %131
  br i1 %99, label %153, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 3
  %150 = load double, ptr %149, align 8, !tbaa !87
  %151 = load double, ptr %38, align 8, !tbaa !87
  %152 = call double @llvm.fmuladd.f64(double %133, double %150, double %151)
  store double %152, ptr %38, align 8, !tbaa !87
  br label %153

153:                                              ; preds = %148, %147
  %154 = load double, ptr %70, align 8, !tbaa !72
  %155 = sub nsw i64 %51, %66
  %156 = mul nsw i64 %155, %155
  %157 = add nuw nsw i64 %156, 1
  %158 = sitofp i64 %157 to double
  %159 = fdiv double %154, %158
  %160 = getelementptr inbounds %struct._ChannelFeatures, ptr %64, i64 1, i32 4, i64 %28
  %161 = load double, ptr %160, align 8, !tbaa !32
  %162 = fadd double %161, %159
  store double %162, ptr %160, align 8, !tbaa !32
  %163 = load double, ptr %76, align 8, !tbaa !76
  %164 = fdiv double %163, %158
  %165 = getelementptr inbounds %struct._ChannelFeatures, ptr %64, i64 2, i32 4, i64 %28
  %166 = load double, ptr %165, align 8, !tbaa !32
  %167 = fadd double %166, %164
  store double %167, ptr %165, align 8, !tbaa !32
  %168 = load double, ptr %82, align 8, !tbaa !79
  %169 = fdiv double %168, %158
  %170 = getelementptr inbounds %struct._ChannelFeatures, ptr %64, i64 4, i32 4, i64 %28
  %171 = load double, ptr %170, align 8, !tbaa !32
  %172 = fadd double %171, %169
  store double %172, ptr %170, align 8, !tbaa !32
  br i1 %88, label %173, label %180

173:                                              ; preds = %153
  %174 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 4
  %175 = load double, ptr %174, align 8, !tbaa !83
  %176 = fdiv double %175, %158
  %177 = getelementptr inbounds %struct._ChannelFeatures, ptr %64, i64 32, i32 4, i64 %28
  %178 = load double, ptr %177, align 8, !tbaa !32
  %179 = fadd double %178, %176
  store double %179, ptr %177, align 8, !tbaa !32
  br label %180

180:                                              ; preds = %173, %153
  br i1 %99, label %188, label %181

181:                                              ; preds = %180
  %182 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 3
  %183 = load double, ptr %182, align 8, !tbaa !87
  %184 = fdiv double %183, %158
  %185 = getelementptr inbounds %struct._ChannelFeatures, ptr %64, i64 8, i32 4, i64 %28
  %186 = load double, ptr %185, align 8, !tbaa !32
  %187 = fadd double %186, %184
  store double %187, ptr %185, align 8, !tbaa !32
  br label %188

188:                                              ; preds = %181, %180
  %189 = load ptr, ptr %8, align 8, !tbaa !6
  %190 = getelementptr %struct._ChannelStatistics, ptr %189, i64 %51
  %191 = getelementptr %struct._ChannelStatistics, ptr %190, i64 %66
  %192 = getelementptr %struct._ChannelStatistics, ptr %191, i64 2
  %193 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %192, i64 0, i64 %28
  %194 = load <2 x double>, ptr %70, align 8, !tbaa !32
  %195 = load <2 x double>, ptr %193, align 8, !tbaa !32
  %196 = fadd <2 x double> %194, %195
  store <2 x double> %196, ptr %193, align 8, !tbaa !32
  %197 = load double, ptr %82, align 8, !tbaa !79
  %198 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %192, i64 0, i64 %28, i32 2
  %199 = load double, ptr %198, align 8, !tbaa !79
  %200 = fadd double %197, %199
  store double %200, ptr %198, align 8, !tbaa !79
  br i1 %88, label %201, label %207

201:                                              ; preds = %188
  %202 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 4
  %203 = load double, ptr %202, align 8, !tbaa !83
  %204 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %192, i64 0, i64 %28, i32 4
  %205 = load double, ptr %204, align 8, !tbaa !83
  %206 = fadd double %203, %205
  store double %206, ptr %204, align 8, !tbaa !83
  br label %207

207:                                              ; preds = %201, %188
  br i1 %99, label %214, label %208

208:                                              ; preds = %207
  %209 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %69, i64 0, i64 %28, i32 3
  %210 = load double, ptr %209, align 8, !tbaa !87
  %211 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %192, i64 0, i64 %28, i32 3
  %212 = load double, ptr %211, align 8, !tbaa !87
  %213 = fadd double %210, %212
  store double %213, ptr %211, align 8, !tbaa !87
  br label %214

214:                                              ; preds = %208, %207
  %215 = load double, ptr %70, align 8, !tbaa !72
  %216 = call fastcc double @MagickLog10(double noundef %215) #23
  %217 = load ptr, ptr %3, align 8, !tbaa !6
  %218 = getelementptr inbounds %struct._ChannelFeatures, ptr %217, i64 1, i32 8, i64 %28
  %219 = load double, ptr %218, align 8, !tbaa !32
  %220 = fneg double %215
  %221 = call double @llvm.fmuladd.f64(double %220, double %216, double %219)
  store double %221, ptr %218, align 8, !tbaa !32
  %222 = load ptr, ptr %4, align 8, !tbaa !6
  %223 = getelementptr inbounds ptr, ptr %222, i64 %66
  %224 = load ptr, ptr %223, align 8, !tbaa !6
  %225 = getelementptr inbounds %struct._ChannelStatistics, ptr %224, i64 %51
  %226 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %225, i64 0, i64 %28, i32 1
  %227 = load double, ptr %226, align 8, !tbaa !76
  %228 = call fastcc double @MagickLog10(double noundef %227) #23
  %229 = load ptr, ptr %3, align 8, !tbaa !6
  %230 = getelementptr inbounds %struct._ChannelFeatures, ptr %229, i64 2, i32 8, i64 %28
  %231 = load double, ptr %230, align 8, !tbaa !32
  %232 = fneg double %227
  %233 = call double @llvm.fmuladd.f64(double %232, double %228, double %231)
  store double %233, ptr %230, align 8, !tbaa !32
  %234 = load ptr, ptr %4, align 8, !tbaa !6
  %235 = getelementptr inbounds ptr, ptr %234, i64 %66
  %236 = load ptr, ptr %235, align 8, !tbaa !6
  %237 = getelementptr inbounds %struct._ChannelStatistics, ptr %236, i64 %51
  %238 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %237, i64 0, i64 %28, i32 2
  %239 = load double, ptr %238, align 8, !tbaa !79
  %240 = call fastcc double @MagickLog10(double noundef %239) #23
  %241 = load ptr, ptr %3, align 8, !tbaa !6
  %242 = getelementptr inbounds %struct._ChannelFeatures, ptr %241, i64 4, i32 8, i64 %28
  %243 = load double, ptr %242, align 8, !tbaa !32
  %244 = fneg double %239
  %245 = call double @llvm.fmuladd.f64(double %244, double %240, double %243)
  store double %245, ptr %242, align 8, !tbaa !32
  %246 = load ptr, ptr %5, align 8, !tbaa !6
  %247 = getelementptr inbounds %struct._Image, ptr %246, i64 0, i32 1
  %248 = load i32, ptr %247, align 4, !tbaa !56
  %249 = icmp eq i32 %248, 12
  br i1 %249, label %250, label %264

250:                                              ; preds = %214
  %251 = load ptr, ptr %4, align 8, !tbaa !6
  %252 = getelementptr inbounds ptr, ptr %251, i64 %66
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  %254 = getelementptr inbounds %struct._ChannelStatistics, ptr %253, i64 %51
  %255 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %254, i64 0, i64 %28, i32 4
  %256 = load double, ptr %255, align 8, !tbaa !83
  %257 = call fastcc double @MagickLog10(double noundef %256) #23
  %258 = load ptr, ptr %3, align 8, !tbaa !6
  %259 = getelementptr inbounds %struct._ChannelFeatures, ptr %258, i64 32, i32 8, i64 %28
  %260 = load double, ptr %259, align 8, !tbaa !32
  %261 = fneg double %256
  %262 = call double @llvm.fmuladd.f64(double %261, double %257, double %260)
  store double %262, ptr %259, align 8, !tbaa !32
  %263 = load ptr, ptr %5, align 8, !tbaa !6
  br label %264

264:                                              ; preds = %250, %214
  %265 = phi ptr [ %263, %250 ], [ %246, %214 ]
  %266 = phi ptr [ %258, %250 ], [ %241, %214 ]
  %267 = getelementptr inbounds %struct._Image, ptr %265, i64 0, i32 6
  %268 = load i32, ptr %267, align 8, !tbaa !57
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %284, label %270

270:                                              ; preds = %264
  %271 = load ptr, ptr %4, align 8, !tbaa !6
  %272 = getelementptr inbounds ptr, ptr %271, i64 %66
  %273 = load ptr, ptr %272, align 8, !tbaa !6
  %274 = getelementptr inbounds %struct._ChannelStatistics, ptr %273, i64 %51
  %275 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %274, i64 0, i64 %28, i32 3
  %276 = load double, ptr %275, align 8, !tbaa !87
  %277 = call fastcc double @MagickLog10(double noundef %276) #23
  %278 = load ptr, ptr %3, align 8, !tbaa !6
  %279 = getelementptr inbounds %struct._ChannelFeatures, ptr %278, i64 8, i32 8, i64 %28
  %280 = load double, ptr %279, align 8, !tbaa !32
  %281 = fneg double %276
  %282 = call double @llvm.fmuladd.f64(double %281, double %277, double %280)
  store double %282, ptr %279, align 8, !tbaa !32
  %283 = load ptr, ptr %5, align 8, !tbaa !6
  br label %284

284:                                              ; preds = %270, %264
  %285 = phi ptr [ %283, %270 ], [ %265, %264 ]
  %286 = phi ptr [ %278, %270 ], [ %266, %264 ]
  %287 = load ptr, ptr %4, align 8, !tbaa !6
  %288 = getelementptr inbounds ptr, ptr %287, i64 %66
  %289 = load ptr, ptr %288, align 8, !tbaa !6
  %290 = getelementptr inbounds %struct._ChannelStatistics, ptr %289, i64 %51
  %291 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %290, i64 0, i64 %28
  %292 = load ptr, ptr %9, align 8, !tbaa !6
  %293 = getelementptr inbounds %struct._ChannelStatistics, ptr %292, i64 %66
  %294 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %293, i64 0, i64 %28
  %295 = load <2 x double>, ptr %291, align 8, !tbaa !32
  %296 = load <2 x double>, ptr %294, align 8, !tbaa !32
  %297 = fadd <2 x double> %295, %296
  store <2 x double> %297, ptr %294, align 8, !tbaa !32
  %298 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %290, i64 0, i64 %28, i32 2
  %299 = load double, ptr %298, align 8, !tbaa !79
  %300 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %293, i64 0, i64 %28, i32 2
  %301 = load double, ptr %300, align 8, !tbaa !79
  %302 = fadd double %299, %301
  store double %302, ptr %300, align 8, !tbaa !79
  %303 = getelementptr inbounds %struct._Image, ptr %285, i64 0, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !56
  %305 = icmp eq i32 %304, 12
  br i1 %305, label %306, label %312

306:                                              ; preds = %284
  %307 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %290, i64 0, i64 %28, i32 4
  %308 = load double, ptr %307, align 8, !tbaa !83
  %309 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %293, i64 0, i64 %28, i32 4
  %310 = load double, ptr %309, align 8, !tbaa !83
  %311 = fadd double %308, %310
  store double %311, ptr %309, align 8, !tbaa !83
  br label %312

312:                                              ; preds = %306, %284
  %313 = getelementptr inbounds %struct._Image, ptr %285, i64 0, i32 6
  %314 = load i32, ptr %313, align 8, !tbaa !57
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %290, i64 0, i64 %28, i32 3
  %318 = load double, ptr %317, align 8, !tbaa !87
  %319 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %293, i64 0, i64 %28, i32 3
  %320 = load double, ptr %319, align 8, !tbaa !87
  %321 = fadd double %318, %320
  store double %321, ptr %319, align 8, !tbaa !87
  br label %322

322:                                              ; preds = %316, %312
  %323 = load ptr, ptr %10, align 8, !tbaa !6
  %324 = getelementptr inbounds %struct._ChannelStatistics, ptr %323, i64 %51
  %325 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %324, i64 0, i64 %28
  %326 = load <2 x double>, ptr %291, align 8, !tbaa !32
  %327 = load <2 x double>, ptr %325, align 8, !tbaa !32
  %328 = fadd <2 x double> %326, %327
  store <2 x double> %328, ptr %325, align 8, !tbaa !32
  %329 = load double, ptr %298, align 8, !tbaa !79
  %330 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %324, i64 0, i64 %28, i32 2
  %331 = load double, ptr %330, align 8, !tbaa !79
  %332 = fadd double %329, %331
  store double %332, ptr %330, align 8, !tbaa !79
  br i1 %305, label %333, label %339

333:                                              ; preds = %322
  %334 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %290, i64 0, i64 %28, i32 4
  %335 = load double, ptr %334, align 8, !tbaa !83
  %336 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %324, i64 0, i64 %28, i32 4
  %337 = load double, ptr %336, align 8, !tbaa !83
  %338 = fadd double %335, %337
  store double %338, ptr %336, align 8, !tbaa !83
  br label %339

339:                                              ; preds = %333, %322
  br i1 %315, label %346, label %340

340:                                              ; preds = %339
  %341 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %290, i64 0, i64 %28, i32 3
  %342 = load double, ptr %341, align 8, !tbaa !87
  %343 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %324, i64 0, i64 %28, i32 3
  %344 = load double, ptr %343, align 8, !tbaa !87
  %345 = fadd double %342, %344
  store double %345, ptr %343, align 8, !tbaa !87
  br label %346

346:                                              ; preds = %339, %340
  %347 = add nuw nsw i64 %66, 1
  %348 = load i32, ptr %2, align 4, !tbaa !28
  %349 = zext i32 %348 to i64
  %350 = icmp ult i64 %347, %349
  br i1 %350, label %61, label %351, !llvm.loop !98

351:                                              ; preds = %346, %53
  %352 = phi ptr [ %49, %53 ], [ %285, %346 ]
  %353 = phi i32 [ 0, %53 ], [ %348, %346 ]
  %354 = phi i32 [ %55, %53 ], [ %304, %346 ]
  %355 = sitofp i64 %51 to double
  %356 = load ptr, ptr %6, align 8, !tbaa !6
  %357 = getelementptr inbounds %struct._ChannelStatistics, ptr %356, i64 %51
  %358 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %357, i64 0, i64 %28
  %359 = mul nsw i64 %51, %51
  %360 = sitofp i64 %359 to double
  %361 = load <2 x double>, ptr %358, align 8, !tbaa !32
  %362 = load <2 x double>, ptr %39, align 8, !tbaa !32
  %363 = insertelement <2 x double> poison, double %355, i64 0
  %364 = shufflevector <2 x double> %363, <2 x double> poison, <2 x i32> zeroinitializer
  %365 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %364, <2 x double> %361, <2 x double> %362)
  store <2 x double> %365, ptr %39, align 8, !tbaa !32
  %366 = load <2 x double>, ptr %358, align 8, !tbaa !32
  %367 = load <2 x double>, ptr %40, align 8, !tbaa !32
  %368 = insertelement <2 x double> poison, double %360, i64 0
  %369 = shufflevector <2 x double> %368, <2 x double> poison, <2 x i32> zeroinitializer
  %370 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %369, <2 x double> %366, <2 x double> %367)
  store <2 x double> %370, ptr %40, align 8, !tbaa !32
  %371 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %357, i64 0, i64 %28, i32 2
  %372 = load double, ptr %371, align 8, !tbaa !79
  %373 = load double, ptr %41, align 8, !tbaa !79
  %374 = call double @llvm.fmuladd.f64(double %355, double %372, double %373)
  store double %374, ptr %41, align 8, !tbaa !79
  %375 = load double, ptr %371, align 8, !tbaa !79
  %376 = load double, ptr %42, align 8, !tbaa !79
  %377 = call double @llvm.fmuladd.f64(double %360, double %375, double %376)
  store double %377, ptr %42, align 8, !tbaa !79
  %378 = icmp eq i32 %354, 12
  br i1 %378, label %379, label %387

379:                                              ; preds = %351
  %380 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %357, i64 0, i64 %28, i32 4
  %381 = load double, ptr %380, align 8, !tbaa !83
  %382 = load double, ptr %43, align 8, !tbaa !83
  %383 = call double @llvm.fmuladd.f64(double %355, double %381, double %382)
  store double %383, ptr %43, align 8, !tbaa !83
  %384 = load double, ptr %380, align 8, !tbaa !83
  %385 = load double, ptr %44, align 8, !tbaa !83
  %386 = call double @llvm.fmuladd.f64(double %360, double %384, double %385)
  store double %386, ptr %44, align 8, !tbaa !83
  br label %387

387:                                              ; preds = %379, %351
  %388 = getelementptr inbounds %struct._Image, ptr %352, i64 0, i32 6
  %389 = load i32, ptr %388, align 8, !tbaa !57
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %399, label %391

391:                                              ; preds = %387
  %392 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %357, i64 0, i64 %28, i32 3
  %393 = load double, ptr %392, align 8, !tbaa !87
  %394 = load double, ptr %45, align 8, !tbaa !87
  %395 = call double @llvm.fmuladd.f64(double %355, double %393, double %394)
  store double %395, ptr %45, align 8, !tbaa !87
  %396 = load double, ptr %392, align 8, !tbaa !87
  %397 = load double, ptr %46, align 8, !tbaa !87
  %398 = call double @llvm.fmuladd.f64(double %360, double %396, double %397)
  store double %398, ptr %46, align 8, !tbaa !87
  br label %399

399:                                              ; preds = %391, %387
  %400 = add nuw nsw i64 %51, 1
  %401 = zext i32 %353 to i64
  %402 = icmp ult i64 %400, %401
  br i1 %402, label %48, label %403, !llvm.loop !99

403:                                              ; preds = %399
  %404 = extractelement <2 x double> %370, i64 0
  br label %405

405:                                              ; preds = %403, %31
  %406 = phi double [ %33, %31 ], [ %404, %403 ]
  %407 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %28
  %408 = load double, ptr %407, align 8, !tbaa !72
  %409 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %28
  %410 = load double, ptr %409, align 8, !tbaa !72
  %411 = fneg double %410
  %412 = call double @llvm.fmuladd.f64(double %411, double %410, double %408)
  %413 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %28
  %414 = call double @llvm.fmuladd.f64(double %411, double %410, double %406)
  %415 = call double @sqrt(double noundef %414) #21
  %416 = load double, ptr %413, align 8, !tbaa !72
  %417 = load double, ptr %409, align 8, !tbaa !72
  %418 = fneg double %417
  %419 = call double @llvm.fmuladd.f64(double %418, double %417, double %416)
  %420 = call double @sqrt(double noundef %419) #21
  %421 = fmul double %415, %420
  %422 = fdiv double %412, %421
  %423 = load ptr, ptr %3, align 8, !tbaa !6
  %424 = getelementptr inbounds %struct._ChannelFeatures, ptr %423, i64 1, i32 2, i64 %28
  store double %422, ptr %424, align 8, !tbaa !32
  %425 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %28, i32 1
  %426 = load double, ptr %425, align 8, !tbaa !76
  %427 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %28, i32 1
  %428 = load double, ptr %427, align 8, !tbaa !76
  %429 = fneg double %428
  %430 = call double @llvm.fmuladd.f64(double %429, double %428, double %426)
  %431 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %28, i32 1
  %432 = load double, ptr %431, align 8, !tbaa !76
  %433 = call double @llvm.fmuladd.f64(double %429, double %428, double %432)
  %434 = call double @sqrt(double noundef %433) #21
  %435 = load double, ptr %431, align 8, !tbaa !76
  %436 = load double, ptr %427, align 8, !tbaa !76
  %437 = fneg double %436
  %438 = call double @llvm.fmuladd.f64(double %437, double %436, double %435)
  %439 = call double @sqrt(double noundef %438) #21
  %440 = fmul double %434, %439
  %441 = fdiv double %430, %440
  %442 = load ptr, ptr %3, align 8, !tbaa !6
  %443 = getelementptr inbounds %struct._ChannelFeatures, ptr %442, i64 2, i32 2, i64 %28
  store double %441, ptr %443, align 8, !tbaa !32
  %444 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %28, i32 2
  %445 = load double, ptr %444, align 8, !tbaa !79
  %446 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %28, i32 2
  %447 = load double, ptr %446, align 8, !tbaa !79
  %448 = fneg double %447
  %449 = call double @llvm.fmuladd.f64(double %448, double %447, double %445)
  %450 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %28, i32 2
  %451 = load double, ptr %450, align 8, !tbaa !79
  %452 = call double @llvm.fmuladd.f64(double %448, double %447, double %451)
  %453 = call double @sqrt(double noundef %452) #21
  %454 = load double, ptr %450, align 8, !tbaa !79
  %455 = load double, ptr %446, align 8, !tbaa !79
  %456 = fneg double %455
  %457 = call double @llvm.fmuladd.f64(double %456, double %455, double %454)
  %458 = call double @sqrt(double noundef %457) #21
  %459 = fmul double %453, %458
  %460 = fdiv double %449, %459
  %461 = load ptr, ptr %3, align 8, !tbaa !6
  %462 = getelementptr inbounds %struct._ChannelFeatures, ptr %461, i64 4, i32 2, i64 %28
  store double %460, ptr %462, align 8, !tbaa !32
  %463 = load ptr, ptr %5, align 8, !tbaa !6
  %464 = getelementptr inbounds %struct._Image, ptr %463, i64 0, i32 1
  %465 = load i32, ptr %464, align 4, !tbaa !56
  %466 = icmp eq i32 %465, 12
  br i1 %466, label %467, label %488

467:                                              ; preds = %405
  %468 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %28, i32 4
  %469 = load double, ptr %468, align 8, !tbaa !83
  %470 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %28, i32 4
  %471 = load double, ptr %470, align 8, !tbaa !83
  %472 = fneg double %471
  %473 = call double @llvm.fmuladd.f64(double %472, double %471, double %469)
  %474 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %28, i32 4
  %475 = load double, ptr %474, align 8, !tbaa !83
  %476 = call double @llvm.fmuladd.f64(double %472, double %471, double %475)
  %477 = call double @sqrt(double noundef %476) #21
  %478 = load double, ptr %474, align 8, !tbaa !83
  %479 = load double, ptr %470, align 8, !tbaa !83
  %480 = fneg double %479
  %481 = call double @llvm.fmuladd.f64(double %480, double %479, double %478)
  %482 = call double @sqrt(double noundef %481) #21
  %483 = fmul double %477, %482
  %484 = fdiv double %473, %483
  %485 = load ptr, ptr %3, align 8, !tbaa !6
  %486 = getelementptr inbounds %struct._ChannelFeatures, ptr %485, i64 32, i32 2, i64 %28
  store double %484, ptr %486, align 8, !tbaa !32
  %487 = load ptr, ptr %5, align 8, !tbaa !6
  br label %488

488:                                              ; preds = %467, %405
  %489 = phi ptr [ %487, %467 ], [ %463, %405 ]
  %490 = getelementptr inbounds %struct._Image, ptr %489, i64 0, i32 6
  %491 = load i32, ptr %490, align 8, !tbaa !57
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %513, label %493

493:                                              ; preds = %488
  %494 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %28, i32 3
  %495 = load double, ptr %494, align 8, !tbaa !87
  %496 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %28, i32 3
  %497 = load double, ptr %496, align 8, !tbaa !87
  %498 = fneg double %497
  %499 = call double @llvm.fmuladd.f64(double %498, double %497, double %495)
  %500 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %28, i32 3
  %501 = load double, ptr %500, align 8, !tbaa !87
  %502 = call double @llvm.fmuladd.f64(double %498, double %497, double %501)
  %503 = call double @sqrt(double noundef %502) #21
  %504 = load double, ptr %500, align 8, !tbaa !87
  %505 = load double, ptr %496, align 8, !tbaa !87
  %506 = fneg double %505
  %507 = call double @llvm.fmuladd.f64(double %506, double %505, double %504)
  %508 = call double @sqrt(double noundef %507) #21
  %509 = fmul double %503, %508
  %510 = fdiv double %499, %509
  %511 = load ptr, ptr %3, align 8, !tbaa !6
  %512 = getelementptr inbounds %struct._ChannelFeatures, ptr %511, i64 8, i32 2, i64 %28
  store double %510, ptr %512, align 8, !tbaa !32
  br label %513

513:                                              ; preds = %493, %488
  %514 = add nsw i64 %28, 1
  %515 = load i64, ptr %15, align 8, !tbaa !36
  %516 = icmp slt i64 %28, %515
  br i1 %516, label %27, label %517

517:                                              ; preds = %513
  %518 = load i64, ptr %14, align 8, !tbaa !36
  br label %519

519:                                              ; preds = %517, %23
  %520 = phi i64 [ %25, %23 ], [ %518, %517 ]
  %521 = phi i64 [ %24, %23 ], [ %515, %517 ]
  %522 = load i64, ptr %16, align 8, !tbaa !36
  %523 = add nsw i64 %522, %520
  store i64 %523, ptr %14, align 8, !tbaa !36
  %524 = add nsw i64 %522, %521
  %525 = call i64 @llvm.smin.i64(i64 %524, i64 3)
  store i64 %525, ptr %15, align 8, !tbaa !36
  %526 = icmp sgt i64 %523, %525
  br i1 %526, label %527, label %23

527:                                              ; preds = %519, %13
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @MagickLog10(double noundef %0) unnamed_addr #14 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp olt double %2, 0x3DA5FD7FE1796495
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call double @log10(double noundef %2) #21
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi double [ %5, %4 ], [ -1.100000e+01, %1 ]
  ret double %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetImageChannelFeatures.omp_outlined.10(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5) #3 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  store i64 0, ptr %7, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  store i64 3, ptr %8, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  store i64 1, ptr %9, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  store i32 0, ptr %10, align 4, !tbaa !28
  %11 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %11, i32 33, ptr nonnull %10, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9, i64 1, i64 4)
  %12 = load i64, ptr %8, align 8
  %13 = call i64 @llvm.smin.i64(i64 %12, i64 3)
  store i64 %13, ptr %8, align 8, !tbaa !36
  %14 = load i64, ptr %7, align 8, !tbaa !36
  %15 = icmp sgt i64 %14, %13
  br i1 %15, label %218, label %16

16:                                               ; preds = %6, %210
  %17 = phi i64 [ %216, %210 ], [ %13, %6 ]
  %18 = phi i64 [ %214, %210 ], [ %14, %6 ]
  %19 = icmp sgt i64 %18, %17
  br i1 %19, label %210, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %2, align 4, !tbaa !28
  br label %22

22:                                               ; preds = %20, %203
  %23 = phi i64 [ %204, %203 ], [ %17, %20 ]
  %24 = phi i32 [ %205, %203 ], [ %21, %20 ]
  %25 = phi i64 [ %206, %203 ], [ %18, %20 ]
  %26 = shl i32 %24, 1
  %27 = icmp ugt i32 %26, 2
  br i1 %27, label %28, label %203

28:                                               ; preds = %22
  %29 = load ptr, ptr %4, align 8, !tbaa !6
  %30 = load ptr, ptr %3, align 8, !tbaa !6
  %31 = load ptr, ptr %5, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !56
  br label %34

34:                                               ; preds = %28, %195
  %35 = phi i32 [ %169, %195 ], [ %33, %28 ]
  %36 = phi ptr [ %137, %195 ], [ %31, %28 ]
  %37 = phi ptr [ %138, %195 ], [ %30, %28 ]
  %38 = phi ptr [ %143, %195 ], [ %29, %28 ]
  %39 = phi i64 [ %196, %195 ], [ 2, %28 ]
  %40 = sitofp i64 %39 to double
  %41 = getelementptr inbounds %struct._ChannelStatistics, ptr %38, i64 %39
  %42 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %41, i64 0, i64 %25
  %43 = load double, ptr %42, align 8, !tbaa !72
  %44 = getelementptr inbounds %struct._ChannelFeatures, ptr %37, i64 1, i32 5, i64 %25
  %45 = load double, ptr %44, align 8, !tbaa !32
  %46 = call double @llvm.fmuladd.f64(double %40, double %43, double %45)
  store double %46, ptr %44, align 8, !tbaa !32
  %47 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %41, i64 0, i64 %25, i32 1
  %48 = load double, ptr %47, align 8, !tbaa !76
  %49 = getelementptr inbounds %struct._ChannelFeatures, ptr %37, i64 2, i32 5, i64 %25
  %50 = load double, ptr %49, align 8, !tbaa !32
  %51 = call double @llvm.fmuladd.f64(double %40, double %48, double %50)
  store double %51, ptr %49, align 8, !tbaa !32
  %52 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %41, i64 0, i64 %25, i32 2
  %53 = load double, ptr %52, align 8, !tbaa !79
  %54 = getelementptr inbounds %struct._ChannelFeatures, ptr %37, i64 4, i32 5, i64 %25
  %55 = load double, ptr %54, align 8, !tbaa !32
  %56 = call double @llvm.fmuladd.f64(double %40, double %53, double %55)
  store double %56, ptr %54, align 8, !tbaa !32
  %57 = icmp eq i32 %35, 12
  br i1 %57, label %58, label %64

58:                                               ; preds = %34
  %59 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %41, i64 0, i64 %25, i32 4
  %60 = load double, ptr %59, align 8, !tbaa !83
  %61 = getelementptr inbounds %struct._ChannelFeatures, ptr %37, i64 32, i32 5, i64 %25
  %62 = load double, ptr %61, align 8, !tbaa !32
  %63 = call double @llvm.fmuladd.f64(double %40, double %60, double %62)
  store double %63, ptr %61, align 8, !tbaa !32
  br label %64

64:                                               ; preds = %58, %34
  %65 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 6
  %66 = load i32, ptr %65, align 8, !tbaa !57
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %41, i64 0, i64 %25, i32 3
  %70 = load double, ptr %69, align 8, !tbaa !87
  %71 = getelementptr inbounds %struct._ChannelFeatures, ptr %37, i64 8, i32 5, i64 %25
  %72 = load double, ptr %71, align 8, !tbaa !32
  %73 = call double @llvm.fmuladd.f64(double %40, double %70, double %72)
  store double %73, ptr %71, align 8, !tbaa !32
  br label %74

74:                                               ; preds = %68, %64
  %75 = load double, ptr %42, align 8, !tbaa !72
  %76 = call fastcc double @MagickLog10(double noundef %75) #23
  %77 = load ptr, ptr %3, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct._ChannelFeatures, ptr %77, i64 1, i32 7, i64 %25
  %79 = load double, ptr %78, align 8, !tbaa !32
  %80 = fneg double %75
  %81 = call double @llvm.fmuladd.f64(double %80, double %76, double %79)
  store double %81, ptr %78, align 8, !tbaa !32
  %82 = load ptr, ptr %4, align 8, !tbaa !6
  %83 = getelementptr inbounds %struct._ChannelStatistics, ptr %82, i64 %39
  %84 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %83, i64 0, i64 %25, i32 1
  %85 = load double, ptr %84, align 8, !tbaa !76
  %86 = call fastcc double @MagickLog10(double noundef %85) #23
  %87 = load ptr, ptr %3, align 8, !tbaa !6
  %88 = getelementptr inbounds %struct._ChannelFeatures, ptr %87, i64 2, i32 7, i64 %25
  %89 = load double, ptr %88, align 8, !tbaa !32
  %90 = fneg double %85
  %91 = call double @llvm.fmuladd.f64(double %90, double %86, double %89)
  store double %91, ptr %88, align 8, !tbaa !32
  %92 = load ptr, ptr %4, align 8, !tbaa !6
  %93 = getelementptr inbounds %struct._ChannelStatistics, ptr %92, i64 %39
  %94 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %93, i64 0, i64 %25, i32 2
  %95 = load double, ptr %94, align 8, !tbaa !79
  %96 = call fastcc double @MagickLog10(double noundef %95) #23
  %97 = load ptr, ptr %3, align 8, !tbaa !6
  %98 = getelementptr inbounds %struct._ChannelFeatures, ptr %97, i64 4, i32 7, i64 %25
  %99 = load double, ptr %98, align 8, !tbaa !32
  %100 = fneg double %95
  %101 = call double @llvm.fmuladd.f64(double %100, double %96, double %99)
  store double %101, ptr %98, align 8, !tbaa !32
  %102 = load ptr, ptr %5, align 8, !tbaa !6
  %103 = getelementptr inbounds %struct._Image, ptr %102, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !56
  %105 = icmp eq i32 %104, 12
  br i1 %105, label %106, label %118

106:                                              ; preds = %74
  %107 = load ptr, ptr %4, align 8, !tbaa !6
  %108 = getelementptr inbounds %struct._ChannelStatistics, ptr %107, i64 %39
  %109 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %108, i64 0, i64 %25, i32 4
  %110 = load double, ptr %109, align 8, !tbaa !83
  %111 = call fastcc double @MagickLog10(double noundef %110) #23
  %112 = load ptr, ptr %3, align 8, !tbaa !6
  %113 = getelementptr inbounds %struct._ChannelFeatures, ptr %112, i64 32, i32 7, i64 %25
  %114 = load double, ptr %113, align 8, !tbaa !32
  %115 = fneg double %110
  %116 = call double @llvm.fmuladd.f64(double %115, double %111, double %114)
  store double %116, ptr %113, align 8, !tbaa !32
  %117 = load ptr, ptr %5, align 8, !tbaa !6
  br label %118

118:                                              ; preds = %106, %74
  %119 = phi ptr [ %112, %106 ], [ %97, %74 ]
  %120 = phi ptr [ %117, %106 ], [ %102, %74 ]
  %121 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 6
  %122 = load i32, ptr %121, align 8, !tbaa !57
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr %4, align 8, !tbaa !6
  %126 = getelementptr inbounds %struct._ChannelStatistics, ptr %125, i64 %39
  %127 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %126, i64 0, i64 %25, i32 3
  %128 = load double, ptr %127, align 8, !tbaa !87
  %129 = call fastcc double @MagickLog10(double noundef %128) #23
  %130 = load ptr, ptr %3, align 8, !tbaa !6
  %131 = getelementptr inbounds %struct._ChannelFeatures, ptr %130, i64 8, i32 7, i64 %25
  %132 = load double, ptr %131, align 8, !tbaa !32
  %133 = fneg double %128
  %134 = call double @llvm.fmuladd.f64(double %133, double %129, double %132)
  store double %134, ptr %131, align 8, !tbaa !32
  %135 = load ptr, ptr %5, align 8, !tbaa !6
  br label %136

136:                                              ; preds = %124, %118
  %137 = phi ptr [ %135, %124 ], [ %120, %118 ]
  %138 = phi ptr [ %130, %124 ], [ %119, %118 ]
  %139 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 1, i32 7, i64 %25
  %140 = load double, ptr %139, align 8, !tbaa !32
  %141 = fsub double %40, %140
  %142 = fmul double %141, %141
  %143 = load ptr, ptr %4, align 8, !tbaa !6
  %144 = getelementptr inbounds %struct._ChannelStatistics, ptr %143, i64 %39
  %145 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %144, i64 0, i64 %25
  %146 = load double, ptr %145, align 8, !tbaa !72
  %147 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 1, i32 6, i64 %25
  %148 = load double, ptr %147, align 8, !tbaa !32
  %149 = call double @llvm.fmuladd.f64(double %142, double %146, double %148)
  store double %149, ptr %147, align 8, !tbaa !32
  %150 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 2, i32 7, i64 %25
  %151 = load double, ptr %150, align 8, !tbaa !32
  %152 = fsub double %40, %151
  %153 = fmul double %152, %152
  %154 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %144, i64 0, i64 %25, i32 1
  %155 = load double, ptr %154, align 8, !tbaa !76
  %156 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 2, i32 6, i64 %25
  %157 = load double, ptr %156, align 8, !tbaa !32
  %158 = call double @llvm.fmuladd.f64(double %153, double %155, double %157)
  store double %158, ptr %156, align 8, !tbaa !32
  %159 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 4, i32 7, i64 %25
  %160 = load double, ptr %159, align 8, !tbaa !32
  %161 = fsub double %40, %160
  %162 = fmul double %161, %161
  %163 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %144, i64 0, i64 %25, i32 2
  %164 = load double, ptr %163, align 8, !tbaa !79
  %165 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 4, i32 6, i64 %25
  %166 = load double, ptr %165, align 8, !tbaa !32
  %167 = call double @llvm.fmuladd.f64(double %162, double %164, double %166)
  store double %167, ptr %165, align 8, !tbaa !32
  %168 = getelementptr inbounds %struct._Image, ptr %137, i64 0, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !56
  %170 = icmp eq i32 %169, 12
  br i1 %170, label %171, label %181

171:                                              ; preds = %136
  %172 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 32, i32 7, i64 %25
  %173 = load double, ptr %172, align 8, !tbaa !32
  %174 = fsub double %40, %173
  %175 = fmul double %174, %174
  %176 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %144, i64 0, i64 %25, i32 4
  %177 = load double, ptr %176, align 8, !tbaa !83
  %178 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 32, i32 6, i64 %25
  %179 = load double, ptr %178, align 8, !tbaa !32
  %180 = call double @llvm.fmuladd.f64(double %175, double %177, double %179)
  store double %180, ptr %178, align 8, !tbaa !32
  br label %181

181:                                              ; preds = %171, %136
  %182 = getelementptr inbounds %struct._Image, ptr %137, i64 0, i32 6
  %183 = load i32, ptr %182, align 8, !tbaa !57
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 8, i32 7, i64 %25
  %187 = load double, ptr %186, align 8, !tbaa !32
  %188 = fsub double %40, %187
  %189 = fmul double %188, %188
  %190 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %144, i64 0, i64 %25, i32 3
  %191 = load double, ptr %190, align 8, !tbaa !87
  %192 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 8, i32 6, i64 %25
  %193 = load double, ptr %192, align 8, !tbaa !32
  %194 = call double @llvm.fmuladd.f64(double %189, double %191, double %193)
  store double %194, ptr %192, align 8, !tbaa !32
  br label %195

195:                                              ; preds = %181, %185
  %196 = add nuw nsw i64 %39, 1
  %197 = load i32, ptr %2, align 4, !tbaa !28
  %198 = shl i32 %197, 1
  %199 = zext i32 %198 to i64
  %200 = icmp ult i64 %196, %199
  br i1 %200, label %34, label %201, !llvm.loop !100

201:                                              ; preds = %195
  %202 = load i64, ptr %8, align 8, !tbaa !36
  br label %203

203:                                              ; preds = %201, %22
  %204 = phi i64 [ %202, %201 ], [ %23, %22 ]
  %205 = phi i32 [ %197, %201 ], [ %24, %22 ]
  %206 = add nsw i64 %25, 1
  %207 = icmp slt i64 %25, %204
  br i1 %207, label %22, label %208

208:                                              ; preds = %203
  %209 = load i64, ptr %7, align 8, !tbaa !36
  br label %210

210:                                              ; preds = %208, %16
  %211 = phi i64 [ %18, %16 ], [ %209, %208 ]
  %212 = phi i64 [ %17, %16 ], [ %204, %208 ]
  %213 = load i64, ptr %9, align 8, !tbaa !36
  %214 = add nsw i64 %213, %211
  store i64 %214, ptr %7, align 8, !tbaa !36
  %215 = add nsw i64 %213, %212
  %216 = call i64 @llvm.smin.i64(i64 %215, i64 3)
  store i64 %216, ptr %8, align 8, !tbaa !36
  %217 = icmp sgt i64 %214, %216
  br i1 %217, label %218, label %16

218:                                              ; preds = %210, %6
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetImageChannelFeatures.omp_outlined.11(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull align 8 dereferenceable(160) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(160) %8, ptr nocapture noundef nonnull align 8 dereferenceable(160) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull align 8 dereferenceable(160) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %13) #3 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 0, ptr %15, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 3, ptr %16, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  store i64 1, ptr %17, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #4
  store i32 0, ptr %18, align 4, !tbaa !28
  %19 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %20 = load i64, ptr %16, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 3)
  store i64 %21, ptr %16, align 8, !tbaa !36
  %22 = load i64, ptr %15, align 8, !tbaa !36
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %441, label %24

24:                                               ; preds = %14, %433
  %25 = phi i64 [ %439, %433 ], [ %21, %14 ]
  %26 = phi i64 [ %437, %433 ], [ %22, %14 ]
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %433, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %2, align 4, !tbaa !28
  br label %30

30:                                               ; preds = %28, %427
  %31 = phi i32 [ %400, %427 ], [ %29, %28 ]
  %32 = phi i32 [ %401, %427 ], [ %29, %28 ]
  %33 = phi i32 [ %402, %427 ], [ %29, %28 ]
  %34 = phi i64 [ %428, %427 ], [ %26, %28 ]
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %399, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %4, i64 0, i64 %34
  %38 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %34
  %39 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %4, i64 0, i64 %34, i32 2
  %40 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %34, i32 2
  %41 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %4, i64 0, i64 %34, i32 4
  %42 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %34, i32 4
  %43 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %4, i64 0, i64 %34, i32 3
  %44 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %34, i32 3
  %45 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %34
  %46 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %34, i32 1
  %47 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %34, i32 2
  %48 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %34, i32 4
  %49 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %34, i32 3
  %50 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %34
  %51 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %34, i32 1
  %52 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %34, i32 2
  %53 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %34, i32 4
  %54 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %34, i32 3
  %55 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %34
  %56 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %34, i32 1
  %57 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %34, i32 2
  %58 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %34, i32 4
  %59 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %34, i32 3
  br label %60

60:                                               ; preds = %36, %394
  %61 = phi i32 [ %31, %36 ], [ %396, %394 ]
  %62 = phi i32 [ %32, %36 ], [ %396, %394 ]
  %63 = phi i64 [ 0, %36 ], [ %397, %394 ]
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = zext i32 %61 to i64
  br label %394

67:                                               ; preds = %60
  %68 = sitofp i64 %63 to double
  %69 = insertelement <2 x double> poison, double %68, i64 0
  %70 = shufflevector <2 x double> %69, <2 x double> poison, <2 x i32> zeroinitializer
  br label %71

71:                                               ; preds = %67, %389
  %72 = phi i64 [ 0, %67 ], [ %390, %389 ]
  %73 = load ptr, ptr %5, align 8, !tbaa !6
  %74 = getelementptr inbounds ptr, ptr %73, i64 %72
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct._ChannelStatistics, ptr %75, i64 %63
  %77 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %76, i64 0, i64 %34
  %78 = load <2 x double>, ptr %37, align 8, !tbaa !32
  %79 = fsub <2 x double> %70, %78
  %80 = fadd <2 x double> %79, <double 1.000000e+00, double 1.000000e+00>
  %81 = fmul <2 x double> %80, %80
  %82 = load <2 x double>, ptr %77, align 8, !tbaa !32
  %83 = load <2 x double>, ptr %38, align 8, !tbaa !32
  %84 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %81, <2 x double> %82, <2 x double> %83)
  store <2 x double> %84, ptr %38, align 8, !tbaa !32
  %85 = load double, ptr %39, align 8, !tbaa !79
  %86 = fsub double %68, %85
  %87 = fadd double %86, 1.000000e+00
  %88 = fmul double %87, %87
  %89 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %76, i64 0, i64 %34, i32 2
  %90 = load double, ptr %89, align 8, !tbaa !79
  %91 = load double, ptr %40, align 8, !tbaa !79
  %92 = call double @llvm.fmuladd.f64(double %88, double %90, double %91)
  store double %92, ptr %40, align 8, !tbaa !79
  %93 = load ptr, ptr %6, align 8, !tbaa !6
  %94 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !56
  %96 = icmp eq i32 %95, 12
  br i1 %96, label %97, label %106

97:                                               ; preds = %71
  %98 = load double, ptr %41, align 8, !tbaa !83
  %99 = fsub double %68, %98
  %100 = fadd double %99, 1.000000e+00
  %101 = fmul double %100, %100
  %102 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %76, i64 0, i64 %34, i32 4
  %103 = load double, ptr %102, align 8, !tbaa !83
  %104 = load double, ptr %42, align 8, !tbaa !83
  %105 = call double @llvm.fmuladd.f64(double %101, double %103, double %104)
  store double %105, ptr %42, align 8, !tbaa !83
  br label %106

106:                                              ; preds = %97, %71
  %107 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 6
  %108 = load i32, ptr %107, align 8, !tbaa !57
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %106
  %111 = load double, ptr %43, align 8, !tbaa !87
  %112 = fsub double %68, %111
  %113 = fadd double %112, 1.000000e+00
  %114 = fmul double %113, %113
  %115 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %76, i64 0, i64 %34, i32 3
  %116 = load double, ptr %115, align 8, !tbaa !87
  %117 = load double, ptr %44, align 8, !tbaa !87
  %118 = call double @llvm.fmuladd.f64(double %114, double %116, double %117)
  store double %118, ptr %44, align 8, !tbaa !87
  br label %119

119:                                              ; preds = %110, %106
  %120 = load ptr, ptr %7, align 8, !tbaa !6
  %121 = sub nsw i64 %63, %72
  %122 = call fastcc i64 @MagickAbsoluteValue(i64 noundef %121) #23
  %123 = getelementptr inbounds %struct._ChannelStatistics, ptr %120, i64 %122
  %124 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %123, i64 0, i64 %34
  %125 = load <2 x double>, ptr %77, align 8, !tbaa !32
  %126 = load <2 x double>, ptr %124, align 8, !tbaa !32
  %127 = fadd <2 x double> %125, %126
  store <2 x double> %127, ptr %124, align 8, !tbaa !32
  %128 = load double, ptr %89, align 8, !tbaa !79
  %129 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %123, i64 0, i64 %34, i32 2
  %130 = load double, ptr %129, align 8, !tbaa !79
  %131 = fadd double %128, %130
  store double %131, ptr %129, align 8, !tbaa !79
  br i1 %96, label %132, label %138

132:                                              ; preds = %119
  %133 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %76, i64 0, i64 %34, i32 4
  %134 = load double, ptr %133, align 8, !tbaa !83
  %135 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %123, i64 0, i64 %34, i32 4
  %136 = load double, ptr %135, align 8, !tbaa !83
  %137 = fadd double %134, %136
  store double %137, ptr %135, align 8, !tbaa !83
  br label %138

138:                                              ; preds = %132, %119
  br i1 %109, label %145, label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %76, i64 0, i64 %34, i32 3
  %141 = load double, ptr %140, align 8, !tbaa !87
  %142 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %123, i64 0, i64 %34, i32 3
  %143 = load double, ptr %142, align 8, !tbaa !87
  %144 = fadd double %141, %143
  store double %144, ptr %142, align 8, !tbaa !87
  br label %145

145:                                              ; preds = %139, %138
  %146 = load double, ptr %77, align 8, !tbaa !72
  %147 = call fastcc double @MagickLog10(double noundef %146) #23
  %148 = load double, ptr %45, align 8, !tbaa !72
  %149 = fneg double %146
  %150 = call double @llvm.fmuladd.f64(double %149, double %147, double %148)
  store double %150, ptr %45, align 8, !tbaa !72
  %151 = load ptr, ptr %5, align 8, !tbaa !6
  %152 = getelementptr inbounds ptr, ptr %151, i64 %72
  %153 = load ptr, ptr %152, align 8, !tbaa !6
  %154 = getelementptr inbounds %struct._ChannelStatistics, ptr %153, i64 %63
  %155 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %154, i64 0, i64 %34, i32 1
  %156 = load double, ptr %155, align 8, !tbaa !76
  %157 = call fastcc double @MagickLog10(double noundef %156) #23
  %158 = load double, ptr %46, align 8, !tbaa !76
  %159 = fneg double %156
  %160 = call double @llvm.fmuladd.f64(double %159, double %157, double %158)
  store double %160, ptr %46, align 8, !tbaa !76
  %161 = load ptr, ptr %5, align 8, !tbaa !6
  %162 = getelementptr inbounds ptr, ptr %161, i64 %72
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = getelementptr inbounds %struct._ChannelStatistics, ptr %163, i64 %63
  %165 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %164, i64 0, i64 %34, i32 2
  %166 = load double, ptr %165, align 8, !tbaa !79
  %167 = call fastcc double @MagickLog10(double noundef %166) #23
  %168 = load double, ptr %47, align 8, !tbaa !79
  %169 = fneg double %166
  %170 = call double @llvm.fmuladd.f64(double %169, double %167, double %168)
  store double %170, ptr %47, align 8, !tbaa !79
  %171 = load ptr, ptr %6, align 8, !tbaa !6
  %172 = getelementptr inbounds %struct._Image, ptr %171, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !56
  %174 = icmp eq i32 %173, 12
  br i1 %174, label %175, label %187

175:                                              ; preds = %145
  %176 = load ptr, ptr %5, align 8, !tbaa !6
  %177 = getelementptr inbounds ptr, ptr %176, i64 %72
  %178 = load ptr, ptr %177, align 8, !tbaa !6
  %179 = getelementptr inbounds %struct._ChannelStatistics, ptr %178, i64 %63
  %180 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %179, i64 0, i64 %34, i32 4
  %181 = load double, ptr %180, align 8, !tbaa !83
  %182 = call fastcc double @MagickLog10(double noundef %181) #23
  %183 = load double, ptr %48, align 8, !tbaa !83
  %184 = fneg double %181
  %185 = call double @llvm.fmuladd.f64(double %184, double %182, double %183)
  store double %185, ptr %48, align 8, !tbaa !83
  %186 = load ptr, ptr %6, align 8, !tbaa !6
  br label %187

187:                                              ; preds = %175, %145
  %188 = phi ptr [ %186, %175 ], [ %171, %145 ]
  %189 = getelementptr inbounds %struct._Image, ptr %188, i64 0, i32 6
  %190 = load i32, ptr %189, align 8, !tbaa !57
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %187
  %193 = load ptr, ptr %5, align 8, !tbaa !6
  %194 = getelementptr inbounds ptr, ptr %193, i64 %72
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = getelementptr inbounds %struct._ChannelStatistics, ptr %195, i64 %63
  %197 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %196, i64 0, i64 %34, i32 3
  %198 = load double, ptr %197, align 8, !tbaa !87
  %199 = call fastcc double @MagickLog10(double noundef %198) #23
  %200 = load double, ptr %49, align 8, !tbaa !87
  %201 = fneg double %198
  %202 = call double @llvm.fmuladd.f64(double %201, double %199, double %200)
  store double %202, ptr %49, align 8, !tbaa !87
  br label %203

203:                                              ; preds = %192, %187
  %204 = load ptr, ptr %5, align 8, !tbaa !6
  %205 = getelementptr inbounds ptr, ptr %204, i64 %72
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  %207 = getelementptr inbounds %struct._ChannelStatistics, ptr %206, i64 %63
  %208 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %207, i64 0, i64 %34
  %209 = load double, ptr %208, align 8, !tbaa !72
  %210 = load ptr, ptr %10, align 8, !tbaa !6
  %211 = getelementptr inbounds %struct._ChannelStatistics, ptr %210, i64 %72
  %212 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %211, i64 0, i64 %34
  %213 = load double, ptr %212, align 8, !tbaa !72
  %214 = load ptr, ptr %11, align 8, !tbaa !6
  %215 = getelementptr inbounds %struct._ChannelStatistics, ptr %214, i64 %63
  %216 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %215, i64 0, i64 %34
  %217 = load double, ptr %216, align 8, !tbaa !72
  %218 = fmul double %213, %217
  %219 = call fastcc double @MagickLog10(double noundef %218) #23
  %220 = load double, ptr %50, align 8, !tbaa !72
  %221 = fneg double %209
  %222 = call double @llvm.fmuladd.f64(double %221, double %219, double %220)
  store double %222, ptr %50, align 8, !tbaa !72
  %223 = load ptr, ptr %5, align 8, !tbaa !6
  %224 = getelementptr inbounds ptr, ptr %223, i64 %72
  %225 = load ptr, ptr %224, align 8, !tbaa !6
  %226 = getelementptr inbounds %struct._ChannelStatistics, ptr %225, i64 %63
  %227 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %226, i64 0, i64 %34, i32 1
  %228 = load double, ptr %227, align 8, !tbaa !76
  %229 = load ptr, ptr %10, align 8, !tbaa !6
  %230 = getelementptr inbounds %struct._ChannelStatistics, ptr %229, i64 %72
  %231 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %230, i64 0, i64 %34, i32 1
  %232 = load double, ptr %231, align 8, !tbaa !76
  %233 = load ptr, ptr %11, align 8, !tbaa !6
  %234 = getelementptr inbounds %struct._ChannelStatistics, ptr %233, i64 %63
  %235 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %234, i64 0, i64 %34, i32 1
  %236 = load double, ptr %235, align 8, !tbaa !76
  %237 = fmul double %232, %236
  %238 = call fastcc double @MagickLog10(double noundef %237) #23
  %239 = load double, ptr %51, align 8, !tbaa !76
  %240 = fneg double %228
  %241 = call double @llvm.fmuladd.f64(double %240, double %238, double %239)
  store double %241, ptr %51, align 8, !tbaa !76
  %242 = load ptr, ptr %5, align 8, !tbaa !6
  %243 = getelementptr inbounds ptr, ptr %242, i64 %72
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  %245 = getelementptr inbounds %struct._ChannelStatistics, ptr %244, i64 %63
  %246 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %245, i64 0, i64 %34, i32 2
  %247 = load double, ptr %246, align 8, !tbaa !79
  %248 = load ptr, ptr %10, align 8, !tbaa !6
  %249 = getelementptr inbounds %struct._ChannelStatistics, ptr %248, i64 %72
  %250 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %249, i64 0, i64 %34, i32 2
  %251 = load double, ptr %250, align 8, !tbaa !79
  %252 = load ptr, ptr %11, align 8, !tbaa !6
  %253 = getelementptr inbounds %struct._ChannelStatistics, ptr %252, i64 %63
  %254 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %253, i64 0, i64 %34, i32 2
  %255 = load double, ptr %254, align 8, !tbaa !79
  %256 = fmul double %251, %255
  %257 = call fastcc double @MagickLog10(double noundef %256) #23
  %258 = load double, ptr %52, align 8, !tbaa !79
  %259 = fneg double %247
  %260 = call double @llvm.fmuladd.f64(double %259, double %257, double %258)
  store double %260, ptr %52, align 8, !tbaa !79
  %261 = load ptr, ptr %6, align 8, !tbaa !6
  %262 = getelementptr inbounds %struct._Image, ptr %261, i64 0, i32 1
  %263 = load i32, ptr %262, align 4, !tbaa !56
  %264 = icmp eq i32 %263, 12
  br i1 %264, label %265, label %286

265:                                              ; preds = %203
  %266 = load ptr, ptr %5, align 8, !tbaa !6
  %267 = getelementptr inbounds ptr, ptr %266, i64 %72
  %268 = load ptr, ptr %267, align 8, !tbaa !6
  %269 = getelementptr inbounds %struct._ChannelStatistics, ptr %268, i64 %63
  %270 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %269, i64 0, i64 %34, i32 4
  %271 = load double, ptr %270, align 8, !tbaa !83
  %272 = load ptr, ptr %10, align 8, !tbaa !6
  %273 = getelementptr inbounds %struct._ChannelStatistics, ptr %272, i64 %72
  %274 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %273, i64 0, i64 %34, i32 4
  %275 = load double, ptr %274, align 8, !tbaa !83
  %276 = load ptr, ptr %11, align 8, !tbaa !6
  %277 = getelementptr inbounds %struct._ChannelStatistics, ptr %276, i64 %63
  %278 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %277, i64 0, i64 %34, i32 4
  %279 = load double, ptr %278, align 8, !tbaa !83
  %280 = fmul double %275, %279
  %281 = call fastcc double @MagickLog10(double noundef %280) #23
  %282 = load double, ptr %53, align 8, !tbaa !83
  %283 = fneg double %271
  %284 = call double @llvm.fmuladd.f64(double %283, double %281, double %282)
  store double %284, ptr %53, align 8, !tbaa !83
  %285 = load ptr, ptr %6, align 8, !tbaa !6
  br label %286

286:                                              ; preds = %265, %203
  %287 = phi ptr [ %285, %265 ], [ %261, %203 ]
  %288 = getelementptr inbounds %struct._Image, ptr %287, i64 0, i32 6
  %289 = load i32, ptr %288, align 8, !tbaa !57
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %311, label %291

291:                                              ; preds = %286
  %292 = load ptr, ptr %5, align 8, !tbaa !6
  %293 = getelementptr inbounds ptr, ptr %292, i64 %72
  %294 = load ptr, ptr %293, align 8, !tbaa !6
  %295 = getelementptr inbounds %struct._ChannelStatistics, ptr %294, i64 %63
  %296 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %295, i64 0, i64 %34, i32 3
  %297 = load double, ptr %296, align 8, !tbaa !87
  %298 = load ptr, ptr %10, align 8, !tbaa !6
  %299 = getelementptr inbounds %struct._ChannelStatistics, ptr %298, i64 %72
  %300 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %299, i64 0, i64 %34, i32 3
  %301 = load double, ptr %300, align 8, !tbaa !87
  %302 = load ptr, ptr %11, align 8, !tbaa !6
  %303 = getelementptr inbounds %struct._ChannelStatistics, ptr %302, i64 %63
  %304 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %303, i64 0, i64 %34, i32 3
  %305 = load double, ptr %304, align 8, !tbaa !87
  %306 = fmul double %301, %305
  %307 = call fastcc double @MagickLog10(double noundef %306) #23
  %308 = load double, ptr %54, align 8, !tbaa !87
  %309 = fneg double %297
  %310 = call double @llvm.fmuladd.f64(double %309, double %307, double %308)
  store double %310, ptr %54, align 8, !tbaa !87
  br label %311

311:                                              ; preds = %291, %286
  %312 = load ptr, ptr %10, align 8, !tbaa !6
  %313 = getelementptr inbounds %struct._ChannelStatistics, ptr %312, i64 %72
  %314 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %313, i64 0, i64 %34
  %315 = load double, ptr %314, align 8, !tbaa !72
  %316 = load ptr, ptr %11, align 8, !tbaa !6
  %317 = getelementptr inbounds %struct._ChannelStatistics, ptr %316, i64 %63
  %318 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %317, i64 0, i64 %34
  %319 = load double, ptr %318, align 8, !tbaa !72
  %320 = fmul double %315, %319
  %321 = call fastcc double @MagickLog10(double noundef %320) #23
  %322 = load double, ptr %55, align 8, !tbaa !72
  %323 = fneg double %320
  %324 = call double @llvm.fmuladd.f64(double %323, double %321, double %322)
  store double %324, ptr %55, align 8, !tbaa !72
  %325 = load ptr, ptr %10, align 8, !tbaa !6
  %326 = getelementptr inbounds %struct._ChannelStatistics, ptr %325, i64 %72
  %327 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %326, i64 0, i64 %34, i32 1
  %328 = load double, ptr %327, align 8, !tbaa !76
  %329 = load ptr, ptr %11, align 8, !tbaa !6
  %330 = getelementptr inbounds %struct._ChannelStatistics, ptr %329, i64 %63
  %331 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %330, i64 0, i64 %34, i32 1
  %332 = load double, ptr %331, align 8, !tbaa !76
  %333 = fmul double %328, %332
  %334 = call fastcc double @MagickLog10(double noundef %333) #23
  %335 = load double, ptr %56, align 8, !tbaa !76
  %336 = fneg double %333
  %337 = call double @llvm.fmuladd.f64(double %336, double %334, double %335)
  store double %337, ptr %56, align 8, !tbaa !76
  %338 = load ptr, ptr %10, align 8, !tbaa !6
  %339 = getelementptr inbounds %struct._ChannelStatistics, ptr %338, i64 %72
  %340 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %339, i64 0, i64 %34, i32 2
  %341 = load double, ptr %340, align 8, !tbaa !79
  %342 = load ptr, ptr %11, align 8, !tbaa !6
  %343 = getelementptr inbounds %struct._ChannelStatistics, ptr %342, i64 %63
  %344 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %343, i64 0, i64 %34, i32 2
  %345 = load double, ptr %344, align 8, !tbaa !79
  %346 = fmul double %341, %345
  %347 = call fastcc double @MagickLog10(double noundef %346) #23
  %348 = load double, ptr %57, align 8, !tbaa !79
  %349 = fneg double %346
  %350 = call double @llvm.fmuladd.f64(double %349, double %347, double %348)
  store double %350, ptr %57, align 8, !tbaa !79
  %351 = load ptr, ptr %6, align 8, !tbaa !6
  %352 = getelementptr inbounds %struct._Image, ptr %351, i64 0, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !56
  %354 = icmp eq i32 %353, 12
  br i1 %354, label %355, label %370

355:                                              ; preds = %311
  %356 = load ptr, ptr %10, align 8, !tbaa !6
  %357 = getelementptr inbounds %struct._ChannelStatistics, ptr %356, i64 %72
  %358 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %357, i64 0, i64 %34, i32 4
  %359 = load double, ptr %358, align 8, !tbaa !83
  %360 = load ptr, ptr %11, align 8, !tbaa !6
  %361 = getelementptr inbounds %struct._ChannelStatistics, ptr %360, i64 %63
  %362 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %361, i64 0, i64 %34, i32 4
  %363 = load double, ptr %362, align 8, !tbaa !83
  %364 = fmul double %359, %363
  %365 = call fastcc double @MagickLog10(double noundef %364) #23
  %366 = load double, ptr %58, align 8, !tbaa !83
  %367 = fneg double %364
  %368 = call double @llvm.fmuladd.f64(double %367, double %365, double %366)
  store double %368, ptr %58, align 8, !tbaa !83
  %369 = load ptr, ptr %6, align 8, !tbaa !6
  br label %370

370:                                              ; preds = %355, %311
  %371 = phi ptr [ %369, %355 ], [ %351, %311 ]
  %372 = getelementptr inbounds %struct._Image, ptr %371, i64 0, i32 6
  %373 = load i32, ptr %372, align 8, !tbaa !57
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %389, label %375

375:                                              ; preds = %370
  %376 = load ptr, ptr %10, align 8, !tbaa !6
  %377 = getelementptr inbounds %struct._ChannelStatistics, ptr %376, i64 %72
  %378 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %377, i64 0, i64 %34, i32 3
  %379 = load double, ptr %378, align 8, !tbaa !87
  %380 = load ptr, ptr %11, align 8, !tbaa !6
  %381 = getelementptr inbounds %struct._ChannelStatistics, ptr %380, i64 %63
  %382 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %381, i64 0, i64 %34, i32 3
  %383 = load double, ptr %382, align 8, !tbaa !87
  %384 = fmul double %379, %383
  %385 = call fastcc double @MagickLog10(double noundef %384) #23
  %386 = load double, ptr %59, align 8, !tbaa !87
  %387 = fneg double %384
  %388 = call double @llvm.fmuladd.f64(double %387, double %385, double %386)
  store double %388, ptr %59, align 8, !tbaa !87
  br label %389

389:                                              ; preds = %370, %375
  %390 = add nuw nsw i64 %72, 1
  %391 = load i32, ptr %2, align 4, !tbaa !28
  %392 = zext i32 %391 to i64
  %393 = icmp ult i64 %390, %392
  br i1 %393, label %71, label %394, !llvm.loop !101

394:                                              ; preds = %389, %65
  %395 = phi i64 [ %66, %65 ], [ %392, %389 ]
  %396 = phi i32 [ %61, %65 ], [ %391, %389 ]
  %397 = add nuw nsw i64 %63, 1
  %398 = icmp ult i64 %397, %395
  br i1 %398, label %60, label %399, !llvm.loop !102

399:                                              ; preds = %394, %30
  %400 = phi i32 [ %31, %30 ], [ %396, %394 ]
  %401 = phi i32 [ %32, %30 ], [ %396, %394 ]
  %402 = phi i32 [ 0, %30 ], [ %396, %394 ]
  %403 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %34
  %404 = load double, ptr %403, align 8, !tbaa !72
  %405 = load ptr, ptr %13, align 8, !tbaa !6
  %406 = getelementptr inbounds %struct._ChannelFeatures, ptr %405, i64 1, i32 3, i64 %34
  store double %404, ptr %406, align 8, !tbaa !32
  %407 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %34, i32 1
  %408 = load double, ptr %407, align 8, !tbaa !76
  %409 = getelementptr inbounds %struct._ChannelFeatures, ptr %405, i64 2, i32 3, i64 %34
  store double %408, ptr %409, align 8, !tbaa !32
  %410 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %34, i32 2
  %411 = load double, ptr %410, align 8, !tbaa !79
  %412 = getelementptr inbounds %struct._ChannelFeatures, ptr %405, i64 4, i32 3, i64 %34
  store double %411, ptr %412, align 8, !tbaa !32
  %413 = load ptr, ptr %6, align 8, !tbaa !6
  %414 = getelementptr inbounds %struct._Image, ptr %413, i64 0, i32 1
  %415 = load i32, ptr %414, align 4, !tbaa !56
  %416 = icmp eq i32 %415, 12
  br i1 %416, label %417, label %420

417:                                              ; preds = %399
  %418 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %34, i32 4
  %419 = load double, ptr %418, align 8, !tbaa !83
  store double %419, ptr %406, align 8, !tbaa !32
  br label %420

420:                                              ; preds = %417, %399
  %421 = getelementptr inbounds %struct._Image, ptr %413, i64 0, i32 6
  %422 = load i32, ptr %421, align 8, !tbaa !57
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %420
  %425 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %34, i32 3
  %426 = load double, ptr %425, align 8, !tbaa !87
  store double %426, ptr %406, align 8, !tbaa !32
  br label %427

427:                                              ; preds = %424, %420
  %428 = add nsw i64 %34, 1
  %429 = load i64, ptr %16, align 8, !tbaa !36
  %430 = icmp slt i64 %34, %429
  br i1 %430, label %30, label %431

431:                                              ; preds = %427
  %432 = load i64, ptr %15, align 8, !tbaa !36
  br label %433

433:                                              ; preds = %431, %24
  %434 = phi i64 [ %26, %24 ], [ %432, %431 ]
  %435 = phi i64 [ %25, %24 ], [ %429, %431 ]
  %436 = load i64, ptr %17, align 8, !tbaa !36
  %437 = add nsw i64 %436, %434
  store i64 %437, ptr %15, align 8, !tbaa !36
  %438 = add nsw i64 %436, %435
  %439 = call i64 @llvm.smin.i64(i64 %438, i64 3)
  store i64 %439, ptr %16, align 8, !tbaa !36
  %440 = icmp sgt i64 %437, %439
  br i1 %440, label %441, label %24

441:                                              ; preds = %433, %14
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @MagickAbsoluteValue(i64 noundef %0) unnamed_addr #13 {
  %2 = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  ret i64 %2
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetImageChannelFeatures.omp_outlined.12(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull align 8 dereferenceable(160) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull align 8 dereferenceable(160) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(160) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(160) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %13, ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %14) #3 {
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 0, ptr %16, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  store i64 3, ptr %17, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #4
  store i64 1, ptr %18, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #4
  store i32 0, ptr %19, align 4, !tbaa !28
  %20 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %19, ptr nonnull %16, ptr nonnull %17, ptr nonnull %18, i64 1, i64 4)
  %21 = load i64, ptr %17, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 3)
  store i64 %22, ptr %17, align 8, !tbaa !36
  %23 = load i64, ptr %16, align 8, !tbaa !36
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %486, label %25

25:                                               ; preds = %15, %478
  %26 = phi i64 [ %484, %478 ], [ %22, %15 ]
  %27 = phi i64 [ %482, %478 ], [ %23, %15 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %478, label %29

29:                                               ; preds = %25, %472
  %30 = phi i64 [ %473, %472 ], [ %27, %25 ]
  %31 = load i32, ptr %2, align 4, !tbaa !28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %271, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %30
  %35 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %30, i32 2
  %36 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %30, i32 4
  %37 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %30, i32 3
  %38 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %30
  %39 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %30, i32 2
  %40 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %30, i32 4
  %41 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %30, i32 3
  %42 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %30
  %43 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %30, i32 1
  %44 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %30, i32 2
  %45 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %30, i32 4
  %46 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %30, i32 3
  %47 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %30
  %48 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %30, i32 1
  %49 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %30, i32 2
  %50 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %30, i32 4
  %51 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %30, i32 3
  br label %52

52:                                               ; preds = %33, %266
  %53 = phi i64 [ 0, %33 ], [ %267, %266 ]
  %54 = load ptr, ptr %4, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct._ChannelStatistics, ptr %54, i64 %53
  %56 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %55, i64 0, i64 %30
  %57 = load <2 x double>, ptr %56, align 8, !tbaa !32
  %58 = load <2 x double>, ptr %34, align 8, !tbaa !32
  %59 = fadd <2 x double> %57, %58
  store <2 x double> %59, ptr %34, align 8, !tbaa !32
  %60 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %55, i64 0, i64 %30, i32 2
  %61 = load double, ptr %60, align 8, !tbaa !79
  %62 = load double, ptr %35, align 8, !tbaa !79
  %63 = fadd double %61, %62
  store double %63, ptr %35, align 8, !tbaa !79
  %64 = load ptr, ptr %5, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct._Image, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !56
  %67 = icmp eq i32 %66, 12
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %55, i64 0, i64 %30, i32 4
  %70 = load double, ptr %69, align 8, !tbaa !83
  %71 = load double, ptr %36, align 8, !tbaa !83
  %72 = fadd double %70, %71
  store double %72, ptr %36, align 8, !tbaa !83
  br label %73

73:                                               ; preds = %68, %52
  %74 = getelementptr inbounds %struct._Image, ptr %64, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !57
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %55, i64 0, i64 %30, i32 3
  %79 = load double, ptr %78, align 8, !tbaa !87
  %80 = load double, ptr %37, align 8, !tbaa !87
  %81 = fadd double %79, %80
  store double %81, ptr %37, align 8, !tbaa !87
  br label %82

82:                                               ; preds = %77, %73
  %83 = load <2 x double>, ptr %56, align 8, !tbaa !32
  %84 = load <2 x double>, ptr %38, align 8, !tbaa !32
  %85 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %83, <2 x double> %83, <2 x double> %84)
  store <2 x double> %85, ptr %38, align 8, !tbaa !32
  %86 = load double, ptr %60, align 8, !tbaa !79
  %87 = load double, ptr %39, align 8, !tbaa !79
  %88 = call double @llvm.fmuladd.f64(double %86, double %86, double %87)
  store double %88, ptr %39, align 8, !tbaa !79
  br i1 %67, label %89, label %94

89:                                               ; preds = %82
  %90 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %55, i64 0, i64 %30, i32 4
  %91 = load double, ptr %90, align 8, !tbaa !83
  %92 = load double, ptr %40, align 8, !tbaa !83
  %93 = call double @llvm.fmuladd.f64(double %91, double %91, double %92)
  store double %93, ptr %40, align 8, !tbaa !83
  br label %94

94:                                               ; preds = %89, %82
  br i1 %76, label %100, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %55, i64 0, i64 %30, i32 3
  %97 = load double, ptr %96, align 8, !tbaa !87
  %98 = load double, ptr %41, align 8, !tbaa !87
  %99 = call double @llvm.fmuladd.f64(double %97, double %97, double %98)
  store double %99, ptr %41, align 8, !tbaa !87
  br label %100

100:                                              ; preds = %95, %94
  %101 = load double, ptr %56, align 8, !tbaa !72
  %102 = call fastcc double @MagickLog10(double noundef %101) #23
  %103 = load ptr, ptr %7, align 8, !tbaa !6
  %104 = getelementptr inbounds %struct._ChannelFeatures, ptr %103, i64 1, i32 10, i64 %30
  %105 = load double, ptr %104, align 8, !tbaa !32
  %106 = fneg double %101
  %107 = call double @llvm.fmuladd.f64(double %106, double %102, double %105)
  store double %107, ptr %104, align 8, !tbaa !32
  %108 = load ptr, ptr %4, align 8, !tbaa !6
  %109 = getelementptr inbounds %struct._ChannelStatistics, ptr %108, i64 %53
  %110 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %109, i64 0, i64 %30, i32 1
  %111 = load double, ptr %110, align 8, !tbaa !76
  %112 = call fastcc double @MagickLog10(double noundef %111) #23
  %113 = load ptr, ptr %7, align 8, !tbaa !6
  %114 = getelementptr inbounds %struct._ChannelFeatures, ptr %113, i64 2, i32 10, i64 %30
  %115 = load double, ptr %114, align 8, !tbaa !32
  %116 = fneg double %111
  %117 = call double @llvm.fmuladd.f64(double %116, double %112, double %115)
  store double %117, ptr %114, align 8, !tbaa !32
  %118 = load ptr, ptr %4, align 8, !tbaa !6
  %119 = getelementptr inbounds %struct._ChannelStatistics, ptr %118, i64 %53
  %120 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %119, i64 0, i64 %30, i32 2
  %121 = load double, ptr %120, align 8, !tbaa !79
  %122 = call fastcc double @MagickLog10(double noundef %121) #23
  %123 = load ptr, ptr %7, align 8, !tbaa !6
  %124 = getelementptr inbounds %struct._ChannelFeatures, ptr %123, i64 4, i32 10, i64 %30
  %125 = load double, ptr %124, align 8, !tbaa !32
  %126 = fneg double %121
  %127 = call double @llvm.fmuladd.f64(double %126, double %122, double %125)
  store double %127, ptr %124, align 8, !tbaa !32
  %128 = load ptr, ptr %5, align 8, !tbaa !6
  %129 = getelementptr inbounds %struct._Image, ptr %128, i64 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !56
  %131 = icmp eq i32 %130, 12
  br i1 %131, label %132, label %144

132:                                              ; preds = %100
  %133 = load ptr, ptr %4, align 8, !tbaa !6
  %134 = getelementptr inbounds %struct._ChannelStatistics, ptr %133, i64 %53
  %135 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %134, i64 0, i64 %30, i32 4
  %136 = load double, ptr %135, align 8, !tbaa !83
  %137 = call fastcc double @MagickLog10(double noundef %136) #23
  %138 = load ptr, ptr %7, align 8, !tbaa !6
  %139 = getelementptr inbounds %struct._ChannelFeatures, ptr %138, i64 32, i32 10, i64 %30
  %140 = load double, ptr %139, align 8, !tbaa !32
  %141 = fneg double %136
  %142 = call double @llvm.fmuladd.f64(double %141, double %137, double %140)
  store double %142, ptr %139, align 8, !tbaa !32
  %143 = load ptr, ptr %5, align 8, !tbaa !6
  br label %144

144:                                              ; preds = %132, %100
  %145 = phi ptr [ %143, %132 ], [ %128, %100 ]
  %146 = getelementptr inbounds %struct._Image, ptr %145, i64 0, i32 6
  %147 = load i32, ptr %146, align 8, !tbaa !57
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %4, align 8, !tbaa !6
  %151 = getelementptr inbounds %struct._ChannelStatistics, ptr %150, i64 %53
  %152 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %151, i64 0, i64 %30, i32 3
  %153 = load double, ptr %152, align 8, !tbaa !87
  %154 = call fastcc double @MagickLog10(double noundef %153) #23
  %155 = load ptr, ptr %7, align 8, !tbaa !6
  %156 = getelementptr inbounds %struct._ChannelFeatures, ptr %155, i64 8, i32 10, i64 %30
  %157 = load double, ptr %156, align 8, !tbaa !32
  %158 = fneg double %153
  %159 = call double @llvm.fmuladd.f64(double %158, double %154, double %157)
  store double %159, ptr %156, align 8, !tbaa !32
  br label %160

160:                                              ; preds = %149, %144
  %161 = load ptr, ptr %9, align 8, !tbaa !6
  %162 = getelementptr inbounds %struct._ChannelStatistics, ptr %161, i64 %53
  %163 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %162, i64 0, i64 %30
  %164 = load double, ptr %163, align 8, !tbaa !72
  %165 = call fastcc double @MagickLog10(double noundef %164) #23
  %166 = load double, ptr %42, align 8, !tbaa !72
  %167 = fneg double %164
  %168 = call double @llvm.fmuladd.f64(double %167, double %165, double %166)
  store double %168, ptr %42, align 8, !tbaa !72
  %169 = load ptr, ptr %9, align 8, !tbaa !6
  %170 = getelementptr inbounds %struct._ChannelStatistics, ptr %169, i64 %53
  %171 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %170, i64 0, i64 %30, i32 1
  %172 = load double, ptr %171, align 8, !tbaa !76
  %173 = call fastcc double @MagickLog10(double noundef %172) #23
  %174 = load double, ptr %43, align 8, !tbaa !76
  %175 = fneg double %172
  %176 = call double @llvm.fmuladd.f64(double %175, double %173, double %174)
  store double %176, ptr %43, align 8, !tbaa !76
  %177 = load ptr, ptr %9, align 8, !tbaa !6
  %178 = getelementptr inbounds %struct._ChannelStatistics, ptr %177, i64 %53
  %179 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %178, i64 0, i64 %30, i32 2
  %180 = load double, ptr %179, align 8, !tbaa !79
  %181 = call fastcc double @MagickLog10(double noundef %180) #23
  %182 = load double, ptr %44, align 8, !tbaa !79
  %183 = fneg double %180
  %184 = call double @llvm.fmuladd.f64(double %183, double %181, double %182)
  store double %184, ptr %44, align 8, !tbaa !79
  %185 = load ptr, ptr %5, align 8, !tbaa !6
  %186 = getelementptr inbounds %struct._Image, ptr %185, i64 0, i32 1
  %187 = load i32, ptr %186, align 4, !tbaa !56
  %188 = icmp eq i32 %187, 12
  br i1 %188, label %189, label %199

189:                                              ; preds = %160
  %190 = load ptr, ptr %9, align 8, !tbaa !6
  %191 = getelementptr inbounds %struct._ChannelStatistics, ptr %190, i64 %53
  %192 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %191, i64 0, i64 %30, i32 4
  %193 = load double, ptr %192, align 8, !tbaa !83
  %194 = call fastcc double @MagickLog10(double noundef %193) #23
  %195 = load double, ptr %45, align 8, !tbaa !83
  %196 = fneg double %193
  %197 = call double @llvm.fmuladd.f64(double %196, double %194, double %195)
  store double %197, ptr %45, align 8, !tbaa !83
  %198 = load ptr, ptr %5, align 8, !tbaa !6
  br label %199

199:                                              ; preds = %189, %160
  %200 = phi ptr [ %198, %189 ], [ %185, %160 ]
  %201 = getelementptr inbounds %struct._Image, ptr %200, i64 0, i32 6
  %202 = load i32, ptr %201, align 8, !tbaa !57
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %199
  %205 = load ptr, ptr %9, align 8, !tbaa !6
  %206 = getelementptr inbounds %struct._ChannelStatistics, ptr %205, i64 %53
  %207 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %206, i64 0, i64 %30, i32 3
  %208 = load double, ptr %207, align 8, !tbaa !87
  %209 = call fastcc double @MagickLog10(double noundef %208) #23
  %210 = load double, ptr %46, align 8, !tbaa !87
  %211 = fneg double %208
  %212 = call double @llvm.fmuladd.f64(double %211, double %209, double %210)
  store double %212, ptr %46, align 8, !tbaa !87
  br label %213

213:                                              ; preds = %204, %199
  %214 = load ptr, ptr %11, align 8, !tbaa !6
  %215 = getelementptr inbounds %struct._ChannelStatistics, ptr %214, i64 %53
  %216 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %215, i64 0, i64 %30
  %217 = load double, ptr %216, align 8, !tbaa !72
  %218 = call fastcc double @MagickLog10(double noundef %217) #23
  %219 = load double, ptr %47, align 8, !tbaa !72
  %220 = fneg double %217
  %221 = call double @llvm.fmuladd.f64(double %220, double %218, double %219)
  store double %221, ptr %47, align 8, !tbaa !72
  %222 = load ptr, ptr %11, align 8, !tbaa !6
  %223 = getelementptr inbounds %struct._ChannelStatistics, ptr %222, i64 %53
  %224 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %223, i64 0, i64 %30, i32 1
  %225 = load double, ptr %224, align 8, !tbaa !76
  %226 = call fastcc double @MagickLog10(double noundef %225) #23
  %227 = load double, ptr %48, align 8, !tbaa !76
  %228 = fneg double %225
  %229 = call double @llvm.fmuladd.f64(double %228, double %226, double %227)
  store double %229, ptr %48, align 8, !tbaa !76
  %230 = load ptr, ptr %11, align 8, !tbaa !6
  %231 = getelementptr inbounds %struct._ChannelStatistics, ptr %230, i64 %53
  %232 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %231, i64 0, i64 %30, i32 2
  %233 = load double, ptr %232, align 8, !tbaa !79
  %234 = call fastcc double @MagickLog10(double noundef %233) #23
  %235 = load double, ptr %49, align 8, !tbaa !79
  %236 = fneg double %233
  %237 = call double @llvm.fmuladd.f64(double %236, double %234, double %235)
  store double %237, ptr %49, align 8, !tbaa !79
  %238 = load ptr, ptr %5, align 8, !tbaa !6
  %239 = getelementptr inbounds %struct._Image, ptr %238, i64 0, i32 1
  %240 = load i32, ptr %239, align 4, !tbaa !56
  %241 = icmp eq i32 %240, 12
  br i1 %241, label %242, label %252

242:                                              ; preds = %213
  %243 = load ptr, ptr %11, align 8, !tbaa !6
  %244 = getelementptr inbounds %struct._ChannelStatistics, ptr %243, i64 %53
  %245 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %244, i64 0, i64 %30, i32 4
  %246 = load double, ptr %245, align 8, !tbaa !83
  %247 = call fastcc double @MagickLog10(double noundef %246) #23
  %248 = load double, ptr %50, align 8, !tbaa !83
  %249 = fneg double %246
  %250 = call double @llvm.fmuladd.f64(double %249, double %247, double %248)
  store double %250, ptr %50, align 8, !tbaa !83
  %251 = load ptr, ptr %5, align 8, !tbaa !6
  br label %252

252:                                              ; preds = %242, %213
  %253 = phi ptr [ %251, %242 ], [ %238, %213 ]
  %254 = getelementptr inbounds %struct._Image, ptr %253, i64 0, i32 6
  %255 = load i32, ptr %254, align 8, !tbaa !57
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %252
  %258 = load ptr, ptr %11, align 8, !tbaa !6
  %259 = getelementptr inbounds %struct._ChannelStatistics, ptr %258, i64 %53
  %260 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %259, i64 0, i64 %30, i32 3
  %261 = load double, ptr %260, align 8, !tbaa !87
  %262 = call fastcc double @MagickLog10(double noundef %261) #23
  %263 = load double, ptr %51, align 8, !tbaa !87
  %264 = fneg double %261
  %265 = call double @llvm.fmuladd.f64(double %264, double %262, double %263)
  store double %265, ptr %51, align 8, !tbaa !87
  br label %266

266:                                              ; preds = %252, %257
  %267 = add nuw nsw i64 %53, 1
  %268 = load i32, ptr %2, align 4, !tbaa !28
  %269 = zext i32 %268 to i64
  %270 = icmp ult i64 %267, %269
  br i1 %270, label %52, label %271, !llvm.loop !103

271:                                              ; preds = %266, %29
  %272 = phi i32 [ 0, %29 ], [ %268, %266 ]
  %273 = uitofp i32 %272 to double
  %274 = fmul double %273, %273
  %275 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %30
  %276 = load double, ptr %275, align 8, !tbaa !72
  %277 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %30
  %278 = load double, ptr %277, align 8, !tbaa !72
  %279 = fneg double %278
  %280 = fmul double %278, %279
  %281 = call double @llvm.fmuladd.f64(double %274, double %276, double %280)
  %282 = fmul double %274, %273
  %283 = fmul double %282, %273
  %284 = fdiv double %281, %283
  %285 = load ptr, ptr %7, align 8, !tbaa !6
  %286 = getelementptr inbounds %struct._ChannelFeatures, ptr %285, i64 1, i32 9, i64 %30
  store double %284, ptr %286, align 8, !tbaa !32
  %287 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %30, i32 1
  %288 = load double, ptr %287, align 8, !tbaa !76
  %289 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %30, i32 1
  %290 = load double, ptr %289, align 8, !tbaa !76
  %291 = fneg double %290
  %292 = fmul double %290, %291
  %293 = call double @llvm.fmuladd.f64(double %274, double %288, double %292)
  %294 = fdiv double %293, %283
  %295 = getelementptr inbounds %struct._ChannelFeatures, ptr %285, i64 2, i32 9, i64 %30
  store double %294, ptr %295, align 8, !tbaa !32
  %296 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %30, i32 2
  %297 = load double, ptr %296, align 8, !tbaa !79
  %298 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %30, i32 2
  %299 = load double, ptr %298, align 8, !tbaa !79
  %300 = fneg double %299
  %301 = fmul double %299, %300
  %302 = call double @llvm.fmuladd.f64(double %274, double %297, double %301)
  %303 = fdiv double %302, %283
  %304 = getelementptr inbounds %struct._ChannelFeatures, ptr %285, i64 4, i32 9, i64 %30
  store double %303, ptr %304, align 8, !tbaa !32
  %305 = load ptr, ptr %5, align 8, !tbaa !6
  %306 = getelementptr inbounds %struct._Image, ptr %305, i64 0, i32 6
  %307 = load i32, ptr %306, align 8, !tbaa !57
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %319, label %309

309:                                              ; preds = %271
  %310 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %30, i32 3
  %311 = load double, ptr %310, align 8, !tbaa !87
  %312 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %30, i32 3
  %313 = load double, ptr %312, align 8, !tbaa !87
  %314 = fneg double %313
  %315 = fmul double %313, %314
  %316 = call double @llvm.fmuladd.f64(double %274, double %311, double %315)
  %317 = fdiv double %316, %283
  %318 = getelementptr inbounds %struct._ChannelFeatures, ptr %285, i64 8, i32 9, i64 %30
  store double %317, ptr %318, align 8, !tbaa !32
  br label %319

319:                                              ; preds = %309, %271
  %320 = getelementptr inbounds %struct._Image, ptr %305, i64 0, i32 1
  %321 = load i32, ptr %320, align 4, !tbaa !56
  %322 = icmp eq i32 %321, 12
  br i1 %322, label %323, label %333

323:                                              ; preds = %319
  %324 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %30, i32 4
  %325 = load double, ptr %324, align 8, !tbaa !83
  %326 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %3, i64 0, i64 %30, i32 4
  %327 = load double, ptr %326, align 8, !tbaa !83
  %328 = fneg double %327
  %329 = fmul double %327, %328
  %330 = call double @llvm.fmuladd.f64(double %274, double %325, double %329)
  %331 = fdiv double %330, %283
  %332 = getelementptr inbounds %struct._ChannelFeatures, ptr %285, i64 32, i32 9, i64 %30
  store double %331, ptr %332, align 8, !tbaa !32
  br label %333

333:                                              ; preds = %323, %319
  %334 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %30
  %335 = load double, ptr %334, align 8, !tbaa !72
  %336 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %30
  %337 = load double, ptr %336, align 8, !tbaa !72
  %338 = fsub double %335, %337
  %339 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %30
  %340 = load double, ptr %339, align 8, !tbaa !72
  %341 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %30
  %342 = load double, ptr %341, align 8, !tbaa !72
  %343 = fcmp ogt double %340, %342
  %344 = select i1 %343, double %340, double %342
  %345 = fdiv double %338, %344
  %346 = getelementptr inbounds %struct._ChannelFeatures, ptr %285, i64 1, i32 11, i64 %30
  store double %345, ptr %346, align 8, !tbaa !32
  %347 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %30, i32 1
  %348 = load double, ptr %347, align 8, !tbaa !76
  %349 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %30, i32 1
  %350 = load double, ptr %349, align 8, !tbaa !76
  %351 = fsub double %348, %350
  %352 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %30, i32 1
  %353 = load double, ptr %352, align 8, !tbaa !76
  %354 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %30, i32 1
  %355 = load double, ptr %354, align 8, !tbaa !76
  %356 = fcmp ogt double %353, %355
  %357 = select i1 %356, double %353, double %355
  %358 = fdiv double %351, %357
  %359 = getelementptr inbounds %struct._ChannelFeatures, ptr %285, i64 2, i32 11, i64 %30
  store double %358, ptr %359, align 8, !tbaa !32
  %360 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %30, i32 2
  %361 = load double, ptr %360, align 8, !tbaa !79
  %362 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %30, i32 2
  %363 = load double, ptr %362, align 8, !tbaa !79
  %364 = fsub double %361, %363
  %365 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %30, i32 2
  %366 = load double, ptr %365, align 8, !tbaa !79
  %367 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %30, i32 2
  %368 = load double, ptr %367, align 8, !tbaa !79
  %369 = fcmp ogt double %366, %368
  %370 = select i1 %369, double %366, double %368
  %371 = fdiv double %364, %370
  %372 = getelementptr inbounds %struct._ChannelFeatures, ptr %285, i64 4, i32 11, i64 %30
  store double %371, ptr %372, align 8, !tbaa !32
  br i1 %322, label %373, label %387

373:                                              ; preds = %333
  %374 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %30, i32 4
  %375 = load double, ptr %374, align 8, !tbaa !83
  %376 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %30, i32 4
  %377 = load double, ptr %376, align 8, !tbaa !83
  %378 = fsub double %375, %377
  %379 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %30, i32 4
  %380 = load double, ptr %379, align 8, !tbaa !83
  %381 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %30, i32 4
  %382 = load double, ptr %381, align 8, !tbaa !83
  %383 = fcmp ogt double %380, %382
  %384 = select i1 %383, double %380, double %382
  %385 = fdiv double %378, %384
  %386 = getelementptr inbounds %struct._ChannelFeatures, ptr %285, i64 32, i32 11, i64 %30
  store double %385, ptr %386, align 8, !tbaa !32
  br label %387

387:                                              ; preds = %373, %333
  br i1 %308, label %402, label %388

388:                                              ; preds = %387
  %389 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %30, i32 3
  %390 = load double, ptr %389, align 8, !tbaa !87
  %391 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %30, i32 3
  %392 = load double, ptr %391, align 8, !tbaa !87
  %393 = fsub double %390, %392
  %394 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %30, i32 3
  %395 = load double, ptr %394, align 8, !tbaa !87
  %396 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %30, i32 3
  %397 = load double, ptr %396, align 8, !tbaa !87
  %398 = fcmp ogt double %395, %397
  %399 = select i1 %398, double %395, double %397
  %400 = fdiv double %393, %399
  %401 = getelementptr inbounds %struct._ChannelFeatures, ptr %285, i64 8, i32 11, i64 %30
  store double %400, ptr %401, align 8, !tbaa !32
  br label %402

402:                                              ; preds = %388, %387
  %403 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %14, i64 0, i64 %30
  %404 = load double, ptr %403, align 8, !tbaa !72
  %405 = load double, ptr %334, align 8, !tbaa !72
  %406 = fsub double %404, %405
  %407 = fmul double %406, -2.000000e+00
  %408 = call double @exp(double noundef %407) #21
  %409 = fsub double 1.000000e+00, %408
  %410 = call double @llvm.fabs.f64(double %409)
  %411 = call double @llvm.sqrt.f64(double %410)
  %412 = load ptr, ptr %7, align 8, !tbaa !6
  %413 = getelementptr inbounds %struct._ChannelFeatures, ptr %412, i64 1, i32 12, i64 %30
  store double %411, ptr %413, align 8, !tbaa !32
  %414 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %14, i64 0, i64 %30, i32 1
  %415 = load double, ptr %414, align 8, !tbaa !76
  %416 = load double, ptr %347, align 8, !tbaa !76
  %417 = fsub double %415, %416
  %418 = fmul double %417, -2.000000e+00
  %419 = call double @exp(double noundef %418) #21
  %420 = fsub double 1.000000e+00, %419
  %421 = call double @llvm.fabs.f64(double %420)
  %422 = call double @llvm.sqrt.f64(double %421)
  %423 = load ptr, ptr %7, align 8, !tbaa !6
  %424 = getelementptr inbounds %struct._ChannelFeatures, ptr %423, i64 2, i32 12, i64 %30
  store double %422, ptr %424, align 8, !tbaa !32
  %425 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %14, i64 0, i64 %30, i32 2
  %426 = load double, ptr %425, align 8, !tbaa !79
  %427 = load double, ptr %360, align 8, !tbaa !79
  %428 = fsub double %426, %427
  %429 = fmul double %428, -2.000000e+00
  %430 = call double @exp(double noundef %429) #21
  %431 = fsub double 1.000000e+00, %430
  %432 = call double @llvm.fabs.f64(double %431)
  %433 = call double @llvm.sqrt.f64(double %432)
  %434 = load ptr, ptr %7, align 8, !tbaa !6
  %435 = getelementptr inbounds %struct._ChannelFeatures, ptr %434, i64 4, i32 12, i64 %30
  store double %433, ptr %435, align 8, !tbaa !32
  %436 = load ptr, ptr %5, align 8, !tbaa !6
  %437 = getelementptr inbounds %struct._Image, ptr %436, i64 0, i32 1
  %438 = load i32, ptr %437, align 4, !tbaa !56
  %439 = icmp eq i32 %438, 12
  br i1 %439, label %440, label %454

440:                                              ; preds = %402
  %441 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %14, i64 0, i64 %30, i32 4
  %442 = load double, ptr %441, align 8, !tbaa !83
  %443 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %30, i32 4
  %444 = load double, ptr %443, align 8, !tbaa !83
  %445 = fsub double %442, %444
  %446 = fmul double %445, -2.000000e+00
  %447 = call double @exp(double noundef %446) #21
  %448 = fsub double 1.000000e+00, %447
  %449 = call double @llvm.fabs.f64(double %448)
  %450 = call double @llvm.sqrt.f64(double %449)
  %451 = load ptr, ptr %7, align 8, !tbaa !6
  %452 = getelementptr inbounds %struct._ChannelFeatures, ptr %451, i64 32, i32 12, i64 %30
  store double %450, ptr %452, align 8, !tbaa !32
  %453 = load ptr, ptr %5, align 8, !tbaa !6
  br label %454

454:                                              ; preds = %440, %402
  %455 = phi ptr [ %453, %440 ], [ %436, %402 ]
  %456 = getelementptr inbounds %struct._Image, ptr %455, i64 0, i32 6
  %457 = load i32, ptr %456, align 8, !tbaa !57
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %472, label %459

459:                                              ; preds = %454
  %460 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %14, i64 0, i64 %30, i32 3
  %461 = load double, ptr %460, align 8, !tbaa !87
  %462 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %30, i32 3
  %463 = load double, ptr %462, align 8, !tbaa !87
  %464 = fsub double %461, %463
  %465 = fmul double %464, -2.000000e+00
  %466 = call double @exp(double noundef %465) #21
  %467 = fsub double 1.000000e+00, %466
  %468 = call double @llvm.fabs.f64(double %467)
  %469 = call double @llvm.sqrt.f64(double %468)
  %470 = load ptr, ptr %7, align 8, !tbaa !6
  %471 = getelementptr inbounds %struct._ChannelFeatures, ptr %470, i64 8, i32 12, i64 %30
  store double %469, ptr %471, align 8, !tbaa !32
  br label %472

472:                                              ; preds = %459, %454
  %473 = add nsw i64 %30, 1
  %474 = load i64, ptr %17, align 8, !tbaa !36
  %475 = icmp slt i64 %30, %474
  br i1 %475, label %29, label %476

476:                                              ; preds = %472
  %477 = load i64, ptr %16, align 8, !tbaa !36
  br label %478

478:                                              ; preds = %476, %25
  %479 = phi i64 [ %27, %25 ], [ %477, %476 ]
  %480 = phi i64 [ %26, %25 ], [ %474, %476 ]
  %481 = load i64, ptr %18, align 8, !tbaa !36
  %482 = add nsw i64 %481, %479
  store i64 %482, ptr %16, align 8, !tbaa !36
  %483 = add nsw i64 %481, %480
  %484 = call i64 @llvm.smin.i64(i64 %483, i64 3)
  store i64 %484, ptr %17, align 8, !tbaa !36
  %485 = icmp sgt i64 %482, %484
  br i1 %485, label %486, label %25

486:                                              ; preds = %478, %15
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #15

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetImageChannelFeatures.omp_outlined.13(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8) #3 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._ChannelStatistics, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  store i64 0, ptr %10, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 3, ptr %11, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 1, ptr %12, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  store i32 0, ptr %13, align 4, !tbaa !28
  %15 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %15, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %16 = load i64, ptr %11, align 8
  %17 = call i64 @llvm.smin.i64(i64 %16, i64 3)
  store i64 %17, ptr %11, align 8, !tbaa !36
  %18 = load i64, ptr %10, align 8, !tbaa !36
  %19 = icmp sgt i64 %18, %17
  br i1 %19, label %251, label %20

20:                                               ; preds = %9, %243
  %21 = phi i64 [ %249, %243 ], [ %17, %9 ]
  %22 = phi i64 [ %247, %243 ], [ %18, %9 ]
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %243, label %24

24:                                               ; preds = %20, %237
  %25 = phi i64 [ %238, %237 ], [ %22, %20 ]
  %26 = load i32, ptr %2, align 4, !tbaa !28
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %209, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %14, i64 0, i64 %25
  %30 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %14, i64 0, i64 %25, i32 1
  %31 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %14, i64 0, i64 %25, i32 2
  %32 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %14, i64 0, i64 %25, i32 4
  %33 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %14, i64 0, i64 %25, i32 3
  br label %34

34:                                               ; preds = %28, %206
  %35 = phi i64 [ 0, %28 ], [ %207, %206 ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %14) #4
  %36 = call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 160) #21
  %37 = load i32, ptr %2, align 4, !tbaa !28
  %38 = zext i32 %37 to i64
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %172, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %3, align 8, !tbaa !6
  %42 = getelementptr inbounds ptr, ptr %41, i64 %35
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = load ptr, ptr %6, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct._ChannelStatistics, ptr %44, i64 %35
  %46 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %45, i64 0, i64 %25
  %47 = load ptr, ptr %7, align 8, !tbaa !6
  %48 = load ptr, ptr %5, align 8, !tbaa !6
  %49 = getelementptr inbounds ptr, ptr %48, i64 %35
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %45, i64 0, i64 %25, i32 1
  %52 = load ptr, ptr %4, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !56
  %55 = icmp eq i32 %54, 12
  %56 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !57
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %45, i64 0, i64 %25, i32 4
  %60 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %45, i64 0, i64 %25, i32 3
  br label %61

61:                                               ; preds = %40, %169
  %62 = phi i64 [ 0, %40 ], [ %170, %169 ]
  %63 = getelementptr inbounds ptr, ptr %41, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct._ChannelStatistics, ptr %50, i64 %62
  %66 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %65, i64 0, i64 %25
  %67 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %65, i64 0, i64 %25, i32 1
  %68 = load ptr, ptr %3, align 8
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds %struct._Image, ptr %69, i64 0, i32 1
  %71 = getelementptr inbounds %struct._Image, ptr %69, i64 0, i32 6
  %72 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %65, i64 0, i64 %25, i32 4
  %73 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %65, i64 0, i64 %25, i32 3
  br label %74

74:                                               ; preds = %61, %166
  %75 = phi i64 [ 0, %61 ], [ %167, %166 ]
  %76 = sub nsw i64 %62, %75
  %77 = icmp eq i64 %76, %35
  %78 = sub nsw i64 %75, %62
  %79 = icmp eq i64 %78, %35
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %74
  %82 = getelementptr inbounds ptr, ptr %68, i64 %75
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct._ChannelStatistics, ptr %83, i64 %62
  %85 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %84, i64 0, i64 %25
  %86 = load <2 x double>, ptr %85, align 8, !tbaa !32
  %87 = load <2 x double>, ptr %29, align 8, !tbaa !32
  %88 = fadd <2 x double> %86, %87
  store <2 x double> %88, ptr %29, align 8, !tbaa !32
  %89 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %84, i64 0, i64 %25, i32 2
  %90 = load double, ptr %89, align 8, !tbaa !79
  %91 = load double, ptr %31, align 8, !tbaa !79
  %92 = fadd double %90, %91
  store double %92, ptr %31, align 8, !tbaa !79
  %93 = load i32, ptr %70, align 4, !tbaa !56
  %94 = icmp eq i32 %93, 12
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %84, i64 0, i64 %25, i32 4
  %97 = load double, ptr %96, align 8, !tbaa !83
  %98 = load double, ptr %32, align 8, !tbaa !83
  %99 = fadd double %97, %98
  store double %99, ptr %32, align 8, !tbaa !83
  br label %100

100:                                              ; preds = %95, %81
  %101 = load i32, ptr %71, align 8, !tbaa !57
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %84, i64 0, i64 %25, i32 3
  %105 = load double, ptr %104, align 8, !tbaa !87
  %106 = load double, ptr %33, align 8, !tbaa !87
  %107 = fadd double %105, %106
  store double %107, ptr %33, align 8, !tbaa !87
  br label %108

108:                                              ; preds = %74, %100, %103
  %109 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 %75
  %110 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %109, i64 0, i64 %25
  %111 = load double, ptr %110, align 8, !tbaa !72
  %112 = getelementptr inbounds %struct._ChannelStatistics, ptr %64, i64 %75
  %113 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %112, i64 0, i64 %25
  %114 = load double, ptr %113, align 8, !tbaa !72
  %115 = fmul double %111, %114
  %116 = load double, ptr %46, align 8, !tbaa !72
  %117 = fdiv double %115, %116
  %118 = getelementptr inbounds %struct._ChannelStatistics, ptr %47, i64 %75
  %119 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %118, i64 0, i64 %25
  %120 = load double, ptr %119, align 8, !tbaa !72
  %121 = fdiv double %117, %120
  %122 = load double, ptr %66, align 8, !tbaa !72
  %123 = fadd double %121, %122
  store double %123, ptr %66, align 8, !tbaa !72
  %124 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %109, i64 0, i64 %25, i32 1
  %125 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %112, i64 0, i64 %25, i32 1
  %126 = load double, ptr %119, align 8, !tbaa !72
  %127 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %118, i64 0, i64 %25, i32 2
  %128 = load double, ptr %127, align 8, !tbaa !79
  %129 = load <2 x double>, ptr %124, align 8, !tbaa !32
  %130 = load <2 x double>, ptr %125, align 8, !tbaa !32
  %131 = fmul <2 x double> %129, %130
  %132 = load <2 x double>, ptr %51, align 8, !tbaa !32
  %133 = fdiv <2 x double> %131, %132
  %134 = insertelement <2 x double> poison, double %126, i64 0
  %135 = insertelement <2 x double> %134, double %128, i64 1
  %136 = fdiv <2 x double> %133, %135
  %137 = load <2 x double>, ptr %67, align 8, !tbaa !32
  %138 = fadd <2 x double> %137, %136
  store <2 x double> %138, ptr %67, align 8, !tbaa !32
  br i1 %55, label %139, label %152

139:                                              ; preds = %108
  %140 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %109, i64 0, i64 %25, i32 4
  %141 = load double, ptr %140, align 8, !tbaa !83
  %142 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %112, i64 0, i64 %25, i32 4
  %143 = load double, ptr %142, align 8, !tbaa !83
  %144 = fmul double %141, %143
  %145 = load double, ptr %59, align 8, !tbaa !83
  %146 = fdiv double %144, %145
  %147 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %118, i64 0, i64 %25, i32 4
  %148 = load double, ptr %147, align 8, !tbaa !83
  %149 = fdiv double %146, %148
  %150 = load double, ptr %72, align 8, !tbaa !83
  %151 = fadd double %150, %149
  store double %151, ptr %72, align 8, !tbaa !83
  br label %152

152:                                              ; preds = %139, %108
  br i1 %58, label %166, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %109, i64 0, i64 %25, i32 3
  %155 = load double, ptr %154, align 8, !tbaa !87
  %156 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %112, i64 0, i64 %25, i32 3
  %157 = load double, ptr %156, align 8, !tbaa !87
  %158 = fmul double %155, %157
  %159 = load double, ptr %60, align 8, !tbaa !87
  %160 = fdiv double %158, %159
  %161 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %118, i64 0, i64 %25, i32 3
  %162 = load double, ptr %161, align 8, !tbaa !87
  %163 = fdiv double %160, %162
  %164 = load double, ptr %73, align 8, !tbaa !87
  %165 = fadd double %164, %163
  store double %165, ptr %73, align 8, !tbaa !87
  br label %166

166:                                              ; preds = %152, %153
  %167 = add nuw nsw i64 %75, 1
  %168 = icmp eq i64 %167, %38
  br i1 %168, label %169, label %74, !llvm.loop !104

169:                                              ; preds = %166
  %170 = add nuw nsw i64 %62, 1
  %171 = icmp eq i64 %170, %38
  br i1 %171, label %172, label %61, !llvm.loop !105

172:                                              ; preds = %169, %34
  %173 = mul nsw i64 %35, %35
  %174 = sitofp i64 %173 to double
  %175 = load double, ptr %29, align 8, !tbaa !72
  %176 = load ptr, ptr %8, align 8, !tbaa !6
  %177 = getelementptr inbounds %struct._ChannelFeatures, ptr %176, i64 1, i32 1, i64 %25
  %178 = load double, ptr %177, align 8, !tbaa !32
  %179 = call double @llvm.fmuladd.f64(double %174, double %175, double %178)
  store double %179, ptr %177, align 8, !tbaa !32
  %180 = load double, ptr %30, align 8, !tbaa !76
  %181 = getelementptr inbounds %struct._ChannelFeatures, ptr %176, i64 2, i32 1, i64 %25
  %182 = load double, ptr %181, align 8, !tbaa !32
  %183 = call double @llvm.fmuladd.f64(double %174, double %180, double %182)
  store double %183, ptr %181, align 8, !tbaa !32
  %184 = load double, ptr %31, align 8, !tbaa !79
  %185 = getelementptr inbounds %struct._ChannelFeatures, ptr %176, i64 4, i32 1, i64 %25
  %186 = load double, ptr %185, align 8, !tbaa !32
  %187 = call double @llvm.fmuladd.f64(double %174, double %184, double %186)
  store double %187, ptr %185, align 8, !tbaa !32
  %188 = load ptr, ptr %4, align 8, !tbaa !6
  %189 = getelementptr inbounds %struct._Image, ptr %188, i64 0, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !56
  %191 = icmp eq i32 %190, 12
  br i1 %191, label %192, label %197

192:                                              ; preds = %172
  %193 = load double, ptr %32, align 8, !tbaa !83
  %194 = getelementptr inbounds %struct._ChannelFeatures, ptr %176, i64 32, i32 1, i64 %25
  %195 = load double, ptr %194, align 8, !tbaa !32
  %196 = call double @llvm.fmuladd.f64(double %174, double %193, double %195)
  store double %196, ptr %194, align 8, !tbaa !32
  br label %197

197:                                              ; preds = %192, %172
  %198 = getelementptr inbounds %struct._Image, ptr %188, i64 0, i32 6
  %199 = load i32, ptr %198, align 8, !tbaa !57
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %197
  %202 = load double, ptr %33, align 8, !tbaa !87
  %203 = getelementptr inbounds %struct._ChannelFeatures, ptr %176, i64 8, i32 1, i64 %25
  %204 = load double, ptr %203, align 8, !tbaa !32
  %205 = call double @llvm.fmuladd.f64(double %174, double %202, double %204)
  store double %205, ptr %203, align 8, !tbaa !32
  br label %206

206:                                              ; preds = %201, %197
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %14) #4
  %207 = add nuw nsw i64 %35, 1
  %208 = icmp ult i64 %207, %38
  br i1 %208, label %34, label %209, !llvm.loop !106

209:                                              ; preds = %206, %24
  %210 = call double @sqrt(double noundef -1.000000e+00) #21
  %211 = load ptr, ptr %8, align 8, !tbaa !6
  %212 = getelementptr inbounds %struct._ChannelFeatures, ptr %211, i64 1, i32 13, i64 %25
  store double %210, ptr %212, align 8, !tbaa !32
  %213 = call double @sqrt(double noundef -1.000000e+00) #21
  %214 = load ptr, ptr %8, align 8, !tbaa !6
  %215 = getelementptr inbounds %struct._ChannelFeatures, ptr %214, i64 2, i32 13, i64 %25
  store double %213, ptr %215, align 8, !tbaa !32
  %216 = call double @sqrt(double noundef -1.000000e+00) #21
  %217 = load ptr, ptr %8, align 8, !tbaa !6
  %218 = getelementptr inbounds %struct._ChannelFeatures, ptr %217, i64 4, i32 13, i64 %25
  store double %216, ptr %218, align 8, !tbaa !32
  %219 = load ptr, ptr %4, align 8, !tbaa !6
  %220 = getelementptr inbounds %struct._Image, ptr %219, i64 0, i32 1
  %221 = load i32, ptr %220, align 4, !tbaa !56
  %222 = icmp eq i32 %221, 12
  br i1 %222, label %223, label %228

223:                                              ; preds = %209
  %224 = call double @sqrt(double noundef -1.000000e+00) #21
  %225 = load ptr, ptr %8, align 8, !tbaa !6
  %226 = getelementptr inbounds %struct._ChannelFeatures, ptr %225, i64 32, i32 13, i64 %25
  store double %224, ptr %226, align 8, !tbaa !32
  %227 = load ptr, ptr %4, align 8, !tbaa !6
  br label %228

228:                                              ; preds = %223, %209
  %229 = phi ptr [ %227, %223 ], [ %219, %209 ]
  %230 = getelementptr inbounds %struct._Image, ptr %229, i64 0, i32 6
  %231 = load i32, ptr %230, align 8, !tbaa !57
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %228
  %234 = call double @sqrt(double noundef -1.000000e+00) #21
  %235 = load ptr, ptr %8, align 8, !tbaa !6
  %236 = getelementptr inbounds %struct._ChannelFeatures, ptr %235, i64 8, i32 13, i64 %25
  store double %234, ptr %236, align 8, !tbaa !32
  br label %237

237:                                              ; preds = %233, %228
  %238 = add nsw i64 %25, 1
  %239 = load i64, ptr %11, align 8, !tbaa !36
  %240 = icmp slt i64 %25, %239
  br i1 %240, label %24, label %241

241:                                              ; preds = %237
  %242 = load i64, ptr %10, align 8, !tbaa !36
  br label %243

243:                                              ; preds = %241, %20
  %244 = phi i64 [ %22, %20 ], [ %242, %241 ]
  %245 = phi i64 [ %21, %20 ], [ %239, %241 ]
  %246 = load i64, ptr %12, align 8, !tbaa !36
  %247 = add nsw i64 %246, %244
  store i64 %247, ptr %10, align 8, !tbaa !36
  %248 = add nsw i64 %246, %245
  %249 = call i64 @llvm.smin.i64(i64 %248, i64 3)
  store i64 %249, ptr %11, align 8, !tbaa !36
  %250 = icmp sgt i64 %247, %249
  br i1 %250, label %251, label %20

251:                                              ; preds = %243, %9
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @HoughLineImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1842, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #21
  br label %18

18:                                               ; preds = %15, %5
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !27
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !26
  %23 = tail call i64 @llvm.umax.i64(i64 %20, i64 %22)
  %24 = uitofp i64 %23 to double
  %25 = fmul double %24, 0x3FF6A09E667F3BCD
  %26 = fmul double %25, 5.000000e-01
  %27 = fmul double %26, 2.000000e+00
  %28 = fptoui double %27 to i64
  %29 = tail call ptr @AcquireMatrixInfo(i64 noundef 180, i64 noundef %28, i64 noundef 8, ptr noundef %4) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1852, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %32) #21
  br label %320

34:                                               ; preds = %18
  %35 = tail call i32 @NullMatrix(ptr noundef nonnull %29) #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %29) #21
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %40 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1856, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %39) #21
  br label %320

41:                                               ; preds = %34
  %42 = load i64, ptr %21, align 8, !tbaa !26
  %43 = uitofp i64 %42 to double
  %44 = fmul double %43, 5.000000e-01
  %45 = load i64, ptr %19, align 8, !tbaa !27
  %46 = uitofp i64 %45 to double
  %47 = fmul double %46, 5.000000e-01
  %48 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #21
  %49 = load i64, ptr %19, align 8, !tbaa !27
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  %52 = tail call ptr @DestroyCacheView(ptr noundef %48) #21
  br label %120

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %55

55:                                               ; preds = %53, %109
  %56 = phi i32 [ 1, %53 ], [ %111, %109 ]
  %57 = phi i64 [ 0, %53 ], [ %112, %109 ]
  %58 = phi i64 [ 0, %53 ], [ %110, %109 ]
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %109, label %60

60:                                               ; preds = %55
  %61 = load i64, ptr %21, align 8, !tbaa !26
  %62 = call ptr @GetCacheViewVirtualPixels(ptr noundef %48, i64 noundef 0, i64 noundef %57, i64 noundef %61, i64 noundef 1, ptr noundef %4) #22
  %63 = icmp eq ptr %62, null
  br i1 %63, label %109, label %64

64:                                               ; preds = %60
  %65 = load i64, ptr %21, align 8, !tbaa !26
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %64
  %68 = sitofp i64 %57 to double
  %69 = fsub double %68, %47
  br label %70

70:                                               ; preds = %67, %95
  %71 = phi i64 [ 0, %67 ], [ %97, %95 ]
  %72 = phi ptr [ %62, %67 ], [ %96, %95 ]
  %73 = call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %72) #22
  %74 = fcmp ogt float %73, 3.276700e+04
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = sitofp i64 %71 to double
  %77 = fsub double %76, %44
  br label %78

78:                                               ; preds = %75, %78
  %79 = phi i64 [ 0, %75 ], [ %93, %78 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  %80 = sitofp i64 %79 to double
  %81 = call fastcc double @DegreesToRadians(double noundef %80) #23
  %82 = call double @cos(double noundef %81) #21
  %83 = call double @sin(double noundef %81) #21
  %84 = fmul double %69, %83
  %85 = call double @llvm.fmuladd.f64(double %77, double %82, double %84)
  %86 = fadd double %26, %85
  %87 = call fastcc double @MagickRound(double noundef %86) #23
  %88 = fptosi double %87 to i64
  %89 = call i32 @GetMatrixElement(ptr noundef nonnull %29, i64 noundef %79, i64 noundef %88, ptr noundef nonnull %9) #21
  %90 = load double, ptr %9, align 8, !tbaa !32
  %91 = fadd double %90, 1.000000e+00
  store double %91, ptr %9, align 8, !tbaa !32
  %92 = call i32 @SetMatrixElement(ptr noundef nonnull %29, i64 noundef %79, i64 noundef %88, ptr noundef nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  %93 = add nuw nsw i64 %79, 1
  %94 = icmp eq i64 %93, 180
  br i1 %94, label %95, label %78, !llvm.loop !107

95:                                               ; preds = %78, %70
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1
  %97 = add nuw nsw i64 %71, 1
  %98 = load i64, ptr %21, align 8, !tbaa !26
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %70, label %100, !llvm.loop !108

100:                                              ; preds = %95, %64
  %101 = load ptr, ptr %54, align 8, !tbaa !48
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  call void @__kmpc_critical(ptr nonnull @2, i32 %11, ptr nonnull @.gomp_critical_user_MagickCore_HoughLineImage.var)
  %104 = add nsw i64 %58, 1
  %105 = load i64, ptr %19, align 8, !tbaa !27
  %106 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i64 noundef %58, i64 noundef %105) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %11, ptr nonnull @.gomp_critical_user_MagickCore_HoughLineImage.var)
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i32
  br label %109

109:                                              ; preds = %100, %103, %60, %55
  %110 = phi i64 [ %58, %55 ], [ %58, %60 ], [ %104, %103 ], [ %58, %100 ]
  %111 = phi i32 [ 0, %55 ], [ 0, %60 ], [ %108, %103 ], [ 1, %100 ]
  %112 = add nuw nsw i64 %57, 1
  %113 = load i64, ptr %19, align 8, !tbaa !27
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %55, label %115, !llvm.loop !109

115:                                              ; preds = %109
  %116 = call ptr @DestroyCacheView(ptr noundef %48) #21
  %117 = icmp eq i32 %111, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %29) #21
  br label %320

120:                                              ; preds = %51, %115
  %121 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %7) #21
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %29) #21
  br label %320

125:                                              ; preds = %120
  %126 = uitofp i64 %1 to double
  %127 = uitofp i64 %2 to double
  %128 = uitofp i64 %3 to double
  %129 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %126, double noundef %127, double noundef %128) #21
  %130 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #27
  %131 = call i64 @write(i32 noundef %121, ptr noundef nonnull %6, i64 noundef %130) #21
  %132 = load i64, ptr %21, align 8, !tbaa !26
  %133 = uitofp i64 %132 to double
  %134 = load i64, ptr %19, align 8, !tbaa !27
  %135 = uitofp i64 %134 to double
  %136 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.16, double noundef %133, double noundef %135) #21
  %137 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #27
  %138 = call i64 @write(i32 noundef %121, ptr noundef nonnull %6, i64 noundef %137) #21
  %139 = icmp sgt i64 %28, 0
  br i1 %139, label %140, label %276

140:                                              ; preds = %125
  %141 = icmp eq i64 %3, 0
  %142 = load i64, ptr %21, align 8, !tbaa !26
  %143 = load i64, ptr %19, align 8, !tbaa !27
  %144 = call i64 @llvm.umax.i64(i64 %142, i64 %143)
  %145 = lshr i64 %144, 2
  %146 = select i1 %141, i64 %145, i64 %3
  %147 = uitofp i64 %146 to double
  %148 = sdiv i64 %2, 2
  %149 = sub nsw i64 0, %148
  %150 = icmp slt i64 %2, -1
  %151 = sdiv i64 %1, 2
  %152 = sub nsw i64 0, %151
  %153 = icmp slt i64 %1, -1
  %154 = lshr i64 %1, 1
  %155 = uitofp i64 %28 to double
  %156 = fmul double %155, 5.000000e-01
  %157 = call i64 @llvm.abs.i64(i64 %151, i1 true)
  %158 = add nuw nsw i64 %157, 1
  br label %159

159:                                              ; preds = %140, %273
  %160 = phi i64 [ 0, %140 ], [ %274, %273 ]
  %161 = sitofp i64 %160 to double
  %162 = fsub double %161, %156
  %163 = insertelement <2 x double> poison, double %162, i64 0
  %164 = shufflevector <2 x double> %163, <2 x double> poison, <2 x i32> zeroinitializer
  br label %165

165:                                              ; preds = %159, %270
  %166 = phi i64 [ 0, %159 ], [ %271, %270 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  %167 = call i32 @GetMatrixElement(ptr noundef nonnull %29, i64 noundef %166, i64 noundef %160, ptr noundef nonnull %10) #21
  %168 = load double, ptr %10, align 8, !tbaa !32
  %169 = fcmp ult double %168, %147
  br i1 %169, label %270, label %170

170:                                              ; preds = %165
  br i1 %150, label %195, label %171

171:                                              ; preds = %170, %188
  %172 = phi i64 [ %192, %188 ], [ %149, %170 ]
  %173 = phi double [ %190, %188 ], [ %168, %170 ]
  br i1 %153, label %188, label %174

174:                                              ; preds = %171
  %175 = add nsw i64 %172, %160
  br label %176

176:                                              ; preds = %174, %185
  %177 = phi i64 [ %152, %174 ], [ %186, %185 ]
  %178 = or i64 %177, %172
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %176
  %181 = add nsw i64 %177, %166
  %182 = call i32 @GetMatrixElement(ptr noundef nonnull %29, i64 noundef %181, i64 noundef %175, ptr noundef nonnull %10) #21
  %183 = load double, ptr %10, align 8, !tbaa !32
  %184 = fcmp ogt double %183, %173
  br i1 %184, label %188, label %185

185:                                              ; preds = %176, %180
  %186 = add i64 %177, 1
  %187 = icmp eq i64 %177, %157
  br i1 %187, label %188, label %176, !llvm.loop !110

188:                                              ; preds = %185, %180, %171
  %189 = phi i64 [ %152, %171 ], [ %177, %180 ], [ %158, %185 ]
  %190 = phi double [ %173, %171 ], [ %183, %180 ], [ %173, %185 ]
  %191 = icmp slt i64 %189, %154
  %192 = add nsw i64 %172, 1
  %193 = icmp sge i64 %172, %148
  %194 = select i1 %191, i1 true, i1 %193
  br i1 %194, label %195, label %171, !llvm.loop !111

195:                                              ; preds = %188, %170
  %196 = phi double [ %168, %170 ], [ %190, %188 ]
  %197 = call i32 @GetMatrixElement(ptr noundef nonnull %29, i64 noundef %166, i64 noundef %160, ptr noundef nonnull %10) #21
  %198 = load double, ptr %10, align 8, !tbaa !32
  %199 = fcmp ule double %196, %198
  br i1 %199, label %200, label %270

200:                                              ; preds = %195
  %201 = add nsw i64 %166, -45
  %202 = icmp ult i64 %201, 91
  %203 = sitofp i64 %166 to double
  %204 = call fastcc double @DegreesToRadians(double noundef %203) #23
  br i1 %202, label %205, label %232

205:                                              ; preds = %200
  %206 = load i64, ptr %21, align 8, !tbaa !26
  %207 = call double @cos(double noundef %204) #21
  %208 = call double @sin(double noundef %204) #21
  %209 = load i64, ptr %19, align 8, !tbaa !27
  %210 = load i64, ptr %21, align 8, !tbaa !26
  %211 = call double @cos(double noundef %204) #21
  %212 = call double @sin(double noundef %204) #21
  %213 = load i64, ptr %19, align 8, !tbaa !27
  %214 = insertelement <2 x i64> poison, i64 %210, i64 0
  %215 = insertelement <2 x i64> %214, i64 %206, i64 1
  %216 = uitofp <2 x i64> %215 to <2 x double>
  %217 = fmul <2 x double> %216, <double 5.000000e-01, double 5.000000e-01>
  %218 = insertelement <2 x double> %216, double 0.000000e+00, i64 1
  %219 = fsub <2 x double> %218, %217
  %220 = fneg <2 x double> %219
  %221 = insertelement <2 x double> poison, double %211, i64 0
  %222 = insertelement <2 x double> %221, double %207, i64 1
  %223 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %220, <2 x double> %222, <2 x double> %164)
  %224 = insertelement <2 x double> poison, double %212, i64 0
  %225 = insertelement <2 x double> %224, double %208, i64 1
  %226 = fdiv <2 x double> %223, %225
  %227 = insertelement <2 x i64> poison, i64 %213, i64 0
  %228 = insertelement <2 x i64> %227, i64 %209, i64 1
  %229 = uitofp <2 x i64> %228 to <2 x double>
  %230 = fmul <2 x double> %229, <double 5.000000e-01, double 5.000000e-01>
  %231 = fadd <2 x double> %226, %230
  br label %260

232:                                              ; preds = %200
  %233 = load i64, ptr %19, align 8, !tbaa !27
  %234 = call double @sin(double noundef %204) #21
  %235 = call double @cos(double noundef %204) #21
  %236 = load i64, ptr %21, align 8, !tbaa !26
  %237 = load i64, ptr %19, align 8, !tbaa !27
  %238 = call double @sin(double noundef %204) #21
  %239 = call double @cos(double noundef %204) #21
  %240 = load i64, ptr %21, align 8, !tbaa !26
  %241 = insertelement <2 x i64> poison, i64 %237, i64 0
  %242 = insertelement <2 x i64> %241, i64 %233, i64 1
  %243 = uitofp <2 x i64> %242 to <2 x double>
  %244 = fmul <2 x double> %243, <double 5.000000e-01, double 5.000000e-01>
  %245 = insertelement <2 x double> %243, double 0.000000e+00, i64 1
  %246 = fsub <2 x double> %245, %244
  %247 = fneg <2 x double> %246
  %248 = insertelement <2 x double> poison, double %238, i64 0
  %249 = insertelement <2 x double> %248, double %234, i64 1
  %250 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %247, <2 x double> %249, <2 x double> %164)
  %251 = insertelement <2 x double> poison, double %239, i64 0
  %252 = insertelement <2 x double> %251, double %235, i64 1
  %253 = fdiv <2 x double> %250, %252
  %254 = insertelement <2 x i64> poison, i64 %240, i64 0
  %255 = insertelement <2 x i64> %254, i64 %236, i64 1
  %256 = uitofp <2 x i64> %255 to <2 x double>
  %257 = fmul <2 x double> %256, <double 5.000000e-01, double 5.000000e-01>
  %258 = fadd <2 x double> %253, %257
  %259 = insertelement <2 x double> %243, double 0.000000e+00, i64 1
  br label %260

260:                                              ; preds = %232, %205
  %261 = phi <2 x double> [ %231, %205 ], [ %259, %232 ]
  %262 = phi <2 x double> [ %218, %205 ], [ %258, %232 ]
  %263 = extractelement <2 x double> %261, i64 0
  %264 = extractelement <2 x double> %261, i64 1
  %265 = extractelement <2 x double> %262, i64 0
  %266 = extractelement <2 x double> %262, i64 1
  %267 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.17, double noundef %266, double noundef %264, double noundef %265, double noundef %263, double noundef %196) #21
  %268 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #27
  %269 = call i64 @write(i32 noundef %121, ptr noundef nonnull %6, i64 noundef %268) #21
  br label %270

270:                                              ; preds = %260, %195, %165
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  %271 = add nuw nsw i64 %166, 1
  %272 = icmp eq i64 %271, 180
  br i1 %272, label %273, label %165, !llvm.loop !112

273:                                              ; preds = %270
  %274 = add nuw nsw i64 %160, 1
  %275 = icmp eq i64 %274, %28
  br i1 %275, label %276, label %159, !llvm.loop !113

276:                                              ; preds = %273, %125
  %277 = call i32 @close(i32 noundef %121) #21
  %278 = call ptr @AcquireImageInfo() #21
  %279 = getelementptr inbounds %struct._ImageInfo, ptr %278, i64 0, i32 24
  %280 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %281 = load i64, ptr %280, align 8
  store i64 %281, ptr %279, align 8
  %282 = getelementptr inbounds %struct._ImageInfo, ptr %278, i64 0, i32 51
  %283 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %282, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef nonnull %7) #21
  %284 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.19) #21
  %285 = icmp eq ptr %284, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %276
  %287 = call i32 @SetImageOption(ptr noundef nonnull %278, ptr noundef nonnull @.str.19, ptr noundef nonnull %284) #21
  br label %288

288:                                              ; preds = %286, %276
  %289 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #21
  %290 = icmp eq ptr %289, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %288
  %292 = call i32 @SetImageOption(ptr noundef nonnull %278, ptr noundef nonnull @.str.20, ptr noundef nonnull %289) #21
  br label %293

293:                                              ; preds = %291, %288
  %294 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #21
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %293
  %297 = call i32 @SetImageOption(ptr noundef nonnull %278, ptr noundef nonnull @.str.21, ptr noundef nonnull %294) #21
  br label %298

298:                                              ; preds = %296, %293
  %299 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #21
  %300 = icmp eq ptr %299, null
  br i1 %300, label %303, label %301

301:                                              ; preds = %298
  %302 = call i32 @SetImageOption(ptr noundef nonnull %278, ptr noundef nonnull @.str.22, ptr noundef nonnull %299) #21
  br label %303

303:                                              ; preds = %301, %298
  %304 = call ptr @ReadImage(ptr noundef nonnull %278, ptr noundef %4) #21
  store ptr %304, ptr %8, align 8, !tbaa !6
  %305 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #21
  %306 = icmp eq ptr %304, null
  br i1 %306, label %314, label %307

307:                                              ; preds = %303
  %308 = call i32 @IsMagickTrue(ptr noundef %305) #21
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %307
  %311 = call ptr @MatrixToImage(ptr noundef nonnull %29, ptr noundef %4) #21
  %312 = icmp eq ptr %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %310
  call void @AppendImageToList(ptr noundef nonnull %8, ptr noundef nonnull %311) #21
  br label %314

314:                                              ; preds = %310, %313, %307, %303
  %315 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %29) #21
  %316 = call ptr @DestroyImageInfo(ptr noundef nonnull %278) #21
  %317 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %7) #21
  %318 = load ptr, ptr %8, align 8, !tbaa !6
  %319 = call ptr @GetFirstImageInList(ptr noundef %318) #21
  br label %320

320:                                              ; preds = %314, %123, %118, %37, %31
  %321 = phi ptr [ null, %31 ], [ null, %37 ], [ null, %118 ], [ null, %123 ], [ %319, %314 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #4
  ret ptr %321
}

; Function Attrs: optsize
declare i32 @NullMatrix(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #13 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickRound(double noundef %0) unnamed_addr #13 {
  %2 = tail call double @llvm.floor.f64(double %0)
  %3 = fsub double %0, %2
  %4 = tail call double @llvm.ceil.f64(double %0)
  %5 = fsub double %4, %0
  %6 = fcmp olt double %3, %5
  %7 = select i1 %6, double %2, double %4
  ret double %7
}

; Function Attrs: optsize
declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageOption(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @MatrixToImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MeanShiftImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store i64 %1, ptr %7, align 8, !tbaa !36
  store i64 %2, ptr %8, align 8, !tbaa !36
  store double %3, ptr %9, align 8, !tbaa !32
  store ptr %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %19 = load i32, ptr %18, align 8, !tbaa !10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %23 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2134, ptr noundef nonnull @.str.2, ptr noundef nonnull %22) #21
  br label %24

24:                                               ; preds = %21, %5
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !26
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !27
  %29 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %26, i64 noundef %28, i32 noundef 1, ptr noundef %4) #21
  store ptr %29, ptr %14, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %68, label %31

31:                                               ; preds = %24
  %32 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %29, i32 noundef 1) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %35) #21
  %36 = tail call ptr @DestroyImage(ptr noundef nonnull %29) #21
  br label %68

37:                                               ; preds = %31
  store i32 1, ptr %15, align 4, !tbaa !28
  store i64 0, ptr %16, align 8, !tbaa !29
  %38 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #21
  store ptr %38, ptr %11, align 8, !tbaa !6
  %39 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #21
  store ptr %39, ptr %13, align 8, !tbaa !6
  %40 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %29, ptr noundef %4) #21
  store ptr %40, ptr %12, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %42 = load i64, ptr %41, align 8, !tbaa !27
  %43 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %44 = shl i64 %43, 5
  %45 = icmp ugt i64 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %29) #21
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %29) #21
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %58

54:                                               ; preds = %49, %46, %37
  %55 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %56 = icmp ult i64 %55, 2
  %57 = select i1 %56, i64 1, i64 2
  br label %58

58:                                               ; preds = %54, %52
  %59 = phi i64 [ %53, %52 ], [ %57, %54 ]
  %60 = trunc i64 %59 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %17, i32 %60)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @MeanShiftImage.omp_outlined, ptr nonnull %14, ptr nonnull %15, ptr nonnull %11, ptr nonnull %6, ptr nonnull %10, ptr nonnull %12, ptr nonnull %8, ptr nonnull %7, ptr nonnull %13, ptr nonnull %9, ptr nonnull %16)
  %61 = load ptr, ptr %12, align 8, !tbaa !6
  %62 = call ptr @DestroyCacheView(ptr noundef %61) #21
  store ptr %62, ptr %12, align 8, !tbaa !6
  %63 = load ptr, ptr %13, align 8, !tbaa !6
  %64 = call ptr @DestroyCacheView(ptr noundef %63) #21
  store ptr %64, ptr %13, align 8, !tbaa !6
  %65 = load ptr, ptr %11, align 8, !tbaa !6
  %66 = call ptr @DestroyCacheView(ptr noundef %65) #21
  %67 = load ptr, ptr %14, align 8, !tbaa !6
  br label %68

68:                                               ; preds = %24, %58, %34
  %69 = phi ptr [ null, %34 ], [ %67, %58 ], [ null, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret ptr %69
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @MeanShiftImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull align 8 dereferenceable(8) %12) #3 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct._MagickPixelPacket, align 8
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = alloca %struct._PixelPacket, align 4
  %21 = load ptr, ptr %2, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !27
  %24 = add nsw i64 %23, -1
  %25 = icmp sgt i64 %23, 0
  br i1 %25, label %26, label %283

26:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 0, ptr %14, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 %24, ptr %15, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 1, ptr %16, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #4
  store i32 0, ptr %17, align 4, !tbaa !28
  %27 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %27, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %28 = load i64, ptr %15, align 8
  %29 = call i64 @llvm.smin.i64(i64 %28, i64 %24)
  store i64 %29, ptr %15, align 8, !tbaa !36
  %30 = load i64, ptr %14, align 8, !tbaa !36
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %282, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, ptr %18, i64 32
  %34 = getelementptr inbounds i8, ptr %18, i64 36
  %35 = getelementptr inbounds i8, ptr %18, i64 40
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 2
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %19, i64 0, i32 5
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 3
  br label %39

39:                                               ; preds = %32, %274
  %40 = phi i64 [ %29, %32 ], [ %280, %274 ]
  %41 = phi i64 [ %30, %32 ], [ %278, %274 ]
  %42 = icmp sgt i64 %41, %40
  br i1 %42, label %274, label %43

43:                                               ; preds = %39, %268
  %44 = phi i64 [ %269, %268 ], [ %41, %39 ]
  %45 = load i32, ptr %3, align 4, !tbaa !28
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %268, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 8, !tbaa !6
  %49 = load ptr, ptr %5, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !26
  %52 = load ptr, ptr %6, align 8, !tbaa !6
  %53 = call ptr @GetCacheViewVirtualPixels(ptr noundef %48, i64 noundef 0, i64 noundef %44, i64 noundef %51, i64 noundef 1, ptr noundef %52) #22
  %54 = load ptr, ptr %7, align 8, !tbaa !6
  %55 = load ptr, ptr %2, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !26
  %58 = load ptr, ptr %6, align 8, !tbaa !6
  %59 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %54, i64 noundef 0, i64 noundef %44, i64 noundef %57, i64 noundef 1, ptr noundef %58) #22
  %60 = icmp eq ptr %53, null
  %61 = icmp eq ptr %59, null
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %267, label %63

63:                                               ; preds = %47
  %64 = load ptr, ptr %4, align 8, !tbaa !6
  %65 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %64) #21
  %66 = load ptr, ptr %2, align 8, !tbaa !6
  %67 = getelementptr inbounds %struct._Image, ptr %66, i64 0, i32 7
  %68 = load i64, ptr %67, align 8, !tbaa !26
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %248

70:                                               ; preds = %63
  %71 = sitofp i64 %44 to double
  br label %72

72:                                               ; preds = %70, %232
  %73 = phi ptr [ %53, %70 ], [ %241, %232 ]
  %74 = phi ptr [ %59, %70 ], [ %242, %232 ]
  %75 = phi i64 [ 0, %70 ], [ %243, %232 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %18) #4
  %76 = load ptr, ptr %5, align 8, !tbaa !6
  call void @GetMagickPixelPacket(ptr noundef %76, ptr noundef nonnull %18) #21
  %77 = load ptr, ptr %5, align 8, !tbaa !6
  %78 = getelementptr inbounds i16, ptr %65, i64 %75
  call fastcc void @SetMagickPixelPacket(ptr noundef %77, ptr noundef nonnull %73, ptr noundef %78, ptr noundef nonnull %18) #23
  %79 = sitofp i64 %75 to double
  br label %80

80:                                               ; preds = %189, %72
  %81 = phi i64 [ 0, %72 ], [ %229, %189 ]
  %82 = phi double [ %79, %72 ], [ %195, %189 ]
  %83 = phi double [ %71, %72 ], [ %196, %189 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #4
  %84 = load ptr, ptr %5, align 8, !tbaa !6
  call void @GetMagickPixelPacket(ptr noundef %84, ptr noundef nonnull %19) #21
  %85 = load float, ptr %33, align 8, !tbaa.struct !114
  %86 = load float, ptr %34, align 4, !tbaa.struct !117
  %87 = load float, ptr %35, align 8, !tbaa.struct !118
  %88 = load i64, ptr %8, align 8, !tbaa !36
  %89 = sdiv i64 %88, -2
  %90 = sdiv i64 %88, 2
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %189, label %92

92:                                               ; preds = %80
  %93 = load i64, ptr %9, align 8, !tbaa !36
  br label %94

94:                                               ; preds = %92, %179
  %95 = phi i64 [ %180, %179 ], [ %88, %92 ]
  %96 = phi i64 [ %181, %179 ], [ %93, %92 ]
  %97 = phi i64 [ %182, %179 ], [ %93, %92 ]
  %98 = phi i64 [ %186, %179 ], [ %89, %92 ]
  %99 = phi i64 [ %185, %179 ], [ 0, %92 ]
  %100 = phi double [ %184, %179 ], [ 0.000000e+00, %92 ]
  %101 = phi double [ %183, %179 ], [ 0.000000e+00, %92 ]
  %102 = sdiv i64 %97, -2
  %103 = sdiv i64 %97, 2
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %179, label %105

105:                                              ; preds = %94
  %106 = mul nsw i64 %98, %98
  %107 = sitofp i64 %98 to double
  %108 = fadd double %83, %107
  br label %109

109:                                              ; preds = %105, %169
  %110 = phi i64 [ %96, %105 ], [ %170, %169 ]
  %111 = phi i64 [ %97, %105 ], [ %170, %169 ]
  %112 = phi i64 [ %102, %105 ], [ %174, %169 ]
  %113 = phi i64 [ %99, %105 ], [ %173, %169 ]
  %114 = phi double [ %100, %105 ], [ %172, %169 ]
  %115 = phi double [ %101, %105 ], [ %171, %169 ]
  %116 = mul nsw i64 %112, %112
  %117 = add nuw nsw i64 %116, %106
  %118 = lshr i64 %111, 1
  %119 = load i64, ptr %8, align 8, !tbaa !36
  %120 = lshr i64 %119, 1
  %121 = mul i64 %120, %118
  %122 = icmp sgt i64 %117, %121
  br i1 %122, label %169, label %123

123:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #4
  %124 = load ptr, ptr %10, align 8, !tbaa !6
  %125 = sitofp i64 %112 to double
  %126 = fadd double %82, %125
  %127 = call fastcc double @MagickRound(double noundef %126) #23
  %128 = fptosi double %127 to i64
  %129 = call fastcc double @MagickRound(double noundef %108) #23
  %130 = fptosi double %129 to i64
  %131 = load ptr, ptr %6, align 8, !tbaa !6
  %132 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %124, i64 noundef %128, i64 noundef %130, ptr noundef nonnull %20, ptr noundef %131) #21
  store i32 %132, ptr %3, align 4, !tbaa !28
  %133 = load float, ptr %33, align 8, !tbaa !119
  %134 = load i16, ptr %36, align 4, !tbaa !44
  %135 = uitofp i16 %134 to float
  %136 = fsub float %133, %135
  %137 = load float, ptr %34, align 4, !tbaa !121
  %138 = load float, ptr %35, align 8, !tbaa !122
  %139 = load <2 x i16>, ptr %20, align 4, !tbaa !80
  %140 = uitofp <2 x i16> %139 to <2 x float>
  %141 = extractelement <2 x float> %140, i64 1
  %142 = fsub float %137, %141
  %143 = fmul float %142, %142
  %144 = call float @llvm.fmuladd.f32(float %136, float %136, float %143)
  %145 = extractelement <2 x float> %140, i64 0
  %146 = fsub float %138, %145
  %147 = call float @llvm.fmuladd.f32(float %146, float %146, float %144)
  %148 = fpext float %147 to double
  %149 = load double, ptr %11, align 8, !tbaa !32
  %150 = fmul double %149, %149
  %151 = fcmp ult double %150, %148
  br i1 %151, label %164, label %152

152:                                              ; preds = %123
  %153 = fadd double %114, %126
  %154 = fadd double %108, %115
  %155 = load i16, ptr %38, align 2, !tbaa !84
  %156 = uitofp i16 %155 to float
  %157 = load <4 x float>, ptr %37, align 8, !tbaa !115
  %158 = insertelement <4 x float> poison, float %135, i64 0
  %159 = shufflevector <2 x float> %140, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %160 = shufflevector <4 x float> %158, <4 x float> %159, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %161 = insertelement <4 x float> %160, float %156, i64 3
  %162 = fadd <4 x float> %157, %161
  store <4 x float> %162, ptr %37, align 8, !tbaa !115
  %163 = add nsw i64 %113, 1
  br label %164

164:                                              ; preds = %152, %123
  %165 = phi double [ %154, %152 ], [ %115, %123 ]
  %166 = phi double [ %153, %152 ], [ %114, %123 ]
  %167 = phi i64 [ %163, %152 ], [ %113, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #4
  %168 = load i64, ptr %9, align 8, !tbaa !36
  br label %169

169:                                              ; preds = %109, %164
  %170 = phi i64 [ %168, %164 ], [ %110, %109 ]
  %171 = phi double [ %165, %164 ], [ %115, %109 ]
  %172 = phi double [ %166, %164 ], [ %114, %109 ]
  %173 = phi i64 [ %167, %164 ], [ %113, %109 ]
  %174 = add nsw i64 %112, 1
  %175 = sdiv i64 %170, 2
  %176 = icmp slt i64 %112, %175
  br i1 %176, label %109, label %177, !llvm.loop !123

177:                                              ; preds = %169
  %178 = load i64, ptr %8, align 8, !tbaa !36
  br label %179

179:                                              ; preds = %177, %94
  %180 = phi i64 [ %95, %94 ], [ %178, %177 ]
  %181 = phi i64 [ %96, %94 ], [ %170, %177 ]
  %182 = phi i64 [ %97, %94 ], [ %170, %177 ]
  %183 = phi double [ %101, %94 ], [ %171, %177 ]
  %184 = phi double [ %100, %94 ], [ %172, %177 ]
  %185 = phi i64 [ %99, %94 ], [ %173, %177 ]
  %186 = add nsw i64 %98, 1
  %187 = sdiv i64 %180, 2
  %188 = icmp slt i64 %98, %187
  br i1 %188, label %94, label %189, !llvm.loop !124

189:                                              ; preds = %179, %80
  %190 = phi double [ 0.000000e+00, %80 ], [ %183, %179 ]
  %191 = phi double [ 0.000000e+00, %80 ], [ %184, %179 ]
  %192 = phi i64 [ 0, %80 ], [ %185, %179 ]
  %193 = sitofp i64 %192 to double
  %194 = fdiv double 1.000000e+00, %193
  %195 = fmul double %191, %194
  %196 = fmul double %190, %194
  %197 = load <4 x float>, ptr %37, align 8, !tbaa !115
  %198 = fpext <4 x float> %197 to <4 x double>
  %199 = insertelement <4 x double> poison, double %194, i64 0
  %200 = shufflevector <4 x double> %199, <4 x double> poison, <4 x i32> zeroinitializer
  %201 = fmul <4 x double> %200, %198
  %202 = fptrunc <4 x double> %201 to <4 x float>
  store <4 x float> %202, ptr %33, align 8, !tbaa !115
  %203 = fsub double %195, %82
  %204 = fsub double %196, %83
  %205 = fmul double %204, %204
  %206 = call double @llvm.fmuladd.f64(double %203, double %203, double %205)
  %207 = extractelement <4 x float> %202, i64 0
  %208 = fsub float %207, %85
  %209 = fpext float %208 to double
  %210 = fmul double %209, 0x3F6FE01FE01FE020
  %211 = fmul double %210, 2.550000e+02
  %212 = fmul double %211, 0x3EF0001000100010
  %213 = call double @llvm.fmuladd.f64(double %212, double %209, double %206)
  %214 = extractelement <4 x float> %202, i64 1
  %215 = fsub float %214, %86
  %216 = fpext float %215 to double
  %217 = fmul double %216, 0x3F6FE01FE01FE020
  %218 = fmul double %217, 2.550000e+02
  %219 = fmul double %218, 0x3EF0001000100010
  %220 = call double @llvm.fmuladd.f64(double %219, double %216, double %213)
  %221 = extractelement <4 x float> %202, i64 2
  %222 = fsub float %221, %87
  %223 = fpext float %222 to double
  %224 = fmul double %223, 0x3F6FE01FE01FE020
  %225 = fmul double %224, 2.550000e+02
  %226 = fmul double %225, 0x3EF0001000100010
  %227 = call double @llvm.fmuladd.f64(double %226, double %223, double %220)
  %228 = fcmp ugt double %227, 3.000000e+00
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #4
  %229 = add nuw nsw i64 %81, 1
  %230 = icmp ult i64 %81, 99
  %231 = select i1 %228, i1 %230, i1 false
  br i1 %231, label %80, label %232, !llvm.loop !125

232:                                              ; preds = %189
  %233 = call fastcc zeroext i16 @ClampToQuantum(float noundef %207) #23
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  store i16 %233, ptr %234, align 2, !tbaa !44
  %235 = call fastcc zeroext i16 @ClampToQuantum(float noundef %214) #23
  %236 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 1
  store i16 %235, ptr %236, align 2, !tbaa !45
  %237 = call fastcc zeroext i16 @ClampToQuantum(float noundef %221) #23
  store i16 %237, ptr %74, align 2, !tbaa !46
  %238 = extractelement <4 x float> %202, i64 3
  %239 = call fastcc zeroext i16 @ClampToQuantum(float noundef %238) #23
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 3
  store i16 %239, ptr %240, align 2, !tbaa !84
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %18) #4
  %243 = add nuw nsw i64 %75, 1
  %244 = load ptr, ptr %2, align 8, !tbaa !6
  %245 = getelementptr inbounds %struct._Image, ptr %244, i64 0, i32 7
  %246 = load i64, ptr %245, align 8, !tbaa !26
  %247 = icmp slt i64 %243, %246
  br i1 %247, label %72, label %248, !llvm.loop !126

248:                                              ; preds = %232, %63
  %249 = load ptr, ptr %7, align 8, !tbaa !6
  %250 = load ptr, ptr %6, align 8, !tbaa !6
  %251 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %249, ptr noundef %250) #22
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %254

254:                                              ; preds = %253, %248
  %255 = load ptr, ptr %5, align 8, !tbaa !6
  %256 = getelementptr inbounds %struct._Image, ptr %255, i64 0, i32 47
  %257 = load ptr, ptr %256, align 8, !tbaa !48
  %258 = icmp eq ptr %257, null
  br i1 %258, label %268, label %259

259:                                              ; preds = %254
  call void @__kmpc_critical(ptr nonnull @2, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_MeanShiftImage.var)
  %260 = load ptr, ptr %5, align 8, !tbaa !6
  %261 = load i64, ptr %12, align 8, !tbaa !29
  %262 = add nsw i64 %261, 1
  store i64 %262, ptr %12, align 8, !tbaa !29
  %263 = getelementptr inbounds %struct._Image, ptr %260, i64 0, i32 8
  %264 = load i64, ptr %263, align 8, !tbaa !27
  %265 = call fastcc i32 @SetImageProgress(ptr noundef %260, ptr noundef nonnull @.str.24, i64 noundef %261, i64 noundef %264) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_MeanShiftImage.var)
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %259, %47
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %268

268:                                              ; preds = %267, %254, %259, %43
  %269 = add nsw i64 %44, 1
  %270 = load i64, ptr %15, align 8, !tbaa !36
  %271 = icmp slt i64 %44, %270
  br i1 %271, label %43, label %272

272:                                              ; preds = %268
  %273 = load i64, ptr %14, align 8, !tbaa !36
  br label %274

274:                                              ; preds = %272, %39
  %275 = phi i64 [ %41, %39 ], [ %273, %272 ]
  %276 = phi i64 [ %40, %39 ], [ %270, %272 ]
  %277 = load i64, ptr %16, align 8, !tbaa !36
  %278 = add nsw i64 %277, %275
  store i64 %278, ptr %14, align 8, !tbaa !36
  %279 = add nsw i64 %277, %276
  %280 = call i64 @llvm.smin.i64(i64 %279, i64 %24)
  store i64 %280, ptr %15, align 8, !tbaa !36
  %281 = icmp sgt i64 %278, %280
  br i1 %281, label %282, label %39

282:                                              ; preds = %274, %26
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  br label %283

283:                                              ; preds = %282, %13
  ret void
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #18 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !80
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !56
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !80
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !127
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #13 {
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { convergent nounwind }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind optsize }
attributes #22 = { hot nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { nounwind optsize allocsize(0,1) }
attributes #25 = { nounwind optsize willreturn memory(none) }
attributes #26 = { noreturn nounwind optsize }
attributes #27 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 12976}
!11 = !{!"_Image", !12, i64 0, !12, i64 4, !12, i64 8, !13, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !7, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !16, i64 104, !17, i64 112, !12, i64 208, !7, i64 216, !12, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !13, i64 256, !16, i64 264, !16, i64 272, !19, i64 280, !19, i64 312, !19, i64 344, !16, i64 376, !16, i64 384, !16, i64 392, !12, i64 400, !12, i64 404, !12, i64 408, !12, i64 412, !12, i64 416, !12, i64 420, !7, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !20, i64 480, !21, i64 504, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !13, i64 12904, !13, i64 12912, !23, i64 12920, !12, i64 12976, !13, i64 12984, !7, i64 12992, !24, i64 13000, !24, i64 13032, !7, i64 13064, !13, i64 13072, !13, i64 13080, !7, i64 13088, !7, i64 13096, !7, i64 13104, !12, i64 13112, !12, i64 13116, !14, i64 13120, !7, i64 13128, !19, i64 13136, !7, i64 13168, !7, i64 13176, !12, i64 13184, !12, i64 13188, !25, i64 13192, !12, i64 13200, !13, i64 13208, !13, i64 13216, !12, i64 13224, !13, i64 13232}
!12 = !{!"int", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"_PixelPacket", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!15 = !{!"short", !8, i64 0}
!16 = !{!"double", !8, i64 0}
!17 = !{!"_ChromaticityInfo", !18, i64 0, !18, i64 24, !18, i64 48, !18, i64 72}
!18 = !{!"_PrimaryInfo", !16, i64 0, !16, i64 8, !16, i64 16}
!19 = !{!"_RectangleInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!20 = !{!"_ErrorInfo", !16, i64 0, !16, i64 8, !16, i64 16}
!21 = !{!"_TimerInfo", !22, i64 0, !22, i64 24, !12, i64 48, !13, i64 56}
!22 = !{!"_Timer", !16, i64 0, !16, i64 8, !16, i64 16}
!23 = !{!"_ExceptionInfo", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !7, i64 40, !13, i64 48}
!24 = !{!"_ProfileInfo", !7, i64 0, !13, i64 8, !7, i64 16, !13, i64 24}
!25 = !{!"long long", !8, i64 0}
!26 = !{!11, !13, i64 40}
!27 = !{!11, !13, i64 48}
!28 = !{!12, !12, i64 0}
!29 = !{!25, !25, i64 0}
!30 = !{!31, !16, i64 8}
!31 = !{!"_CannyInfo", !16, i64 0, !16, i64 8, !12, i64 16, !13, i64 24, !13, i64 32}
!32 = !{!16, !16, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = distinct !{!35, !34}
!36 = !{!13, !13, i64 0}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !34}
!39 = !{!31, !16, i64 0}
!40 = !{!31, !12, i64 16}
!41 = distinct !{!41, !34}
!42 = !{!43}
!43 = !{i64 2, i64 -1, i64 -1, i1 true}
!44 = !{!14, !15, i64 4}
!45 = !{!14, !15, i64 2}
!46 = !{!14, !15, i64 0}
!47 = distinct !{!47, !34}
!48 = !{!11, !7, i64 568}
!49 = !{!11, !7, i64 576}
!50 = !{!31, !13, i64 24}
!51 = !{!31, !13, i64 32}
!52 = distinct !{!52, !34}
!53 = !{i32 0, i32 2}
!54 = distinct !{!54, !34}
!55 = distinct !{!55, !34}
!56 = !{!11, !12, i64 4}
!57 = !{!11, !12, i64 32}
!58 = !{!59, !12, i64 0}
!59 = !{!"_LongPixelPacket", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16}
!60 = !{!59, !12, i64 4}
!61 = !{!59, !12, i64 8}
!62 = !{!59, !12, i64 16}
!63 = !{!59, !12, i64 12}
!64 = distinct !{!64, !34}
!65 = distinct !{!65, !34}
!66 = distinct !{!66, !34}
!67 = distinct !{!67, !34}
!68 = distinct !{!68, !34}
!69 = !{i32 0, i32 65536}
!70 = distinct !{!70, !34}
!71 = distinct !{!71, !34}
!72 = !{!73, !16, i64 0}
!73 = !{!"_DoublePixelPacket", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32}
!74 = distinct !{!74, !34}
!75 = distinct !{!75, !34}
!76 = !{!73, !16, i64 8}
!77 = distinct !{!77, !34}
!78 = distinct !{!78, !34}
!79 = !{!73, !16, i64 16}
!80 = !{!15, !15, i64 0}
!81 = distinct !{!81, !34}
!82 = distinct !{!82, !34}
!83 = !{!73, !16, i64 32}
!84 = !{!14, !15, i64 6}
!85 = distinct !{!85, !34}
!86 = distinct !{!86, !34}
!87 = !{!73, !16, i64 24}
!88 = distinct !{!88, !34}
!89 = distinct !{!89, !34}
!90 = distinct !{!90, !34}
!91 = distinct !{!91, !34}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !34}
!94 = distinct !{!94, !34}
!95 = distinct !{!95, !34}
!96 = distinct !{!96, !34}
!97 = distinct !{!97, !34}
!98 = distinct !{!98, !34}
!99 = distinct !{!99, !34}
!100 = distinct !{!100, !34}
!101 = distinct !{!101, !34}
!102 = distinct !{!102, !34}
!103 = distinct !{!103, !34}
!104 = distinct !{!104, !34}
!105 = distinct !{!105, !34}
!106 = distinct !{!106, !34}
!107 = distinct !{!107, !34}
!108 = distinct !{!108, !34}
!109 = distinct !{!109, !34}
!110 = distinct !{!110, !34}
!111 = distinct !{!111, !34}
!112 = distinct !{!112, !34}
!113 = distinct !{!113, !34}
!114 = !{i64 0, i64 4, !115, i64 4, i64 4, !115, i64 8, i64 4, !115, i64 12, i64 4, !115, i64 16, i64 4, !115}
!115 = !{!116, !116, i64 0}
!116 = !{!"float", !8, i64 0}
!117 = !{i64 0, i64 4, !115, i64 4, i64 4, !115, i64 8, i64 4, !115, i64 12, i64 4, !115}
!118 = !{i64 0, i64 4, !115, i64 4, i64 4, !115, i64 8, i64 4, !115}
!119 = !{!120, !116, i64 32}
!120 = !{!"_MagickPixelPacket", !12, i64 0, !12, i64 4, !12, i64 8, !16, i64 16, !13, i64 24, !116, i64 32, !116, i64 36, !116, i64 40, !116, i64 44, !116, i64 48}
!121 = !{!120, !116, i64 36}
!122 = !{!120, !116, i64 40}
!123 = distinct !{!123, !34}
!124 = distinct !{!124, !34}
!125 = distinct !{!125, !34}
!126 = distinct !{!126, !34}
!127 = !{!120, !116, i64 48}
