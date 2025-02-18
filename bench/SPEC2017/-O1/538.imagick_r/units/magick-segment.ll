; ModuleID = 'magick/segment.c'
source_filename = "magick/segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExtentPacket = type { float, i64, i64, i64 }
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
%struct._Cluster = type { ptr, %struct._ExtentPacket, %struct._ExtentPacket, %struct._ExtentPacket, i64, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ZeroCrossing = type { float, [256 x float], [256 x i16] }
%struct._IntervalTree = type { float, i64, i64, float, float, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"magick/segment.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Segment/Image\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"UnableToAllocateDerivatives\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"UnableToAllocateGammaMap\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"Fuzzy C-means Statistics\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"===================\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\09Cluster Threshold = %g\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\09Weighting Exponent = %g\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\09Total Number of Clusters = %.20g\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"\0A\0ANumber of Vectors Per Cluster\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"=============================\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Cluster #%.20g = %.20g\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"\0A\0A\0ACluster Extents:        (Vector Size: %d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"================\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"\0A\0ACluster #%.20g\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"%.20g-%.20g  %.20g-%.20g  %.20g-%.20g\0A\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"\0A\0A\0ACluster Center Values:        (Vector Size: %d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"=====================\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%g  %g  %g\0A\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"TooManyClusters\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetImageDynamicThreshold(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._ExtentPacket, align 8
  %8 = alloca %struct._ExtentPacket, align 8
  %9 = alloca %struct._ExtentPacket, align 8
  %10 = alloca [3 x ptr], align 16
  %11 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #14
  br label %18

18:                                               ; preds = %15, %5
  tail call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef %3) #14
  br label %19

19:                                               ; preds = %18, %40
  %20 = phi i64 [ 0, %18 ], [ %41, %40 ]
  %21 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #15
  %22 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %20
  store ptr %21, ptr %22, align 8, !tbaa !53
  %23 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #15
  %24 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %20
  store ptr %23, ptr %24, align 8, !tbaa !53
  %25 = icmp eq ptr %21, null
  %26 = icmp eq ptr %23, null
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %19
  %29 = icmp eq i64 %20, 0
  br i1 %29, label %441, label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %32, %30 ], [ %20, %28 ]
  %32 = add nsw i64 %31, -1
  %33 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = tail call ptr @RelinquishMagickMemory(ptr noundef %34) #14
  store ptr %35, ptr %33, align 8, !tbaa !53
  %36 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %32
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  %38 = tail call ptr @RelinquishMagickMemory(ptr noundef %37) #14
  store ptr %38, ptr %36, align 8, !tbaa !53
  %39 = icmp sgt i64 %31, 1
  br i1 %39, label %30, label %441, !llvm.loop !54

40:                                               ; preds = %19
  %41 = add nuw nsw i64 %20, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %43, label %19, !llvm.loop !57

43:                                               ; preds = %40
  call fastcc void @InitializeHistogram(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %4)
  %44 = load ptr, ptr %11, align 16, !tbaa !53
  %45 = fcmp oeq double %2, 0.000000e+00
  %46 = select i1 %45, double 1.000000e+00, double %2
  %47 = load ptr, ptr %10, align 16, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %44, double noundef 0x3FC99999A0000000, double noundef %46, ptr noundef %47)
  %48 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %49, double noundef 0x3FC99999A0000000, double noundef %46, ptr noundef %51)
  %52 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 2
  %53 = load ptr, ptr %52, align 16, !tbaa !53
  %54 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  %55 = load ptr, ptr %54, align 16, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %53, double noundef 0x3FC99999A0000000, double noundef %46, ptr noundef %55)
  %56 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 32) #14
  %57 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 32) #14
  %58 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 32) #14
  %59 = getelementptr inbounds %struct._ExtentPacket, ptr %9, i64 0, i32 2
  %60 = getelementptr inbounds %struct._ExtentPacket, ptr %9, i64 0, i32 3
  %61 = getelementptr inbounds %struct._ExtentPacket, ptr %9, i64 0, i32 1
  %62 = getelementptr inbounds %struct._ExtentPacket, ptr %8, i64 0, i32 1
  %63 = getelementptr inbounds %struct._ExtentPacket, ptr %8, i64 0, i32 2
  %64 = getelementptr inbounds %struct._ExtentPacket, ptr %8, i64 0, i32 3
  %65 = getelementptr inbounds %struct._ExtentPacket, ptr %7, i64 0, i32 1
  %66 = getelementptr inbounds %struct._ExtentPacket, ptr %7, i64 0, i32 2
  %67 = getelementptr inbounds %struct._ExtentPacket, ptr %7, i64 0, i32 3
  br label %69

68:                                               ; preds = %130, %116
  br label %69

69:                                               ; preds = %68, %43
  %70 = phi ptr [ null, %43 ], [ %103, %68 ]
  %71 = phi ptr [ null, %43 ], [ %104, %68 ]
  %72 = load ptr, ptr %10, align 16, !tbaa !53
  store i64 0, ptr %59, align 8, !tbaa !58
  store float 0.000000e+00, ptr %9, align 8, !tbaa !61
  store i64 255, ptr %60, align 8, !tbaa !62
  %73 = load i64, ptr %61, align 8, !tbaa !63
  %74 = icmp slt i64 %73, 256
  br i1 %74, label %75, label %83

75:                                               ; preds = %69, %80
  %76 = phi i64 [ %81, %80 ], [ %73, %69 ]
  %77 = getelementptr inbounds i16, ptr %72, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !64
  %79 = icmp sgt i16 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = add i64 %76, 1
  store i64 %81, ptr %61, align 8, !tbaa !63
  %82 = icmp eq i64 %81, 256
  br i1 %82, label %83, label %75, !llvm.loop !65

83:                                               ; preds = %80, %75, %69
  %84 = phi i64 [ %73, %69 ], [ 256, %80 ], [ %76, %75 ]
  %85 = icmp sgt i64 %84, 255
  br i1 %85, label %177, label %86

86:                                               ; preds = %83
  store i64 %84, ptr %59, align 8, !tbaa !58
  %87 = load i64, ptr %61, align 8, !tbaa !63
  %88 = icmp slt i64 %87, 256
  br i1 %88, label %89, label %97

89:                                               ; preds = %86, %94
  %90 = phi i64 [ %95, %94 ], [ %87, %86 ]
  %91 = getelementptr inbounds i16, ptr %72, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !64
  %93 = icmp slt i16 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = add i64 %90, 1
  store i64 %95, ptr %61, align 8, !tbaa !63
  %96 = icmp eq i64 %95, 256
  br i1 %96, label %97, label %89, !llvm.loop !66

97:                                               ; preds = %94, %89, %86
  %98 = phi i64 [ %87, %86 ], [ 256, %94 ], [ %90, %89 ]
  %99 = add nsw i64 %98, -1
  store i64 %99, ptr %60, align 8, !tbaa !62
  br i1 %85, label %177, label %100

100:                                              ; preds = %97
  store i64 0, ptr %62, align 8, !tbaa !63
  br label %102

101:                                              ; preds = %162, %148
  br label %102

102:                                              ; preds = %101, %100
  %103 = phi ptr [ %70, %100 ], [ %135, %101 ]
  %104 = phi ptr [ %71, %100 ], [ %136, %101 ]
  %105 = load ptr, ptr %50, align 8, !tbaa !53
  store i64 0, ptr %63, align 8, !tbaa !58
  store float 0.000000e+00, ptr %8, align 8, !tbaa !61
  store i64 255, ptr %64, align 8, !tbaa !62
  %106 = load i64, ptr %62, align 8, !tbaa !63
  %107 = icmp slt i64 %106, 256
  br i1 %107, label %108, label %116

108:                                              ; preds = %102, %113
  %109 = phi i64 [ %114, %113 ], [ %106, %102 ]
  %110 = getelementptr inbounds i16, ptr %105, i64 %109
  %111 = load i16, ptr %110, align 2, !tbaa !64
  %112 = icmp sgt i16 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = add i64 %109, 1
  store i64 %114, ptr %62, align 8, !tbaa !63
  %115 = icmp eq i64 %114, 256
  br i1 %115, label %116, label %108, !llvm.loop !65

116:                                              ; preds = %113, %108, %102
  %117 = phi i64 [ %106, %102 ], [ 256, %113 ], [ %109, %108 ]
  %118 = icmp sgt i64 %117, 255
  br i1 %118, label %68, label %119

119:                                              ; preds = %116
  store i64 %117, ptr %63, align 8, !tbaa !58
  %120 = load i64, ptr %62, align 8, !tbaa !63
  %121 = icmp slt i64 %120, 256
  br i1 %121, label %122, label %130

122:                                              ; preds = %119, %127
  %123 = phi i64 [ %128, %127 ], [ %120, %119 ]
  %124 = getelementptr inbounds i16, ptr %105, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !64
  %126 = icmp slt i16 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = add i64 %123, 1
  store i64 %128, ptr %62, align 8, !tbaa !63
  %129 = icmp eq i64 %128, 256
  br i1 %129, label %130, label %122, !llvm.loop !66

130:                                              ; preds = %127, %122, %119
  %131 = phi i64 [ %120, %119 ], [ 256, %127 ], [ %123, %122 ]
  %132 = add nsw i64 %131, -1
  store i64 %132, ptr %64, align 8, !tbaa !62
  br i1 %118, label %68, label %133, !llvm.loop !67

133:                                              ; preds = %130
  store i64 0, ptr %65, align 8, !tbaa !63
  br label %134

134:                                              ; preds = %172, %133
  %135 = phi ptr [ %103, %133 ], [ %167, %172 ]
  %136 = phi ptr [ %104, %133 ], [ %170, %172 ]
  %137 = load ptr, ptr %54, align 16, !tbaa !53
  store i64 0, ptr %66, align 8, !tbaa !58
  store float 0.000000e+00, ptr %7, align 8, !tbaa !61
  store i64 255, ptr %67, align 8, !tbaa !62
  %138 = load i64, ptr %65, align 8, !tbaa !63
  %139 = icmp slt i64 %138, 256
  br i1 %139, label %140, label %148

140:                                              ; preds = %134, %145
  %141 = phi i64 [ %146, %145 ], [ %138, %134 ]
  %142 = getelementptr inbounds i16, ptr %137, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !64
  %144 = icmp sgt i16 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = add i64 %141, 1
  store i64 %146, ptr %65, align 8, !tbaa !63
  %147 = icmp eq i64 %146, 256
  br i1 %147, label %148, label %140, !llvm.loop !65

148:                                              ; preds = %145, %140, %134
  %149 = phi i64 [ %138, %134 ], [ 256, %145 ], [ %141, %140 ]
  %150 = icmp sgt i64 %149, 255
  br i1 %150, label %101, label %151

151:                                              ; preds = %148
  store i64 %149, ptr %66, align 8, !tbaa !58
  %152 = load i64, ptr %65, align 8, !tbaa !63
  %153 = icmp slt i64 %152, 256
  br i1 %153, label %154, label %162

154:                                              ; preds = %151, %159
  %155 = phi i64 [ %160, %159 ], [ %152, %151 ]
  %156 = getelementptr inbounds i16, ptr %137, i64 %155
  %157 = load i16, ptr %156, align 2, !tbaa !64
  %158 = icmp slt i16 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = add i64 %155, 1
  store i64 %160, ptr %65, align 8, !tbaa !63
  %161 = icmp eq i64 %160, 256
  br i1 %161, label %162, label %154, !llvm.loop !66

162:                                              ; preds = %159, %154, %151
  %163 = phi i64 [ %152, %151 ], [ 256, %159 ], [ %155, %154 ]
  %164 = add nsw i64 %163, -1
  store i64 %164, ptr %67, align 8, !tbaa !62
  br i1 %150, label %101, label %165, !llvm.loop !68

165:                                              ; preds = %162
  %166 = icmp eq ptr %136, null
  %167 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #16
  br i1 %166, label %169, label %168

168:                                              ; preds = %165
  store ptr %167, ptr %135, align 8, !tbaa !69
  br label %169

169:                                              ; preds = %165, %168
  %170 = phi ptr [ %136, %168 ], [ %167, %165 ]
  %171 = icmp eq ptr %167, null
  br i1 %171, label %441, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct._Cluster, ptr %167, i64 0, i32 4
  store i64 0, ptr %173, align 8, !tbaa !71
  %174 = getelementptr inbounds %struct._Cluster, ptr %167, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %174, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !72
  %175 = getelementptr inbounds %struct._Cluster, ptr %167, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %175, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !72
  %176 = getelementptr inbounds %struct._Cluster, ptr %167, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %176, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !72
  store ptr null, ptr %167, align 8, !tbaa !69
  br label %134, !llvm.loop !75

177:                                              ; preds = %83, %97
  %178 = icmp eq ptr %71, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %177
  %180 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #16
  %181 = icmp eq ptr %180, null
  br i1 %181, label %441, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct._Cluster, ptr %180, i64 0, i32 4
  store i64 0, ptr %183, align 8, !tbaa !71
  %184 = getelementptr inbounds %struct._Cluster, ptr %180, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %184, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !72
  %185 = getelementptr inbounds %struct._Cluster, ptr %180, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %185, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !72
  %186 = getelementptr inbounds %struct._Cluster, ptr %180, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %186, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !72
  store ptr null, ptr %180, align 8, !tbaa !69
  br label %187

187:                                              ; preds = %182, %177
  %188 = phi ptr [ %180, %182 ], [ %71, %177 ]
  %189 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %190 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %191 = load i64, ptr %190, align 8, !tbaa !76
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %305

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %195 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %196 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %201

197:                                              ; preds = %302
  %198 = add nuw nsw i64 %202, 1
  %199 = load i64, ptr %190, align 8, !tbaa !76
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %305, !llvm.loop !77

201:                                              ; preds = %193, %197
  %202 = phi i64 [ 0, %193 ], [ %198, %197 ]
  %203 = load i64, ptr %189, align 8, !tbaa !78
  %204 = call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %202, i64 noundef %203, i64 noundef 1, ptr noundef %4) #14
  %205 = icmp eq ptr %204, null
  br i1 %205, label %305, label %206

206:                                              ; preds = %201
  %207 = load i64, ptr %189, align 8, !tbaa !78
  %208 = icmp sgt i64 %207, 0
  br i1 %208, label %209, label %292

209:                                              ; preds = %206, %288
  %210 = phi i64 [ %290, %288 ], [ 0, %206 ]
  %211 = phi ptr [ %289, %288 ], [ %204, %206 ]
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 0, i32 2
  %213 = load i16, ptr %212, align 2, !tbaa !79
  %214 = zext i16 %213 to i64
  %215 = add nuw nsw i64 %214, 128
  %216 = lshr i64 %215, 8
  %217 = sub nsw i64 %215, %216
  %218 = lshr i64 %217, 8
  %219 = and i64 %218, 255
  %220 = add nuw nsw i64 %219, 3
  %221 = add nsw i64 %219, -3
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 0, i32 1
  br label %223

223:                                              ; preds = %209, %285
  %224 = phi ptr [ %188, %209 ], [ %286, %285 ]
  %225 = getelementptr inbounds %struct._Cluster, ptr %224, i64 0, i32 1, i32 2
  %226 = load i64, ptr %225, align 8, !tbaa !80
  %227 = icmp sgt i64 %226, %220
  br i1 %227, label %285, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct._Cluster, ptr %224, i64 0, i32 1, i32 3
  %230 = load i64, ptr %229, align 8, !tbaa !81
  %231 = icmp slt i64 %230, %221
  br i1 %231, label %285, label %232

232:                                              ; preds = %228
  %233 = load i16, ptr %222, align 2, !tbaa !82
  %234 = zext i16 %233 to i64
  %235 = add nuw nsw i64 %234, 128
  %236 = lshr i64 %235, 8
  %237 = sub nsw i64 %235, %236
  %238 = lshr i64 %237, 8
  %239 = and i64 %238, 255
  %240 = getelementptr inbounds %struct._Cluster, ptr %224, i64 0, i32 2, i32 2
  %241 = load i64, ptr %240, align 8, !tbaa !83
  %242 = add nsw i64 %241, -3
  %243 = icmp sgt i64 %242, %239
  br i1 %243, label %285, label %244

244:                                              ; preds = %232
  %245 = getelementptr inbounds %struct._Cluster, ptr %224, i64 0, i32 2, i32 3
  %246 = load i64, ptr %245, align 8, !tbaa !84
  %247 = add nsw i64 %246, 3
  %248 = icmp slt i64 %247, %239
  br i1 %248, label %285, label %249

249:                                              ; preds = %244
  %250 = load i16, ptr %211, align 2, !tbaa !85
  %251 = zext i16 %250 to i64
  %252 = add nuw nsw i64 %251, 128
  %253 = lshr i64 %252, 8
  %254 = sub nsw i64 %252, %253
  %255 = lshr i64 %254, 8
  %256 = and i64 %255, 255
  %257 = getelementptr inbounds %struct._Cluster, ptr %224, i64 0, i32 3, i32 2
  %258 = load i64, ptr %257, align 8, !tbaa !86
  %259 = add nsw i64 %258, -3
  %260 = icmp sgt i64 %259, %256
  br i1 %260, label %285, label %261

