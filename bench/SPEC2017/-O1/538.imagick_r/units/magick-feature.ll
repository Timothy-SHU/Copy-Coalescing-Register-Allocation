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

; Function Attrs: nounwind uwtable
define dso_local ptr @CannyEdgeImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._CannyInfo, align 8
  %8 = alloca %struct._CannyInfo, align 8
  %9 = alloca [4096 x i8], align 16
  %10 = alloca %struct._CannyInfo, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca %struct._CannyInfo, align 8
  %13 = alloca %struct._CannyInfo, align 8
  %14 = alloca %struct._CannyInfo, align 8
  %15 = alloca %struct._CannyInfo, align 8
  %16 = alloca %struct._CannyInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #14
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 283, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #14
  br label %23

23:                                               ; preds = %20, %6
  %24 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %11, i64 noundef 4096, ptr noundef nonnull @.str.3, double noundef %1, double noundef %2, double noundef %1, double noundef %2) #14
  %25 = call ptr @AcquireKernelInfo(ptr noundef nonnull %11) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %29 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 293, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %28) #14
  br label %376

30:                                               ; preds = %23
  %31 = call ptr @MorphologyApply(ptr noundef %0, i32 noundef 134217719, i32 noundef 1, i64 noundef 1, ptr noundef nonnull %25, i32 noundef 0, double noundef 0.000000e+00, ptr noundef %5) #14
  %32 = call ptr @DestroyKernelInfo(ptr noundef nonnull %25) #14
  %33 = icmp eq ptr %31, null
  br i1 %33, label %376, label %34

34:                                               ; preds = %30
  %35 = call i32 @SetImageColorspace(ptr noundef nonnull %31, i32 noundef 2) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call ptr @DestroyImage(ptr noundef nonnull %31) #14
  br label %376

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !53
  %42 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !54
  %44 = call ptr @AcquireMatrixInfo(i64 noundef %41, i64 noundef %43, i64 noundef 40, ptr noundef %5) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call ptr @DestroyImage(ptr noundef nonnull %31) #14
  br label %376

48:                                               ; preds = %39
  %49 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %31, ptr noundef %5) #14
  %50 = load i64, ptr %42, align 8, !tbaa !54
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %130

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct._CannyInfo, ptr %12, i64 0, i32 2
  br label %54

54:                                               ; preds = %52, %125
  %55 = phi i64 [ 0, %52 ], [ %127, %125 ]
  %56 = phi i32 [ 1, %52 ], [ %126, %125 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %125, label %58

58:                                               ; preds = %54
  %59 = load i64, ptr %40, align 8, !tbaa !53
  %60 = add i64 %59, 1
  %61 = call ptr @GetCacheViewVirtualPixels(ptr noundef %49, i64 noundef 0, i64 noundef %55, i64 noundef %60, i64 noundef 2, ptr noundef %5) #15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %125, label %63

63:                                               ; preds = %58
  %64 = load i64, ptr %40, align 8, !tbaa !53
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %125

66:                                               ; preds = %63, %117
  %67 = phi i64 [ %122, %117 ], [ 0, %63 ]
  %68 = phi ptr [ %121, %117 ], [ %61, %63 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #14
  %69 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 40) #14
  br label %70

70:                                               ; preds = %66, %92
  %71 = phi i64 [ 0, %66 ], [ %96, %92 ]
  %72 = phi ptr [ %68, %66 ], [ %95, %92 ]
  %73 = phi double [ 0.000000e+00, %66 ], [ %89, %92 ]
  %74 = phi double [ 0.000000e+00, %66 ], [ %85, %92 ]
  br label %75

75:                                               ; preds = %70, %75
  %76 = phi i64 [ 0, %70 ], [ %90, %75 ]
  %77 = phi double [ %73, %70 ], [ %89, %75 ]
  %78 = phi double [ %74, %70 ], [ %85, %75 ]
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %76
  %80 = call float @GetPixelIntensity(ptr noundef nonnull %31, ptr noundef %79) #15
  %81 = fpext float %80 to double
  %82 = getelementptr inbounds [2 x [2 x double]], ptr @CannyEdgeImage.Gx, i64 0, i64 %71, i64 %76
  %83 = load double, ptr %82, align 8, !tbaa !55
  %84 = fmul double %83, 5.000000e-01
  %85 = call double @llvm.fmuladd.f64(double %84, double %81, double %78)
  %86 = getelementptr inbounds [2 x [2 x double]], ptr @CannyEdgeImage.Gy, i64 0, i64 %71, i64 %76
  %87 = load double, ptr %86, align 8, !tbaa !55
  %88 = fmul double %87, 5.000000e-01
  %89 = call double @llvm.fmuladd.f64(double %88, double %81, double %77)
  %90 = add nuw nsw i64 %76, 1
  %91 = icmp eq i64 %76, 0
  br i1 %91, label %75, label %92, !llvm.loop !56

92:                                               ; preds = %75
  %93 = load i64, ptr %40, align 8, !tbaa !53
  %94 = add i64 %93, 1
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 %94
  %96 = add nuw nsw i64 %71, 1
  %97 = icmp eq i64 %71, 0
  br i1 %97, label %70, label %98, !llvm.loop !59

98:                                               ; preds = %92
  %99 = call double @hypot(double noundef %85, double noundef %89) #14
  store double %99, ptr %12, align 8, !tbaa !60
  store i32 0, ptr %53, align 8, !tbaa !62
  %100 = call double @llvm.fabs.f64(double %85)
  %101 = fcmp ogt double %100, 1.000000e-15
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = fdiv double %89, %85
  %104 = fcmp olt double %103, 0.000000e+00
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = fcmp olt double %103, 0xC003504F333F82AD
  br i1 %106, label %115, label %107

107:                                              ; preds = %105
  %108 = fcmp olt double %103, 0xBFDA827999FCE882
  %109 = select i1 %108, i32 1, i32 2
  br label %115

110:                                              ; preds = %102
  %111 = fcmp ogt double %103, 0x4003504F333F82AD
  br i1 %111, label %115, label %112

112:                                              ; preds = %110
  %113 = fcmp ogt double %103, 0x3FDA827999FCE882
  %114 = select i1 %113, i32 3, i32 2
  br label %115

115:                                              ; preds = %112, %110, %107, %105
  %116 = phi i32 [ 0, %105 ], [ %109, %107 ], [ 0, %110 ], [ %114, %112 ]
  store i32 %116, ptr %53, align 8, !tbaa !62
  br label %117

117:                                              ; preds = %115, %98
  %118 = call i32 @SetMatrixElement(ptr noundef nonnull %44, i64 noundef %67, i64 noundef %55, ptr noundef nonnull %12) #14
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %120
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #14
  %122 = add nuw nsw i64 %67, 1
  %123 = load i64, ptr %40, align 8, !tbaa !53
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %66, label %125, !llvm.loop !63

125:                                              ; preds = %117, %63, %58, %54
  %126 = phi i32 [ 0, %54 ], [ 0, %58 ], [ 1, %63 ], [ 1, %117 ]
  %127 = add nuw nsw i64 %55, 1
  %128 = load i64, ptr %42, align 8, !tbaa !54
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %54, label %130, !llvm.loop !64

130:                                              ; preds = %125, %48
  %131 = phi i32 [ 1, %48 ], [ %126, %125 ]
  %132 = call ptr @DestroyCacheView(ptr noundef %49) #14
  %133 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %10) #14
  %134 = getelementptr inbounds %struct._CannyInfo, ptr %10, i64 0, i32 1
  %135 = load double, ptr %134, align 8, !tbaa !65
  %136 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %31, ptr noundef %5) #14
  %137 = load i64, ptr %42, align 8, !tbaa !54
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %237

139:                                              ; preds = %130
  %140 = getelementptr inbounds %struct._CannyInfo, ptr %15, i64 0, i32 2
  %141 = getelementptr inbounds %struct._CannyInfo, ptr %15, i64 0, i32 1
  %142 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %143 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %144 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %145 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %146

146:                                              ; preds = %139, %229
  %147 = phi double [ %135, %139 ], [ %233, %229 ]
  %148 = phi double [ %135, %139 ], [ %232, %229 ]
  %149 = phi i64 [ 0, %139 ], [ %234, %229 ]
  %150 = phi i64 [ 0, %139 ], [ %231, %229 ]
  %151 = phi i32 [ %131, %139 ], [ %230, %229 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %229, label %153

153:                                              ; preds = %146
  %154 = load i64, ptr %40, align 8, !tbaa !53
  %155 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %136, i64 noundef 0, i64 noundef %149, i64 noundef %154, i64 noundef 1, ptr noundef %5) #15
  %156 = icmp eq ptr %155, null
  br i1 %156, label %229, label %157

157:                                              ; preds = %153
  %158 = load i64, ptr %40, align 8, !tbaa !53
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %212

160:                                              ; preds = %157
  %161 = add nsw i64 %149, -1
  %162 = add nuw nsw i64 %149, 1
  %163 = add nsw i64 %149, -1
  %164 = add nuw nsw i64 %149, 1
  %165 = add nsw i64 %149, -1
  %166 = add nuw nsw i64 %149, 1
  br label %167

167:                                              ; preds = %160, %192
  %168 = phi i64 [ 0, %160 ], [ %209, %192 ]
  %169 = phi ptr [ %155, %160 ], [ %208, %192 ]
  %170 = phi double [ %147, %160 ], [ %205, %192 ]
  %171 = phi double [ %148, %160 ], [ %203, %192 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %15) #14
  %172 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %168, i64 noundef %149, ptr noundef nonnull %15) #14
  %173 = load i32, ptr %140, align 8, !tbaa !62
  switch i32 %173, label %174 [
    i32 3, label %187
    i32 1, label %177
    i32 2, label %182
  ]

174:                                              ; preds = %167
  %175 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %168, i64 noundef %165, ptr noundef nonnull %13) #14
  %176 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %168, i64 noundef %166, ptr noundef nonnull %14) #14
  br label %192

177:                                              ; preds = %167
  %178 = add nsw i64 %168, -1
  %179 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %178, i64 noundef %161, ptr noundef nonnull %13) #14
  %180 = add nuw nsw i64 %168, 1
  %181 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %180, i64 noundef %162, ptr noundef nonnull %14) #14
  br label %192

182:                                              ; preds = %167
  %183 = add nsw i64 %168, -1
  %184 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %183, i64 noundef %149, ptr noundef nonnull %13) #14
  %185 = add nuw nsw i64 %168, 1
  %186 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %185, i64 noundef %149, ptr noundef nonnull %14) #14
  br label %192

187:                                              ; preds = %167
  %188 = add nuw nsw i64 %168, 1
  %189 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %188, i64 noundef %163, ptr noundef nonnull %14) #14
  %190 = add nsw i64 %168, -1
  %191 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %190, i64 noundef %164, ptr noundef nonnull %13) #14
  br label %192

192:                                              ; preds = %187, %182, %177, %174
  %193 = load double, ptr %15, align 8, !tbaa !60
  store double %193, ptr %141, align 8, !tbaa !65
  %194 = load double, ptr %13, align 8, !tbaa !60
  %195 = fcmp olt double %193, %194
  %196 = load double, ptr %14, align 8
  %197 = fcmp olt double %193, %196
  %198 = select i1 %195, i1 true, i1 %197
  %199 = select i1 %198, double 0.000000e+00, double %193
  store double %199, ptr %141, align 8
  %200 = call i32 @SetMatrixElement(ptr noundef nonnull %44, i64 noundef %168, i64 noundef %149, ptr noundef nonnull %15) #14
  %201 = load double, ptr %141, align 8, !tbaa !65
  %202 = fcmp olt double %201, %171
  %203 = select i1 %202, double %201, double %171
  %204 = fcmp ogt double %201, %170
  %205 = select i1 %204, double %201, double %170
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 0, i32 2
  store i16 0, ptr %206, align 2, !tbaa !66
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 0, i32 1
  store i16 0, ptr %207, align 2, !tbaa !67
  store i16 0, ptr %169, align 2, !tbaa !68
  %208 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #14
  %209 = add nuw nsw i64 %168, 1
  %210 = load i64, ptr %40, align 8, !tbaa !53
  %211 = icmp slt i64 %209, %210
  br i1 %211, label %167, label %212, !llvm.loop !69

212:                                              ; preds = %192, %157
  %213 = phi double [ %148, %157 ], [ %203, %192 ]
  %214 = phi double [ %147, %157 ], [ %205, %192 ]
  %215 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %136, ptr noundef %5) #15
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = load ptr, ptr %142, align 8, !tbaa !70
  %219 = icmp eq ptr %218, null
  br i1 %219, label %229, label %220

220:                                              ; preds = %212
  %221 = add nsw i64 %150, 1
  %222 = load i64, ptr %143, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #14
  %223 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %9, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, ptr noundef nonnull %144) #14
  %224 = load ptr, ptr %142, align 8, !tbaa !70
  %225 = load ptr, ptr %145, align 8, !tbaa !71
  %226 = call i32 %224(ptr noundef nonnull %9, i64 noundef %150, i64 noundef %222, ptr noundef %225) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #14
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %227, i32 0, i32 %217
  br label %229

229:                                              ; preds = %212, %220, %153, %146
  %230 = phi i32 [ 0, %146 ], [ 0, %153 ], [ %228, %220 ], [ %217, %212 ]
  %231 = phi i64 [ %150, %146 ], [ %150, %153 ], [ %221, %220 ], [ %150, %212 ]
  %232 = phi double [ %148, %146 ], [ %148, %153 ], [ %213, %220 ], [ %213, %212 ]
  %233 = phi double [ %147, %146 ], [ %147, %153 ], [ %214, %220 ], [ %214, %212 ]
  %234 = add nuw nsw i64 %149, 1
  %235 = load i64, ptr %42, align 8, !tbaa !54
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %146, label %237, !llvm.loop !72

237:                                              ; preds = %229, %130
  %238 = phi i32 [ %131, %130 ], [ %230, %229 ]
  %239 = phi double [ %135, %130 ], [ %232, %229 ]
  %240 = phi double [ %135, %130 ], [ %233, %229 ]
  %241 = call ptr @DestroyCacheView(ptr noundef %136) #14
  %242 = fsub double %240, %239
  %243 = call double @llvm.fmuladd.f64(double %3, double %242, double %239)
  %244 = call double @llvm.fmuladd.f64(double %4, double %242, double %239)
  %245 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %31, ptr noundef %5) #14
  %246 = load i64, ptr %42, align 8, !tbaa !54
  %247 = icmp sgt i64 %246, 0
  br i1 %247, label %248, label %373

248:                                              ; preds = %237
  %249 = getelementptr inbounds %struct._CannyInfo, ptr %16, i64 0, i32 1
  %250 = getelementptr inbounds %struct._CannyInfo, ptr %7, i64 0, i32 3
  %251 = getelementptr inbounds %struct._CannyInfo, ptr %7, i64 0, i32 4
  %252 = getelementptr inbounds %struct._CannyInfo, ptr %8, i64 0, i32 1
  br label %253

253:                                              ; preds = %248, %368
  %254 = phi i64 [ 0, %248 ], [ %370, %368 ]
  %255 = phi i32 [ %238, %248 ], [ %369, %368 ]
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %368, label %257

257:                                              ; preds = %253
  %258 = load i64, ptr %40, align 8, !tbaa !53
  %259 = icmp sgt i64 %258, 0
  br i1 %259, label %260, label %368

260:                                              ; preds = %257, %363
  %261 = phi i64 [ %365, %363 ], [ 0, %257 ]
  %262 = phi i32 [ %364, %363 ], [ %255, %257 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %16) #14
  %263 = call ptr @GetCacheViewVirtualPixels(ptr noundef %245, i64 noundef %261, i64 noundef %254, i64 noundef 1, i64 noundef 1, ptr noundef %5) #15
  %264 = icmp eq ptr %263, null
  br i1 %264, label %363, label %265

265:                                              ; preds = %260
  %266 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %261, i64 noundef %254, ptr noundef nonnull %16) #14
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %363, label %268

268:                                              ; preds = %265
  %269 = call float @GetPixelIntensity(ptr noundef nonnull %31, ptr noundef nonnull %263) #15
  %270 = fcmp une float %269, 0.000000e+00
  %271 = load double, ptr %249, align 8
  %272 = fcmp ult double %271, %244
  %273 = select i1 %270, i1 true, i1 %272
  br i1 %273, label %363, label %274

274:                                              ; preds = %268
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #14
  %275 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %245, i64 noundef %261, i64 noundef %254, i64 noundef 1, i64 noundef 1, ptr noundef %5) #15
  %276 = icmp eq ptr %275, null
  br i1 %276, label %361, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %275, i64 0, i32 2
  store i16 -1, ptr %278, align 2, !tbaa !66
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %275, i64 0, i32 1
  store i16 -1, ptr %279, align 2, !tbaa !67
  store i16 -1, ptr %275, align 2, !tbaa !68
  %280 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %245, ptr noundef %5) #15
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %361, label %282

282:                                              ; preds = %277
  %283 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %7) #14
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %361, label %285

285:                                              ; preds = %282
  store i64 %261, ptr %250, align 8, !tbaa !73
  store i64 %254, ptr %251, align 8, !tbaa !74
  %286 = call i32 @SetMatrixElement(ptr noundef nonnull %44, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %7) #14
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %361, label %288

288:                                              ; preds = %285, %358
  %289 = phi i64 [ %359, %358 ], [ 1, %285 ]
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %361, label %291

291:                                              ; preds = %288
  %292 = add nsw i64 %289, -1
  %293 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %292, i64 noundef 0, ptr noundef nonnull %7) #14
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %358, label %295

295:                                              ; preds = %291, %355
  %296 = phi i64 [ %356, %355 ], [ -1, %291 ]
  %297 = phi i64 [ %352, %355 ], [ %292, %291 ]
  br label %298

298:                                              ; preds = %295, %351
  %299 = phi i64 [ -1, %295 ], [ %353, %351 ]
  %300 = phi i64 [ %297, %295 ], [ %352, %351 ]
  %301 = or i64 %299, %296
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %351, label %303

303:                                              ; preds = %298
  %304 = load i64, ptr %250, align 8, !tbaa !73
  %305 = add nsw i64 %304, %299
  %306 = load i64, ptr %251, align 8, !tbaa !74
  %307 = add nsw i64 %306, %296
  %308 = icmp slt i64 %305, 0
  br i1 %308, label %318, label %309

309:                                              ; preds = %303
  %310 = load i64, ptr %40, align 8, !tbaa !53
  %311 = icmp sle i64 %310, %305
  %312 = icmp slt i64 %307, 0
  %313 = or i1 %312, %311
  br i1 %313, label %318, label %314

314:                                              ; preds = %309
  %315 = load i64, ptr %42, align 8, !tbaa !54
  %316 = icmp sgt i64 %315, %307
  %317 = zext i1 %316 to i32
  br label %318

318:                                              ; preds = %314, %309, %303
  %319 = phi i32 [ 0, %309 ], [ 0, %303 ], [ %317, %314 ]
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %351, label %321

321:                                              ; preds = %318
  %322 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %245, i64 noundef %305, i64 noundef %307, i64 noundef 1, i64 noundef 1, ptr noundef %5) #15
  %323 = icmp eq ptr %322, null
  br i1 %323, label %358, label %324

324:                                              ; preds = %321
  %325 = load i64, ptr %250, align 8, !tbaa !73
  %326 = add nsw i64 %325, %299
  %327 = load i64, ptr %251, align 8, !tbaa !74
  %328 = add nsw i64 %327, %296
  %329 = call i32 @GetMatrixElement(ptr noundef nonnull %44, i64 noundef %326, i64 noundef %328, ptr noundef nonnull %8) #14
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %358, label %331

331:                                              ; preds = %324
  %332 = call float @GetPixelIntensity(ptr noundef nonnull %31, ptr noundef nonnull %322) #15
  %333 = fcmp une float %332, 0.000000e+00
  %334 = load double, ptr %252, align 8
  %335 = fcmp ult double %334, %243
  %336 = select i1 %333, i1 true, i1 %335
  br i1 %336, label %351, label %337

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct._PixelPacket, ptr %322, i64 0, i32 2
  store i16 -1, ptr %338, align 2, !tbaa !66
  %339 = getelementptr inbounds %struct._PixelPacket, ptr %322, i64 0, i32 1
  store i16 -1, ptr %339, align 2, !tbaa !67
  store i16 -1, ptr %322, align 2, !tbaa !68
  %340 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %245, ptr noundef %5) #15
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %358, label %342

342:                                              ; preds = %337
  %343 = load i64, ptr %250, align 8, !tbaa !73
  %344 = add nsw i64 %343, %299
  store i64 %344, ptr %250, align 8, !tbaa !73
  %345 = load i64, ptr %251, align 8, !tbaa !74
  %346 = add nsw i64 %345, %296
  store i64 %346, ptr %251, align 8, !tbaa !74
  %347 = call i32 @SetMatrixElement(ptr noundef nonnull %44, i64 noundef %300, i64 noundef 0, ptr noundef nonnull %7) #14
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %358, label %349

349:                                              ; preds = %342
  %350 = add nsw i64 %300, 1
  br label %351

351:                                              ; preds = %349, %331, %318, %298
  %352 = phi i64 [ %300, %298 ], [ %300, %318 ], [ %350, %349 ], [ %300, %331 ]
  %353 = add nsw i64 %299, 1
  %354 = icmp eq i64 %353, 2
  br i1 %354, label %355, label %298, !llvm.loop !75

355:                                              ; preds = %351
  %356 = add nsw i64 %296, 1
  %357 = icmp eq i64 %356, 2
  br i1 %357, label %358, label %295, !llvm.loop !76

358:                                              ; preds = %355, %342, %337, %324, %321, %291
  %359 = phi i64 [ %292, %291 ], [ %300, %321 ], [ %300, %324 ], [ %300, %337 ], [ %300, %342 ], [ %352, %355 ]
  %360 = phi i1 [ false, %291 ], [ false, %321 ], [ false, %324 ], [ false, %337 ], [ false, %342 ], [ true, %355 ]
  br i1 %360, label %288, label %361, !llvm.loop !77

361:                                              ; preds = %288, %358, %274, %277, %282, %285
  %362 = phi i32 [ 0, %274 ], [ 0, %277 ], [ 0, %282 ], [ 0, %285 ], [ 0, %358 ], [ 1, %288 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #14
  br label %363

363:                                              ; preds = %268, %361, %265, %260
  %364 = phi i32 [ %262, %260 ], [ 0, %265 ], [ %362, %361 ], [ %266, %268 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #14
  %365 = add nuw nsw i64 %261, 1
  %366 = load i64, ptr %40, align 8, !tbaa !53
  %367 = icmp slt i64 %365, %366
  br i1 %367, label %260, label %368, !llvm.loop !78

368:                                              ; preds = %363, %257, %253
  %369 = phi i32 [ 0, %253 ], [ %255, %257 ], [ %364, %363 ]
  %370 = add nuw nsw i64 %254, 1
  %371 = load i64, ptr %42, align 8, !tbaa !54
  %372 = icmp slt i64 %370, %371
  br i1 %372, label %253, label %373, !llvm.loop !79

373:                                              ; preds = %368, %237
  %374 = call ptr @DestroyCacheView(ptr noundef %245) #14
  %375 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %44) #14
  br label %376

376:                                              ; preds = %30, %373, %46, %37, %27
  %377 = phi ptr [ null, %27 ], [ null, %37 ], [ null, %46 ], [ %31, %373 ], [ null, %30 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #14
  ret ptr %377
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @AcquireKernelInfo(ptr noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @MorphologyApply(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyKernelInfo(ptr noundef) local_unnamed_addr #2

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare ptr @AcquireMatrixInfo(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare i32 @SetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare i32 @GetMatrixElement(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyMatrixInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %14) #14
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 689, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #14
  br label %23

23:                                               ; preds = %20, %3
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !53
  %26 = add i64 %1, 1
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %2372, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !54
  %31 = icmp ult i64 %30, %26
  br i1 %31, label %2372, label %32

32:                                               ; preds = %28
  %33 = tail call dereferenceable_or_null(21504) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 448) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #14
  call void @GetExceptionInfo(ptr noundef nonnull %15) #14
  %36 = tail call ptr @__errno_location() #17
  %37 = load i32, ptr %36, align 4, !tbaa !80
  %38 = call ptr @GetExceptionMessage(i32 noundef %37) #14
  %39 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 696, i32 noundef 700, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %38) #14
  %40 = call ptr @DestroyString(ptr noundef %38) #14
  call void @CatchException(ptr noundef nonnull %15) #14
  %41 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %15) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #18
  unreachable

42:                                               ; preds = %32
  %43 = tail call ptr @ResetMagickMemory(ptr noundef %33, i32 noundef 0, i64 noundef 21504) #14
  %44 = tail call dereferenceable_or_null(1310720) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 20) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1310720) %44, i8 -1, i64 1310720, i1 false), !tbaa !80
  %47 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #14
  %48 = load i64, ptr %29, align 8, !tbaa !54
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %54, label %121

50:                                               ; preds = %42
  %51 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #14
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %53 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 707, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %52) #14
  br label %2372

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  br label %57

57:                                               ; preds = %54, %116
  %58 = phi i64 [ 0, %54 ], [ %118, %116 ]
  %59 = phi i32 [ 1, %54 ], [ %117, %116 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %116, label %61

61:                                               ; preds = %57
  %62 = load i64, ptr %24, align 8, !tbaa !53
  %63 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %47, i64 noundef 0, i64 noundef %58, i64 noundef %62, i64 noundef 1, ptr noundef %2) #15
  %64 = icmp eq ptr %63, null
  br i1 %64, label %116, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %47) #14
  %67 = load i64, ptr %24, align 8, !tbaa !53
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %116

69:                                               ; preds = %65
  %70 = load i32, ptr %55, align 4, !tbaa !81
  %71 = icmp eq i32 %70, 12
  %72 = icmp eq ptr %66, null
  %73 = load i32, ptr %56, align 8, !tbaa !82
  %74 = icmp eq i32 %73, 0
  br label %75

75:                                               ; preds = %69, %112
  %76 = phi i64 [ 0, %69 ], [ %114, %112 ]
  %77 = phi ptr [ %63, %69 ], [ %113, %112 ]
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 2
  %79 = load i16, ptr %78, align 2, !tbaa !66
  %80 = zext i16 %79 to i32
  %81 = zext i16 %79 to i64
  %82 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %81
  store i32 %80, ptr %82, align 4, !tbaa !83
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 1
  %84 = load i16, ptr %83, align 2, !tbaa !67
  %85 = zext i16 %84 to i32
  %86 = zext i16 %84 to i64
  %87 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %86, i32 1
  store i32 %85, ptr %87, align 4, !tbaa !85
  %88 = load i16, ptr %77, align 2, !tbaa !68
  %89 = zext i16 %88 to i32
  %90 = zext i16 %88 to i64
  %91 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %90, i32 2
  store i32 %89, ptr %91, align 4, !tbaa !86
  br i1 %71, label %92, label %105

92:                                               ; preds = %75
  %93 = getelementptr inbounds i16, ptr %66, i64 %76
  br i1 %72, label %96, label %94

94:                                               ; preds = %92
  %95 = load i16, ptr %93, align 2, !tbaa !87
  br label %96

96:                                               ; preds = %92, %94
  %97 = phi i16 [ %95, %94 ], [ 0, %92 ]
  %98 = zext i16 %97 to i32
  br i1 %72, label %101, label %99

