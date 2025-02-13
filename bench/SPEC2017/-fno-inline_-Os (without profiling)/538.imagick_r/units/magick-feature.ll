; ModuleID = 'magick/feature.c'
source_filename = "magick/feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
@CannyEdgeImage.Gx = internal unnamed_addr constant [2 x [2 x double]] [[2 x double] [double -1.000000e+00, double 1.000000e+00], [2 x double] [double -1.000000e+00, double 1.000000e+00]], align 16
@CannyEdgeImage.Gy = internal unnamed_addr constant [2 x [2 x double]] [[2 x double] [double 1.000000e+00, double 1.000000e+00], [2 x double] [double -1.000000e+00, double -1.000000e+00]], align 16
@.str.6 = private unnamed_addr constant [16 x i8] c"CannyEdge/Image\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"HoughLine/Image\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"# Hough line transform: %.20gx%.20g%+.20g\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"viewbox 0 0 %.20g %.20g\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"line %g,%g %g,%g  # %g\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"mvg:%s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"strokewidth\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"hough-lines:accumulator\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"MeanShift/Image\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CannyEdgeImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._CannyInfo, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._CannyInfo, align 8
  %10 = alloca %struct._CannyInfo, align 8
  %11 = alloca %struct._CannyInfo, align 8
  %12 = alloca %struct._CannyInfo, align 8
  %13 = alloca %struct._CannyInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #18
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %15 = load i32, ptr %14, align 8, !tbaa !5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 283, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #19
  br label %20

20:                                               ; preds = %17, %6
  %21 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.3, double noundef %1, double noundef %2, double noundef %1, double noundef %2) #19
  %22 = call ptr @AcquireKernelInfo(ptr noundef nonnull %8) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 293, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %25) #19
  br label %278

27:                                               ; preds = %20
  %28 = call ptr @MorphologyApply(ptr noundef nonnull %0, i32 noundef 134217719, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %22, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %5) #19
  %29 = call ptr @DestroyKernelInfo(ptr noundef nonnull %22) #19
  %30 = icmp eq ptr %28, null
  br i1 %30, label %278, label %31

31:                                               ; preds = %27
  %32 = call i32 @SetImageColorspace(ptr noundef nonnull %28, i32 noundef 2) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call ptr @DestroyImage(ptr noundef nonnull %28) #19
  br label %278

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !24
  %39 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !25
  %41 = call ptr @AcquireMatrixInfo(i64 noundef %38, i64 noundef %40, i64 noundef 40, ptr noundef %5) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call ptr @DestroyImage(ptr noundef nonnull %28) #19
  br label %278

45:                                               ; preds = %36
  %46 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %28, ptr noundef %5) #19
  %47 = load i64, ptr %39, align 8, !tbaa !25
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %127

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct._CannyInfo, ptr %9, i64 0, i32 2
  br label %51

51:                                               ; preds = %49, %122
  %52 = phi i64 [ 0, %49 ], [ %124, %122 ]
  %53 = phi i32 [ 1, %49 ], [ %123, %122 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %122, label %55

55:                                               ; preds = %51
  %56 = load i64, ptr %37, align 8, !tbaa !24
  %57 = add i64 %56, 1
  %58 = call ptr @GetCacheViewVirtualPixels(ptr noundef %46, i64 noundef 0, i64 noundef %52, i64 noundef %57, i64 noundef 2, ptr noundef %5) #20
  %59 = icmp eq ptr %58, null
  br i1 %59, label %122, label %60

60:                                               ; preds = %55
  %61 = load i64, ptr %37, align 8, !tbaa !24
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %122

63:                                               ; preds = %60, %114
  %64 = phi i64 [ %119, %114 ], [ 0, %60 ]
  %65 = phi ptr [ %118, %114 ], [ %58, %60 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #18
  %66 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 40) #19
  br label %67

67:                                               ; preds = %63, %89
  %68 = phi i1 [ true, %63 ], [ false, %89 ]
  %69 = phi i64 [ 0, %63 ], [ 1, %89 ]
  %70 = phi ptr [ %65, %63 ], [ %92, %89 ]
  %71 = phi <2 x double> [ zeroinitializer, %63 ], [ %88, %89 ]
  br label %72

72:                                               ; preds = %67, %72
  %73 = phi i1 [ true, %67 ], [ false, %72 ]
  %74 = phi i64 [ 0, %67 ], [ 1, %72 ]
  %75 = phi <2 x double> [ %71, %67 ], [ %88, %72 ]
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 %74
  %77 = call float @GetPixelIntensity(ptr noundef nonnull %28, ptr noundef %76) #20
  %78 = fpext float %77 to double
  %79 = getelementptr inbounds [2 x [2 x double]], ptr @CannyEdgeImage.Gx, i64 0, i64 %69, i64 %74
  %80 = load double, ptr %79, align 8, !tbaa !26
  %81 = getelementptr inbounds [2 x [2 x double]], ptr @CannyEdgeImage.Gy, i64 0, i64 %69, i64 %74
  %82 = load double, ptr %81, align 8, !tbaa !26
  %83 = insertelement <2 x double> poison, double %82, i64 0
  %84 = insertelement <2 x double> %83, double %80, i64 1
  %85 = fmul <2 x double> %84, <double 5.000000e-01, double 5.000000e-01>
  %86 = insertelement <2 x double> poison, double %78, i64 0
  %87 = shufflevector <2 x double> %86, <2 x double> poison, <2 x i32> zeroinitializer
  %88 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %85, <2 x double> %87, <2 x double> %75)
  br i1 %73, label %72, label %89, !llvm.loop !27

89:                                               ; preds = %72
  %90 = load i64, ptr %37, align 8, !tbaa !24
  %91 = add i64 %90, 1
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %70, i64 %91
  br i1 %68, label %67, label %93, !llvm.loop !29

93:                                               ; preds = %89
  %94 = extractelement <2 x double> %88, i64 0
  %95 = extractelement <2 x double> %88, i64 1
  %96 = call double @hypot(double noundef %95, double noundef %94) #19
  store double %96, ptr %9, align 8, !tbaa !30
  store i32 0, ptr %50, align 8, !tbaa !32
  %97 = call double @llvm.fabs.f64(double %95)
  %98 = fcmp ogt double %97, 1.000000e-15
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = fdiv double %94, %95
  %101 = fcmp olt double %100, 0.000000e+00
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = fcmp olt double %100, 0xC003504F333F82AD
  br i1 %103, label %114, label %104

104:                                              ; preds = %102
  %105 = fcmp olt double %100, 0xBFDA827999FCE882
  %106 = select i1 %105, i32 1, i32 2
  br label %112

107:                                              ; preds = %99
  %108 = fcmp ogt double %100, 0x4003504F333F82AD
  br i1 %108, label %114, label %109

109:                                              ; preds = %107
  %110 = fcmp ogt double %100, 0x3FDA827999FCE882
  %111 = select i1 %110, i32 3, i32 2
  br label %112

112:                                              ; preds = %109, %104
  %113 = phi i32 [ %106, %104 ], [ %111, %109 ]
  store i32 %113, ptr %50, align 8, !tbaa !32
  br label %114

114:                                              ; preds = %112, %107, %102, %93
  %115 = call i32 @SetMatrixElement(ptr noundef nonnull %41, i64 noundef %64, i64 noundef %52, ptr noundef nonnull %9) #19
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 %117
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #18
  %119 = add nuw nsw i64 %64, 1
  %120 = load i64, ptr %37, align 8, !tbaa !24
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %63, label %122, !llvm.loop !33

122:                                              ; preds = %114, %60, %55, %51
  %123 = phi i32 [ 0, %51 ], [ 0, %55 ], [ 1, %60 ], [ 1, %114 ]
  %124 = add nuw nsw i64 %52, 1
  %125 = load i64, ptr %39, align 8, !tbaa !25
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %51, label %127, !llvm.loop !34

127:                                              ; preds = %122, %45
  %128 = phi i32 [ 1, %45 ], [ %123, %122 ]
  %129 = call ptr @DestroyCacheView(ptr noundef %46) #19
  %130 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %7) #19
  %131 = getelementptr inbounds %struct._CannyInfo, ptr %7, i64 0, i32 1
  %132 = load double, ptr %131, align 8, !tbaa !35
  %133 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %28, ptr noundef %5) #19
  %134 = load i64, ptr %39, align 8, !tbaa !25
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %226

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct._CannyInfo, ptr %12, i64 0, i32 2
  %138 = getelementptr inbounds %struct._CannyInfo, ptr %12, i64 0, i32 1
  %139 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %140 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %141

141:                                              ; preds = %136, %218
  %142 = phi double [ %132, %136 ], [ %222, %218 ]
  %143 = phi double [ %132, %136 ], [ %221, %218 ]
  %144 = phi i64 [ 0, %136 ], [ %223, %218 ]
  %145 = phi i64 [ 0, %136 ], [ %220, %218 ]
  %146 = phi i32 [ %128, %136 ], [ %219, %218 ]
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %218, label %148

148:                                              ; preds = %141
  %149 = load i64, ptr %37, align 8, !tbaa !24
  %150 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %133, i64 noundef 0, i64 noundef %144, i64 noundef %149, i64 noundef 1, ptr noundef %5) #20
  %151 = icmp eq ptr %150, null
  br i1 %151, label %218, label %152

152:                                              ; preds = %148
  %153 = load i64, ptr %37, align 8, !tbaa !24
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %204

155:                                              ; preds = %152
  %156 = add nsw i64 %144, -1
  %157 = add nuw nsw i64 %144, 1
  br label %158

158:                                              ; preds = %155, %184
  %159 = phi i64 [ 0, %155 ], [ %185, %184 ]
  %160 = phi ptr [ %150, %155 ], [ %201, %184 ]
  %161 = phi double [ %142, %155 ], [ %198, %184 ]
  %162 = phi double [ %143, %155 ], [ %196, %184 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #18
  %163 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef %159, i64 noundef %144, ptr noundef nonnull %12) #19
  %164 = load i32, ptr %137, align 8, !tbaa !32
  switch i32 %164, label %165 [
    i32 3, label %179
    i32 1, label %169
    i32 2, label %174
  ]

165:                                              ; preds = %158
  %166 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef %159, i64 noundef %156, ptr noundef nonnull %10) #19
  %167 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef %159, i64 noundef %157, ptr noundef nonnull %11) #19
  %168 = add nuw nsw i64 %159, 1
  br label %184

169:                                              ; preds = %158
  %170 = add nsw i64 %159, -1
  %171 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef %170, i64 noundef %156, ptr noundef nonnull %10) #19
  %172 = add nuw nsw i64 %159, 1
  %173 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef %172, i64 noundef %157, ptr noundef nonnull %11) #19
  br label %184

174:                                              ; preds = %158
  %175 = add nsw i64 %159, -1
  %176 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef %175, i64 noundef %144, ptr noundef nonnull %10) #19
  %177 = add nuw nsw i64 %159, 1
  %178 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef %177, i64 noundef %144, ptr noundef nonnull %11) #19
  br label %184

179:                                              ; preds = %158
  %180 = add nuw nsw i64 %159, 1
  %181 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef %180, i64 noundef %156, ptr noundef nonnull %11) #19
  %182 = add nsw i64 %159, -1
  %183 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef %182, i64 noundef %157, ptr noundef nonnull %10) #19
  br label %184

184:                                              ; preds = %179, %174, %169, %165
  %185 = phi i64 [ %180, %179 ], [ %177, %174 ], [ %172, %169 ], [ %168, %165 ]
  %186 = load double, ptr %12, align 8, !tbaa !30
  %187 = load double, ptr %10, align 8, !tbaa !30
  %188 = fcmp olt double %186, %187
  %189 = load double, ptr %11, align 8
  %190 = fcmp olt double %186, %189
  %191 = select i1 %188, i1 true, i1 %190
  %192 = select i1 %191, double 0.000000e+00, double %186
  store double %192, ptr %138, align 8
  %193 = call i32 @SetMatrixElement(ptr noundef nonnull %41, i64 noundef %159, i64 noundef %144, ptr noundef nonnull %12) #19
  %194 = load double, ptr %138, align 8, !tbaa !35
  %195 = fcmp olt double %194, %162
  %196 = select i1 %195, double %194, double %162
  %197 = fcmp ogt double %194, %161
  %198 = select i1 %197, double %194, double %161
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %160, i64 0, i32 2
  store i16 0, ptr %199, align 2, !tbaa !36
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %160, i64 0, i32 1
  store i16 0, ptr %200, align 2, !tbaa !37
  store i16 0, ptr %160, align 2, !tbaa !38
  %201 = getelementptr inbounds %struct._PixelPacket, ptr %160, i64 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #18
  %202 = load i64, ptr %37, align 8, !tbaa !24
  %203 = icmp slt i64 %185, %202
  br i1 %203, label %158, label %204, !llvm.loop !39

204:                                              ; preds = %184, %152
  %205 = phi double [ %143, %152 ], [ %196, %184 ]
  %206 = phi double [ %142, %152 ], [ %198, %184 ]
  %207 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %133, ptr noundef %5) #20
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = load ptr, ptr %139, align 8, !tbaa !40
  %211 = icmp eq ptr %210, null
  br i1 %211, label %218, label %212

212:                                              ; preds = %204
  %213 = add nsw i64 %145, 1
  %214 = load i64, ptr %140, align 8, !tbaa !25
  %215 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef %145, i64 noundef %214) #21
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %216, i32 0, i32 %209
  br label %218

218:                                              ; preds = %204, %212, %148, %141
  %219 = phi i32 [ 0, %141 ], [ 0, %148 ], [ %217, %212 ], [ %209, %204 ]
  %220 = phi i64 [ %145, %141 ], [ %145, %148 ], [ %213, %212 ], [ %145, %204 ]
  %221 = phi double [ %143, %141 ], [ %143, %148 ], [ %205, %212 ], [ %205, %204 ]
  %222 = phi double [ %142, %141 ], [ %142, %148 ], [ %206, %212 ], [ %206, %204 ]
  %223 = add nuw nsw i64 %144, 1
  %224 = load i64, ptr %39, align 8, !tbaa !25
  %225 = icmp slt i64 %223, %224
  br i1 %225, label %141, label %226, !llvm.loop !41

226:                                              ; preds = %218, %127
  %227 = phi i32 [ %128, %127 ], [ %219, %218 ]
  %228 = phi double [ %132, %127 ], [ %221, %218 ]
  %229 = phi double [ %132, %127 ], [ %222, %218 ]
  %230 = call ptr @DestroyCacheView(ptr noundef %133) #19
  %231 = fsub double %229, %228
  %232 = call double @llvm.fmuladd.f64(double %3, double %231, double %228)
  %233 = call double @llvm.fmuladd.f64(double %4, double %231, double %228)
  %234 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %28, ptr noundef %5) #19
  %235 = load i64, ptr %39, align 8, !tbaa !25
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %275

237:                                              ; preds = %226
  %238 = getelementptr inbounds %struct._CannyInfo, ptr %13, i64 0, i32 1
  br label %239

239:                                              ; preds = %237, %270
  %240 = phi i64 [ %235, %237 ], [ %271, %270 ]
  %241 = phi i64 [ 0, %237 ], [ %273, %270 ]
  %242 = phi i32 [ %227, %237 ], [ %272, %270 ]
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %270, label %244

244:                                              ; preds = %239
  %245 = load i64, ptr %37, align 8, !tbaa !24
  %246 = icmp sgt i64 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %244, %263
  %248 = phi i64 [ %265, %263 ], [ 0, %244 ]
  %249 = phi i32 [ %264, %263 ], [ %242, %244 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #18
  %250 = call ptr @GetCacheViewVirtualPixels(ptr noundef %234, i64 noundef %248, i64 noundef %241, i64 noundef 1, i64 noundef 1, ptr noundef %5) #20
  %251 = icmp eq ptr %250, null
  br i1 %251, label %263, label %252

252:                                              ; preds = %247
  %253 = call i32 @GetMatrixElement(ptr noundef nonnull %41, i64 noundef %248, i64 noundef %241, ptr noundef nonnull %13) #19
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %252
  %256 = call float @GetPixelIntensity(ptr noundef nonnull %28, ptr noundef nonnull %250) #20
  %257 = fcmp une float %256, 0.000000e+00
  %258 = load double, ptr %238, align 8
  %259 = fcmp ult double %258, %233
  %260 = select i1 %257, i1 true, i1 %259
  br i1 %260, label %263, label %261

261:                                              ; preds = %255
  %262 = call fastcc i32 @TraceEdges(ptr noundef nonnull %28, ptr noundef %234, ptr noundef nonnull %41, i64 noundef %248, i64 noundef %241, double noundef %232, ptr noundef %5) #21
  br label %263

263:                                              ; preds = %255, %261, %252, %247
  %264 = phi i32 [ %249, %247 ], [ 0, %252 ], [ %262, %261 ], [ %253, %255 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #18
  %265 = add nuw nsw i64 %248, 1
  %266 = load i64, ptr %37, align 8, !tbaa !24
  %267 = icmp slt i64 %265, %266
  br i1 %267, label %247, label %268, !llvm.loop !42

268:                                              ; preds = %263
  %269 = load i64, ptr %39, align 8, !tbaa !25
  br label %270

270:                                              ; preds = %268, %244, %239
  %271 = phi i64 [ %240, %239 ], [ %240, %244 ], [ %269, %268 ]
  %272 = phi i32 [ 0, %239 ], [ %242, %244 ], [ %264, %268 ]
  %273 = add nuw nsw i64 %241, 1
  %274 = icmp slt i64 %273, %271
  br i1 %274, label %239, label %275, !llvm.loop !43

275:                                              ; preds = %270, %226
  %276 = call ptr @DestroyCacheView(ptr noundef %234) #19
  %277 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %41) #19
  br label %278

278:                                              ; preds = %27, %275, %43, %34, %24
  %279 = phi ptr [ null, %24 ], [ null, %34 ], [ null, %43 ], [ %28, %275 ], [ null, %27 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  ret ptr %279
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

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize
declare double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: optsize
declare i32 @SetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #18
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef nonnull %10) #19
  %12 = load ptr, ptr %6, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #19
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #18
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @TraceEdges(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, double noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct._CannyInfo, align 8
  %9 = alloca %struct._CannyInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #18
  %10 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %3, i64 noundef %4, i64 noundef 1, i64 noundef 1, ptr noundef %6) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %86, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 2
  store i16 -1, ptr %13, align 2, !tbaa !36
  %14 = getelementptr inbounds %struct._PixelPacket, ptr %10, i64 0, i32 1
  store i16 -1, ptr %14, align 2, !tbaa !37
  store i16 -1, ptr %10, align 2, !tbaa !38
  %15 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef %6) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %86, label %17

17:                                               ; preds = %12
  %18 = call i32 @GetMatrixElement(ptr noundef %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %8) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %86, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._CannyInfo, ptr %8, i64 0, i32 3
  store i64 %3, ptr %21, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct._CannyInfo, ptr %8, i64 0, i32 4
  store i64 %4, ptr %22, align 8, !tbaa !46
  %23 = call i32 @SetMatrixElement(ptr noundef %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %8) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %86, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._CannyInfo, ptr %9, i64 0, i32 1
  br label %29

27:                                               ; preds = %83
  %28 = icmp eq i64 %80, 0
  br i1 %28, label %86, label %29, !llvm.loop !47

29:                                               ; preds = %25, %27
  %30 = phi i64 [ 1, %25 ], [ %80, %27 ]
  %31 = add nsw i64 %30, -1
  %32 = call i32 @GetMatrixElement(ptr noundef %2, i64 noundef %31, i64 noundef 0, ptr noundef nonnull %8) #19
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
  %43 = load i64, ptr %21, align 8, !tbaa !45
  %44 = add nsw i64 %43, %38
  %45 = load i64, ptr %22, align 8, !tbaa !46
  %46 = add nsw i64 %45, %35
  %47 = call fastcc i32 @IsAuthenticPixel(ptr noundef %0, i64 noundef %44, i64 noundef %46) #21, !range !48
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %42
  %50 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %1, i64 noundef %44, i64 noundef %46, i64 noundef 1, i64 noundef 1, ptr noundef %6) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %86, label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %21, align 8, !tbaa !45
  %54 = add nsw i64 %53, %38
  %55 = load i64, ptr %22, align 8, !tbaa !46
  %56 = add nsw i64 %55, %35
  %57 = call i32 @GetMatrixElement(ptr noundef %2, i64 noundef %54, i64 noundef %56, ptr noundef nonnull %9) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %52
  %60 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %50) #20
  %61 = fcmp une float %60, 0.000000e+00
  %62 = load double, ptr %26, align 8
  %63 = fcmp ult double %62, %5
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 2
  store i16 -1, ptr %66, align 2, !tbaa !36
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 1
  store i16 -1, ptr %67, align 2, !tbaa !37
  store i16 -1, ptr %50, align 2, !tbaa !38
  %68 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1, ptr noundef %6) #20
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %65
  %71 = load i64, ptr %21, align 8, !tbaa !45
  %72 = add nsw i64 %71, %38
  store i64 %72, ptr %21, align 8, !tbaa !45
  %73 = load i64, ptr %22, align 8, !tbaa !46
  %74 = add nsw i64 %73, %35
  store i64 %74, ptr %22, align 8, !tbaa !46
  %75 = call i32 @SetMatrixElement(ptr noundef %2, i64 noundef %39, i64 noundef 0, ptr noundef nonnull %8) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %70
  %78 = add nsw i64 %39, 1
  br label %79

79:                                               ; preds = %59, %77, %42, %37
  %80 = phi i64 [ %39, %37 ], [ %39, %42 ], [ %78, %77 ], [ %39, %59 ]
  %81 = add nsw i64 %38, 1
  %82 = icmp eq i64 %81, 2
  br i1 %82, label %83, label %37, !llvm.loop !49

83:                                               ; preds = %79
  %84 = add nsw i64 %35, 1
  %85 = icmp eq i64 %84, 2
  br i1 %85, label %27, label %34, !llvm.loop !50

86:                                               ; preds = %29, %27, %49, %52, %65, %70, %20, %17, %12, %7
  %87 = phi i32 [ 0, %7 ], [ 0, %12 ], [ 0, %17 ], [ 0, %20 ], [ 0, %70 ], [ 0, %65 ], [ 0, %52 ], [ 0, %49 ], [ 0, %29 ], [ 1, %27 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #18
  ret i32 %87
}

; Function Attrs: optsize
declare ptr @DestroyMatrixInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageChannelFeatures(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = sub i64 0, %1
  %5 = alloca %struct._ChannelStatistics, align 8
  %6 = alloca %struct._ChannelStatistics, align 8
  %7 = alloca %struct._ChannelStatistics, align 8
  %8 = alloca %struct._ChannelStatistics, align 8
  %9 = alloca %struct._ChannelStatistics, align 8
  %10 = alloca %struct._ChannelStatistics, align 8
  %11 = alloca %struct._ChannelStatistics, align 8
  %12 = alloca %struct._ChannelStatistics, align 8
  %13 = alloca %struct._ChannelStatistics, align 8
  %14 = alloca %struct._LongPixelPacket, align 4
  %15 = alloca %struct._ExceptionInfo, align 8
  %16 = alloca %struct._ChannelStatistics, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %14) #18
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 689, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #19
  br label %23

23:                                               ; preds = %20, %3
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !24
  %26 = add i64 %1, 1
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %2069, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !25
  %31 = icmp ult i64 %30, %26
  br i1 %31, label %2069, label %32

32:                                               ; preds = %28
  %33 = tail call dereferenceable_or_null(21504) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 448) #22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #18
  call void @GetExceptionInfo(ptr noundef nonnull %15) #19
  %36 = tail call ptr @__errno_location() #23
  %37 = load i32, ptr %36, align 4, !tbaa !51
  %38 = call ptr @GetExceptionMessage(i32 noundef %37) #19
  %39 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 696, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %38) #19
  %40 = call ptr @DestroyString(ptr noundef %38) #19
  call void @CatchException(ptr noundef nonnull %15) #19
  %41 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %15) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #24
  unreachable