261:                                              ; preds = %249
  %262 = getelementptr inbounds %struct._Cluster, ptr %224, i64 0, i32 3, i32 3
  %263 = load i64, ptr %262, align 8, !tbaa !87
  %264 = add nsw i64 %263, 3
  %265 = icmp slt i64 %264, %256
  br i1 %265, label %285, label %266

266:                                              ; preds = %261
  %267 = trunc i64 %218 to i8
  %268 = getelementptr inbounds %struct._Cluster, ptr %224, i64 0, i32 1
  %269 = getelementptr inbounds %struct._Cluster, ptr %224, i64 0, i32 2
  %270 = getelementptr inbounds %struct._Cluster, ptr %224, i64 0, i32 3
  %271 = uitofp i8 %267 to float
  %272 = load float, ptr %268, align 8, !tbaa !88
  %273 = fadd float %272, %271
  store float %273, ptr %268, align 8, !tbaa !88
  %274 = trunc i64 %238 to i8
  %275 = uitofp i8 %274 to float
  %276 = load float, ptr %269, align 8, !tbaa !89
  %277 = fadd float %276, %275
  store float %277, ptr %269, align 8, !tbaa !89
  %278 = trunc i64 %255 to i8
  %279 = uitofp i8 %278 to float
  %280 = load float, ptr %270, align 8, !tbaa !90
  %281 = fadd float %280, %279
  store float %281, ptr %270, align 8, !tbaa !90
  %282 = getelementptr inbounds %struct._Cluster, ptr %224, i64 0, i32 4
  %283 = load i64, ptr %282, align 8, !tbaa !71
  %284 = add nsw i64 %283, 1
  store i64 %284, ptr %282, align 8, !tbaa !71
  br label %288

285:                                              ; preds = %223, %228, %232, %244, %249, %261
  %286 = load ptr, ptr %224, align 8, !tbaa !69
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %223, !llvm.loop !91

288:                                              ; preds = %285, %266
  %289 = getelementptr inbounds %struct._PixelPacket, ptr %211, i64 1
  %290 = add nuw nsw i64 %210, 1
  %291 = icmp eq i64 %290, %207
  br i1 %291, label %292, label %209, !llvm.loop !92

292:                                              ; preds = %288, %206
  %293 = load i64, ptr %190, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #14
  %294 = load ptr, ptr %194, align 8, !tbaa !93
  %295 = icmp eq ptr %294, null
  br i1 %295, label %302, label %296

296:                                              ; preds = %292
  %297 = shl i64 %293, 1
  %298 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %195) #14
  %299 = load ptr, ptr %194, align 8, !tbaa !93
  %300 = load ptr, ptr %196, align 8, !tbaa !94
  %301 = call i32 %299(ptr noundef nonnull %6, i64 noundef %202, i64 noundef %297, ptr noundef %300) #14
  br label %302

302:                                              ; preds = %292, %296
  %303 = phi i32 [ %301, %296 ], [ 1, %292 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %197

305:                                              ; preds = %197, %201, %302, %187
  br label %306

306:                                              ; preds = %305, %340
  %307 = phi i64 [ %343, %340 ], [ 0, %305 ]
  %308 = phi ptr [ %342, %340 ], [ %188, %305 ]
  %309 = phi ptr [ %341, %340 ], [ %188, %305 ]
  %310 = phi ptr [ %311, %340 ], [ %188, %305 ]
  %311 = load ptr, ptr %310, align 8, !tbaa !69
  %312 = getelementptr inbounds %struct._Cluster, ptr %310, i64 0, i32 4
  %313 = load i64, ptr %312, align 8, !tbaa !71
  %314 = icmp sgt i64 %313, 0
  br i1 %314, label %315, label %334

315:                                              ; preds = %306
  %316 = sitofp i64 %313 to double
  %317 = sitofp i64 %307 to double
  %318 = fmul double %317, %1
  %319 = fdiv double %318, 1.000000e+02
  %320 = fcmp ugt double %319, %316
  br i1 %320, label %334, label %321

321:                                              ; preds = %315
  %322 = getelementptr inbounds %struct._Cluster, ptr %310, i64 0, i32 5
  store i64 %307, ptr %322, align 8, !tbaa !95
  %323 = sitofp i64 %313 to float
  %324 = getelementptr inbounds %struct._Cluster, ptr %310, i64 0, i32 1
  %325 = load float, ptr %324, align 8, !tbaa !88
  %326 = fdiv float %325, %323
  store float %326, ptr %324, align 8, !tbaa !88
  %327 = getelementptr inbounds %struct._Cluster, ptr %310, i64 0, i32 2
  %328 = load float, ptr %327, align 8, !tbaa !89
  %329 = fdiv float %328, %323
  store float %329, ptr %327, align 8, !tbaa !89
  %330 = getelementptr inbounds %struct._Cluster, ptr %310, i64 0, i32 3
  %331 = load float, ptr %330, align 8, !tbaa !90
  %332 = fdiv float %331, %323
  store float %332, ptr %330, align 8, !tbaa !90
  %333 = add nsw i64 %307, 1
  br label %340

334:                                              ; preds = %315, %306
  %335 = icmp eq ptr %310, %309
  br i1 %335, label %337, label %336

336:                                              ; preds = %334
  store ptr %311, ptr %308, align 8, !tbaa !69
  br label %337

337:                                              ; preds = %334, %336
  %338 = phi ptr [ %309, %336 ], [ %311, %334 ]
  %339 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %310) #14
  br label %340

340:                                              ; preds = %337, %321
  %341 = phi ptr [ %309, %321 ], [ %338, %337 ]
  %342 = phi ptr [ %310, %321 ], [ %308, %337 ]
  %343 = phi i64 [ %333, %321 ], [ %307, %337 ]
  %344 = icmp eq ptr %311, null
  br i1 %344, label %345, label %306, !llvm.loop !96

345:                                              ; preds = %340
  %346 = icmp sgt i64 %343, 1
  br i1 %346, label %347, label %379

347:                                              ; preds = %345
  %348 = load ptr, ptr %341, align 8, !tbaa !69
  %349 = load ptr, ptr %348, align 8, !tbaa !69
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %355

351:                                              ; preds = %355, %347
  %352 = phi ptr [ %348, %347 ], [ %364, %355 ]
  %353 = load ptr, ptr %348, align 8, !tbaa !69
  %354 = icmp eq ptr %353, null
  br i1 %354, label %379, label %367

355:                                              ; preds = %347, %355
  %356 = phi ptr [ %365, %355 ], [ %349, %347 ]
  %357 = phi ptr [ %364, %355 ], [ %348, %347 ]
  %358 = phi ptr [ %356, %355 ], [ %348, %347 ]
  %359 = getelementptr inbounds %struct._Cluster, ptr %358, i64 0, i32 4
  %360 = load i64, ptr %359, align 8, !tbaa !71
  %361 = getelementptr inbounds %struct._Cluster, ptr %357, i64 0, i32 4
  %362 = load i64, ptr %361, align 8, !tbaa !71
  %363 = icmp slt i64 %360, %362
  %364 = select i1 %363, ptr %358, ptr %357
  %365 = load ptr, ptr %356, align 8, !tbaa !69
  %366 = icmp eq ptr %365, null
  br i1 %366, label %351, label %355, !llvm.loop !97

367:                                              ; preds = %351, %367
  %368 = phi ptr [ %377, %367 ], [ %353, %351 ]
  %369 = phi ptr [ %376, %367 ], [ %348, %351 ]
  %370 = phi ptr [ %368, %367 ], [ %348, %351 ]
  %371 = getelementptr inbounds %struct._Cluster, ptr %370, i64 0, i32 4
  %372 = load i64, ptr %371, align 8, !tbaa !71
  %373 = getelementptr inbounds %struct._Cluster, ptr %369, i64 0, i32 4
  %374 = load i64, ptr %373, align 8, !tbaa !71
  %375 = icmp sgt i64 %372, %374
  %376 = select i1 %375, ptr %370, ptr %369
  %377 = load ptr, ptr %368, align 8, !tbaa !69
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %367, !llvm.loop !98

379:                                              ; preds = %367, %351, %345
  %380 = phi ptr [ %341, %345 ], [ %352, %351 ], [ %352, %367 ]
  %381 = phi ptr [ %341, %345 ], [ %348, %351 ], [ %376, %367 ]
  %382 = icmp eq ptr %381, null
  br i1 %382, label %423, label %383

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct._Cluster, ptr %381, i64 0, i32 1
  %385 = load float, ptr %384, align 8, !tbaa !88
  %386 = getelementptr inbounds %struct._Cluster, ptr %380, i64 0, i32 1
  %387 = load float, ptr %386, align 8, !tbaa !88
  %388 = fadd float %385, %387
  %389 = fmul float %388, 5.000000e-01
  %390 = fpext float %389 to double
  %391 = fadd double %390, 5.000000e-01
  %392 = fptoui double %391 to i8
  %393 = zext i8 %392 to i16
  %394 = mul nuw i16 %393, 257
  %395 = uitofp i16 %394 to float
  %396 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %395, ptr %396, align 8, !tbaa !99
  %397 = getelementptr inbounds %struct._Cluster, ptr %381, i64 0, i32 2
  %398 = load float, ptr %397, align 8, !tbaa !89
  %399 = getelementptr inbounds %struct._Cluster, ptr %380, i64 0, i32 2
  %400 = load float, ptr %399, align 8, !tbaa !89
  %401 = fadd float %398, %400
  %402 = fmul float %401, 5.000000e-01
  %403 = fpext float %402 to double
  %404 = fadd double %403, 5.000000e-01
  %405 = fptoui double %404 to i8
  %406 = zext i8 %405 to i16
  %407 = mul nuw i16 %406, 257
  %408 = uitofp i16 %407 to float
  %409 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %408, ptr %409, align 4, !tbaa !101
  %410 = getelementptr inbounds %struct._Cluster, ptr %381, i64 0, i32 3
  %411 = load float, ptr %410, align 8, !tbaa !90
  %412 = getelementptr inbounds %struct._Cluster, ptr %380, i64 0, i32 3
  %413 = load float, ptr %412, align 8, !tbaa !90
  %414 = fadd float %411, %413
  %415 = fmul float %414, 5.000000e-01
  %416 = fpext float %415 to double
  %417 = fadd double %416, 5.000000e-01
  %418 = fptoui double %417 to i8
  %419 = zext i8 %418 to i16
  %420 = mul nuw i16 %419, 257
  %421 = uitofp i16 %420 to float
  %422 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %421, ptr %422, align 8, !tbaa !102
  br label %423

423:                                              ; preds = %383, %379
  %424 = icmp eq ptr %341, null
  br i1 %424, label %430, label %425

425:                                              ; preds = %423, %425
  %426 = phi ptr [ %427, %425 ], [ %341, %423 ]
  %427 = load ptr, ptr %426, align 8, !tbaa !69
  %428 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %426) #14
  %429 = icmp eq ptr %427, null
  br i1 %429, label %430, label %425, !llvm.loop !103

430:                                              ; preds = %425, %423
  br label %431

431:                                              ; preds = %430, %431
  %432 = phi i64 [ %439, %431 ], [ 0, %430 ]
  %433 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %432
  %434 = load ptr, ptr %433, align 8, !tbaa !53
  %435 = call ptr @RelinquishMagickMemory(ptr noundef %434) #14
  store ptr %435, ptr %433, align 8, !tbaa !53
  %436 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %432
  %437 = load ptr, ptr %436, align 8, !tbaa !53
  %438 = call ptr @RelinquishMagickMemory(ptr noundef %437) #14
  store ptr %438, ptr %436, align 8, !tbaa !53
  %439 = add nuw nsw i64 %432, 1
  %440 = icmp eq i64 %439, 3
  br i1 %440, label %445, label %431, !llvm.loop !104

441:                                              ; preds = %169, %30, %179, %28
  %442 = phi i64 [ 1008, %28 ], [ 1079, %179 ], [ 1008, %30 ], [ 1055, %169 ]
  %443 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %444 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef %442, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %443) #14
  br label %445

445:                                              ; preds = %431, %441
  %446 = phi i32 [ 0, %441 ], [ 1, %431 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  ret i32 %446
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @InitializeHistogram(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !53
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  br label %17

9:                                                ; preds = %17
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !76
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %9
  %15 = getelementptr inbounds ptr, ptr %1, i64 1
  %16 = getelementptr inbounds ptr, ptr %1, i64 2
  br label %24

17:                                               ; preds = %3, %17
  %18 = phi i64 [ 0, %3 ], [ %22, %17 ]
  %19 = getelementptr inbounds i64, ptr %4, i64 %18
  store i64 0, ptr %19, align 8, !tbaa !74
  %20 = getelementptr inbounds i64, ptr %6, i64 %18
  store i64 0, ptr %20, align 8, !tbaa !74
  %21 = getelementptr inbounds i64, ptr %8, i64 %18
  store i64 0, ptr %21, align 8, !tbaa !74
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, 256
  br i1 %23, label %9, label %17, !llvm.loop !105

24:                                               ; preds = %14, %75
  %25 = phi i64 [ 0, %14 ], [ %76, %75 ]
  %26 = load i64, ptr %10, align 8, !tbaa !78
  %27 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %25, i64 noundef %26, i64 noundef 1, ptr noundef %2) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %79, label %29

29:                                               ; preds = %24
  %30 = load i64, ptr %10, align 8, !tbaa !78
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %29
  %33 = load ptr, ptr %1, align 8, !tbaa !53
  %34 = load ptr, ptr %15, align 8, !tbaa !53
  %35 = load ptr, ptr %16, align 8, !tbaa !53
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi i64 [ 0, %32 ], [ %72, %36 ]
  %38 = phi ptr [ %27, %32 ], [ %71, %36 ]
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 0, i32 2
  %40 = load i16, ptr %39, align 2, !tbaa !79
  %41 = zext i16 %40 to i64
  %42 = add nuw nsw i64 %41, 128
  %43 = lshr i64 %42, 8
  %44 = sub nsw i64 %42, %43
  %45 = lshr i64 %44, 8
  %46 = and i64 %45, 255
  %47 = getelementptr inbounds i64, ptr %33, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !74
  %49 = add nsw i64 %48, 1
  store i64 %49, ptr %47, align 8, !tbaa !74
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 0, i32 1
  %51 = load i16, ptr %50, align 2, !tbaa !82
  %52 = zext i16 %51 to i64
  %53 = add nuw nsw i64 %52, 128
  %54 = lshr i64 %53, 8
  %55 = sub nsw i64 %53, %54
  %56 = lshr i64 %55, 8
  %57 = and i64 %56, 255
  %58 = getelementptr inbounds i64, ptr %34, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !74
  %60 = add nsw i64 %59, 1
  store i64 %60, ptr %58, align 8, !tbaa !74
  %61 = load i16, ptr %38, align 2, !tbaa !85
  %62 = zext i16 %61 to i64
  %63 = add nuw nsw i64 %62, 128
  %64 = lshr i64 %63, 8
  %65 = sub nsw i64 %63, %64
  %66 = lshr i64 %65, 8
  %67 = and i64 %66, 255
  %68 = getelementptr inbounds i64, ptr %35, i64 %67
  %69 = load i64, ptr %68, align 8, !tbaa !74
  %70 = add nsw i64 %69, 1
  store i64 %70, ptr %68, align 8, !tbaa !74
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 1
  %72 = add nuw nsw i64 %37, 1
  %73 = load i64, ptr %10, align 8, !tbaa !78
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %36, label %75, !llvm.loop !106

75:                                               ; preds = %36, %29
  %76 = add nuw nsw i64 %25, 1
  %77 = load i64, ptr %11, align 8, !tbaa !76
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %24, label %79, !llvm.loop !107

79:                                               ; preds = %75, %24, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @OptimalTau(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %9 = tail call dereferenceable_or_null(4800) ptr @AcquireQuantumMemory(i64 noundef 600, i64 noundef 8) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %655, label %11

11:                                               ; preds = %4
  %12 = fsub double 0x4014CCCCC0000000, %1
  %13 = fmul double %12, 2.000000e+00
  %14 = fptoui double %13 to i64
  %15 = add i64 %14, 2
  %16 = tail call ptr @AcquireQuantumMemory(i64 noundef %15, i64 noundef 1540) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %655, label %18

18:                                               ; preds = %11
  %19 = icmp sgt i64 %15, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %23, %20 ], [ 0, %18 ]
  %22 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %21
  store float -1.000000e+00, ptr %22, align 4, !tbaa !108
  %23 = add nuw nsw i64 %21, 1
  %24 = icmp eq i64 %23, %15
  br i1 %24, label %25, label %20, !llvm.loop !110

25:                                               ; preds = %20, %18
  %26 = tail call dereferenceable_or_null(1024) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 4) #15
  %27 = tail call dereferenceable_or_null(1024) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 4) #15
  %28 = icmp eq ptr %26, null
  %29 = icmp eq ptr %27, null
  %30 = or i1 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = fcmp ugt double %1, 0x4014CCCCC0000000
  br i1 %32, label %213, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds float, ptr %26, i64 255
  %35 = getelementptr inbounds float, ptr %26, i64 1
  %36 = getelementptr inbounds float, ptr %26, i64 2
  %37 = getelementptr inbounds float, ptr %26, i64 253
  %38 = getelementptr inbounds float, ptr %26, i64 254
  %39 = getelementptr inbounds float, ptr %27, i64 255
  %40 = getelementptr float, ptr %26, i64 -1
  %41 = fptrunc double %2 to float
  %42 = fneg float %41
  br label %50

43:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #14
  call void @GetExceptionInfo(ptr noundef nonnull %8) #14
  %44 = tail call ptr @__errno_location() #17
  %45 = load i32, ptr %44, align 4, !tbaa !111
  %46 = call ptr @GetExceptionMessage(i32 noundef %45) #14
  %47 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1574, i32 noundef 700, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %46) #14
  %48 = call ptr @DestroyString(ptr noundef %46) #14
  call void @CatchException(ptr noundef nonnull %8) #14
  %49 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %8) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #18
  unreachable

50:                                               ; preds = %33, %208
  %51 = phi double [ 0x4014CCCCC0000000, %33 ], [ %211, %208 ]
  %52 = phi i64 [ 0, %33 ], [ %209, %208 ]
  %53 = phi float [ 0x4014CCCCC0000000, %33 ], [ %210, %208 ]
  %54 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %52
  store float %53, ptr %54, align 4, !tbaa !108
  %55 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %52, i32 1
  %56 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #14
  call void @GetExceptionInfo(ptr noundef nonnull %6) #14
  %59 = tail call ptr @__errno_location() #17
  %60 = load i32, ptr %59, align 4, !tbaa !111
  %61 = call ptr @GetExceptionMessage(i32 noundef %60) #14
  %62 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1735, i32 noundef 700, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef %61) #14
  %63 = call ptr @DestroyString(ptr noundef %61) #14
  call void @CatchException(ptr noundef nonnull %6) #14
  %64 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #18
  unreachable

65:                                               ; preds = %50
  %66 = fmul double %51, 0x40040D931FF62705
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %56, i8 0, i64 2048, i1 false), !tbaa !112
  %67 = fmul double %51, 2.000000e+00
  %68 = fmul double %51, %67
  %69 = fdiv double -1.000000e+00, %68
  br label %70

70:                                               ; preds = %65, %70
  %71 = phi i64 [ %78, %70 ], [ 0, %65 ]
  %72 = sitofp i64 %71 to double
  %73 = fmul double %69, %72
  %74 = fmul double %73, %72
  %75 = tail call double @exp(double noundef %74) #14
  %76 = getelementptr inbounds double, ptr %56, i64 %71
  store double %75, ptr %76, align 8, !tbaa !112
  %77 = fcmp uge double %75, 1.000000e-15
  %78 = add nuw nsw i64 %71, 1
  %79 = icmp ult i64 %71, 255
  %80 = and i1 %77, %79
  br i1 %80, label %70, label %81, !llvm.loop !113

81:                                               ; preds = %70
  %82 = fdiv double 1.000000e+00, %66
  br label %83

83:                                               ; preds = %81, %98
  %84 = phi i64 [ %102, %98 ], [ 0, %81 ]
  br label %85

85:                                               ; preds = %83, %85
  %86 = phi i64 [ 0, %83 ], [ %96, %85 ]
  %87 = phi double [ 0.000000e+00, %83 ], [ %95, %85 ]
  %88 = getelementptr inbounds i64, ptr %0, i64 %86
  %89 = load i64, ptr %88, align 8, !tbaa !74
  %90 = sitofp i64 %89 to double
  %91 = sub nsw i64 %84, %86
  %92 = tail call i64 @llvm.abs.i64(i64 %91, i1 true)
  %93 = getelementptr inbounds double, ptr %56, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !112
  %95 = tail call double @llvm.fmuladd.f64(double %90, double %94, double %87)
  %96 = add nuw nsw i64 %86, 1
  %97 = icmp eq i64 %96, 256
  br i1 %97, label %98, label %85, !llvm.loop !114

98:                                               ; preds = %85
  %99 = fmul double %82, %95
  %100 = fptrunc double %99 to float
  %101 = getelementptr inbounds float, ptr %55, i64 %84
  store float %100, ptr %101, align 4, !tbaa !73
  %102 = add nuw nsw i64 %84, 1
  %103 = icmp eq i64 %102, 256
  br i1 %103, label %104, label %83, !llvm.loop !115

104:                                              ; preds = %98
  %105 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %56) #14
  %106 = load float, ptr %55, align 4, !tbaa !73
  %107 = fpext float %106 to double
  %108 = getelementptr inbounds float, ptr %55, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !73
  %110 = fpext float %109 to double
  %111 = fmul double %110, 2.000000e+00
  %112 = tail call double @llvm.fmuladd.f64(double %107, double -1.500000e+00, double %111)
  %113 = getelementptr inbounds float, ptr %55, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !73
  %115 = fpext float %114 to double
  %116 = tail call double @llvm.fmuladd.f64(double %115, double -5.000000e-01, double %112)
  %117 = fptrunc double %116 to float
  store float %117, ptr %26, align 4, !tbaa !73
  %118 = getelementptr inbounds float, ptr %55, i64 253
  %119 = load float, ptr %118, align 4, !tbaa !73
  %120 = fpext float %119 to double
  %121 = getelementptr inbounds float, ptr %55, i64 254
  %122 = load float, ptr %121, align 4, !tbaa !73
  %123 = fpext float %122 to double
  %124 = fmul double %123, -2.000000e+00
  %125 = tail call double @llvm.fmuladd.f64(double %120, double 5.000000e-01, double %124)
  %126 = getelementptr inbounds float, ptr %55, i64 255
  %127 = load float, ptr %126, align 4, !tbaa !73
  %128 = fpext float %127 to double
  %129 = tail call double @llvm.fmuladd.f64(double %128, double 1.500000e+00, double %125)
  %130 = fptrunc double %129 to float
  store float %130, ptr %34, align 4, !tbaa !73
  %131 = getelementptr float, ptr %55, i64 -1
  br label %132

132:                                              ; preds = %132, %104
  %133 = phi i64 [ 1, %104 ], [ %134, %132 ]
  %134 = add nuw nsw i64 %133, 1
  %135 = getelementptr inbounds float, ptr %55, i64 %134
  %136 = load float, ptr %135, align 4, !tbaa !73
  %137 = getelementptr float, ptr %131, i64 %133
  %138 = load float, ptr %137, align 4, !tbaa !73
  %139 = fsub float %136, %138
  %140 = fmul float %139, 5.000000e-01
  %141 = getelementptr inbounds float, ptr %26, i64 %133
  store float %140, ptr %141, align 4, !tbaa !73
  %142 = icmp eq i64 %134, 255
  br i1 %142, label %143, label %132, !llvm.loop !116

143:                                              ; preds = %132
  %144 = load float, ptr %26, align 4, !tbaa !73
  %145 = fpext float %144 to double
  %146 = load float, ptr %35, align 4, !tbaa !73
  %147 = fpext float %146 to double
  %148 = fmul double %147, 2.000000e+00
  %149 = tail call double @llvm.fmuladd.f64(double %145, double -1.500000e+00, double %148)
  %150 = load float, ptr %36, align 4, !tbaa !73
  %151 = fpext float %150 to double
  %152 = tail call double @llvm.fmuladd.f64(double %151, double -5.000000e-01, double %149)
  %153 = fptrunc double %152 to float
  store float %153, ptr %27, align 4, !tbaa !73
  %154 = load float, ptr %37, align 4, !tbaa !73
  %155 = fpext float %154 to double
  %156 = load float, ptr %38, align 4, !tbaa !73
  %157 = fpext float %156 to double
  %158 = fmul double %157, -2.000000e+00
  %159 = tail call double @llvm.fmuladd.f64(double %155, double 5.000000e-01, double %158)
  %160 = load float, ptr %34, align 4, !tbaa !73
  %161 = fpext float %160 to double
  %162 = tail call double @llvm.fmuladd.f64(double %161, double 1.500000e+00, double %159)
  %163 = fptrunc double %162 to float
  store float %163, ptr %39, align 4, !tbaa !73
  br label %164

164:                                              ; preds = %164, %143
  %165 = phi i64 [ 1, %143 ], [ %166, %164 ]
  %166 = add nuw nsw i64 %165, 1
  %167 = getelementptr inbounds float, ptr %26, i64 %166
  %168 = load float, ptr %167, align 4, !tbaa !73
  %169 = getelementptr float, ptr %40, i64 %165
  %170 = load float, ptr %169, align 4, !tbaa !73
  %171 = fsub float %168, %170
  %172 = fmul float %171, 5.000000e-01
  %173 = getelementptr inbounds float, ptr %27, i64 %165
  store float %172, ptr %173, align 4, !tbaa !73
  %174 = icmp eq i64 %166, 255
  br i1 %174, label %175, label %164, !llvm.loop !116

175:                                              ; preds = %164, %183
  %176 = phi i64 [ %184, %183 ], [ 0, %164 ]
  %177 = getelementptr inbounds float, ptr %27, i64 %176
  %178 = load float, ptr %177, align 4, !tbaa !73
  %179 = fcmp uge float %178, %41
  %180 = fcmp ult float %178, %42
  %181 = or i1 %179, %180
  br i1 %181, label %183, label %182

182:                                              ; preds = %175
  store float 0.000000e+00, ptr %177, align 4, !tbaa !73
  br label %183

183:                                              ; preds = %182, %175
  %184 = add nuw nsw i64 %176, 1
  %185 = icmp eq i64 %184, 256
  br i1 %185, label %186, label %175, !llvm.loop !117

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %52, i32 2
  br label %188

188:                                              ; preds = %186, %204
  %189 = phi i64 [ %205, %204 ], [ 0, %186 ]
  %190 = phi i64 [ %206, %204 ], [ 0, %186 ]
  %191 = getelementptr inbounds i16, ptr %187, i64 %190
  store i16 0, ptr %191, align 2, !tbaa !64
  %192 = getelementptr inbounds float, ptr %27, i64 %190
  %193 = load float, ptr %192, align 4, !tbaa !73
  %194 = fcmp olt float %193, 0.000000e+00
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = icmp sgt i64 %189, 0
  br i1 %196, label %201, label %204

197:                                              ; preds = %188
  %198 = fcmp ogt float %193, 0.000000e+00
  br i1 %198, label %199, label %204

199:                                              ; preds = %197
  %200 = icmp slt i64 %189, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %199, %195
  %202 = phi i16 [ -1, %195 ], [ 1, %199 ]
  %203 = phi i64 [ 1, %195 ], [ -1, %199 ]
  store i16 %202, ptr %191, align 2, !tbaa !64
  br label %204

204:                                              ; preds = %201, %199, %197, %195
  %205 = phi i64 [ %189, %197 ], [ 1, %195 ], [ -1, %199 ], [ %203, %201 ]
  %206 = add nuw nsw i64 %190, 1
  %207 = icmp eq i64 %206, 256
  br i1 %207, label %208, label %188, !llvm.loop !118

208:                                              ; preds = %204
  %209 = add nuw nsw i64 %52, 1
  %210 = fadd float %53, -5.000000e-01
  %211 = fpext float %210 to double
  %212 = fcmp ult double %211, %1
  br i1 %212, label %213, label %50, !llvm.loop !119

213:                                              ; preds = %208, %31
  %214 = phi i64 [ 0, %31 ], [ %209, %208 ]
  %215 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %214
  store float 0.000000e+00, ptr %215, align 4, !tbaa !108
  br label %216

216:                                              ; preds = %213, %216
  %217 = phi i64 [ 0, %213 ], [ %222, %216 ]
  %218 = getelementptr inbounds i64, ptr %0, i64 %217
  %219 = load i64, ptr %218, align 8, !tbaa !74
  %220 = sitofp i64 %219 to float
  %221 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %214, i32 1, i64 %217
  store float %220, ptr %221, align 4, !tbaa !73
  %222 = add nuw nsw i64 %217, 1
  %223 = icmp eq i64 %222, 256
  br i1 %223, label %224, label %216, !llvm.loop !120

224:                                              ; preds = %216
  %225 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %214, i32 1
  %226 = load float, ptr %225, align 4, !tbaa !73
  %227 = fpext float %226 to double
  %228 = getelementptr inbounds float, ptr %225, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !73
  %230 = fpext float %229 to double
  %231 = fmul double %230, 2.000000e+00
  %232 = tail call double @llvm.fmuladd.f64(double %227, double -1.500000e+00, double %231)
  %233 = getelementptr inbounds float, ptr %225, i64 2
  %234 = load float, ptr %233, align 4, !tbaa !73
  %235 = fpext float %234 to double
  %236 = tail call double @llvm.fmuladd.f64(double %235, double -5.000000e-01, double %232)
  %237 = fptrunc double %236 to float
  store float %237, ptr %26, align 4, !tbaa !73
  %238 = getelementptr inbounds float, ptr %225, i64 253
  %239 = load float, ptr %238, align 4, !tbaa !73
  %240 = fpext float %239 to double
  %241 = getelementptr inbounds float, ptr %225, i64 254
  %242 = load float, ptr %241, align 4, !tbaa !73
  %243 = fpext float %242 to double
  %244 = fmul double %243, -2.000000e+00
  %245 = tail call double @llvm.fmuladd.f64(double %240, double 5.000000e-01, double %244)
  %246 = getelementptr inbounds float, ptr %225, i64 255
  %247 = load float, ptr %246, align 4, !tbaa !73
  %248 = fpext float %247 to double
  %249 = tail call double @llvm.fmuladd.f64(double %248, double 1.500000e+00, double %245)
  %250 = fptrunc double %249 to float
  %251 = getelementptr inbounds float, ptr %26, i64 255
  store float %250, ptr %251, align 4, !tbaa !73
  %252 = getelementptr float, ptr %225, i64 -1
  br label %253

253:                                              ; preds = %253, %224
  %254 = phi i64 [ 1, %224 ], [ %255, %253 ]
  %255 = add nuw nsw i64 %254, 1
  %256 = getelementptr inbounds float, ptr %225, i64 %255
  %257 = load float, ptr %256, align 4, !tbaa !73
  %258 = getelementptr float, ptr %252, i64 %254
  %259 = load float, ptr %258, align 4, !tbaa !73
  %260 = fsub float %257, %259
  %261 = fmul float %260, 5.000000e-01
  %262 = getelementptr inbounds float, ptr %26, i64 %254
  store float %261, ptr %262, align 4, !tbaa !73
  %263 = icmp eq i64 %255, 255
  br i1 %263, label %264, label %253, !llvm.loop !116

264:                                              ; preds = %253
  %265 = load float, ptr %26, align 4, !tbaa !73
  %266 = fpext float %265 to double
  %267 = getelementptr inbounds float, ptr %26, i64 1
  %268 = load float, ptr %267, align 4, !tbaa !73
  %269 = fpext float %268 to double
  %270 = fmul double %269, 2.000000e+00
  %271 = tail call double @llvm.fmuladd.f64(double %266, double -1.500000e+00, double %270)
  %272 = getelementptr inbounds float, ptr %26, i64 2
  %273 = load float, ptr %272, align 4, !tbaa !73
  %274 = fpext float %273 to double
  %275 = tail call double @llvm.fmuladd.f64(double %274, double -5.000000e-01, double %271)
  %276 = fptrunc double %275 to float
  store float %276, ptr %27, align 4, !tbaa !73
  %277 = getelementptr inbounds float, ptr %26, i64 253
  %278 = load float, ptr %277, align 4, !tbaa !73
  %279 = fpext float %278 to double
  %280 = getelementptr inbounds float, ptr %26, i64 254
  %281 = load float, ptr %280, align 4, !tbaa !73
  %282 = fpext float %281 to double
  %283 = fmul double %282, -2.000000e+00
  %284 = tail call double @llvm.fmuladd.f64(double %279, double 5.000000e-01, double %283)
  %285 = load float, ptr %251, align 4, !tbaa !73
  %286 = fpext float %285 to double
  %287 = tail call double @llvm.fmuladd.f64(double %286, double 1.500000e+00, double %284)
  %288 = fptrunc double %287 to float
  %289 = getelementptr inbounds float, ptr %27, i64 255
  store float %288, ptr %289, align 4, !tbaa !73
  %290 = getelementptr float, ptr %26, i64 -1
  br label %291

291:                                              ; preds = %291, %264
  %292 = phi i64 [ 1, %264 ], [ %293, %291 ]
  %293 = add nuw nsw i64 %292, 1
  %294 = getelementptr inbounds float, ptr %26, i64 %293
  %295 = load float, ptr %294, align 4, !tbaa !73
  %296 = getelementptr float, ptr %290, i64 %292
  %297 = load float, ptr %296, align 4, !tbaa !73
  %298 = fsub float %295, %297
  %299 = fmul float %298, 5.000000e-01
  %300 = getelementptr inbounds float, ptr %27, i64 %292
  store float %299, ptr %300, align 4, !tbaa !73
  %301 = icmp eq i64 %293, 255
  br i1 %301, label %302, label %291, !llvm.loop !116

302:                                              ; preds = %291
  %303 = fptrunc double %2 to float
  %304 = fneg float %303
  br label %305