99:                                               ; preds = %96
  %100 = load i16, ptr %93, align 2, !tbaa !87
  br label %101

101:                                              ; preds = %96, %99
  %102 = phi i16 [ %100, %99 ], [ 0, %96 ]
  %103 = zext i16 %102 to i64
  %104 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %103, i32 4
  store i32 %98, ptr %104, align 4, !tbaa !88
  br label %105

105:                                              ; preds = %101, %75
  br i1 %74, label %112, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !89
  %109 = zext i16 %108 to i32
  %110 = zext i16 %108 to i64
  %111 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %110, i32 3
  store i32 %109, ptr %111, align 4, !tbaa !90
  br label %112

112:                                              ; preds = %106, %105
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1
  %114 = add nuw nsw i64 %76, 1
  %115 = icmp eq i64 %114, %67
  br i1 %115, label %116, label %75, !llvm.loop !91

116:                                              ; preds = %112, %65, %61, %57
  %117 = phi i32 [ 0, %57 ], [ 0, %61 ], [ 1, %65 ], [ 1, %112 ]
  %118 = add nuw nsw i64 %58, 1
  %119 = load i64, ptr %29, align 8, !tbaa !54
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %57, label %121, !llvm.loop !92

121:                                              ; preds = %116, %46
  %122 = phi i32 [ 1, %46 ], [ %117, %116 ]
  %123 = tail call ptr @DestroyCacheView(ptr noundef %47) #14
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = tail call ptr @RelinquishMagickMemory(ptr noundef %44) #14
  %127 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #14
  br label %2372

128:                                              ; preds = %121
  %129 = call ptr @ResetMagickMemory(ptr noundef nonnull %14, i32 noundef 0, i64 noundef 20) #14
  %130 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !81
  %132 = icmp eq i32 %131, 12
  %133 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %134 = load i32, ptr %133, align 8, !tbaa !82
  %135 = icmp eq i32 %134, 0
  %136 = load i32, ptr %14, align 4, !tbaa !83
  %137 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 1
  %138 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 2
  %139 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 4
  %140 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 3
  %141 = load i32, ptr %137, align 4, !tbaa !85
  %142 = load i32, ptr %138, align 4, !tbaa !86
  %143 = load i32, ptr %139, align 4, !tbaa !88
  %144 = load i32, ptr %140, align 4, !tbaa !90
  br label %145

145:                                              ; preds = %128, %197
  %146 = phi i32 [ %144, %128 ], [ %198, %197 ]
  %147 = phi i32 [ %143, %128 ], [ %188, %197 ]
  %148 = phi i32 [ %142, %128 ], [ %178, %197 ]
  %149 = phi i32 [ %141, %128 ], [ %169, %197 ]
  %150 = phi i64 [ 0, %128 ], [ %199, %197 ]
  %151 = phi i32 [ %136, %128 ], [ %160, %197 ]
  %152 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %150
  %153 = load i32, ptr %152, align 4, !tbaa !83
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %159, label %155

155:                                              ; preds = %145
  %156 = add i32 %151, 1
  store i32 %156, ptr %14, align 4, !tbaa !83
  %157 = zext i32 %151 to i64
  %158 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %157
  store i32 %153, ptr %158, align 4, !tbaa !83
  br label %159

159:                                              ; preds = %155, %145
  %160 = phi i32 [ %156, %155 ], [ %151, %145 ]
  %161 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %150, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !85
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %168, label %164

164:                                              ; preds = %159
  %165 = add i32 %149, 1
  store i32 %165, ptr %137, align 4, !tbaa !85
  %166 = zext i32 %149 to i64
  %167 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %166, i32 1
  store i32 %162, ptr %167, align 4, !tbaa !85
  br label %168

168:                                              ; preds = %164, %159
  %169 = phi i32 [ %165, %164 ], [ %149, %159 ]
  %170 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %150, i32 2
  %171 = load i32, ptr %170, align 4, !tbaa !86
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %177, label %173

173:                                              ; preds = %168
  %174 = add i32 %148, 1
  store i32 %174, ptr %138, align 4, !tbaa !86
  %175 = zext i32 %148 to i64
  %176 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %175, i32 2
  store i32 %171, ptr %176, align 4, !tbaa !86
  br label %177

177:                                              ; preds = %173, %168
  %178 = phi i32 [ %174, %173 ], [ %148, %168 ]
  br i1 %132, label %179, label %187

179:                                              ; preds = %177
  %180 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %150, i32 4
  %181 = load i32, ptr %180, align 4, !tbaa !88
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = add i32 %147, 1
  store i32 %184, ptr %139, align 4, !tbaa !88
  %185 = zext i32 %147 to i64
  %186 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %185, i32 4
  store i32 %181, ptr %186, align 4, !tbaa !88
  br label %187

187:                                              ; preds = %179, %183, %177
  %188 = phi i32 [ %147, %179 ], [ %184, %183 ], [ %147, %177 ]
  br i1 %135, label %197, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %150, i32 3
  %191 = load i32, ptr %190, align 4, !tbaa !90
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = add i32 %146, 1
  store i32 %194, ptr %140, align 4, !tbaa !90
  %195 = zext i32 %146 to i64
  %196 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %195, i32 3
  store i32 %191, ptr %196, align 4, !tbaa !90
  br label %197

197:                                              ; preds = %187, %193, %189
  %198 = phi i32 [ %146, %187 ], [ %194, %193 ], [ %146, %189 ]
  %199 = add nuw nsw i64 %150, 1
  %200 = icmp eq i64 %199, 65536
  br i1 %200, label %201, label %145, !llvm.loop !93

201:                                              ; preds = %197
  %202 = load i32, ptr %14, align 4, !tbaa !83
  %203 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 1
  %204 = load i32, ptr %203, align 4, !tbaa !85
  %205 = call i32 @llvm.umax.i32(i32 %204, i32 %202)
  %206 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 2
  %207 = load i32, ptr %206, align 4, !tbaa !86
  %208 = call i32 @llvm.umax.i32(i32 %207, i32 %205)
  %209 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %210 = load i32, ptr %209, align 4, !tbaa !81
  %211 = icmp eq i32 %210, 12
  %212 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 4
  %213 = load i32, ptr %212, align 4
  %214 = call i32 @llvm.umax.i32(i32 %213, i32 %208)
  %215 = select i1 %211, i32 %214, i32 %208
  %216 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %217 = load i32, ptr %216, align 8, !tbaa !82
  %218 = icmp eq i32 %217, 0
  %219 = getelementptr inbounds %struct._LongPixelPacket, ptr %14, i64 0, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = call i32 @llvm.umax.i32(i32 %220, i32 %215)
  %222 = select i1 %218, i32 %215, i32 %221
  %223 = zext i32 %222 to i64
  %224 = call ptr @AcquireQuantumMemory(i64 noundef %223, i64 noundef 8) #16
  %225 = shl i32 %222, 1
  %226 = add i32 %225, 2
  %227 = zext i32 %226 to i64
  %228 = call ptr @AcquireQuantumMemory(i64 noundef %227, i64 noundef 160) #16
  %229 = call ptr @AcquireQuantumMemory(i64 noundef %227, i64 noundef 160) #16
  %230 = call ptr @AcquireQuantumMemory(i64 noundef %227, i64 noundef 160) #16
  %231 = call ptr @AcquireQuantumMemory(i64 noundef %223, i64 noundef 8) #16
  %232 = call ptr @AcquireQuantumMemory(i64 noundef %223, i64 noundef 160) #16
  %233 = icmp eq ptr %224, null
  %234 = icmp eq ptr %228, null
  %235 = select i1 %233, i1 true, i1 %234
  %236 = icmp eq ptr %229, null
  %237 = select i1 %235, i1 true, i1 %236
  %238 = icmp eq ptr %230, null
  %239 = select i1 %237, i1 true, i1 %238
  %240 = icmp eq ptr %231, null
  %241 = select i1 %239, i1 true, i1 %240
  %242 = icmp eq ptr %232, null
  %243 = select i1 %241, i1 true, i1 %242
  br i1 %243, label %244, label %285

244:                                              ; preds = %201
  br i1 %240, label %256, label %245

245:                                              ; preds = %244
  %246 = icmp eq i32 %222, 0
  br i1 %246, label %254, label %247

247:                                              ; preds = %245, %247
  %248 = phi i64 [ %252, %247 ], [ 0, %245 ]
  %249 = getelementptr inbounds ptr, ptr %231, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !94
  %251 = call ptr @RelinquishMagickMemory(ptr noundef %250) #14
  store ptr %251, ptr %249, align 8, !tbaa !94
  %252 = add nuw nsw i64 %248, 1
  %253 = icmp eq i64 %252, %223
  br i1 %253, label %254, label %247, !llvm.loop !95

254:                                              ; preds = %247, %245
  %255 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %231) #14
  br label %256

256:                                              ; preds = %254, %244
  br i1 %242, label %259, label %257

257:                                              ; preds = %256
  %258 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %232) #14
  br label %259

259:                                              ; preds = %257, %256
  br i1 %238, label %262, label %260

260:                                              ; preds = %259
  %261 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %230) #14
  br label %262

262:                                              ; preds = %260, %259
  br i1 %236, label %265, label %263

263:                                              ; preds = %262
  %264 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %229) #14
  br label %265

265:                                              ; preds = %263, %262
  br i1 %234, label %268, label %266

266:                                              ; preds = %265
  %267 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %228) #14
  br label %268

268:                                              ; preds = %266, %265
  br i1 %233, label %280, label %269

269:                                              ; preds = %268
  %270 = icmp eq i32 %222, 0
  br i1 %270, label %278, label %271

271:                                              ; preds = %269, %271
  %272 = phi i64 [ %276, %271 ], [ 0, %269 ]
  %273 = getelementptr inbounds ptr, ptr %224, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !94
  %275 = call ptr @RelinquishMagickMemory(ptr noundef %274) #14
  store ptr %275, ptr %273, align 8, !tbaa !94
  %276 = add nuw nsw i64 %272, 1
  %277 = icmp eq i64 %276, %223
  br i1 %277, label %278, label %271, !llvm.loop !96

278:                                              ; preds = %271, %269
  %279 = call ptr @RelinquishMagickMemory(ptr noundef %224) #14
  br label %280

280:                                              ; preds = %278, %268
  %281 = call ptr @RelinquishMagickMemory(ptr noundef %44) #14
  %282 = call ptr @RelinquishMagickMemory(ptr noundef %33) #14
  %283 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %284 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %283) #14
  br label %2372

285:                                              ; preds = %201
  %286 = call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 160) #14
  %287 = mul nuw nsw i64 %227, 160
  %288 = call ptr @ResetMagickMemory(ptr noundef %228, i32 noundef 0, i64 noundef %287) #14
  %289 = call ptr @ResetMagickMemory(ptr noundef %229, i32 noundef 0, i64 noundef %287) #14
  %290 = call ptr @ResetMagickMemory(ptr noundef %230, i32 noundef 0, i64 noundef %287) #14
  %291 = call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 160) #14
  %292 = mul nuw nsw i64 %223, 160
  %293 = call ptr @ResetMagickMemory(ptr noundef %232, i32 noundef 0, i64 noundef %292) #14
  %294 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 160) #14
  %295 = zext i32 %225 to i64
  %296 = mul nuw nsw i64 %295, 160
  %297 = call ptr @ResetMagickMemory(ptr noundef %229, i32 noundef 0, i64 noundef %296) #14
  %298 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 160) #14
  %299 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 160) #14
  %300 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 160) #14
  %301 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 160) #14
  %302 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 160) #14
  %303 = call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 160) #14
  %304 = icmp eq i32 %222, 0
  br i1 %304, label %350, label %305

305:                                              ; preds = %285, %317
  %306 = phi i64 [ %321, %317 ], [ 0, %285 ]
  %307 = call ptr @AcquireQuantumMemory(i64 noundef %223, i64 noundef 160) #16
  %308 = getelementptr inbounds ptr, ptr %224, i64 %306
  store ptr %307, ptr %308, align 8, !tbaa !94
  %309 = call ptr @AcquireQuantumMemory(i64 noundef %223, i64 noundef 160) #16
  %310 = getelementptr inbounds ptr, ptr %231, i64 %306
  store ptr %309, ptr %310, align 8, !tbaa !94
  %311 = load ptr, ptr %308, align 8, !tbaa !94
  %312 = icmp eq ptr %311, null
  %313 = icmp eq ptr %309, null
  %314 = select i1 %312, i1 true, i1 %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %305
  %316 = icmp eq i64 %306, 0
  br i1 %316, label %339, label %323

317:                                              ; preds = %305
  %318 = call ptr @ResetMagickMemory(ptr noundef nonnull %311, i32 noundef 0, i64 noundef %292) #14
  %319 = load ptr, ptr %310, align 8, !tbaa !94
  %320 = call ptr @ResetMagickMemory(ptr noundef %319, i32 noundef 0, i64 noundef %292) #14
  %321 = add nuw nsw i64 %306, 1
  %322 = icmp eq i64 %321, %223
  br i1 %322, label %350, label %305, !llvm.loop !97

323:                                              ; preds = %315, %337
  %324 = phi i64 [ %325, %337 ], [ %306, %315 ]
  %325 = add nsw i64 %324, -1
  %326 = getelementptr inbounds ptr, ptr %231, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !94
  %328 = icmp eq ptr %327, null
  br i1 %328, label %331, label %329

329:                                              ; preds = %323
  %330 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %327) #14
  store ptr %330, ptr %326, align 8, !tbaa !94
  br label %331

331:                                              ; preds = %329, %323
  %332 = getelementptr inbounds ptr, ptr %224, i64 %325
  %333 = load ptr, ptr %332, align 8, !tbaa !94
  %334 = icmp eq ptr %333, null
  br i1 %334, label %337, label %335

335:                                              ; preds = %331
  %336 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %333) #14
  store ptr %336, ptr %332, align 8, !tbaa !94
  br label %337

337:                                              ; preds = %331, %335
  %338 = icmp sgt i64 %324, 1
  br i1 %338, label %323, label %339, !llvm.loop !98

339:                                              ; preds = %337, %315
  %340 = call ptr @RelinquishMagickMemory(ptr noundef %231) #14
  %341 = call ptr @RelinquishMagickMemory(ptr noundef %224) #14
  %342 = call ptr @RelinquishMagickMemory(ptr noundef %232) #14
  %343 = call ptr @RelinquishMagickMemory(ptr noundef %230) #14
  %344 = call ptr @RelinquishMagickMemory(ptr noundef %229) #14
  %345 = call ptr @RelinquishMagickMemory(ptr noundef %228) #14
  %346 = call ptr @RelinquishMagickMemory(ptr noundef %44) #14
  %347 = call ptr @RelinquishMagickMemory(ptr noundef %33) #14
  %348 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %349 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 891, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %348) #14
  br label %2372

350:                                              ; preds = %317, %285
  %351 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #14
  %352 = load i64, ptr %29, align 8, !tbaa !54
  %353 = icmp sgt i64 %352, 0
  br i1 %353, label %354, label %575

354:                                              ; preds = %350
  %355 = shl i64 %1, 1
  %356 = add i64 %1, 2
  %357 = mul i64 %1, 3
  br label %358

358:                                              ; preds = %354, %566
  %359 = phi i64 [ 0, %354 ], [ %569, %566 ]
  %360 = phi i32 [ 1, %354 ], [ %568, %566 ]
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %566, label %362

362:                                              ; preds = %358
  %363 = load i64, ptr %24, align 8, !tbaa !53
  %364 = add i64 %363, %355
  %365 = call ptr @GetCacheViewVirtualPixels(ptr noundef %351, i64 noundef %4, i64 noundef %359, i64 noundef %364, i64 noundef %356, ptr noundef %2) #15
  %366 = icmp eq ptr %365, null
  br i1 %366, label %566, label %367

367:                                              ; preds = %362
  %368 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %351) #14
  %369 = getelementptr inbounds i16, ptr %368, i64 %1
  %370 = load i64, ptr %24, align 8, !tbaa !53
  %371 = icmp sgt i64 %370, 0
  br i1 %371, label %372, label %566

372:                                              ; preds = %367
  %373 = getelementptr inbounds %struct._PixelPacket, ptr %365, i64 %1
  %374 = load i32, ptr %209, align 4, !tbaa !81
  %375 = icmp eq i32 %374, 12
  %376 = load i32, ptr %216, align 8, !tbaa !82
  %377 = icmp eq i32 %376, 0
  %378 = add i64 %370, %1
  %379 = add i64 %370, %355
  %380 = add i64 %357, %370
  %381 = icmp eq ptr %368, null
  br label %382

382:                                              ; preds = %372, %562
  %383 = phi i64 [ 0, %372 ], [ %564, %562 ]
  %384 = phi ptr [ %373, %372 ], [ %563, %562 ]
  %385 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 0, i32 2
  %386 = load i16, ptr %385, align 2, !tbaa !66
  %387 = zext i16 %386 to i32
  %388 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 0, i32 1
  %389 = load i16, ptr %388, align 2, !tbaa !67
  %390 = zext i16 %389 to i32
  %391 = load i16, ptr %384, align 2, !tbaa !68
  %392 = zext i16 %391 to i32
  %393 = getelementptr inbounds i16, ptr %369, i64 %383
  %394 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 0, i32 3
  br label %395

395:                                              ; preds = %382, %559
  %396 = phi i64 [ 0, %382 ], [ %560, %559 ]
  switch i64 %396, label %400 [
    i64 3, label %399
    i64 1, label %397
    i64 2, label %398
  ]

397:                                              ; preds = %395
  br label %400

398:                                              ; preds = %395
  br label %400

399:                                              ; preds = %395
  br label %400

400:                                              ; preds = %395, %399, %398, %397
  %401 = phi i64 [ %378, %398 ], [ %379, %397 ], [ %380, %399 ], [ %1, %395 ]
  br label %402

402:                                              ; preds = %402, %400
  %403 = phi i64 [ 0, %400 ], [ %407, %402 ]
  %404 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !83
  %406 = icmp eq i32 %405, %387
  %407 = add nuw nsw i64 %403, 1
  br i1 %406, label %408, label %402, !llvm.loop !99

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 %401, i32 2
  %410 = load i16, ptr %409, align 2, !tbaa !66
  %411 = zext i16 %410 to i32
  br label %412

412:                                              ; preds = %412, %408
  %413 = phi i64 [ %417, %412 ], [ 0, %408 ]
  %414 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %413
  %415 = load i32, ptr %414, align 4, !tbaa !83
  %416 = icmp eq i32 %415, %411
  %417 = add nuw nsw i64 %413, 1
  br i1 %416, label %418, label %412, !llvm.loop !100

418:                                              ; preds = %412
  %419 = getelementptr inbounds ptr, ptr %224, i64 %403
  %420 = load ptr, ptr %419, align 8, !tbaa !94
  %421 = getelementptr inbounds %struct._ChannelStatistics, ptr %420, i64 %413
  %422 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %421, i64 0, i64 %396
  %423 = load double, ptr %422, align 8, !tbaa !101
  %424 = fadd double %423, 1.000000e+00
  store double %424, ptr %422, align 8, !tbaa !101
  %425 = getelementptr inbounds ptr, ptr %224, i64 %413
  %426 = load ptr, ptr %425, align 8, !tbaa !94
  %427 = getelementptr inbounds %struct._ChannelStatistics, ptr %426, i64 %403
  %428 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %427, i64 0, i64 %396
  %429 = load double, ptr %428, align 8, !tbaa !101
  %430 = fadd double %429, 1.000000e+00
  store double %430, ptr %428, align 8, !tbaa !101
  br label %431

431:                                              ; preds = %431, %418
  %432 = phi i64 [ 0, %418 ], [ %436, %431 ]
  %433 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %432, i32 1
  %434 = load i32, ptr %433, align 4, !tbaa !85
  %435 = icmp eq i32 %434, %390
  %436 = add nuw nsw i64 %432, 1
  br i1 %435, label %437, label %431, !llvm.loop !103

437:                                              ; preds = %431
  %438 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 %401, i32 1
  %439 = load i16, ptr %438, align 2, !tbaa !67
  %440 = zext i16 %439 to i32
  br label %441

441:                                              ; preds = %441, %437
  %442 = phi i64 [ %446, %441 ], [ 0, %437 ]
  %443 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %442, i32 1
  %444 = load i32, ptr %443, align 4, !tbaa !85
  %445 = icmp eq i32 %444, %440
  %446 = add nuw nsw i64 %442, 1
  br i1 %445, label %447, label %441, !llvm.loop !104

447:                                              ; preds = %441
  %448 = getelementptr inbounds ptr, ptr %224, i64 %432
  %449 = load ptr, ptr %448, align 8, !tbaa !94
  %450 = getelementptr inbounds %struct._ChannelStatistics, ptr %449, i64 %442
  %451 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %450, i64 0, i64 %396, i32 1
  %452 = load double, ptr %451, align 8, !tbaa !105
  %453 = fadd double %452, 1.000000e+00
  store double %453, ptr %451, align 8, !tbaa !105
  %454 = getelementptr inbounds ptr, ptr %224, i64 %442
  %455 = load ptr, ptr %454, align 8, !tbaa !94
  %456 = getelementptr inbounds %struct._ChannelStatistics, ptr %455, i64 %432
  %457 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %456, i64 0, i64 %396, i32 1
  %458 = load double, ptr %457, align 8, !tbaa !105
  %459 = fadd double %458, 1.000000e+00
  store double %459, ptr %457, align 8, !tbaa !105
  br label %460

460:                                              ; preds = %460, %447
  %461 = phi i64 [ 0, %447 ], [ %465, %460 ]
  %462 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %461, i32 2
  %463 = load i32, ptr %462, align 4, !tbaa !86
  %464 = icmp eq i32 %463, %392
  %465 = add nuw nsw i64 %461, 1
  br i1 %464, label %466, label %460, !llvm.loop !106

466:                                              ; preds = %460
  %467 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 %401
  %468 = load i16, ptr %467, align 2, !tbaa !68
  %469 = zext i16 %468 to i32
  br label %470

470:                                              ; preds = %470, %466
  %471 = phi i64 [ %475, %470 ], [ 0, %466 ]
  %472 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %471, i32 2
  %473 = load i32, ptr %472, align 4, !tbaa !86
  %474 = icmp eq i32 %473, %469
  %475 = add nuw nsw i64 %471, 1
  br i1 %474, label %476, label %470, !llvm.loop !107

476:                                              ; preds = %470
  %477 = getelementptr inbounds ptr, ptr %224, i64 %461
  %478 = load ptr, ptr %477, align 8, !tbaa !94
  %479 = getelementptr inbounds %struct._ChannelStatistics, ptr %478, i64 %471
  %480 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %479, i64 0, i64 %396, i32 2
  %481 = load double, ptr %480, align 8, !tbaa !108
  %482 = fadd double %481, 1.000000e+00
  store double %482, ptr %480, align 8, !tbaa !108
  %483 = getelementptr inbounds ptr, ptr %224, i64 %471
  %484 = load ptr, ptr %483, align 8, !tbaa !94
  %485 = getelementptr inbounds %struct._ChannelStatistics, ptr %484, i64 %461
  %486 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %485, i64 0, i64 %396, i32 2
  %487 = load double, ptr %486, align 8, !tbaa !108
  %488 = fadd double %487, 1.000000e+00
  store double %488, ptr %486, align 8, !tbaa !108
  br i1 %375, label %489, label %526

489:                                              ; preds = %476, %495
  %490 = phi i64 [ %499, %495 ], [ 0, %476 ]
  %491 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %490, i32 4
  %492 = load i32, ptr %491, align 4, !tbaa !88
  br i1 %381, label %495, label %493

493:                                              ; preds = %489
  %494 = load i16, ptr %393, align 2, !tbaa !87
  br label %495

495:                                              ; preds = %489, %493
  %496 = phi i16 [ %494, %493 ], [ 0, %489 ]
  %497 = zext i16 %496 to i32
  %498 = icmp eq i32 %492, %497
  %499 = add nuw nsw i64 %490, 1
  br i1 %498, label %500, label %489, !llvm.loop !109

500:                                              ; preds = %495
  %501 = getelementptr inbounds i16, ptr %393, i64 %401
  br label %502

502:                                              ; preds = %508, %500
  %503 = phi i64 [ %512, %508 ], [ 0, %500 ]
  %504 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %503, i32 4
  %505 = load i32, ptr %504, align 4, !tbaa !88
  br i1 %381, label %508, label %506

506:                                              ; preds = %502
  %507 = load i16, ptr %501, align 2, !tbaa !87
  br label %508

508:                                              ; preds = %502, %506
  %509 = phi i16 [ %507, %506 ], [ 0, %502 ]
  %510 = zext i16 %509 to i32
  %511 = icmp eq i32 %505, %510
  %512 = add nuw nsw i64 %503, 1
  br i1 %511, label %513, label %502, !llvm.loop !110

513:                                              ; preds = %508
  %514 = getelementptr inbounds ptr, ptr %224, i64 %490
  %515 = load ptr, ptr %514, align 8, !tbaa !94
  %516 = getelementptr inbounds %struct._ChannelStatistics, ptr %515, i64 %503
  %517 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %516, i64 0, i64 %396, i32 4
  %518 = load double, ptr %517, align 8, !tbaa !111
  %519 = fadd double %518, 1.000000e+00
  store double %519, ptr %517, align 8, !tbaa !111
  %520 = getelementptr inbounds ptr, ptr %224, i64 %503
  %521 = load ptr, ptr %520, align 8, !tbaa !94
  %522 = getelementptr inbounds %struct._ChannelStatistics, ptr %521, i64 %490
  %523 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %522, i64 0, i64 %396, i32 4
  %524 = load double, ptr %523, align 8, !tbaa !111
  %525 = fadd double %524, 1.000000e+00
  store double %525, ptr %523, align 8, !tbaa !111
  br label %526

526:                                              ; preds = %513, %476
  br i1 %377, label %559, label %527

527:                                              ; preds = %526
  %528 = load i16, ptr %394, align 2, !tbaa !89
  %529 = zext i16 %528 to i32
  br label %530

530:                                              ; preds = %530, %527
  %531 = phi i64 [ %535, %530 ], [ 0, %527 ]
  %532 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %531, i32 3
  %533 = load i32, ptr %532, align 4, !tbaa !90
  %534 = icmp eq i32 %533, %529
  %535 = add nuw nsw i64 %531, 1
  br i1 %534, label %536, label %530, !llvm.loop !112

536:                                              ; preds = %530
  %537 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 %401, i32 3
  %538 = load i16, ptr %537, align 2, !tbaa !89
  %539 = zext i16 %538 to i32
  br label %540

540:                                              ; preds = %540, %536
  %541 = phi i64 [ %545, %540 ], [ 0, %536 ]
  %542 = getelementptr inbounds %struct._LongPixelPacket, ptr %44, i64 %541, i32 3
  %543 = load i32, ptr %542, align 4, !tbaa !90
  %544 = icmp eq i32 %543, %539
  %545 = add nuw nsw i64 %541, 1
  br i1 %544, label %546, label %540, !llvm.loop !113