42:                                               ; preds = %32
  %43 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %33, i32 noundef 0, i64 noundef 21504) #19
  %44 = tail call dereferenceable_or_null(1310720) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 20) #22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1310720) %44, i8 -1, i64 1310720, i1 false), !tbaa !51
  %47 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #19
  %48 = load i64, ptr %29, align 8, !tbaa !25
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = tail call ptr @DestroyCacheView(ptr noundef %47) #19
  br label %125

52:                                               ; preds = %42
  %53 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %33) #19
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %55 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 707, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %54) #19
  br label %2069

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  br label %59

59:                                               ; preds = %56, %114
  %60 = phi i64 [ 0, %56 ], [ %117, %114 ]
  %61 = phi i32 [ 1, %56 ], [ %116, %114 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %114, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %24, align 8, !tbaa !24
  %65 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %47, i64 noundef 0, i64 noundef %60, i64 noundef %64, i64 noundef 1, ptr noundef %2) #20
  %66 = icmp eq ptr %65, null
  br i1 %66, label %114, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %47) #19
  %69 = load i64, ptr %24, align 8, !tbaa !24
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %114

71:                                               ; preds = %67
  %72 = load i32, ptr %57, align 4, !tbaa !52
  %73 = icmp eq i32 %72, 12
  %74 = icmp eq ptr %68, null
  %75 = load i32, ptr %58, align 8, !tbaa !53
  %76 = icmp eq i32 %75, 0
  br label %77

77:                                               ; preds = %71, %110
  %78 = phi i64 [ 0, %71 ], [ %112, %110 ]
  %79 = phi ptr [ %65, %71 ], [ %111, %110 ]
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !36
  %82 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %81) #21, !range !54
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %83
  store i32 %82, ptr %84, align 4, !tbaa !55
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 1
  %86 = load i16, ptr %85, align 2, !tbaa !37
  %87 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %86) #21, !range !54
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %88, i32 1
  store i32 %87, ptr %89, align 4, !tbaa !57
  %90 = load i16, ptr %79, align 2, !tbaa !38
  %91 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %90) #21, !range !54
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %92, i32 2
  store i32 %91, ptr %93, align 4, !tbaa !58
  br i1 %73, label %94, label %103

94:                                               ; preds = %77
  br i1 %74, label %98, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds i16, ptr %68, i64 %78
  %97 = load i16, ptr %96, align 2, !tbaa !59
  br label %98

98:                                               ; preds = %94, %95
  %99 = phi i16 [ %97, %95 ], [ 0, %94 ]
  %100 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %99) #21, !range !54
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %101, i32 4
  store i32 %100, ptr %102, align 4, !tbaa !60
  br label %103

103:                                              ; preds = %98, %77
  br i1 %76, label %110, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 3
  %106 = load i16, ptr %105, align 2, !tbaa !61
  %107 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %106) #21, !range !54
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %108, i32 3
  store i32 %107, ptr %109, align 4, !tbaa !62
  br label %110

110:                                              ; preds = %104, %103
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 1
  %112 = add nuw nsw i64 %78, 1
  %113 = icmp eq i64 %112, %69
  br i1 %113, label %114, label %77, !llvm.loop !63

114:                                              ; preds = %110, %67, %63, %59
  %115 = phi i1 [ true, %59 ], [ true, %63 ], [ false, %67 ], [ false, %110 ]
  %116 = phi i32 [ 0, %59 ], [ 0, %63 ], [ 1, %67 ], [ 1, %110 ]
  %117 = add nuw nsw i64 %60, 1
  %118 = load i64, ptr %29, align 8, !tbaa !25
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %59, label %120, !llvm.loop !64

120:                                              ; preds = %114
  %121 = tail call ptr @DestroyCacheView(ptr noundef %47) #19
  br i1 %115, label %122, label %125

122:                                              ; preds = %120
  %123 = tail call ptr @RelinquishMagickMemory(ptr noundef %44) #19
  %124 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #19
  br label %2069

125:                                              ; preds = %50, %120
  %126 = call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 20) #19
  %127 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !52
  %129 = icmp eq i32 %128, 12
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %131 = load i32, ptr %130, align 8, !tbaa !53
  %132 = icmp eq i32 %131, 0
  %133 = load i32, ptr %14, align 4, !tbaa !55
  %134 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 1
  %135 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 2
  %136 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 4
  %137 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 3
  %138 = load i32, ptr %134, align 4, !tbaa !57
  %139 = load i32, ptr %135, align 4, !tbaa !58
  %140 = load i32, ptr %136, align 4
  %141 = load i32, ptr %137, align 4
  br label %142

142:                                              ; preds = %125, %194
  %143 = phi i32 [ %141, %125 ], [ %195, %194 ]
  %144 = phi i32 [ %140, %125 ], [ %185, %194 ]
  %145 = phi i32 [ %139, %125 ], [ %175, %194 ]
  %146 = phi i32 [ %138, %125 ], [ %166, %194 ]
  %147 = phi i64 [ 0, %125 ], [ %196, %194 ]
  %148 = phi i32 [ %133, %125 ], [ %157, %194 ]
  %149 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %147
  %150 = load i32, ptr %149, align 4, !tbaa !55
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %156, label %152

152:                                              ; preds = %142
  %153 = add i32 %148, 1
  store i32 %153, ptr %14, align 4, !tbaa !55
  %154 = zext i32 %148 to i64
  %155 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %154
  store i32 %150, ptr %155, align 4, !tbaa !55
  br label %156

156:                                              ; preds = %152, %142
  %157 = phi i32 [ %153, %152 ], [ %148, %142 ]
  %158 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %147, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !57
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %165, label %161

161:                                              ; preds = %156
  %162 = add i32 %146, 1
  store i32 %162, ptr %134, align 4, !tbaa !57
  %163 = zext i32 %146 to i64
  %164 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %163, i32 1
  store i32 %159, ptr %164, align 4, !tbaa !57
  br label %165

165:                                              ; preds = %161, %156
  %166 = phi i32 [ %162, %161 ], [ %146, %156 ]
  %167 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %147, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !58
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %174, label %170

170:                                              ; preds = %165
  %171 = add i32 %145, 1
  store i32 %171, ptr %135, align 4, !tbaa !58
  %172 = zext i32 %145 to i64
  %173 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %172, i32 2
  store i32 %168, ptr %173, align 4, !tbaa !58
  br label %174

174:                                              ; preds = %170, %165
  %175 = phi i32 [ %171, %170 ], [ %145, %165 ]
  br i1 %129, label %176, label %184

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %147, i32 4
  %178 = load i32, ptr %177, align 4, !tbaa !60
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = add i32 %144, 1
  store i32 %181, ptr %136, align 4, !tbaa !60
  %182 = zext i32 %144 to i64
  %183 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %182, i32 4
  store i32 %178, ptr %183, align 4, !tbaa !60
  br label %184

184:                                              ; preds = %176, %180, %174
  %185 = phi i32 [ %144, %176 ], [ %181, %180 ], [ %144, %174 ]
  br i1 %132, label %194, label %186

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %147, i32 3
  %188 = load i32, ptr %187, align 4, !tbaa !62
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = add i32 %143, 1
  store i32 %191, ptr %137, align 4, !tbaa !62
  %192 = zext i32 %143 to i64
  %193 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %192, i32 3
  store i32 %188, ptr %193, align 4, !tbaa !62
  br label %194

194:                                              ; preds = %184, %190, %186
  %195 = phi i32 [ %143, %184 ], [ %191, %190 ], [ %143, %186 ]
  %196 = add nuw nsw i64 %147, 1
  %197 = icmp eq i64 %196, 65536
  br i1 %197, label %198, label %142, !llvm.loop !65

198:                                              ; preds = %194
  %199 = call i32 @llvm.umax.i32(i32 %166, i32 %157)
  %200 = call i32 @llvm.umax.i32(i32 %175, i32 %199)
  %201 = call i32 @llvm.umax.i32(i32 %185, i32 %200)
  %202 = select i1 %129, i32 %201, i32 %200
  %203 = call i32 @llvm.umax.i32(i32 %195, i32 %202)
  %204 = select i1 %132, i32 %202, i32 %203
  %205 = zext i32 %204 to i64
  %206 = call ptr @AcquireQuantumMemory(i64 noundef %205, i64 noundef 8) #22
  %207 = shl i32 %204, 1
  %208 = add i32 %207, 2
  %209 = zext i32 %208 to i64
  %210 = call ptr @AcquireQuantumMemory(i64 noundef %209, i64 noundef 160) #22
  %211 = call ptr @AcquireQuantumMemory(i64 noundef %209, i64 noundef 160) #22
  %212 = call ptr @AcquireQuantumMemory(i64 noundef %209, i64 noundef 160) #22
  %213 = call ptr @AcquireQuantumMemory(i64 noundef %205, i64 noundef 8) #22
  %214 = call ptr @AcquireQuantumMemory(i64 noundef %205, i64 noundef 160) #22
  %215 = icmp eq ptr %206, null
  %216 = icmp eq ptr %210, null
  %217 = select i1 %215, i1 true, i1 %216
  %218 = icmp eq ptr %211, null
  %219 = select i1 %217, i1 true, i1 %218
  %220 = icmp eq ptr %212, null
  %221 = select i1 %219, i1 true, i1 %220
  %222 = icmp eq ptr %213, null
  %223 = select i1 %221, i1 true, i1 %222
  %224 = icmp eq ptr %214, null
  %225 = select i1 %223, i1 true, i1 %224
  br i1 %225, label %226, label %267

226:                                              ; preds = %198
  br i1 %222, label %238, label %227

227:                                              ; preds = %226
  %228 = icmp eq i32 %204, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %227, %229
  %230 = phi i64 [ %234, %229 ], [ 0, %227 ]
  %231 = getelementptr inbounds ptr, ptr %213, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !66
  %233 = call ptr @RelinquishMagickMemory(ptr noundef %232) #19
  store ptr %233, ptr %231, align 8, !tbaa !66
  %234 = add nuw nsw i64 %230, 1
  %235 = icmp eq i64 %234, %205
  br i1 %235, label %236, label %229, !llvm.loop !67

236:                                              ; preds = %229, %227
  %237 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %213) #19
  br label %238

238:                                              ; preds = %236, %226
  br i1 %224, label %241, label %239

239:                                              ; preds = %238
  %240 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %214) #19
  br label %241

241:                                              ; preds = %239, %238
  br i1 %220, label %244, label %242

242:                                              ; preds = %241
  %243 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %212) #19
  br label %244

244:                                              ; preds = %242, %241
  br i1 %218, label %247, label %245

245:                                              ; preds = %244
  %246 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %211) #19
  br label %247

247:                                              ; preds = %245, %244
  br i1 %216, label %250, label %248

248:                                              ; preds = %247
  %249 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %210) #19
  br label %250

250:                                              ; preds = %248, %247
  br i1 %215, label %262, label %251

251:                                              ; preds = %250
  %252 = icmp eq i32 %204, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %251, %253
  %254 = phi i64 [ %258, %253 ], [ 0, %251 ]
  %255 = getelementptr inbounds ptr, ptr %206, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !66
  %257 = call ptr @RelinquishMagickMemory(ptr noundef %256) #19
  store ptr %257, ptr %255, align 8, !tbaa !66
  %258 = add nuw nsw i64 %254, 1
  %259 = icmp eq i64 %258, %205
  br i1 %259, label %260, label %253, !llvm.loop !68

260:                                              ; preds = %253, %251
  %261 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %206) #19
  br label %262

262:                                              ; preds = %260, %250
  %263 = call ptr @RelinquishMagickMemory(ptr noundef %44) #19
  %264 = call ptr @RelinquishMagickMemory(ptr noundef %33) #19
  %265 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %266 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %265) #19
  br label %2069

267:                                              ; preds = %198
  %268 = call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 160) #19
  %269 = mul nuw nsw i64 %209, 160
  %270 = call ptr @ResetMagickMemory(ptr noundef nonnull %210, i32 noundef 0, i64 noundef %269) #19
  %271 = call ptr @ResetMagickMemory(ptr noundef nonnull %211, i32 noundef 0, i64 noundef %269) #19
  %272 = call ptr @ResetMagickMemory(ptr noundef nonnull %212, i32 noundef 0, i64 noundef %269) #19
  %273 = call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 160) #19
  %274 = mul nuw nsw i64 %205, 160
  %275 = call ptr @ResetMagickMemory(ptr noundef nonnull %214, i32 noundef 0, i64 noundef %274) #19
  %276 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 160) #19
  %277 = zext i32 %207 to i64
  %278 = mul nuw nsw i64 %277, 160
  %279 = call ptr @ResetMagickMemory(ptr noundef nonnull %211, i32 noundef 0, i64 noundef %278) #19
  %280 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 160) #19
  %281 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 160) #19
  %282 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 160) #19
  %283 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 160) #19
  %284 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 160) #19
  %285 = call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 160) #19
  %286 = icmp eq i32 %204, 0
  br i1 %286, label %332, label %287

287:                                              ; preds = %267, %299
  %288 = phi i64 [ %303, %299 ], [ 0, %267 ]
  %289 = call ptr @AcquireQuantumMemory(i64 noundef %205, i64 noundef 160) #22
  %290 = getelementptr inbounds ptr, ptr %206, i64 %288
  store ptr %289, ptr %290, align 8, !tbaa !66
  %291 = call ptr @AcquireQuantumMemory(i64 noundef %205, i64 noundef 160) #22
  %292 = getelementptr inbounds ptr, ptr %213, i64 %288
  store ptr %291, ptr %292, align 8, !tbaa !66
  %293 = load ptr, ptr %290, align 8, !tbaa !66
  %294 = icmp eq ptr %293, null
  %295 = icmp eq ptr %291, null
  %296 = select i1 %294, i1 true, i1 %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %287
  %298 = icmp eq i64 %288, 0
  br i1 %298, label %321, label %305

299:                                              ; preds = %287
  %300 = call ptr @ResetMagickMemory(ptr noundef nonnull %293, i32 noundef 0, i64 noundef %274) #19
  %301 = load ptr, ptr %292, align 8, !tbaa !66
  %302 = call ptr @ResetMagickMemory(ptr noundef %301, i32 noundef 0, i64 noundef %274) #19
  %303 = add nuw nsw i64 %288, 1
  %304 = icmp eq i64 %303, %205
  br i1 %304, label %332, label %287, !llvm.loop !69

305:                                              ; preds = %297, %319
  %306 = phi i64 [ %307, %319 ], [ %288, %297 ]
  %307 = add nsw i64 %306, -1
  %308 = getelementptr inbounds ptr, ptr %213, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !66
  %310 = icmp eq ptr %309, null
  br i1 %310, label %313, label %311

311:                                              ; preds = %305
  %312 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %309) #19
  store ptr %312, ptr %308, align 8, !tbaa !66
  br label %313

313:                                              ; preds = %311, %305
  %314 = getelementptr inbounds ptr, ptr %206, i64 %307
  %315 = load ptr, ptr %314, align 8, !tbaa !66
  %316 = icmp eq ptr %315, null
  br i1 %316, label %319, label %317

317:                                              ; preds = %313
  %318 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %315) #19
  store ptr %318, ptr %314, align 8, !tbaa !66
  br label %319

319:                                              ; preds = %313, %317
  %320 = icmp sgt i64 %306, 1
  br i1 %320, label %305, label %321, !llvm.loop !70

321:                                              ; preds = %319, %297
  %322 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %213) #19
  %323 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %206) #19
  %324 = call ptr @RelinquishMagickMemory(ptr noundef %214) #19
  %325 = call ptr @RelinquishMagickMemory(ptr noundef %212) #19
  %326 = call ptr @RelinquishMagickMemory(ptr noundef %211) #19
  %327 = call ptr @RelinquishMagickMemory(ptr noundef %210) #19
  %328 = call ptr @RelinquishMagickMemory(ptr noundef %44) #19
  %329 = call ptr @RelinquishMagickMemory(ptr noundef %33) #19
  %330 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %331 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 891, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %330) #19
  br label %2069

332:                                              ; preds = %299, %267
  %333 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #19
  %334 = load i64, ptr %29, align 8, !tbaa !25
  %335 = icmp sgt i64 %334, 0
  br i1 %335, label %336, label %562

336:                                              ; preds = %332
  %337 = shl i64 %1, 1
  %338 = add i64 %1, 2
  %339 = mul i64 %1, 3
  br label %340

340:                                              ; preds = %336, %548
  %341 = phi i64 [ 0, %336 ], [ %551, %548 ]
  %342 = phi i32 [ 1, %336 ], [ %550, %548 ]
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %548, label %344

344:                                              ; preds = %340
  %345 = load i64, ptr %24, align 8, !tbaa !24
  %346 = add i64 %345, %337
  %347 = call ptr @GetCacheViewVirtualPixels(ptr noundef %333, i64 noundef %4, i64 noundef %341, i64 noundef %346, i64 noundef %338, ptr noundef %2) #20
  %348 = icmp eq ptr %347, null
  br i1 %348, label %548, label %349

349:                                              ; preds = %344
  %350 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %333) #19
  %351 = getelementptr inbounds i16, ptr %350, i64 %1
  %352 = load i64, ptr %24, align 8, !tbaa !24
  %353 = icmp sgt i64 %352, 0
  br i1 %353, label %354, label %548

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct._PixelPacket, ptr %347, i64 %1
  %356 = load i32, ptr %127, align 4, !tbaa !52
  %357 = icmp eq i32 %356, 12
  %358 = load i32, ptr %130, align 8, !tbaa !53
  %359 = icmp eq i32 %358, 0
  %360 = add i64 %352, %1
  %361 = add i64 %352, %337
  %362 = add i64 %339, %352
  %363 = icmp eq ptr %350, null
  br label %364

364:                                              ; preds = %354, %544
  %365 = phi i64 [ 0, %354 ], [ %546, %544 ]
  %366 = phi ptr [ %355, %354 ], [ %545, %544 ]
  %367 = getelementptr inbounds %struct._PixelPacket, ptr %366, i64 0, i32 2
  %368 = load i16, ptr %367, align 2, !tbaa !36
  %369 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %368) #21, !range !54
  %370 = getelementptr inbounds %struct._PixelPacket, ptr %366, i64 0, i32 1
  %371 = load i16, ptr %370, align 2, !tbaa !37
  %372 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %371) #21, !range !54
  %373 = load i16, ptr %366, align 2, !tbaa !38
  %374 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %373) #21, !range !54
  %375 = getelementptr inbounds i16, ptr %351, i64 %365
  %376 = getelementptr inbounds %struct._PixelPacket, ptr %366, i64 0, i32 3
  br label %377

377:                                              ; preds = %364, %541
  %378 = phi i64 [ 0, %364 ], [ %542, %541 ]
  switch i64 %378, label %382 [
    i64 3, label %381
    i64 1, label %379
    i64 2, label %380
  ]

379:                                              ; preds = %377
  br label %382

380:                                              ; preds = %377
  br label %382

381:                                              ; preds = %377
  br label %382

382:                                              ; preds = %377, %381, %380, %379
  %383 = phi i64 [ %360, %380 ], [ %361, %379 ], [ %362, %381 ], [ %1, %377 ]
  br label %384

384:                                              ; preds = %384, %382
  %385 = phi i64 [ 0, %382 ], [ %389, %384 ]
  %386 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !55
  %388 = icmp eq i32 %387, %369
  %389 = add nuw nsw i64 %385, 1
  br i1 %388, label %390, label %384, !llvm.loop !71

390:                                              ; preds = %384
  %391 = getelementptr inbounds %struct._PixelPacket, ptr %366, i64 %383, i32 2
  %392 = load i16, ptr %391, align 2, !tbaa !36
  %393 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %392) #21, !range !54
  br label %394

394:                                              ; preds = %394, %390
  %395 = phi i64 [ %399, %394 ], [ 0, %390 ]
  %396 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %395
  %397 = load i32, ptr %396, align 4, !tbaa !55
  %398 = icmp eq i32 %397, %393
  %399 = add nuw nsw i64 %395, 1
  br i1 %398, label %400, label %394, !llvm.loop !72

400:                                              ; preds = %394
  %401 = getelementptr inbounds ptr, ptr %206, i64 %385
  %402 = load ptr, ptr %401, align 8, !tbaa !66
  %403 = getelementptr inbounds %struct._ChannelStatistics, ptr %402, i64 %395
  %404 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %403, i64 0, i64 %378
  %405 = load double, ptr %404, align 8, !tbaa !73
  %406 = fadd double %405, 1.000000e+00
  store double %406, ptr %404, align 8, !tbaa !73
  %407 = getelementptr inbounds ptr, ptr %206, i64 %395
  %408 = load ptr, ptr %407, align 8, !tbaa !66
  %409 = getelementptr inbounds %struct._ChannelStatistics, ptr %408, i64 %385
  %410 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %409, i64 0, i64 %378
  %411 = load double, ptr %410, align 8, !tbaa !73
  %412 = fadd double %411, 1.000000e+00
  store double %412, ptr %410, align 8, !tbaa !73
  br label %413

413:                                              ; preds = %413, %400
  %414 = phi i64 [ 0, %400 ], [ %418, %413 ]
  %415 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %414, i32 1
  %416 = load i32, ptr %415, align 4, !tbaa !57
  %417 = icmp eq i32 %416, %372
  %418 = add nuw nsw i64 %414, 1
  br i1 %417, label %419, label %413, !llvm.loop !75

419:                                              ; preds = %413
  %420 = getelementptr inbounds %struct._PixelPacket, ptr %366, i64 %383, i32 1
  %421 = load i16, ptr %420, align 2, !tbaa !37
  %422 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %421) #21, !range !54
  br label %423

423:                                              ; preds = %423, %419
  %424 = phi i64 [ %428, %423 ], [ 0, %419 ]
  %425 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %424, i32 1
  %426 = load i32, ptr %425, align 4, !tbaa !57
  %427 = icmp eq i32 %426, %422
  %428 = add nuw nsw i64 %424, 1
  br i1 %427, label %429, label %423, !llvm.loop !76

429:                                              ; preds = %423
  %430 = getelementptr inbounds ptr, ptr %206, i64 %414
  %431 = load ptr, ptr %430, align 8, !tbaa !66
  %432 = getelementptr inbounds %struct._ChannelStatistics, ptr %431, i64 %424
  %433 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %432, i64 0, i64 %378, i32 1
  %434 = load double, ptr %433, align 8, !tbaa !77
  %435 = fadd double %434, 1.000000e+00
  store double %435, ptr %433, align 8, !tbaa !77
  %436 = getelementptr inbounds ptr, ptr %206, i64 %424
  %437 = load ptr, ptr %436, align 8, !tbaa !66
  %438 = getelementptr inbounds %struct._ChannelStatistics, ptr %437, i64 %414
  %439 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %438, i64 0, i64 %378, i32 1
  %440 = load double, ptr %439, align 8, !tbaa !77
  %441 = fadd double %440, 1.000000e+00
  store double %441, ptr %439, align 8, !tbaa !77
  br label %442

442:                                              ; preds = %442, %429
  %443 = phi i64 [ 0, %429 ], [ %447, %442 ]
  %444 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %443, i32 2
  %445 = load i32, ptr %444, align 4, !tbaa !58
  %446 = icmp eq i32 %445, %374
  %447 = add nuw nsw i64 %443, 1
  br i1 %446, label %448, label %442, !llvm.loop !78

448:                                              ; preds = %442
  %449 = getelementptr inbounds %struct._PixelPacket, ptr %366, i64 %383
  %450 = load i16, ptr %449, align 2, !tbaa !38
  %451 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %450) #21, !range !54
  br label %452

452:                                              ; preds = %452, %448
  %453 = phi i64 [ %457, %452 ], [ 0, %448 ]
  %454 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %453, i32 2
  %455 = load i32, ptr %454, align 4, !tbaa !58
  %456 = icmp eq i32 %455, %451
  %457 = add nuw nsw i64 %453, 1
  br i1 %456, label %458, label %452, !llvm.loop !79

458:                                              ; preds = %452
  %459 = getelementptr inbounds ptr, ptr %206, i64 %443
  %460 = load ptr, ptr %459, align 8, !tbaa !66
  %461 = getelementptr inbounds %struct._ChannelStatistics, ptr %460, i64 %453
  %462 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %461, i64 0, i64 %378, i32 2
  %463 = load double, ptr %462, align 8, !tbaa !80
  %464 = fadd double %463, 1.000000e+00
  store double %464, ptr %462, align 8, !tbaa !80
  %465 = getelementptr inbounds ptr, ptr %206, i64 %453
  %466 = load ptr, ptr %465, align 8, !tbaa !66
  %467 = getelementptr inbounds %struct._ChannelStatistics, ptr %466, i64 %443
  %468 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %467, i64 0, i64 %378, i32 2
  %469 = load double, ptr %468, align 8, !tbaa !80
  %470 = fadd double %469, 1.000000e+00
  store double %470, ptr %468, align 8, !tbaa !80
  br i1 %357, label %471, label %508