305:                                              ; preds = %313, %302
  %306 = phi i64 [ 0, %302 ], [ %314, %313 ]
  %307 = getelementptr inbounds float, ptr %27, i64 %306
  %308 = load float, ptr %307, align 4, !tbaa !73
  %309 = fcmp uge float %308, %303
  %310 = fcmp ult float %308, %304
  %311 = or i1 %309, %310
  br i1 %311, label %313, label %312

312:                                              ; preds = %305
  store float 0.000000e+00, ptr %307, align 4, !tbaa !73
  br label %313

313:                                              ; preds = %312, %305
  %314 = add nuw nsw i64 %306, 1
  %315 = icmp eq i64 %314, 256
  br i1 %315, label %316, label %305, !llvm.loop !117

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %214, i32 2
  br label %318

318:                                              ; preds = %316, %334
  %319 = phi i64 [ %335, %334 ], [ 0, %316 ]
  %320 = phi i64 [ %336, %334 ], [ 0, %316 ]
  %321 = getelementptr inbounds i16, ptr %317, i64 %320
  store i16 0, ptr %321, align 2, !tbaa !64
  %322 = getelementptr inbounds float, ptr %27, i64 %320
  %323 = load float, ptr %322, align 4, !tbaa !73
  %324 = fcmp olt float %323, 0.000000e+00
  br i1 %324, label %325, label %327

325:                                              ; preds = %318
  %326 = icmp sgt i64 %319, 0
  br i1 %326, label %331, label %334

327:                                              ; preds = %318
  %328 = fcmp ogt float %323, 0.000000e+00
  br i1 %328, label %329, label %334

329:                                              ; preds = %327
  %330 = icmp slt i64 %319, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %329, %325
  %332 = phi i16 [ -1, %325 ], [ 1, %329 ]
  %333 = phi i64 [ 1, %325 ], [ -1, %329 ]
  store i16 %332, ptr %321, align 2, !tbaa !64
  br label %334

334:                                              ; preds = %331, %329, %327, %325
  %335 = phi i64 [ %319, %327 ], [ 1, %325 ], [ -1, %329 ], [ %333, %331 ]
  %336 = add nuw nsw i64 %320, 1
  %337 = icmp eq i64 %336, 256
  br i1 %337, label %338, label %318, !llvm.loop !118

338:                                              ; preds = %334
  %339 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %26) #14
  %340 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %27) #14
  %341 = icmp sgt i64 %214, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %343, %338
  br label %469

343:                                              ; preds = %466
  %344 = icmp sgt i64 %346, 1
  br i1 %344, label %345, label %342, !llvm.loop !121

345:                                              ; preds = %338, %343
  %346 = phi i64 [ %347, %343 ], [ %214, %338 ]
  %347 = add nsw i64 %346, -1
  br label %348

348:                                              ; preds = %345, %466
  %349 = phi i64 [ 0, %345 ], [ %467, %466 ]
  %350 = tail call i64 @llvm.umax.i64(i64 %349, i64 254)
  %351 = add nuw nsw i64 %350, 1
  %352 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %347, i32 2, i64 %349
  %353 = load i16, ptr %352, align 2, !tbaa !64
  %354 = icmp eq i16 %353, 0
  br i1 %354, label %466, label %355

355:                                              ; preds = %348
  %356 = add nsw i64 %349, -1
  %357 = icmp ugt i64 %349, 1
  br i1 %357, label %358, label %366

358:                                              ; preds = %355, %363
  %359 = phi i64 [ %364, %363 ], [ %356, %355 ]
  %360 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %346, i32 2, i64 %359
  %361 = load i16, ptr %360, align 2, !tbaa !64
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %358
  %364 = add nsw i64 %359, -1
  %365 = icmp sgt i64 %359, 1
  br i1 %365, label %358, label %366, !llvm.loop !122

366:                                              ; preds = %363, %358, %355
  %367 = phi i64 [ %356, %355 ], [ 0, %363 ], [ %359, %358 ]
  %368 = tail call i64 @llvm.smax.i64(i64 %367, i64 0)
  br label %369

369:                                              ; preds = %372, %366
  %370 = phi i64 [ %349, %366 ], [ %373, %372 ]
  %371 = icmp ult i64 %370, 254
  br i1 %371, label %372, label %377

372:                                              ; preds = %369
  %373 = add nuw nsw i64 %370, 1
  %374 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %346, i32 2, i64 %373
  %375 = load i16, ptr %374, align 2, !tbaa !64
  %376 = icmp eq i16 %375, 0
  br i1 %376, label %369, label %377, !llvm.loop !123

377:                                              ; preds = %372, %369
  %378 = phi i64 [ %373, %372 ], [ %351, %369 ]
  %379 = tail call i64 @llvm.smin.i64(i64 %378, i64 255)
  %380 = icmp ugt i64 %349, 1
  br i1 %380, label %381, label %389

381:                                              ; preds = %377, %386
  %382 = phi i64 [ %387, %386 ], [ %356, %377 ]
  %383 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %347, i32 2, i64 %382
  %384 = load i16, ptr %383, align 2, !tbaa !64
  %385 = icmp eq i16 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %381
  %387 = add nsw i64 %382, -1
  %388 = icmp sgt i64 %382, 1
  br i1 %388, label %381, label %389, !llvm.loop !124

389:                                              ; preds = %386, %381, %377
  %390 = phi i64 [ %356, %377 ], [ 0, %386 ], [ %382, %381 ]
  %391 = tail call i64 @llvm.smax.i64(i64 %390, i64 0)
  %392 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %346, i32 2, i64 %349
  %393 = load i16, ptr %392, align 2, !tbaa !64
  %394 = icmp eq i16 %393, 0
  br i1 %394, label %415, label %395

395:                                              ; preds = %389
  %396 = add nuw nsw i64 %391, 1
  %397 = icmp ult i64 %396, %349
  br i1 %397, label %398, label %408

398:                                              ; preds = %395, %398
  %399 = phi i64 [ %406, %398 ], [ %396, %395 ]
  %400 = phi i64 [ %405, %398 ], [ 0, %395 ]
  %401 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %346, i32 2, i64 %399
  %402 = load i16, ptr %401, align 2, !tbaa !64
  %403 = icmp ne i16 %402, 0
  %404 = zext i1 %403 to i64
  %405 = add nuw nsw i64 %400, %404
  %406 = add nuw nsw i64 %399, 1
  %407 = icmp ult i64 %406, %349
  br i1 %407, label %398, label %408, !llvm.loop !125

408:                                              ; preds = %398, %395
  %409 = phi i64 [ 0, %395 ], [ %405, %398 ]
  %410 = and i64 %409, 1
  %411 = icmp ne i64 %410, 0
  %412 = icmp eq i64 %349, %391
  %413 = or i1 %412, %411
  %414 = select i1 %413, i64 -1, i64 %349
  br label %415

415:                                              ; preds = %408, %389
  %416 = phi i64 [ -1, %389 ], [ %414, %408 ]
  %417 = icmp eq i64 %416, -1
  br i1 %417, label %418, label %438

418:                                              ; preds = %415
  %419 = add nuw nsw i64 %391, 1
  %420 = icmp sgt i64 %367, %419
  br i1 %420, label %421, label %431

421:                                              ; preds = %418, %421
  %422 = phi i64 [ %429, %421 ], [ %419, %418 ]
  %423 = phi i64 [ %428, %421 ], [ 0, %418 ]
  %424 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %346, i32 2, i64 %422
  %425 = load i16, ptr %424, align 2, !tbaa !64
  %426 = icmp ne i16 %425, 0
  %427 = zext i1 %426 to i64
  %428 = add nuw nsw i64 %423, %427
  %429 = add nuw nsw i64 %422, 1
  %430 = icmp eq i64 %429, %367
  br i1 %430, label %431, label %421, !llvm.loop !126

431:                                              ; preds = %421, %418
  %432 = phi i64 [ 0, %418 ], [ %428, %421 ]
  %433 = and i64 %432, 1
  %434 = icmp ne i64 %433, 0
  %435 = icmp eq i64 %368, %391
  %436 = or i1 %435, %434
  %437 = select i1 %436, i64 -1, i64 %368
  br label %438

438:                                              ; preds = %431, %415
  %439 = phi i64 [ %416, %415 ], [ %437, %431 ]
  %440 = icmp eq i64 %439, -1
  br i1 %440, label %441, label %461

441:                                              ; preds = %438
  %442 = add nuw nsw i64 %391, 1
  %443 = icmp ult i64 %442, %379
  br i1 %443, label %444, label %454

444:                                              ; preds = %441, %444
  %445 = phi i64 [ %452, %444 ], [ %442, %441 ]
  %446 = phi i64 [ %451, %444 ], [ 0, %441 ]
  %447 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %346, i32 2, i64 %445
  %448 = load i16, ptr %447, align 2, !tbaa !64
  %449 = icmp ne i16 %448, 0
  %450 = zext i1 %449 to i64
  %451 = add nuw nsw i64 %446, %450
  %452 = add nuw nsw i64 %445, 1
  %453 = icmp eq i64 %452, %379
  br i1 %453, label %454, label %444, !llvm.loop !127

454:                                              ; preds = %444, %441
  %455 = phi i64 [ 0, %441 ], [ %451, %444 ]
  %456 = and i64 %455, 1
  %457 = icmp ne i64 %456, 0
  %458 = icmp eq i64 %390, %379
  %459 = select i1 %457, i1 true, i1 %458
  %460 = select i1 %459, i64 -1, i64 %379
  br label %461

461:                                              ; preds = %454, %438
  %462 = phi i64 [ %439, %438 ], [ %460, %454 ]
  store i16 0, ptr %352, align 2, !tbaa !64
  %463 = icmp eq i64 %462, -1
  br i1 %463, label %466, label %464

464:                                              ; preds = %461
  %465 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %347, i32 2, i64 %462
  store i16 %353, ptr %465, align 2, !tbaa !64
  br label %466

466:                                              ; preds = %464, %461, %348
  %467 = add nuw nsw i64 %349, 1
  %468 = icmp eq i64 %467, 256
  br i1 %468, label %343, label %348, !llvm.loop !128

469:                                              ; preds = %342, %493
  %470 = phi i64 [ %499, %493 ], [ 0, %342 ]
  br label %471

471:                                              ; preds = %469, %476
  %472 = phi i64 [ 0, %469 ], [ %477, %476 ]
  %473 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %470, i32 2, i64 %472
  %474 = load i16, ptr %473, align 2, !tbaa !64
  %475 = icmp eq i16 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %471
  %477 = add nuw nsw i64 %472, 1
  %478 = icmp eq i64 %477, 255
  br i1 %478, label %479, label %471, !llvm.loop !129

479:                                              ; preds = %471, %476
  %480 = phi i64 [ %472, %471 ], [ 255, %476 ]
  %481 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %470, i32 2
  %482 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %470, i32 2, i64 %480
  %483 = load i16, ptr %482, align 2, !tbaa !64
  %484 = sub i16 0, %483
  store i16 %484, ptr %481, align 4, !tbaa !64
  br label %485

485:                                              ; preds = %479, %490
  %486 = phi i64 [ 255, %479 ], [ %491, %490 ]
  %487 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %470, i32 2, i64 %486
  %488 = load i16, ptr %487, align 2, !tbaa !64
  %489 = icmp eq i16 %488, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %485
  %491 = add nsw i64 %486, -1
  %492 = icmp ugt i64 %486, 1
  br i1 %492, label %485, label %493, !llvm.loop !130

493:                                              ; preds = %485, %490
  %494 = phi i64 [ %486, %485 ], [ 0, %490 ]
  %495 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %470, i32 2, i64 %494
  %496 = load i16, ptr %495, align 2, !tbaa !64
  %497 = sub i16 0, %496
  %498 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %470, i32 2, i64 255
  store i16 %497, ptr %498, align 2, !tbaa !64
  %499 = add nuw i64 %470, 1
  %500 = icmp eq i64 %470, %214
  br i1 %500, label %501, label %469, !llvm.loop !131

501:                                              ; preds = %493
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %502 = tail call dereferenceable_or_null(4800) ptr @AcquireQuantumMemory(i64 noundef 600, i64 noundef 8) #15
  %503 = icmp eq ptr %502, null
  br i1 %503, label %578, label %504

504:                                              ; preds = %501
  %505 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #16
  %506 = getelementptr inbounds %struct._IntervalTree, ptr %505, i64 0, i32 6
  %507 = getelementptr inbounds %struct._IntervalTree, ptr %505, i64 0, i32 5
  store float 0.000000e+00, ptr %505, align 8, !tbaa !132
  %508 = getelementptr inbounds %struct._IntervalTree, ptr %505, i64 0, i32 1
  store i64 0, ptr %508, align 8, !tbaa !134
  %509 = getelementptr inbounds %struct._IntervalTree, ptr %505, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %507, i8 0, i64 16, i1 false)
  store i64 255, ptr %509, align 8, !tbaa !135
  %510 = getelementptr %struct._ZeroCrossing, ptr %16, i64 1
  %511 = icmp sgt i64 %214, -1
  br i1 %511, label %512, label %574

512:                                              ; preds = %504, %571
  %513 = phi i64 [ %572, %571 ], [ -1, %504 ]
  store i64 0, ptr %5, align 8, !tbaa !74
  call fastcc void @InitializeList(ptr noundef nonnull %502, ptr noundef nonnull %5, ptr noundef nonnull %505)
  %514 = load i64, ptr %5, align 8, !tbaa !74
  %515 = icmp sgt i64 %514, 0
  br i1 %515, label %516, label %571

516:                                              ; preds = %512
  %517 = getelementptr %struct._ZeroCrossing, ptr %16, i64 %513
  %518 = getelementptr %struct._ZeroCrossing, ptr %517, i64 1
  %519 = getelementptr %struct._ZeroCrossing, ptr %510, i64 %513
  br label %520

520:                                              ; preds = %516, %567
  %521 = phi i64 [ 0, %516 ], [ %568, %567 ]
  %522 = getelementptr inbounds ptr, ptr %502, i64 %521
  %523 = load ptr, ptr %522, align 8, !tbaa !53
  %524 = getelementptr inbounds %struct._IntervalTree, ptr %523, i64 0, i32 1
  %525 = load i64, ptr %524, align 8, !tbaa !134
  %526 = getelementptr inbounds %struct._IntervalTree, ptr %523, i64 0, i32 2
  %527 = add nsw i64 %525, 1
  %528 = load i64, ptr %526, align 8, !tbaa !135
  %529 = icmp slt i64 %527, %528
  br i1 %529, label %530, label %553

530:                                              ; preds = %520, %547
  %531 = phi i64 [ %550, %547 ], [ %527, %520 ]
  %532 = phi i64 [ %549, %547 ], [ %525, %520 ]
  %533 = phi ptr [ %548, %547 ], [ %523, %520 ]
  %534 = getelementptr %struct._ZeroCrossing, ptr %517, i64 1, i32 2, i64 %531
  %535 = load i16, ptr %534, align 2, !tbaa !64
  %536 = icmp eq i16 %535, 0
  br i1 %536, label %547, label %537

537:                                              ; preds = %530
  %538 = icmp eq ptr %533, %523
  %539 = call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #16
  %540 = getelementptr inbounds %struct._IntervalTree, ptr %533, i64 0, i32 5
  %541 = getelementptr inbounds %struct._IntervalTree, ptr %533, i64 0, i32 6
  %542 = select i1 %538, ptr %541, ptr %540
  store ptr %539, ptr %542, align 8, !tbaa !53
  %543 = load float, ptr %518, align 4, !tbaa !108
  store float %543, ptr %539, align 8, !tbaa !132
  %544 = getelementptr inbounds %struct._IntervalTree, ptr %539, i64 0, i32 5
  %545 = getelementptr inbounds %struct._IntervalTree, ptr %539, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %544, i8 0, i64 16, i1 false)
  store i64 %532, ptr %545, align 8, !tbaa !134
  %546 = getelementptr inbounds %struct._IntervalTree, ptr %539, i64 0, i32 2
  store i64 %531, ptr %546, align 8, !tbaa !135
  br label %547

547:                                              ; preds = %537, %530
  %548 = phi ptr [ %539, %537 ], [ %533, %530 ]
  %549 = phi i64 [ %531, %537 ], [ %532, %530 ]
  %550 = add nsw i64 %531, 1
  %551 = load i64, ptr %526, align 8, !tbaa !135
  %552 = icmp slt i64 %550, %551
  br i1 %552, label %530, label %553, !llvm.loop !136

553:                                              ; preds = %547, %520
  %554 = phi ptr [ %523, %520 ], [ %548, %547 ]
  %555 = phi i64 [ %525, %520 ], [ %549, %547 ]
  %556 = load i64, ptr %524, align 8, !tbaa !134
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %567, label %558