546:                                              ; preds = %540
  %547 = getelementptr inbounds ptr, ptr %224, i64 %531
  %548 = load ptr, ptr %547, align 8, !tbaa !94
  %549 = getelementptr inbounds %struct._ChannelStatistics, ptr %548, i64 %541
  %550 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %549, i64 0, i64 %396, i32 3
  %551 = load double, ptr %550, align 8, !tbaa !114
  %552 = fadd double %551, 1.000000e+00
  store double %552, ptr %550, align 8, !tbaa !114
  %553 = getelementptr inbounds ptr, ptr %224, i64 %541
  %554 = load ptr, ptr %553, align 8, !tbaa !94
  %555 = getelementptr inbounds %struct._ChannelStatistics, ptr %554, i64 %531
  %556 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %555, i64 0, i64 %396, i32 3
  %557 = load double, ptr %556, align 8, !tbaa !114
  %558 = fadd double %557, 1.000000e+00
  store double %558, ptr %556, align 8, !tbaa !114
  br label %559

559:                                              ; preds = %526, %546
  %560 = add nuw nsw i64 %396, 1
  %561 = icmp eq i64 %560, 4
  br i1 %561, label %562, label %395, !llvm.loop !115

562:                                              ; preds = %559
  %563 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 1
  %564 = add nuw nsw i64 %383, 1
  %565 = icmp eq i64 %564, %370
  br i1 %565, label %566, label %382, !llvm.loop !116

566:                                              ; preds = %562, %367, %362, %358
  %567 = phi i1 [ true, %358 ], [ true, %362 ], [ false, %367 ], [ false, %562 ]
  %568 = phi i32 [ 0, %358 ], [ 0, %362 ], [ 1, %367 ], [ 1, %562 ]
  %569 = add nuw nsw i64 %359, 1
  %570 = load i64, ptr %29, align 8, !tbaa !54
  %571 = icmp slt i64 %569, %570
  br i1 %571, label %358, label %572, !llvm.loop !117

572:                                              ; preds = %566
  %573 = call ptr @RelinquishMagickMemory(ptr noundef %44) #14
  %574 = call ptr @DestroyCacheView(ptr noundef %351) #14
  br i1 %567, label %584, label %578

575:                                              ; preds = %350
  %576 = call ptr @RelinquishMagickMemory(ptr noundef %44) #14
  %577 = call ptr @DestroyCacheView(ptr noundef %351) #14
  br label %578

578:                                              ; preds = %575, %572
  %579 = icmp eq i32 %222, 0
  %580 = load i64, ptr %29, align 8, !tbaa !54
  %581 = sub i64 %580, %1
  %582 = sub i64 %580, %1
  %583 = sub i64 %580, %1
  br label %606

584:                                              ; preds = %572
  %585 = icmp eq i32 %222, 0
  br i1 %585, label %593, label %586

586:                                              ; preds = %584, %586
  %587 = phi i64 [ %591, %586 ], [ 0, %584 ]
  %588 = getelementptr inbounds ptr, ptr %224, i64 %587
  %589 = load ptr, ptr %588, align 8, !tbaa !94
  %590 = call ptr @RelinquishMagickMemory(ptr noundef %589) #14
  store ptr %590, ptr %588, align 8, !tbaa !94
  %591 = add nuw nsw i64 %587, 1
  %592 = icmp eq i64 %591, %223
  br i1 %592, label %593, label %586, !llvm.loop !118

593:                                              ; preds = %586, %584
  %594 = call ptr @RelinquishMagickMemory(ptr noundef %224) #14
  %595 = call ptr @RelinquishMagickMemory(ptr noundef %33) #14
  %596 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %597 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %596) #14
  br label %2372

598:                                              ; preds = %669
  %599 = getelementptr %struct._ChannelStatistics, ptr %229, i64 2
  %600 = icmp eq i32 %222, 0
  %601 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1
  %602 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2
  %603 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4
  %604 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32
  %605 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8
  br label %672

606:                                              ; preds = %578, %669
  %607 = phi i64 [ 0, %578 ], [ %670, %669 ]
  switch i64 %607, label %608 [
    i64 3, label %616
    i64 1, label %611
    i64 2, label %613
  ]

608:                                              ; preds = %606
  %609 = load i64, ptr %24, align 8, !tbaa !53
  %610 = sub i64 %609, %1
  br label %619

611:                                              ; preds = %606
  %612 = load i64, ptr %24, align 8, !tbaa !53
  br label %619

613:                                              ; preds = %606
  %614 = load i64, ptr %24, align 8, !tbaa !53
  %615 = sub i64 %614, %1
  br label %619

616:                                              ; preds = %606
  %617 = load i64, ptr %24, align 8, !tbaa !53
  %618 = sub i64 %617, %1
  br label %619

619:                                              ; preds = %616, %613, %611, %608
  %620 = phi i64 [ %618, %616 ], [ %615, %613 ], [ %612, %611 ], [ %610, %608 ]
  %621 = phi i64 [ %583, %616 ], [ %581, %613 ], [ %582, %611 ], [ %580, %608 ]
  %622 = uitofp i64 %621 to double
  %623 = fmul double %622, 2.000000e+00
  %624 = uitofp i64 %620 to double
  %625 = fmul double %623, %624
  %626 = fcmp olt double %625, 0.000000e+00
  %627 = select i1 %626, double -1.000000e+00, double 1.000000e+00
  %628 = fmul double %625, %627
  %629 = fcmp ult double %628, 1.000000e-15
  %630 = fdiv double 1.000000e+00, %625
  %631 = fdiv double %627, 1.000000e-15
  %632 = select i1 %629, double %631, double %630
  br i1 %579, label %669, label %633

633:                                              ; preds = %619
  %634 = load i32, ptr %209, align 4, !tbaa !81
  %635 = icmp eq i32 %634, 12
  %636 = load i32, ptr %216, align 8, !tbaa !82
  %637 = icmp eq i32 %636, 0
  br label %638

638:                                              ; preds = %633, %666
  %639 = phi i64 [ 0, %633 ], [ %667, %666 ]
  br label %640

640:                                              ; preds = %638, %663
  %641 = phi i64 [ 0, %638 ], [ %664, %663 ]
  %642 = getelementptr inbounds ptr, ptr %224, i64 %641
  %643 = load ptr, ptr %642, align 8, !tbaa !94
  %644 = getelementptr inbounds %struct._ChannelStatistics, ptr %643, i64 %639
  %645 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %644, i64 0, i64 %607
  %646 = load double, ptr %645, align 8, !tbaa !101
  %647 = fmul double %632, %646
  store double %647, ptr %645, align 8, !tbaa !101
  %648 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %644, i64 0, i64 %607, i32 1
  %649 = load double, ptr %648, align 8, !tbaa !105
  %650 = fmul double %632, %649
  store double %650, ptr %648, align 8, !tbaa !105
  %651 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %644, i64 0, i64 %607, i32 2
  %652 = load double, ptr %651, align 8, !tbaa !108
  %653 = fmul double %632, %652
  store double %653, ptr %651, align 8, !tbaa !108
  br i1 %635, label %654, label %658

654:                                              ; preds = %640
  %655 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %644, i64 0, i64 %607, i32 4
  %656 = load double, ptr %655, align 8, !tbaa !111
  %657 = fmul double %632, %656
  store double %657, ptr %655, align 8, !tbaa !111
  br label %658

658:                                              ; preds = %654, %640
  br i1 %637, label %663, label %659

659:                                              ; preds = %658
  %660 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %644, i64 0, i64 %607, i32 3
  %661 = load double, ptr %660, align 8, !tbaa !114
  %662 = fmul double %632, %661
  store double %662, ptr %660, align 8, !tbaa !114
  br label %663

663:                                              ; preds = %658, %659
  %664 = add nuw nsw i64 %641, 1
  %665 = icmp eq i64 %664, %223
  br i1 %665, label %666, label %640, !llvm.loop !119

666:                                              ; preds = %663
  %667 = add nuw nsw i64 %639, 1
  %668 = icmp eq i64 %667, %223
  br i1 %668, label %669, label %638, !llvm.loop !120

669:                                              ; preds = %666, %619
  %670 = add nuw nsw i64 %607, 1
  %671 = icmp eq i64 %670, 4
  br i1 %671, label %598, label %606, !llvm.loop !121

672:                                              ; preds = %598, %1133
  %673 = phi i64 [ 0, %598 ], [ %1134, %1133 ]
  br i1 %600, label %1035, label %674

674:                                              ; preds = %672
  %675 = getelementptr inbounds [4 x double], ptr %601, i64 0, i64 %673
  %676 = getelementptr inbounds [4 x double], ptr %602, i64 0, i64 %673
  %677 = getelementptr inbounds [4 x double], ptr %603, i64 0, i64 %673
  %678 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %673
  %679 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %673, i32 1
  %680 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %673, i32 2
  %681 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 4, i64 %673
  %682 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 4, i64 %673
  %683 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 4, i64 %673
  %684 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 8, i64 %673
  %685 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 8, i64 %673
  %686 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 8, i64 %673
  %687 = getelementptr inbounds [4 x double], ptr %604, i64 0, i64 %673
  %688 = getelementptr inbounds [4 x double], ptr %605, i64 0, i64 %673
  %689 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %673, i32 4
  %690 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %673, i32 3
  %691 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 4, i64 %673
  %692 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 4, i64 %673
  %693 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 8, i64 %673
  %694 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 8, i64 %673
  %695 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %673
  %696 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %673
  %697 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %673, i32 1
  %698 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %673, i32 1
  %699 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %673, i32 2
  %700 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %673, i32 2
  %701 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %673, i32 4
  %702 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %673, i32 4
  %703 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %673, i32 3
  %704 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %673, i32 3
  br label %707

705:                                              ; preds = %1133
  %706 = icmp ugt i32 %225, 2
  br label %1136

707:                                              ; preds = %674, %1032
  %708 = phi i64 [ 0, %674 ], [ %1033, %1032 ]
  %709 = getelementptr inbounds %struct._ChannelStatistics, ptr %232, i64 %708
  %710 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %709, i64 0, i64 %673
  %711 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %709, i64 0, i64 %673, i32 1
  %712 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %709, i64 0, i64 %673, i32 2
  %713 = getelementptr %struct._ChannelStatistics, ptr %599, i64 %708
  %714 = getelementptr inbounds %struct._ChannelStatistics, ptr %230, i64 %708
  %715 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %714, i64 0, i64 %673
  %716 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %714, i64 0, i64 %673, i32 1
  %717 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %714, i64 0, i64 %673, i32 2
  %718 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %709, i64 0, i64 %673, i32 4
  %719 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %709, i64 0, i64 %673, i32 3
  %720 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %714, i64 0, i64 %673, i32 4
  %721 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %714, i64 0, i64 %673, i32 3
  br label %722

722:                                              ; preds = %707, %982
  %723 = phi i64 [ 0, %707 ], [ %983, %982 ]
  %724 = getelementptr inbounds ptr, ptr %224, i64 %723
  %725 = load ptr, ptr %724, align 8, !tbaa !94
  %726 = getelementptr inbounds %struct._ChannelStatistics, ptr %725, i64 %708
  %727 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673
  %728 = load double, ptr %727, align 8, !tbaa !101
  %729 = load double, ptr %675, align 8, !tbaa !55
  %730 = call double @llvm.fmuladd.f64(double %728, double %728, double %729)
  store double %730, ptr %675, align 8, !tbaa !55
  %731 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 1
  %732 = load double, ptr %731, align 8, !tbaa !105
  %733 = load double, ptr %676, align 8, !tbaa !55
  %734 = call double @llvm.fmuladd.f64(double %732, double %732, double %733)
  store double %734, ptr %676, align 8, !tbaa !55
  %735 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 2
  %736 = load double, ptr %735, align 8, !tbaa !108
  %737 = load double, ptr %677, align 8, !tbaa !55
  %738 = call double @llvm.fmuladd.f64(double %736, double %736, double %737)
  store double %738, ptr %677, align 8, !tbaa !55
  %739 = load i32, ptr %209, align 4, !tbaa !81
  %740 = icmp eq i32 %739, 12
  br i1 %740, label %741, label %746

741:                                              ; preds = %722
  %742 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 4
  %743 = load double, ptr %742, align 8, !tbaa !111
  %744 = load double, ptr %687, align 8, !tbaa !55
  %745 = call double @llvm.fmuladd.f64(double %743, double %743, double %744)
  store double %745, ptr %687, align 8, !tbaa !55
  br label %746

746:                                              ; preds = %741, %722
  %747 = load i32, ptr %216, align 8, !tbaa !82
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %754, label %749

749:                                              ; preds = %746
  %750 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 3
  %751 = load double, ptr %750, align 8, !tbaa !114
  %752 = load double, ptr %688, align 8, !tbaa !55
  %753 = call double @llvm.fmuladd.f64(double %751, double %751, double %752)
  store double %753, ptr %688, align 8, !tbaa !55
  br label %754

754:                                              ; preds = %749, %746
  %755 = load double, ptr %727, align 8, !tbaa !101
  %756 = load double, ptr %710, align 8, !tbaa !101
  %757 = fadd double %755, %756
  store double %757, ptr %710, align 8, !tbaa !101
  %758 = load double, ptr %731, align 8, !tbaa !105
  %759 = load double, ptr %711, align 8, !tbaa !105
  %760 = fadd double %758, %759
  store double %760, ptr %711, align 8, !tbaa !105
  %761 = load double, ptr %735, align 8, !tbaa !108
  %762 = load double, ptr %712, align 8, !tbaa !108
  %763 = fadd double %761, %762
  store double %763, ptr %712, align 8, !tbaa !108
  br i1 %740, label %764, label %769

764:                                              ; preds = %754
  %765 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 4
  %766 = load double, ptr %765, align 8, !tbaa !111
  %767 = load double, ptr %718, align 8, !tbaa !111
  %768 = fadd double %766, %767
  store double %768, ptr %718, align 8, !tbaa !111
  br label %769

769:                                              ; preds = %764, %754
  br i1 %748, label %775, label %770

770:                                              ; preds = %769
  %771 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 3
  %772 = load double, ptr %771, align 8, !tbaa !114
  %773 = load double, ptr %719, align 8, !tbaa !114
  %774 = fadd double %772, %773
  store double %774, ptr %719, align 8, !tbaa !114
  br label %775

775:                                              ; preds = %770, %769
  %776 = mul nuw nsw i64 %723, %708
  %777 = sitofp i64 %776 to double
  %778 = load double, ptr %727, align 8, !tbaa !101
  %779 = load double, ptr %678, align 8, !tbaa !101
  %780 = call double @llvm.fmuladd.f64(double %777, double %778, double %779)
  store double %780, ptr %678, align 8, !tbaa !101
  %781 = load double, ptr %731, align 8, !tbaa !105
  %782 = load double, ptr %679, align 8, !tbaa !105
  %783 = call double @llvm.fmuladd.f64(double %777, double %781, double %782)
  store double %783, ptr %679, align 8, !tbaa !105
  %784 = load double, ptr %735, align 8, !tbaa !108
  %785 = load double, ptr %680, align 8, !tbaa !108
  %786 = call double @llvm.fmuladd.f64(double %777, double %784, double %785)
  store double %786, ptr %680, align 8, !tbaa !108
  br i1 %740, label %787, label %792

787:                                              ; preds = %775
  %788 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 4
  %789 = load double, ptr %788, align 8, !tbaa !111
  %790 = load double, ptr %689, align 8, !tbaa !111
  %791 = call double @llvm.fmuladd.f64(double %777, double %789, double %790)
  store double %791, ptr %689, align 8, !tbaa !111
  br label %792

792:                                              ; preds = %787, %775
  br i1 %748, label %798, label %793

793:                                              ; preds = %792
  %794 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 3
  %795 = load double, ptr %794, align 8, !tbaa !114
  %796 = load double, ptr %690, align 8, !tbaa !114
  %797 = call double @llvm.fmuladd.f64(double %777, double %795, double %796)
  store double %797, ptr %690, align 8, !tbaa !114
  br label %798

798:                                              ; preds = %793, %792
  %799 = load double, ptr %727, align 8, !tbaa !101
  %800 = sub nsw i64 %708, %723
  %801 = mul nsw i64 %800, %800
  %802 = add nuw nsw i64 %801, 1
  %803 = sitofp i64 %802 to double
  %804 = fdiv double %799, %803
  %805 = load double, ptr %681, align 8, !tbaa !55
  %806 = fadd double %805, %804
  store double %806, ptr %681, align 8, !tbaa !55
  %807 = load double, ptr %731, align 8, !tbaa !105
  %808 = fdiv double %807, %803
  %809 = load double, ptr %682, align 8, !tbaa !55
  %810 = fadd double %809, %808
  store double %810, ptr %682, align 8, !tbaa !55
  %811 = load double, ptr %735, align 8, !tbaa !108
  %812 = fdiv double %811, %803
  %813 = load double, ptr %683, align 8, !tbaa !55
  %814 = fadd double %813, %812
  store double %814, ptr %683, align 8, !tbaa !55
  br i1 %740, label %815, label %821

815:                                              ; preds = %798
  %816 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 4
  %817 = load double, ptr %816, align 8, !tbaa !111
  %818 = fdiv double %817, %803
  %819 = load double, ptr %691, align 8, !tbaa !55
  %820 = fadd double %819, %818
  store double %820, ptr %691, align 8, !tbaa !55
  br label %821

821:                                              ; preds = %815, %798
  br i1 %748, label %828, label %822

822:                                              ; preds = %821
  %823 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 3
  %824 = load double, ptr %823, align 8, !tbaa !114
  %825 = fdiv double %824, %803
  %826 = load double, ptr %692, align 8, !tbaa !55
  %827 = fadd double %826, %825
  store double %827, ptr %692, align 8, !tbaa !55
  br label %828

828:                                              ; preds = %822, %821
  %829 = load double, ptr %727, align 8, !tbaa !101
  %830 = getelementptr %struct._ChannelStatistics, ptr %713, i64 %723
  %831 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %830, i64 0, i64 %673
  %832 = load double, ptr %831, align 8, !tbaa !101
  %833 = fadd double %829, %832
  store double %833, ptr %831, align 8, !tbaa !101
  %834 = load double, ptr %731, align 8, !tbaa !105
  %835 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %830, i64 0, i64 %673, i32 1
  %836 = load double, ptr %835, align 8, !tbaa !105
  %837 = fadd double %834, %836
  store double %837, ptr %835, align 8, !tbaa !105
  %838 = load double, ptr %735, align 8, !tbaa !108
  %839 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %830, i64 0, i64 %673, i32 2
  %840 = load double, ptr %839, align 8, !tbaa !108
  %841 = fadd double %838, %840
  store double %841, ptr %839, align 8, !tbaa !108
  br i1 %740, label %842, label %848

842:                                              ; preds = %828
  %843 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 4
  %844 = load double, ptr %843, align 8, !tbaa !111
  %845 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %830, i64 0, i64 %673, i32 4
  %846 = load double, ptr %845, align 8, !tbaa !111
  %847 = fadd double %844, %846
  store double %847, ptr %845, align 8, !tbaa !111
  br label %848

848:                                              ; preds = %842, %828
  br i1 %748, label %855, label %849

849:                                              ; preds = %848
  %850 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %726, i64 0, i64 %673, i32 3
  %851 = load double, ptr %850, align 8, !tbaa !114
  %852 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %830, i64 0, i64 %673, i32 3
  %853 = load double, ptr %852, align 8, !tbaa !114
  %854 = fadd double %851, %853
  store double %854, ptr %852, align 8, !tbaa !114
  br label %855

855:                                              ; preds = %849, %848
  %856 = load double, ptr %727, align 8, !tbaa !101
  %857 = call double @llvm.fabs.f64(double %856)
  %858 = fcmp olt double %857, 0x3DA5FD7FE1796495
  br i1 %858, label %861, label %859

859:                                              ; preds = %855
  %860 = call double @log10(double noundef %857) #14
  br label %861

861:                                              ; preds = %855, %859
  %862 = phi double [ %860, %859 ], [ -1.100000e+01, %855 ]
  %863 = load double, ptr %684, align 8, !tbaa !55
  %864 = fneg double %856
  %865 = call double @llvm.fmuladd.f64(double %864, double %862, double %863)
  store double %865, ptr %684, align 8, !tbaa !55
  %866 = load ptr, ptr %724, align 8, !tbaa !94
  %867 = getelementptr inbounds %struct._ChannelStatistics, ptr %866, i64 %708
  %868 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %867, i64 0, i64 %673, i32 1
  %869 = load double, ptr %868, align 8, !tbaa !105
  %870 = call double @llvm.fabs.f64(double %869)
  %871 = fcmp olt double %870, 0x3DA5FD7FE1796495
  br i1 %871, label %874, label %872

872:                                              ; preds = %861
  %873 = call double @log10(double noundef %870) #14
  br label %874

874:                                              ; preds = %861, %872
  %875 = phi double [ %873, %872 ], [ -1.100000e+01, %861 ]
  %876 = load double, ptr %685, align 8, !tbaa !55
  %877 = fneg double %869
  %878 = call double @llvm.fmuladd.f64(double %877, double %875, double %876)
  store double %878, ptr %685, align 8, !tbaa !55
  %879 = load ptr, ptr %724, align 8, !tbaa !94
  %880 = getelementptr inbounds %struct._ChannelStatistics, ptr %879, i64 %708
  %881 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %880, i64 0, i64 %673, i32 2
  %882 = load double, ptr %881, align 8, !tbaa !108
  %883 = call double @llvm.fabs.f64(double %882)
  %884 = fcmp olt double %883, 0x3DA5FD7FE1796495
  br i1 %884, label %887, label %885

885:                                              ; preds = %874
  %886 = call double @log10(double noundef %883) #14
  br label %887

887:                                              ; preds = %874, %885
  %888 = phi double [ %886, %885 ], [ -1.100000e+01, %874 ]
  %889 = load double, ptr %686, align 8, !tbaa !55
  %890 = fneg double %882
  %891 = call double @llvm.fmuladd.f64(double %890, double %888, double %889)
  store double %891, ptr %686, align 8, !tbaa !55
  %892 = load i32, ptr %209, align 4, !tbaa !81
  %893 = icmp eq i32 %892, 12
  br i1 %893, label %894, label %908

894:                                              ; preds = %887
  %895 = load ptr, ptr %724, align 8, !tbaa !94
  %896 = getelementptr inbounds %struct._ChannelStatistics, ptr %895, i64 %708
  %897 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %896, i64 0, i64 %673, i32 4
  %898 = load double, ptr %897, align 8, !tbaa !111
  %899 = call double @llvm.fabs.f64(double %898)
  %900 = fcmp olt double %899, 0x3DA5FD7FE1796495
  br i1 %900, label %903, label %901

901:                                              ; preds = %894
  %902 = call double @log10(double noundef %899) #14
  br label %903

903:                                              ; preds = %894, %901
  %904 = phi double [ %902, %901 ], [ -1.100000e+01, %894 ]
  %905 = load double, ptr %693, align 8, !tbaa !55
  %906 = fneg double %898
  %907 = call double @llvm.fmuladd.f64(double %906, double %904, double %905)
  store double %907, ptr %693, align 8, !tbaa !55
  br label %908

908:                                              ; preds = %903, %887
  %909 = load i32, ptr %216, align 8, !tbaa !82
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %925, label %911

911:                                              ; preds = %908
  %912 = load ptr, ptr %724, align 8, !tbaa !94
  %913 = getelementptr inbounds %struct._ChannelStatistics, ptr %912, i64 %708
  %914 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %913, i64 0, i64 %673, i32 3
  %915 = load double, ptr %914, align 8, !tbaa !114
  %916 = call double @llvm.fabs.f64(double %915)
  %917 = fcmp olt double %916, 0x3DA5FD7FE1796495
  br i1 %917, label %920, label %918

918:                                              ; preds = %911
  %919 = call double @log10(double noundef %916) #14
  br label %920

920:                                              ; preds = %911, %918
  %921 = phi double [ %919, %918 ], [ -1.100000e+01, %911 ]
  %922 = load double, ptr %694, align 8, !tbaa !55
  %923 = fneg double %915
  %924 = call double @llvm.fmuladd.f64(double %923, double %921, double %922)
  store double %924, ptr %694, align 8, !tbaa !55
  br label %925

925:                                              ; preds = %920, %908
  %926 = load ptr, ptr %724, align 8, !tbaa !94
  %927 = getelementptr inbounds %struct._ChannelStatistics, ptr %926, i64 %708
  %928 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %927, i64 0, i64 %673
  %929 = load double, ptr %928, align 8, !tbaa !101
  %930 = getelementptr inbounds %struct._ChannelStatistics, ptr %228, i64 %723
  %931 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %930, i64 0, i64 %673
  %932 = load double, ptr %931, align 8, !tbaa !101
  %933 = fadd double %929, %932
  store double %933, ptr %931, align 8, !tbaa !101
  %934 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %927, i64 0, i64 %673, i32 1
  %935 = load double, ptr %934, align 8, !tbaa !105
  %936 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %930, i64 0, i64 %673, i32 1
  %937 = load double, ptr %936, align 8, !tbaa !105
  %938 = fadd double %935, %937
  store double %938, ptr %936, align 8, !tbaa !105
  %939 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %927, i64 0, i64 %673, i32 2
  %940 = load double, ptr %939, align 8, !tbaa !108
  %941 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %930, i64 0, i64 %673, i32 2
  %942 = load double, ptr %941, align 8, !tbaa !108
  %943 = fadd double %940, %942
  store double %943, ptr %941, align 8, !tbaa !108
  %944 = load i32, ptr %209, align 4, !tbaa !81
  %945 = icmp eq i32 %944, 12
  br i1 %945, label %946, label %952

946:                                              ; preds = %925
  %947 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %927, i64 0, i64 %673, i32 4
  %948 = load double, ptr %947, align 8, !tbaa !111
  %949 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %930, i64 0, i64 %673, i32 4
  %950 = load double, ptr %949, align 8, !tbaa !111
  %951 = fadd double %948, %950
  store double %951, ptr %949, align 8, !tbaa !111
  br label %952

952:                                              ; preds = %946, %925
  %953 = load i32, ptr %216, align 8, !tbaa !82
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %961, label %955

955:                                              ; preds = %952
  %956 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %927, i64 0, i64 %673, i32 3
  %957 = load double, ptr %956, align 8, !tbaa !114
  %958 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %930, i64 0, i64 %673, i32 3
  %959 = load double, ptr %958, align 8, !tbaa !114
  %960 = fadd double %957, %959
  store double %960, ptr %958, align 8, !tbaa !114
  br label %961

961:                                              ; preds = %955, %952
  %962 = load double, ptr %928, align 8, !tbaa !101
  %963 = load double, ptr %715, align 8, !tbaa !101
  %964 = fadd double %962, %963
  store double %964, ptr %715, align 8, !tbaa !101
  %965 = load double, ptr %934, align 8, !tbaa !105
  %966 = load double, ptr %716, align 8, !tbaa !105
  %967 = fadd double %965, %966
  store double %967, ptr %716, align 8, !tbaa !105
  %968 = load double, ptr %939, align 8, !tbaa !108
  %969 = load double, ptr %717, align 8, !tbaa !108
  %970 = fadd double %968, %969
  store double %970, ptr %717, align 8, !tbaa !108
  br i1 %945, label %971, label %976

971:                                              ; preds = %961
  %972 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %927, i64 0, i64 %673, i32 4
  %973 = load double, ptr %972, align 8, !tbaa !111
  %974 = load double, ptr %720, align 8, !tbaa !111
  %975 = fadd double %973, %974
  store double %975, ptr %720, align 8, !tbaa !111
  br label %976

976:                                              ; preds = %971, %961
  br i1 %954, label %982, label %977