471:                                              ; preds = %458, %477
  %472 = phi i64 [ %481, %477 ], [ 0, %458 ]
  %473 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %472, i32 4
  %474 = load i32, ptr %473, align 4, !tbaa !60
  br i1 %363, label %477, label %475

475:                                              ; preds = %471
  %476 = load i16, ptr %375, align 2, !tbaa !59
  br label %477

477:                                              ; preds = %471, %475
  %478 = phi i16 [ %476, %475 ], [ 0, %471 ]
  %479 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %478) #21, !range !54
  %480 = icmp eq i32 %474, %479
  %481 = add nuw nsw i64 %472, 1
  br i1 %480, label %482, label %471, !llvm.loop !81

482:                                              ; preds = %477
  %483 = getelementptr inbounds i16, ptr %375, i64 %383
  br label %484

484:                                              ; preds = %490, %482
  %485 = phi i64 [ %494, %490 ], [ 0, %482 ]
  %486 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %485, i32 4
  %487 = load i32, ptr %486, align 4, !tbaa !60
  br i1 %363, label %490, label %488

488:                                              ; preds = %484
  %489 = load i16, ptr %483, align 2, !tbaa !59
  br label %490

490:                                              ; preds = %484, %488
  %491 = phi i16 [ %489, %488 ], [ 0, %484 ]
  %492 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %491) #21, !range !54
  %493 = icmp eq i32 %487, %492
  %494 = add nuw nsw i64 %485, 1
  br i1 %493, label %495, label %484, !llvm.loop !82

495:                                              ; preds = %490
  %496 = getelementptr inbounds ptr, ptr %206, i64 %472
  %497 = load ptr, ptr %496, align 8, !tbaa !66
  %498 = getelementptr inbounds %struct._ChannelStatistics, ptr %497, i64 %485
  %499 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %498, i64 0, i64 %378, i32 4
  %500 = load double, ptr %499, align 8, !tbaa !83
  %501 = fadd double %500, 1.000000e+00
  store double %501, ptr %499, align 8, !tbaa !83
  %502 = getelementptr inbounds ptr, ptr %206, i64 %485
  %503 = load ptr, ptr %502, align 8, !tbaa !66
  %504 = getelementptr inbounds %struct._ChannelStatistics, ptr %503, i64 %472
  %505 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %504, i64 0, i64 %378, i32 4
  %506 = load double, ptr %505, align 8, !tbaa !83
  %507 = fadd double %506, 1.000000e+00
  store double %507, ptr %505, align 8, !tbaa !83
  br label %508

508:                                              ; preds = %495, %458
  br i1 %359, label %541, label %509

509:                                              ; preds = %508
  %510 = load i16, ptr %376, align 2, !tbaa !61
  %511 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %510) #21, !range !54
  br label %512

512:                                              ; preds = %512, %509
  %513 = phi i64 [ %517, %512 ], [ 0, %509 ]
  %514 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %513, i32 3
  %515 = load i32, ptr %514, align 4, !tbaa !62
  %516 = icmp eq i32 %515, %511
  %517 = add nuw nsw i64 %513, 1
  br i1 %516, label %518, label %512, !llvm.loop !84

518:                                              ; preds = %512
  %519 = getelementptr inbounds %struct._PixelPacket, ptr %366, i64 %383, i32 3
  %520 = load i16, ptr %519, align 2, !tbaa !61
  %521 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %520) #21, !range !54
  br label %522

522:                                              ; preds = %522, %518
  %523 = phi i64 [ %527, %522 ], [ 0, %518 ]
  %524 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %523, i32 3
  %525 = load i32, ptr %524, align 4, !tbaa !62
  %526 = icmp eq i32 %525, %521
  %527 = add nuw nsw i64 %523, 1
  br i1 %526, label %528, label %522, !llvm.loop !85

528:                                              ; preds = %522
  %529 = getelementptr inbounds ptr, ptr %206, i64 %513
  %530 = load ptr, ptr %529, align 8, !tbaa !66
  %531 = getelementptr inbounds %struct._ChannelStatistics, ptr %530, i64 %523
  %532 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %531, i64 0, i64 %378, i32 3
  %533 = load double, ptr %532, align 8, !tbaa !86
  %534 = fadd double %533, 1.000000e+00
  store double %534, ptr %532, align 8, !tbaa !86
  %535 = getelementptr inbounds ptr, ptr %206, i64 %523
  %536 = load ptr, ptr %535, align 8, !tbaa !66
  %537 = getelementptr inbounds %struct._ChannelStatistics, ptr %536, i64 %513
  %538 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %537, i64 0, i64 %378, i32 3
  %539 = load double, ptr %538, align 8, !tbaa !86
  %540 = fadd double %539, 1.000000e+00
  store double %540, ptr %538, align 8, !tbaa !86
  br label %541

541:                                              ; preds = %508, %528
  %542 = add nuw nsw i64 %378, 1
  %543 = icmp eq i64 %542, 4
  br i1 %543, label %544, label %377, !llvm.loop !87

544:                                              ; preds = %541
  %545 = getelementptr inbounds %struct._PixelPacket, ptr %366, i64 1
  %546 = add nuw nsw i64 %365, 1
  %547 = icmp eq i64 %546, %352
  br i1 %547, label %548, label %364, !llvm.loop !88

548:                                              ; preds = %544, %349, %344, %340
  %549 = phi i1 [ true, %340 ], [ true, %344 ], [ false, %349 ], [ false, %544 ]
  %550 = phi i32 [ 0, %340 ], [ 0, %344 ], [ 1, %349 ], [ 1, %544 ]
  %551 = add nuw nsw i64 %341, 1
  %552 = load i64, ptr %29, align 8, !tbaa !25
  %553 = icmp slt i64 %551, %552
  br i1 %553, label %340, label %554, !llvm.loop !89

554:                                              ; preds = %548
  %555 = call ptr @RelinquishMagickMemory(ptr noundef %44) #19
  %556 = call ptr @DestroyCacheView(ptr noundef %333) #19
  br i1 %549, label %565, label %557

557:                                              ; preds = %562, %554
  %558 = load i64, ptr %29, align 8, !tbaa !25
  %559 = sub i64 %558, %1
  %560 = sub i64 %558, %1
  %561 = sub i64 %558, %1
  br label %585

562:                                              ; preds = %332
  %563 = call ptr @RelinquishMagickMemory(ptr noundef %44) #19
  %564 = call ptr @DestroyCacheView(ptr noundef %333) #19
  br label %557

565:                                              ; preds = %554
  br i1 %286, label %573, label %566

566:                                              ; preds = %565, %566
  %567 = phi i64 [ %571, %566 ], [ 0, %565 ]
  %568 = getelementptr inbounds ptr, ptr %206, i64 %567
  %569 = load ptr, ptr %568, align 8, !tbaa !66
  %570 = call ptr @RelinquishMagickMemory(ptr noundef %569) #19
  store ptr %570, ptr %568, align 8, !tbaa !66
  %571 = add nuw nsw i64 %567, 1
  %572 = icmp eq i64 %571, %205
  br i1 %572, label %573, label %566, !llvm.loop !90

573:                                              ; preds = %566, %565
  %574 = call ptr @RelinquishMagickMemory(ptr noundef %206) #19
  %575 = call ptr @RelinquishMagickMemory(ptr noundef %33) #19
  %576 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %577 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %576) #19
  br label %2069

578:                                              ; preds = %641
  %579 = getelementptr %struct._ChannelStatistics, ptr %211, i64 2
  %580 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1
  %581 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2
  %582 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4
  %583 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32
  %584 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8
  br label %644

585:                                              ; preds = %557, %641
  %586 = phi i64 [ %642, %641 ], [ 0, %557 ]
  switch i64 %586, label %587 [
    i64 3, label %595
    i64 1, label %590
    i64 2, label %592
  ]

587:                                              ; preds = %585
  %588 = load i64, ptr %24, align 8, !tbaa !24
  %589 = sub i64 %588, %1
  br label %598

590:                                              ; preds = %585
  %591 = load i64, ptr %24, align 8, !tbaa !24
  br label %598

592:                                              ; preds = %585
  %593 = load i64, ptr %24, align 8, !tbaa !24
  %594 = sub i64 %593, %1
  br label %598

595:                                              ; preds = %585
  %596 = load i64, ptr %24, align 8, !tbaa !24
  %597 = sub i64 %596, %1
  br label %598

598:                                              ; preds = %595, %592, %590, %587
  %599 = phi i64 [ %597, %595 ], [ %594, %592 ], [ %591, %590 ], [ %589, %587 ]
  %600 = phi i64 [ %561, %595 ], [ %559, %592 ], [ %560, %590 ], [ %558, %587 ]
  %601 = uitofp i64 %600 to double
  %602 = fmul double %601, 2.000000e+00
  %603 = uitofp i64 %599 to double
  %604 = fmul double %602, %603
  %605 = call fastcc double @PerceptibleReciprocal(double noundef %604) #21
  br i1 %286, label %641, label %606

606:                                              ; preds = %598
  %607 = load i32, ptr %127, align 4, !tbaa !52
  %608 = icmp eq i32 %607, 12
  %609 = load i32, ptr %130, align 8, !tbaa !53
  %610 = icmp eq i32 %609, 0
  %611 = insertelement <2 x double> poison, double %605, i64 0
  %612 = shufflevector <2 x double> %611, <2 x double> poison, <2 x i32> zeroinitializer
  br label %613

613:                                              ; preds = %606, %638
  %614 = phi i64 [ 0, %606 ], [ %639, %638 ]
  br label %615

615:                                              ; preds = %613, %635
  %616 = phi i64 [ 0, %613 ], [ %636, %635 ]
  %617 = getelementptr inbounds ptr, ptr %206, i64 %616
  %618 = load ptr, ptr %617, align 8, !tbaa !66
  %619 = getelementptr inbounds %struct._ChannelStatistics, ptr %618, i64 %614
  %620 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %619, i64 0, i64 %586
  %621 = load <2 x double>, ptr %620, align 8, !tbaa !26
  %622 = fmul <2 x double> %612, %621
  store <2 x double> %622, ptr %620, align 8, !tbaa !26
  %623 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %619, i64 0, i64 %586, i32 2
  %624 = load double, ptr %623, align 8, !tbaa !80
  %625 = fmul double %605, %624
  store double %625, ptr %623, align 8, !tbaa !80
  br i1 %608, label %626, label %630

626:                                              ; preds = %615
  %627 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %619, i64 0, i64 %586, i32 4
  %628 = load double, ptr %627, align 8, !tbaa !83
  %629 = fmul double %605, %628
  store double %629, ptr %627, align 8, !tbaa !83
  br label %630

630:                                              ; preds = %626, %615
  br i1 %610, label %635, label %631

631:                                              ; preds = %630
  %632 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %619, i64 0, i64 %586, i32 3
  %633 = load double, ptr %632, align 8, !tbaa !86
  %634 = fmul double %605, %633
  store double %634, ptr %632, align 8, !tbaa !86
  br label %635

635:                                              ; preds = %630, %631
  %636 = add nuw nsw i64 %616, 1
  %637 = icmp eq i64 %636, %205
  br i1 %637, label %638, label %615, !llvm.loop !91

638:                                              ; preds = %635
  %639 = add nuw nsw i64 %614, 1
  %640 = icmp eq i64 %639, %205
  br i1 %640, label %641, label %613, !llvm.loop !92

641:                                              ; preds = %638, %598
  %642 = add nuw nsw i64 %586, 1
  %643 = icmp eq i64 %642, 4
  br i1 %643, label %578, label %585, !llvm.loop !93

644:                                              ; preds = %578, %1057
  %645 = phi i64 [ 0, %578 ], [ %1058, %1057 ]
  br i1 %286, label %646, label %651

646:                                              ; preds = %644
  %647 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %645
  %648 = load double, ptr %647, align 8, !tbaa !73
  %649 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %645
  %650 = load double, ptr %649, align 8, !tbaa !73
  br label %959

651:                                              ; preds = %644
  %652 = getelementptr inbounds [4 x double], ptr %580, i64 0, i64 %645
  %653 = getelementptr inbounds [4 x double], ptr %581, i64 0, i64 %645
  %654 = getelementptr inbounds [4 x double], ptr %582, i64 0, i64 %645
  %655 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %645
  %656 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %645, i32 2
  %657 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 4, i64 %645
  %658 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 4, i64 %645
  %659 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 4, i64 %645
  %660 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 8, i64 %645
  %661 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 8, i64 %645
  %662 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 8, i64 %645
  %663 = getelementptr inbounds [4 x double], ptr %583, i64 0, i64 %645
  %664 = getelementptr inbounds [4 x double], ptr %584, i64 0, i64 %645
  %665 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %645, i32 4
  %666 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %645, i32 3
  %667 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 4, i64 %645
  %668 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 4, i64 %645
  %669 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 8, i64 %645
  %670 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 8, i64 %645
  %671 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %645
  %672 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %645
  %673 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %645, i32 2
  %674 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %645, i32 2
  %675 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %645, i32 4
  %676 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %645, i32 4
  %677 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %645, i32 3
  %678 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %645, i32 3
  %679 = load i32, ptr %127, align 4, !tbaa !52
  br label %682

680:                                              ; preds = %1057
  %681 = icmp ugt i32 %207, 2
  br label %1060

682:                                              ; preds = %651, %953
  %683 = phi i32 [ %679, %651 ], [ %880, %953 ]
  %684 = phi i64 [ 0, %651 ], [ %954, %953 ]
  %685 = getelementptr inbounds %struct._ChannelStatistics, ptr %214, i64 %684
  %686 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %685, i64 0, i64 %645
  %687 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %685, i64 0, i64 %645, i32 2
  %688 = getelementptr %struct._ChannelStatistics, ptr %579, i64 %684
  %689 = getelementptr inbounds %struct._ChannelStatistics, ptr %212, i64 %684
  %690 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %689, i64 0, i64 %645
  %691 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %689, i64 0, i64 %645, i32 2
  %692 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %685, i64 0, i64 %645, i32 4
  %693 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %685, i64 0, i64 %645, i32 3
  %694 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %689, i64 0, i64 %645, i32 4
  %695 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %689, i64 0, i64 %645, i32 3
  br label %696

696:                                              ; preds = %682, %915
  %697 = phi i32 [ %683, %682 ], [ %880, %915 ]
  %698 = phi i64 [ 0, %682 ], [ %916, %915 ]
  %699 = getelementptr inbounds ptr, ptr %206, i64 %698
  %700 = load ptr, ptr %699, align 8, !tbaa !66
  %701 = getelementptr inbounds %struct._ChannelStatistics, ptr %700, i64 %684
  %702 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645
  %703 = load double, ptr %702, align 8, !tbaa !73
  %704 = load double, ptr %652, align 8, !tbaa !26
  %705 = call double @llvm.fmuladd.f64(double %703, double %703, double %704)
  store double %705, ptr %652, align 8, !tbaa !26
  %706 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 1
  %707 = load double, ptr %706, align 8, !tbaa !77
  %708 = load double, ptr %653, align 8, !tbaa !26
  %709 = call double @llvm.fmuladd.f64(double %707, double %707, double %708)
  store double %709, ptr %653, align 8, !tbaa !26
  %710 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 2
  %711 = load double, ptr %710, align 8, !tbaa !80
  %712 = load double, ptr %654, align 8, !tbaa !26
  %713 = call double @llvm.fmuladd.f64(double %711, double %711, double %712)
  store double %713, ptr %654, align 8, !tbaa !26
  %714 = icmp eq i32 %697, 12
  br i1 %714, label %715, label %720

715:                                              ; preds = %696
  %716 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 4
  %717 = load double, ptr %716, align 8, !tbaa !83
  %718 = load double, ptr %663, align 8, !tbaa !26
  %719 = call double @llvm.fmuladd.f64(double %717, double %717, double %718)
  store double %719, ptr %663, align 8, !tbaa !26
  br label %720

720:                                              ; preds = %715, %696
  %721 = load i32, ptr %130, align 8, !tbaa !53
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %728, label %723

723:                                              ; preds = %720
  %724 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 3
  %725 = load double, ptr %724, align 8, !tbaa !86
  %726 = load double, ptr %664, align 8, !tbaa !26
  %727 = call double @llvm.fmuladd.f64(double %725, double %725, double %726)
  store double %727, ptr %664, align 8, !tbaa !26
  br label %728

728:                                              ; preds = %723, %720
  %729 = load <2 x double>, ptr %702, align 8, !tbaa !26
  %730 = load <2 x double>, ptr %686, align 8, !tbaa !26
  %731 = fadd <2 x double> %729, %730
  store <2 x double> %731, ptr %686, align 8, !tbaa !26
  %732 = load double, ptr %710, align 8, !tbaa !80
  %733 = load double, ptr %687, align 8, !tbaa !80
  %734 = fadd double %732, %733
  store double %734, ptr %687, align 8, !tbaa !80
  br i1 %714, label %735, label %740

735:                                              ; preds = %728
  %736 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 4
  %737 = load double, ptr %736, align 8, !tbaa !83
  %738 = load double, ptr %692, align 8, !tbaa !83
  %739 = fadd double %737, %738
  store double %739, ptr %692, align 8, !tbaa !83
  br label %740

740:                                              ; preds = %735, %728
  br i1 %722, label %746, label %741

741:                                              ; preds = %740
  %742 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 3
  %743 = load double, ptr %742, align 8, !tbaa !86
  %744 = load double, ptr %693, align 8, !tbaa !86
  %745 = fadd double %743, %744
  store double %745, ptr %693, align 8, !tbaa !86
  br label %746

746:                                              ; preds = %741, %740
  %747 = mul nuw nsw i64 %698, %684
  %748 = sitofp i64 %747 to double
  %749 = load <2 x double>, ptr %702, align 8, !tbaa !26
  %750 = load <2 x double>, ptr %655, align 8, !tbaa !26
  %751 = insertelement <2 x double> poison, double %748, i64 0
  %752 = shufflevector <2 x double> %751, <2 x double> poison, <2 x i32> zeroinitializer
  %753 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %752, <2 x double> %749, <2 x double> %750)
  store <2 x double> %753, ptr %655, align 8, !tbaa !26
  %754 = load double, ptr %710, align 8, !tbaa !80
  %755 = load double, ptr %656, align 8, !tbaa !80
  %756 = call double @llvm.fmuladd.f64(double %748, double %754, double %755)
  store double %756, ptr %656, align 8, !tbaa !80
  br i1 %714, label %757, label %762

757:                                              ; preds = %746
  %758 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 4
  %759 = load double, ptr %758, align 8, !tbaa !83
  %760 = load double, ptr %665, align 8, !tbaa !83
  %761 = call double @llvm.fmuladd.f64(double %748, double %759, double %760)
  store double %761, ptr %665, align 8, !tbaa !83
  br label %762

762:                                              ; preds = %757, %746
  br i1 %722, label %768, label %763

763:                                              ; preds = %762
  %764 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 3
  %765 = load double, ptr %764, align 8, !tbaa !86
  %766 = load double, ptr %666, align 8, !tbaa !86
  %767 = call double @llvm.fmuladd.f64(double %748, double %765, double %766)
  store double %767, ptr %666, align 8, !tbaa !86
  br label %768

768:                                              ; preds = %763, %762
  %769 = load double, ptr %702, align 8, !tbaa !73
  %770 = sub nsw i64 %684, %698
  %771 = mul nsw i64 %770, %770
  %772 = add nuw nsw i64 %771, 1
  %773 = sitofp i64 %772 to double
  %774 = fdiv double %769, %773
  %775 = load double, ptr %657, align 8, !tbaa !26
  %776 = fadd double %775, %774
  store double %776, ptr %657, align 8, !tbaa !26
  %777 = load double, ptr %706, align 8, !tbaa !77
  %778 = fdiv double %777, %773
  %779 = load double, ptr %658, align 8, !tbaa !26
  %780 = fadd double %779, %778
  store double %780, ptr %658, align 8, !tbaa !26
  %781 = load double, ptr %710, align 8, !tbaa !80
  %782 = fdiv double %781, %773
  %783 = load double, ptr %659, align 8, !tbaa !26
  %784 = fadd double %783, %782
  store double %784, ptr %659, align 8, !tbaa !26
  br i1 %714, label %785, label %791

785:                                              ; preds = %768
  %786 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 4
  %787 = load double, ptr %786, align 8, !tbaa !83
  %788 = fdiv double %787, %773
  %789 = load double, ptr %667, align 8, !tbaa !26
  %790 = fadd double %789, %788
  store double %790, ptr %667, align 8, !tbaa !26
  br label %791

791:                                              ; preds = %785, %768
  br i1 %722, label %798, label %792

792:                                              ; preds = %791
  %793 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 3
  %794 = load double, ptr %793, align 8, !tbaa !86
  %795 = fdiv double %794, %773
  %796 = load double, ptr %668, align 8, !tbaa !26
  %797 = fadd double %796, %795
  store double %797, ptr %668, align 8, !tbaa !26
  br label %798

798:                                              ; preds = %792, %791
  %799 = getelementptr %struct._ChannelStatistics, ptr %688, i64 %698
  %800 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %799, i64 0, i64 %645
  %801 = load <2 x double>, ptr %702, align 8, !tbaa !26
  %802 = load <2 x double>, ptr %800, align 8, !tbaa !26
  %803 = fadd <2 x double> %801, %802
  store <2 x double> %803, ptr %800, align 8, !tbaa !26
  %804 = load double, ptr %710, align 8, !tbaa !80
  %805 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %799, i64 0, i64 %645, i32 2
  %806 = load double, ptr %805, align 8, !tbaa !80
  %807 = fadd double %804, %806
  store double %807, ptr %805, align 8, !tbaa !80
  br i1 %714, label %808, label %814

808:                                              ; preds = %798
  %809 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 4
  %810 = load double, ptr %809, align 8, !tbaa !83
  %811 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %799, i64 0, i64 %645, i32 4
  %812 = load double, ptr %811, align 8, !tbaa !83
  %813 = fadd double %810, %812
  store double %813, ptr %811, align 8, !tbaa !83
  br label %814

814:                                              ; preds = %808, %798
  br i1 %722, label %821, label %815

815:                                              ; preds = %814
  %816 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %701, i64 0, i64 %645, i32 3
  %817 = load double, ptr %816, align 8, !tbaa !86
  %818 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %799, i64 0, i64 %645, i32 3
  %819 = load double, ptr %818, align 8, !tbaa !86
  %820 = fadd double %817, %819
  store double %820, ptr %818, align 8, !tbaa !86
  br label %821

821:                                              ; preds = %815, %814
  %822 = load double, ptr %702, align 8, !tbaa !73
  %823 = call fastcc double @MagickLog10(double noundef %822) #21
  %824 = load double, ptr %660, align 8, !tbaa !26
  %825 = fneg double %822
  %826 = call double @llvm.fmuladd.f64(double %825, double %823, double %824)
  store double %826, ptr %660, align 8, !tbaa !26
  %827 = load ptr, ptr %699, align 8, !tbaa !66
  %828 = getelementptr inbounds %struct._ChannelStatistics, ptr %827, i64 %684
  %829 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %828, i64 0, i64 %645, i32 1
  %830 = load double, ptr %829, align 8, !tbaa !77
  %831 = call fastcc double @MagickLog10(double noundef %830) #21
  %832 = load double, ptr %661, align 8, !tbaa !26
  %833 = fneg double %830
  %834 = call double @llvm.fmuladd.f64(double %833, double %831, double %832)
  store double %834, ptr %661, align 8, !tbaa !26
  %835 = load ptr, ptr %699, align 8, !tbaa !66
  %836 = getelementptr inbounds %struct._ChannelStatistics, ptr %835, i64 %684
  %837 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %836, i64 0, i64 %645, i32 2
  %838 = load double, ptr %837, align 8, !tbaa !80
  %839 = call fastcc double @MagickLog10(double noundef %838) #21
  %840 = load double, ptr %662, align 8, !tbaa !26
  %841 = fneg double %838
  %842 = call double @llvm.fmuladd.f64(double %841, double %839, double %840)
  store double %842, ptr %662, align 8, !tbaa !26
  %843 = load i32, ptr %127, align 4, !tbaa !52
  %844 = icmp eq i32 %843, 12
  br i1 %844, label %845, label %854