558:                                              ; preds = %553
  %559 = getelementptr inbounds %struct._IntervalTree, ptr %523, i64 0, i32 2
  %560 = call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #16
  %561 = getelementptr inbounds %struct._IntervalTree, ptr %554, i64 0, i32 5
  store ptr %560, ptr %561, align 8, !tbaa !137
  %562 = load float, ptr %519, align 4, !tbaa !108
  store float %562, ptr %560, align 8, !tbaa !132
  %563 = getelementptr inbounds %struct._IntervalTree, ptr %560, i64 0, i32 5
  %564 = getelementptr inbounds %struct._IntervalTree, ptr %560, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %563, i8 0, i64 16, i1 false)
  store i64 %555, ptr %564, align 8, !tbaa !134
  %565 = load i64, ptr %559, align 8, !tbaa !135
  %566 = getelementptr inbounds %struct._IntervalTree, ptr %560, i64 0, i32 2
  store i64 %565, ptr %566, align 8, !tbaa !135
  br label %567

567:                                              ; preds = %558, %553
  %568 = add nuw nsw i64 %521, 1
  %569 = load i64, ptr %5, align 8, !tbaa !74
  %570 = icmp slt i64 %568, %569
  br i1 %570, label %520, label %571, !llvm.loop !138

571:                                              ; preds = %567, %512
  %572 = add nsw i64 %513, 1
  %573 = icmp eq i64 %572, %214
  br i1 %573, label %574, label %512, !llvm.loop !139

574:                                              ; preds = %571, %504
  %575 = load ptr, ptr %506, align 8, !tbaa !140
  call fastcc void @Stability(ptr noundef %575)
  %576 = load ptr, ptr %506, align 8, !tbaa !140
  call fastcc void @MeanStability(ptr noundef %576)
  %577 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %502) #14
  br label %578

578:                                              ; preds = %501, %574
  %579 = phi ptr [ %505, %574 ], [ null, %501 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  %580 = icmp eq ptr %579, null
  br i1 %580, label %655, label %581

581:                                              ; preds = %578
  store i64 0, ptr %7, align 8, !tbaa !74
  %582 = getelementptr inbounds %struct._IntervalTree, ptr %579, i64 0, i32 6
  %583 = load ptr, ptr %582, align 8, !tbaa !140
  call fastcc void @ActiveNodes(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef %583)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %3, i8 0, i64 512, i1 false), !tbaa !64
  %584 = load i64, ptr %7, align 8, !tbaa !74
  %585 = icmp sgt i64 %584, 0
  br i1 %585, label %588, label %586

586:                                              ; preds = %645, %581
  %587 = icmp sgt i64 %584, 0
  br i1 %587, label %648, label %652

588:                                              ; preds = %581, %645
  %589 = phi i64 [ %646, %645 ], [ 0, %581 ]
  %590 = getelementptr inbounds ptr, ptr %9, i64 %589
  %591 = load ptr, ptr %590, align 8, !tbaa !53
  %592 = load float, ptr %591, align 8, !tbaa !132
  br label %593

593:                                              ; preds = %588, %593
  %594 = phi i64 [ 0, %588 ], [ %599, %593 ]
  %595 = phi i64 [ 0, %588 ], [ %600, %593 ]
  %596 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %595
  %597 = load float, ptr %596, align 4, !tbaa !108
  %598 = fcmp oeq float %597, %592
  %599 = select i1 %598, i64 %595, i64 %594
  %600 = add nuw i64 %595, 1
  %601 = icmp eq i64 %595, %214
  br i1 %601, label %602, label %593, !llvm.loop !141

602:                                              ; preds = %593
  %603 = getelementptr inbounds %struct._IntervalTree, ptr %591, i64 0, i32 2
  %604 = load i64, ptr %603, align 8, !tbaa !135
  %605 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %599, i32 2, i64 %604
  %606 = load i16, ptr %605, align 2, !tbaa !64
  %607 = icmp eq i16 %606, -1
  %608 = getelementptr inbounds %struct._IntervalTree, ptr %591, i64 0, i32 1
  %609 = load i64, ptr %608, align 8, !tbaa !134
  %610 = icmp sgt i64 %609, %604
  br i1 %610, label %614, label %611

611:                                              ; preds = %602
  %612 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %599, i32 1, i64 %609
  %613 = load float, ptr %612, align 4, !tbaa !73
  br label %617

614:                                              ; preds = %629, %602
  %615 = phi i64 [ %609, %602 ], [ %631, %629 ]
  %616 = icmp sgt i64 %609, %604
  br i1 %616, label %645, label %634

617:                                              ; preds = %611, %629
  %618 = phi i64 [ %631, %629 ], [ %609, %611 ]
  %619 = phi i64 [ %632, %629 ], [ %609, %611 ]
  %620 = phi float [ %630, %629 ], [ %613, %611 ]
  %621 = getelementptr inbounds %struct._ZeroCrossing, ptr %16, i64 %599, i32 1, i64 %619
  %622 = load float, ptr %621, align 4, !tbaa !73
  br i1 %607, label %623, label %626

623:                                              ; preds = %617
  %624 = fcmp ogt float %622, %620
  br i1 %624, label %625, label %629

625:                                              ; preds = %623
  br label %629

626:                                              ; preds = %617
  %627 = fcmp olt float %622, %620
  br i1 %627, label %628, label %629

628:                                              ; preds = %626
  br label %629

629:                                              ; preds = %625, %623, %628, %626
  %630 = phi float [ %622, %625 ], [ %620, %623 ], [ %622, %628 ], [ %620, %626 ]
  %631 = phi i64 [ %619, %625 ], [ %618, %623 ], [ %619, %628 ], [ %618, %626 ]
  %632 = add i64 %619, 1
  %633 = icmp eq i64 %619, %604
  br i1 %633, label %614, label %617, !llvm.loop !142

634:                                              ; preds = %614, %634
  %635 = phi i64 [ %638, %634 ], [ %615, %614 ]
  %636 = phi i64 [ %643, %634 ], [ %609, %614 ]
  %637 = icmp eq i64 %635, 0
  %638 = select i1 %637, i64 256, i64 %635
  %639 = trunc i64 %638 to i16
  %640 = sub i16 0, %639
  %641 = select i1 %607, i16 %639, i16 %640
  %642 = getelementptr inbounds i16, ptr %3, i64 %636
  store i16 %641, ptr %642, align 2, !tbaa !64
  %643 = add i64 %636, 1
  %644 = icmp eq i64 %636, %604
  br i1 %644, label %645, label %634, !llvm.loop !143

645:                                              ; preds = %634, %614
  %646 = add nuw nsw i64 %589, 1
  %647 = icmp eq i64 %646, %584
  br i1 %647, label %586, label %588, !llvm.loop !144

648:                                              ; preds = %586, %648
  %649 = phi i64 [ %650, %648 ], [ 0, %586 ]
  %650 = add nuw nsw i64 %649, 1
  %651 = icmp eq i64 %650, %584
  br i1 %651, label %652, label %648, !llvm.loop !145

652:                                              ; preds = %648, %586
  call fastcc void @FreeNodes(ptr noundef nonnull %579)
  %653 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %16) #14
  %654 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %9) #14
  br label %655

655:                                              ; preds = %578, %11, %4, %652
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret void
}

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SegmentImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct._ExtentPacket, align 8
  %9 = alloca %struct._ExtentPacket, align 8
  %10 = alloca %struct._ExtentPacket, align 8
  %11 = alloca [3 x ptr], align 16
  %12 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #14
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1820, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #14
  br label %19

19:                                               ; preds = %16, %5
  br label %20

20:                                               ; preds = %19, %47
  %21 = phi i64 [ %48, %47 ], [ 0, %19 ]
  %22 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #15
  %23 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %21
  store ptr %22, ptr %23, align 8, !tbaa !53
  %24 = tail call dereferenceable_or_null(512) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 2) #15
  %25 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %21
  store ptr %24, ptr %25, align 8, !tbaa !53
  %26 = icmp eq ptr %22, null
  %27 = icmp eq ptr %24, null
  %28 = or i1 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %20
  %30 = icmp eq i64 %21, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ %33, %31 ], [ %21, %29 ]
  %33 = add nsw i64 %32, -1
  %34 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  %36 = tail call ptr @RelinquishMagickMemory(ptr noundef %35) #14
  store ptr %36, ptr %34, align 8, !tbaa !53
  %37 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %33
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = tail call ptr @RelinquishMagickMemory(ptr noundef %38) #14
  store ptr %39, ptr %37, align 8, !tbaa !53
  %40 = icmp sgt i64 %32, 1
  br i1 %40, label %31, label %41, !llvm.loop !146

41:                                               ; preds = %31, %29
  %42 = icmp eq ptr %0, null
  br i1 %42, label %836, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %46 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %44, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1833, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %45) #14
  br label %836

47:                                               ; preds = %20
  %48 = add nuw nsw i64 %21, 1
  %49 = icmp eq i64 %48, 3
  br i1 %49, label %50, label %20, !llvm.loop !147

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !148
  %53 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef %1) #14
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call fastcc void @InitializeHistogram(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %54)
  %55 = load ptr, ptr %12, align 16, !tbaa !53
  %56 = fcmp oeq double %4, 0.000000e+00
  %57 = select i1 %56, double 1.000000e+00, double %4
  %58 = load ptr, ptr %11, align 16, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %55, double noundef 2.000000e-01, double noundef %57, ptr noundef %58)
  %59 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !53
  %61 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %60, double noundef 2.000000e-01, double noundef %57, ptr noundef %62)
  %63 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 2
  %64 = load ptr, ptr %63, align 16, !tbaa !53
  %65 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 2
  %66 = load ptr, ptr %65, align 16, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %64, double noundef 2.000000e-01, double noundef %57, ptr noundef %66)
  %67 = fptrunc double %3 to float
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #14
  %68 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 32) #14
  %69 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 32) #14
  %70 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 32) #14
  %71 = getelementptr inbounds %struct._ExtentPacket, ptr %10, i64 0, i32 2
  %72 = getelementptr inbounds %struct._ExtentPacket, ptr %10, i64 0, i32 3
  %73 = getelementptr inbounds %struct._ExtentPacket, ptr %10, i64 0, i32 1
  %74 = getelementptr inbounds %struct._ExtentPacket, ptr %9, i64 0, i32 1
  %75 = getelementptr inbounds %struct._ExtentPacket, ptr %9, i64 0, i32 2
  %76 = getelementptr inbounds %struct._ExtentPacket, ptr %9, i64 0, i32 3
  %77 = getelementptr inbounds %struct._ExtentPacket, ptr %8, i64 0, i32 1
  %78 = getelementptr inbounds %struct._ExtentPacket, ptr %8, i64 0, i32 2
  %79 = getelementptr inbounds %struct._ExtentPacket, ptr %8, i64 0, i32 3
  br label %80

80:                                               ; preds = %125, %50
  %81 = phi ptr [ null, %50 ], [ %112, %125 ]
  %82 = phi ptr [ null, %50 ], [ %113, %125 ]
  %83 = load ptr, ptr %11, align 16, !tbaa !53
  store i64 0, ptr %71, align 8, !tbaa !58
  store float 0.000000e+00, ptr %10, align 8, !tbaa !61
  store i64 255, ptr %72, align 8, !tbaa !62
  %84 = load i64, ptr %73, align 8, !tbaa !63
  %85 = icmp slt i64 %84, 256
  br i1 %85, label %86, label %94

86:                                               ; preds = %80, %91
  %87 = phi i64 [ %92, %91 ], [ %84, %80 ]
  %88 = getelementptr inbounds i16, ptr %83, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !64
  %90 = icmp sgt i16 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = add i64 %87, 1
  store i64 %92, ptr %73, align 8, !tbaa !63
  %93 = icmp eq i64 %92, 256
  br i1 %93, label %94, label %86, !llvm.loop !65

94:                                               ; preds = %91, %86, %80
  %95 = phi i64 [ %84, %80 ], [ 256, %91 ], [ %87, %86 ]
  %96 = icmp sgt i64 %95, 255
  br i1 %96, label %189, label %97

97:                                               ; preds = %94
  store i64 %95, ptr %71, align 8, !tbaa !58
  %98 = load i64, ptr %73, align 8, !tbaa !63
  %99 = icmp slt i64 %98, 256
  br i1 %99, label %100, label %108

100:                                              ; preds = %97, %105
  %101 = phi i64 [ %106, %105 ], [ %98, %97 ]
  %102 = getelementptr inbounds i16, ptr %83, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !64
  %104 = icmp slt i16 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = add i64 %101, 1
  store i64 %106, ptr %73, align 8, !tbaa !63
  %107 = icmp eq i64 %106, 256
  br i1 %107, label %108, label %100, !llvm.loop !66

108:                                              ; preds = %105, %100, %97
  %109 = phi i64 [ %98, %97 ], [ 256, %105 ], [ %101, %100 ]
  %110 = add nsw i64 %109, -1
  store i64 %110, ptr %72, align 8, !tbaa !62
  store i64 0, ptr %74, align 8, !tbaa !63
  br label %111

111:                                              ; preds = %156, %108
  %112 = phi ptr [ %81, %108 ], [ %143, %156 ]
  %113 = phi ptr [ %82, %108 ], [ %144, %156 ]
  %114 = load ptr, ptr %61, align 8, !tbaa !53
  store i64 0, ptr %75, align 8, !tbaa !58
  store float 0.000000e+00, ptr %9, align 8, !tbaa !61
  store i64 255, ptr %76, align 8, !tbaa !62
  %115 = load i64, ptr %74, align 8, !tbaa !63
  %116 = icmp slt i64 %115, 256
  br i1 %116, label %117, label %125

117:                                              ; preds = %111, %122
  %118 = phi i64 [ %123, %122 ], [ %115, %111 ]
  %119 = getelementptr inbounds i16, ptr %114, i64 %118
  %120 = load i16, ptr %119, align 2, !tbaa !64
  %121 = icmp sgt i16 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = add i64 %118, 1
  store i64 %123, ptr %74, align 8, !tbaa !63
  %124 = icmp eq i64 %123, 256
  br i1 %124, label %125, label %117, !llvm.loop !65

125:                                              ; preds = %122, %117, %111
  %126 = phi i64 [ %115, %111 ], [ 256, %122 ], [ %118, %117 ]
  %127 = icmp sgt i64 %126, 255
  br i1 %127, label %80, label %128

128:                                              ; preds = %125
  store i64 %126, ptr %75, align 8, !tbaa !58
  %129 = load i64, ptr %74, align 8, !tbaa !63
  %130 = icmp slt i64 %129, 256
  br i1 %130, label %131, label %139

131:                                              ; preds = %128, %136
  %132 = phi i64 [ %137, %136 ], [ %129, %128 ]
  %133 = getelementptr inbounds i16, ptr %114, i64 %132
  %134 = load i16, ptr %133, align 2, !tbaa !64
  %135 = icmp slt i16 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = add i64 %132, 1
  store i64 %137, ptr %74, align 8, !tbaa !63
  %138 = icmp eq i64 %137, 256
  br i1 %138, label %139, label %131, !llvm.loop !66

139:                                              ; preds = %136, %131, %128
  %140 = phi i64 [ %129, %128 ], [ 256, %136 ], [ %132, %131 ]
  %141 = add nsw i64 %140, -1
  store i64 %141, ptr %76, align 8, !tbaa !62
  store i64 0, ptr %77, align 8, !tbaa !63
  br label %142

142:                                              ; preds = %184, %139
  %143 = phi ptr [ %112, %139 ], [ %177, %184 ]
  %144 = phi ptr [ %113, %139 ], [ %174, %184 ]
  %145 = load ptr, ptr %65, align 16, !tbaa !53
  store i64 0, ptr %78, align 8, !tbaa !58
  store float 0.000000e+00, ptr %8, align 8, !tbaa !61
  store i64 255, ptr %79, align 8, !tbaa !62
  %146 = load i64, ptr %77, align 8, !tbaa !63
  %147 = icmp slt i64 %146, 256
  br i1 %147, label %148, label %156

148:                                              ; preds = %142, %153
  %149 = phi i64 [ %154, %153 ], [ %146, %142 ]
  %150 = getelementptr inbounds i16, ptr %145, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !64
  %152 = icmp sgt i16 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = add i64 %149, 1
  store i64 %154, ptr %77, align 8, !tbaa !63
  %155 = icmp eq i64 %154, 256
  br i1 %155, label %156, label %148, !llvm.loop !65

156:                                              ; preds = %153, %148, %142
  %157 = phi i64 [ %146, %142 ], [ 256, %153 ], [ %149, %148 ]
  %158 = icmp sgt i64 %157, 255
  br i1 %158, label %111, label %159

159:                                              ; preds = %156
  store i64 %157, ptr %78, align 8, !tbaa !58
  %160 = load i64, ptr %77, align 8, !tbaa !63
  %161 = icmp slt i64 %160, 256
  br i1 %161, label %162, label %170

162:                                              ; preds = %159, %167
  %163 = phi i64 [ %168, %167 ], [ %160, %159 ]
  %164 = getelementptr inbounds i16, ptr %145, i64 %163
  %165 = load i16, ptr %164, align 2, !tbaa !64
  %166 = icmp slt i16 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = add i64 %163, 1
  store i64 %168, ptr %77, align 8, !tbaa !63
  %169 = icmp eq i64 %168, 256
  br i1 %169, label %170, label %162, !llvm.loop !66