977:                                              ; preds = %976
  %978 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %927, i64 0, i64 %673, i32 3
  %979 = load double, ptr %978, align 8, !tbaa !114
  %980 = load double, ptr %721, align 8, !tbaa !114
  %981 = fadd double %979, %980
  store double %981, ptr %721, align 8, !tbaa !114
  br label %982

982:                                              ; preds = %976, %977
  %983 = add nuw nsw i64 %723, 1
  %984 = icmp eq i64 %983, %223
  br i1 %984, label %985, label %722, !llvm.loop !122

985:                                              ; preds = %982
  %986 = sitofp i64 %708 to double
  %987 = getelementptr inbounds %struct._ChannelStatistics, ptr %232, i64 %708
  %988 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %987, i64 0, i64 %673
  %989 = load double, ptr %988, align 8, !tbaa !101
  %990 = load double, ptr %695, align 8, !tbaa !101
  %991 = call double @llvm.fmuladd.f64(double %986, double %989, double %990)
  store double %991, ptr %695, align 8, !tbaa !101
  %992 = mul nsw i64 %708, %708
  %993 = sitofp i64 %992 to double
  %994 = load double, ptr %988, align 8, !tbaa !101
  %995 = load double, ptr %696, align 8, !tbaa !101
  %996 = call double @llvm.fmuladd.f64(double %993, double %994, double %995)
  store double %996, ptr %696, align 8, !tbaa !101
  %997 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %987, i64 0, i64 %673, i32 1
  %998 = load double, ptr %997, align 8, !tbaa !105
  %999 = load double, ptr %697, align 8, !tbaa !105
  %1000 = call double @llvm.fmuladd.f64(double %986, double %998, double %999)
  store double %1000, ptr %697, align 8, !tbaa !105
  %1001 = load double, ptr %997, align 8, !tbaa !105
  %1002 = load double, ptr %698, align 8, !tbaa !105
  %1003 = call double @llvm.fmuladd.f64(double %993, double %1001, double %1002)
  store double %1003, ptr %698, align 8, !tbaa !105
  %1004 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %987, i64 0, i64 %673, i32 2
  %1005 = load double, ptr %1004, align 8, !tbaa !108
  %1006 = load double, ptr %699, align 8, !tbaa !108
  %1007 = call double @llvm.fmuladd.f64(double %986, double %1005, double %1006)
  store double %1007, ptr %699, align 8, !tbaa !108
  %1008 = load double, ptr %1004, align 8, !tbaa !108
  %1009 = load double, ptr %700, align 8, !tbaa !108
  %1010 = call double @llvm.fmuladd.f64(double %993, double %1008, double %1009)
  store double %1010, ptr %700, align 8, !tbaa !108
  %1011 = load i32, ptr %209, align 4, !tbaa !81
  %1012 = icmp eq i32 %1011, 12
  br i1 %1012, label %1013, label %1021

1013:                                             ; preds = %985
  %1014 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %987, i64 0, i64 %673, i32 4
  %1015 = load double, ptr %1014, align 8, !tbaa !111
  %1016 = load double, ptr %701, align 8, !tbaa !111
  %1017 = call double @llvm.fmuladd.f64(double %986, double %1015, double %1016)
  store double %1017, ptr %701, align 8, !tbaa !111
  %1018 = load double, ptr %1014, align 8, !tbaa !111
  %1019 = load double, ptr %702, align 8, !tbaa !111
  %1020 = call double @llvm.fmuladd.f64(double %993, double %1018, double %1019)
  store double %1020, ptr %702, align 8, !tbaa !111
  br label %1021

1021:                                             ; preds = %1013, %985
  %1022 = load i32, ptr %216, align 8, !tbaa !82
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1032, label %1024

1024:                                             ; preds = %1021
  %1025 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %987, i64 0, i64 %673, i32 3
  %1026 = load double, ptr %1025, align 8, !tbaa !114
  %1027 = load double, ptr %703, align 8, !tbaa !114
  %1028 = call double @llvm.fmuladd.f64(double %986, double %1026, double %1027)
  store double %1028, ptr %703, align 8, !tbaa !114
  %1029 = load double, ptr %1025, align 8, !tbaa !114
  %1030 = load double, ptr %704, align 8, !tbaa !114
  %1031 = call double @llvm.fmuladd.f64(double %993, double %1029, double %1030)
  store double %1031, ptr %704, align 8, !tbaa !114
  br label %1032

1032:                                             ; preds = %1024, %1021
  %1033 = add nuw nsw i64 %708, 1
  %1034 = icmp eq i64 %1033, %223
  br i1 %1034, label %1035, label %707, !llvm.loop !123

1035:                                             ; preds = %1032, %672
  %1036 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %673
  %1037 = load double, ptr %1036, align 8, !tbaa !101
  %1038 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %673
  %1039 = load double, ptr %1038, align 8, !tbaa !101
  %1040 = fneg double %1039
  %1041 = call double @llvm.fmuladd.f64(double %1040, double %1039, double %1037)
  %1042 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %673
  %1043 = load double, ptr %1042, align 8, !tbaa !101
  %1044 = call double @llvm.fmuladd.f64(double %1040, double %1039, double %1043)
  %1045 = call double @sqrt(double noundef %1044) #14
  %1046 = load double, ptr %1042, align 8, !tbaa !101
  %1047 = load double, ptr %1038, align 8, !tbaa !101
  %1048 = fneg double %1047
  %1049 = call double @llvm.fmuladd.f64(double %1048, double %1047, double %1046)
  %1050 = call double @sqrt(double noundef %1049) #14
  %1051 = fmul double %1045, %1050
  %1052 = fdiv double %1041, %1051
  %1053 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 2, i64 %673
  store double %1052, ptr %1053, align 8, !tbaa !55
  %1054 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %673, i32 1
  %1055 = load double, ptr %1054, align 8, !tbaa !105
  %1056 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %673, i32 1
  %1057 = load double, ptr %1056, align 8, !tbaa !105
  %1058 = fneg double %1057
  %1059 = call double @llvm.fmuladd.f64(double %1058, double %1057, double %1055)
  %1060 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %673, i32 1
  %1061 = load double, ptr %1060, align 8, !tbaa !105
  %1062 = call double @llvm.fmuladd.f64(double %1058, double %1057, double %1061)
  %1063 = call double @sqrt(double noundef %1062) #14
  %1064 = load double, ptr %1060, align 8, !tbaa !105
  %1065 = load double, ptr %1056, align 8, !tbaa !105
  %1066 = fneg double %1065
  %1067 = call double @llvm.fmuladd.f64(double %1066, double %1065, double %1064)
  %1068 = call double @sqrt(double noundef %1067) #14
  %1069 = fmul double %1063, %1068
  %1070 = fdiv double %1059, %1069
  %1071 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 2, i64 %673
  store double %1070, ptr %1071, align 8, !tbaa !55
  %1072 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %673, i32 2
  %1073 = load double, ptr %1072, align 8, !tbaa !108
  %1074 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %673, i32 2
  %1075 = load double, ptr %1074, align 8, !tbaa !108
  %1076 = fneg double %1075
  %1077 = call double @llvm.fmuladd.f64(double %1076, double %1075, double %1073)
  %1078 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %673, i32 2
  %1079 = load double, ptr %1078, align 8, !tbaa !108
  %1080 = call double @llvm.fmuladd.f64(double %1076, double %1075, double %1079)
  %1081 = call double @sqrt(double noundef %1080) #14
  %1082 = load double, ptr %1078, align 8, !tbaa !108
  %1083 = load double, ptr %1074, align 8, !tbaa !108
  %1084 = fneg double %1083
  %1085 = call double @llvm.fmuladd.f64(double %1084, double %1083, double %1082)
  %1086 = call double @sqrt(double noundef %1085) #14
  %1087 = fmul double %1081, %1086
  %1088 = fdiv double %1077, %1087
  %1089 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 2, i64 %673
  store double %1088, ptr %1089, align 8, !tbaa !55
  %1090 = load i32, ptr %209, align 4, !tbaa !81
  %1091 = icmp eq i32 %1090, 12
  br i1 %1091, label %1092, label %1111

1092:                                             ; preds = %1035
  %1093 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %673, i32 4
  %1094 = load double, ptr %1093, align 8, !tbaa !111
  %1095 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %673, i32 4
  %1096 = load double, ptr %1095, align 8, !tbaa !111
  %1097 = fneg double %1096
  %1098 = call double @llvm.fmuladd.f64(double %1097, double %1096, double %1094)
  %1099 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %673, i32 4
  %1100 = load double, ptr %1099, align 8, !tbaa !111
  %1101 = call double @llvm.fmuladd.f64(double %1097, double %1096, double %1100)
  %1102 = call double @sqrt(double noundef %1101) #14
  %1103 = load double, ptr %1099, align 8, !tbaa !111
  %1104 = load double, ptr %1095, align 8, !tbaa !111
  %1105 = fneg double %1104
  %1106 = call double @llvm.fmuladd.f64(double %1105, double %1104, double %1103)
  %1107 = call double @sqrt(double noundef %1106) #14
  %1108 = fmul double %1102, %1107
  %1109 = fdiv double %1098, %1108
  %1110 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 2, i64 %673
  store double %1109, ptr %1110, align 8, !tbaa !55
  br label %1111

1111:                                             ; preds = %1092, %1035
  %1112 = load i32, ptr %216, align 8, !tbaa !82
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1133, label %1114

1114:                                             ; preds = %1111
  %1115 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %5, i64 0, i64 %673, i32 3
  %1116 = load double, ptr %1115, align 8, !tbaa !114
  %1117 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %673, i32 3
  %1118 = load double, ptr %1117, align 8, !tbaa !114
  %1119 = fneg double %1118
  %1120 = call double @llvm.fmuladd.f64(double %1119, double %1118, double %1116)
  %1121 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %673, i32 3
  %1122 = load double, ptr %1121, align 8, !tbaa !114
  %1123 = call double @llvm.fmuladd.f64(double %1119, double %1118, double %1122)
  %1124 = call double @sqrt(double noundef %1123) #14
  %1125 = load double, ptr %1121, align 8, !tbaa !114
  %1126 = load double, ptr %1117, align 8, !tbaa !114
  %1127 = fneg double %1126
  %1128 = call double @llvm.fmuladd.f64(double %1127, double %1126, double %1125)
  %1129 = call double @sqrt(double noundef %1128) #14
  %1130 = fmul double %1124, %1129
  %1131 = fdiv double %1120, %1130
  %1132 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 2, i64 %673
  store double %1131, ptr %1132, align 8, !tbaa !55
  br label %1133

1133:                                             ; preds = %1114, %1111
  %1134 = add nuw nsw i64 %673, 1
  %1135 = icmp eq i64 %1134, 4
  br i1 %1135, label %705, label %672, !llvm.loop !124

1136:                                             ; preds = %705, %1292
  %1137 = phi i64 [ 0, %705 ], [ %1293, %1292 ]
  br i1 %706, label %1138, label %1292

1138:                                             ; preds = %1136
  %1139 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 5, i64 %1137
  %1140 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 5, i64 %1137
  %1141 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 5, i64 %1137
  %1142 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 5, i64 %1137
  %1143 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 5, i64 %1137
  %1144 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 7, i64 %1137
  %1145 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 7, i64 %1137
  %1146 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 7, i64 %1137
  %1147 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 7, i64 %1137
  %1148 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 7, i64 %1137
  %1149 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 6, i64 %1137
  %1150 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 6, i64 %1137
  %1151 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 6, i64 %1137
  %1152 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 7, i64 %1137
  %1153 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 6, i64 %1137
  %1154 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 7, i64 %1137
  %1155 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 6, i64 %1137
  br label %1158

1156:                                             ; preds = %1292
  %1157 = icmp eq i32 %222, 0
  br label %1295

1158:                                             ; preds = %1138, %1289
  %1159 = phi i64 [ 2, %1138 ], [ %1290, %1289 ]
  %1160 = sitofp i64 %1159 to double
  %1161 = getelementptr inbounds %struct._ChannelStatistics, ptr %229, i64 %1159
  %1162 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1161, i64 0, i64 %1137
  %1163 = load double, ptr %1162, align 8, !tbaa !101
  %1164 = load double, ptr %1139, align 8, !tbaa !55
  %1165 = call double @llvm.fmuladd.f64(double %1160, double %1163, double %1164)
  store double %1165, ptr %1139, align 8, !tbaa !55
  %1166 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1161, i64 0, i64 %1137, i32 1
  %1167 = load double, ptr %1166, align 8, !tbaa !105
  %1168 = load double, ptr %1140, align 8, !tbaa !55
  %1169 = call double @llvm.fmuladd.f64(double %1160, double %1167, double %1168)
  store double %1169, ptr %1140, align 8, !tbaa !55
  %1170 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1161, i64 0, i64 %1137, i32 2
  %1171 = load double, ptr %1170, align 8, !tbaa !108
  %1172 = load double, ptr %1141, align 8, !tbaa !55
  %1173 = call double @llvm.fmuladd.f64(double %1160, double %1171, double %1172)
  store double %1173, ptr %1141, align 8, !tbaa !55
  %1174 = load i32, ptr %209, align 4, !tbaa !81
  %1175 = icmp eq i32 %1174, 12
  br i1 %1175, label %1176, label %1181

1176:                                             ; preds = %1158
  %1177 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1161, i64 0, i64 %1137, i32 4
  %1178 = load double, ptr %1177, align 8, !tbaa !111
  %1179 = load double, ptr %1142, align 8, !tbaa !55
  %1180 = call double @llvm.fmuladd.f64(double %1160, double %1178, double %1179)
  store double %1180, ptr %1142, align 8, !tbaa !55
  br label %1181

1181:                                             ; preds = %1176, %1158
  %1182 = load i32, ptr %216, align 8, !tbaa !82
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1189, label %1184

1184:                                             ; preds = %1181
  %1185 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1161, i64 0, i64 %1137, i32 3
  %1186 = load double, ptr %1185, align 8, !tbaa !114
  %1187 = load double, ptr %1143, align 8, !tbaa !55
  %1188 = call double @llvm.fmuladd.f64(double %1160, double %1186, double %1187)
  store double %1188, ptr %1143, align 8, !tbaa !55
  br label %1189

1189:                                             ; preds = %1184, %1181
  %1190 = load double, ptr %1162, align 8, !tbaa !101
  %1191 = call double @llvm.fabs.f64(double %1190)
  %1192 = fcmp olt double %1191, 0x3DA5FD7FE1796495
  br i1 %1192, label %1195, label %1193

1193:                                             ; preds = %1189
  %1194 = call double @log10(double noundef %1191) #14
  br label %1195

1195:                                             ; preds = %1189, %1193
  %1196 = phi double [ %1194, %1193 ], [ -1.100000e+01, %1189 ]
  %1197 = load double, ptr %1144, align 8, !tbaa !55
  %1198 = fneg double %1190
  %1199 = call double @llvm.fmuladd.f64(double %1198, double %1196, double %1197)
  store double %1199, ptr %1144, align 8, !tbaa !55
  %1200 = load double, ptr %1166, align 8, !tbaa !105
  %1201 = call double @llvm.fabs.f64(double %1200)
  %1202 = fcmp olt double %1201, 0x3DA5FD7FE1796495
  br i1 %1202, label %1205, label %1203

1203:                                             ; preds = %1195
  %1204 = call double @log10(double noundef %1201) #14
  br label %1205

1205:                                             ; preds = %1195, %1203
  %1206 = phi double [ %1204, %1203 ], [ -1.100000e+01, %1195 ]
  %1207 = load double, ptr %1145, align 8, !tbaa !55
  %1208 = fneg double %1200
  %1209 = call double @llvm.fmuladd.f64(double %1208, double %1206, double %1207)
  store double %1209, ptr %1145, align 8, !tbaa !55
  %1210 = load double, ptr %1170, align 8, !tbaa !108
  %1211 = call double @llvm.fabs.f64(double %1210)
  %1212 = fcmp olt double %1211, 0x3DA5FD7FE1796495
  br i1 %1212, label %1215, label %1213

1213:                                             ; preds = %1205
  %1214 = call double @log10(double noundef %1211) #14
  br label %1215

1215:                                             ; preds = %1205, %1213
  %1216 = phi double [ %1214, %1213 ], [ -1.100000e+01, %1205 ]
  %1217 = load double, ptr %1146, align 8, !tbaa !55
  %1218 = fneg double %1210
  %1219 = call double @llvm.fmuladd.f64(double %1218, double %1216, double %1217)
  store double %1219, ptr %1146, align 8, !tbaa !55
  %1220 = load i32, ptr %209, align 4, !tbaa !81
  %1221 = icmp eq i32 %1220, 12
  br i1 %1221, label %1222, label %1234

1222:                                             ; preds = %1215
  %1223 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1161, i64 0, i64 %1137, i32 4
  %1224 = load double, ptr %1223, align 8, !tbaa !111
  %1225 = call double @llvm.fabs.f64(double %1224)
  %1226 = fcmp olt double %1225, 0x3DA5FD7FE1796495
  br i1 %1226, label %1229, label %1227

1227:                                             ; preds = %1222
  %1228 = call double @log10(double noundef %1225) #14
  br label %1229

1229:                                             ; preds = %1222, %1227
  %1230 = phi double [ %1228, %1227 ], [ -1.100000e+01, %1222 ]
  %1231 = load double, ptr %1147, align 8, !tbaa !55
  %1232 = fneg double %1224
  %1233 = call double @llvm.fmuladd.f64(double %1232, double %1230, double %1231)
  store double %1233, ptr %1147, align 8, !tbaa !55
  br label %1234

1234:                                             ; preds = %1229, %1215
  %1235 = load i32, ptr %216, align 8, !tbaa !82
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1249, label %1237

1237:                                             ; preds = %1234
  %1238 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1161, i64 0, i64 %1137, i32 3
  %1239 = load double, ptr %1238, align 8, !tbaa !114
  %1240 = call double @llvm.fabs.f64(double %1239)
  %1241 = fcmp olt double %1240, 0x3DA5FD7FE1796495
  br i1 %1241, label %1244, label %1242

1242:                                             ; preds = %1237
  %1243 = call double @log10(double noundef %1240) #14
  br label %1244

1244:                                             ; preds = %1237, %1242
  %1245 = phi double [ %1243, %1242 ], [ -1.100000e+01, %1237 ]
  %1246 = load double, ptr %1148, align 8, !tbaa !55
  %1247 = fneg double %1239
  %1248 = call double @llvm.fmuladd.f64(double %1247, double %1245, double %1246)
  store double %1248, ptr %1148, align 8, !tbaa !55
  br label %1249

1249:                                             ; preds = %1244, %1234
  %1250 = load double, ptr %1144, align 8, !tbaa !55
  %1251 = fsub double %1160, %1250
  %1252 = fmul double %1251, %1251
  %1253 = load double, ptr %1162, align 8, !tbaa !101
  %1254 = load double, ptr %1149, align 8, !tbaa !55
  %1255 = call double @llvm.fmuladd.f64(double %1252, double %1253, double %1254)
  store double %1255, ptr %1149, align 8, !tbaa !55
  %1256 = load double, ptr %1145, align 8, !tbaa !55
  %1257 = fsub double %1160, %1256
  %1258 = fmul double %1257, %1257
  %1259 = load double, ptr %1166, align 8, !tbaa !105
  %1260 = load double, ptr %1150, align 8, !tbaa !55
  %1261 = call double @llvm.fmuladd.f64(double %1258, double %1259, double %1260)
  store double %1261, ptr %1150, align 8, !tbaa !55
  %1262 = load double, ptr %1146, align 8, !tbaa !55
  %1263 = fsub double %1160, %1262
  %1264 = fmul double %1263, %1263
  %1265 = load double, ptr %1170, align 8, !tbaa !108
  %1266 = load double, ptr %1151, align 8, !tbaa !55
  %1267 = call double @llvm.fmuladd.f64(double %1264, double %1265, double %1266)
  store double %1267, ptr %1151, align 8, !tbaa !55
  %1268 = load i32, ptr %209, align 4, !tbaa !81
  %1269 = icmp eq i32 %1268, 12
  br i1 %1269, label %1270, label %1278

1270:                                             ; preds = %1249
  %1271 = load double, ptr %1152, align 8, !tbaa !55
  %1272 = fsub double %1160, %1271
  %1273 = fmul double %1272, %1272
  %1274 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1161, i64 0, i64 %1137, i32 4
  %1275 = load double, ptr %1274, align 8, !tbaa !111
  %1276 = load double, ptr %1153, align 8, !tbaa !55
  %1277 = call double @llvm.fmuladd.f64(double %1273, double %1275, double %1276)
  store double %1277, ptr %1153, align 8, !tbaa !55
  br label %1278

1278:                                             ; preds = %1270, %1249
  %1279 = load i32, ptr %216, align 8, !tbaa !82
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1289, label %1281

1281:                                             ; preds = %1278
  %1282 = load double, ptr %1154, align 8, !tbaa !55
  %1283 = fsub double %1160, %1282
  %1284 = fmul double %1283, %1283
  %1285 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1161, i64 0, i64 %1137, i32 3
  %1286 = load double, ptr %1285, align 8, !tbaa !114
  %1287 = load double, ptr %1155, align 8, !tbaa !55
  %1288 = call double @llvm.fmuladd.f64(double %1284, double %1286, double %1287)
  store double %1288, ptr %1155, align 8, !tbaa !55
  br label %1289

1289:                                             ; preds = %1278, %1281
  %1290 = add nuw nsw i64 %1159, 1
  %1291 = icmp eq i64 %1290, %295
  br i1 %1291, label %1292, label %1158, !llvm.loop !125

1292:                                             ; preds = %1289, %1136
  %1293 = add nuw nsw i64 %1137, 1
  %1294 = icmp eq i64 %1293, 4
  br i1 %1294, label %1156, label %1136, !llvm.loop !126

1295:                                             ; preds = %1156, %1676
  %1296 = phi i64 [ 0, %1156 ], [ %1677, %1676 ]
  br i1 %1157, label %1655, label %1297

1297:                                             ; preds = %1295
  %1298 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %1296
  %1299 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1296
  %1300 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %1296, i32 1
  %1301 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1296, i32 1
  %1302 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %1296, i32 2
  %1303 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1296, i32 2
  %1304 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1296
  %1305 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1296, i32 1
  %1306 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1296, i32 2
  %1307 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1296
  %1308 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1296, i32 1
  %1309 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1296, i32 2
  %1310 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1296
  %1311 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1296, i32 1
  %1312 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1296, i32 2
  %1313 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %1296, i32 4
  %1314 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1296, i32 4
  %1315 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %11, i64 0, i64 %1296, i32 3
  %1316 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1296, i32 3
  %1317 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1296, i32 4
  %1318 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1296, i32 3
  %1319 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1296, i32 4
  %1320 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1296, i32 3
  %1321 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1296, i32 4
  %1322 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1296, i32 3
  br label %1323

1323:                                             ; preds = %1297, %1652
  %1324 = phi i64 [ 0, %1297 ], [ %1653, %1652 ]
  %1325 = sitofp i64 %1324 to double
  %1326 = getelementptr inbounds %struct._ChannelStatistics, ptr %230, i64 %1324
  %1327 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1326, i64 0, i64 %1296
  %1328 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1326, i64 0, i64 %1296, i32 1
  %1329 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1326, i64 0, i64 %1296, i32 2
  %1330 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1326, i64 0, i64 %1296, i32 4
  %1331 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1326, i64 0, i64 %1296, i32 3
  %1332 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1326, i64 0, i64 %1296, i32 4
  %1333 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1326, i64 0, i64 %1296, i32 3
  br label %1334

1334:                                             ; preds = %1323, %1649
  %1335 = phi i64 [ 0, %1323 ], [ %1650, %1649 ]
  %1336 = load double, ptr %1298, align 8, !tbaa !101
  %1337 = fsub double %1325, %1336
  %1338 = fadd double %1337, 1.000000e+00
  %1339 = fmul double %1338, %1338
  %1340 = getelementptr inbounds ptr, ptr %224, i64 %1335
  %1341 = load ptr, ptr %1340, align 8, !tbaa !94
  %1342 = getelementptr inbounds %struct._ChannelStatistics, ptr %1341, i64 %1324
  %1343 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1342, i64 0, i64 %1296
  %1344 = load double, ptr %1343, align 8, !tbaa !101
  %1345 = load double, ptr %1299, align 8, !tbaa !101
  %1346 = call double @llvm.fmuladd.f64(double %1339, double %1344, double %1345)
  store double %1346, ptr %1299, align 8, !tbaa !101
  %1347 = load double, ptr %1300, align 8, !tbaa !105
  %1348 = fsub double %1325, %1347
  %1349 = fadd double %1348, 1.000000e+00
  %1350 = fmul double %1349, %1349
  %1351 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1342, i64 0, i64 %1296, i32 1
  %1352 = load double, ptr %1351, align 8, !tbaa !105
  %1353 = load double, ptr %1301, align 8, !tbaa !105
  %1354 = call double @llvm.fmuladd.f64(double %1350, double %1352, double %1353)
  store double %1354, ptr %1301, align 8, !tbaa !105
  %1355 = load double, ptr %1302, align 8, !tbaa !108
  %1356 = fsub double %1325, %1355
  %1357 = fadd double %1356, 1.000000e+00
  %1358 = fmul double %1357, %1357
  %1359 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1342, i64 0, i64 %1296, i32 2
  %1360 = load double, ptr %1359, align 8, !tbaa !108
  %1361 = load double, ptr %1303, align 8, !tbaa !108
  %1362 = call double @llvm.fmuladd.f64(double %1358, double %1360, double %1361)
  store double %1362, ptr %1303, align 8, !tbaa !108
  %1363 = load i32, ptr %209, align 4, !tbaa !81
  %1364 = icmp eq i32 %1363, 12
  br i1 %1364, label %1365, label %1374

1365:                                             ; preds = %1334
  %1366 = load double, ptr %1313, align 8, !tbaa !111
  %1367 = fsub double %1325, %1366
  %1368 = fadd double %1367, 1.000000e+00
  %1369 = fmul double %1368, %1368
  %1370 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1342, i64 0, i64 %1296, i32 4
  %1371 = load double, ptr %1370, align 8, !tbaa !111
  %1372 = load double, ptr %1314, align 8, !tbaa !111
  %1373 = call double @llvm.fmuladd.f64(double %1369, double %1371, double %1372)
  store double %1373, ptr %1314, align 8, !tbaa !111
  br label %1374

1374:                                             ; preds = %1365, %1334
  %1375 = load i32, ptr %216, align 8, !tbaa !82
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1386, label %1377

1377:                                             ; preds = %1374
  %1378 = load double, ptr %1315, align 8, !tbaa !114
  %1379 = fsub double %1325, %1378
  %1380 = fadd double %1379, 1.000000e+00
  %1381 = fmul double %1380, %1380
  %1382 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1342, i64 0, i64 %1296, i32 3
  %1383 = load double, ptr %1382, align 8, !tbaa !114
  %1384 = load double, ptr %1316, align 8, !tbaa !114
  %1385 = call double @llvm.fmuladd.f64(double %1381, double %1383, double %1384)
  store double %1385, ptr %1316, align 8, !tbaa !114
  br label %1386