845:                                              ; preds = %821
  %846 = load ptr, ptr %699, align 8, !tbaa !66
  %847 = getelementptr inbounds %struct._ChannelStatistics, ptr %846, i64 %684
  %848 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %847, i64 0, i64 %645, i32 4
  %849 = load double, ptr %848, align 8, !tbaa !83
  %850 = call fastcc double @MagickLog10(double noundef %849) #21
  %851 = load double, ptr %669, align 8, !tbaa !26
  %852 = fneg double %849
  %853 = call double @llvm.fmuladd.f64(double %852, double %850, double %851)
  store double %853, ptr %669, align 8, !tbaa !26
  br label %854

854:                                              ; preds = %845, %821
  %855 = load i32, ptr %130, align 8, !tbaa !53
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %866, label %857

857:                                              ; preds = %854
  %858 = load ptr, ptr %699, align 8, !tbaa !66
  %859 = getelementptr inbounds %struct._ChannelStatistics, ptr %858, i64 %684
  %860 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %859, i64 0, i64 %645, i32 3
  %861 = load double, ptr %860, align 8, !tbaa !86
  %862 = call fastcc double @MagickLog10(double noundef %861) #21
  %863 = load double, ptr %670, align 8, !tbaa !26
  %864 = fneg double %861
  %865 = call double @llvm.fmuladd.f64(double %864, double %862, double %863)
  store double %865, ptr %670, align 8, !tbaa !26
  br label %866

866:                                              ; preds = %857, %854
  %867 = load ptr, ptr %699, align 8, !tbaa !66
  %868 = getelementptr inbounds %struct._ChannelStatistics, ptr %867, i64 %684
  %869 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %868, i64 0, i64 %645
  %870 = getelementptr inbounds %struct._ChannelStatistics, ptr %210, i64 %698
  %871 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %870, i64 0, i64 %645
  %872 = load <2 x double>, ptr %869, align 8, !tbaa !26
  %873 = load <2 x double>, ptr %871, align 8, !tbaa !26
  %874 = fadd <2 x double> %872, %873
  store <2 x double> %874, ptr %871, align 8, !tbaa !26
  %875 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %868, i64 0, i64 %645, i32 2
  %876 = load double, ptr %875, align 8, !tbaa !80
  %877 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %870, i64 0, i64 %645, i32 2
  %878 = load double, ptr %877, align 8, !tbaa !80
  %879 = fadd double %876, %878
  store double %879, ptr %877, align 8, !tbaa !80
  %880 = load i32, ptr %127, align 4, !tbaa !52
  %881 = icmp eq i32 %880, 12
  br i1 %881, label %882, label %888

882:                                              ; preds = %866
  %883 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %868, i64 0, i64 %645, i32 4
  %884 = load double, ptr %883, align 8, !tbaa !83
  %885 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %870, i64 0, i64 %645, i32 4
  %886 = load double, ptr %885, align 8, !tbaa !83
  %887 = fadd double %884, %886
  store double %887, ptr %885, align 8, !tbaa !83
  br label %888

888:                                              ; preds = %882, %866
  %889 = load i32, ptr %130, align 8, !tbaa !53
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %897, label %891

891:                                              ; preds = %888
  %892 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %868, i64 0, i64 %645, i32 3
  %893 = load double, ptr %892, align 8, !tbaa !86
  %894 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %870, i64 0, i64 %645, i32 3
  %895 = load double, ptr %894, align 8, !tbaa !86
  %896 = fadd double %893, %895
  store double %896, ptr %894, align 8, !tbaa !86
  br label %897

897:                                              ; preds = %891, %888
  %898 = load <2 x double>, ptr %869, align 8, !tbaa !26
  %899 = load <2 x double>, ptr %690, align 8, !tbaa !26
  %900 = fadd <2 x double> %898, %899
  store <2 x double> %900, ptr %690, align 8, !tbaa !26
  %901 = load double, ptr %875, align 8, !tbaa !80
  %902 = load double, ptr %691, align 8, !tbaa !80
  %903 = fadd double %901, %902
  store double %903, ptr %691, align 8, !tbaa !80
  br i1 %881, label %904, label %909

904:                                              ; preds = %897
  %905 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %868, i64 0, i64 %645, i32 4
  %906 = load double, ptr %905, align 8, !tbaa !83
  %907 = load double, ptr %694, align 8, !tbaa !83
  %908 = fadd double %906, %907
  store double %908, ptr %694, align 8, !tbaa !83
  br label %909

909:                                              ; preds = %904, %897
  br i1 %890, label %915, label %910

910:                                              ; preds = %909
  %911 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %868, i64 0, i64 %645, i32 3
  %912 = load double, ptr %911, align 8, !tbaa !86
  %913 = load double, ptr %695, align 8, !tbaa !86
  %914 = fadd double %912, %913
  store double %914, ptr %695, align 8, !tbaa !86
  br label %915

915:                                              ; preds = %909, %910
  %916 = add nuw nsw i64 %698, 1
  %917 = icmp eq i64 %916, %205
  br i1 %917, label %918, label %696, !llvm.loop !94

918:                                              ; preds = %915
  %919 = sitofp i64 %684 to double
  %920 = mul nsw i64 %684, %684
  %921 = sitofp i64 %920 to double
  %922 = load <2 x double>, ptr %686, align 8, !tbaa !26
  %923 = load <2 x double>, ptr %671, align 8, !tbaa !26
  %924 = insertelement <2 x double> poison, double %919, i64 0
  %925 = shufflevector <2 x double> %924, <2 x double> poison, <2 x i32> zeroinitializer
  %926 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %925, <2 x double> %922, <2 x double> %923)
  store <2 x double> %926, ptr %671, align 8, !tbaa !26
  %927 = load <2 x double>, ptr %686, align 8, !tbaa !26
  %928 = load <2 x double>, ptr %672, align 8, !tbaa !26
  %929 = insertelement <2 x double> poison, double %921, i64 0
  %930 = shufflevector <2 x double> %929, <2 x double> poison, <2 x i32> zeroinitializer
  %931 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %930, <2 x double> %927, <2 x double> %928)
  store <2 x double> %931, ptr %672, align 8, !tbaa !26
  %932 = load double, ptr %687, align 8, !tbaa !80
  %933 = load double, ptr %673, align 8, !tbaa !80
  %934 = call double @llvm.fmuladd.f64(double %919, double %932, double %933)
  store double %934, ptr %673, align 8, !tbaa !80
  %935 = load double, ptr %687, align 8, !tbaa !80
  %936 = load double, ptr %674, align 8, !tbaa !80
  %937 = call double @llvm.fmuladd.f64(double %921, double %935, double %936)
  store double %937, ptr %674, align 8, !tbaa !80
  br i1 %881, label %938, label %945

938:                                              ; preds = %918
  %939 = load double, ptr %692, align 8, !tbaa !83
  %940 = load double, ptr %675, align 8, !tbaa !83
  %941 = call double @llvm.fmuladd.f64(double %919, double %939, double %940)
  store double %941, ptr %675, align 8, !tbaa !83
  %942 = load double, ptr %692, align 8, !tbaa !83
  %943 = load double, ptr %676, align 8, !tbaa !83
  %944 = call double @llvm.fmuladd.f64(double %921, double %942, double %943)
  store double %944, ptr %676, align 8, !tbaa !83
  br label %945

945:                                              ; preds = %938, %918
  br i1 %890, label %953, label %946

946:                                              ; preds = %945
  %947 = load double, ptr %693, align 8, !tbaa !86
  %948 = load double, ptr %677, align 8, !tbaa !86
  %949 = call double @llvm.fmuladd.f64(double %919, double %947, double %948)
  store double %949, ptr %677, align 8, !tbaa !86
  %950 = load double, ptr %693, align 8, !tbaa !86
  %951 = load double, ptr %678, align 8, !tbaa !86
  %952 = call double @llvm.fmuladd.f64(double %921, double %950, double %951)
  store double %952, ptr %678, align 8, !tbaa !86
  br label %953

953:                                              ; preds = %946, %945
  %954 = add nuw nsw i64 %684, 1
  %955 = icmp eq i64 %954, %205
  br i1 %955, label %956, label %682, !llvm.loop !95

956:                                              ; preds = %953
  %957 = extractelement <2 x double> %931, i64 0
  %958 = extractelement <2 x double> %926, i64 0
  br label %959

959:                                              ; preds = %956, %646
  %960 = phi double [ %650, %646 ], [ %957, %956 ]
  %961 = phi double [ %648, %646 ], [ %958, %956 ]
  %962 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %645
  %963 = load double, ptr %962, align 8, !tbaa !73
  %964 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %645
  %965 = fneg double %961
  %966 = call double @llvm.fmuladd.f64(double %965, double %961, double %963)
  %967 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %645
  %968 = call double @llvm.fmuladd.f64(double %965, double %961, double %960)
  %969 = call double @sqrt(double noundef %968) #19
  %970 = load double, ptr %967, align 8, !tbaa !73
  %971 = load double, ptr %964, align 8, !tbaa !73
  %972 = fneg double %971
  %973 = call double @llvm.fmuladd.f64(double %972, double %971, double %970)
  %974 = call double @sqrt(double noundef %973) #19
  %975 = fmul double %969, %974
  %976 = fdiv double %966, %975
  %977 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 2, i64 %645
  store double %976, ptr %977, align 8, !tbaa !26
  %978 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %645, i32 1
  %979 = load double, ptr %978, align 8, !tbaa !77
  %980 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %645, i32 1
  %981 = load double, ptr %980, align 8, !tbaa !77
  %982 = fneg double %981
  %983 = call double @llvm.fmuladd.f64(double %982, double %981, double %979)
  %984 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %645, i32 1
  %985 = load double, ptr %984, align 8, !tbaa !77
  %986 = call double @llvm.fmuladd.f64(double %982, double %981, double %985)
  %987 = call double @sqrt(double noundef %986) #19
  %988 = load double, ptr %984, align 8, !tbaa !77
  %989 = load double, ptr %980, align 8, !tbaa !77
  %990 = fneg double %989
  %991 = call double @llvm.fmuladd.f64(double %990, double %989, double %988)
  %992 = call double @sqrt(double noundef %991) #19
  %993 = fmul double %987, %992
  %994 = fdiv double %983, %993
  %995 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 2, i64 %645
  store double %994, ptr %995, align 8, !tbaa !26
  %996 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %645, i32 2
  %997 = load double, ptr %996, align 8, !tbaa !80
  %998 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %645, i32 2
  %999 = load double, ptr %998, align 8, !tbaa !80
  %1000 = fneg double %999
  %1001 = call double @llvm.fmuladd.f64(double %1000, double %999, double %997)
  %1002 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %645, i32 2
  %1003 = load double, ptr %1002, align 8, !tbaa !80
  %1004 = call double @llvm.fmuladd.f64(double %1000, double %999, double %1003)
  %1005 = call double @sqrt(double noundef %1004) #19
  %1006 = load double, ptr %1002, align 8, !tbaa !80
  %1007 = load double, ptr %998, align 8, !tbaa !80
  %1008 = fneg double %1007
  %1009 = call double @llvm.fmuladd.f64(double %1008, double %1007, double %1006)
  %1010 = call double @sqrt(double noundef %1009) #19
  %1011 = fmul double %1005, %1010
  %1012 = fdiv double %1001, %1011
  %1013 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 2, i64 %645
  store double %1012, ptr %1013, align 8, !tbaa !26
  %1014 = load i32, ptr %127, align 4, !tbaa !52
  %1015 = icmp eq i32 %1014, 12
  br i1 %1015, label %1016, label %1035

1016:                                             ; preds = %959
  %1017 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %645, i32 4
  %1018 = load double, ptr %1017, align 8, !tbaa !83
  %1019 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %645, i32 4
  %1020 = load double, ptr %1019, align 8, !tbaa !83
  %1021 = fneg double %1020
  %1022 = call double @llvm.fmuladd.f64(double %1021, double %1020, double %1018)
  %1023 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %645, i32 4
  %1024 = load double, ptr %1023, align 8, !tbaa !83
  %1025 = call double @llvm.fmuladd.f64(double %1021, double %1020, double %1024)
  %1026 = call double @sqrt(double noundef %1025) #19
  %1027 = load double, ptr %1023, align 8, !tbaa !83
  %1028 = load double, ptr %1019, align 8, !tbaa !83
  %1029 = fneg double %1028
  %1030 = call double @llvm.fmuladd.f64(double %1029, double %1028, double %1027)
  %1031 = call double @sqrt(double noundef %1030) #19
  %1032 = fmul double %1026, %1031
  %1033 = fdiv double %1022, %1032
  %1034 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 2, i64 %645
  store double %1033, ptr %1034, align 8, !tbaa !26
  br label %1035

1035:                                             ; preds = %1016, %959
  %1036 = load i32, ptr %130, align 8, !tbaa !53
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1057, label %1038

1038:                                             ; preds = %1035
  %1039 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %645, i32 3
  %1040 = load double, ptr %1039, align 8, !tbaa !86
  %1041 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %645, i32 3
  %1042 = load double, ptr %1041, align 8, !tbaa !86
  %1043 = fneg double %1042
  %1044 = call double @llvm.fmuladd.f64(double %1043, double %1042, double %1040)
  %1045 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %645, i32 3
  %1046 = load double, ptr %1045, align 8, !tbaa !86
  %1047 = call double @llvm.fmuladd.f64(double %1043, double %1042, double %1046)
  %1048 = call double @sqrt(double noundef %1047) #19
  %1049 = load double, ptr %1045, align 8, !tbaa !86
  %1050 = load double, ptr %1041, align 8, !tbaa !86
  %1051 = fneg double %1050
  %1052 = call double @llvm.fmuladd.f64(double %1051, double %1050, double %1049)
  %1053 = call double @sqrt(double noundef %1052) #19
  %1054 = fmul double %1048, %1053
  %1055 = fdiv double %1044, %1054
  %1056 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 2, i64 %645
  store double %1055, ptr %1056, align 8, !tbaa !26
  br label %1057

1057:                                             ; preds = %1038, %1035
  %1058 = add nuw nsw i64 %645, 1
  %1059 = icmp eq i64 %1058, 4
  br i1 %1059, label %680, label %644, !llvm.loop !96

1060:                                             ; preds = %680, %1188
  %1061 = phi i64 [ 0, %680 ], [ %1189, %1188 ]
  br i1 %681, label %1062, label %1188

1062:                                             ; preds = %1060
  %1063 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 5, i64 %1061
  %1064 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 5, i64 %1061
  %1065 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 5, i64 %1061
  %1066 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 5, i64 %1061
  %1067 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 5, i64 %1061
  %1068 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 7, i64 %1061
  %1069 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 7, i64 %1061
  %1070 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 7, i64 %1061
  %1071 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 7, i64 %1061
  %1072 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 7, i64 %1061
  %1073 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 6, i64 %1061
  %1074 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 6, i64 %1061
  %1075 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 6, i64 %1061
  %1076 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 6, i64 %1061
  %1077 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 6, i64 %1061
  %1078 = load i32, ptr %127, align 4, !tbaa !52
  br label %1079

1079:                                             ; preds = %1062, %1185
  %1080 = phi i32 [ %1078, %1062 ], [ %1164, %1185 ]
  %1081 = phi i64 [ 2, %1062 ], [ %1186, %1185 ]
  %1082 = sitofp i64 %1081 to double
  %1083 = getelementptr inbounds %struct._ChannelStatistics, ptr %211, i64 %1081
  %1084 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1083, i64 0, i64 %1061
  %1085 = load double, ptr %1084, align 8, !tbaa !73
  %1086 = load double, ptr %1063, align 8, !tbaa !26
  %1087 = call double @llvm.fmuladd.f64(double %1082, double %1085, double %1086)
  store double %1087, ptr %1063, align 8, !tbaa !26
  %1088 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1083, i64 0, i64 %1061, i32 1
  %1089 = load double, ptr %1088, align 8, !tbaa !77
  %1090 = load double, ptr %1064, align 8, !tbaa !26
  %1091 = call double @llvm.fmuladd.f64(double %1082, double %1089, double %1090)
  store double %1091, ptr %1064, align 8, !tbaa !26
  %1092 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1083, i64 0, i64 %1061, i32 2
  %1093 = load double, ptr %1092, align 8, !tbaa !80
  %1094 = load double, ptr %1065, align 8, !tbaa !26
  %1095 = call double @llvm.fmuladd.f64(double %1082, double %1093, double %1094)
  store double %1095, ptr %1065, align 8, !tbaa !26
  %1096 = icmp eq i32 %1080, 12
  br i1 %1096, label %1097, label %1102

1097:                                             ; preds = %1079
  %1098 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1083, i64 0, i64 %1061, i32 4
  %1099 = load double, ptr %1098, align 8, !tbaa !83
  %1100 = load double, ptr %1066, align 8, !tbaa !26
  %1101 = call double @llvm.fmuladd.f64(double %1082, double %1099, double %1100)
  store double %1101, ptr %1066, align 8, !tbaa !26
  br label %1102

1102:                                             ; preds = %1097, %1079
  %1103 = load i32, ptr %130, align 8, !tbaa !53
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1110, label %1105

1105:                                             ; preds = %1102
  %1106 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1083, i64 0, i64 %1061, i32 3
  %1107 = load double, ptr %1106, align 8, !tbaa !86
  %1108 = load double, ptr %1067, align 8, !tbaa !26
  %1109 = call double @llvm.fmuladd.f64(double %1082, double %1107, double %1108)
  store double %1109, ptr %1067, align 8, !tbaa !26
  br label %1110

1110:                                             ; preds = %1105, %1102
  %1111 = load double, ptr %1084, align 8, !tbaa !73
  %1112 = call fastcc double @MagickLog10(double noundef %1111) #21
  %1113 = load double, ptr %1068, align 8, !tbaa !26
  %1114 = fneg double %1111
  %1115 = call double @llvm.fmuladd.f64(double %1114, double %1112, double %1113)
  store double %1115, ptr %1068, align 8, !tbaa !26
  %1116 = load double, ptr %1088, align 8, !tbaa !77
  %1117 = call fastcc double @MagickLog10(double noundef %1116) #21
  %1118 = load double, ptr %1069, align 8, !tbaa !26
  %1119 = fneg double %1116
  %1120 = call double @llvm.fmuladd.f64(double %1119, double %1117, double %1118)
  store double %1120, ptr %1069, align 8, !tbaa !26
  %1121 = load double, ptr %1092, align 8, !tbaa !80
  %1122 = call fastcc double @MagickLog10(double noundef %1121) #21
  %1123 = load double, ptr %1070, align 8, !tbaa !26
  %1124 = fneg double %1121
  %1125 = call double @llvm.fmuladd.f64(double %1124, double %1122, double %1123)
  store double %1125, ptr %1070, align 8, !tbaa !26
  %1126 = load i32, ptr %127, align 4, !tbaa !52
  %1127 = icmp eq i32 %1126, 12
  br i1 %1127, label %1128, label %1135

1128:                                             ; preds = %1110
  %1129 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1083, i64 0, i64 %1061, i32 4
  %1130 = load double, ptr %1129, align 8, !tbaa !83
  %1131 = call fastcc double @MagickLog10(double noundef %1130) #21
  %1132 = load double, ptr %1071, align 8, !tbaa !26
  %1133 = fneg double %1130
  %1134 = call double @llvm.fmuladd.f64(double %1133, double %1131, double %1132)
  store double %1134, ptr %1071, align 8, !tbaa !26
  br label %1135

1135:                                             ; preds = %1128, %1110
  %1136 = load i32, ptr %130, align 8, !tbaa !53
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1145, label %1138

1138:                                             ; preds = %1135
  %1139 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1083, i64 0, i64 %1061, i32 3
  %1140 = load double, ptr %1139, align 8, !tbaa !86
  %1141 = call fastcc double @MagickLog10(double noundef %1140) #21
  %1142 = load double, ptr %1072, align 8, !tbaa !26
  %1143 = fneg double %1140
  %1144 = call double @llvm.fmuladd.f64(double %1143, double %1141, double %1142)
  store double %1144, ptr %1072, align 8, !tbaa !26
  br label %1145

1145:                                             ; preds = %1138, %1135
  %1146 = load double, ptr %1068, align 8, !tbaa !26
  %1147 = fsub double %1082, %1146
  %1148 = fmul double %1147, %1147
  %1149 = load double, ptr %1084, align 8, !tbaa !73
  %1150 = load double, ptr %1073, align 8, !tbaa !26
  %1151 = call double @llvm.fmuladd.f64(double %1148, double %1149, double %1150)
  store double %1151, ptr %1073, align 8, !tbaa !26
  %1152 = load double, ptr %1069, align 8, !tbaa !26
  %1153 = fsub double %1082, %1152
  %1154 = fmul double %1153, %1153
  %1155 = load double, ptr %1088, align 8, !tbaa !77
  %1156 = load double, ptr %1074, align 8, !tbaa !26
  %1157 = call double @llvm.fmuladd.f64(double %1154, double %1155, double %1156)
  store double %1157, ptr %1074, align 8, !tbaa !26
  %1158 = load double, ptr %1070, align 8, !tbaa !26
  %1159 = fsub double %1082, %1158
  %1160 = fmul double %1159, %1159
  %1161 = load double, ptr %1092, align 8, !tbaa !80
  %1162 = load double, ptr %1075, align 8, !tbaa !26
  %1163 = call double @llvm.fmuladd.f64(double %1160, double %1161, double %1162)
  store double %1163, ptr %1075, align 8, !tbaa !26
  %1164 = load i32, ptr %127, align 4, !tbaa !52
  %1165 = icmp eq i32 %1164, 12
  br i1 %1165, label %1166, label %1174

1166:                                             ; preds = %1145
  %1167 = load double, ptr %1071, align 8, !tbaa !26
  %1168 = fsub double %1082, %1167
  %1169 = fmul double %1168, %1168
  %1170 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1083, i64 0, i64 %1061, i32 4
  %1171 = load double, ptr %1170, align 8, !tbaa !83
  %1172 = load double, ptr %1076, align 8, !tbaa !26
  %1173 = call double @llvm.fmuladd.f64(double %1169, double %1171, double %1172)
  store double %1173, ptr %1076, align 8, !tbaa !26
  br label %1174

1174:                                             ; preds = %1166, %1145
  %1175 = load i32, ptr %130, align 8, !tbaa !53
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1185, label %1177

1177:                                             ; preds = %1174
  %1178 = load double, ptr %1072, align 8, !tbaa !26
  %1179 = fsub double %1082, %1178
  %1180 = fmul double %1179, %1179
  %1181 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1083, i64 0, i64 %1061, i32 3
  %1182 = load double, ptr %1181, align 8, !tbaa !86
  %1183 = load double, ptr %1077, align 8, !tbaa !26
  %1184 = call double @llvm.fmuladd.f64(double %1180, double %1182, double %1183)
  store double %1184, ptr %1077, align 8, !tbaa !26
  br label %1185

1185:                                             ; preds = %1174, %1177
  %1186 = add nuw nsw i64 %1081, 1
  %1187 = icmp eq i64 %1186, %277
  br i1 %1187, label %1188, label %1079, !llvm.loop !97

1188:                                             ; preds = %1185, %1060
  %1189 = add nuw nsw i64 %1061, 1
  %1190 = icmp eq i64 %1189, 4
  br i1 %1190, label %1191, label %1060, !llvm.loop !98

1191:                                             ; preds = %1188, %1483
  %1192 = phi i64 [ %1484, %1483 ], [ 0, %1188 ]
  br i1 %286, label %1462, label %1193