170:                                              ; preds = %167, %162, %159
  %171 = phi i64 [ %160, %159 ], [ 256, %167 ], [ %163, %162 ]
  %172 = add nsw i64 %171, -1
  store i64 %172, ptr %79, align 8, !tbaa !62
  %173 = icmp eq ptr %143, null
  %174 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #16
  br i1 %173, label %176, label %175

175:                                              ; preds = %170
  store ptr %174, ptr %144, align 8, !tbaa !69
  br label %176

176:                                              ; preds = %170, %175
  %177 = phi ptr [ %143, %175 ], [ %174, %170 ]
  %178 = icmp eq ptr %174, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = icmp eq ptr %0, null
  br i1 %180, label %823, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %183 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %54, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 319, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %182) #14
  br label %823

184:                                              ; preds = %176
  %185 = getelementptr inbounds %struct._Cluster, ptr %174, i64 0, i32 4
  store i64 0, ptr %185, align 8, !tbaa !71
  %186 = getelementptr inbounds %struct._Cluster, ptr %174, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %186, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !72
  %187 = getelementptr inbounds %struct._Cluster, ptr %174, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %187, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !72
  %188 = getelementptr inbounds %struct._Cluster, ptr %174, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %188, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !72
  store ptr null, ptr %174, align 8, !tbaa !69
  br label %142, !llvm.loop !149

189:                                              ; preds = %94
  %190 = icmp eq ptr %81, null
  br i1 %190, label %191, label %204

191:                                              ; preds = %189
  %192 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #16
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = icmp eq ptr %0, null
  br i1 %195, label %823, label %196

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %198 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %54, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 339, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %197) #14
  br label %823

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct._Cluster, ptr %192, i64 0, i32 4
  store i64 0, ptr %200, align 8, !tbaa !71
  %201 = getelementptr inbounds %struct._Cluster, ptr %192, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %201, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !72
  %202 = getelementptr inbounds %struct._Cluster, ptr %192, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %202, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !72
  %203 = getelementptr inbounds %struct._Cluster, ptr %192, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %203, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !72
  store ptr null, ptr %192, align 8, !tbaa !69
  br label %204

204:                                              ; preds = %199, %189
  %205 = phi ptr [ %192, %199 ], [ %81, %189 ]
  %206 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %54) #14
  %207 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %208 = load i64, ptr %207, align 8, !tbaa !76
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %328

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %212 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %213 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %214 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %219

215:                                              ; preds = %325
  %216 = add nuw nsw i64 %220, 1
  %217 = load i64, ptr %207, align 8, !tbaa !76
  %218 = icmp slt i64 %216, %217
  br i1 %218, label %219, label %328, !llvm.loop !150

219:                                              ; preds = %210, %215
  %220 = phi i64 [ 0, %210 ], [ %216, %215 ]
  %221 = phi i32 [ 1, %210 ], [ %327, %215 ]
  %222 = phi i64 [ 0, %210 ], [ %326, %215 ]
  %223 = load i64, ptr %211, align 8, !tbaa !78
  %224 = call ptr @GetCacheViewVirtualPixels(ptr noundef %206, i64 noundef 0, i64 noundef %220, i64 noundef %223, i64 noundef 1, ptr noundef nonnull %54) #19
  %225 = icmp eq ptr %224, null
  br i1 %225, label %325, label %226

226:                                              ; preds = %219
  %227 = load i64, ptr %211, align 8, !tbaa !78
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %312

229:                                              ; preds = %226, %308
  %230 = phi i64 [ %310, %308 ], [ 0, %226 ]
  %231 = phi ptr [ %309, %308 ], [ %224, %226 ]
  %232 = getelementptr inbounds %struct._PixelPacket, ptr %231, i64 0, i32 2
  %233 = load i16, ptr %232, align 2, !tbaa !79
  %234 = zext i16 %233 to i64
  %235 = add nuw nsw i64 %234, 128
  %236 = lshr i64 %235, 8
  %237 = sub nsw i64 %235, %236
  %238 = lshr i64 %237, 8
  %239 = and i64 %238, 255
  %240 = add nuw nsw i64 %239, 3
  %241 = add nsw i64 %239, -3
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %231, i64 0, i32 1
  br label %243

243:                                              ; preds = %229, %305
  %244 = phi ptr [ %205, %229 ], [ %306, %305 ]
  %245 = getelementptr inbounds %struct._Cluster, ptr %244, i64 0, i32 1, i32 2
  %246 = load i64, ptr %245, align 8, !tbaa !80
  %247 = icmp sgt i64 %246, %240
  br i1 %247, label %305, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct._Cluster, ptr %244, i64 0, i32 1, i32 3
  %250 = load i64, ptr %249, align 8, !tbaa !81
  %251 = icmp slt i64 %250, %241
  br i1 %251, label %305, label %252

252:                                              ; preds = %248
  %253 = load i16, ptr %242, align 2, !tbaa !82
  %254 = zext i16 %253 to i64
  %255 = add nuw nsw i64 %254, 128
  %256 = lshr i64 %255, 8
  %257 = sub nsw i64 %255, %256
  %258 = lshr i64 %257, 8
  %259 = and i64 %258, 255
  %260 = getelementptr inbounds %struct._Cluster, ptr %244, i64 0, i32 2, i32 2
  %261 = load i64, ptr %260, align 8, !tbaa !83
  %262 = add nsw i64 %261, -3
  %263 = icmp sgt i64 %262, %259
  br i1 %263, label %305, label %264

264:                                              ; preds = %252
  %265 = getelementptr inbounds %struct._Cluster, ptr %244, i64 0, i32 2, i32 3
  %266 = load i64, ptr %265, align 8, !tbaa !84
  %267 = add nsw i64 %266, 3
  %268 = icmp slt i64 %267, %259
  br i1 %268, label %305, label %269

269:                                              ; preds = %264
  %270 = load i16, ptr %231, align 2, !tbaa !85
  %271 = zext i16 %270 to i64
  %272 = add nuw nsw i64 %271, 128
  %273 = lshr i64 %272, 8
  %274 = sub nsw i64 %272, %273
  %275 = lshr i64 %274, 8
  %276 = and i64 %275, 255
  %277 = getelementptr inbounds %struct._Cluster, ptr %244, i64 0, i32 3, i32 2
  %278 = load i64, ptr %277, align 8, !tbaa !86
  %279 = add nsw i64 %278, -3
  %280 = icmp sgt i64 %279, %276
  br i1 %280, label %305, label %281

281:                                              ; preds = %269
  %282 = getelementptr inbounds %struct._Cluster, ptr %244, i64 0, i32 3, i32 3
  %283 = load i64, ptr %282, align 8, !tbaa !87
  %284 = add nsw i64 %283, 3
  %285 = icmp slt i64 %284, %276
  br i1 %285, label %305, label %286

286:                                              ; preds = %281
  %287 = trunc i64 %238 to i8
  %288 = getelementptr inbounds %struct._Cluster, ptr %244, i64 0, i32 1
  %289 = getelementptr inbounds %struct._Cluster, ptr %244, i64 0, i32 2
  %290 = getelementptr inbounds %struct._Cluster, ptr %244, i64 0, i32 3
  %291 = uitofp i8 %287 to float
  %292 = load float, ptr %288, align 8, !tbaa !88
  %293 = fadd float %292, %291
  store float %293, ptr %288, align 8, !tbaa !88
  %294 = trunc i64 %258 to i8
  %295 = uitofp i8 %294 to float
  %296 = load float, ptr %289, align 8, !tbaa !89
  %297 = fadd float %296, %295
  store float %297, ptr %289, align 8, !tbaa !89
  %298 = trunc i64 %275 to i8
  %299 = uitofp i8 %298 to float
  %300 = load float, ptr %290, align 8, !tbaa !90
  %301 = fadd float %300, %299
  store float %301, ptr %290, align 8, !tbaa !90
  %302 = getelementptr inbounds %struct._Cluster, ptr %244, i64 0, i32 4
  %303 = load i64, ptr %302, align 8, !tbaa !71
  %304 = add nsw i64 %303, 1
  store i64 %304, ptr %302, align 8, !tbaa !71
  br label %308

305:                                              ; preds = %281, %269, %264, %252, %248, %243
  %306 = load ptr, ptr %244, align 8, !tbaa !69
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %243, !llvm.loop !151

308:                                              ; preds = %305, %286
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %231, i64 1
  %310 = add nuw nsw i64 %230, 1
  %311 = icmp eq i64 %310, %227
  br i1 %311, label %312, label %229, !llvm.loop !152

312:                                              ; preds = %308, %226
  %313 = load ptr, ptr %212, align 8, !tbaa !93
  %314 = icmp eq ptr %313, null
  br i1 %314, label %325, label %315

315:                                              ; preds = %312
  %316 = add nsw i64 %222, 1
  %317 = load i64, ptr %207, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #14
  %318 = shl i64 %317, 1
  %319 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %213) #14
  %320 = load ptr, ptr %212, align 8, !tbaa !93
  %321 = load ptr, ptr %214, align 8, !tbaa !94
  %322 = call i32 %320(ptr noundef nonnull %7, i64 noundef %222, i64 noundef %318, ptr noundef %321) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #14
  %323 = icmp eq i32 %322, 0
  %324 = select i1 %323, i32 0, i32 %221
  br label %325

325:                                              ; preds = %315, %312, %219
  %326 = phi i64 [ %222, %219 ], [ %316, %315 ], [ %222, %312 ]
  %327 = phi i32 [ %221, %219 ], [ %324, %315 ], [ %221, %312 ]
  br i1 %225, label %328, label %215

328:                                              ; preds = %215, %325, %204
  %329 = phi i64 [ 0, %204 ], [ %326, %325 ], [ %326, %215 ]
  %330 = phi i32 [ 1, %204 ], [ %327, %325 ], [ %327, %215 ]
  %331 = call ptr @DestroyCacheView(ptr noundef %206) #14
  br label %332

332:                                              ; preds = %328, %367
  %333 = phi ptr [ %205, %328 ], [ %337, %367 ]
  %334 = phi ptr [ %205, %328 ], [ %370, %367 ]
  %335 = phi ptr [ %205, %328 ], [ %369, %367 ]
  %336 = phi i64 [ 0, %328 ], [ %368, %367 ]
  %337 = load ptr, ptr %333, align 8, !tbaa !69
  %338 = getelementptr inbounds %struct._Cluster, ptr %333, i64 0, i32 4
  %339 = load i64, ptr %338, align 8, !tbaa !71
  %340 = icmp sgt i64 %339, 0
  br i1 %340, label %341, label %361

341:                                              ; preds = %332
  %342 = sitofp i64 %339 to double
  %343 = sitofp i64 %336 to float
  %344 = fmul float %67, %343
  %345 = fpext float %344 to double
  %346 = fdiv double %345, 1.000000e+02
  %347 = fcmp ugt double %346, %342
  br i1 %347, label %361, label %348

348:                                              ; preds = %341
  %349 = getelementptr inbounds %struct._Cluster, ptr %333, i64 0, i32 5
  store i64 %336, ptr %349, align 8, !tbaa !95
  %350 = sitofp i64 %339 to float
  %351 = getelementptr inbounds %struct._Cluster, ptr %333, i64 0, i32 1
  %352 = load float, ptr %351, align 8, !tbaa !88
  %353 = fdiv float %352, %350
  store float %353, ptr %351, align 8, !tbaa !88
  %354 = getelementptr inbounds %struct._Cluster, ptr %333, i64 0, i32 2
  %355 = load float, ptr %354, align 8, !tbaa !89
  %356 = fdiv float %355, %350
  store float %356, ptr %354, align 8, !tbaa !89
  %357 = getelementptr inbounds %struct._Cluster, ptr %333, i64 0, i32 3
  %358 = load float, ptr %357, align 8, !tbaa !90
  %359 = fdiv float %358, %350
  store float %359, ptr %357, align 8, !tbaa !90
  %360 = add nsw i64 %336, 1
  br label %367

361:                                              ; preds = %341, %332
  %362 = icmp eq ptr %333, %334
  br i1 %362, label %364, label %363

363:                                              ; preds = %361
  store ptr %337, ptr %335, align 8, !tbaa !69
  br label %364

364:                                              ; preds = %363, %361
  %365 = phi ptr [ %334, %363 ], [ %337, %361 ]
  %366 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %333) #14
  br label %367

367:                                              ; preds = %364, %348
  %368 = phi i64 [ %360, %348 ], [ %336, %364 ]
  %369 = phi ptr [ %333, %348 ], [ %335, %364 ]
  %370 = phi ptr [ %334, %348 ], [ %365, %364 ]
  %371 = icmp eq ptr %337, null
  br i1 %371, label %372, label %332, !llvm.loop !153

372:                                              ; preds = %367
  %373 = icmp eq i32 %2, 0
  br i1 %373, label %468, label %374

374:                                              ; preds = %372
  %375 = load ptr, ptr @stdout, align 8, !tbaa !53
  %376 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %375, ptr noundef nonnull @.str.9) #14
  %377 = load ptr, ptr @stdout, align 8, !tbaa !53
  %378 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %377, ptr noundef nonnull @.str.10) #14
  %379 = load ptr, ptr @stdout, align 8, !tbaa !53
  %380 = fpext float %67 to double
  %381 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %379, ptr noundef nonnull @.str.11, double noundef %380) #14
  %382 = load ptr, ptr @stdout, align 8, !tbaa !53
  %383 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %382, ptr noundef nonnull @.str.12, double noundef 2.500000e+00) #14
  %384 = load ptr, ptr @stdout, align 8, !tbaa !53
  %385 = uitofp i64 %368 to double
  %386 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %384, ptr noundef nonnull @.str.13, double noundef %385) #14
  %387 = load ptr, ptr @stdout, align 8, !tbaa !53
  %388 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %387, ptr noundef nonnull @.str.14) #14
  %389 = load ptr, ptr @stdout, align 8, !tbaa !53
  %390 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %389, ptr noundef nonnull @.str.15) #14
  %391 = icmp eq ptr %370, null
  br i1 %391, label %404, label %392

392:                                              ; preds = %374, %392
  %393 = phi ptr [ %402, %392 ], [ %370, %374 ]
  %394 = load ptr, ptr @stdout, align 8, !tbaa !53
  %395 = getelementptr inbounds %struct._Cluster, ptr %393, i64 0, i32 5
  %396 = load i64, ptr %395, align 8, !tbaa !95
  %397 = sitofp i64 %396 to double
  %398 = getelementptr inbounds %struct._Cluster, ptr %393, i64 0, i32 4
  %399 = load i64, ptr %398, align 8, !tbaa !71
  %400 = sitofp i64 %399 to double
  %401 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %394, ptr noundef nonnull @.str.16, double noundef %397, double noundef %400) #14
  %402 = load ptr, ptr %393, align 8, !tbaa !69
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %392, !llvm.loop !154

404:                                              ; preds = %392, %374
  %405 = load ptr, ptr @stdout, align 8, !tbaa !53
  %406 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %405, ptr noundef nonnull @.str.17, i32 noundef 3) #14
  %407 = load ptr, ptr @stdout, align 8, !tbaa !53
  %408 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %407, ptr noundef nonnull @.str.18) #14
  %409 = icmp eq ptr %370, null
  br i1 %409, label %439, label %410

410:                                              ; preds = %404, %410
  %411 = phi ptr [ %437, %410 ], [ %370, %404 ]
  %412 = load ptr, ptr @stdout, align 8, !tbaa !53
  %413 = getelementptr inbounds %struct._Cluster, ptr %411, i64 0, i32 5
  %414 = load i64, ptr %413, align 8, !tbaa !95
  %415 = sitofp i64 %414 to double
  %416 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %412, ptr noundef nonnull @.str.19, double noundef %415) #14
  %417 = load ptr, ptr @stdout, align 8, !tbaa !53
  %418 = getelementptr inbounds %struct._Cluster, ptr %411, i64 0, i32 1, i32 2
  %419 = load i64, ptr %418, align 8, !tbaa !80
  %420 = sitofp i64 %419 to double
  %421 = getelementptr inbounds %struct._Cluster, ptr %411, i64 0, i32 1, i32 3
  %422 = load i64, ptr %421, align 8, !tbaa !81
  %423 = sitofp i64 %422 to double
  %424 = getelementptr inbounds %struct._Cluster, ptr %411, i64 0, i32 2, i32 2
  %425 = load i64, ptr %424, align 8, !tbaa !83
  %426 = sitofp i64 %425 to double
  %427 = getelementptr inbounds %struct._Cluster, ptr %411, i64 0, i32 2, i32 3
  %428 = load i64, ptr %427, align 8, !tbaa !84
  %429 = sitofp i64 %428 to double
  %430 = getelementptr inbounds %struct._Cluster, ptr %411, i64 0, i32 3, i32 2
  %431 = load i64, ptr %430, align 8, !tbaa !86
  %432 = sitofp i64 %431 to double
  %433 = getelementptr inbounds %struct._Cluster, ptr %411, i64 0, i32 3, i32 3
  %434 = load i64, ptr %433, align 8, !tbaa !87
  %435 = sitofp i64 %434 to double
  %436 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %417, ptr noundef nonnull @.str.20, double noundef %420, double noundef %423, double noundef %426, double noundef %429, double noundef %432, double noundef %435) #14
  %437 = load ptr, ptr %411, align 8, !tbaa !69
  %438 = icmp eq ptr %437, null
  br i1 %438, label %439, label %410, !llvm.loop !155