1386:                                             ; preds = %1377, %1374
  %1387 = load double, ptr %1343, align 8, !tbaa !101
  %1388 = sub nsw i64 %1324, %1335
  %1389 = call i64 @llvm.abs.i64(i64 %1388, i1 true)
  %1390 = getelementptr inbounds %struct._ChannelStatistics, ptr %229, i64 %1389
  %1391 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1390, i64 0, i64 %1296
  %1392 = load double, ptr %1391, align 8, !tbaa !101
  %1393 = fadd double %1387, %1392
  store double %1393, ptr %1391, align 8, !tbaa !101
  %1394 = load double, ptr %1351, align 8, !tbaa !105
  %1395 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1390, i64 0, i64 %1296, i32 1
  %1396 = load double, ptr %1395, align 8, !tbaa !105
  %1397 = fadd double %1394, %1396
  store double %1397, ptr %1395, align 8, !tbaa !105
  %1398 = load double, ptr %1359, align 8, !tbaa !108
  %1399 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1390, i64 0, i64 %1296, i32 2
  %1400 = load double, ptr %1399, align 8, !tbaa !108
  %1401 = fadd double %1398, %1400
  store double %1401, ptr %1399, align 8, !tbaa !108
  br i1 %1364, label %1402, label %1408

1402:                                             ; preds = %1386
  %1403 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1342, i64 0, i64 %1296, i32 4
  %1404 = load double, ptr %1403, align 8, !tbaa !111
  %1405 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1390, i64 0, i64 %1296, i32 4
  %1406 = load double, ptr %1405, align 8, !tbaa !111
  %1407 = fadd double %1404, %1406
  store double %1407, ptr %1405, align 8, !tbaa !111
  br label %1408

1408:                                             ; preds = %1402, %1386
  br i1 %1376, label %1415, label %1409

1409:                                             ; preds = %1408
  %1410 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1342, i64 0, i64 %1296, i32 3
  %1411 = load double, ptr %1410, align 8, !tbaa !114
  %1412 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1390, i64 0, i64 %1296, i32 3
  %1413 = load double, ptr %1412, align 8, !tbaa !114
  %1414 = fadd double %1411, %1413
  store double %1414, ptr %1412, align 8, !tbaa !114
  br label %1415

1415:                                             ; preds = %1409, %1408
  %1416 = load double, ptr %1343, align 8, !tbaa !101
  %1417 = call double @llvm.fabs.f64(double %1416)
  %1418 = fcmp olt double %1417, 0x3DA5FD7FE1796495
  br i1 %1418, label %1421, label %1419

1419:                                             ; preds = %1415
  %1420 = call double @log10(double noundef %1417) #14
  br label %1421

1421:                                             ; preds = %1415, %1419
  %1422 = phi double [ %1420, %1419 ], [ -1.100000e+01, %1415 ]
  %1423 = load double, ptr %1304, align 8, !tbaa !101
  %1424 = fneg double %1416
  %1425 = call double @llvm.fmuladd.f64(double %1424, double %1422, double %1423)
  store double %1425, ptr %1304, align 8, !tbaa !101
  %1426 = load ptr, ptr %1340, align 8, !tbaa !94
  %1427 = getelementptr inbounds %struct._ChannelStatistics, ptr %1426, i64 %1324
  %1428 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1427, i64 0, i64 %1296, i32 1
  %1429 = load double, ptr %1428, align 8, !tbaa !105
  %1430 = call double @llvm.fabs.f64(double %1429)
  %1431 = fcmp olt double %1430, 0x3DA5FD7FE1796495
  br i1 %1431, label %1434, label %1432

1432:                                             ; preds = %1421
  %1433 = call double @log10(double noundef %1430) #14
  br label %1434

1434:                                             ; preds = %1421, %1432
  %1435 = phi double [ %1433, %1432 ], [ -1.100000e+01, %1421 ]
  %1436 = load double, ptr %1305, align 8, !tbaa !105
  %1437 = fneg double %1429
  %1438 = call double @llvm.fmuladd.f64(double %1437, double %1435, double %1436)
  store double %1438, ptr %1305, align 8, !tbaa !105
  %1439 = load ptr, ptr %1340, align 8, !tbaa !94
  %1440 = getelementptr inbounds %struct._ChannelStatistics, ptr %1439, i64 %1324
  %1441 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1440, i64 0, i64 %1296, i32 2
  %1442 = load double, ptr %1441, align 8, !tbaa !108
  %1443 = call double @llvm.fabs.f64(double %1442)
  %1444 = fcmp olt double %1443, 0x3DA5FD7FE1796495
  br i1 %1444, label %1447, label %1445

1445:                                             ; preds = %1434
  %1446 = call double @log10(double noundef %1443) #14
  br label %1447

1447:                                             ; preds = %1434, %1445
  %1448 = phi double [ %1446, %1445 ], [ -1.100000e+01, %1434 ]
  %1449 = load double, ptr %1306, align 8, !tbaa !108
  %1450 = fneg double %1442
  %1451 = call double @llvm.fmuladd.f64(double %1450, double %1448, double %1449)
  store double %1451, ptr %1306, align 8, !tbaa !108
  %1452 = load i32, ptr %209, align 4, !tbaa !81
  %1453 = icmp eq i32 %1452, 12
  br i1 %1453, label %1454, label %1468

1454:                                             ; preds = %1447
  %1455 = load ptr, ptr %1340, align 8, !tbaa !94
  %1456 = getelementptr inbounds %struct._ChannelStatistics, ptr %1455, i64 %1324
  %1457 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1456, i64 0, i64 %1296, i32 4
  %1458 = load double, ptr %1457, align 8, !tbaa !111
  %1459 = call double @llvm.fabs.f64(double %1458)
  %1460 = fcmp olt double %1459, 0x3DA5FD7FE1796495
  br i1 %1460, label %1463, label %1461

1461:                                             ; preds = %1454
  %1462 = call double @log10(double noundef %1459) #14
  br label %1463

1463:                                             ; preds = %1454, %1461
  %1464 = phi double [ %1462, %1461 ], [ -1.100000e+01, %1454 ]
  %1465 = load double, ptr %1317, align 8, !tbaa !111
  %1466 = fneg double %1458
  %1467 = call double @llvm.fmuladd.f64(double %1466, double %1464, double %1465)
  store double %1467, ptr %1317, align 8, !tbaa !111
  br label %1468

1468:                                             ; preds = %1463, %1447
  %1469 = load i32, ptr %216, align 8, !tbaa !82
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1485, label %1471

1471:                                             ; preds = %1468
  %1472 = load ptr, ptr %1340, align 8, !tbaa !94
  %1473 = getelementptr inbounds %struct._ChannelStatistics, ptr %1472, i64 %1324
  %1474 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1473, i64 0, i64 %1296, i32 3
  %1475 = load double, ptr %1474, align 8, !tbaa !114
  %1476 = call double @llvm.fabs.f64(double %1475)
  %1477 = fcmp olt double %1476, 0x3DA5FD7FE1796495
  br i1 %1477, label %1480, label %1478

1478:                                             ; preds = %1471
  %1479 = call double @log10(double noundef %1476) #14
  br label %1480

1480:                                             ; preds = %1471, %1478
  %1481 = phi double [ %1479, %1478 ], [ -1.100000e+01, %1471 ]
  %1482 = load double, ptr %1318, align 8, !tbaa !114
  %1483 = fneg double %1475
  %1484 = call double @llvm.fmuladd.f64(double %1483, double %1481, double %1482)
  store double %1484, ptr %1318, align 8, !tbaa !114
  br label %1485

1485:                                             ; preds = %1480, %1468
  %1486 = load ptr, ptr %1340, align 8, !tbaa !94
  %1487 = getelementptr inbounds %struct._ChannelStatistics, ptr %1486, i64 %1324
  %1488 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1487, i64 0, i64 %1296
  %1489 = load double, ptr %1488, align 8, !tbaa !101
  %1490 = getelementptr inbounds %struct._ChannelStatistics, ptr %228, i64 %1335
  %1491 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1490, i64 0, i64 %1296
  %1492 = load double, ptr %1491, align 8, !tbaa !101
  %1493 = load double, ptr %1327, align 8, !tbaa !101
  %1494 = fmul double %1492, %1493
  %1495 = call double @llvm.fabs.f64(double %1494)
  %1496 = fcmp olt double %1495, 0x3DA5FD7FE1796495
  br i1 %1496, label %1499, label %1497

1497:                                             ; preds = %1485
  %1498 = call double @log10(double noundef %1495) #14
  br label %1499

1499:                                             ; preds = %1485, %1497
  %1500 = phi double [ %1498, %1497 ], [ -1.100000e+01, %1485 ]
  %1501 = load double, ptr %1307, align 8, !tbaa !101
  %1502 = fneg double %1489
  %1503 = call double @llvm.fmuladd.f64(double %1502, double %1500, double %1501)
  store double %1503, ptr %1307, align 8, !tbaa !101
  %1504 = load ptr, ptr %1340, align 8, !tbaa !94
  %1505 = getelementptr inbounds %struct._ChannelStatistics, ptr %1504, i64 %1324
  %1506 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1505, i64 0, i64 %1296, i32 1
  %1507 = load double, ptr %1506, align 8, !tbaa !105
  %1508 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1490, i64 0, i64 %1296, i32 1
  %1509 = load double, ptr %1508, align 8, !tbaa !105
  %1510 = load double, ptr %1328, align 8, !tbaa !105
  %1511 = fmul double %1509, %1510
  %1512 = call double @llvm.fabs.f64(double %1511)
  %1513 = fcmp olt double %1512, 0x3DA5FD7FE1796495
  br i1 %1513, label %1516, label %1514

1514:                                             ; preds = %1499
  %1515 = call double @log10(double noundef %1512) #14
  br label %1516

1516:                                             ; preds = %1499, %1514
  %1517 = phi double [ %1515, %1514 ], [ -1.100000e+01, %1499 ]
  %1518 = load double, ptr %1308, align 8, !tbaa !105
  %1519 = fneg double %1507
  %1520 = call double @llvm.fmuladd.f64(double %1519, double %1517, double %1518)
  store double %1520, ptr %1308, align 8, !tbaa !105
  %1521 = load ptr, ptr %1340, align 8, !tbaa !94
  %1522 = getelementptr inbounds %struct._ChannelStatistics, ptr %1521, i64 %1324
  %1523 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1522, i64 0, i64 %1296, i32 2
  %1524 = load double, ptr %1523, align 8, !tbaa !108
  %1525 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1490, i64 0, i64 %1296, i32 2
  %1526 = load double, ptr %1525, align 8, !tbaa !108
  %1527 = load double, ptr %1329, align 8, !tbaa !108
  %1528 = fmul double %1526, %1527
  %1529 = call double @llvm.fabs.f64(double %1528)
  %1530 = fcmp olt double %1529, 0x3DA5FD7FE1796495
  br i1 %1530, label %1533, label %1531

1531:                                             ; preds = %1516
  %1532 = call double @log10(double noundef %1529) #14
  br label %1533

1533:                                             ; preds = %1516, %1531
  %1534 = phi double [ %1532, %1531 ], [ -1.100000e+01, %1516 ]
  %1535 = load double, ptr %1309, align 8, !tbaa !108
  %1536 = fneg double %1524
  %1537 = call double @llvm.fmuladd.f64(double %1536, double %1534, double %1535)
  store double %1537, ptr %1309, align 8, !tbaa !108
  %1538 = load i32, ptr %209, align 4, !tbaa !81
  %1539 = icmp eq i32 %1538, 12
  br i1 %1539, label %1540, label %1558

1540:                                             ; preds = %1533
  %1541 = load ptr, ptr %1340, align 8, !tbaa !94
  %1542 = getelementptr inbounds %struct._ChannelStatistics, ptr %1541, i64 %1324
  %1543 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1542, i64 0, i64 %1296, i32 4
  %1544 = load double, ptr %1543, align 8, !tbaa !111
  %1545 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1490, i64 0, i64 %1296, i32 4
  %1546 = load double, ptr %1545, align 8, !tbaa !111
  %1547 = load double, ptr %1330, align 8, !tbaa !111
  %1548 = fmul double %1546, %1547
  %1549 = call double @llvm.fabs.f64(double %1548)
  %1550 = fcmp olt double %1549, 0x3DA5FD7FE1796495
  br i1 %1550, label %1553, label %1551

1551:                                             ; preds = %1540
  %1552 = call double @log10(double noundef %1549) #14
  br label %1553

1553:                                             ; preds = %1540, %1551
  %1554 = phi double [ %1552, %1551 ], [ -1.100000e+01, %1540 ]
  %1555 = load double, ptr %1319, align 8, !tbaa !111
  %1556 = fneg double %1544
  %1557 = call double @llvm.fmuladd.f64(double %1556, double %1554, double %1555)
  store double %1557, ptr %1319, align 8, !tbaa !111
  br label %1558

1558:                                             ; preds = %1553, %1533
  %1559 = load i32, ptr %216, align 8, !tbaa !82
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1579, label %1561

1561:                                             ; preds = %1558
  %1562 = load ptr, ptr %1340, align 8, !tbaa !94
  %1563 = getelementptr inbounds %struct._ChannelStatistics, ptr %1562, i64 %1324
  %1564 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1563, i64 0, i64 %1296, i32 3
  %1565 = load double, ptr %1564, align 8, !tbaa !114
  %1566 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1490, i64 0, i64 %1296, i32 3
  %1567 = load double, ptr %1566, align 8, !tbaa !114
  %1568 = load double, ptr %1331, align 8, !tbaa !114
  %1569 = fmul double %1567, %1568
  %1570 = call double @llvm.fabs.f64(double %1569)
  %1571 = fcmp olt double %1570, 0x3DA5FD7FE1796495
  br i1 %1571, label %1574, label %1572

1572:                                             ; preds = %1561
  %1573 = call double @log10(double noundef %1570) #14
  br label %1574

1574:                                             ; preds = %1561, %1572
  %1575 = phi double [ %1573, %1572 ], [ -1.100000e+01, %1561 ]
  %1576 = load double, ptr %1320, align 8, !tbaa !114
  %1577 = fneg double %1565
  %1578 = call double @llvm.fmuladd.f64(double %1577, double %1575, double %1576)
  store double %1578, ptr %1320, align 8, !tbaa !114
  br label %1579

1579:                                             ; preds = %1574, %1558
  %1580 = load double, ptr %1491, align 8, !tbaa !101
  %1581 = load double, ptr %1327, align 8, !tbaa !101
  %1582 = fmul double %1580, %1581
  %1583 = call double @llvm.fabs.f64(double %1582)
  %1584 = fcmp olt double %1583, 0x3DA5FD7FE1796495
  br i1 %1584, label %1587, label %1585

1585:                                             ; preds = %1579
  %1586 = call double @log10(double noundef %1583) #14
  br label %1587

1587:                                             ; preds = %1579, %1585
  %1588 = phi double [ %1586, %1585 ], [ -1.100000e+01, %1579 ]
  %1589 = load double, ptr %1310, align 8, !tbaa !101
  %1590 = fneg double %1582
  %1591 = call double @llvm.fmuladd.f64(double %1590, double %1588, double %1589)
  store double %1591, ptr %1310, align 8, !tbaa !101
  %1592 = load double, ptr %1508, align 8, !tbaa !105
  %1593 = load double, ptr %1328, align 8, !tbaa !105
  %1594 = fmul double %1592, %1593
  %1595 = call double @llvm.fabs.f64(double %1594)
  %1596 = fcmp olt double %1595, 0x3DA5FD7FE1796495
  br i1 %1596, label %1599, label %1597

1597:                                             ; preds = %1587
  %1598 = call double @log10(double noundef %1595) #14
  br label %1599

1599:                                             ; preds = %1587, %1597
  %1600 = phi double [ %1598, %1597 ], [ -1.100000e+01, %1587 ]
  %1601 = load double, ptr %1311, align 8, !tbaa !105
  %1602 = fneg double %1594
  %1603 = call double @llvm.fmuladd.f64(double %1602, double %1600, double %1601)
  store double %1603, ptr %1311, align 8, !tbaa !105
  %1604 = load double, ptr %1525, align 8, !tbaa !108
  %1605 = load double, ptr %1329, align 8, !tbaa !108
  %1606 = fmul double %1604, %1605
  %1607 = call double @llvm.fabs.f64(double %1606)
  %1608 = fcmp olt double %1607, 0x3DA5FD7FE1796495
  br i1 %1608, label %1611, label %1609

1609:                                             ; preds = %1599
  %1610 = call double @log10(double noundef %1607) #14
  br label %1611

1611:                                             ; preds = %1599, %1609
  %1612 = phi double [ %1610, %1609 ], [ -1.100000e+01, %1599 ]
  %1613 = load double, ptr %1312, align 8, !tbaa !108
  %1614 = fneg double %1606
  %1615 = call double @llvm.fmuladd.f64(double %1614, double %1612, double %1613)
  store double %1615, ptr %1312, align 8, !tbaa !108
  %1616 = load i32, ptr %209, align 4, !tbaa !81
  %1617 = icmp eq i32 %1616, 12
  br i1 %1617, label %1618, label %1632

1618:                                             ; preds = %1611
  %1619 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1490, i64 0, i64 %1296, i32 4
  %1620 = load double, ptr %1619, align 8, !tbaa !111
  %1621 = load double, ptr %1332, align 8, !tbaa !111
  %1622 = fmul double %1620, %1621
  %1623 = call double @llvm.fabs.f64(double %1622)
  %1624 = fcmp olt double %1623, 0x3DA5FD7FE1796495
  br i1 %1624, label %1627, label %1625

1625:                                             ; preds = %1618
  %1626 = call double @log10(double noundef %1623) #14
  br label %1627

1627:                                             ; preds = %1618, %1625
  %1628 = phi double [ %1626, %1625 ], [ -1.100000e+01, %1618 ]
  %1629 = load double, ptr %1321, align 8, !tbaa !111
  %1630 = fneg double %1622
  %1631 = call double @llvm.fmuladd.f64(double %1630, double %1628, double %1629)
  store double %1631, ptr %1321, align 8, !tbaa !111
  br label %1632

1632:                                             ; preds = %1627, %1611
  %1633 = load i32, ptr %216, align 8, !tbaa !82
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1649, label %1635

1635:                                             ; preds = %1632
  %1636 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1490, i64 0, i64 %1296, i32 3
  %1637 = load double, ptr %1636, align 8, !tbaa !114
  %1638 = load double, ptr %1333, align 8, !tbaa !114
  %1639 = fmul double %1637, %1638
  %1640 = call double @llvm.fabs.f64(double %1639)
  %1641 = fcmp olt double %1640, 0x3DA5FD7FE1796495
  br i1 %1641, label %1644, label %1642

1642:                                             ; preds = %1635
  %1643 = call double @log10(double noundef %1640) #14
  br label %1644

1644:                                             ; preds = %1635, %1642
  %1645 = phi double [ %1643, %1642 ], [ -1.100000e+01, %1635 ]
  %1646 = load double, ptr %1322, align 8, !tbaa !114
  %1647 = fneg double %1639
  %1648 = call double @llvm.fmuladd.f64(double %1647, double %1645, double %1646)
  store double %1648, ptr %1322, align 8, !tbaa !114
  br label %1649

1649:                                             ; preds = %1632, %1644
  %1650 = add nuw nsw i64 %1335, 1
  %1651 = icmp eq i64 %1650, %223
  br i1 %1651, label %1652, label %1334, !llvm.loop !127

1652:                                             ; preds = %1649
  %1653 = add nuw nsw i64 %1324, 1
  %1654 = icmp eq i64 %1653, %223
  br i1 %1654, label %1655, label %1323, !llvm.loop !128

1655:                                             ; preds = %1652, %1295
  %1656 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1296
  %1657 = load double, ptr %1656, align 8, !tbaa !101
  %1658 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 3, i64 %1296
  store double %1657, ptr %1658, align 8, !tbaa !55
  %1659 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1296, i32 1
  %1660 = load double, ptr %1659, align 8, !tbaa !105
  %1661 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 3, i64 %1296
  store double %1660, ptr %1661, align 8, !tbaa !55
  %1662 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1296, i32 2
  %1663 = load double, ptr %1662, align 8, !tbaa !108
  %1664 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 3, i64 %1296
  store double %1663, ptr %1664, align 8, !tbaa !55
  %1665 = load i32, ptr %209, align 4, !tbaa !81
  %1666 = icmp eq i32 %1665, 12
  br i1 %1666, label %1667, label %1670

1667:                                             ; preds = %1655
  %1668 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1296, i32 4
  %1669 = load double, ptr %1668, align 8, !tbaa !111
  store double %1669, ptr %1658, align 8, !tbaa !55
  br label %1670

1670:                                             ; preds = %1667, %1655
  %1671 = load i32, ptr %216, align 8, !tbaa !82
  %1672 = icmp eq i32 %1671, 0
  br i1 %1672, label %1676, label %1673

1673:                                             ; preds = %1670
  %1674 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1296, i32 3
  %1675 = load double, ptr %1674, align 8, !tbaa !114
  store double %1675, ptr %1658, align 8, !tbaa !55
  br label %1676

1676:                                             ; preds = %1673, %1670
  %1677 = add nuw nsw i64 %1296, 1
  %1678 = icmp eq i64 %1677, 4
  br i1 %1678, label %1679, label %1295, !llvm.loop !129

1679:                                             ; preds = %1676
  %1680 = call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 160) #14
  %1681 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 160) #14
  %1682 = icmp eq i32 %222, 0
  %1683 = uitofp i32 %222 to double
  %1684 = fmul double %1683, %1683
  %1685 = fmul double %1684, %1683
  %1686 = fmul double %1685, %1683
  br label %1687

1687:                                             ; preds = %1679, %2140
  %1688 = phi i64 [ 0, %1679 ], [ %2141, %2140 ]
  br i1 %1682, label %1959, label %1689

1689:                                             ; preds = %1687
  %1690 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1688
  %1691 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1688, i32 1
  %1692 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1688, i32 2
  %1693 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1688, i32 4
  %1694 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1688, i32 3
  %1695 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1688
  %1696 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1688, i32 1
  %1697 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1688, i32 2
  %1698 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1688, i32 4
  %1699 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1688, i32 3
  %1700 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 10, i64 %1688
  %1701 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 10, i64 %1688
  %1702 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 10, i64 %1688
  %1703 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 10, i64 %1688
  %1704 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 10, i64 %1688
  %1705 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1688
  %1706 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1688, i32 1
  %1707 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1688, i32 2
  %1708 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1688, i32 4
  %1709 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1688, i32 3
  %1710 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1688
  %1711 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1688, i32 1
  %1712 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1688, i32 2
  %1713 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1688, i32 4
  %1714 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1688, i32 3
  br label %1717

1715:                                             ; preds = %2140
  %1716 = icmp eq i32 %222, 0
  br label %2143

1717:                                             ; preds = %1689, %1956
  %1718 = phi i64 [ 0, %1689 ], [ %1957, %1956 ]
  %1719 = getelementptr inbounds %struct._ChannelStatistics, ptr %229, i64 %1718
  %1720 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1719, i64 0, i64 %1688
  %1721 = load double, ptr %1720, align 8, !tbaa !101
  %1722 = load double, ptr %1690, align 8, !tbaa !101
  %1723 = fadd double %1721, %1722
  store double %1723, ptr %1690, align 8, !tbaa !101
  %1724 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1719, i64 0, i64 %1688, i32 1
  %1725 = load double, ptr %1724, align 8, !tbaa !105
  %1726 = load double, ptr %1691, align 8, !tbaa !105
  %1727 = fadd double %1725, %1726
  store double %1727, ptr %1691, align 8, !tbaa !105
  %1728 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1719, i64 0, i64 %1688, i32 2
  %1729 = load double, ptr %1728, align 8, !tbaa !108
  %1730 = load double, ptr %1692, align 8, !tbaa !108
  %1731 = fadd double %1729, %1730
  store double %1731, ptr %1692, align 8, !tbaa !108
  %1732 = load i32, ptr %209, align 4, !tbaa !81
  %1733 = icmp eq i32 %1732, 12
  br i1 %1733, label %1734, label %1739

1734:                                             ; preds = %1717
  %1735 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1719, i64 0, i64 %1688, i32 4
  %1736 = load double, ptr %1735, align 8, !tbaa !111
  %1737 = load double, ptr %1693, align 8, !tbaa !111
  %1738 = fadd double %1736, %1737
  store double %1738, ptr %1693, align 8, !tbaa !111
  br label %1739

1739:                                             ; preds = %1734, %1717
  %1740 = load i32, ptr %216, align 8, !tbaa !82
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1747, label %1742

1742:                                             ; preds = %1739
  %1743 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1719, i64 0, i64 %1688, i32 3
  %1744 = load double, ptr %1743, align 8, !tbaa !114
  %1745 = load double, ptr %1694, align 8, !tbaa !114
  %1746 = fadd double %1744, %1745
  store double %1746, ptr %1694, align 8, !tbaa !114
  br label %1747

1747:                                             ; preds = %1742, %1739
  %1748 = load double, ptr %1720, align 8, !tbaa !101
  %1749 = load double, ptr %1695, align 8, !tbaa !101
  %1750 = call double @llvm.fmuladd.f64(double %1748, double %1748, double %1749)
  store double %1750, ptr %1695, align 8, !tbaa !101
  %1751 = load double, ptr %1724, align 8, !tbaa !105
  %1752 = load double, ptr %1696, align 8, !tbaa !105
  %1753 = call double @llvm.fmuladd.f64(double %1751, double %1751, double %1752)
  store double %1753, ptr %1696, align 8, !tbaa !105
  %1754 = load double, ptr %1728, align 8, !tbaa !108
  %1755 = load double, ptr %1697, align 8, !tbaa !108
  %1756 = call double @llvm.fmuladd.f64(double %1754, double %1754, double %1755)
  store double %1756, ptr %1697, align 8, !tbaa !108
  br i1 %1733, label %1757, label %1762

1757:                                             ; preds = %1747
  %1758 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1719, i64 0, i64 %1688, i32 4
  %1759 = load double, ptr %1758, align 8, !tbaa !111
  %1760 = load double, ptr %1698, align 8, !tbaa !111
  %1761 = call double @llvm.fmuladd.f64(double %1759, double %1759, double %1760)
  store double %1761, ptr %1698, align 8, !tbaa !111
  br label %1762

1762:                                             ; preds = %1757, %1747
  br i1 %1741, label %1768, label %1763

1763:                                             ; preds = %1762
  %1764 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1719, i64 0, i64 %1688, i32 3
  %1765 = load double, ptr %1764, align 8, !tbaa !114
  %1766 = load double, ptr %1699, align 8, !tbaa !114
  %1767 = call double @llvm.fmuladd.f64(double %1765, double %1765, double %1766)
  store double %1767, ptr %1699, align 8, !tbaa !114
  br label %1768

1768:                                             ; preds = %1763, %1762
  %1769 = load double, ptr %1720, align 8, !tbaa !101
  %1770 = call double @llvm.fabs.f64(double %1769)
  %1771 = fcmp olt double %1770, 0x3DA5FD7FE1796495
  br i1 %1771, label %1774, label %1772

1772:                                             ; preds = %1768
  %1773 = call double @log10(double noundef %1770) #14
  br label %1774

1774:                                             ; preds = %1768, %1772
  %1775 = phi double [ %1773, %1772 ], [ -1.100000e+01, %1768 ]
  %1776 = load double, ptr %1700, align 8, !tbaa !55
  %1777 = fneg double %1769
  %1778 = call double @llvm.fmuladd.f64(double %1777, double %1775, double %1776)
  store double %1778, ptr %1700, align 8, !tbaa !55
  %1779 = load double, ptr %1724, align 8, !tbaa !105
  %1780 = call double @llvm.fabs.f64(double %1779)
  %1781 = fcmp olt double %1780, 0x3DA5FD7FE1796495
  br i1 %1781, label %1784, label %1782