1193:                                             ; preds = %1191
  %1194 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %1192
  %1195 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1192
  %1196 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %1192, i32 2
  %1197 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1192, i32 2
  %1198 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1192
  %1199 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1192, i32 1
  %1200 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1192, i32 2
  %1201 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1192
  %1202 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1192, i32 1
  %1203 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1192, i32 2
  %1204 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1192
  %1205 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1192, i32 1
  %1206 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1192, i32 2
  %1207 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %1192, i32 4
  %1208 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1192, i32 4
  %1209 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %1192, i32 3
  %1210 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1192, i32 3
  %1211 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1192, i32 4
  %1212 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1192, i32 3
  %1213 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1192, i32 4
  %1214 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1192, i32 3
  %1215 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1192, i32 4
  %1216 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1192, i32 3
  br label %1217

1217:                                             ; preds = %1193, %1459
  %1218 = phi i64 [ 0, %1193 ], [ %1460, %1459 ]
  %1219 = sitofp i64 %1218 to double
  %1220 = getelementptr inbounds %struct._ChannelStatistics, ptr %212, i64 %1218
  %1221 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1220, i64 0, i64 %1192
  %1222 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1220, i64 0, i64 %1192, i32 1
  %1223 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1220, i64 0, i64 %1192, i32 2
  %1224 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1220, i64 0, i64 %1192, i32 4
  %1225 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1220, i64 0, i64 %1192, i32 3
  %1226 = insertelement <2 x double> poison, double %1219, i64 0
  %1227 = shufflevector <2 x double> %1226, <2 x double> poison, <2 x i32> zeroinitializer
  br label %1228

1228:                                             ; preds = %1217, %1456
  %1229 = phi i64 [ 0, %1217 ], [ %1457, %1456 ]
  %1230 = getelementptr inbounds ptr, ptr %206, i64 %1229
  %1231 = load ptr, ptr %1230, align 8, !tbaa !66
  %1232 = getelementptr inbounds %struct._ChannelStatistics, ptr %1231, i64 %1218
  %1233 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1232, i64 0, i64 %1192
  %1234 = load <2 x double>, ptr %1194, align 8, !tbaa !26
  %1235 = fsub <2 x double> %1227, %1234
  %1236 = fadd <2 x double> %1235, <double 1.000000e+00, double 1.000000e+00>
  %1237 = fmul <2 x double> %1236, %1236
  %1238 = load <2 x double>, ptr %1233, align 8, !tbaa !26
  %1239 = load <2 x double>, ptr %1195, align 8, !tbaa !26
  %1240 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1237, <2 x double> %1238, <2 x double> %1239)
  store <2 x double> %1240, ptr %1195, align 8, !tbaa !26
  %1241 = load double, ptr %1196, align 8, !tbaa !80
  %1242 = fsub double %1219, %1241
  %1243 = fadd double %1242, 1.000000e+00
  %1244 = fmul double %1243, %1243
  %1245 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1232, i64 0, i64 %1192, i32 2
  %1246 = load double, ptr %1245, align 8, !tbaa !80
  %1247 = load double, ptr %1197, align 8, !tbaa !80
  %1248 = call double @llvm.fmuladd.f64(double %1244, double %1246, double %1247)
  store double %1248, ptr %1197, align 8, !tbaa !80
  %1249 = load i32, ptr %127, align 4, !tbaa !52
  %1250 = icmp eq i32 %1249, 12
  br i1 %1250, label %1251, label %1260

1251:                                             ; preds = %1228
  %1252 = load double, ptr %1207, align 8, !tbaa !83
  %1253 = fsub double %1219, %1252
  %1254 = fadd double %1253, 1.000000e+00
  %1255 = fmul double %1254, %1254
  %1256 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1232, i64 0, i64 %1192, i32 4
  %1257 = load double, ptr %1256, align 8, !tbaa !83
  %1258 = load double, ptr %1208, align 8, !tbaa !83
  %1259 = call double @llvm.fmuladd.f64(double %1255, double %1257, double %1258)
  store double %1259, ptr %1208, align 8, !tbaa !83
  br label %1260

1260:                                             ; preds = %1251, %1228
  %1261 = load i32, ptr %130, align 8, !tbaa !53
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1272, label %1263

1263:                                             ; preds = %1260
  %1264 = load double, ptr %1209, align 8, !tbaa !86
  %1265 = fsub double %1219, %1264
  %1266 = fadd double %1265, 1.000000e+00
  %1267 = fmul double %1266, %1266
  %1268 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1232, i64 0, i64 %1192, i32 3
  %1269 = load double, ptr %1268, align 8, !tbaa !86
  %1270 = load double, ptr %1210, align 8, !tbaa !86
  %1271 = call double @llvm.fmuladd.f64(double %1267, double %1269, double %1270)
  store double %1271, ptr %1210, align 8, !tbaa !86
  br label %1272

1272:                                             ; preds = %1263, %1260
  %1273 = sub nsw i64 %1218, %1229
  %1274 = call fastcc i64 @MagickAbsoluteValue(i64 noundef %1273) #21, !range !99
  %1275 = getelementptr inbounds %struct._ChannelStatistics, ptr %211, i64 %1274
  %1276 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1275, i64 0, i64 %1192
  %1277 = load <2 x double>, ptr %1233, align 8, !tbaa !26
  %1278 = load <2 x double>, ptr %1276, align 8, !tbaa !26
  %1279 = fadd <2 x double> %1277, %1278
  store <2 x double> %1279, ptr %1276, align 8, !tbaa !26
  %1280 = load double, ptr %1245, align 8, !tbaa !80
  %1281 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1275, i64 0, i64 %1192, i32 2
  %1282 = load double, ptr %1281, align 8, !tbaa !80
  %1283 = fadd double %1280, %1282
  store double %1283, ptr %1281, align 8, !tbaa !80
  br i1 %1250, label %1284, label %1290

1284:                                             ; preds = %1272
  %1285 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1232, i64 0, i64 %1192, i32 4
  %1286 = load double, ptr %1285, align 8, !tbaa !83
  %1287 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1275, i64 0, i64 %1192, i32 4
  %1288 = load double, ptr %1287, align 8, !tbaa !83
  %1289 = fadd double %1286, %1288
  store double %1289, ptr %1287, align 8, !tbaa !83
  br label %1290

1290:                                             ; preds = %1284, %1272
  br i1 %1262, label %1297, label %1291

1291:                                             ; preds = %1290
  %1292 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1232, i64 0, i64 %1192, i32 3
  %1293 = load double, ptr %1292, align 8, !tbaa !86
  %1294 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1275, i64 0, i64 %1192, i32 3
  %1295 = load double, ptr %1294, align 8, !tbaa !86
  %1296 = fadd double %1293, %1295
  store double %1296, ptr %1294, align 8, !tbaa !86
  br label %1297

1297:                                             ; preds = %1291, %1290
  %1298 = load double, ptr %1233, align 8, !tbaa !73
  %1299 = call fastcc double @MagickLog10(double noundef %1298) #21
  %1300 = load double, ptr %1198, align 8, !tbaa !73
  %1301 = fneg double %1298
  %1302 = call double @llvm.fmuladd.f64(double %1301, double %1299, double %1300)
  store double %1302, ptr %1198, align 8, !tbaa !73
  %1303 = load ptr, ptr %1230, align 8, !tbaa !66
  %1304 = getelementptr inbounds %struct._ChannelStatistics, ptr %1303, i64 %1218
  %1305 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1304, i64 0, i64 %1192, i32 1
  %1306 = load double, ptr %1305, align 8, !tbaa !77
  %1307 = call fastcc double @MagickLog10(double noundef %1306) #21
  %1308 = load double, ptr %1199, align 8, !tbaa !77
  %1309 = fneg double %1306
  %1310 = call double @llvm.fmuladd.f64(double %1309, double %1307, double %1308)
  store double %1310, ptr %1199, align 8, !tbaa !77
  %1311 = load ptr, ptr %1230, align 8, !tbaa !66
  %1312 = getelementptr inbounds %struct._ChannelStatistics, ptr %1311, i64 %1218
  %1313 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1312, i64 0, i64 %1192, i32 2
  %1314 = load double, ptr %1313, align 8, !tbaa !80
  %1315 = call fastcc double @MagickLog10(double noundef %1314) #21
  %1316 = load double, ptr %1200, align 8, !tbaa !80
  %1317 = fneg double %1314
  %1318 = call double @llvm.fmuladd.f64(double %1317, double %1315, double %1316)
  store double %1318, ptr %1200, align 8, !tbaa !80
  %1319 = load i32, ptr %127, align 4, !tbaa !52
  %1320 = icmp eq i32 %1319, 12
  br i1 %1320, label %1321, label %1330

1321:                                             ; preds = %1297
  %1322 = load ptr, ptr %1230, align 8, !tbaa !66
  %1323 = getelementptr inbounds %struct._ChannelStatistics, ptr %1322, i64 %1218
  %1324 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1323, i64 0, i64 %1192, i32 4
  %1325 = load double, ptr %1324, align 8, !tbaa !83
  %1326 = call fastcc double @MagickLog10(double noundef %1325) #21
  %1327 = load double, ptr %1211, align 8, !tbaa !83
  %1328 = fneg double %1325
  %1329 = call double @llvm.fmuladd.f64(double %1328, double %1326, double %1327)
  store double %1329, ptr %1211, align 8, !tbaa !83
  br label %1330

1330:                                             ; preds = %1321, %1297
  %1331 = load i32, ptr %130, align 8, !tbaa !53
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1342, label %1333

1333:                                             ; preds = %1330
  %1334 = load ptr, ptr %1230, align 8, !tbaa !66
  %1335 = getelementptr inbounds %struct._ChannelStatistics, ptr %1334, i64 %1218
  %1336 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1335, i64 0, i64 %1192, i32 3
  %1337 = load double, ptr %1336, align 8, !tbaa !86
  %1338 = call fastcc double @MagickLog10(double noundef %1337) #21
  %1339 = load double, ptr %1212, align 8, !tbaa !86
  %1340 = fneg double %1337
  %1341 = call double @llvm.fmuladd.f64(double %1340, double %1338, double %1339)
  store double %1341, ptr %1212, align 8, !tbaa !86
  br label %1342

1342:                                             ; preds = %1333, %1330
  %1343 = load ptr, ptr %1230, align 8, !tbaa !66
  %1344 = getelementptr inbounds %struct._ChannelStatistics, ptr %1343, i64 %1218
  %1345 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1344, i64 0, i64 %1192
  %1346 = load double, ptr %1345, align 8, !tbaa !73
  %1347 = getelementptr inbounds %struct._ChannelStatistics, ptr %210, i64 %1229
  %1348 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1347, i64 0, i64 %1192
  %1349 = load double, ptr %1348, align 8, !tbaa !73
  %1350 = load double, ptr %1221, align 8, !tbaa !73
  %1351 = fmul double %1349, %1350
  %1352 = call fastcc double @MagickLog10(double noundef %1351) #21
  %1353 = load double, ptr %1201, align 8, !tbaa !73
  %1354 = fneg double %1346
  %1355 = call double @llvm.fmuladd.f64(double %1354, double %1352, double %1353)
  store double %1355, ptr %1201, align 8, !tbaa !73
  %1356 = load ptr, ptr %1230, align 8, !tbaa !66
  %1357 = getelementptr inbounds %struct._ChannelStatistics, ptr %1356, i64 %1218
  %1358 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1357, i64 0, i64 %1192, i32 1
  %1359 = load double, ptr %1358, align 8, !tbaa !77
  %1360 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1347, i64 0, i64 %1192, i32 1
  %1361 = load double, ptr %1360, align 8, !tbaa !77
  %1362 = load double, ptr %1222, align 8, !tbaa !77
  %1363 = fmul double %1361, %1362
  %1364 = call fastcc double @MagickLog10(double noundef %1363) #21
  %1365 = load double, ptr %1202, align 8, !tbaa !77
  %1366 = fneg double %1359
  %1367 = call double @llvm.fmuladd.f64(double %1366, double %1364, double %1365)
  store double %1367, ptr %1202, align 8, !tbaa !77
  %1368 = load ptr, ptr %1230, align 8, !tbaa !66
  %1369 = getelementptr inbounds %struct._ChannelStatistics, ptr %1368, i64 %1218
  %1370 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1369, i64 0, i64 %1192, i32 2
  %1371 = load double, ptr %1370, align 8, !tbaa !80
  %1372 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1347, i64 0, i64 %1192, i32 2
  %1373 = load double, ptr %1372, align 8, !tbaa !80
  %1374 = load double, ptr %1223, align 8, !tbaa !80
  %1375 = fmul double %1373, %1374
  %1376 = call fastcc double @MagickLog10(double noundef %1375) #21
  %1377 = load double, ptr %1203, align 8, !tbaa !80
  %1378 = fneg double %1371
  %1379 = call double @llvm.fmuladd.f64(double %1378, double %1376, double %1377)
  store double %1379, ptr %1203, align 8, !tbaa !80
  %1380 = load i32, ptr %127, align 4, !tbaa !52
  %1381 = icmp eq i32 %1380, 12
  br i1 %1381, label %1382, label %1395

1382:                                             ; preds = %1342
  %1383 = load ptr, ptr %1230, align 8, !tbaa !66
  %1384 = getelementptr inbounds %struct._ChannelStatistics, ptr %1383, i64 %1218
  %1385 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1384, i64 0, i64 %1192, i32 4
  %1386 = load double, ptr %1385, align 8, !tbaa !83
  %1387 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1347, i64 0, i64 %1192, i32 4
  %1388 = load double, ptr %1387, align 8, !tbaa !83
  %1389 = load double, ptr %1224, align 8, !tbaa !83
  %1390 = fmul double %1388, %1389
  %1391 = call fastcc double @MagickLog10(double noundef %1390) #21
  %1392 = load double, ptr %1213, align 8, !tbaa !83
  %1393 = fneg double %1386
  %1394 = call double @llvm.fmuladd.f64(double %1393, double %1391, double %1392)
  store double %1394, ptr %1213, align 8, !tbaa !83
  br label %1395

1395:                                             ; preds = %1382, %1342
  %1396 = load i32, ptr %130, align 8, !tbaa !53
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1411, label %1398

1398:                                             ; preds = %1395
  %1399 = load ptr, ptr %1230, align 8, !tbaa !66
  %1400 = getelementptr inbounds %struct._ChannelStatistics, ptr %1399, i64 %1218
  %1401 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1400, i64 0, i64 %1192, i32 3
  %1402 = load double, ptr %1401, align 8, !tbaa !86
  %1403 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1347, i64 0, i64 %1192, i32 3
  %1404 = load double, ptr %1403, align 8, !tbaa !86
  %1405 = load double, ptr %1225, align 8, !tbaa !86
  %1406 = fmul double %1404, %1405
  %1407 = call fastcc double @MagickLog10(double noundef %1406) #21
  %1408 = load double, ptr %1214, align 8, !tbaa !86
  %1409 = fneg double %1402
  %1410 = call double @llvm.fmuladd.f64(double %1409, double %1407, double %1408)
  store double %1410, ptr %1214, align 8, !tbaa !86
  br label %1411

1411:                                             ; preds = %1398, %1395
  %1412 = load double, ptr %1348, align 8, !tbaa !73
  %1413 = load double, ptr %1221, align 8, !tbaa !73
  %1414 = fmul double %1412, %1413
  %1415 = call fastcc double @MagickLog10(double noundef %1414) #21
  %1416 = load double, ptr %1204, align 8, !tbaa !73
  %1417 = fneg double %1414
  %1418 = call double @llvm.fmuladd.f64(double %1417, double %1415, double %1416)
  store double %1418, ptr %1204, align 8, !tbaa !73
  %1419 = load double, ptr %1360, align 8, !tbaa !77
  %1420 = load double, ptr %1222, align 8, !tbaa !77
  %1421 = fmul double %1419, %1420
  %1422 = call fastcc double @MagickLog10(double noundef %1421) #21
  %1423 = load double, ptr %1205, align 8, !tbaa !77
  %1424 = fneg double %1421
  %1425 = call double @llvm.fmuladd.f64(double %1424, double %1422, double %1423)
  store double %1425, ptr %1205, align 8, !tbaa !77
  %1426 = load double, ptr %1372, align 8, !tbaa !80
  %1427 = load double, ptr %1223, align 8, !tbaa !80
  %1428 = fmul double %1426, %1427
  %1429 = call fastcc double @MagickLog10(double noundef %1428) #21
  %1430 = load double, ptr %1206, align 8, !tbaa !80
  %1431 = fneg double %1428
  %1432 = call double @llvm.fmuladd.f64(double %1431, double %1429, double %1430)
  store double %1432, ptr %1206, align 8, !tbaa !80
  %1433 = load i32, ptr %127, align 4, !tbaa !52
  %1434 = icmp eq i32 %1433, 12
  br i1 %1434, label %1435, label %1444

1435:                                             ; preds = %1411
  %1436 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1347, i64 0, i64 %1192, i32 4
  %1437 = load double, ptr %1436, align 8, !tbaa !83
  %1438 = load double, ptr %1224, align 8, !tbaa !83
  %1439 = fmul double %1437, %1438
  %1440 = call fastcc double @MagickLog10(double noundef %1439) #21
  %1441 = load double, ptr %1215, align 8, !tbaa !83
  %1442 = fneg double %1439
  %1443 = call double @llvm.fmuladd.f64(double %1442, double %1440, double %1441)
  store double %1443, ptr %1215, align 8, !tbaa !83
  br label %1444

1444:                                             ; preds = %1435, %1411
  %1445 = load i32, ptr %130, align 8, !tbaa !53
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1456, label %1447

1447:                                             ; preds = %1444
  %1448 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1347, i64 0, i64 %1192, i32 3
  %1449 = load double, ptr %1448, align 8, !tbaa !86
  %1450 = load double, ptr %1225, align 8, !tbaa !86
  %1451 = fmul double %1449, %1450
  %1452 = call fastcc double @MagickLog10(double noundef %1451) #21
  %1453 = load double, ptr %1216, align 8, !tbaa !86
  %1454 = fneg double %1451
  %1455 = call double @llvm.fmuladd.f64(double %1454, double %1452, double %1453)
  store double %1455, ptr %1216, align 8, !tbaa !86
  br label %1456

1456:                                             ; preds = %1444, %1447
  %1457 = add nuw nsw i64 %1229, 1
  %1458 = icmp eq i64 %1457, %205
  br i1 %1458, label %1459, label %1228, !llvm.loop !100

1459:                                             ; preds = %1456
  %1460 = add nuw nsw i64 %1218, 1
  %1461 = icmp eq i64 %1460, %205
  br i1 %1461, label %1462, label %1217, !llvm.loop !101

1462:                                             ; preds = %1459, %1191
  %1463 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1192
  %1464 = load double, ptr %1463, align 8, !tbaa !73
  %1465 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 3, i64 %1192
  store double %1464, ptr %1465, align 8, !tbaa !26
  %1466 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1192, i32 1
  %1467 = load double, ptr %1466, align 8, !tbaa !77
  %1468 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 3, i64 %1192
  store double %1467, ptr %1468, align 8, !tbaa !26
  %1469 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1192, i32 2
  %1470 = load double, ptr %1469, align 8, !tbaa !80
  %1471 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 3, i64 %1192
  store double %1470, ptr %1471, align 8, !tbaa !26
  %1472 = load i32, ptr %127, align 4, !tbaa !52
  %1473 = icmp eq i32 %1472, 12
  br i1 %1473, label %1474, label %1477

1474:                                             ; preds = %1462
  %1475 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1192, i32 4
  %1476 = load double, ptr %1475, align 8, !tbaa !83
  store double %1476, ptr %1465, align 8, !tbaa !26
  br label %1477

1477:                                             ; preds = %1474, %1462
  %1478 = load i32, ptr %130, align 8, !tbaa !53
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1483, label %1480

1480:                                             ; preds = %1477
  %1481 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1192, i32 3
  %1482 = load double, ptr %1481, align 8, !tbaa !86
  store double %1482, ptr %1465, align 8, !tbaa !26
  br label %1483

1483:                                             ; preds = %1480, %1477
  %1484 = add nuw nsw i64 %1192, 1
  %1485 = icmp eq i64 %1484, 4
  br i1 %1485, label %1486, label %1191, !llvm.loop !102

1486:                                             ; preds = %1483
  %1487 = call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 160) #19
  %1488 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 160) #19
  %1489 = uitofp i32 %204 to double
  %1490 = fmul double %1489, %1489
  %1491 = fmul double %1490, %1489
  %1492 = fmul double %1491, %1489
  br label %1493

1493:                                             ; preds = %1486, %1861
  %1494 = phi i64 [ 0, %1486 ], [ %1862, %1861 ]
  br i1 %286, label %1680, label %1495

1495:                                             ; preds = %1493
  %1496 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1494
  %1497 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1494, i32 2
  %1498 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1494, i32 4
  %1499 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1494, i32 3
  %1500 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1494
  %1501 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1494, i32 2
  %1502 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1494, i32 4
  %1503 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1494, i32 3
  %1504 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 10, i64 %1494
  %1505 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 10, i64 %1494
  %1506 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 10, i64 %1494
  %1507 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 10, i64 %1494
  %1508 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 10, i64 %1494
  %1509 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1494
  %1510 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1494, i32 1
  %1511 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1494, i32 2
  %1512 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1494, i32 4
  %1513 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1494, i32 3
  %1514 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1494
  %1515 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1494, i32 1
  %1516 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1494, i32 2
  %1517 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1494, i32 4
  %1518 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1494, i32 3
  br label %1519

1519:                                             ; preds = %1495, %1677
  %1520 = phi i64 [ 0, %1495 ], [ %1678, %1677 ]
  %1521 = getelementptr inbounds %struct._ChannelStatistics, ptr %211, i64 %1520
  %1522 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1521, i64 0, i64 %1494
  %1523 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1521, i64 0, i64 %1494, i32 1
  %1524 = load <2 x double>, ptr %1522, align 8, !tbaa !26
  %1525 = load <2 x double>, ptr %1496, align 8, !tbaa !26
  %1526 = fadd <2 x double> %1524, %1525
  store <2 x double> %1526, ptr %1496, align 8, !tbaa !26
  %1527 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1521, i64 0, i64 %1494, i32 2
  %1528 = load double, ptr %1527, align 8, !tbaa !80
  %1529 = load double, ptr %1497, align 8, !tbaa !80
  %1530 = fadd double %1528, %1529
  store double %1530, ptr %1497, align 8, !tbaa !80
  %1531 = load i32, ptr %127, align 4, !tbaa !52
  %1532 = icmp eq i32 %1531, 12
  br i1 %1532, label %1533, label %1538

1533:                                             ; preds = %1519
  %1534 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1521, i64 0, i64 %1494, i32 4
  %1535 = load double, ptr %1534, align 8, !tbaa !83
  %1536 = load double, ptr %1498, align 8, !tbaa !83
  %1537 = fadd double %1535, %1536
  store double %1537, ptr %1498, align 8, !tbaa !83
  br label %1538

1538:                                             ; preds = %1533, %1519
  %1539 = load i32, ptr %130, align 8, !tbaa !53
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %1546, label %1541

1541:                                             ; preds = %1538
  %1542 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1521, i64 0, i64 %1494, i32 3
  %1543 = load double, ptr %1542, align 8, !tbaa !86
  %1544 = load double, ptr %1499, align 8, !tbaa !86
  %1545 = fadd double %1543, %1544
  store double %1545, ptr %1499, align 8, !tbaa !86
  br label %1546

1546:                                             ; preds = %1541, %1538
  %1547 = load <2 x double>, ptr %1522, align 8, !tbaa !26
  %1548 = load <2 x double>, ptr %1500, align 8, !tbaa !26
  %1549 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %1547, <2 x double> %1547, <2 x double> %1548)
  store <2 x double> %1549, ptr %1500, align 8, !tbaa !26
  %1550 = load double, ptr %1527, align 8, !tbaa !80
  %1551 = load double, ptr %1501, align 8, !tbaa !80
  %1552 = call double @llvm.fmuladd.f64(double %1550, double %1550, double %1551)
  store double %1552, ptr %1501, align 8, !tbaa !80
  br i1 %1532, label %1553, label %1558

1553:                                             ; preds = %1546
  %1554 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1521, i64 0, i64 %1494, i32 4
  %1555 = load double, ptr %1554, align 8, !tbaa !83
  %1556 = load double, ptr %1502, align 8, !tbaa !83
  %1557 = call double @llvm.fmuladd.f64(double %1555, double %1555, double %1556)
  store double %1557, ptr %1502, align 8, !tbaa !83
  br label %1558

1558:                                             ; preds = %1553, %1546
  br i1 %1540, label %1564, label %1559