439:                                              ; preds = %410, %404
  %440 = load ptr, ptr @stdout, align 8, !tbaa !53
  %441 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %440, ptr noundef nonnull @.str.21, i32 noundef 3) #14
  %442 = load ptr, ptr @stdout, align 8, !tbaa !53
  %443 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %442, ptr noundef nonnull @.str.22) #14
  %444 = icmp eq ptr %370, null
  br i1 %444, label %465, label %445

445:                                              ; preds = %439, %445
  %446 = phi ptr [ %463, %445 ], [ %370, %439 ]
  %447 = load ptr, ptr @stdout, align 8, !tbaa !53
  %448 = getelementptr inbounds %struct._Cluster, ptr %446, i64 0, i32 5
  %449 = load i64, ptr %448, align 8, !tbaa !95
  %450 = sitofp i64 %449 to double
  %451 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %447, ptr noundef nonnull @.str.19, double noundef %450) #14
  %452 = load ptr, ptr @stdout, align 8, !tbaa !53
  %453 = getelementptr inbounds %struct._Cluster, ptr %446, i64 0, i32 1
  %454 = load float, ptr %453, align 8, !tbaa !88
  %455 = fpext float %454 to double
  %456 = getelementptr inbounds %struct._Cluster, ptr %446, i64 0, i32 2
  %457 = load float, ptr %456, align 8, !tbaa !89
  %458 = fpext float %457 to double
  %459 = getelementptr inbounds %struct._Cluster, ptr %446, i64 0, i32 3
  %460 = load float, ptr %459, align 8, !tbaa !90
  %461 = fpext float %460 to double
  %462 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %452, ptr noundef nonnull @.str.23, double noundef %455, double noundef %458, double noundef %461) #14
  %463 = load ptr, ptr %446, align 8, !tbaa !69
  %464 = icmp eq ptr %463, null
  br i1 %464, label %465, label %445, !llvm.loop !156

465:                                              ; preds = %445, %439
  %466 = load ptr, ptr @stdout, align 8, !tbaa !53
  %467 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %466, ptr noundef nonnull @.str.24) #14
  br label %468

468:                                              ; preds = %465, %372
  %469 = icmp ugt i64 %368, 256
  br i1 %469, label %470, label %475

470:                                              ; preds = %468
  %471 = icmp eq ptr %0, null
  br i1 %471, label %823, label %472

472:                                              ; preds = %470
  %473 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %474 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %54, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 500, i32 noundef 465, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4, ptr noundef nonnull %473) #14
  br label %823

475:                                              ; preds = %468
  %476 = call dereferenceable_or_null(2052) ptr @AcquireQuantumMemory(i64 noundef 513, i64 noundef 4) #15
  %477 = icmp eq ptr %476, null
  br i1 %477, label %478, label %483

478:                                              ; preds = %475
  %479 = icmp eq ptr %0, null
  br i1 %479, label %823, label %480

480:                                              ; preds = %478
  %481 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %482 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %54, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 507, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %481) #14
  br label %823

483:                                              ; preds = %475
  %484 = getelementptr inbounds float, ptr %476, i64 255
  br label %485

485:                                              ; preds = %483, %485
  %486 = phi i64 [ -255, %483 ], [ %490, %485 ]
  %487 = sitofp i64 %486 to float
  %488 = fmul float %487, %487
  %489 = getelementptr inbounds float, ptr %484, i64 %486
  store float %488, ptr %489, align 4, !tbaa !73
  %490 = add nsw i64 %486, 1
  %491 = icmp eq i64 %490, 256
  br i1 %491, label %492, label %485, !llvm.loop !157

492:                                              ; preds = %485
  %493 = call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %368) #14
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %500, label %495

495:                                              ; preds = %492
  %496 = icmp eq ptr %370, null
  br i1 %496, label %535, label %497

497:                                              ; preds = %495
  %498 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %499 = load ptr, ptr %498, align 8, !tbaa !158
  br label %505

500:                                              ; preds = %492
  %501 = icmp eq ptr %0, null
  br i1 %501, label %823, label %502

502:                                              ; preds = %500
  %503 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %504 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %54, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 516, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %503) #14
  br label %823

505:                                              ; preds = %497, %505
  %506 = phi ptr [ %370, %497 ], [ %533, %505 ]
  %507 = phi i64 [ 0, %497 ], [ %532, %505 ]
  %508 = getelementptr inbounds %struct._Cluster, ptr %506, i64 0, i32 1
  %509 = load float, ptr %508, align 8, !tbaa !88
  %510 = fpext float %509 to double
  %511 = fadd double %510, 5.000000e-01
  %512 = fptoui double %511 to i8
  %513 = zext i8 %512 to i16
  %514 = mul nuw i16 %513, 257
  %515 = getelementptr inbounds %struct._PixelPacket, ptr %499, i64 %507, i32 2
  store i16 %514, ptr %515, align 2, !tbaa !79
  %516 = getelementptr inbounds %struct._Cluster, ptr %506, i64 0, i32 2
  %517 = load float, ptr %516, align 8, !tbaa !89
  %518 = fpext float %517 to double
  %519 = fadd double %518, 5.000000e-01
  %520 = fptoui double %519 to i8
  %521 = zext i8 %520 to i16
  %522 = mul nuw i16 %521, 257
  %523 = getelementptr inbounds %struct._PixelPacket, ptr %499, i64 %507, i32 1
  store i16 %522, ptr %523, align 2, !tbaa !82
  %524 = getelementptr inbounds %struct._Cluster, ptr %506, i64 0, i32 3
  %525 = load float, ptr %524, align 8, !tbaa !90
  %526 = fpext float %525 to double
  %527 = fadd double %526, 5.000000e-01
  %528 = fptoui double %527 to i8
  %529 = zext i8 %528 to i16
  %530 = mul nuw i16 %529, 257
  %531 = getelementptr inbounds %struct._PixelPacket, ptr %499, i64 %507
  store i16 %530, ptr %531, align 2, !tbaa !85
  %532 = add nuw nsw i64 %507, 1
  %533 = load ptr, ptr %506, align 8, !tbaa !69
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %505, !llvm.loop !159

535:                                              ; preds = %505, %495
  %536 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %54) #14
  %537 = load i64, ptr %207, align 8, !tbaa !76
  %538 = icmp sgt i64 %537, 0
  br i1 %538, label %539, label %812

539:                                              ; preds = %535
  %540 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %541 = icmp eq ptr %370, null
  %542 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %543 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %544 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %545 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %546 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %547

547:                                              ; preds = %539, %806
  %548 = phi i64 [ 0, %539 ], [ %809, %806 ]
  %549 = phi i32 [ %330, %539 ], [ %808, %806 ]
  %550 = phi i64 [ %329, %539 ], [ %807, %806 ]
  %551 = icmp eq i32 %549, 0
  br i1 %551, label %806, label %552

552:                                              ; preds = %547
  %553 = load i64, ptr %540, align 8, !tbaa !78
  %554 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %536, i64 noundef 0, i64 noundef %548, i64 noundef %553, i64 noundef 1, ptr noundef nonnull %54) #19
  %555 = icmp eq ptr %554, null
  br i1 %555, label %806, label %556

556:                                              ; preds = %552
  %557 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %536) #14
  %558 = load i64, ptr %540, align 8, !tbaa !78
  %559 = icmp sgt i64 %558, 0
  br i1 %559, label %560, label %790

560:                                              ; preds = %556
  %561 = icmp eq ptr %557, null
  br label %562

562:                                              ; preds = %560, %785
  %563 = phi ptr [ %554, %560 ], [ %786, %785 ]
  %564 = phi i64 [ 0, %560 ], [ %787, %785 ]
  %565 = getelementptr inbounds i16, ptr %557, i64 %564
  br i1 %561, label %567, label %566

566:                                              ; preds = %562
  store i16 0, ptr %565, align 2, !tbaa !64
  br label %567

567:                                              ; preds = %566, %562
  br i1 %541, label %580, label %568

568:                                              ; preds = %567
  %569 = getelementptr inbounds %struct._PixelPacket, ptr %563, i64 0, i32 2
  %570 = load i16, ptr %569, align 2, !tbaa !79
  %571 = zext i16 %570 to i64
  %572 = add nuw nsw i64 %571, 128
  %573 = lshr i64 %572, 8
  %574 = sub nsw i64 %572, %573
  %575 = lshr i64 %574, 8
  %576 = and i64 %575, 255
  %577 = add nuw nsw i64 %576, 3
  %578 = add nsw i64 %576, -3
  %579 = getelementptr inbounds %struct._PixelPacket, ptr %563, i64 0, i32 1
  br label %586

580:                                              ; preds = %634, %567
  %581 = load i64, ptr %542, align 8, !tbaa !160
  %582 = icmp sgt i64 %581, 0
  br i1 %582, label %583, label %785

583:                                              ; preds = %580
  %584 = getelementptr inbounds %struct._PixelPacket, ptr %563, i64 0, i32 2
  %585 = getelementptr inbounds %struct._PixelPacket, ptr %563, i64 0, i32 1
  br label %637

586:                                              ; preds = %568, %634
  %587 = phi ptr [ %370, %568 ], [ %635, %634 ]
  %588 = getelementptr inbounds %struct._Cluster, ptr %587, i64 0, i32 1, i32 2
  %589 = load i64, ptr %588, align 8, !tbaa !80
  %590 = icmp sgt i64 %589, %577
  br i1 %590, label %634, label %591

591:                                              ; preds = %586
  %592 = getelementptr inbounds %struct._Cluster, ptr %587, i64 0, i32 1, i32 3
  %593 = load i64, ptr %592, align 8, !tbaa !81
  %594 = icmp slt i64 %593, %578
  br i1 %594, label %634, label %595

595:                                              ; preds = %591
  %596 = load i16, ptr %579, align 2, !tbaa !82
  %597 = zext i16 %596 to i64
  %598 = add nuw nsw i64 %597, 128
  %599 = lshr i64 %598, 8
  %600 = sub nsw i64 %598, %599
  %601 = lshr i64 %600, 8
  %602 = and i64 %601, 255
  %603 = getelementptr inbounds %struct._Cluster, ptr %587, i64 0, i32 2, i32 2
  %604 = load i64, ptr %603, align 8, !tbaa !83
  %605 = add nsw i64 %604, -3
  %606 = icmp sgt i64 %605, %602
  br i1 %606, label %634, label %607

607:                                              ; preds = %595
  %608 = getelementptr inbounds %struct._Cluster, ptr %587, i64 0, i32 2, i32 3
  %609 = load i64, ptr %608, align 8, !tbaa !84
  %610 = add nsw i64 %609, 3
  %611 = icmp slt i64 %610, %602
  br i1 %611, label %634, label %612

612:                                              ; preds = %607
  %613 = load i16, ptr %563, align 2, !tbaa !85
  %614 = zext i16 %613 to i64
  %615 = add nuw nsw i64 %614, 128
  %616 = lshr i64 %615, 8
  %617 = sub nsw i64 %615, %616
  %618 = lshr i64 %617, 8
  %619 = and i64 %618, 255
  %620 = getelementptr inbounds %struct._Cluster, ptr %587, i64 0, i32 3, i32 2
  %621 = load i64, ptr %620, align 8, !tbaa !86
  %622 = add nsw i64 %621, -3
  %623 = icmp sgt i64 %622, %619
  br i1 %623, label %634, label %624

624:                                              ; preds = %612
  %625 = getelementptr inbounds %struct._Cluster, ptr %587, i64 0, i32 3, i32 3
  %626 = load i64, ptr %625, align 8, !tbaa !87
  %627 = add nsw i64 %626, 3
  %628 = icmp slt i64 %627, %619
  br i1 %628, label %634, label %629

629:                                              ; preds = %624
  br i1 %561, label %785, label %630

630:                                              ; preds = %629
  %631 = getelementptr inbounds %struct._Cluster, ptr %587, i64 0, i32 5
  %632 = load i64, ptr %631, align 8, !tbaa !95
  %633 = trunc i64 %632 to i16
  store i16 %633, ptr %565, align 2, !tbaa !64
  br label %785

634:                                              ; preds = %624, %612, %607, %595, %591, %586
  %635 = load ptr, ptr %587, align 8, !tbaa !69
  %636 = icmp eq ptr %635, null
  br i1 %636, label %580, label %586, !llvm.loop !161

637:                                              ; preds = %583, %780
  %638 = phi i64 [ 0, %583 ], [ %782, %780 ]
  %639 = phi float [ 0.000000e+00, %583 ], [ %781, %780 ]
  %640 = load ptr, ptr %543, align 8, !tbaa !158
  %641 = getelementptr inbounds %struct._PixelPacket, ptr %640, i64 %638
  %642 = load i16, ptr %584, align 2, !tbaa !79
  %643 = zext i16 %642 to i64
  %644 = add nuw nsw i64 %643, 128
  %645 = lshr i64 %644, 8
  %646 = sub nsw i64 %644, %645
  %647 = lshr i64 %646, 8
  %648 = and i64 %647, 255
  %649 = getelementptr inbounds %struct._PixelPacket, ptr %640, i64 %638, i32 2
  %650 = load i16, ptr %649, align 2, !tbaa !79
  %651 = zext i16 %650 to i64
  %652 = add nuw nsw i64 %651, 128
  %653 = lshr i64 %652, 8
  %654 = sub nsw i64 %652, %653
  %655 = lshr i64 %654, 8
  %656 = and i64 %655, 255
  %657 = sub nsw i64 %648, %656
  %658 = getelementptr inbounds float, ptr %484, i64 %657
  %659 = load float, ptr %658, align 4, !tbaa !73
  %660 = load i16, ptr %585, align 2, !tbaa !82
  %661 = zext i16 %660 to i64
  %662 = add nuw nsw i64 %661, 128
  %663 = lshr i64 %662, 8
  %664 = sub nsw i64 %662, %663
  %665 = lshr i64 %664, 8
  %666 = and i64 %665, 255
  %667 = getelementptr inbounds %struct._PixelPacket, ptr %640, i64 %638, i32 1
  %668 = load i16, ptr %667, align 2, !tbaa !82
  %669 = zext i16 %668 to i64
  %670 = add nuw nsw i64 %669, 128
  %671 = lshr i64 %670, 8
  %672 = sub nsw i64 %670, %671
  %673 = lshr i64 %672, 8
  %674 = and i64 %673, 255
  %675 = sub nsw i64 %666, %674
  %676 = getelementptr inbounds float, ptr %484, i64 %675
  %677 = load float, ptr %676, align 4, !tbaa !73
  %678 = fadd float %659, %677
  %679 = load i16, ptr %563, align 2, !tbaa !85
  %680 = zext i16 %679 to i64
  %681 = add nuw nsw i64 %680, 128
  %682 = lshr i64 %681, 8
  %683 = sub nsw i64 %681, %682
  %684 = lshr i64 %683, 8
  %685 = and i64 %684, 255
  %686 = load i16, ptr %641, align 2, !tbaa !85
  %687 = zext i16 %686 to i64
  %688 = add nuw nsw i64 %687, 128
  %689 = lshr i64 %688, 8
  %690 = sub nsw i64 %688, %689
  %691 = lshr i64 %690, 8
  %692 = and i64 %691, 255
  %693 = sub nsw i64 %685, %692
  %694 = getelementptr inbounds float, ptr %484, i64 %693
  %695 = load float, ptr %694, align 4, !tbaa !73
  %696 = fadd float %678, %695
  %697 = load i64, ptr %542, align 8, !tbaa !160
  %698 = icmp sgt i64 %697, 0
  br i1 %698, label %699, label %768