1782:                                             ; preds = %1774
  %1783 = call double @log10(double noundef %1780) #14
  br label %1784

1784:                                             ; preds = %1774, %1782
  %1785 = phi double [ %1783, %1782 ], [ -1.100000e+01, %1774 ]
  %1786 = load double, ptr %1701, align 8, !tbaa !55
  %1787 = fneg double %1779
  %1788 = call double @llvm.fmuladd.f64(double %1787, double %1785, double %1786)
  store double %1788, ptr %1701, align 8, !tbaa !55
  %1789 = load double, ptr %1728, align 8, !tbaa !108
  %1790 = call double @llvm.fabs.f64(double %1789)
  %1791 = fcmp olt double %1790, 0x3DA5FD7FE1796495
  br i1 %1791, label %1794, label %1792

1792:                                             ; preds = %1784
  %1793 = call double @log10(double noundef %1790) #14
  br label %1794

1794:                                             ; preds = %1784, %1792
  %1795 = phi double [ %1793, %1792 ], [ -1.100000e+01, %1784 ]
  %1796 = load double, ptr %1702, align 8, !tbaa !55
  %1797 = fneg double %1789
  %1798 = call double @llvm.fmuladd.f64(double %1797, double %1795, double %1796)
  store double %1798, ptr %1702, align 8, !tbaa !55
  %1799 = load i32, ptr %209, align 4, !tbaa !81
  %1800 = icmp eq i32 %1799, 12
  br i1 %1800, label %1801, label %1813

1801:                                             ; preds = %1794
  %1802 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1719, i64 0, i64 %1688, i32 4
  %1803 = load double, ptr %1802, align 8, !tbaa !111
  %1804 = call double @llvm.fabs.f64(double %1803)
  %1805 = fcmp olt double %1804, 0x3DA5FD7FE1796495
  br i1 %1805, label %1808, label %1806

1806:                                             ; preds = %1801
  %1807 = call double @log10(double noundef %1804) #14
  br label %1808

1808:                                             ; preds = %1801, %1806
  %1809 = phi double [ %1807, %1806 ], [ -1.100000e+01, %1801 ]
  %1810 = load double, ptr %1703, align 8, !tbaa !55
  %1811 = fneg double %1803
  %1812 = call double @llvm.fmuladd.f64(double %1811, double %1809, double %1810)
  store double %1812, ptr %1703, align 8, !tbaa !55
  br label %1813

1813:                                             ; preds = %1808, %1794
  %1814 = load i32, ptr %216, align 8, !tbaa !82
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %1828, label %1816

1816:                                             ; preds = %1813
  %1817 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1719, i64 0, i64 %1688, i32 3
  %1818 = load double, ptr %1817, align 8, !tbaa !114
  %1819 = call double @llvm.fabs.f64(double %1818)
  %1820 = fcmp olt double %1819, 0x3DA5FD7FE1796495
  br i1 %1820, label %1823, label %1821

1821:                                             ; preds = %1816
  %1822 = call double @log10(double noundef %1819) #14
  br label %1823

1823:                                             ; preds = %1816, %1821
  %1824 = phi double [ %1822, %1821 ], [ -1.100000e+01, %1816 ]
  %1825 = load double, ptr %1704, align 8, !tbaa !55
  %1826 = fneg double %1818
  %1827 = call double @llvm.fmuladd.f64(double %1826, double %1824, double %1825)
  store double %1827, ptr %1704, align 8, !tbaa !55
  br label %1828

1828:                                             ; preds = %1823, %1813
  %1829 = getelementptr inbounds %struct._ChannelStatistics, ptr %228, i64 %1718
  %1830 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1829, i64 0, i64 %1688
  %1831 = load double, ptr %1830, align 8, !tbaa !101
  %1832 = call double @llvm.fabs.f64(double %1831)
  %1833 = fcmp olt double %1832, 0x3DA5FD7FE1796495
  br i1 %1833, label %1836, label %1834

1834:                                             ; preds = %1828
  %1835 = call double @log10(double noundef %1832) #14
  br label %1836

1836:                                             ; preds = %1828, %1834
  %1837 = phi double [ %1835, %1834 ], [ -1.100000e+01, %1828 ]
  %1838 = load double, ptr %1705, align 8, !tbaa !101
  %1839 = fneg double %1831
  %1840 = call double @llvm.fmuladd.f64(double %1839, double %1837, double %1838)
  store double %1840, ptr %1705, align 8, !tbaa !101
  %1841 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1829, i64 0, i64 %1688, i32 1
  %1842 = load double, ptr %1841, align 8, !tbaa !105
  %1843 = call double @llvm.fabs.f64(double %1842)
  %1844 = fcmp olt double %1843, 0x3DA5FD7FE1796495
  br i1 %1844, label %1847, label %1845

1845:                                             ; preds = %1836
  %1846 = call double @log10(double noundef %1843) #14
  br label %1847

1847:                                             ; preds = %1836, %1845
  %1848 = phi double [ %1846, %1845 ], [ -1.100000e+01, %1836 ]
  %1849 = load double, ptr %1706, align 8, !tbaa !105
  %1850 = fneg double %1842
  %1851 = call double @llvm.fmuladd.f64(double %1850, double %1848, double %1849)
  store double %1851, ptr %1706, align 8, !tbaa !105
  %1852 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1829, i64 0, i64 %1688, i32 2
  %1853 = load double, ptr %1852, align 8, !tbaa !108
  %1854 = call double @llvm.fabs.f64(double %1853)
  %1855 = fcmp olt double %1854, 0x3DA5FD7FE1796495
  br i1 %1855, label %1858, label %1856

1856:                                             ; preds = %1847
  %1857 = call double @log10(double noundef %1854) #14
  br label %1858

1858:                                             ; preds = %1847, %1856
  %1859 = phi double [ %1857, %1856 ], [ -1.100000e+01, %1847 ]
  %1860 = load double, ptr %1707, align 8, !tbaa !108
  %1861 = fneg double %1853
  %1862 = call double @llvm.fmuladd.f64(double %1861, double %1859, double %1860)
  store double %1862, ptr %1707, align 8, !tbaa !108
  %1863 = load i32, ptr %209, align 4, !tbaa !81
  %1864 = icmp eq i32 %1863, 12
  br i1 %1864, label %1865, label %1877

1865:                                             ; preds = %1858
  %1866 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1829, i64 0, i64 %1688, i32 4
  %1867 = load double, ptr %1866, align 8, !tbaa !111
  %1868 = call double @llvm.fabs.f64(double %1867)
  %1869 = fcmp olt double %1868, 0x3DA5FD7FE1796495
  br i1 %1869, label %1872, label %1870

1870:                                             ; preds = %1865
  %1871 = call double @log10(double noundef %1868) #14
  br label %1872

1872:                                             ; preds = %1865, %1870
  %1873 = phi double [ %1871, %1870 ], [ -1.100000e+01, %1865 ]
  %1874 = load double, ptr %1708, align 8, !tbaa !111
  %1875 = fneg double %1867
  %1876 = call double @llvm.fmuladd.f64(double %1875, double %1873, double %1874)
  store double %1876, ptr %1708, align 8, !tbaa !111
  br label %1877

1877:                                             ; preds = %1872, %1858
  %1878 = load i32, ptr %216, align 8, !tbaa !82
  %1879 = icmp eq i32 %1878, 0
  br i1 %1879, label %1892, label %1880

1880:                                             ; preds = %1877
  %1881 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1829, i64 0, i64 %1688, i32 3
  %1882 = load double, ptr %1881, align 8, !tbaa !114
  %1883 = call double @llvm.fabs.f64(double %1882)
  %1884 = fcmp olt double %1883, 0x3DA5FD7FE1796495
  br i1 %1884, label %1887, label %1885

1885:                                             ; preds = %1880
  %1886 = call double @log10(double noundef %1883) #14
  br label %1887

1887:                                             ; preds = %1880, %1885
  %1888 = phi double [ %1886, %1885 ], [ -1.100000e+01, %1880 ]
  %1889 = load double, ptr %1709, align 8, !tbaa !114
  %1890 = fneg double %1882
  %1891 = call double @llvm.fmuladd.f64(double %1890, double %1888, double %1889)
  store double %1891, ptr %1709, align 8, !tbaa !114
  br label %1892

1892:                                             ; preds = %1887, %1877
  %1893 = getelementptr inbounds %struct._ChannelStatistics, ptr %230, i64 %1718
  %1894 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1893, i64 0, i64 %1688
  %1895 = load double, ptr %1894, align 8, !tbaa !101
  %1896 = call double @llvm.fabs.f64(double %1895)
  %1897 = fcmp olt double %1896, 0x3DA5FD7FE1796495
  br i1 %1897, label %1900, label %1898

1898:                                             ; preds = %1892
  %1899 = call double @log10(double noundef %1896) #14
  br label %1900

1900:                                             ; preds = %1892, %1898
  %1901 = phi double [ %1899, %1898 ], [ -1.100000e+01, %1892 ]
  %1902 = load double, ptr %1710, align 8, !tbaa !101
  %1903 = fneg double %1895
  %1904 = call double @llvm.fmuladd.f64(double %1903, double %1901, double %1902)
  store double %1904, ptr %1710, align 8, !tbaa !101
  %1905 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1893, i64 0, i64 %1688, i32 1
  %1906 = load double, ptr %1905, align 8, !tbaa !105
  %1907 = call double @llvm.fabs.f64(double %1906)
  %1908 = fcmp olt double %1907, 0x3DA5FD7FE1796495
  br i1 %1908, label %1911, label %1909

1909:                                             ; preds = %1900
  %1910 = call double @log10(double noundef %1907) #14
  br label %1911

1911:                                             ; preds = %1900, %1909
  %1912 = phi double [ %1910, %1909 ], [ -1.100000e+01, %1900 ]
  %1913 = load double, ptr %1711, align 8, !tbaa !105
  %1914 = fneg double %1906
  %1915 = call double @llvm.fmuladd.f64(double %1914, double %1912, double %1913)
  store double %1915, ptr %1711, align 8, !tbaa !105
  %1916 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1893, i64 0, i64 %1688, i32 2
  %1917 = load double, ptr %1916, align 8, !tbaa !108
  %1918 = call double @llvm.fabs.f64(double %1917)
  %1919 = fcmp olt double %1918, 0x3DA5FD7FE1796495
  br i1 %1919, label %1922, label %1920

1920:                                             ; preds = %1911
  %1921 = call double @log10(double noundef %1918) #14
  br label %1922

1922:                                             ; preds = %1911, %1920
  %1923 = phi double [ %1921, %1920 ], [ -1.100000e+01, %1911 ]
  %1924 = load double, ptr %1712, align 8, !tbaa !108
  %1925 = fneg double %1917
  %1926 = call double @llvm.fmuladd.f64(double %1925, double %1923, double %1924)
  store double %1926, ptr %1712, align 8, !tbaa !108
  %1927 = load i32, ptr %209, align 4, !tbaa !81
  %1928 = icmp eq i32 %1927, 12
  br i1 %1928, label %1929, label %1941

1929:                                             ; preds = %1922
  %1930 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1893, i64 0, i64 %1688, i32 4
  %1931 = load double, ptr %1930, align 8, !tbaa !111
  %1932 = call double @llvm.fabs.f64(double %1931)
  %1933 = fcmp olt double %1932, 0x3DA5FD7FE1796495
  br i1 %1933, label %1936, label %1934

1934:                                             ; preds = %1929
  %1935 = call double @log10(double noundef %1932) #14
  br label %1936

1936:                                             ; preds = %1929, %1934
  %1937 = phi double [ %1935, %1934 ], [ -1.100000e+01, %1929 ]
  %1938 = load double, ptr %1713, align 8, !tbaa !111
  %1939 = fneg double %1931
  %1940 = call double @llvm.fmuladd.f64(double %1939, double %1937, double %1938)
  store double %1940, ptr %1713, align 8, !tbaa !111
  br label %1941

1941:                                             ; preds = %1936, %1922
  %1942 = load i32, ptr %216, align 8, !tbaa !82
  %1943 = icmp eq i32 %1942, 0
  br i1 %1943, label %1956, label %1944

1944:                                             ; preds = %1941
  %1945 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %1893, i64 0, i64 %1688, i32 3
  %1946 = load double, ptr %1945, align 8, !tbaa !114
  %1947 = call double @llvm.fabs.f64(double %1946)
  %1948 = fcmp olt double %1947, 0x3DA5FD7FE1796495
  br i1 %1948, label %1951, label %1949

1949:                                             ; preds = %1944
  %1950 = call double @log10(double noundef %1947) #14
  br label %1951

1951:                                             ; preds = %1944, %1949
  %1952 = phi double [ %1950, %1949 ], [ -1.100000e+01, %1944 ]
  %1953 = load double, ptr %1714, align 8, !tbaa !114
  %1954 = fneg double %1946
  %1955 = call double @llvm.fmuladd.f64(double %1954, double %1952, double %1953)
  store double %1955, ptr %1714, align 8, !tbaa !114
  br label %1956

1956:                                             ; preds = %1941, %1951
  %1957 = add nuw nsw i64 %1718, 1
  %1958 = icmp eq i64 %1957, %223
  br i1 %1958, label %1959, label %1717, !llvm.loop !130

1959:                                             ; preds = %1956, %1687
  %1960 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1688
  %1961 = load double, ptr %1960, align 8, !tbaa !101
  %1962 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1688
  %1963 = load double, ptr %1962, align 8, !tbaa !101
  %1964 = fneg double %1963
  %1965 = fmul double %1963, %1964
  %1966 = call double @llvm.fmuladd.f64(double %1684, double %1961, double %1965)
  %1967 = fdiv double %1966, %1686
  %1968 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 9, i64 %1688
  store double %1967, ptr %1968, align 8, !tbaa !55
  %1969 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1688, i32 1
  %1970 = load double, ptr %1969, align 8, !tbaa !105
  %1971 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1688, i32 1
  %1972 = load double, ptr %1971, align 8, !tbaa !105
  %1973 = fneg double %1972
  %1974 = fmul double %1972, %1973
  %1975 = call double @llvm.fmuladd.f64(double %1684, double %1970, double %1974)
  %1976 = fdiv double %1975, %1686
  %1977 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 9, i64 %1688
  store double %1976, ptr %1977, align 8, !tbaa !55
  %1978 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1688, i32 2
  %1979 = load double, ptr %1978, align 8, !tbaa !108
  %1980 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1688, i32 2
  %1981 = load double, ptr %1980, align 8, !tbaa !108
  %1982 = fneg double %1981
  %1983 = fmul double %1981, %1982
  %1984 = call double @llvm.fmuladd.f64(double %1684, double %1979, double %1983)
  %1985 = fdiv double %1984, %1686
  %1986 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 9, i64 %1688
  store double %1985, ptr %1986, align 8, !tbaa !55
  %1987 = load i32, ptr %216, align 8, !tbaa !82
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %1999, label %1989

1989:                                             ; preds = %1959
  %1990 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1688, i32 3
  %1991 = load double, ptr %1990, align 8, !tbaa !114
  %1992 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1688, i32 3
  %1993 = load double, ptr %1992, align 8, !tbaa !114
  %1994 = fneg double %1993
  %1995 = fmul double %1993, %1994
  %1996 = call double @llvm.fmuladd.f64(double %1684, double %1991, double %1995)
  %1997 = fdiv double %1996, %1686
  %1998 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 9, i64 %1688
  store double %1997, ptr %1998, align 8, !tbaa !55
  br label %1999

1999:                                             ; preds = %1989, %1959
  %2000 = load i32, ptr %209, align 4, !tbaa !81
  %2001 = icmp eq i32 %2000, 12
  br i1 %2001, label %2002, label %2012

2002:                                             ; preds = %1999
  %2003 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %12, i64 0, i64 %1688, i32 4
  %2004 = load double, ptr %2003, align 8, !tbaa !111
  %2005 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %13, i64 0, i64 %1688, i32 4
  %2006 = load double, ptr %2005, align 8, !tbaa !111
  %2007 = fneg double %2006
  %2008 = fmul double %2006, %2007
  %2009 = call double @llvm.fmuladd.f64(double %1684, double %2004, double %2008)
  %2010 = fdiv double %2009, %1686
  %2011 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 9, i64 %1688
  store double %2010, ptr %2011, align 8, !tbaa !55
  br label %2012

2012:                                             ; preds = %2002, %1999
  %2013 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1688
  %2014 = load double, ptr %2013, align 8, !tbaa !101
  %2015 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1688
  %2016 = load double, ptr %2015, align 8, !tbaa !101
  %2017 = fsub double %2014, %2016
  %2018 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1688
  %2019 = load double, ptr %2018, align 8, !tbaa !101
  %2020 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1688
  %2021 = load double, ptr %2020, align 8, !tbaa !101
  %2022 = fcmp ogt double %2019, %2021
  %2023 = select i1 %2022, double %2019, double %2021
  %2024 = fdiv double %2017, %2023
  %2025 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 11, i64 %1688
  store double %2024, ptr %2025, align 8, !tbaa !55
  %2026 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1688, i32 1
  %2027 = load double, ptr %2026, align 8, !tbaa !105
  %2028 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1688, i32 1
  %2029 = load double, ptr %2028, align 8, !tbaa !105
  %2030 = fsub double %2027, %2029
  %2031 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1688, i32 1
  %2032 = load double, ptr %2031, align 8, !tbaa !105
  %2033 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1688, i32 1
  %2034 = load double, ptr %2033, align 8, !tbaa !105
  %2035 = fcmp ogt double %2032, %2034
  %2036 = select i1 %2035, double %2032, double %2034
  %2037 = fdiv double %2030, %2036
  %2038 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 11, i64 %1688
  store double %2037, ptr %2038, align 8, !tbaa !55
  %2039 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1688, i32 2
  %2040 = load double, ptr %2039, align 8, !tbaa !108
  %2041 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1688, i32 2
  %2042 = load double, ptr %2041, align 8, !tbaa !108
  %2043 = fsub double %2040, %2042
  %2044 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1688, i32 2
  %2045 = load double, ptr %2044, align 8, !tbaa !108
  %2046 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1688, i32 2
  %2047 = load double, ptr %2046, align 8, !tbaa !108
  %2048 = fcmp ogt double %2045, %2047
  %2049 = select i1 %2048, double %2045, double %2047
  %2050 = fdiv double %2043, %2049
  %2051 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 11, i64 %1688
  store double %2050, ptr %2051, align 8, !tbaa !55
  br i1 %2001, label %2052, label %2066

2052:                                             ; preds = %2012
  %2053 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1688, i32 4
  %2054 = load double, ptr %2053, align 8, !tbaa !111
  %2055 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1688, i32 4
  %2056 = load double, ptr %2055, align 8, !tbaa !111
  %2057 = fsub double %2054, %2056
  %2058 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1688, i32 4
  %2059 = load double, ptr %2058, align 8, !tbaa !111
  %2060 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1688, i32 4
  %2061 = load double, ptr %2060, align 8, !tbaa !111
  %2062 = fcmp ogt double %2059, %2061
  %2063 = select i1 %2062, double %2059, double %2061
  %2064 = fdiv double %2057, %2063
  %2065 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 11, i64 %1688
  store double %2064, ptr %2065, align 8, !tbaa !55
  br label %2066

2066:                                             ; preds = %2052, %2012
  br i1 %1988, label %2081, label %2067

2067:                                             ; preds = %2066
  %2068 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1688, i32 3
  %2069 = load double, ptr %2068, align 8, !tbaa !114
  %2070 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %8, i64 0, i64 %1688, i32 3
  %2071 = load double, ptr %2070, align 8, !tbaa !114
  %2072 = fsub double %2069, %2071
  %2073 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %6, i64 0, i64 %1688, i32 3
  %2074 = load double, ptr %2073, align 8, !tbaa !114
  %2075 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %10, i64 0, i64 %1688, i32 3
  %2076 = load double, ptr %2075, align 8, !tbaa !114
  %2077 = fcmp ogt double %2074, %2076
  %2078 = select i1 %2077, double %2074, double %2076
  %2079 = fdiv double %2072, %2078
  %2080 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 11, i64 %1688
  store double %2079, ptr %2080, align 8, !tbaa !55
  br label %2081

2081:                                             ; preds = %2067, %2066
  %2082 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1688
  %2083 = load double, ptr %2082, align 8, !tbaa !101
  %2084 = fsub double %2083, %2014
  %2085 = fmul double %2084, -2.000000e+00
  %2086 = call double @exp(double noundef %2085) #14
  %2087 = fsub double 1.000000e+00, %2086
  %2088 = call double @llvm.fabs.f64(double %2087)
  %2089 = call double @sqrt(double noundef %2088) #14
  %2090 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 12, i64 %1688
  store double %2089, ptr %2090, align 8, !tbaa !55
  %2091 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1688, i32 1
  %2092 = load double, ptr %2091, align 8, !tbaa !105
  %2093 = load double, ptr %2026, align 8, !tbaa !105
  %2094 = fsub double %2092, %2093
  %2095 = fmul double %2094, -2.000000e+00
  %2096 = call double @exp(double noundef %2095) #14
  %2097 = fsub double 1.000000e+00, %2096
  %2098 = call double @llvm.fabs.f64(double %2097)
  %2099 = call double @sqrt(double noundef %2098) #14
  %2100 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 12, i64 %1688
  store double %2099, ptr %2100, align 8, !tbaa !55
  %2101 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1688, i32 2
  %2102 = load double, ptr %2101, align 8, !tbaa !108
  %2103 = load double, ptr %2039, align 8, !tbaa !108
  %2104 = fsub double %2102, %2103
  %2105 = fmul double %2104, -2.000000e+00
  %2106 = call double @exp(double noundef %2105) #14
  %2107 = fsub double 1.000000e+00, %2106
  %2108 = call double @llvm.fabs.f64(double %2107)
  %2109 = call double @sqrt(double noundef %2108) #14
  %2110 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 12, i64 %1688
  store double %2109, ptr %2110, align 8, !tbaa !55
  %2111 = load i32, ptr %209, align 4, !tbaa !81
  %2112 = icmp eq i32 %2111, 12
  br i1 %2112, label %2113, label %2125

2113:                                             ; preds = %2081
  %2114 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1688, i32 4
  %2115 = load double, ptr %2114, align 8, !tbaa !111
  %2116 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1688, i32 4
  %2117 = load double, ptr %2116, align 8, !tbaa !111
  %2118 = fsub double %2115, %2117
  %2119 = fmul double %2118, -2.000000e+00
  %2120 = call double @exp(double noundef %2119) #14
  %2121 = fsub double 1.000000e+00, %2120
  %2122 = call double @llvm.fabs.f64(double %2121)
  %2123 = call double @sqrt(double noundef %2122) #14
  %2124 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 12, i64 %1688
  store double %2123, ptr %2124, align 8, !tbaa !55
  br label %2125

2125:                                             ; preds = %2113, %2081
  %2126 = load i32, ptr %216, align 8, !tbaa !82
  %2127 = icmp eq i32 %2126, 0
  br i1 %2127, label %2140, label %2128

2128:                                             ; preds = %2125
  %2129 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %9, i64 0, i64 %1688, i32 3
  %2130 = load double, ptr %2129, align 8, !tbaa !114
  %2131 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %7, i64 0, i64 %1688, i32 3
  %2132 = load double, ptr %2131, align 8, !tbaa !114
  %2133 = fsub double %2130, %2132
  %2134 = fmul double %2133, -2.000000e+00
  %2135 = call double @exp(double noundef %2134) #14
  %2136 = fsub double 1.000000e+00, %2135
  %2137 = call double @llvm.fabs.f64(double %2136)
  %2138 = call double @sqrt(double noundef %2137) #14
  %2139 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 12, i64 %1688
  store double %2138, ptr %2139, align 8, !tbaa !55
  br label %2140

2140:                                             ; preds = %2128, %2125
  %2141 = add nuw nsw i64 %1688, 1
  %2142 = icmp eq i64 %2141, 4
  br i1 %2142, label %1715, label %1687, !llvm.loop !131

2143:                                             ; preds = %1715, %2344
  %2144 = phi i64 [ 0, %1715 ], [ %2345, %2344 ]
  br i1 %1716, label %2326, label %2145

2145:                                             ; preds = %2143
  %2146 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %2144
  %2147 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %2144, i32 1
  %2148 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %2144, i32 2
  %2149 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %2144, i32 4
  %2150 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %2144, i32 3
  %2151 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %2144
  %2152 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 1, i64 %2144
  %2153 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %2144, i32 1
  %2154 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 1, i64 %2144
  %2155 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %2144, i32 2
  %2156 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 1, i64 %2144
  %2157 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %2144, i32 4
  %2158 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 1, i64 %2144
  %2159 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %16, i64 0, i64 %2144, i32 3
  %2160 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 1, i64 %2144
  br label %2161

2161:                                             ; preds = %2145, %2323
  %2162 = phi i64 [ 0, %2145 ], [ %2324, %2323 ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %16) #14
  %2163 = call ptr @ResetMagickMemory(ptr noundef nonnull %16, i32 noundef 0, i64 noundef 160) #14
  %2164 = getelementptr inbounds ptr, ptr %224, i64 %2162
  %2165 = load ptr, ptr %2164, align 8, !tbaa !94
  %2166 = getelementptr inbounds %struct._ChannelStatistics, ptr %228, i64 %2162
  %2167 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2166, i64 0, i64 %2144
  %2168 = getelementptr inbounds ptr, ptr %231, i64 %2162
  %2169 = load ptr, ptr %2168, align 8, !tbaa !94
  %2170 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2166, i64 0, i64 %2144, i32 1
  %2171 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2166, i64 0, i64 %2144, i32 2
  %2172 = load i32, ptr %209, align 4, !tbaa !81
  %2173 = icmp eq i32 %2172, 12
  %2174 = load i32, ptr %216, align 8, !tbaa !82
  %2175 = icmp eq i32 %2174, 0
  %2176 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2166, i64 0, i64 %2144, i32 4
  %2177 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2166, i64 0, i64 %2144, i32 3
  br label %2178

2178:                                             ; preds = %2161, %2295
  %2179 = phi i64 [ 0, %2161 ], [ %2296, %2295 ]
  %2180 = getelementptr inbounds ptr, ptr %224, i64 %2179
  %2181 = load ptr, ptr %2180, align 8, !tbaa !94
  %2182 = getelementptr inbounds %struct._ChannelStatistics, ptr %2169, i64 %2179
  %2183 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2182, i64 0, i64 %2144
  %2184 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2182, i64 0, i64 %2144, i32 1
  %2185 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2182, i64 0, i64 %2144, i32 2
  %2186 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2182, i64 0, i64 %2144, i32 4
  %2187 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2182, i64 0, i64 %2144, i32 3
  br label %2188

2188:                                             ; preds = %2178, %2292
  %2189 = phi i64 [ 0, %2178 ], [ %2293, %2292 ]
  %2190 = sub nsw i64 %2179, %2189
  %2191 = icmp eq i64 %2190, %2162
  %2192 = sub nsw i64 %2189, %2179
  %2193 = icmp eq i64 %2192, %2162
  %2194 = select i1 %2191, i1 true, i1 %2193
  br i1 %2194, label %2195, label %2226