1559:                                             ; preds = %1558
  %1560 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1521, i64 0, i64 %1494, i32 3
  %1561 = load double, ptr %1560, align 8, !tbaa !86
  %1562 = load double, ptr %1503, align 8, !tbaa !86
  %1563 = call double @llvm.fmuladd.f64(double %1561, double %1561, double %1562)
  store double %1563, ptr %1503, align 8, !tbaa !86
  br label %1564

1564:                                             ; preds = %1559, %1558
  %1565 = load double, ptr %1522, align 8, !tbaa !73
  %1566 = call fastcc double @MagickLog10(double noundef %1565) #21
  %1567 = load double, ptr %1504, align 8, !tbaa !26
  %1568 = fneg double %1565
  %1569 = call double @llvm.fmuladd.f64(double %1568, double %1566, double %1567)
  store double %1569, ptr %1504, align 8, !tbaa !26
  %1570 = load double, ptr %1523, align 8, !tbaa !77
  %1571 = call fastcc double @MagickLog10(double noundef %1570) #21
  %1572 = load double, ptr %1505, align 8, !tbaa !26
  %1573 = fneg double %1570
  %1574 = call double @llvm.fmuladd.f64(double %1573, double %1571, double %1572)
  store double %1574, ptr %1505, align 8, !tbaa !26
  %1575 = load double, ptr %1527, align 8, !tbaa !80
  %1576 = call fastcc double @MagickLog10(double noundef %1575) #21
  %1577 = load double, ptr %1506, align 8, !tbaa !26
  %1578 = fneg double %1575
  %1579 = call double @llvm.fmuladd.f64(double %1578, double %1576, double %1577)
  store double %1579, ptr %1506, align 8, !tbaa !26
  %1580 = load i32, ptr %127, align 4, !tbaa !52
  %1581 = icmp eq i32 %1580, 12
  br i1 %1581, label %1582, label %1589

1582:                                             ; preds = %1564
  %1583 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1521, i64 0, i64 %1494, i32 4
  %1584 = load double, ptr %1583, align 8, !tbaa !83
  %1585 = call fastcc double @MagickLog10(double noundef %1584) #21
  %1586 = load double, ptr %1507, align 8, !tbaa !26
  %1587 = fneg double %1584
  %1588 = call double @llvm.fmuladd.f64(double %1587, double %1585, double %1586)
  store double %1588, ptr %1507, align 8, !tbaa !26
  br label %1589

1589:                                             ; preds = %1582, %1564
  %1590 = load i32, ptr %130, align 8, !tbaa !53
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1599, label %1592

1592:                                             ; preds = %1589
  %1593 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1521, i64 0, i64 %1494, i32 3
  %1594 = load double, ptr %1593, align 8, !tbaa !86
  %1595 = call fastcc double @MagickLog10(double noundef %1594) #21
  %1596 = load double, ptr %1508, align 8, !tbaa !26
  %1597 = fneg double %1594
  %1598 = call double @llvm.fmuladd.f64(double %1597, double %1595, double %1596)
  store double %1598, ptr %1508, align 8, !tbaa !26
  br label %1599

1599:                                             ; preds = %1592, %1589
  %1600 = getelementptr inbounds %struct._ChannelStatistics, ptr %210, i64 %1520
  %1601 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1600, i64 0, i64 %1494
  %1602 = load double, ptr %1601, align 8, !tbaa !73
  %1603 = call fastcc double @MagickLog10(double noundef %1602) #21
  %1604 = load double, ptr %1509, align 8, !tbaa !73
  %1605 = fneg double %1602
  %1606 = call double @llvm.fmuladd.f64(double %1605, double %1603, double %1604)
  store double %1606, ptr %1509, align 8, !tbaa !73
  %1607 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1600, i64 0, i64 %1494, i32 1
  %1608 = load double, ptr %1607, align 8, !tbaa !77
  %1609 = call fastcc double @MagickLog10(double noundef %1608) #21
  %1610 = load double, ptr %1510, align 8, !tbaa !77
  %1611 = fneg double %1608
  %1612 = call double @llvm.fmuladd.f64(double %1611, double %1609, double %1610)
  store double %1612, ptr %1510, align 8, !tbaa !77
  %1613 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1600, i64 0, i64 %1494, i32 2
  %1614 = load double, ptr %1613, align 8, !tbaa !80
  %1615 = call fastcc double @MagickLog10(double noundef %1614) #21
  %1616 = load double, ptr %1511, align 8, !tbaa !80
  %1617 = fneg double %1614
  %1618 = call double @llvm.fmuladd.f64(double %1617, double %1615, double %1616)
  store double %1618, ptr %1511, align 8, !tbaa !80
  %1619 = load i32, ptr %127, align 4, !tbaa !52
  %1620 = icmp eq i32 %1619, 12
  br i1 %1620, label %1621, label %1628

1621:                                             ; preds = %1599
  %1622 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1600, i64 0, i64 %1494, i32 4
  %1623 = load double, ptr %1622, align 8, !tbaa !83
  %1624 = call fastcc double @MagickLog10(double noundef %1623) #21
  %1625 = load double, ptr %1512, align 8, !tbaa !83
  %1626 = fneg double %1623
  %1627 = call double @llvm.fmuladd.f64(double %1626, double %1624, double %1625)
  store double %1627, ptr %1512, align 8, !tbaa !83
  br label %1628

1628:                                             ; preds = %1621, %1599
  %1629 = load i32, ptr %130, align 8, !tbaa !53
  %1630 = icmp eq i32 %1629, 0
  br i1 %1630, label %1638, label %1631

1631:                                             ; preds = %1628
  %1632 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1600, i64 0, i64 %1494, i32 3
  %1633 = load double, ptr %1632, align 8, !tbaa !86
  %1634 = call fastcc double @MagickLog10(double noundef %1633) #21
  %1635 = load double, ptr %1513, align 8, !tbaa !86
  %1636 = fneg double %1633
  %1637 = call double @llvm.fmuladd.f64(double %1636, double %1634, double %1635)
  store double %1637, ptr %1513, align 8, !tbaa !86
  br label %1638

1638:                                             ; preds = %1631, %1628
  %1639 = getelementptr inbounds %struct._ChannelStatistics, ptr %212, i64 %1520
  %1640 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1639, i64 0, i64 %1494
  %1641 = load double, ptr %1640, align 8, !tbaa !73
  %1642 = call fastcc double @MagickLog10(double noundef %1641) #21
  %1643 = load double, ptr %1514, align 8, !tbaa !73
  %1644 = fneg double %1641
  %1645 = call double @llvm.fmuladd.f64(double %1644, double %1642, double %1643)
  store double %1645, ptr %1514, align 8, !tbaa !73
  %1646 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1639, i64 0, i64 %1494, i32 1
  %1647 = load double, ptr %1646, align 8, !tbaa !77
  %1648 = call fastcc double @MagickLog10(double noundef %1647) #21
  %1649 = load double, ptr %1515, align 8, !tbaa !77
  %1650 = fneg double %1647
  %1651 = call double @llvm.fmuladd.f64(double %1650, double %1648, double %1649)
  store double %1651, ptr %1515, align 8, !tbaa !77
  %1652 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1639, i64 0, i64 %1494, i32 2
  %1653 = load double, ptr %1652, align 8, !tbaa !80
  %1654 = call fastcc double @MagickLog10(double noundef %1653) #21
  %1655 = load double, ptr %1516, align 8, !tbaa !80
  %1656 = fneg double %1653
  %1657 = call double @llvm.fmuladd.f64(double %1656, double %1654, double %1655)
  store double %1657, ptr %1516, align 8, !tbaa !80
  %1658 = load i32, ptr %127, align 4, !tbaa !52
  %1659 = icmp eq i32 %1658, 12
  br i1 %1659, label %1660, label %1667

1660:                                             ; preds = %1638
  %1661 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1639, i64 0, i64 %1494, i32 4
  %1662 = load double, ptr %1661, align 8, !tbaa !83
  %1663 = call fastcc double @MagickLog10(double noundef %1662) #21
  %1664 = load double, ptr %1517, align 8, !tbaa !83
  %1665 = fneg double %1662
  %1666 = call double @llvm.fmuladd.f64(double %1665, double %1663, double %1664)
  store double %1666, ptr %1517, align 8, !tbaa !83
  br label %1667

1667:                                             ; preds = %1660, %1638
  %1668 = load i32, ptr %130, align 8, !tbaa !53
  %1669 = icmp eq i32 %1668, 0
  br i1 %1669, label %1677, label %1670

1670:                                             ; preds = %1667
  %1671 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1639, i64 0, i64 %1494, i32 3
  %1672 = load double, ptr %1671, align 8, !tbaa !86
  %1673 = call fastcc double @MagickLog10(double noundef %1672) #21
  %1674 = load double, ptr %1518, align 8, !tbaa !86
  %1675 = fneg double %1672
  %1676 = call double @llvm.fmuladd.f64(double %1675, double %1673, double %1674)
  store double %1676, ptr %1518, align 8, !tbaa !86
  br label %1677

1677:                                             ; preds = %1667, %1670
  %1678 = add nuw nsw i64 %1520, 1
  %1679 = icmp eq i64 %1678, %205
  br i1 %1679, label %1680, label %1519, !llvm.loop !103

1680:                                             ; preds = %1677, %1493
  %1681 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1494
  %1682 = load double, ptr %1681, align 8, !tbaa !73
  %1683 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1494
  %1684 = load double, ptr %1683, align 8, !tbaa !73
  %1685 = fneg double %1684
  %1686 = fmul double %1684, %1685
  %1687 = call double @llvm.fmuladd.f64(double %1490, double %1682, double %1686)
  %1688 = fdiv double %1687, %1492
  %1689 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 9, i64 %1494
  store double %1688, ptr %1689, align 8, !tbaa !26
  %1690 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1494, i32 1
  %1691 = load double, ptr %1690, align 8, !tbaa !77
  %1692 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1494, i32 1
  %1693 = load double, ptr %1692, align 8, !tbaa !77
  %1694 = fneg double %1693
  %1695 = fmul double %1693, %1694
  %1696 = call double @llvm.fmuladd.f64(double %1490, double %1691, double %1695)
  %1697 = fdiv double %1696, %1492
  %1698 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 9, i64 %1494
  store double %1697, ptr %1698, align 8, !tbaa !26
  %1699 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1494, i32 2
  %1700 = load double, ptr %1699, align 8, !tbaa !80
  %1701 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1494, i32 2
  %1702 = load double, ptr %1701, align 8, !tbaa !80
  %1703 = fneg double %1702
  %1704 = fmul double %1702, %1703
  %1705 = call double @llvm.fmuladd.f64(double %1490, double %1700, double %1704)
  %1706 = fdiv double %1705, %1492
  %1707 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 9, i64 %1494
  store double %1706, ptr %1707, align 8, !tbaa !26
  %1708 = load i32, ptr %130, align 8, !tbaa !53
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1720, label %1710

1710:                                             ; preds = %1680
  %1711 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1494, i32 3
  %1712 = load double, ptr %1711, align 8, !tbaa !86
  %1713 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1494, i32 3
  %1714 = load double, ptr %1713, align 8, !tbaa !86
  %1715 = fneg double %1714
  %1716 = fmul double %1714, %1715
  %1717 = call double @llvm.fmuladd.f64(double %1490, double %1712, double %1716)
  %1718 = fdiv double %1717, %1492
  %1719 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 9, i64 %1494
  store double %1718, ptr %1719, align 8, !tbaa !26
  br label %1720

1720:                                             ; preds = %1710, %1680
  %1721 = load i32, ptr %127, align 4, !tbaa !52
  %1722 = icmp eq i32 %1721, 12
  br i1 %1722, label %1723, label %1733

1723:                                             ; preds = %1720
  %1724 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1494, i32 4
  %1725 = load double, ptr %1724, align 8, !tbaa !83
  %1726 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1494, i32 4
  %1727 = load double, ptr %1726, align 8, !tbaa !83
  %1728 = fneg double %1727
  %1729 = fmul double %1727, %1728
  %1730 = call double @llvm.fmuladd.f64(double %1490, double %1725, double %1729)
  %1731 = fdiv double %1730, %1492
  %1732 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 9, i64 %1494
  store double %1731, ptr %1732, align 8, !tbaa !26
  br label %1733

1733:                                             ; preds = %1723, %1720
  %1734 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1494
  %1735 = load double, ptr %1734, align 8, !tbaa !73
  %1736 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1494
  %1737 = load double, ptr %1736, align 8, !tbaa !73
  %1738 = fsub double %1735, %1737
  %1739 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1494
  %1740 = load double, ptr %1739, align 8, !tbaa !73
  %1741 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1494
  %1742 = load double, ptr %1741, align 8, !tbaa !73
  %1743 = fcmp ogt double %1740, %1742
  %1744 = select i1 %1743, double %1740, double %1742
  %1745 = fdiv double %1738, %1744
  %1746 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 11, i64 %1494
  store double %1745, ptr %1746, align 8, !tbaa !26
  %1747 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1494, i32 1
  %1748 = load double, ptr %1747, align 8, !tbaa !77
  %1749 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1494, i32 1
  %1750 = load double, ptr %1749, align 8, !tbaa !77
  %1751 = fsub double %1748, %1750
  %1752 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1494, i32 1
  %1753 = load double, ptr %1752, align 8, !tbaa !77
  %1754 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1494, i32 1
  %1755 = load double, ptr %1754, align 8, !tbaa !77
  %1756 = fcmp ogt double %1753, %1755
  %1757 = select i1 %1756, double %1753, double %1755
  %1758 = fdiv double %1751, %1757
  %1759 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 11, i64 %1494
  store double %1758, ptr %1759, align 8, !tbaa !26
  %1760 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1494, i32 2
  %1761 = load double, ptr %1760, align 8, !tbaa !80
  %1762 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1494, i32 2
  %1763 = load double, ptr %1762, align 8, !tbaa !80
  %1764 = fsub double %1761, %1763
  %1765 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1494, i32 2
  %1766 = load double, ptr %1765, align 8, !tbaa !80
  %1767 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1494, i32 2
  %1768 = load double, ptr %1767, align 8, !tbaa !80
  %1769 = fcmp ogt double %1766, %1768
  %1770 = select i1 %1769, double %1766, double %1768
  %1771 = fdiv double %1764, %1770
  %1772 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 11, i64 %1494
  store double %1771, ptr %1772, align 8, !tbaa !26
  br i1 %1722, label %1773, label %1787

1773:                                             ; preds = %1733
  %1774 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1494, i32 4
  %1775 = load double, ptr %1774, align 8, !tbaa !83
  %1776 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1494, i32 4
  %1777 = load double, ptr %1776, align 8, !tbaa !83
  %1778 = fsub double %1775, %1777
  %1779 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1494, i32 4
  %1780 = load double, ptr %1779, align 8, !tbaa !83
  %1781 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1494, i32 4
  %1782 = load double, ptr %1781, align 8, !tbaa !83
  %1783 = fcmp ogt double %1780, %1782
  %1784 = select i1 %1783, double %1780, double %1782
  %1785 = fdiv double %1778, %1784
  %1786 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 11, i64 %1494
  store double %1785, ptr %1786, align 8, !tbaa !26
  br label %1787

1787:                                             ; preds = %1773, %1733
  br i1 %1709, label %1802, label %1788

1788:                                             ; preds = %1787
  %1789 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1494, i32 3
  %1790 = load double, ptr %1789, align 8, !tbaa !86
  %1791 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1494, i32 3
  %1792 = load double, ptr %1791, align 8, !tbaa !86
  %1793 = fsub double %1790, %1792
  %1794 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1494, i32 3
  %1795 = load double, ptr %1794, align 8, !tbaa !86
  %1796 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1494, i32 3
  %1797 = load double, ptr %1796, align 8, !tbaa !86
  %1798 = fcmp ogt double %1795, %1797
  %1799 = select i1 %1798, double %1795, double %1797
  %1800 = fdiv double %1793, %1799
  %1801 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 11, i64 %1494
  store double %1800, ptr %1801, align 8, !tbaa !26
  br label %1802

1802:                                             ; preds = %1788, %1787
  %1803 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1494
  %1804 = load double, ptr %1803, align 8, !tbaa !73
  %1805 = fsub double %1804, %1735
  %1806 = fmul double %1805, -2.000000e+00
  %1807 = call double @exp(double noundef %1806) #19
  %1808 = fsub double 1.000000e+00, %1807
  %1809 = call double @llvm.fabs.f64(double %1808)
  %1810 = call double @llvm.sqrt.f64(double %1809)
  %1811 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 12, i64 %1494
  store double %1810, ptr %1811, align 8, !tbaa !26
  %1812 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1494, i32 1
  %1813 = load double, ptr %1812, align 8, !tbaa !77
  %1814 = load double, ptr %1747, align 8, !tbaa !77
  %1815 = fsub double %1813, %1814
  %1816 = fmul double %1815, -2.000000e+00
  %1817 = call double @exp(double noundef %1816) #19
  %1818 = fsub double 1.000000e+00, %1817
  %1819 = call double @llvm.fabs.f64(double %1818)
  %1820 = call double @llvm.sqrt.f64(double %1819)
  %1821 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 12, i64 %1494
  store double %1820, ptr %1821, align 8, !tbaa !26
  %1822 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1494, i32 2
  %1823 = load double, ptr %1822, align 8, !tbaa !80
  %1824 = load double, ptr %1760, align 8, !tbaa !80
  %1825 = fsub double %1823, %1824
  %1826 = fmul double %1825, -2.000000e+00
  %1827 = call double @exp(double noundef %1826) #19
  %1828 = fsub double 1.000000e+00, %1827
  %1829 = call double @llvm.fabs.f64(double %1828)
  %1830 = call double @llvm.sqrt.f64(double %1829)
  %1831 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 12, i64 %1494
  store double %1830, ptr %1831, align 8, !tbaa !26
  %1832 = load i32, ptr %127, align 4, !tbaa !52
  %1833 = icmp eq i32 %1832, 12
  br i1 %1833, label %1834, label %1846

1834:                                             ; preds = %1802
  %1835 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1494, i32 4
  %1836 = load double, ptr %1835, align 8, !tbaa !83
  %1837 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1494, i32 4
  %1838 = load double, ptr %1837, align 8, !tbaa !83
  %1839 = fsub double %1836, %1838
  %1840 = fmul double %1839, -2.000000e+00
  %1841 = call double @exp(double noundef %1840) #19
  %1842 = fsub double 1.000000e+00, %1841
  %1843 = call double @llvm.fabs.f64(double %1842)
  %1844 = call double @llvm.sqrt.f64(double %1843)
  %1845 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 12, i64 %1494
  store double %1844, ptr %1845, align 8, !tbaa !26
  br label %1846

1846:                                             ; preds = %1834, %1802
  %1847 = load i32, ptr %130, align 8, !tbaa !53
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1861, label %1849

1849:                                             ; preds = %1846
  %1850 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1494, i32 3
  %1851 = load double, ptr %1850, align 8, !tbaa !86
  %1852 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1494, i32 3
  %1853 = load double, ptr %1852, align 8, !tbaa !86
  %1854 = fsub double %1851, %1853
  %1855 = fmul double %1854, -2.000000e+00
  %1856 = call double @exp(double noundef %1855) #19
  %1857 = fsub double 1.000000e+00, %1856
  %1858 = call double @llvm.fabs.f64(double %1857)
  %1859 = call double @llvm.sqrt.f64(double %1858)
  %1860 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 12, i64 %1494
  store double %1859, ptr %1860, align 8, !tbaa !26
  br label %1861

1861:                                             ; preds = %1849, %1846
  %1862 = add nuw nsw i64 %1494, 1
  %1863 = icmp eq i64 %1862, 4
  br i1 %1863, label %1864, label %1493, !llvm.loop !104

1864:                                             ; preds = %1861, %2038
  %1865 = phi i64 [ %2039, %2038 ], [ 0, %1861 ]
  br i1 %286, label %2020, label %1866

1866:                                             ; preds = %1864
  %1867 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %1865
  %1868 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %1865, i32 1
  %1869 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %1865, i32 2
  %1870 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %1865, i32 4
  %1871 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %1865, i32 3
  %1872 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 1, i64 %1865
  %1873 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 1, i64 %1865
  %1874 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 1, i64 %1865
  %1875 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 1, i64 %1865
  %1876 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 1, i64 %1865
  br label %1877

1877:                                             ; preds = %1866, %2017
  %1878 = phi i64 [ 0, %1866 ], [ %2018, %2017 ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %16) #18
  %1879 = call ptr @ResetMagickMemory(ptr noundef nonnull %16, i32 noundef 0, i64 noundef 160) #19
  %1880 = getelementptr inbounds ptr, ptr %206, i64 %1878
  %1881 = load ptr, ptr %1880, align 8, !tbaa !66
  %1882 = getelementptr inbounds %struct._ChannelStatistics, ptr %210, i64 %1878
  %1883 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1882, i64 0, i64 %1865
  %1884 = getelementptr inbounds ptr, ptr %213, i64 %1878
  %1885 = load ptr, ptr %1884, align 8, !tbaa !66
  %1886 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1882, i64 0, i64 %1865, i32 1
  %1887 = load i32, ptr %127, align 4, !tbaa !52
  %1888 = icmp eq i32 %1887, 12
  %1889 = load i32, ptr %130, align 8, !tbaa !53
  %1890 = icmp eq i32 %1889, 0
  %1891 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1882, i64 0, i64 %1865, i32 4
  %1892 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1882, i64 0, i64 %1865, i32 3
  br label %1893

1893:                                             ; preds = %1877, %1993
  %1894 = phi i64 [ 0, %1877 ], [ %1994, %1993 ]
  %1895 = getelementptr inbounds ptr, ptr %206, i64 %1894
  %1896 = load ptr, ptr %1895, align 8, !tbaa !66
  %1897 = getelementptr inbounds %struct._ChannelStatistics, ptr %1885, i64 %1894
  %1898 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1897, i64 0, i64 %1865
  %1899 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1897, i64 0, i64 %1865, i32 1
  %1900 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1897, i64 0, i64 %1865, i32 4
  %1901 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1897, i64 0, i64 %1865, i32 3
  br label %1902

1902:                                             ; preds = %1893, %1990
  %1903 = phi i64 [ 0, %1893 ], [ %1991, %1990 ]
  %1904 = sub nsw i64 %1894, %1903
  %1905 = icmp eq i64 %1904, %1878
  %1906 = sub nsw i64 %1903, %1894
  %1907 = icmp eq i64 %1906, %1878
  %1908 = select i1 %1905, i1 true, i1 %1907
  br i1 %1908, label %1909, label %1932

1909:                                             ; preds = %1902
  %1910 = getelementptr inbounds ptr, ptr %206, i64 %1903
  %1911 = load ptr, ptr %1910, align 8, !tbaa !66
  %1912 = getelementptr inbounds %struct._ChannelStatistics, ptr %1911, i64 %1894
  %1913 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1912, i64 0, i64 %1865
  %1914 = load <2 x double>, ptr %1913, align 8, !tbaa !26
  %1915 = load <2 x double>, ptr %1867, align 8, !tbaa !26
  %1916 = fadd <2 x double> %1914, %1915
  store <2 x double> %1916, ptr %1867, align 8, !tbaa !26
  %1917 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1912, i64 0, i64 %1865, i32 2
  %1918 = load double, ptr %1917, align 8, !tbaa !80
  %1919 = load double, ptr %1869, align 8, !tbaa !80
  %1920 = fadd double %1918, %1919
  store double %1920, ptr %1869, align 8, !tbaa !80
  br i1 %1888, label %1921, label %1926

1921:                                             ; preds = %1909
  %1922 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1912, i64 0, i64 %1865, i32 4
  %1923 = load double, ptr %1922, align 8, !tbaa !83
  %1924 = load double, ptr %1870, align 8, !tbaa !83
  %1925 = fadd double %1923, %1924
  store double %1925, ptr %1870, align 8, !tbaa !83
  br label %1926

1926:                                             ; preds = %1921, %1909
  br i1 %1890, label %1932, label %1927

1927:                                             ; preds = %1926
  %1928 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1912, i64 0, i64 %1865, i32 3
  %1929 = load double, ptr %1928, align 8, !tbaa !86
  %1930 = load double, ptr %1871, align 8, !tbaa !86
  %1931 = fadd double %1929, %1930
  store double %1931, ptr %1871, align 8, !tbaa !86
  br label %1932