699:                                              ; preds = %637, %699
  %700 = phi i64 [ %765, %699 ], [ 0, %637 ]
  %701 = phi float [ %764, %699 ], [ 0.000000e+00, %637 ]
  %702 = load ptr, ptr %543, align 8, !tbaa !158
  %703 = getelementptr inbounds %struct._PixelPacket, ptr %702, i64 %700
  %704 = load i16, ptr %584, align 2, !tbaa !79
  %705 = zext i16 %704 to i64
  %706 = add nuw nsw i64 %705, 128
  %707 = lshr i64 %706, 8
  %708 = sub nsw i64 %706, %707
  %709 = lshr i64 %708, 8
  %710 = and i64 %709, 255
  %711 = getelementptr inbounds %struct._PixelPacket, ptr %702, i64 %700, i32 2
  %712 = load i16, ptr %711, align 2, !tbaa !79
  %713 = zext i16 %712 to i64
  %714 = add nuw nsw i64 %713, 128
  %715 = lshr i64 %714, 8
  %716 = sub nsw i64 %714, %715
  %717 = lshr i64 %716, 8
  %718 = and i64 %717, 255
  %719 = sub nsw i64 %710, %718
  %720 = getelementptr inbounds float, ptr %484, i64 %719
  %721 = load float, ptr %720, align 4, !tbaa !73
  %722 = load i16, ptr %585, align 2, !tbaa !82
  %723 = zext i16 %722 to i64
  %724 = add nuw nsw i64 %723, 128
  %725 = lshr i64 %724, 8
  %726 = sub nsw i64 %724, %725
  %727 = lshr i64 %726, 8
  %728 = and i64 %727, 255
  %729 = getelementptr inbounds %struct._PixelPacket, ptr %702, i64 %700, i32 1
  %730 = load i16, ptr %729, align 2, !tbaa !82
  %731 = zext i16 %730 to i64
  %732 = add nuw nsw i64 %731, 128
  %733 = lshr i64 %732, 8
  %734 = sub nsw i64 %732, %733
  %735 = lshr i64 %734, 8
  %736 = and i64 %735, 255
  %737 = sub nsw i64 %728, %736
  %738 = getelementptr inbounds float, ptr %484, i64 %737
  %739 = load float, ptr %738, align 4, !tbaa !73
  %740 = fadd float %721, %739
  %741 = load i16, ptr %563, align 2, !tbaa !85
  %742 = zext i16 %741 to i64
  %743 = add nuw nsw i64 %742, 128
  %744 = lshr i64 %743, 8
  %745 = sub nsw i64 %743, %744
  %746 = lshr i64 %745, 8
  %747 = and i64 %746, 255
  %748 = load i16, ptr %703, align 2, !tbaa !85
  %749 = zext i16 %748 to i64
  %750 = add nuw nsw i64 %749, 128
  %751 = lshr i64 %750, 8
  %752 = sub nsw i64 %750, %751
  %753 = lshr i64 %752, 8
  %754 = and i64 %753, 255
  %755 = sub nsw i64 %747, %754
  %756 = getelementptr inbounds float, ptr %484, i64 %755
  %757 = load float, ptr %756, align 4, !tbaa !73
  %758 = fadd float %740, %757
  %759 = fdiv float %696, %758
  %760 = fpext float %759 to double
  %761 = call double @pow(double noundef %760, double noundef 0x3FE5555555555555) #14
  %762 = fpext float %701 to double
  %763 = fadd double %761, %762
  %764 = fptrunc double %763 to float
  %765 = add nuw nsw i64 %700, 1
  %766 = load i64, ptr %542, align 8, !tbaa !160
  %767 = icmp slt i64 %765, %766
  br i1 %767, label %699, label %768, !llvm.loop !162

768:                                              ; preds = %699, %637
  %769 = phi float [ 0.000000e+00, %637 ], [ %764, %699 ]
  %770 = fcmp une float %769, 0.000000e+00
  br i1 %770, label %771, label %780

771:                                              ; preds = %768
  %772 = fpext float %769 to double
  %773 = fdiv double 1.000000e+00, %772
  %774 = fpext float %639 to double
  %775 = fcmp ogt double %773, %774
  br i1 %775, label %776, label %780

776:                                              ; preds = %771
  %777 = fptrunc double %773 to float
  br i1 %561, label %780, label %778

778:                                              ; preds = %776
  %779 = trunc i64 %638 to i16
  store i16 %779, ptr %565, align 2, !tbaa !64
  br label %780

780:                                              ; preds = %778, %776, %771, %768
  %781 = phi float [ %777, %778 ], [ %777, %776 ], [ %639, %771 ], [ %639, %768 ]
  %782 = add nuw nsw i64 %638, 1
  %783 = load i64, ptr %542, align 8, !tbaa !160
  %784 = icmp slt i64 %782, %783
  br i1 %784, label %637, label %785, !llvm.loop !163

785:                                              ; preds = %780, %580, %629, %630
  %786 = getelementptr inbounds %struct._PixelPacket, ptr %563, i64 1
  %787 = add nuw nsw i64 %564, 1
  %788 = load i64, ptr %540, align 8, !tbaa !78
  %789 = icmp slt i64 %787, %788
  br i1 %789, label %562, label %790, !llvm.loop !164

790:                                              ; preds = %785, %556
  %791 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %536, ptr noundef nonnull %54) #19
  %792 = icmp ne i32 %791, 0
  %793 = zext i1 %792 to i32
  %794 = load ptr, ptr %544, align 8, !tbaa !93
  %795 = icmp eq ptr %794, null
  br i1 %795, label %806, label %796

796:                                              ; preds = %790
  %797 = add nsw i64 %550, 1
  %798 = load i64, ptr %207, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #14
  %799 = shl i64 %798, 1
  %800 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %545) #14
  %801 = load ptr, ptr %544, align 8, !tbaa !93
  %802 = load ptr, ptr %546, align 8, !tbaa !94
  %803 = call i32 %801(ptr noundef nonnull %6, i64 noundef %550, i64 noundef %799, ptr noundef %802) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  %804 = icmp eq i32 %803, 0
  %805 = select i1 %804, i32 0, i32 %793
  br label %806

806:                                              ; preds = %796, %790, %552, %547
  %807 = phi i64 [ %550, %547 ], [ %550, %552 ], [ %797, %796 ], [ %550, %790 ]
  %808 = phi i32 [ 0, %547 ], [ 0, %552 ], [ %805, %796 ], [ %793, %790 ]
  %809 = add nuw nsw i64 %548, 1
  %810 = load i64, ptr %207, align 8, !tbaa !76
  %811 = icmp slt i64 %809, %810
  br i1 %811, label %547, label %812, !llvm.loop !165

812:                                              ; preds = %806, %535
  %813 = call ptr @DestroyCacheView(ptr noundef %536) #14
  %814 = call i32 @SyncImage(ptr noundef %0) #14
  %815 = icmp eq ptr %370, null
  br i1 %815, label %821, label %816

816:                                              ; preds = %812, %816
  %817 = phi ptr [ %818, %816 ], [ %370, %812 ]
  %818 = load ptr, ptr %817, align 8, !tbaa !69
  %819 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %817) #14
  %820 = icmp eq ptr %818, null
  br i1 %820, label %821, label %816, !llvm.loop !166

821:                                              ; preds = %816, %812
  %822 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %476) #14
  br label %823

823:                                              ; preds = %179, %181, %194, %196, %470, %472, %478, %480, %500, %502, %821
  %824 = phi i32 [ 1, %821 ], [ 0, %181 ], [ 0, %179 ], [ 0, %196 ], [ 0, %194 ], [ 0, %472 ], [ 0, %470 ], [ 0, %480 ], [ 0, %478 ], [ 0, %502 ], [ 0, %500 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #14
  %825 = call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef %52) #14
  br label %826

826:                                              ; preds = %823, %826
  %827 = phi i64 [ 0, %823 ], [ %834, %826 ]
  %828 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %827
  %829 = load ptr, ptr %828, align 8, !tbaa !53
  %830 = call ptr @RelinquishMagickMemory(ptr noundef %829) #14
  store ptr %830, ptr %828, align 8, !tbaa !53
  %831 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %827
  %832 = load ptr, ptr %831, align 8, !tbaa !53
  %833 = call ptr @RelinquishMagickMemory(ptr noundef %832) #14
  store ptr %833, ptr %831, align 8, !tbaa !53
  %834 = add nuw nsw i64 %827, 1
  %835 = icmp eq i64 %834, 3
  br i1 %835, label %836, label %826, !llvm.loop !167

836:                                              ; preds = %826, %41, %43
  %837 = phi i32 [ 0, %43 ], [ 0, %41 ], [ %824, %826 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14
  ret i32 %837
}

declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ActiveNodes(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 {
  br label %4

4:                                                ; preds = %19, %13, %3
  %5 = phi ptr [ %2, %3 ], [ %18, %13 ], [ %23, %19 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._IntervalTree, ptr %5, i64 0, i32 4
  %9 = load float, ptr %8, align 4, !tbaa !168
  %10 = getelementptr inbounds %struct._IntervalTree, ptr %5, i64 0, i32 3
  %11 = load float, ptr %10, align 8, !tbaa !169
  %12 = fcmp ult float %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load i64, ptr %1, align 8, !tbaa !74
  %15 = add nsw i64 %14, 1
  store i64 %15, ptr %1, align 8, !tbaa !74
  %16 = getelementptr inbounds ptr, ptr %0, i64 %14
  store ptr %5, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct._IntervalTree, ptr %5, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !137
  br label %4

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct._IntervalTree, ptr %5, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  tail call fastcc void @ActiveNodes(ptr noundef %0, ptr noundef %1, ptr noundef %21)
  %22 = getelementptr inbounds %struct._IntervalTree, ptr %5, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !140
  br label %4

24:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @FreeNodes(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1, %4
  ret void

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._IntervalTree, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  tail call fastcc void @FreeNodes(ptr noundef %6)
  %7 = getelementptr inbounds %struct._IntervalTree, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  tail call fastcc void @FreeNodes(ptr noundef %8)
  %9 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #14
  br label %3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @InitializeList(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 {
  br label %4

4:                                                ; preds = %15, %3
  %5 = phi ptr [ %2, %3 ], [ %18, %15 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._IntervalTree, ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i64, ptr %1, align 8, !tbaa !74
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %1, align 8, !tbaa !74
  %14 = getelementptr inbounds ptr, ptr %0, i64 %12
  store ptr %5, ptr %14, align 8, !tbaa !53
  br label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct._IntervalTree, ptr %5, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  tail call fastcc void @InitializeList(ptr noundef %0, ptr noundef %1, ptr noundef %17)
  %18 = load ptr, ptr %8, align 8, !tbaa !140
  br label %4

19:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @Stability(ptr noundef %0) unnamed_addr #8 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %18, %13 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._IntervalTree, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load float, ptr %3, align 8, !tbaa !132
  %11 = load float, ptr %7, align 8, !tbaa !132
  %12 = fsub float %10, %11
  br label %13

13:                                               ; preds = %5, %9
  %14 = phi float [ %12, %9 ], [ 0.000000e+00, %5 ]
  %15 = getelementptr inbounds %struct._IntervalTree, ptr %3, i64 0, i32 4
  store float %14, ptr %15, align 4, !tbaa !168
  %16 = getelementptr inbounds %struct._IntervalTree, ptr %3, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  tail call fastcc void @Stability(ptr noundef %17)
  %18 = load ptr, ptr %6, align 8, !tbaa !140
  br label %2

19:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MeanStability(ptr noundef %0) unnamed_addr #8 {
  br label %2

2:                                                ; preds = %24, %1
  %3 = phi ptr [ %0, %1 ], [ %27, %24 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._IntervalTree, ptr %3, i64 0, i32 3
  store float 0.000000e+00, ptr %6, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct._IntervalTree, ptr %3, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %5, %10
  %11 = phi float [ %16, %10 ], [ 0.000000e+00, %5 ]
  %12 = phi i64 [ %17, %10 ], [ 0, %5 ]
  %13 = phi ptr [ %19, %10 ], [ %8, %5 ]
  %14 = getelementptr inbounds %struct._IntervalTree, ptr %13, i64 0, i32 4
  %15 = load float, ptr %14, align 4, !tbaa !168
  %16 = fadd float %11, %15
  %17 = add nuw nsw i64 %12, 1
  %18 = getelementptr inbounds %struct._IntervalTree, ptr %13, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !137
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !170

21:                                               ; preds = %10
  %22 = sitofp i64 %17 to float
  %23 = fdiv float %16, %22
  store float %23, ptr %6, align 8, !tbaa !169
  br label %24

24:                                               ; preds = %21, %5
  %25 = getelementptr inbounds %struct._IntervalTree, ptr %3, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !137
  tail call fastcc void @MeanStability(ptr noundef %26)
  %27 = load ptr, ptr %7, align 8, !tbaa !140
  br label %2

28:                                               ; preds = %2
  ret void
}

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #11

declare i32 @SyncImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { hot nounwind }

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
!53 = !{!40, !40, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !55, !56}
!58 = !{!59, !39, i64 16}
!59 = !{!"_ExtentPacket", !60, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!60 = !{!"float", !37, i64 0}
!61 = !{!59, !60, i64 0}
!62 = !{!59, !39, i64 24}
!63 = !{!59, !39, i64 8}
!64 = !{!42, !42, i64 0}
!65 = distinct !{!65, !55, !56}
!66 = distinct !{!66, !55, !56}
!67 = distinct !{!67, !55, !56}
!68 = distinct !{!68, !55, !56}
!69 = !{!70, !40, i64 0}
!70 = !{!"_Cluster", !40, i64 0, !59, i64 8, !59, i64 40, !59, i64 72, !39, i64 104, !39, i64 112}
!71 = !{!70, !39, i64 104}
!72 = !{i64 0, i64 4, !73, i64 8, i64 8, !74, i64 16, i64 8, !74, i64 24, i64 8, !74}
!73 = !{!60, !60, i64 0}
!74 = !{!39, !39, i64 0}
!75 = distinct !{!75, !55, !56}
!76 = !{!35, !39, i64 48}
!77 = distinct !{!77, !55, !56}
!78 = !{!35, !39, i64 40}
!79 = !{!41, !42, i64 4}
!80 = !{!70, !39, i64 24}
!81 = !{!70, !39, i64 32}
!82 = !{!41, !42, i64 2}
!83 = !{!70, !39, i64 56}
!84 = !{!70, !39, i64 64}
!85 = !{!41, !42, i64 0}
!86 = !{!70, !39, i64 88}
!87 = !{!70, !39, i64 96}
!88 = !{!70, !60, i64 8}
!89 = !{!70, !60, i64 40}
!90 = !{!70, !60, i64 72}
!91 = distinct !{!91, !55, !56}
!92 = distinct !{!92, !55, !56}
!93 = !{!35, !40, i64 568}
!94 = !{!35, !40, i64 576}
!95 = !{!70, !39, i64 112}
!96 = distinct !{!96, !55, !56}
!97 = distinct !{!97, !55, !56}
!98 = distinct !{!98, !55, !56}
!99 = !{!100, !60, i64 32}
!100 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !60, i64 32, !60, i64 36, !60, i64 40, !60, i64 44, !60, i64 48}
!101 = !{!100, !60, i64 36}
!102 = !{!100, !60, i64 40}
!103 = distinct !{!103, !55, !56}
!104 = distinct !{!104, !55, !56}
!105 = distinct !{!105, !55, !56}
!106 = distinct !{!106, !55, !56}
!107 = distinct !{!107, !55, !56}
!108 = !{!109, !60, i64 0}
!109 = !{!"_ZeroCrossing", !60, i64 0, !37, i64 4, !37, i64 1028}
!110 = distinct !{!110, !55, !56}
!111 = !{!36, !36, i64 0}
!112 = !{!43, !43, i64 0}
!113 = distinct !{!113, !55, !56}
!114 = distinct !{!114, !55, !56}
!115 = distinct !{!115, !55, !56}
!116 = distinct !{!116, !55, !56}
!117 = distinct !{!117, !55, !56}
!118 = distinct !{!118, !55, !56}
!119 = distinct !{!119, !55, !56}
!120 = distinct !{!120, !55, !56}
!121 = distinct !{!121, !55, !56}
!122 = distinct !{!122, !55, !56}
!123 = distinct !{!123, !55, !56}
!124 = distinct !{!124, !55, !56}
!125 = distinct !{!125, !55, !56}
!126 = distinct !{!126, !55, !56}
!127 = distinct !{!127, !55, !56}
!128 = distinct !{!128, !55, !56}
!129 = distinct !{!129, !55, !56}
!130 = distinct !{!130, !55, !56}
!131 = distinct !{!131, !55, !56}
!132 = !{!133, !60, i64 0}
!133 = !{!"_IntervalTree", !60, i64 0, !39, i64 8, !39, i64 16, !60, i64 24, !60, i64 28, !40, i64 32, !40, i64 40}
!134 = !{!133, !39, i64 8}
!135 = !{!133, !39, i64 16}
!136 = distinct !{!136, !55, !56}
!137 = !{!133, !40, i64 32}
!138 = distinct !{!138, !55, !56}
!139 = distinct !{!139, !55, !56}
!140 = !{!133, !40, i64 40}
!141 = distinct !{!141, !55, !56}
!142 = distinct !{!142, !55, !56}
!143 = distinct !{!143, !55, !56}
!144 = distinct !{!144, !55, !56}
!145 = distinct !{!145, !55, !56}
!146 = distinct !{!146, !55, !56}
!147 = distinct !{!147, !55, !56}
!148 = !{!35, !36, i64 4}
!149 = distinct !{!149, !55, !56}
!150 = distinct !{!150, !55, !56}
!151 = distinct !{!151, !55, !56}
!152 = distinct !{!152, !55, !56}
!153 = distinct !{!153, !55, !56}
!154 = distinct !{!154, !55, !56}
!155 = distinct !{!155, !55, !56}
!156 = distinct !{!156, !55, !56}
!157 = distinct !{!157, !55, !56}
!158 = !{!35, !40, i64 72}
!159 = distinct !{!159, !55, !56}
!160 = !{!35, !39, i64 64}
!161 = distinct !{!161, !55, !56}
!162 = distinct !{!162, !55, !56}
!163 = distinct !{!163, !55, !56}
!164 = distinct !{!164, !55, !56}
!165 = distinct !{!165, !55, !56}
!166 = distinct !{!166, !55, !56}
!167 = distinct !{!167, !55, !56}
!168 = !{!133, !60, i64 28}
!169 = !{!133, !60, i64 24}
!170 = distinct !{!170, !55, !56}