2195:                                             ; preds = %2188
  %2196 = getelementptr inbounds ptr, ptr %224, i64 %2189
  %2197 = load ptr, ptr %2196, align 8, !tbaa !94
  %2198 = getelementptr inbounds %struct._ChannelStatistics, ptr %2197, i64 %2179
  %2199 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2198, i64 0, i64 %2144
  %2200 = load double, ptr %2199, align 8, !tbaa !101
  %2201 = load double, ptr %2146, align 8, !tbaa !101
  %2202 = fadd double %2200, %2201
  store double %2202, ptr %2146, align 8, !tbaa !101
  %2203 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2198, i64 0, i64 %2144, i32 1
  %2204 = load double, ptr %2203, align 8, !tbaa !105
  %2205 = load double, ptr %2147, align 8, !tbaa !105
  %2206 = fadd double %2204, %2205
  store double %2206, ptr %2147, align 8, !tbaa !105
  %2207 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2198, i64 0, i64 %2144, i32 2
  %2208 = load double, ptr %2207, align 8, !tbaa !108
  %2209 = load double, ptr %2148, align 8, !tbaa !108
  %2210 = fadd double %2208, %2209
  store double %2210, ptr %2148, align 8, !tbaa !108
  %2211 = load i32, ptr %209, align 4, !tbaa !81
  %2212 = icmp eq i32 %2211, 12
  br i1 %2212, label %2213, label %2218

2213:                                             ; preds = %2195
  %2214 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2198, i64 0, i64 %2144, i32 4
  %2215 = load double, ptr %2214, align 8, !tbaa !111
  %2216 = load double, ptr %2149, align 8, !tbaa !111
  %2217 = fadd double %2215, %2216
  store double %2217, ptr %2149, align 8, !tbaa !111
  br label %2218

2218:                                             ; preds = %2213, %2195
  %2219 = load i32, ptr %216, align 8, !tbaa !82
  %2220 = icmp eq i32 %2219, 0
  br i1 %2220, label %2226, label %2221

2221:                                             ; preds = %2218
  %2222 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2198, i64 0, i64 %2144, i32 3
  %2223 = load double, ptr %2222, align 8, !tbaa !114
  %2224 = load double, ptr %2150, align 8, !tbaa !114
  %2225 = fadd double %2223, %2224
  store double %2225, ptr %2150, align 8, !tbaa !114
  br label %2226

2226:                                             ; preds = %2188, %2218, %2221
  %2227 = getelementptr inbounds %struct._ChannelStatistics, ptr %2165, i64 %2189
  %2228 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2227, i64 0, i64 %2144
  %2229 = load double, ptr %2228, align 8, !tbaa !101
  %2230 = getelementptr inbounds %struct._ChannelStatistics, ptr %2181, i64 %2189
  %2231 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2230, i64 0, i64 %2144
  %2232 = load double, ptr %2231, align 8, !tbaa !101
  %2233 = fmul double %2229, %2232
  %2234 = load double, ptr %2167, align 8, !tbaa !101
  %2235 = fdiv double %2233, %2234
  %2236 = getelementptr inbounds %struct._ChannelStatistics, ptr %230, i64 %2189
  %2237 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2236, i64 0, i64 %2144
  %2238 = load double, ptr %2237, align 8, !tbaa !101
  %2239 = fdiv double %2235, %2238
  %2240 = load double, ptr %2183, align 8, !tbaa !101
  %2241 = fadd double %2239, %2240
  store double %2241, ptr %2183, align 8, !tbaa !101
  %2242 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2227, i64 0, i64 %2144, i32 1
  %2243 = load double, ptr %2242, align 8, !tbaa !105
  %2244 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2230, i64 0, i64 %2144, i32 1
  %2245 = load double, ptr %2244, align 8, !tbaa !105
  %2246 = fmul double %2243, %2245
  %2247 = load double, ptr %2170, align 8, !tbaa !105
  %2248 = fdiv double %2246, %2247
  %2249 = load double, ptr %2237, align 8, !tbaa !101
  %2250 = fdiv double %2248, %2249
  %2251 = load double, ptr %2184, align 8, !tbaa !105
  %2252 = fadd double %2251, %2250
  store double %2252, ptr %2184, align 8, !tbaa !105
  %2253 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2227, i64 0, i64 %2144, i32 2
  %2254 = load double, ptr %2253, align 8, !tbaa !108
  %2255 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2230, i64 0, i64 %2144, i32 2
  %2256 = load double, ptr %2255, align 8, !tbaa !108
  %2257 = fmul double %2254, %2256
  %2258 = load double, ptr %2171, align 8, !tbaa !108
  %2259 = fdiv double %2257, %2258
  %2260 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2236, i64 0, i64 %2144, i32 2
  %2261 = load double, ptr %2260, align 8, !tbaa !108
  %2262 = fdiv double %2259, %2261
  %2263 = load double, ptr %2185, align 8, !tbaa !108
  %2264 = fadd double %2263, %2262
  store double %2264, ptr %2185, align 8, !tbaa !108
  br i1 %2173, label %2265, label %2278

2265:                                             ; preds = %2226
  %2266 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2227, i64 0, i64 %2144, i32 4
  %2267 = load double, ptr %2266, align 8, !tbaa !111
  %2268 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2230, i64 0, i64 %2144, i32 4
  %2269 = load double, ptr %2268, align 8, !tbaa !111
  %2270 = fmul double %2267, %2269
  %2271 = load double, ptr %2176, align 8, !tbaa !111
  %2272 = fdiv double %2270, %2271
  %2273 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2236, i64 0, i64 %2144, i32 4
  %2274 = load double, ptr %2273, align 8, !tbaa !111
  %2275 = fdiv double %2272, %2274
  %2276 = load double, ptr %2186, align 8, !tbaa !111
  %2277 = fadd double %2276, %2275
  store double %2277, ptr %2186, align 8, !tbaa !111
  br label %2278

2278:                                             ; preds = %2265, %2226
  br i1 %2175, label %2292, label %2279

2279:                                             ; preds = %2278
  %2280 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2227, i64 0, i64 %2144, i32 3
  %2281 = load double, ptr %2280, align 8, !tbaa !114
  %2282 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2230, i64 0, i64 %2144, i32 3
  %2283 = load double, ptr %2282, align 8, !tbaa !114
  %2284 = fmul double %2281, %2283
  %2285 = load double, ptr %2177, align 8, !tbaa !114
  %2286 = fdiv double %2284, %2285
  %2287 = getelementptr inbounds [4 x %struct._DoublePixelPacket], ptr %2236, i64 0, i64 %2144, i32 3
  %2288 = load double, ptr %2287, align 8, !tbaa !114
  %2289 = fdiv double %2286, %2288
  %2290 = load double, ptr %2187, align 8, !tbaa !114
  %2291 = fadd double %2290, %2289
  store double %2291, ptr %2187, align 8, !tbaa !114
  br label %2292

2292:                                             ; preds = %2278, %2279
  %2293 = add nuw nsw i64 %2189, 1
  %2294 = icmp eq i64 %2293, %223
  br i1 %2294, label %2295, label %2188, !llvm.loop !132

2295:                                             ; preds = %2292
  %2296 = add nuw nsw i64 %2179, 1
  %2297 = icmp eq i64 %2296, %223
  br i1 %2297, label %2298, label %2178, !llvm.loop !133

2298:                                             ; preds = %2295
  %2299 = mul nsw i64 %2162, %2162
  %2300 = sitofp i64 %2299 to double
  %2301 = load double, ptr %2151, align 8, !tbaa !101
  %2302 = load double, ptr %2152, align 8, !tbaa !55
  %2303 = call double @llvm.fmuladd.f64(double %2300, double %2301, double %2302)
  store double %2303, ptr %2152, align 8, !tbaa !55
  %2304 = load double, ptr %2153, align 8, !tbaa !105
  %2305 = load double, ptr %2154, align 8, !tbaa !55
  %2306 = call double @llvm.fmuladd.f64(double %2300, double %2304, double %2305)
  store double %2306, ptr %2154, align 8, !tbaa !55
  %2307 = load double, ptr %2155, align 8, !tbaa !108
  %2308 = load double, ptr %2156, align 8, !tbaa !55
  %2309 = call double @llvm.fmuladd.f64(double %2300, double %2307, double %2308)
  store double %2309, ptr %2156, align 8, !tbaa !55
  %2310 = load i32, ptr %209, align 4, !tbaa !81
  %2311 = icmp eq i32 %2310, 12
  br i1 %2311, label %2312, label %2316

2312:                                             ; preds = %2298
  %2313 = load double, ptr %2157, align 8, !tbaa !111
  %2314 = load double, ptr %2158, align 8, !tbaa !55
  %2315 = call double @llvm.fmuladd.f64(double %2300, double %2313, double %2314)
  store double %2315, ptr %2158, align 8, !tbaa !55
  br label %2316

2316:                                             ; preds = %2312, %2298
  %2317 = load i32, ptr %216, align 8, !tbaa !82
  %2318 = icmp eq i32 %2317, 0
  br i1 %2318, label %2323, label %2319

2319:                                             ; preds = %2316
  %2320 = load double, ptr %2159, align 8, !tbaa !114
  %2321 = load double, ptr %2160, align 8, !tbaa !55
  %2322 = call double @llvm.fmuladd.f64(double %2300, double %2320, double %2321)
  store double %2322, ptr %2160, align 8, !tbaa !55
  br label %2323

2323:                                             ; preds = %2319, %2316
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %16) #14
  %2324 = add nuw nsw i64 %2162, 1
  %2325 = icmp eq i64 %2324, %223
  br i1 %2325, label %2326, label %2161, !llvm.loop !134

2326:                                             ; preds = %2323, %2143
  %2327 = call double @sqrt(double noundef -1.000000e+00) #14
  %2328 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 1, i32 13, i64 %2144
  store double %2327, ptr %2328, align 8, !tbaa !55
  %2329 = call double @sqrt(double noundef -1.000000e+00) #14
  %2330 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 2, i32 13, i64 %2144
  store double %2329, ptr %2330, align 8, !tbaa !55
  %2331 = call double @sqrt(double noundef -1.000000e+00) #14
  %2332 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 4, i32 13, i64 %2144
  store double %2331, ptr %2332, align 8, !tbaa !55
  %2333 = load i32, ptr %209, align 4, !tbaa !81
  %2334 = icmp eq i32 %2333, 12
  br i1 %2334, label %2335, label %2338

2335:                                             ; preds = %2326
  %2336 = call double @sqrt(double noundef -1.000000e+00) #14
  %2337 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 32, i32 13, i64 %2144
  store double %2336, ptr %2337, align 8, !tbaa !55
  br label %2338

2338:                                             ; preds = %2335, %2326
  %2339 = load i32, ptr %216, align 8, !tbaa !82
  %2340 = icmp eq i32 %2339, 0
  br i1 %2340, label %2344, label %2341

2341:                                             ; preds = %2338
  %2342 = call double @sqrt(double noundef -1.000000e+00) #14
  %2343 = getelementptr inbounds %struct._ChannelFeatures, ptr %33, i64 8, i32 13, i64 %2144
  store double %2342, ptr %2343, align 8, !tbaa !55
  br label %2344

2344:                                             ; preds = %2341, %2338
  %2345 = add nuw nsw i64 %2144, 1
  %2346 = icmp eq i64 %2345, 4
  br i1 %2346, label %2347, label %2143, !llvm.loop !135

2347:                                             ; preds = %2344
  %2348 = call ptr @RelinquishMagickMemory(ptr noundef %232) #14
  %2349 = icmp eq i32 %222, 0
  br i1 %2349, label %2357, label %2350

2350:                                             ; preds = %2347, %2350
  %2351 = phi i64 [ %2355, %2350 ], [ 0, %2347 ]
  %2352 = getelementptr inbounds ptr, ptr %231, i64 %2351
  %2353 = load ptr, ptr %2352, align 8, !tbaa !94
  %2354 = call ptr @RelinquishMagickMemory(ptr noundef %2353) #14
  store ptr %2354, ptr %2352, align 8, !tbaa !94
  %2355 = add nuw nsw i64 %2351, 1
  %2356 = icmp eq i64 %2355, %223
  br i1 %2356, label %2357, label %2350, !llvm.loop !136

2357:                                             ; preds = %2350, %2347
  %2358 = call ptr @RelinquishMagickMemory(ptr noundef %231) #14
  %2359 = call ptr @RelinquishMagickMemory(ptr noundef %230) #14
  %2360 = call ptr @RelinquishMagickMemory(ptr noundef %229) #14
  %2361 = call ptr @RelinquishMagickMemory(ptr noundef %228) #14
  %2362 = icmp eq i32 %222, 0
  br i1 %2362, label %2370, label %2363

2363:                                             ; preds = %2357, %2363
  %2364 = phi i64 [ %2368, %2363 ], [ 0, %2357 ]
  %2365 = getelementptr inbounds ptr, ptr %224, i64 %2364
  %2366 = load ptr, ptr %2365, align 8, !tbaa !94
  %2367 = call ptr @RelinquishMagickMemory(ptr noundef %2366) #14
  store ptr %2367, ptr %2365, align 8, !tbaa !94
  %2368 = add nuw nsw i64 %2364, 1
  %2369 = icmp eq i64 %2368, %223
  br i1 %2369, label %2370, label %2363, !llvm.loop !137

2370:                                             ; preds = %2363, %2357
  %2371 = call ptr @RelinquishMagickMemory(ptr noundef %224) #14
  br label %2372

2372:                                             ; preds = %23, %28, %2370, %593, %339, %280, %125, %50
  %2373 = phi ptr [ %51, %50 ], [ %127, %125 ], [ %282, %280 ], [ %347, %339 ], [ %595, %593 ], [ %33, %2370 ], [ null, %28 ], [ null, %23 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #14
  ret ptr %2373
}

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @HoughLineImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  store ptr null, ptr %9, align 8, !tbaa !94
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1842, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #14
  br label %18

18:                                               ; preds = %15, %5
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !53
  %23 = tail call i64 @llvm.umax.i64(i64 %20, i64 %22)
  %24 = uitofp i64 %23 to double
  %25 = fmul double %24, 0x3FF6A09E667F3BCD
  %26 = fmul double %25, 5.000000e-01
  %27 = fmul double %26, 2.000000e+00
  %28 = fptoui double %27 to i64
  %29 = tail call ptr @AcquireMatrixInfo(i64 noundef 180, i64 noundef %28, i64 noundef 8, ptr noundef %4) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1852, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %32) #14
  br label %331

34:                                               ; preds = %18
  %35 = tail call i32 @NullMatrix(ptr noundef nonnull %29) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = tail call ptr @DestroyMatrixInfo(ptr noundef nonnull %29) #14
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %40 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1856, i32 noundef 400, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull %39) #14
  br label %331

41:                                               ; preds = %34
  %42 = load i64, ptr %21, align 8, !tbaa !53
  %43 = uitofp i64 %42 to double
  %44 = fmul double %43, 5.000000e-01
  %45 = load i64, ptr %19, align 8, !tbaa !54
  %46 = uitofp i64 %45 to double
  %47 = fmul double %46, 5.000000e-01
  %48 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #14
  %49 = load i64, ptr %19, align 8, !tbaa !54
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %129

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %55

55:                                               ; preds = %51, %118
  %56 = phi i32 [ 1, %51 ], [ %120, %118 ]
  %57 = phi i64 [ 0, %51 ], [ %121, %118 ]
  %58 = phi i64 [ 0, %51 ], [ %119, %118 ]
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %118, label %60

60:                                               ; preds = %55
  %61 = load i64, ptr %21, align 8, !tbaa !53
  %62 = call ptr @GetCacheViewVirtualPixels(ptr noundef %48, i64 noundef 0, i64 noundef %57, i64 noundef %61, i64 noundef 1, ptr noundef %4) #15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %118, label %64

64:                                               ; preds = %60
  %65 = load i64, ptr %21, align 8, !tbaa !53
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %106

67:                                               ; preds = %64
  %68 = sitofp i64 %57 to double
  %69 = fsub double %68, %47
  br label %70

70:                                               ; preds = %67, %101
  %71 = phi i64 [ 0, %67 ], [ %103, %101 ]
  %72 = phi ptr [ %62, %67 ], [ %102, %101 ]
  %73 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %72) #15
  %74 = fcmp ogt float %73, 3.276700e+04
  br i1 %74, label %75, label %101

75:                                               ; preds = %70
  %76 = sitofp i64 %71 to double
  %77 = fsub double %76, %44
  br label %78

78:                                               ; preds = %75, %78
  %79 = phi i64 [ 0, %75 ], [ %99, %78 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  %80 = sitofp i64 %79 to double
  %81 = fmul double %80, 0x400921FB54442D18
  %82 = fdiv double %81, 1.800000e+02
  %83 = call double @cos(double noundef %82) #14
  %84 = call double @sin(double noundef %82) #14
  %85 = fmul double %69, %84
  %86 = call double @llvm.fmuladd.f64(double %77, double %83, double %85)
  %87 = fadd double %26, %86
  %88 = call double @llvm.floor.f64(double %87)
  %89 = fsub double %87, %88
  %90 = call double @llvm.ceil.f64(double %87)
  %91 = fsub double %90, %87
  %92 = fcmp olt double %89, %91
  %93 = select i1 %92, double %88, double %90
  %94 = fptosi double %93 to i64
  %95 = call i32 @GetMatrixElement(ptr noundef nonnull %29, i64 noundef %79, i64 noundef %94, ptr noundef nonnull %10) #14
  %96 = load double, ptr %10, align 8, !tbaa !55
  %97 = fadd double %96, 1.000000e+00
  store double %97, ptr %10, align 8, !tbaa !55
  %98 = call i32 @SetMatrixElement(ptr noundef nonnull %29, i64 noundef %79, i64 noundef %94, ptr noundef nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  %99 = add nuw nsw i64 %79, 1
  %100 = icmp eq i64 %99, 180
  br i1 %100, label %101, label %78, !llvm.loop !138

101:                                              ; preds = %78, %70
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1
  %103 = add nuw nsw i64 %71, 1
  %104 = load i64, ptr %21, align 8, !tbaa !53
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %70, label %106, !llvm.loop !139

106:                                              ; preds = %101, %64
  %107 = load ptr, ptr %52, align 8, !tbaa !70
  %108 = icmp eq ptr %107, null
  br i1 %108, label %118, label %109

109:                                              ; preds = %106
  %110 = add nsw i64 %58, 1
  %111 = load i64, ptr %19, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #14
  %112 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.7, ptr noundef nonnull %53) #14
  %113 = load ptr, ptr %52, align 8, !tbaa !70
  %114 = load ptr, ptr %54, align 8, !tbaa !71
  %115 = call i32 %113(ptr noundef nonnull %6, i64 noundef %58, i64 noundef %111, ptr noundef %114) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i32
  br label %118

118:                                              ; preds = %106, %109, %60, %55
  %119 = phi i64 [ %58, %55 ], [ %58, %60 ], [ %110, %109 ], [ %58, %106 ]
  %120 = phi i32 [ 0, %55 ], [ 0, %60 ], [ %117, %109 ], [ 1, %106 ]
  %121 = add nuw nsw i64 %57, 1
  %122 = load i64, ptr %19, align 8, !tbaa !54
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %55, label %124, !llvm.loop !140

124:                                              ; preds = %118
  %125 = icmp eq i32 %120, 0
  %126 = call ptr @DestroyCacheView(ptr noundef %48) #14
  br i1 %125, label %127, label %131

127:                                              ; preds = %124
  %128 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %29) #14
  br label %331

129:                                              ; preds = %41
  %130 = tail call ptr @DestroyCacheView(ptr noundef %48) #14
  br label %131

131:                                              ; preds = %129, %124
  %132 = call i32 @AcquireUniqueFileResource(ptr noundef nonnull %8) #14
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %29) #14
  br label %331

136:                                              ; preds = %131
  %137 = uitofp i64 %1 to double
  %138 = uitofp i64 %2 to double
  %139 = uitofp i64 %3 to double
  %140 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.8, double noundef %137, double noundef %138, double noundef %139) #14
  %141 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %142 = call i64 @write(i32 noundef %132, ptr noundef nonnull %7, i64 noundef %141) #14
  %143 = load i64, ptr %21, align 8, !tbaa !53
  %144 = uitofp i64 %143 to double
  %145 = load i64, ptr %19, align 8, !tbaa !54
  %146 = uitofp i64 %145 to double
  %147 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.9, double noundef %144, double noundef %146) #14
  %148 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %149 = call i64 @write(i32 noundef %132, ptr noundef nonnull %7, i64 noundef %148) #14
  %150 = icmp sgt i64 %28, 0
  br i1 %150, label %151, label %286

151:                                              ; preds = %136
  %152 = icmp eq i64 %3, 0
  %153 = load i64, ptr %21, align 8, !tbaa !53
  %154 = load i64, ptr %19, align 8, !tbaa !54
  %155 = call i64 @llvm.umax.i64(i64 %153, i64 %154)
  %156 = lshr i64 %155, 2
  %157 = select i1 %152, i64 %156, i64 %3
  %158 = uitofp i64 %157 to double
  %159 = sdiv i64 %2, 2
  %160 = sub nsw i64 0, %159
  %161 = icmp slt i64 %2, -1
  %162 = sdiv i64 %1, 2
  %163 = sub nsw i64 0, %162
  %164 = icmp slt i64 %1, -1
  %165 = lshr i64 %1, 1
  %166 = uitofp i64 %28 to double
  %167 = fmul double %166, 5.000000e-01
  %168 = uitofp i64 %28 to double
  %169 = fmul double %168, 5.000000e-01
  %170 = call i64 @llvm.abs.i64(i64 %162, i1 true)
  br label %171

171:                                              ; preds = %151, %283
  %172 = phi i64 [ 0, %151 ], [ %284, %283 ]
  %173 = sitofp i64 %172 to double
  %174 = fsub double %173, %167
  %175 = sitofp i64 %172 to double
  %176 = fsub double %175, %169
  br label %177

177:                                              ; preds = %171, %280
  %178 = phi i64 [ 0, %171 ], [ %281, %280 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  %179 = call i32 @GetMatrixElement(ptr noundef nonnull %29, i64 noundef %178, i64 noundef %172, ptr noundef nonnull %11) #14
  %180 = load double, ptr %11, align 8, !tbaa !55
  %181 = fcmp ult double %180, %158
  br i1 %181, label %280, label %182

182:                                              ; preds = %177
  br i1 %161, label %207, label %183

183:                                              ; preds = %182, %200
  %184 = phi i64 [ %204, %200 ], [ %160, %182 ]
  %185 = phi double [ %202, %200 ], [ %180, %182 ]
  br i1 %164, label %200, label %186

186:                                              ; preds = %183
  %187 = add nsw i64 %184, %172
  br label %188

188:                                              ; preds = %186, %197
  %189 = phi i64 [ %163, %186 ], [ %198, %197 ]
  %190 = or i64 %189, %184
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %188
  %193 = add nsw i64 %189, %178
  %194 = call i32 @GetMatrixElement(ptr noundef nonnull %29, i64 noundef %193, i64 noundef %187, ptr noundef nonnull %11) #14
  %195 = load double, ptr %11, align 8, !tbaa !55
  %196 = fcmp ogt double %195, %185
  br i1 %196, label %200, label %197

197:                                              ; preds = %188, %192
  %198 = add i64 %189, 1
  %199 = icmp eq i64 %189, %170
  br i1 %199, label %200, label %188, !llvm.loop !141

200:                                              ; preds = %197, %192, %183
  %201 = phi i64 [ %163, %183 ], [ %198, %197 ], [ %189, %192 ]
  %202 = phi double [ %185, %183 ], [ %185, %197 ], [ %195, %192 ]
  %203 = icmp slt i64 %201, %165
  %204 = add nsw i64 %184, 1
  %205 = icmp sge i64 %184, %159
  %206 = select i1 %203, i1 true, i1 %205
  br i1 %206, label %207, label %183, !llvm.loop !142

207:                                              ; preds = %200, %182
  %208 = phi double [ %180, %182 ], [ %202, %200 ]
  %209 = call i32 @GetMatrixElement(ptr noundef nonnull %29, i64 noundef %178, i64 noundef %172, ptr noundef nonnull %11) #14
  %210 = load double, ptr %11, align 8, !tbaa !55
  %211 = fcmp ule double %208, %210
  br i1 %211, label %212, label %280

212:                                              ; preds = %207
  %213 = add nsw i64 %178, -45
  %214 = icmp ult i64 %213, 91
  %215 = sitofp i64 %178 to double
  %216 = fmul double %215, 0x400921FB54442D18
  %217 = fdiv double %216, 1.800000e+02
  br i1 %214, label %218, label %245

218:                                              ; preds = %212
  %219 = load i64, ptr %21, align 8, !tbaa !53
  %220 = uitofp i64 %219 to double
  %221 = fmul double %220, 5.000000e-01
  %222 = fsub double 0.000000e+00, %221
  %223 = call double @cos(double noundef %217) #14
  %224 = fneg double %222
  %225 = call double @llvm.fmuladd.f64(double %224, double %223, double %176)
  %226 = call double @sin(double noundef %217) #14
  %227 = fdiv double %225, %226
  %228 = load i64, ptr %19, align 8, !tbaa !54
  %229 = uitofp i64 %228 to double
  %230 = fmul double %229, 5.000000e-01
  %231 = fadd double %227, %230
  %232 = load i64, ptr %21, align 8, !tbaa !53
  %233 = uitofp i64 %232 to double
  %234 = fmul double %233, 5.000000e-01
  %235 = fsub double %233, %234
  %236 = call double @cos(double noundef %217) #14
  %237 = fneg double %235
  %238 = call double @llvm.fmuladd.f64(double %237, double %236, double %176)
  %239 = call double @sin(double noundef %217) #14
  %240 = fdiv double %238, %239
  %241 = load i64, ptr %19, align 8, !tbaa !54
  %242 = uitofp i64 %241 to double
  %243 = fmul double %242, 5.000000e-01
  %244 = fadd double %240, %243
  br label %272

245:                                              ; preds = %212
  %246 = load i64, ptr %19, align 8, !tbaa !54
  %247 = uitofp i64 %246 to double
  %248 = fmul double %247, 5.000000e-01
  %249 = fsub double 0.000000e+00, %248
  %250 = call double @sin(double noundef %217) #14
  %251 = fneg double %249
  %252 = call double @llvm.fmuladd.f64(double %251, double %250, double %174)
  %253 = call double @cos(double noundef %217) #14
  %254 = fdiv double %252, %253
  %255 = load i64, ptr %21, align 8, !tbaa !53
  %256 = uitofp i64 %255 to double
  %257 = fmul double %256, 5.000000e-01
  %258 = fadd double %254, %257
  %259 = load i64, ptr %19, align 8, !tbaa !54
  %260 = uitofp i64 %259 to double
  %261 = fmul double %260, 5.000000e-01
  %262 = fsub double %260, %261
  %263 = call double @sin(double noundef %217) #14
  %264 = fneg double %262
  %265 = call double @llvm.fmuladd.f64(double %264, double %263, double %174)
  %266 = call double @cos(double noundef %217) #14
  %267 = fdiv double %265, %266
  %268 = load i64, ptr %21, align 8, !tbaa !53
  %269 = uitofp i64 %268 to double
  %270 = fmul double %269, 5.000000e-01
  %271 = fadd double %267, %270
  br label %272

272:                                              ; preds = %245, %218
  %273 = phi double [ %244, %218 ], [ %260, %245 ]
  %274 = phi double [ %233, %218 ], [ %271, %245 ]
  %275 = phi double [ %231, %218 ], [ 0.000000e+00, %245 ]
  %276 = phi double [ 0.000000e+00, %218 ], [ %258, %245 ]
  %277 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.10, double noundef %276, double noundef %275, double noundef %274, double noundef %273, double noundef %208) #14
  %278 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %279 = call i64 @write(i32 noundef %132, ptr noundef nonnull %7, i64 noundef %278) #14
  br label %280