1932:                                             ; preds = %1902, %1926, %1927
  %1933 = getelementptr inbounds %struct._ChannelStatistics, ptr %1881, i64 %1903
  %1934 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1933, i64 0, i64 %1865
  %1935 = load double, ptr %1934, align 8, !tbaa !73
  %1936 = getelementptr inbounds %struct._ChannelStatistics, ptr %1896, i64 %1903
  %1937 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1936, i64 0, i64 %1865
  %1938 = load double, ptr %1937, align 8, !tbaa !73
  %1939 = fmul double %1935, %1938
  %1940 = load double, ptr %1883, align 8, !tbaa !73
  %1941 = fdiv double %1939, %1940
  %1942 = getelementptr inbounds %struct._ChannelStatistics, ptr %212, i64 %1903
  %1943 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1942, i64 0, i64 %1865
  %1944 = load double, ptr %1943, align 8, !tbaa !73
  %1945 = fdiv double %1941, %1944
  %1946 = load double, ptr %1898, align 8, !tbaa !73
  %1947 = fadd double %1945, %1946
  store double %1947, ptr %1898, align 8, !tbaa !73
  %1948 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1933, i64 0, i64 %1865, i32 1
  %1949 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1936, i64 0, i64 %1865, i32 1
  %1950 = load double, ptr %1943, align 8, !tbaa !73
  %1951 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1942, i64 0, i64 %1865, i32 2
  %1952 = load double, ptr %1951, align 8, !tbaa !80
  %1953 = load <2 x double>, ptr %1948, align 8, !tbaa !26
  %1954 = load <2 x double>, ptr %1949, align 8, !tbaa !26
  %1955 = fmul <2 x double> %1953, %1954
  %1956 = load <2 x double>, ptr %1886, align 8, !tbaa !26
  %1957 = fdiv <2 x double> %1955, %1956
  %1958 = insertelement <2 x double> poison, double %1950, i64 0
  %1959 = insertelement <2 x double> %1958, double %1952, i64 1
  %1960 = fdiv <2 x double> %1957, %1959
  %1961 = load <2 x double>, ptr %1899, align 8, !tbaa !26
  %1962 = fadd <2 x double> %1961, %1960
  store <2 x double> %1962, ptr %1899, align 8, !tbaa !26
  br i1 %1888, label %1963, label %1976

1963:                                             ; preds = %1932
  %1964 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1933, i64 0, i64 %1865, i32 4
  %1965 = load double, ptr %1964, align 8, !tbaa !83
  %1966 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1936, i64 0, i64 %1865, i32 4
  %1967 = load double, ptr %1966, align 8, !tbaa !83
  %1968 = fmul double %1965, %1967
  %1969 = load double, ptr %1891, align 8, !tbaa !83
  %1970 = fdiv double %1968, %1969
  %1971 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1942, i64 0, i64 %1865, i32 4
  %1972 = load double, ptr %1971, align 8, !tbaa !83
  %1973 = fdiv double %1970, %1972
  %1974 = load double, ptr %1900, align 8, !tbaa !83
  %1975 = fadd double %1974, %1973
  store double %1975, ptr %1900, align 8, !tbaa !83
  br label %1976

1976:                                             ; preds = %1963, %1932
  br i1 %1890, label %1990, label %1977

1977:                                             ; preds = %1976
  %1978 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1933, i64 0, i64 %1865, i32 3
  %1979 = load double, ptr %1978, align 8, !tbaa !86
  %1980 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1936, i64 0, i64 %1865, i32 3
  %1981 = load double, ptr %1980, align 8, !tbaa !86
  %1982 = fmul double %1979, %1981
  %1983 = load double, ptr %1892, align 8, !tbaa !86
  %1984 = fdiv double %1982, %1983
  %1985 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1942, i64 0, i64 %1865, i32 3
  %1986 = load double, ptr %1985, align 8, !tbaa !86
  %1987 = fdiv double %1984, %1986
  %1988 = load double, ptr %1901, align 8, !tbaa !86
  %1989 = fadd double %1988, %1987
  store double %1989, ptr %1901, align 8, !tbaa !86
  br label %1990

1990:                                             ; preds = %1976, %1977
  %1991 = add nuw nsw i64 %1903, 1
  %1992 = icmp eq i64 %1991, %205
  br i1 %1992, label %1993, label %1902, !llvm.loop !105

1993:                                             ; preds = %1990
  %1994 = add nuw nsw i64 %1894, 1
  %1995 = icmp eq i64 %1994, %205
  br i1 %1995, label %1996, label %1893, !llvm.loop !106

1996:                                             ; preds = %1993
  %1997 = mul nsw i64 %1878, %1878
  %1998 = sitofp i64 %1997 to double
  %1999 = load double, ptr %1867, align 8, !tbaa !73
  %2000 = load double, ptr %1872, align 8, !tbaa !26
  %2001 = call double @llvm.fmuladd.f64(double %1998, double %1999, double %2000)
  store double %2001, ptr %1872, align 8, !tbaa !26
  %2002 = load double, ptr %1868, align 8, !tbaa !77
  %2003 = load double, ptr %1873, align 8, !tbaa !26
  %2004 = call double @llvm.fmuladd.f64(double %1998, double %2002, double %2003)
  store double %2004, ptr %1873, align 8, !tbaa !26
  %2005 = load double, ptr %1869, align 8, !tbaa !80
  %2006 = load double, ptr %1874, align 8, !tbaa !26
  %2007 = call double @llvm.fmuladd.f64(double %1998, double %2005, double %2006)
  store double %2007, ptr %1874, align 8, !tbaa !26
  br i1 %1888, label %2008, label %2012

2008:                                             ; preds = %1996
  %2009 = load double, ptr %1870, align 8, !tbaa !83
  %2010 = load double, ptr %1875, align 8, !tbaa !26
  %2011 = call double @llvm.fmuladd.f64(double %1998, double %2009, double %2010)
  store double %2011, ptr %1875, align 8, !tbaa !26
  br label %2012

2012:                                             ; preds = %2008, %1996
  br i1 %1890, label %2017, label %2013

2013:                                             ; preds = %2012
  %2014 = load double, ptr %1871, align 8, !tbaa !86
  %2015 = load double, ptr %1876, align 8, !tbaa !26
  %2016 = call double @llvm.fmuladd.f64(double %1998, double %2014, double %2015)
  store double %2016, ptr %1876, align 8, !tbaa !26
  br label %2017

2017:                                             ; preds = %2013, %2012
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %16) #18
  %2018 = add nuw nsw i64 %1878, 1
  %2019 = icmp eq i64 %2018, %205
  br i1 %2019, label %2020, label %1877, !llvm.loop !107

2020:                                             ; preds = %2017, %1864
  %2021 = call double @sqrt(double noundef -1.000000e+00) #19
  %2022 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 13, i64 %1865
  store double %2021, ptr %2022, align 8, !tbaa !26
  %2023 = call double @sqrt(double noundef -1.000000e+00) #19
  %2024 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 13, i64 %1865
  store double %2023, ptr %2024, align 8, !tbaa !26
  %2025 = call double @sqrt(double noundef -1.000000e+00) #19
  %2026 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 13, i64 %1865
  store double %2025, ptr %2026, align 8, !tbaa !26
  %2027 = load i32, ptr %127, align 4, !tbaa !52
  %2028 = icmp eq i32 %2027, 12
  br i1 %2028, label %2029, label %2032

2029:                                             ; preds = %2020
  %2030 = call double @sqrt(double noundef -1.000000e+00) #19
  %2031 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 13, i64 %1865
  store double %2030, ptr %2031, align 8, !tbaa !26
  br label %2032

2032:                                             ; preds = %2029, %2020
  %2033 = load i32, ptr %130, align 8, !tbaa !53
  %2034 = icmp eq i32 %2033, 0
  br i1 %2034, label %2038, label %2035

2035:                                             ; preds = %2032
  %2036 = call double @sqrt(double noundef -1.000000e+00) #19
  %2037 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 13, i64 %1865
  store double %2036, ptr %2037, align 8, !tbaa !26
  br label %2038

2038:                                             ; preds = %2035, %2032
  %2039 = add nuw nsw i64 %1865, 1
  %2040 = icmp eq i64 %2039, 4
  br i1 %2040, label %2041, label %1864, !llvm.loop !108

2041:                                             ; preds = %2038
  %2042 = call ptr @RelinquishMagickMemory(ptr noundef %214) #19
  br i1 %286, label %2062, label %2043

2043:                                             ; preds = %2041, %2043
  %2044 = phi i64 [ %2048, %2043 ], [ 0, %2041 ]
  %2045 = getelementptr inbounds ptr, ptr %213, i64 %2044
  %2046 = load ptr, ptr %2045, align 8, !tbaa !66
  %2047 = call ptr @RelinquishMagickMemory(ptr noundef %2046) #19
  store ptr %2047, ptr %2045, align 8, !tbaa !66
  %2048 = add nuw nsw i64 %2044, 1
  %2049 = icmp eq i64 %2048, %205
  br i1 %2049, label %2050, label %2043, !llvm.loop !109

2050:                                             ; preds = %2043
  %2051 = call ptr @RelinquishMagickMemory(ptr noundef %213) #19
  %2052 = call ptr @RelinquishMagickMemory(ptr noundef %212) #19
  %2053 = call ptr @RelinquishMagickMemory(ptr noundef %211) #19
  %2054 = call ptr @RelinquishMagickMemory(ptr noundef %210) #19
  br i1 %286, label %2067, label %2055

2055:                                             ; preds = %2050, %2055
  %2056 = phi i64 [ %2060, %2055 ], [ 0, %2050 ]
  %2057 = getelementptr inbounds ptr, ptr %206, i64 %2056
  %2058 = load ptr, ptr %2057, align 8, !tbaa !66
  %2059 = call ptr @RelinquishMagickMemory(ptr noundef %2058) #19
  store ptr %2059, ptr %2057, align 8, !tbaa !66
  %2060 = add nuw nsw i64 %2056, 1
  %2061 = icmp eq i64 %2060, %205
  br i1 %2061, label %2067, label %2055, !llvm.loop !110

2062:                                             ; preds = %2041
  %2063 = call ptr @RelinquishMagickMemory(ptr noundef %213) #19
  %2064 = call ptr @RelinquishMagickMemory(ptr noundef %212) #19
  %2065 = call ptr @RelinquishMagickMemory(ptr noundef %211) #19
  %2066 = call ptr @RelinquishMagickMemory(ptr noundef %210) #19
  br label %2067

2067:                                             ; preds = %2055, %2062, %2050
  %2068 = call ptr @RelinquishMagickMemory(ptr noundef %206) #19
  br label %2069

2069:                                             ; preds = %23, %28, %2067, %573, %321, %262, %122, %52
  %2070 = phi ptr [ %53, %52 ], [ %124, %122 ], [ %264, %262 ], [ %329, %321 ], [ %575, %573 ], [ %33, %2067 ], [ null, %28 ], [ null, %23 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #18
  ret ptr %2070
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @ScaleQuantumToMap(i16 noundef zeroext %0) unnamed_addr #9 {
  %2 = zext i16 %0 to i32
  ret i32 %2
}

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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @MagickLog10(double noundef %0) unnamed_addr #10 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp olt double %2, 0x3DA5FD7FE1796495
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call double @log10(double noundef %2) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi double [ %5, %4 ], [ -1.100000e+01, %1 ]
  ret double %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @MagickAbsoluteValue(i64 noundef %0) unnamed_addr #9 {
  %2 = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @HoughLineImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1842, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #19
  br label %17

17:                                               ; preds = %14, %5
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !24
  %22 = tail call i64 @llvm.umax.i64(i64 %19, i64 %21)
  %23 = uitofp i64 %22 to double
  %24 = fmul double %23, 0x3FF6A09E667F3BCD
  %25 = fmul double %24, 5.000000e-01
  %26 = fmul double %25, 2.000000e+00
  %27 = fptoui double %26 to i64
  %28 = tail call ptr @AcquireMatrixInfo(i64 noundef 180, i64 noundef %27, i64 noundef 8, ptr noundef %4) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %32 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1852, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %31) #19
  br label %319

33:                                               ; preds = %17
  %34 = tail call i32 @NullMatrix(ptr noundef nonnull %28) #19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %28) #19
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %39 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1856, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %38) #19
  br label %319

40:                                               ; preds = %33
  %41 = load i64, ptr %20, align 8, !tbaa !24
  %42 = uitofp i64 %41 to double
  %43 = fmul double %42, 5.000000e-01
  %44 = load i64, ptr %18, align 8, !tbaa !25
  %45 = uitofp i64 %44 to double
  %46 = fmul double %45, 5.000000e-01
  %47 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #19
  %48 = load i64, ptr %18, align 8, !tbaa !25
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = tail call ptr @DestroyCacheView(ptr noundef %47) #19
  br label %119

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %54

54:                                               ; preds = %52, %108
  %55 = phi i32 [ 1, %52 ], [ %110, %108 ]
  %56 = phi i64 [ 0, %52 ], [ %111, %108 ]
  %57 = phi i64 [ 0, %52 ], [ %109, %108 ]
  %58 = icmp eq i32 %55, 0
  br i1 %58, label %108, label %59

59:                                               ; preds = %54
  %60 = load i64, ptr %20, align 8, !tbaa !24
  %61 = call ptr @GetCacheViewVirtualPixels(ptr noundef %47, i64 noundef 0, i64 noundef %56, i64 noundef %60, i64 noundef 1, ptr noundef %4) #20
  %62 = icmp eq ptr %61, null
  br i1 %62, label %108, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %20, align 8, !tbaa !24
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = sitofp i64 %56 to double
  %68 = fsub double %67, %46
  br label %69

69:                                               ; preds = %66, %94
  %70 = phi i64 [ 0, %66 ], [ %96, %94 ]
  %71 = phi ptr [ %61, %66 ], [ %95, %94 ]
  %72 = call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %71) #20
  %73 = fcmp ogt float %72, 3.276700e+04
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = sitofp i64 %70 to double
  %76 = fsub double %75, %43
  br label %77

77:                                               ; preds = %74, %77
  %78 = phi i64 [ 0, %74 ], [ %92, %77 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %79 = sitofp i64 %78 to double
  %80 = call fastcc double @DegreesToRadians(double noundef %79) #21
  %81 = call double @cos(double noundef %80) #19
  %82 = call double @sin(double noundef %80) #19
  %83 = fmul double %68, %82
  %84 = call double @llvm.fmuladd.f64(double %76, double %81, double %83)
  %85 = fadd double %25, %84
  %86 = call fastcc double @MagickRound(double noundef %85) #21
  %87 = fptosi double %86 to i64
  %88 = call i32 @GetMatrixElement(ptr noundef nonnull %28, i64 noundef %78, i64 noundef %87, ptr noundef nonnull %9) #19
  %89 = load double, ptr %9, align 8, !tbaa !26
  %90 = fadd double %89, 1.000000e+00
  store double %90, ptr %9, align 8, !tbaa !26
  %91 = call i32 @SetMatrixElement(ptr noundef nonnull %28, i64 noundef %78, i64 noundef %87, ptr noundef nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  %92 = add nuw nsw i64 %78, 1
  %93 = icmp eq i64 %92, 180
  br i1 %93, label %94, label %77, !llvm.loop !111

94:                                               ; preds = %77, %69
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %96 = add nuw nsw i64 %70, 1
  %97 = load i64, ptr %20, align 8, !tbaa !24
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %69, label %99, !llvm.loop !112

99:                                               ; preds = %94, %63
  %100 = load ptr, ptr %53, align 8, !tbaa !40
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = add nsw i64 %57, 1
  %104 = load i64, ptr %18, align 8, !tbaa !25
  %105 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %57, i64 noundef %104) #21
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  br label %108

108:                                              ; preds = %99, %102, %59, %54
  %109 = phi i64 [ %57, %54 ], [ %57, %59 ], [ %103, %102 ], [ %57, %99 ]
  %110 = phi i32 [ 0, %54 ], [ 0, %59 ], [ %107, %102 ], [ 1, %99 ]
  %111 = add nuw nsw i64 %56, 1
  %112 = load i64, ptr %18, align 8, !tbaa !25
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %54, label %114, !llvm.loop !113

114:                                              ; preds = %108
  %115 = call ptr @DestroyCacheView(ptr noundef %47) #19
  %116 = icmp eq i32 %110, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %28) #19
  br label %319

119:                                              ; preds = %50, %114
  %120 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %7) #19
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %28) #19
  br label %319

124:                                              ; preds = %119
  %125 = uitofp i64 %1 to double
  %126 = uitofp i64 %2 to double
  %127 = uitofp i64 %3 to double
  %128 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %125, double noundef %126, double noundef %127) #19
  %129 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #25
  %130 = call i64 @write(i32 noundef %120, ptr noundef nonnull %6, i64 noundef %129) #19
  %131 = load i64, ptr %20, align 8, !tbaa !24
  %132 = uitofp i64 %131 to double
  %133 = load i64, ptr %18, align 8, !tbaa !25
  %134 = uitofp i64 %133 to double
  %135 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %132, double noundef %134) #19
  %136 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #25
  %137 = call i64 @write(i32 noundef %120, ptr noundef nonnull %6, i64 noundef %136) #19
  %138 = icmp sgt i64 %27, 0
  br i1 %138, label %139, label %275

139:                                              ; preds = %124
  %140 = icmp eq i64 %3, 0
  %141 = load i64, ptr %20, align 8, !tbaa !24
  %142 = load i64, ptr %18, align 8, !tbaa !25
  %143 = call i64 @llvm.umax.i64(i64 %141, i64 %142)
  %144 = lshr i64 %143, 2
  %145 = select i1 %140, i64 %144, i64 %3
  %146 = uitofp i64 %145 to double
  %147 = sdiv i64 %2, 2
  %148 = sub nsw i64 0, %147
  %149 = icmp slt i64 %2, -1
  %150 = sdiv i64 %1, 2
  %151 = sub nsw i64 0, %150
  %152 = icmp slt i64 %1, -1
  %153 = lshr i64 %1, 1
  %154 = uitofp i64 %27 to double
  %155 = fmul double %154, 5.000000e-01
  %156 = call i64 @llvm.abs.i64(i64 %150, i1 true)
  %157 = add nuw nsw i64 %156, 1
  br label %158

158:                                              ; preds = %139, %272
  %159 = phi i64 [ 0, %139 ], [ %273, %272 ]
  %160 = sitofp i64 %159 to double
  %161 = fsub double %160, %155
  %162 = insertelement <2 x double> poison, double %161, i64 0
  %163 = shufflevector <2 x double> %162, <2 x double> poison, <2 x i32> zeroinitializer
  br label %164

164:                                              ; preds = %158, %269
  %165 = phi i64 [ 0, %158 ], [ %270, %269 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %166 = call i32 @GetMatrixElement(ptr noundef nonnull %28, i64 noundef %165, i64 noundef %159, ptr noundef nonnull %10) #19
  %167 = load double, ptr %10, align 8, !tbaa !26
  %168 = fcmp ult double %167, %146
  br i1 %168, label %269, label %169

169:                                              ; preds = %164
  br i1 %149, label %194, label %170

170:                                              ; preds = %169, %187
  %171 = phi i64 [ %191, %187 ], [ %148, %169 ]
  %172 = phi double [ %189, %187 ], [ %167, %169 ]
  br i1 %152, label %187, label %173

173:                                              ; preds = %170
  %174 = add nsw i64 %171, %159
  br label %175

175:                                              ; preds = %173, %184
  %176 = phi i64 [ %151, %173 ], [ %185, %184 ]
  %177 = or i64 %176, %171
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %175
  %180 = add nsw i64 %176, %165
  %181 = call i32 @GetMatrixElement(ptr noundef nonnull %28, i64 noundef %180, i64 noundef %174, ptr noundef nonnull %10) #19
  %182 = load double, ptr %10, align 8, !tbaa !26
  %183 = fcmp ogt double %182, %172
  br i1 %183, label %187, label %184

184:                                              ; preds = %175, %179
  %185 = add i64 %176, 1
  %186 = icmp eq i64 %176, %156
  br i1 %186, label %187, label %175, !llvm.loop !114

187:                                              ; preds = %184, %179, %170
  %188 = phi i64 [ %151, %170 ], [ %176, %179 ], [ %157, %184 ]
  %189 = phi double [ %172, %170 ], [ %182, %179 ], [ %172, %184 ]
  %190 = icmp slt i64 %188, %153
  %191 = add nsw i64 %171, 1
  %192 = icmp sge i64 %171, %147
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %194, label %170, !llvm.loop !115

194:                                              ; preds = %187, %169
  %195 = phi double [ %167, %169 ], [ %189, %187 ]
  %196 = call i32 @GetMatrixElement(ptr noundef nonnull %28, i64 noundef %165, i64 noundef %159, ptr noundef nonnull %10) #19
  %197 = load double, ptr %10, align 8, !tbaa !26
  %198 = fcmp ule double %195, %197
  br i1 %198, label %199, label %269

199:                                              ; preds = %194
  %200 = add nsw i64 %165, -45
  %201 = icmp ult i64 %200, 91
  %202 = sitofp i64 %165 to double
  %203 = call fastcc double @DegreesToRadians(double noundef %202) #21
  br i1 %201, label %204, label %231

204:                                              ; preds = %199
  %205 = load i64, ptr %20, align 8, !tbaa !24
  %206 = call double @cos(double noundef %203) #19
  %207 = call double @sin(double noundef %203) #19
  %208 = load i64, ptr %18, align 8, !tbaa !25
  %209 = load i64, ptr %20, align 8, !tbaa !24
  %210 = call double @cos(double noundef %203) #19
  %211 = call double @sin(double noundef %203) #19
  %212 = load i64, ptr %18, align 8, !tbaa !25
  %213 = insertelement <2 x i64> poison, i64 %209, i64 0
  %214 = insertelement <2 x i64> %213, i64 %205, i64 1
  %215 = uitofp <2 x i64> %214 to <2 x double>
  %216 = fmul <2 x double> %215, <double 5.000000e-01, double 5.000000e-01>
  %217 = insertelement <2 x double> %215, double 0.000000e+00, i64 1
  %218 = fsub <2 x double> %217, %216
  %219 = fneg <2 x double> %218
  %220 = insertelement <2 x double> poison, double %210, i64 0
  %221 = insertelement <2 x double> %220, double %206, i64 1
  %222 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %219, <2 x double> %221, <2 x double> %163)
  %223 = insertelement <2 x double> poison, double %211, i64 0
  %224 = insertelement <2 x double> %223, double %207, i64 1
  %225 = fdiv <2 x double> %222, %224
  %226 = insertelement <2 x i64> poison, i64 %212, i64 0
  %227 = insertelement <2 x i64> %226, i64 %208, i64 1
  %228 = uitofp <2 x i64> %227 to <2 x double>
  %229 = fmul <2 x double> %228, <double 5.000000e-01, double 5.000000e-01>
  %230 = fadd <2 x double> %225, %229
  br label %259

231:                                              ; preds = %199
  %232 = load i64, ptr %18, align 8, !tbaa !25
  %233 = call double @sin(double noundef %203) #19
  %234 = call double @cos(double noundef %203) #19
  %235 = load i64, ptr %20, align 8, !tbaa !24
  %236 = load i64, ptr %18, align 8, !tbaa !25
  %237 = call double @sin(double noundef %203) #19
  %238 = call double @cos(double noundef %203) #19
  %239 = load i64, ptr %20, align 8, !tbaa !24
  %240 = insertelement <2 x i64> poison, i64 %236, i64 0
  %241 = insertelement <2 x i64> %240, i64 %232, i64 1
  %242 = uitofp <2 x i64> %241 to <2 x double>
  %243 = fmul <2 x double> %242, <double 5.000000e-01, double 5.000000e-01>
  %244 = insertelement <2 x double> %242, double 0.000000e+00, i64 1
  %245 = fsub <2 x double> %244, %243
  %246 = fneg <2 x double> %245
  %247 = insertelement <2 x double> poison, double %237, i64 0
  %248 = insertelement <2 x double> %247, double %233, i64 1
  %249 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %246, <2 x double> %248, <2 x double> %163)
  %250 = insertelement <2 x double> poison, double %238, i64 0
  %251 = insertelement <2 x double> %250, double %234, i64 1
  %252 = fdiv <2 x double> %249, %251
  %253 = insertelement <2 x i64> poison, i64 %239, i64 0
  %254 = insertelement <2 x i64> %253, i64 %235, i64 1
  %255 = uitofp <2 x i64> %254 to <2 x double>
  %256 = fmul <2 x double> %255, <double 5.000000e-01, double 5.000000e-01>
  %257 = fadd <2 x double> %252, %256
  %258 = insertelement <2 x double> %242, double 0.000000e+00, i64 1
  br label %259