280:                                              ; preds = %272, %207, %177
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  %281 = add nuw nsw i64 %178, 1
  %282 = icmp eq i64 %281, 180
  br i1 %282, label %283, label %177, !llvm.loop !143

283:                                              ; preds = %280
  %284 = add nuw nsw i64 %172, 1
  %285 = icmp eq i64 %284, %28
  br i1 %285, label %286, label %171, !llvm.loop !144

286:                                              ; preds = %283, %136
  %287 = call i32 @close(i32 noundef %132) #14
  %288 = call ptr @AcquireImageInfo() #14
  %289 = getelementptr inbounds %struct._ImageInfo, ptr %288, i64 0, i32 24
  %290 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %291 = load i64, ptr %290, align 8
  store i64 %291, ptr %289, align 8
  %292 = getelementptr inbounds %struct._ImageInfo, ptr %288, i64 0, i32 51
  %293 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %292, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %8) #14
  %294 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.12) #14
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %286
  %297 = call i32 @SetImageOption(ptr noundef %288, ptr noundef nonnull @.str.12, ptr noundef nonnull %294) #14
  br label %298

298:                                              ; preds = %296, %286
  %299 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.13) #14
  %300 = icmp eq ptr %299, null
  br i1 %300, label %303, label %301

301:                                              ; preds = %298
  %302 = call i32 @SetImageOption(ptr noundef %288, ptr noundef nonnull @.str.13, ptr noundef nonnull %299) #14
  br label %303

303:                                              ; preds = %301, %298
  %304 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.14) #14
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306

306:                                              ; preds = %303
  %307 = call i32 @SetImageOption(ptr noundef %288, ptr noundef nonnull @.str.14, ptr noundef nonnull %304) #14
  br label %308

308:                                              ; preds = %306, %303
  %309 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.15) #14
  %310 = icmp eq ptr %309, null
  br i1 %310, label %313, label %311

311:                                              ; preds = %308
  %312 = call i32 @SetImageOption(ptr noundef %288, ptr noundef nonnull @.str.15, ptr noundef nonnull %309) #14
  br label %313

313:                                              ; preds = %311, %308
  %314 = call ptr @ReadImage(ptr noundef %288, ptr noundef %4) #14
  store ptr %314, ptr %9, align 8, !tbaa !94
  %315 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.16) #14
  %316 = load ptr, ptr %9, align 8, !tbaa !94
  %317 = icmp eq ptr %316, null
  br i1 %317, label %325, label %318

318:                                              ; preds = %313
  %319 = call i32 @IsMagickTrue(ptr noundef %315) #14
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %318
  %322 = call ptr @MatrixToImage(ptr noundef nonnull %29, ptr noundef %4) #14
  %323 = icmp eq ptr %322, null
  br i1 %323, label %325, label %324

324:                                              ; preds = %321
  call void @AppendImageToList(ptr noundef nonnull %9, ptr noundef nonnull %322) #14
  br label %325

325:                                              ; preds = %321, %324, %318, %313
  %326 = call ptr @DestroyMatrixInfo(ptr noundef nonnull %29) #14
  %327 = call ptr @DestroyImageInfo(ptr noundef %288) #14
  %328 = call i32 @RelinquishUniqueFileResource(ptr noundef nonnull %8) #14
  %329 = load ptr, ptr %9, align 8, !tbaa !94
  %330 = call ptr @GetFirstImageInList(ptr noundef %329) #14
  br label %331

331:                                              ; preds = %325, %134, %127, %37, %31
  %332 = phi ptr [ null, %31 ], [ null, %37 ], [ null, %127 ], [ null, %134 ], [ %330, %325 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #14
  ret ptr %332
}

declare i32 @NullMatrix(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #9

declare i32 @AcquireUniqueFileResource(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare ptr @AcquireImageInfo() local_unnamed_addr #2

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageOption(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

declare ptr @MatrixToImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

declare i32 @RelinquishUniqueFileResource(ptr noundef) local_unnamed_addr #2

declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @MeanShiftImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  %9 = alloca %struct._PixelPacket, align 2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2134, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #14
  br label %16

16:                                               ; preds = %13, %5
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %18 = load i64, ptr %17, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !54
  %21 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %18, i64 noundef %20, i32 noundef 1, ptr noundef %4) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %331, label %23

23:                                               ; preds = %16
  %24 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %21, i32 noundef 1) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %27) #14
  %28 = tail call ptr @DestroyImage(ptr noundef nonnull %21) #14
  br label %331

29:                                               ; preds = %23
  %30 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #14
  %31 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #14
  %32 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %21, ptr noundef %4) #14
  %33 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !54
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %327

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 7
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %44 = sdiv i64 %2, 2
  %45 = sub nsw i64 0, %44
  %46 = icmp slt i64 %2, -1
  %47 = sdiv i64 %1, 2
  %48 = sub nsw i64 0, %47
  %49 = icmp slt i64 %1, -1
  %50 = lshr i64 %1, 1
  %51 = lshr i64 %2, 1
  %52 = mul i64 %51, %50
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  %55 = fmul double %3, %3
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 3
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %64 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %68 = tail call i64 @llvm.abs.i64(i64 %47, i1 true)
  %69 = tail call i64 @llvm.abs.i64(i64 %44, i1 true)
  br label %70

70:                                               ; preds = %36, %321
  %71 = phi i32 [ 1, %36 ], [ %323, %321 ]
  %72 = phi i64 [ 0, %36 ], [ %322, %321 ]
  %73 = phi i64 [ 0, %36 ], [ %324, %321 ]
  %74 = icmp eq i32 %71, 0
  br i1 %74, label %321, label %75

75:                                               ; preds = %70
  %76 = load i64, ptr %17, align 8, !tbaa !53
  %77 = call ptr @GetCacheViewVirtualPixels(ptr noundef %30, i64 noundef 0, i64 noundef %73, i64 noundef %76, i64 noundef 1, ptr noundef %4) #15
  %78 = load i64, ptr %37, align 8, !tbaa !53
  %79 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %32, i64 noundef 0, i64 noundef %73, i64 noundef %78, i64 noundef 1, ptr noundef %4) #15
  %80 = icmp eq ptr %77, null
  %81 = icmp eq ptr %79, null
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %321, label %83

83:                                               ; preds = %75
  %84 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %30) #14
  %85 = load i64, ptr %37, align 8, !tbaa !53
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %305

87:                                               ; preds = %83
  %88 = icmp ne ptr %84, null
  %89 = sitofp i64 %73 to double
  br label %90

90:                                               ; preds = %87, %297
  %91 = phi i32 [ %71, %87 ], [ %210, %297 ]
  %92 = phi i64 [ 0, %87 ], [ %302, %297 ]
  %93 = phi ptr [ %79, %87 ], [ %301, %297 ]
  %94 = phi ptr [ %77, %87 ], [ %300, %297 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #14
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #14
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 2
  %96 = load i16, ptr %95, align 2, !tbaa !66
  %97 = uitofp i16 %96 to float
  store float %97, ptr %38, align 8, !tbaa !145
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 1
  %99 = load i16, ptr %98, align 2, !tbaa !67
  %100 = uitofp i16 %99 to float
  store float %100, ptr %39, align 4, !tbaa !148
  %101 = load i16, ptr %94, align 2, !tbaa !68
  %102 = uitofp i16 %101 to float
  store float %102, ptr %40, align 8, !tbaa !149
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 3
  %104 = load i16, ptr %103, align 2, !tbaa !89
  %105 = uitofp i16 %104 to float
  store float %105, ptr %41, align 4, !tbaa !150
  %106 = load i32, ptr %42, align 4, !tbaa !81
  %107 = icmp eq i32 %106, 12
  %108 = and i1 %88, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %90
  %110 = getelementptr inbounds i16, ptr %84, i64 %92
  %111 = load i16, ptr %110, align 2, !tbaa !87
  %112 = uitofp i16 %111 to float
  store float %112, ptr %43, align 8, !tbaa !151
  br label %113

113:                                              ; preds = %90, %109
  %114 = sitofp i64 %92 to double
  br label %115

115:                                              ; preds = %209, %113
  %116 = phi i64 [ 0, %113 ], [ %257, %209 ]
  %117 = phi double [ %114, %113 ], [ %216, %209 ]
  %118 = phi double [ %89, %113 ], [ %217, %209 ]
  %119 = phi i32 [ %91, %113 ], [ %210, %209 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #14
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %8) #14
  %120 = load float, ptr %38, align 8, !tbaa.struct !152
  %121 = load float, ptr %39, align 4, !tbaa.struct !154
  %122 = load float, ptr %40, align 8, !tbaa.struct !155
  br i1 %46, label %209, label %123

123:                                              ; preds = %115, %202
  %124 = phi i64 [ %207, %202 ], [ %45, %115 ]
  %125 = phi i64 [ %206, %202 ], [ 0, %115 ]
  %126 = phi double [ %205, %202 ], [ 0.000000e+00, %115 ]
  %127 = phi double [ %204, %202 ], [ 0.000000e+00, %115 ]
  %128 = phi i32 [ %203, %202 ], [ %119, %115 ]
  br i1 %49, label %202, label %129

129:                                              ; preds = %123
  %130 = mul nsw i64 %124, %124
  %131 = sitofp i64 %124 to double
  %132 = fadd double %118, %131
  %133 = call double @llvm.floor.f64(double %132)
  %134 = fsub double %132, %133
  %135 = call double @llvm.ceil.f64(double %132)
  %136 = fsub double %135, %132
  %137 = fcmp olt double %134, %136
  %138 = select i1 %137, double %133, double %135
  %139 = fptosi double %138 to i64
  br label %140

140:                                              ; preds = %129, %195
  %141 = phi i64 [ %48, %129 ], [ %200, %195 ]
  %142 = phi i64 [ %125, %129 ], [ %199, %195 ]
  %143 = phi double [ %126, %129 ], [ %198, %195 ]
  %144 = phi double [ %127, %129 ], [ %197, %195 ]
  %145 = phi i32 [ %128, %129 ], [ %196, %195 ]
  %146 = mul nsw i64 %141, %141
  %147 = add nuw nsw i64 %146, %130
  %148 = icmp sgt i64 %147, %52
  br i1 %148, label %195, label %149

149:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %150 = sitofp i64 %141 to double
  %151 = fadd double %117, %150
  %152 = call double @llvm.floor.f64(double %151)
  %153 = fsub double %151, %152
  %154 = call double @llvm.ceil.f64(double %151)
  %155 = fsub double %154, %151
  %156 = fcmp olt double %153, %155
  %157 = select i1 %156, double %152, double %154
  %158 = fptosi double %157 to i64
  %159 = call i32 @GetOneCacheViewVirtualPixel(ptr noundef %31, i64 noundef %158, i64 noundef %139, ptr noundef nonnull %9, ptr noundef %4) #14
  %160 = load float, ptr %38, align 8, !tbaa !145
  %161 = load i16, ptr %53, align 2, !tbaa !66
  %162 = uitofp i16 %161 to float
  %163 = fsub float %160, %162
  %164 = load float, ptr %39, align 4, !tbaa !148
  %165 = load i16, ptr %54, align 2, !tbaa !67
  %166 = uitofp i16 %165 to float
  %167 = fsub float %164, %166
  %168 = fmul float %167, %167
  %169 = call float @llvm.fmuladd.f32(float %163, float %163, float %168)
  %170 = load float, ptr %40, align 8, !tbaa !149
  %171 = load i16, ptr %9, align 2, !tbaa !68
  %172 = uitofp i16 %171 to float
  %173 = fsub float %170, %172
  %174 = call float @llvm.fmuladd.f32(float %173, float %173, float %169)
  %175 = fpext float %174 to double
  %176 = fcmp ult double %55, %175
  br i1 %176, label %191, label %177

177:                                              ; preds = %149
  %178 = fadd double %143, %151
  %179 = fadd double %132, %144
  %180 = load float, ptr %56, align 8, !tbaa !145
  %181 = fadd float %180, %162
  store float %181, ptr %56, align 8, !tbaa !145
  %182 = load float, ptr %57, align 4, !tbaa !148
  %183 = fadd float %182, %166
  store float %183, ptr %57, align 4, !tbaa !148
  %184 = load float, ptr %58, align 8, !tbaa !149
  %185 = fadd float %184, %172
  store float %185, ptr %58, align 8, !tbaa !149
  %186 = load i16, ptr %59, align 2, !tbaa !89
  %187 = uitofp i16 %186 to float
  %188 = load float, ptr %60, align 4, !tbaa !150
  %189 = fadd float %188, %187
  store float %189, ptr %60, align 4, !tbaa !150
  %190 = add nsw i64 %142, 1
  br label %191

191:                                              ; preds = %177, %149
  %192 = phi double [ %179, %177 ], [ %144, %149 ]
  %193 = phi double [ %178, %177 ], [ %143, %149 ]
  %194 = phi i64 [ %190, %177 ], [ %142, %149 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  br label %195

195:                                              ; preds = %140, %191
  %196 = phi i32 [ %159, %191 ], [ %145, %140 ]
  %197 = phi double [ %192, %191 ], [ %144, %140 ]
  %198 = phi double [ %193, %191 ], [ %143, %140 ]
  %199 = phi i64 [ %194, %191 ], [ %142, %140 ]
  %200 = add i64 %141, 1
  %201 = icmp eq i64 %141, %68
  br i1 %201, label %202, label %140, !llvm.loop !156

202:                                              ; preds = %195, %123
  %203 = phi i32 [ %128, %123 ], [ %196, %195 ]
  %204 = phi double [ %127, %123 ], [ %197, %195 ]
  %205 = phi double [ %126, %123 ], [ %198, %195 ]
  %206 = phi i64 [ %125, %123 ], [ %199, %195 ]
  %207 = add i64 %124, 1
  %208 = icmp eq i64 %124, %69
  br i1 %208, label %209, label %123, !llvm.loop !157

209:                                              ; preds = %202, %115
  %210 = phi i32 [ %119, %115 ], [ %203, %202 ]
  %211 = phi double [ 0.000000e+00, %115 ], [ %204, %202 ]
  %212 = phi double [ 0.000000e+00, %115 ], [ %205, %202 ]
  %213 = phi i64 [ 0, %115 ], [ %206, %202 ]
  %214 = sitofp i64 %213 to double
  %215 = fdiv double 1.000000e+00, %214
  %216 = fmul double %212, %215
  %217 = fmul double %211, %215
  %218 = load float, ptr %61, align 8, !tbaa !145
  %219 = fpext float %218 to double
  %220 = fmul double %215, %219
  %221 = fptrunc double %220 to float
  store float %221, ptr %38, align 8, !tbaa !145
  %222 = load float, ptr %62, align 4, !tbaa !148
  %223 = fpext float %222 to double
  %224 = fmul double %215, %223
  %225 = fptrunc double %224 to float
  store float %225, ptr %39, align 4, !tbaa !148
  %226 = load float, ptr %63, align 8, !tbaa !149
  %227 = fpext float %226 to double
  %228 = fmul double %215, %227
  %229 = fptrunc double %228 to float
  store float %229, ptr %40, align 8, !tbaa !149
  %230 = load float, ptr %64, align 4, !tbaa !150
  %231 = fpext float %230 to double
  %232 = fmul double %215, %231
  %233 = fptrunc double %232 to float
  store float %233, ptr %41, align 4, !tbaa !150
  %234 = fsub double %216, %117
  %235 = fsub double %217, %118
  %236 = fmul double %235, %235
  %237 = call double @llvm.fmuladd.f64(double %234, double %234, double %236)
  %238 = fsub float %221, %120
  %239 = fpext float %238 to double
  %240 = fmul double %239, 0x3F6FE01FE01FE020
  %241 = fmul double %240, 2.550000e+02
  %242 = fmul double %241, 0x3EF0001000100010
  %243 = call double @llvm.fmuladd.f64(double %242, double %239, double %237)
  %244 = fsub float %225, %121
  %245 = fpext float %244 to double
  %246 = fmul double %245, 0x3F6FE01FE01FE020
  %247 = fmul double %246, 2.550000e+02
  %248 = fmul double %247, 0x3EF0001000100010
  %249 = call double @llvm.fmuladd.f64(double %248, double %245, double %243)
  %250 = fsub float %229, %122
  %251 = fpext float %250 to double
  %252 = fmul double %251, 0x3F6FE01FE01FE020
  %253 = fmul double %252, 2.550000e+02
  %254 = fmul double %253, 0x3EF0001000100010
  %255 = call double @llvm.fmuladd.f64(double %254, double %251, double %249)
  %256 = fcmp ugt double %255, 3.000000e+00
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #14
  %257 = add nuw nsw i64 %116, 1
  %258 = icmp ult i64 %116, 99
  %259 = select i1 %256, i1 %258, i1 false
  br i1 %259, label %115, label %260, !llvm.loop !158

260:                                              ; preds = %209
  %261 = load float, ptr %38, align 8, !tbaa !145
  %262 = fcmp ugt float %261, 0.000000e+00
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  %264 = fcmp ult float %261, 6.553500e+04
  br i1 %264, label %265, label %268

265:                                              ; preds = %263
  %266 = fadd float %261, 5.000000e-01
  %267 = fptoui float %266 to i16
  br label %268

268:                                              ; preds = %260, %263, %265
  %269 = phi i16 [ %267, %265 ], [ 0, %260 ], [ -1, %263 ]
  %270 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 2
  store i16 %269, ptr %270, align 2, !tbaa !66
  %271 = load float, ptr %39, align 4, !tbaa !148
  %272 = fcmp ugt float %271, 0.000000e+00
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = fcmp ult float %271, 6.553500e+04
  br i1 %274, label %275, label %278

275:                                              ; preds = %273
  %276 = fadd float %271, 5.000000e-01
  %277 = fptoui float %276 to i16
  br label %278

278:                                              ; preds = %268, %273, %275
  %279 = phi i16 [ %277, %275 ], [ 0, %268 ], [ -1, %273 ]
  %280 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 1
  store i16 %279, ptr %280, align 2, !tbaa !67
  %281 = load float, ptr %40, align 8, !tbaa !149
  %282 = fcmp ugt float %281, 0.000000e+00
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = fcmp ult float %281, 6.553500e+04
  br i1 %284, label %285, label %288

285:                                              ; preds = %283
  %286 = fadd float %281, 5.000000e-01
  %287 = fptoui float %286 to i16
  br label %288

288:                                              ; preds = %278, %283, %285
  %289 = phi i16 [ %287, %285 ], [ 0, %278 ], [ -1, %283 ]
  store i16 %289, ptr %93, align 2, !tbaa !68
  %290 = load float, ptr %41, align 4, !tbaa !150
  %291 = fcmp ugt float %290, 0.000000e+00
  br i1 %291, label %292, label %297

292:                                              ; preds = %288
  %293 = fcmp ult float %290, 6.553500e+04
  br i1 %293, label %294, label %297

294:                                              ; preds = %292
  %295 = fadd float %290, 5.000000e-01
  %296 = fptoui float %295 to i16
  br label %297

297:                                              ; preds = %288, %292, %294
  %298 = phi i16 [ %296, %294 ], [ 0, %288 ], [ -1, %292 ]
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 3
  store i16 %298, ptr %299, align 2, !tbaa !89
  %300 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %301 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #14
  %302 = add nuw nsw i64 %92, 1
  %303 = load i64, ptr %37, align 8, !tbaa !53
  %304 = icmp slt i64 %302, %303
  br i1 %304, label %90, label %305, !llvm.loop !159

305:                                              ; preds = %297, %83
  %306 = phi i32 [ %71, %83 ], [ %210, %297 ]
  %307 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %32, ptr noundef %4) #15
  %308 = icmp eq i32 %307, 0
  %309 = select i1 %308, i32 0, i32 %306
  %310 = load ptr, ptr %65, align 8, !tbaa !70
  %311 = icmp eq ptr %310, null
  br i1 %311, label %321, label %312

312:                                              ; preds = %305
  %313 = add nsw i64 %72, 1
  %314 = load i64, ptr %19, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #14
  %315 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef nonnull %66) #14
  %316 = load ptr, ptr %65, align 8, !tbaa !70
  %317 = load ptr, ptr %67, align 8, !tbaa !71
  %318 = call i32 %316(ptr noundef nonnull %6, i64 noundef %72, i64 noundef %314, ptr noundef %317) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  %319 = icmp eq i32 %318, 0
  %320 = select i1 %319, i32 0, i32 %309
  br label %321

321:                                              ; preds = %305, %312, %75, %70
  %322 = phi i64 [ %72, %70 ], [ %72, %75 ], [ %313, %312 ], [ %72, %305 ]
  %323 = phi i32 [ 0, %70 ], [ 0, %75 ], [ %320, %312 ], [ %309, %305 ]
  %324 = add nuw nsw i64 %73, 1
  %325 = load i64, ptr %33, align 8, !tbaa !54
  %326 = icmp slt i64 %324, %325
  br i1 %326, label %70, label %327, !llvm.loop !160

327:                                              ; preds = %321, %29
  %328 = call ptr @DestroyCacheView(ptr noundef %32) #14
  %329 = call ptr @DestroyCacheView(ptr noundef %31) #14
  %330 = call ptr @DestroyCacheView(ptr noundef %30) #14
  br label %331

331:                                              ; preds = %16, %327, %26
  %332 = phi ptr [ null, %26 ], [ %21, %327 ], [ null, %16 ]
  ret ptr %332
}

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GetOneCacheViewVirtualPixel(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { hot nounwind }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 12976}
!35 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !43, i64 104, !44, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !43, i64 264, !43, i64 272, !46, i64 280, !46, i64 312, !46, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !47, i64 480, !48, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !50, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !51, i64 13000, !51, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !41, i64 13120, !40, i64 13128, !46, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !52, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"_PixelPacket", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!"_ChromaticityInfo", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72}
!45 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!47 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!48 = !{!"_TimerInfo", !49, i64 0, !49, i64 24, !36, i64 48, !39, i64 56}
!49 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!50 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!51 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!52 = !{!"long long", !37, i64 0}
!53 = !{!35, !39, i64 40}
!54 = !{!35, !39, i64 48}
!55 = !{!43, !43, i64 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !57, !58}
!60 = !{!61, !43, i64 0}
!61 = !{!"_CannyInfo", !43, i64 0, !43, i64 8, !36, i64 16, !39, i64 24, !39, i64 32}
!62 = !{!61, !36, i64 16}
!63 = distinct !{!63, !57, !58}
!64 = distinct !{!64, !57, !58}
!65 = !{!61, !43, i64 8}
!66 = !{!41, !42, i64 4}
!67 = !{!41, !42, i64 2}
!68 = !{!41, !42, i64 0}
!69 = distinct !{!69, !57, !58}
!70 = !{!35, !40, i64 568}
!71 = !{!35, !40, i64 576}
!72 = distinct !{!72, !57, !58}
!73 = !{!61, !39, i64 24}
!74 = !{!61, !39, i64 32}
!75 = distinct !{!75, !57, !58}
!76 = distinct !{!76, !57, !58}
!77 = distinct !{!77, !57, !58}
!78 = distinct !{!78, !57, !58}
!79 = distinct !{!79, !57, !58}
!80 = !{!36, !36, i64 0}
!81 = !{!35, !36, i64 4}
!82 = !{!35, !36, i64 32}
!83 = !{!84, !36, i64 0}
!84 = !{!"_LongPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16}
!85 = !{!84, !36, i64 4}
!86 = !{!84, !36, i64 8}
!87 = !{!42, !42, i64 0}
!88 = !{!84, !36, i64 16}
!89 = !{!41, !42, i64 6}
!90 = !{!84, !36, i64 12}
!91 = distinct !{!91, !57, !58}
!92 = distinct !{!92, !57, !58}
!93 = distinct !{!93, !57, !58}
!94 = !{!40, !40, i64 0}
!95 = distinct !{!95, !57, !58}
!96 = distinct !{!96, !57, !58}
!97 = distinct !{!97, !57, !58}
!98 = distinct !{!98, !57, !58}
!99 = distinct !{!99, !57, !58}
!100 = distinct !{!100, !57, !58}
!101 = !{!102, !43, i64 0}
!102 = !{!"_DoublePixelPacket", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!103 = distinct !{!103, !57, !58}
!104 = distinct !{!104, !57, !58}
!105 = !{!102, !43, i64 8}
!106 = distinct !{!106, !57, !58}
!107 = distinct !{!107, !57, !58}
!108 = !{!102, !43, i64 16}
!109 = distinct !{!109, !57, !58}
!110 = distinct !{!110, !57, !58}
!111 = !{!102, !43, i64 32}
!112 = distinct !{!112, !57, !58}
!113 = distinct !{!113, !57, !58}
!114 = !{!102, !43, i64 24}
!115 = distinct !{!115, !57, !58}
!116 = distinct !{!116, !57, !58}
!117 = distinct !{!117, !57, !58}
!118 = distinct !{!118, !57, !58}
!119 = distinct !{!119, !57, !58}
!120 = distinct !{!120, !57, !58}
!121 = distinct !{!121, !57, !58}
!122 = distinct !{!122, !57, !58}
!123 = distinct !{!123, !57, !58}
!124 = distinct !{!124, !57, !58}
!125 = distinct !{!125, !57, !58}
!126 = distinct !{!126, !57, !58}
!127 = distinct !{!127, !57, !58}
!128 = distinct !{!128, !57, !58}
!129 = distinct !{!129, !57, !58}
!130 = distinct !{!130, !57, !58}
!131 = distinct !{!131, !57, !58}
!132 = distinct !{!132, !57, !58}
!133 = distinct !{!133, !57, !58}
!134 = distinct !{!134, !57, !58}
!135 = distinct !{!135, !57, !58}
!136 = distinct !{!136, !57, !58}
!137 = distinct !{!137, !57, !58}
!138 = distinct !{!138, !57, !58}
!139 = distinct !{!139, !57, !58}
!140 = distinct !{!140, !57, !58}
!141 = distinct !{!141, !57, !58}
!142 = distinct !{!142, !57, !58}
!143 = distinct !{!143, !57, !58}
!144 = distinct !{!144, !57, !58}
!145 = !{!146, !147, i64 32}
!146 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !147, i64 32, !147, i64 36, !147, i64 40, !147, i64 44, !147, i64 48}
!147 = !{!"float", !37, i64 0}
!148 = !{!146, !147, i64 36}
!149 = !{!146, !147, i64 40}
!150 = !{!146, !147, i64 44}
!151 = !{!146, !147, i64 48}
!152 = !{i64 0, i64 4, !153, i64 4, i64 4, !153, i64 8, i64 4, !153, i64 12, i64 4, !153, i64 16, i64 4, !153}
!153 = !{!147, !147, i64 0}
!154 = !{i64 0, i64 4, !153, i64 4, i64 4, !153, i64 8, i64 4, !153, i64 12, i64 4, !153}
!155 = !{i64 0, i64 4, !153, i64 4, i64 4, !153, i64 8, i64 4, !153}
!156 = distinct !{!156, !57, !58}
!157 = distinct !{!157, !57, !58}
!158 = distinct !{!158, !57, !58}
!159 = distinct !{!159, !57, !58}
!160 = distinct !{!160, !57, !58}