259:                                              ; preds = %231, %204
  %260 = phi <2 x double> [ %230, %204 ], [ %258, %231 ]
  %261 = phi <2 x double> [ %217, %204 ], [ %257, %231 ]
  %262 = extractelement <2 x double> %260, i64 0
  %263 = extractelement <2 x double> %260, i64 1
  %264 = extractelement <2 x double> %261, i64 0
  %265 = extractelement <2 x double> %261, i64 1
  %266 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %265, double noundef %263, double noundef %264, double noundef %262, double noundef %195) #19
  %267 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #25
  %268 = call i64 @write(i32 noundef %120, ptr noundef nonnull %6, i64 noundef %267) #19
  br label %269

269:                                              ; preds = %259, %194, %164
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  %270 = add nuw nsw i64 %165, 1
  %271 = icmp eq i64 %270, 180
  br i1 %271, label %272, label %164, !llvm.loop !116

272:                                              ; preds = %269
  %273 = add nuw nsw i64 %159, 1
  %274 = icmp eq i64 %273, %27
  br i1 %274, label %275, label %158, !llvm.loop !117

275:                                              ; preds = %272, %124
  %276 = call i32 @close(i32 noundef %120) #19
  %277 = call ptr @AcquireImageInfo() #19
  %278 = getelementptr inbounds %struct._ImageInfo, ptr %277, i64 0, i32 24
  %279 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %280 = load i64, ptr %279, align 8
  store i64 %280, ptr %278, align 8
  %281 = getelementptr inbounds %struct._ImageInfo, ptr %277, i64 0, i32 51
  %282 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %281, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #19
  %283 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.12) #19
  %284 = icmp eq ptr %283, null
  br i1 %284, label %287, label %285

285:                                              ; preds = %275
  %286 = call i32 @SetImageOption(ptr noundef nonnull %277, ptr noundef nonnull @.str.12, ptr noundef nonnull %283) #19
  br label %287

287:                                              ; preds = %285, %275
  %288 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #19
  %289 = icmp eq ptr %288, null
  br i1 %289, label %292, label %290

290:                                              ; preds = %287
  %291 = call i32 @SetImageOption(ptr noundef nonnull %277, ptr noundef nonnull @.str.13, ptr noundef nonnull %288) #19
  br label %292

292:                                              ; preds = %290, %287
  %293 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #19
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295

295:                                              ; preds = %292
  %296 = call i32 @SetImageOption(ptr noundef nonnull %277, ptr noundef nonnull @.str.14, ptr noundef nonnull %293) #19
  br label %297

297:                                              ; preds = %295, %292
  %298 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #19
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = call i32 @SetImageOption(ptr noundef nonnull %277, ptr noundef nonnull @.str.15, ptr noundef nonnull %298) #19
  br label %302

302:                                              ; preds = %300, %297
  %303 = call ptr @ReadImage(ptr noundef nonnull %277, ptr noundef %4) #19
  store ptr %303, ptr %8, align 8, !tbaa !66
  %304 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #19
  %305 = icmp eq ptr %303, null
  br i1 %305, label %313, label %306

306:                                              ; preds = %302
  %307 = call i32 @IsMagickTrue(ptr noundef %304) #19
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %306
  %310 = call ptr @MatrixToImage(ptr noundef nonnull %28, ptr noundef %4) #19
  %311 = icmp eq ptr %310, null
  br i1 %311, label %313, label %312

312:                                              ; preds = %309
  call void @AppendImageToList(ptr noundef nonnull %8, ptr noundef nonnull %310) #19
  br label %313

313:                                              ; preds = %309, %312, %306, %302
  %314 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %28) #19
  %315 = call ptr @DestroyImageInfo(ptr noundef nonnull %277) #19
  %316 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %7) #19
  %317 = load ptr, ptr %8, align 8, !tbaa !66
  %318 = call ptr @GetFirstImageInList(ptr noundef %317) #19
  br label %319

319:                                              ; preds = %313, %122, %117, %36, %30
  %320 = phi ptr [ null, %30 ], [ null, %36 ], [ null, %117 ], [ null, %122 ], [ %318, %313 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #18
  ret ptr %320
}

; Function Attrs: optsize
declare i32 @NullMatrix(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @DegreesToRadians(double noundef %0) unnamed_addr #9 {
  %2 = fmul double %0, 0x400921FB54442D18
  %3 = fdiv double %2, 1.800000e+02
  ret double %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickRound(double noundef %0) unnamed_addr #9 {
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
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MeanShiftImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._PixelPacket, align 4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2134, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #19
  br label %15

15:                                               ; preds = %12, %5
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !25
  %20 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %17, i64 noundef %19, i32 noundef 1, ptr noundef %4) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %245, label %22

22:                                               ; preds = %15
  %23 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %20, i32 noundef 1) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %26) #19
  %27 = tail call ptr @DestroyImage(ptr noundef nonnull %20) #19
  br label %245

28:                                               ; preds = %22
  %29 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #19
  %30 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #19
  %31 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %20, ptr noundef %4) #19
  %32 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !25
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %241

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 7
  %37 = getelementptr inbounds i8, ptr %6, i64 32
  %38 = getelementptr inbounds i8, ptr %6, i64 36
  %39 = getelementptr inbounds i8, ptr %6, i64 40
  %40 = sdiv i64 %2, 2
  %41 = sub nsw i64 0, %40
  %42 = icmp slt i64 %2, -1
  %43 = sdiv i64 %1, 2
  %44 = sub nsw i64 0, %43
  %45 = icmp slt i64 %1, -1
  %46 = lshr i64 %1, 1
  %47 = lshr i64 %2, 1
  %48 = mul i64 %47, %46
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 2
  %50 = fmul double %3, %3
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %8, i64 0, i32 3
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %54 = tail call i64 @llvm.abs.i64(i64 %43, i1 true)
  %55 = tail call i64 @llvm.abs.i64(i64 %40, i1 true)
  br label %56

56:                                               ; preds = %35, %235
  %57 = phi i32 [ 1, %35 ], [ %237, %235 ]
  %58 = phi i64 [ 0, %35 ], [ %236, %235 ]
  %59 = phi i64 [ 0, %35 ], [ %238, %235 ]
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %235, label %61

61:                                               ; preds = %56
  %62 = load i64, ptr %16, align 8, !tbaa !24
  %63 = call ptr @GetCacheViewVirtualPixels(ptr noundef %29, i64 noundef 0, i64 noundef %59, i64 noundef %62, i64 noundef 1, ptr noundef %4) #20
  %64 = load i64, ptr %36, align 8, !tbaa !24
  %65 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %31, i64 noundef 0, i64 noundef %59, i64 noundef %64, i64 noundef 1, ptr noundef %4) #20
  %66 = icmp eq ptr %63, null
  %67 = icmp eq ptr %65, null
  %68 = select i1 %66, i1 true, i1 %67
  br i1 %68, label %235, label %69

69:                                               ; preds = %61
  %70 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %29) #19
  %71 = load i64, ptr %36, align 8, !tbaa !24
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %222

73:                                               ; preds = %69
  %74 = sitofp i64 %59 to double
  br label %75

75:                                               ; preds = %73, %208
  %76 = phi i32 [ %57, %73 ], [ %165, %208 ]
  %77 = phi i64 [ 0, %73 ], [ %219, %208 ]
  %78 = phi ptr [ %65, %73 ], [ %218, %208 ]
  %79 = phi ptr [ %63, %73 ], [ %217, %208 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #18
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #19
  %80 = getelementptr inbounds i16, ptr %70, i64 %77
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %79, ptr noundef %80, ptr noundef nonnull %6) #21
  %81 = sitofp i64 %77 to double
  br label %82

82:                                               ; preds = %164, %75
  %83 = phi i64 [ 0, %75 ], [ %205, %164 ]
  %84 = phi double [ %81, %75 ], [ %171, %164 ]
  %85 = phi double [ %74, %75 ], [ %172, %164 ]
  %86 = phi i32 [ %76, %75 ], [ %165, %164 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #18
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #19
  %87 = load float, ptr %37, align 8, !tbaa.struct !118
  %88 = load float, ptr %38, align 4, !tbaa.struct !121
  %89 = load float, ptr %39, align 8, !tbaa.struct !122
  br i1 %42, label %164, label %90

90:                                               ; preds = %82, %157
  %91 = phi i64 [ %162, %157 ], [ %41, %82 ]
  %92 = phi i64 [ %161, %157 ], [ 0, %82 ]
  %93 = phi double [ %160, %157 ], [ 0.000000e+00, %82 ]
  %94 = phi double [ %159, %157 ], [ 0.000000e+00, %82 ]
  %95 = phi i32 [ %158, %157 ], [ %86, %82 ]
  br i1 %45, label %157, label %96

96:                                               ; preds = %90
  %97 = mul nsw i64 %91, %91
  %98 = sitofp i64 %91 to double
  %99 = fadd double %85, %98
  br label %100

100:                                              ; preds = %96, %150
  %101 = phi i64 [ %44, %96 ], [ %155, %150 ]
  %102 = phi i64 [ %92, %96 ], [ %154, %150 ]
  %103 = phi double [ %93, %96 ], [ %153, %150 ]
  %104 = phi double [ %94, %96 ], [ %152, %150 ]
  %105 = phi i32 [ %95, %96 ], [ %151, %150 ]
  %106 = mul nsw i64 %101, %101
  %107 = add nuw nsw i64 %106, %97
  %108 = icmp sgt i64 %107, %48
  br i1 %108, label %150, label %109

109:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %110 = sitofp i64 %101 to double
  %111 = fadd double %84, %110
  %112 = call fastcc double @MagickRound(double noundef %111) #21
  %113 = fptosi double %112 to i64
  %114 = call fastcc double @MagickRound(double noundef %99) #21
  %115 = fptosi double %114 to i64
  %116 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %30, i64 noundef %113, i64 noundef %115, ptr noundef nonnull %8, ptr noundef %4) #19
  %117 = load float, ptr %37, align 8, !tbaa !123
  %118 = load i16, ptr %49, align 4, !tbaa !36
  %119 = uitofp i16 %118 to float
  %120 = fsub float %117, %119
  %121 = load float, ptr %38, align 4, !tbaa !125
  %122 = load float, ptr %39, align 8, !tbaa !126
  %123 = load <2 x i16>, ptr %8, align 4, !tbaa !59
  %124 = uitofp <2 x i16> %123 to <2 x float>
  %125 = extractelement <2 x float> %124, i64 1
  %126 = fsub float %121, %125
  %127 = fmul float %126, %126
  %128 = call float @llvm.fmuladd.f32(float %120, float %120, float %127)
  %129 = extractelement <2 x float> %124, i64 0
  %130 = fsub float %122, %129
  %131 = call float @llvm.fmuladd.f32(float %130, float %130, float %128)
  %132 = fpext float %131 to double
  %133 = fcmp ult double %50, %132
  br i1 %133, label %146, label %134

134:                                              ; preds = %109
  %135 = fadd double %103, %111
  %136 = fadd double %99, %104
  %137 = load i16, ptr %52, align 2, !tbaa !61
  %138 = uitofp i16 %137 to float
  %139 = load <4 x float>, ptr %51, align 8, !tbaa !119
  %140 = insertelement <4 x float> poison, float %119, i64 0
  %141 = shufflevector <2 x float> %124, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %142 = shufflevector <4 x float> %140, <4 x float> %141, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %143 = insertelement <4 x float> %142, float %138, i64 3
  %144 = fadd <4 x float> %139, %143
  store <4 x float> %144, ptr %51, align 8, !tbaa !119
  %145 = add nsw i64 %102, 1
  br label %146

146:                                              ; preds = %134, %109
  %147 = phi double [ %136, %134 ], [ %104, %109 ]
  %148 = phi double [ %135, %134 ], [ %103, %109 ]
  %149 = phi i64 [ %145, %134 ], [ %102, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %150

150:                                              ; preds = %100, %146
  %151 = phi i32 [ %116, %146 ], [ %105, %100 ]
  %152 = phi double [ %147, %146 ], [ %104, %100 ]
  %153 = phi double [ %148, %146 ], [ %103, %100 ]
  %154 = phi i64 [ %149, %146 ], [ %102, %100 ]
  %155 = add i64 %101, 1
  %156 = icmp eq i64 %101, %54
  br i1 %156, label %157, label %100, !llvm.loop !127

157:                                              ; preds = %150, %90
  %158 = phi i32 [ %95, %90 ], [ %151, %150 ]
  %159 = phi double [ %94, %90 ], [ %152, %150 ]
  %160 = phi double [ %93, %90 ], [ %153, %150 ]
  %161 = phi i64 [ %92, %90 ], [ %154, %150 ]
  %162 = add i64 %91, 1
  %163 = icmp eq i64 %91, %55
  br i1 %163, label %164, label %90, !llvm.loop !128

164:                                              ; preds = %157, %82
  %165 = phi i32 [ %86, %82 ], [ %158, %157 ]
  %166 = phi double [ 0.000000e+00, %82 ], [ %159, %157 ]
  %167 = phi double [ 0.000000e+00, %82 ], [ %160, %157 ]
  %168 = phi i64 [ 0, %82 ], [ %161, %157 ]
  %169 = sitofp i64 %168 to double
  %170 = fdiv double 1.000000e+00, %169
  %171 = fmul double %167, %170
  %172 = fmul double %166, %170
  %173 = load <4 x float>, ptr %51, align 8, !tbaa !119
  %174 = fpext <4 x float> %173 to <4 x double>
  %175 = insertelement <4 x double> poison, double %170, i64 0
  %176 = shufflevector <4 x double> %175, <4 x double> poison, <4 x i32> zeroinitializer
  %177 = fmul <4 x double> %176, %174
  %178 = fptrunc <4 x double> %177 to <4 x float>
  store <4 x float> %178, ptr %37, align 8, !tbaa !119
  %179 = fsub double %171, %84
  %180 = fsub double %172, %85
  %181 = fmul double %180, %180
  %182 = call double @llvm.fmuladd.f64(double %179, double %179, double %181)
  %183 = extractelement <4 x float> %178, i64 0
  %184 = fsub float %183, %87
  %185 = fpext float %184 to double
  %186 = fmul double %185, 0x3F6FE01FE01FE020
  %187 = fmul double %186, 2.550000e+02
  %188 = fmul double %187, 0x3EF0001000100010
  %189 = call double @llvm.fmuladd.f64(double %188, double %185, double %182)
  %190 = extractelement <4 x float> %178, i64 1
  %191 = fsub float %190, %88
  %192 = fpext float %191 to double
  %193 = fmul double %192, 0x3F6FE01FE01FE020
  %194 = fmul double %193, 2.550000e+02
  %195 = fmul double %194, 0x3EF0001000100010
  %196 = call double @llvm.fmuladd.f64(double %195, double %192, double %189)
  %197 = extractelement <4 x float> %178, i64 2
  %198 = fsub float %197, %89
  %199 = fpext float %198 to double
  %200 = fmul double %199, 0x3F6FE01FE01FE020
  %201 = fmul double %200, 2.550000e+02
  %202 = fmul double %201, 0x3EF0001000100010
  %203 = call double @llvm.fmuladd.f64(double %202, double %199, double %196)
  %204 = fcmp ugt double %203, 3.000000e+00
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #18
  %205 = add nuw nsw i64 %83, 1
  %206 = icmp ult i64 %83, 99
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %82, label %208, !llvm.loop !129

208:                                              ; preds = %164
  %209 = call fastcc zeroext i16 @ClampToQuantum(float noundef %183) #21
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 2
  store i16 %209, ptr %210, align 2, !tbaa !36
  %211 = call fastcc zeroext i16 @ClampToQuantum(float noundef %190) #21
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 1
  store i16 %211, ptr %212, align 2, !tbaa !37
  %213 = call fastcc zeroext i16 @ClampToQuantum(float noundef %197) #21
  store i16 %213, ptr %78, align 2, !tbaa !38
  %214 = extractelement <4 x float> %178, i64 3
  %215 = call fastcc zeroext i16 @ClampToQuantum(float noundef %214) #21
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 3
  store i16 %215, ptr %216, align 2, !tbaa !61
  %217 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 1
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #18
  %219 = add nuw nsw i64 %77, 1
  %220 = load i64, ptr %36, align 8, !tbaa !24
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %75, label %222, !llvm.loop !130

222:                                              ; preds = %208, %69
  %223 = phi i32 [ %57, %69 ], [ %165, %208 ]
  %224 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %31, ptr noundef %4) #20
  %225 = icmp eq i32 %224, 0
  %226 = select i1 %225, i32 0, i32 %223
  %227 = load ptr, ptr %53, align 8, !tbaa !40
  %228 = icmp eq ptr %227, null
  br i1 %228, label %235, label %229

229:                                              ; preds = %222
  %230 = add nsw i64 %58, 1
  %231 = load i64, ptr %18, align 8, !tbaa !25
  %232 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i64 noundef %58, i64 noundef %231) #21
  %233 = icmp eq i32 %232, 0
  %234 = select i1 %233, i32 0, i32 %226
  br label %235

235:                                              ; preds = %222, %229, %61, %56
  %236 = phi i64 [ %58, %56 ], [ %58, %61 ], [ %230, %229 ], [ %58, %222 ]
  %237 = phi i32 [ 0, %56 ], [ 0, %61 ], [ %234, %229 ], [ %226, %222 ]
  %238 = add nuw nsw i64 %59, 1
  %239 = load i64, ptr %32, align 8, !tbaa !25
  %240 = icmp slt i64 %238, %239
  br i1 %240, label %56, label %241, !llvm.loop !131

241:                                              ; preds = %235, %28
  %242 = call ptr @DestroyCacheView(ptr noundef %31) #19
  %243 = call ptr @DestroyCacheView(ptr noundef %30) #19
  %244 = call ptr @DestroyCacheView(ptr noundef %29) #19
  br label %245

245:                                              ; preds = %15, %241, %25
  %246 = phi ptr [ null, %25 ], [ %20, %241 ], [ null, %15 ]
  ret ptr %246
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #14 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !59
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !59
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !132
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @IsAuthenticPixel(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) unnamed_addr #15 {
  %4 = icmp slt i64 %1, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %7 = load i64, ptr %6, align 8, !tbaa !24
  %8 = icmp sle i64 %7, %1
  %9 = icmp slt i64 %2, 0
  %10 = or i1 %9, %8
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !25
  %14 = icmp sgt i64 %13, %2
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %11, %3, %5
  %17 = phi i32 [ 0, %5 ], [ 0, %3 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { hot nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize allocsize(0,1) }
attributes #23 = { nounwind optsize willreturn memory(none) }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 12976}
!6 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !14, i64 104, !15, i64 112, !7, i64 208, !11, i64 216, !7, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !10, i64 256, !14, i64 264, !14, i64 272, !17, i64 280, !17, i64 312, !17, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !11, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !18, i64 480, !19, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !21, i64 12920, !7, i64 12976, !10, i64 12984, !11, i64 12992, !22, i64 13000, !22, i64 13032, !11, i64 13064, !10, i64 13072, !10, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !7, i64 13112, !7, i64 13116, !12, i64 13120, !11, i64 13128, !17, i64 13136, !11, i64 13168, !11, i64 13176, !7, i64 13184, !7, i64 13188, !23, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_PixelPacket", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ChromaticityInfo", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72}
!16 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_TimerInfo", !20, i64 0, !20, i64 24, !7, i64 48, !10, i64 56}
!20 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48}
!22 = !{!"_ProfileInfo", !11, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!"long long", !8, i64 0}
!24 = !{!6, !10, i64 40}
!25 = !{!6, !10, i64 48}
!26 = !{!14, !14, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!31, !14, i64 0}
!31 = !{!"_CannyInfo", !14, i64 0, !14, i64 8, !7, i64 16, !10, i64 24, !10, i64 32}
!32 = !{!31, !7, i64 16}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = !{!31, !14, i64 8}
!36 = !{!12, !13, i64 4}
!37 = !{!12, !13, i64 2}
!38 = !{!12, !13, i64 0}
!39 = distinct !{!39, !28}
!40 = !{!6, !11, i64 568}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = distinct !{!43, !28}
!44 = !{!6, !11, i64 576}
!45 = !{!31, !10, i64 24}
!46 = !{!31, !10, i64 32}
!47 = distinct !{!47, !28}
!48 = !{i32 0, i32 2}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = !{!7, !7, i64 0}
!52 = !{!6, !7, i64 4}
!53 = !{!6, !7, i64 32}
!54 = !{i32 0, i32 65536}
!55 = !{!56, !7, i64 0}
!56 = !{!"_LongPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16}
!57 = !{!56, !7, i64 4}
!58 = !{!56, !7, i64 8}
!59 = !{!13, !13, i64 0}
!60 = !{!56, !7, i64 16}
!61 = !{!12, !13, i64 6}
!62 = !{!56, !7, i64 12}
!63 = distinct !{!63, !28}
!64 = distinct !{!64, !28}
!65 = distinct !{!65, !28}
!66 = !{!11, !11, i64 0}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !28}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !28}
!72 = distinct !{!72, !28}
!73 = !{!74, !14, i64 0}
!74 = !{!"_DoublePixelPacket", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!75 = distinct !{!75, !28}
!76 = distinct !{!76, !28}
!77 = !{!74, !14, i64 8}
!78 = distinct !{!78, !28}
!79 = distinct !{!79, !28}
!80 = !{!74, !14, i64 16}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
!83 = !{!74, !14, i64 32}
!84 = distinct !{!84, !28}
!85 = distinct !{!85, !28}
!86 = !{!74, !14, i64 24}
!87 = distinct !{!87, !28}
!88 = distinct !{!88, !28}
!89 = distinct !{!89, !28}
!90 = distinct !{!90, !28}
!91 = distinct !{!91, !28}
!92 = distinct !{!92, !28}
!93 = distinct !{!93, !28}
!94 = distinct !{!94, !28}
!95 = distinct !{!95, !28}
!96 = distinct !{!96, !28}
!97 = distinct !{!97, !28}
!98 = distinct !{!98, !28}
!99 = !{i64 0, i64 -9223372036854775807}
!100 = distinct !{!100, !28}
!101 = distinct !{!101, !28}
!102 = distinct !{!102, !28}
!103 = distinct !{!103, !28}
!104 = distinct !{!104, !28}
!105 = distinct !{!105, !28}
!106 = distinct !{!106, !28}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !28}
!109 = distinct !{!109, !28}
!110 = distinct !{!110, !28}
!111 = distinct !{!111, !28}
!112 = distinct !{!112, !28}
!113 = distinct !{!113, !28}
!114 = distinct !{!114, !28}
!115 = distinct !{!115, !28}
!116 = distinct !{!116, !28}
!117 = distinct !{!117, !28}
!118 = !{i64 0, i64 4, !119, i64 4, i64 4, !119, i64 8, i64 4, !119, i64 12, i64 4, !119, i64 16, i64 4, !119}
!119 = !{!120, !120, i64 0}
!120 = !{!"float", !8, i64 0}
!121 = !{i64 0, i64 4, !119, i64 4, i64 4, !119, i64 8, i64 4, !119, i64 12, i64 4, !119}
!122 = !{i64 0, i64 4, !119, i64 4, i64 4, !119, i64 8, i64 4, !119}
!123 = !{!124, !120, i64 32}
!124 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !120, i64 32, !120, i64 36, !120, i64 40, !120, i64 44, !120, i64 48}
!125 = !{!124, !120, i64 36}
!126 = !{!124, !120, i64 40}
!127 = distinct !{!127, !28}
!128 = distinct !{!128, !28}
!129 = distinct !{!129, !28}
!130 = distinct !{!130, !28}
!131 = distinct !{!131, !28}
!132 = !{!124, !120, i64 48}
