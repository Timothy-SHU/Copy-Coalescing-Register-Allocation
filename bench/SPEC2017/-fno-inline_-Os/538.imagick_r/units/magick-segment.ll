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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetImageDynamicThreshold(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._ExtentPacket, align 8
  %7 = alloca %struct._ExtentPacket, align 8
  %8 = alloca %struct._ExtentPacket, align 8
  %9 = alloca [3 x ptr], align 16
  %10 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #17
  br label %17

17:                                               ; preds = %14, %5
  tail call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %3) #17
  br label %18

18:                                               ; preds = %17, %42
  %19 = phi i64 [ 0, %17 ], [ %43, %42 ]
  %20 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #18
  %21 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %19
  store ptr %20, ptr %21, align 8, !tbaa !53
  %22 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #18
  %23 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 %19
  store ptr %22, ptr %23, align 8, !tbaa !53
  %24 = icmp eq ptr %20, null
  %25 = icmp eq ptr %22, null
  %26 = or i1 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %18
  %28 = icmp eq i64 %19, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %31, %29 ], [ %19, %27 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #17
  store ptr %34, ptr %32, align 8, !tbaa !53
  %35 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %31
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  %37 = tail call ptr @RelinquishMagickMemory(ptr noundef %36) #17
  store ptr %37, ptr %35, align 8, !tbaa !53
  %38 = icmp sgt i64 %30, 1
  br i1 %38, label %29, label %39, !llvm.loop !54

39:                                               ; preds = %29, %27
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %41 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1008, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %40) #17
  br label %358

42:                                               ; preds = %18
  %43 = add nuw nsw i64 %19, 1
  %44 = icmp eq i64 %43, 3
  br i1 %44, label %45, label %18, !llvm.loop !56

45:                                               ; preds = %42
  call fastcc void @InitializeHistogram(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %4) #19
  %46 = load ptr, ptr %10, align 16, !tbaa !53
  %47 = fcmp oeq double %2, 0.000000e+00
  %48 = select i1 %47, double 1.000000e+00, double %2
  %49 = load ptr, ptr %9, align 16, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %46, double noundef 0x3FC99999A0000000, double noundef %48, ptr noundef %49) #19
  %50 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %51, double noundef 0x3FC99999A0000000, double noundef %48, ptr noundef %53) #19
  %54 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  %55 = load ptr, ptr %54, align 16, !tbaa !53
  %56 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 2
  %57 = load ptr, ptr %56, align 16, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %55, double noundef 0x3FC99999A0000000, double noundef %48, ptr noundef %57) #19
  %58 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 32) #17
  %59 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 32) #17
  %60 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 32) #17
  %61 = call fastcc i64 @DefineRegion(ptr noundef %49, ptr noundef nonnull %8) #19, !range !57
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %124, label %63

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct._ExtentPacket, ptr %7, i64 0, i32 1
  %65 = getelementptr inbounds %struct._ExtentPacket, ptr %6, i64 0, i32 1
  br label %77

66:                                               ; preds = %88
  %67 = load ptr, ptr %9, align 16, !tbaa !53
  br label %68

68:                                               ; preds = %66, %77
  %69 = phi ptr [ %78, %77 ], [ %67, %66 ]
  %70 = phi ptr [ %79, %77 ], [ %89, %66 ]
  %71 = phi ptr [ %80, %77 ], [ %90, %66 ]
  %72 = phi ptr [ %81, %77 ], [ %89, %66 ]
  %73 = phi ptr [ %83, %77 ], [ %91, %66 ]
  %74 = phi ptr [ %82, %77 ], [ %92, %66 ]
  %75 = call fastcc i64 @DefineRegion(ptr noundef %69, ptr noundef nonnull %8) #19, !range !57
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %122, label %77, !llvm.loop !58

77:                                               ; preds = %63, %68
  %78 = phi ptr [ %49, %63 ], [ %69, %68 ]
  %79 = phi ptr [ %53, %63 ], [ %70, %68 ]
  %80 = phi ptr [ %57, %63 ], [ %71, %68 ]
  %81 = phi ptr [ %53, %63 ], [ %72, %68 ]
  %82 = phi ptr [ null, %63 ], [ %74, %68 ]
  %83 = phi ptr [ null, %63 ], [ %73, %68 ]
  store i64 0, ptr %64, align 8, !tbaa !59
  %84 = call fastcc i64 @DefineRegion(ptr noundef %81, ptr noundef nonnull %7) #19, !range !57
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %68, label %95

86:                                               ; preds = %114
  %87 = load ptr, ptr %52, align 8, !tbaa !53
  br label %88

88:                                               ; preds = %86, %95
  %89 = phi ptr [ %96, %95 ], [ %87, %86 ]
  %90 = phi ptr [ %97, %95 ], [ %119, %86 ]
  %91 = phi ptr [ %99, %95 ], [ %106, %86 ]
  %92 = phi ptr [ %98, %95 ], [ %109, %86 ]
  %93 = call fastcc i64 @DefineRegion(ptr noundef %89, ptr noundef nonnull %7) #19, !range !57
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %66, label %95, !llvm.loop !62

95:                                               ; preds = %77, %88
  %96 = phi ptr [ %89, %88 ], [ %79, %77 ]
  %97 = phi ptr [ %90, %88 ], [ %80, %77 ]
  %98 = phi ptr [ %92, %88 ], [ %82, %77 ]
  %99 = phi ptr [ %91, %88 ], [ %83, %77 ]
  store i64 0, ptr %65, align 8, !tbaa !59
  %100 = call fastcc i64 @DefineRegion(ptr noundef %97, ptr noundef nonnull %6) #19, !range !57
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %88, label %102

102:                                              ; preds = %95, %114
  %103 = phi ptr [ %109, %114 ], [ %98, %95 ]
  %104 = phi ptr [ %106, %114 ], [ %99, %95 ]
  %105 = icmp eq ptr %103, null
  %106 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #20
  br i1 %105, label %108, label %107

107:                                              ; preds = %102
  store ptr %106, ptr %104, align 8, !tbaa !63
  br label %108

108:                                              ; preds = %102, %107
  %109 = phi ptr [ %103, %107 ], [ %106, %102 ]
  %110 = icmp eq ptr %106, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %113 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1055, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %112) #17
  br label %358

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct._Cluster, ptr %106, i64 0, i32 4
  store i64 0, ptr %115, align 8, !tbaa !65
  %116 = getelementptr inbounds %struct._Cluster, ptr %106, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %116, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !66
  %117 = getelementptr inbounds %struct._Cluster, ptr %106, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %117, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !66
  %118 = getelementptr inbounds %struct._Cluster, ptr %106, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %118, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !66
  store ptr null, ptr %106, align 8, !tbaa !63
  %119 = load ptr, ptr %56, align 16, !tbaa !53
  %120 = call fastcc i64 @DefineRegion(ptr noundef %119, ptr noundef nonnull %6) #19, !range !57
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %86, label %102, !llvm.loop !69

122:                                              ; preds = %68
  %123 = icmp eq ptr %74, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %45, %122
  %125 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #20
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %129 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1079, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %128) #17
  br label %358

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct._Cluster, ptr %125, i64 0, i32 4
  store i64 0, ptr %131, align 8, !tbaa !65
  %132 = getelementptr inbounds %struct._Cluster, ptr %125, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !66
  %133 = getelementptr inbounds %struct._Cluster, ptr %125, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %133, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !66
  %134 = getelementptr inbounds %struct._Cluster, ptr %125, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !66
  store ptr null, ptr %125, align 8, !tbaa !63
  br label %135

135:                                              ; preds = %130, %122
  %136 = phi ptr [ %125, %130 ], [ %74, %122 ]
  %137 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %138 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %139 = load i64, ptr %138, align 8, !tbaa !70
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %145, label %226

141:                                              ; preds = %221
  %142 = add nuw nsw i64 %146, 1
  %143 = load i64, ptr %138, align 8, !tbaa !70
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %226, !llvm.loop !71

145:                                              ; preds = %135, %141
  %146 = phi i64 [ %142, %141 ], [ 0, %135 ]
  %147 = load i64, ptr %137, align 8, !tbaa !72
  %148 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %146, i64 noundef %147, i64 noundef 1, ptr noundef %4) #17
  %149 = icmp eq ptr %148, null
  br i1 %149, label %226, label %150

150:                                              ; preds = %145
  %151 = load i64, ptr %137, align 8, !tbaa !72
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %221

153:                                              ; preds = %150, %217
  %154 = phi i64 [ %219, %217 ], [ 0, %150 ]
  %155 = phi ptr [ %218, %217 ], [ %148, %150 ]
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 2
  %157 = load i16, ptr %156, align 2, !tbaa !73
  %158 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %157) #19
  %159 = zext i8 %158 to i64
  %160 = add nuw nsw i64 %159, 3
  %161 = add nsw i64 %159, -3
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 1
  br label %163

163:                                              ; preds = %153, %214
  %164 = phi ptr [ %136, %153 ], [ %215, %214 ]
  %165 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 1, i32 2
  %166 = load i64, ptr %165, align 8, !tbaa !74
  %167 = icmp sgt i64 %166, %160
  br i1 %167, label %214, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 1, i32 3
  %170 = load i64, ptr %169, align 8, !tbaa !75
  %171 = icmp slt i64 %170, %161
  br i1 %171, label %214, label %172

172:                                              ; preds = %168
  %173 = load i16, ptr %162, align 2, !tbaa !76
  %174 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %173) #19
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 2, i32 2
  %177 = load i64, ptr %176, align 8, !tbaa !77
  %178 = add nsw i64 %177, -3
  %179 = icmp sgt i64 %178, %175
  br i1 %179, label %214, label %180

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 2, i32 3
  %182 = load i64, ptr %181, align 8, !tbaa !78
  %183 = add nsw i64 %182, 3
  %184 = icmp slt i64 %183, %175
  br i1 %184, label %214, label %185

185:                                              ; preds = %180
  %186 = load i16, ptr %155, align 2, !tbaa !79
  %187 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %186) #19
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 3, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !80
  %191 = add nsw i64 %190, -3
  %192 = icmp sgt i64 %191, %188
  br i1 %192, label %214, label %193

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 3, i32 3
  %195 = load i64, ptr %194, align 8, !tbaa !81
  %196 = add nsw i64 %195, 3
  %197 = icmp slt i64 %196, %188
  br i1 %197, label %214, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 1
  %200 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 2
  %201 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 3
  %202 = uitofp i8 %158 to float
  %203 = load float, ptr %199, align 8, !tbaa !82
  %204 = fadd float %203, %202
  store float %204, ptr %199, align 8, !tbaa !82
  %205 = uitofp i8 %174 to float
  %206 = load float, ptr %200, align 8, !tbaa !83
  %207 = fadd float %206, %205
  store float %207, ptr %200, align 8, !tbaa !83
  %208 = uitofp i8 %187 to float
  %209 = load float, ptr %201, align 8, !tbaa !84
  %210 = fadd float %209, %208
  store float %210, ptr %201, align 8, !tbaa !84
  %211 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 4
  %212 = load i64, ptr %211, align 8, !tbaa !65
  %213 = add nsw i64 %212, 1
  store i64 %213, ptr %211, align 8, !tbaa !65
  br label %217

214:                                              ; preds = %163, %168, %172, %180, %185, %193
  %215 = load ptr, ptr %164, align 8, !tbaa !63
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %163, !llvm.loop !85

217:                                              ; preds = %214, %198
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 1
  %219 = add nuw nsw i64 %154, 1
  %220 = icmp eq i64 %219, %151
  br i1 %220, label %221, label %153, !llvm.loop !86

221:                                              ; preds = %217, %150
  %222 = load i64, ptr %138, align 8, !tbaa !70
  %223 = shl i64 %222, 1
  %224 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %146, i64 noundef %223) #19
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %141

226:                                              ; preds = %141, %145, %221, %135
  br label %227

227:                                              ; preds = %226, %261
  %228 = phi i64 [ %264, %261 ], [ 0, %226 ]
  %229 = phi ptr [ %263, %261 ], [ %136, %226 ]
  %230 = phi ptr [ %262, %261 ], [ %136, %226 ]
  %231 = phi ptr [ %232, %261 ], [ %136, %226 ]
  %232 = load ptr, ptr %231, align 8, !tbaa !63
  %233 = getelementptr inbounds %struct._Cluster, ptr %231, i64 0, i32 4
  %234 = load i64, ptr %233, align 8, !tbaa !65
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %255

236:                                              ; preds = %227
  %237 = sitofp i64 %234 to double
  %238 = sitofp i64 %228 to double
  %239 = fmul double %238, %1
  %240 = fdiv double %239, 1.000000e+02
  %241 = fcmp ugt double %240, %237
  br i1 %241, label %255, label %242

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct._Cluster, ptr %231, i64 0, i32 5
  store i64 %228, ptr %243, align 8, !tbaa !87
  %244 = sitofp i64 %234 to float
  %245 = getelementptr inbounds %struct._Cluster, ptr %231, i64 0, i32 1
  %246 = load float, ptr %245, align 8, !tbaa !82
  %247 = fdiv float %246, %244
  store float %247, ptr %245, align 8, !tbaa !82
  %248 = getelementptr inbounds %struct._Cluster, ptr %231, i64 0, i32 2
  %249 = load float, ptr %248, align 8, !tbaa !83
  %250 = fdiv float %249, %244
  store float %250, ptr %248, align 8, !tbaa !83
  %251 = getelementptr inbounds %struct._Cluster, ptr %231, i64 0, i32 3
  %252 = load float, ptr %251, align 8, !tbaa !84
  %253 = fdiv float %252, %244
  store float %253, ptr %251, align 8, !tbaa !84
  %254 = add nsw i64 %228, 1
  br label %261

255:                                              ; preds = %236, %227
  %256 = icmp eq ptr %231, %230
  br i1 %256, label %258, label %257

257:                                              ; preds = %255
  store ptr %232, ptr %229, align 8, !tbaa !63
  br label %258

258:                                              ; preds = %255, %257
  %259 = phi ptr [ %230, %257 ], [ %232, %255 ]
  %260 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %231) #17
  br label %261

261:                                              ; preds = %258, %242
  %262 = phi ptr [ %230, %242 ], [ %259, %258 ]
  %263 = phi ptr [ %231, %242 ], [ %229, %258 ]
  %264 = phi i64 [ %254, %242 ], [ %228, %258 ]
  %265 = icmp eq ptr %232, null
  br i1 %265, label %266, label %227, !llvm.loop !88

266:                                              ; preds = %261
  %267 = icmp sgt i64 %264, 1
  br i1 %267, label %268, label %297

268:                                              ; preds = %266
  %269 = load ptr, ptr %262, align 8, !tbaa !63
  %270 = load ptr, ptr %269, align 8, !tbaa !63
  %271 = icmp eq ptr %270, null
  br i1 %271, label %301, label %273

272:                                              ; preds = %273
  br i1 %271, label %297, label %285

273:                                              ; preds = %268, %273
  %274 = phi ptr [ %283, %273 ], [ %270, %268 ]
  %275 = phi ptr [ %282, %273 ], [ %269, %268 ]
  %276 = phi ptr [ %274, %273 ], [ %269, %268 ]
  %277 = getelementptr inbounds %struct._Cluster, ptr %276, i64 0, i32 4
  %278 = load i64, ptr %277, align 8, !tbaa !65
  %279 = getelementptr inbounds %struct._Cluster, ptr %275, i64 0, i32 4
  %280 = load i64, ptr %279, align 8, !tbaa !65
  %281 = icmp slt i64 %278, %280
  %282 = select i1 %281, ptr %276, ptr %275
  %283 = load ptr, ptr %274, align 8, !tbaa !63
  %284 = icmp eq ptr %283, null
  br i1 %284, label %272, label %273, !llvm.loop !89

285:                                              ; preds = %272, %285
  %286 = phi ptr [ %295, %285 ], [ %270, %272 ]
  %287 = phi ptr [ %294, %285 ], [ %269, %272 ]
  %288 = phi ptr [ %286, %285 ], [ %269, %272 ]
  %289 = getelementptr inbounds %struct._Cluster, ptr %288, i64 0, i32 4
  %290 = load i64, ptr %289, align 8, !tbaa !65
  %291 = getelementptr inbounds %struct._Cluster, ptr %287, i64 0, i32 4
  %292 = load i64, ptr %291, align 8, !tbaa !65
  %293 = icmp sgt i64 %290, %292
  %294 = select i1 %293, ptr %288, ptr %287
  %295 = load ptr, ptr %286, align 8, !tbaa !63
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %285, !llvm.loop !90

297:                                              ; preds = %285, %272, %266
  %298 = phi ptr [ %262, %266 ], [ %282, %272 ], [ %282, %285 ]
  %299 = phi ptr [ %262, %266 ], [ %269, %272 ], [ %294, %285 ]
  %300 = icmp eq ptr %299, null
  br i1 %300, label %340, label %301

301:                                              ; preds = %268, %297
  %302 = phi ptr [ %299, %297 ], [ %269, %268 ]
  %303 = phi ptr [ %298, %297 ], [ %269, %268 ]
  %304 = getelementptr inbounds %struct._Cluster, ptr %302, i64 0, i32 1
  %305 = load float, ptr %304, align 8, !tbaa !82
  %306 = getelementptr inbounds %struct._Cluster, ptr %303, i64 0, i32 1
  %307 = load float, ptr %306, align 8, !tbaa !82
  %308 = fadd float %305, %307
  %309 = fmul float %308, 5.000000e-01
  %310 = fpext float %309 to double
  %311 = fadd double %310, 5.000000e-01
  %312 = fptoui double %311 to i8
  %313 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %312) #19
  %314 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %315 = getelementptr inbounds %struct._Cluster, ptr %302, i64 0, i32 2
  %316 = load float, ptr %315, align 8, !tbaa !83
  %317 = getelementptr inbounds %struct._Cluster, ptr %303, i64 0, i32 2
  %318 = load float, ptr %317, align 8, !tbaa !83
  %319 = fadd float %316, %318
  %320 = fmul float %319, 5.000000e-01
  %321 = fpext float %320 to double
  %322 = fadd double %321, 5.000000e-01
  %323 = fptoui double %322 to i8
  %324 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %323) #19
  %325 = insertelement <2 x i16> poison, i16 %313, i64 0
  %326 = insertelement <2 x i16> %325, i16 %324, i64 1
  %327 = uitofp <2 x i16> %326 to <2 x float>
  store <2 x float> %327, ptr %314, align 8, !tbaa !67
  %328 = getelementptr inbounds %struct._Cluster, ptr %302, i64 0, i32 3
  %329 = load float, ptr %328, align 8, !tbaa !84
  %330 = getelementptr inbounds %struct._Cluster, ptr %303, i64 0, i32 3
  %331 = load float, ptr %330, align 8, !tbaa !84
  %332 = fadd float %329, %331
  %333 = fmul float %332, 5.000000e-01
  %334 = fpext float %333 to double
  %335 = fadd double %334, 5.000000e-01
  %336 = fptoui double %335 to i8
  %337 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %336) #19
  %338 = uitofp i16 %337 to float
  %339 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %338, ptr %339, align 8, !tbaa !91
  br label %340

340:                                              ; preds = %301, %297
  %341 = icmp eq ptr %262, null
  br i1 %341, label %347, label %342

342:                                              ; preds = %340, %342
  %343 = phi ptr [ %344, %342 ], [ %262, %340 ]
  %344 = load ptr, ptr %343, align 8, !tbaa !63
  %345 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %343) #17
  %346 = icmp eq ptr %344, null
  br i1 %346, label %347, label %342, !llvm.loop !93

347:                                              ; preds = %342, %340
  br label %348

348:                                              ; preds = %347, %348
  %349 = phi i64 [ %356, %348 ], [ 0, %347 ]
  %350 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !53
  %352 = call ptr @RelinquishMagickMemory(ptr noundef %351) #17
  store ptr %352, ptr %350, align 8, !tbaa !53
  %353 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %349
  %354 = load ptr, ptr %353, align 8, !tbaa !53
  %355 = call ptr @RelinquishMagickMemory(ptr noundef %354) #17
  store ptr %355, ptr %353, align 8, !tbaa !53
  %356 = add nuw nsw i64 %349, 1
  %357 = icmp eq i64 %356, 3
  br i1 %357, label %358, label %348, !llvm.loop !94

358:                                              ; preds = %348, %127, %111, %39
  %359 = phi i32 [ 0, %39 ], [ 0, %111 ], [ 0, %127 ], [ 1, %348 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  ret i32 %359
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @InitializeHistogram(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !95 {
  %4 = load ptr, ptr %1, align 8, !tbaa !53
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  br label %16

9:                                                ; preds = %16
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !70
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %9
  %15 = load i64, ptr %10, align 8, !tbaa !72
  br label %23

16:                                               ; preds = %3, %16
  %17 = phi i64 [ 0, %3 ], [ %21, %16 ]
  %18 = getelementptr inbounds i64, ptr %4, i64 %17
  store i64 0, ptr %18, align 8, !tbaa !68
  %19 = getelementptr inbounds i64, ptr %6, i64 %17
  store i64 0, ptr %19, align 8, !tbaa !68
  %20 = getelementptr inbounds i64, ptr %8, i64 %17
  store i64 0, ptr %20, align 8, !tbaa !68
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, 256
  br i1 %22, label %9, label %16, !llvm.loop !96

23:                                               ; preds = %14, %62
  %24 = phi i64 [ %15, %14 ], [ %63, %62 ]
  %25 = phi i64 [ 0, %14 ], [ %64, %62 ]
  %26 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %25, i64 noundef %24, i64 noundef 1, ptr noundef %2) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %67, label %28

28:                                               ; preds = %23
  %29 = load i64, ptr %10, align 8, !tbaa !72
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load ptr, ptr %1, align 8, !tbaa !53
  %33 = load ptr, ptr %5, align 8, !tbaa !53
  %34 = load ptr, ptr %7, align 8, !tbaa !53
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ 0, %31 ], [ %59, %35 ]
  %37 = phi ptr [ %26, %31 ], [ %58, %35 ]
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !73
  %40 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %39) #19
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i64, ptr %32, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !68
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr %42, align 8, !tbaa !68
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 0, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !76
  %47 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %46) #19
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i64, ptr %33, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !68
  %51 = add nsw i64 %50, 1
  store i64 %51, ptr %49, align 8, !tbaa !68
  %52 = load i16, ptr %37, align 2, !tbaa !79
  %53 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %52) #19
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i64, ptr %34, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !68
  %57 = add nsw i64 %56, 1
  store i64 %57, ptr %55, align 8, !tbaa !68
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 1
  %59 = add nuw nsw i64 %36, 1
  %60 = load i64, ptr %10, align 8, !tbaa !72
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %35, label %62, !llvm.loop !97

62:                                               ; preds = %35, %28
  %63 = phi i64 [ %29, %28 ], [ %60, %35 ]
  %64 = add nuw nsw i64 %25, 1
  %65 = load i64, ptr %11, align 8, !tbaa !70
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %23, label %67, !llvm.loop !98

67:                                               ; preds = %62, %23, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @OptimalTau(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !99 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %7 = tail call dereferenceable_or_null(4800) ptr @AcquireQuantumMemory(i64 noundef 600, i64 noundef 8) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %199, label %9

9:                                                ; preds = %4
  %10 = fsub double 0x4014CCCCC0000000, %1
  %11 = fmul double %10, 2.000000e+00
  %12 = fptoui double %11 to i64
  %13 = add i64 %12, 2
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %13, i64 noundef 1540) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %199, label %16

16:                                               ; preds = %9
  %17 = icmp sgt i64 %13, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %16
  %19 = add i64 %12, 5
  %20 = and i64 %19, -4
  %21 = add i64 %12, 1
  %22 = insertelement <4 x i64> poison, i64 %21, i64 0
  %23 = shufflevector <4 x i64> %22, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %24

24:                                               ; preds = %46, %18
  %25 = phi i64 [ 0, %18 ], [ %47, %46 ]
  %26 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %18 ], [ %48, %46 ]
  %27 = icmp ule <4 x i64> %26, %23
  %28 = extractelement <4 x i1> %27, i64 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %25
  store float -1.000000e+00, ptr %30, align 4, !tbaa !100
  br label %31

31:                                               ; preds = %29, %24
  %32 = extractelement <4 x i1> %27, i64 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %25, 1
  %35 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %34
  store float -1.000000e+00, ptr %35, align 4, !tbaa !100
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <4 x i1> %27, i64 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or disjoint i64 %25, 2
  %40 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %39
  store float -1.000000e+00, ptr %40, align 4, !tbaa !100
  br label %41

41:                                               ; preds = %38, %36
  %42 = extractelement <4 x i1> %27, i64 3
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = or disjoint i64 %25, 3
  %45 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %44
  store float -1.000000e+00, ptr %45, align 4, !tbaa !100
  br label %46

46:                                               ; preds = %43, %41
  %47 = add i64 %25, 4
  %48 = add <4 x i64> %26, <i64 4, i64 4, i64 4, i64 4>
  %49 = icmp eq i64 %47, %20
  br i1 %49, label %50, label %24, !llvm.loop !102

50:                                               ; preds = %46, %16
  %51 = tail call dereferenceable_or_null(1024) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 4) #18
  %52 = tail call dereferenceable_or_null(1024) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 4) #18
  %53 = icmp eq ptr %51, null
  %54 = icmp eq ptr %52, null
  %55 = or i1 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = fcmp ugt double %1, 0x4014CCCCC0000000
  br i1 %57, label %77, label %58

58:                                               ; preds = %56
  %59 = fptrunc double %2 to float
  br label %67

60:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  call void @GetExceptionInfo(ptr noundef nonnull %6) #17
  %61 = tail call ptr @__errno_location() #21
  %62 = load i32, ptr %61, align 4, !tbaa !105
  %63 = call ptr @GetExceptionMessage(i32 noundef %62) #17
  %64 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1574, i32 noundef 700, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %63) #17
  %65 = call ptr @DestroyString(ptr noundef %63) #17
  call void @CatchException(ptr noundef nonnull %6) #17
  %66 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #17
  call void @MagickCoreTerminus() #17
  call void @_exit(i32 noundef 1) #22
  unreachable

67:                                               ; preds = %58, %67
  %68 = phi i64 [ 0, %58 ], [ %73, %67 ]
  %69 = phi float [ 0x4014CCCCC0000000, %58 ], [ %74, %67 ]
  %70 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %68
  store float %69, ptr %70, align 4, !tbaa !100
  %71 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %68, i32 1
  tail call fastcc void @ScaleSpace(ptr noundef %0, float noundef %69, ptr noundef nonnull %71) #19
  tail call fastcc void @DerivativeHistogram(ptr noundef nonnull %71, ptr noundef %51) #19
  tail call fastcc void @DerivativeHistogram(ptr noundef %51, ptr noundef %52) #19
  %72 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %68, i32 2
  tail call fastcc void @ZeroCrossHistogram(ptr noundef %52, float noundef %59, ptr noundef nonnull %72) #19
  %73 = add nuw nsw i64 %68, 1
  %74 = fadd float %69, -5.000000e-01
  %75 = fpext float %74 to double
  %76 = fcmp ult double %75, %1
  br i1 %76, label %77, label %67, !llvm.loop !106

77:                                               ; preds = %67, %56
  %78 = phi i64 [ 0, %56 ], [ %73, %67 ]
  %79 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %78
  store float 0.000000e+00, ptr %79, align 4, !tbaa !100
  br label %80

80:                                               ; preds = %80, %77
  %81 = phi i64 [ 0, %77 ], [ %86, %80 ]
  %82 = getelementptr inbounds i64, ptr %0, i64 %81
  %83 = load <2 x i64>, ptr %82, align 8, !tbaa !68
  %84 = sitofp <2 x i64> %83 to <2 x float>
  %85 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %78, i32 1, i64 %81
  store <2 x float> %84, ptr %85, align 4, !tbaa !67
  %86 = add nuw i64 %81, 2
  %87 = icmp eq i64 %86, 256
  br i1 %87, label %88, label %80, !llvm.loop !107

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %78, i32 1
  tail call fastcc void @DerivativeHistogram(ptr noundef nonnull %89, ptr noundef %51) #19
  tail call fastcc void @DerivativeHistogram(ptr noundef %51, ptr noundef %52) #19
  %90 = fptrunc double %2 to float
  %91 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %78, i32 2
  tail call fastcc void @ZeroCrossHistogram(ptr noundef %52, float noundef %90, ptr noundef nonnull %91) #19
  %92 = tail call ptr @RelinquishMagickMemory(ptr noundef %51) #17
  %93 = tail call ptr @RelinquishMagickMemory(ptr noundef %52) #17
  tail call fastcc void @ConsolidateCrossings(ptr noundef nonnull %14, i64 noundef %78) #19
  br label %94

94:                                               ; preds = %88, %119
  %95 = phi i64 [ 0, %88 ], [ %123, %119 ]
  br label %96

96:                                               ; preds = %94, %101
  %97 = phi i64 [ 0, %94 ], [ %102, %101 ]
  %98 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %95, i32 2, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !108
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = add nuw nsw i64 %97, 1
  %103 = icmp eq i64 %102, 255
  br i1 %103, label %104, label %96, !llvm.loop !109

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %95, i32 2, i64 255
  %106 = load i16, ptr %105, align 2, !tbaa !108
  br label %107

107:                                              ; preds = %96, %104
  %108 = phi i16 [ %106, %104 ], [ %99, %96 ]
  %109 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %95, i32 2
  %110 = sub i16 0, %108
  store i16 %110, ptr %109, align 4, !tbaa !108
  br label %111

111:                                              ; preds = %107, %116
  %112 = phi i64 [ 255, %107 ], [ %117, %116 ]
  %113 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %95, i32 2, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !108
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = add nsw i64 %112, -1
  %118 = icmp ugt i64 %112, 1
  br i1 %118, label %111, label %119, !llvm.loop !110

119:                                              ; preds = %111, %116
  %120 = phi i16 [ %110, %116 ], [ %114, %111 ]
  %121 = sub i16 0, %120
  %122 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %95, i32 2, i64 255
  store i16 %121, ptr %122, align 2, !tbaa !108
  %123 = add nuw i64 %95, 1
  %124 = icmp eq i64 %95, %78
  br i1 %124, label %125, label %94, !llvm.loop !111

125:                                              ; preds = %119
  %126 = tail call fastcc ptr @InitializeIntervalTree(ptr noundef nonnull %14, i64 noundef %78) #19
  %127 = icmp eq ptr %126, null
  br i1 %127, label %199, label %128

128:                                              ; preds = %125
  store i64 0, ptr %5, align 8, !tbaa !68
  %129 = getelementptr inbounds %struct._IntervalTree, ptr %126, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !112
  call fastcc void @ActiveNodes(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %130) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %3, i8 0, i64 512, i1 false), !tbaa !108
  %131 = load i64, ptr %5, align 8, !tbaa !68
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %134, label %196

133:                                              ; preds = %189
  br i1 %132, label %192, label %196

134:                                              ; preds = %128, %189
  %135 = phi i64 [ %190, %189 ], [ 0, %128 ]
  %136 = getelementptr inbounds ptr, ptr %7, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !53
  %138 = load float, ptr %137, align 8, !tbaa !114
  br label %139

139:                                              ; preds = %134, %139
  %140 = phi i64 [ 0, %134 ], [ %145, %139 ]
  %141 = phi i64 [ 0, %134 ], [ %146, %139 ]
  %142 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %141
  %143 = load float, ptr %142, align 4, !tbaa !100
  %144 = fcmp oeq float %143, %138
  %145 = select i1 %144, i64 %141, i64 %140
  %146 = add nuw i64 %141, 1
  %147 = icmp eq i64 %141, %78
  br i1 %147, label %148, label %139, !llvm.loop !115

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct._IntervalTree, ptr %137, i64 0, i32 2
  %150 = load i64, ptr %149, align 8, !tbaa !116
  %151 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %145, i32 2, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !108
  %153 = icmp eq i16 %152, -1
  %154 = getelementptr inbounds %struct._IntervalTree, ptr %137, i64 0, i32 1
  %155 = load i64, ptr %154, align 8, !tbaa !117
  %156 = icmp sgt i64 %155, %150
  br i1 %156, label %189, label %157

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %145, i32 1, i64 %155
  %159 = load float, ptr %158, align 4, !tbaa !67
  br label %161

160:                                              ; preds = %173
  br i1 %156, label %189, label %178

161:                                              ; preds = %157, %173
  %162 = phi i64 [ %175, %173 ], [ %155, %157 ]
  %163 = phi i64 [ %176, %173 ], [ %155, %157 ]
  %164 = phi float [ %174, %173 ], [ %159, %157 ]
  %165 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %145, i32 1, i64 %163
  %166 = load float, ptr %165, align 4, !tbaa !67
  br i1 %153, label %167, label %170

167:                                              ; preds = %161
  %168 = fcmp ogt float %166, %164
  br i1 %168, label %169, label %173

169:                                              ; preds = %167
  br label %173

170:                                              ; preds = %161
  %171 = fcmp olt float %166, %164
  br i1 %171, label %172, label %173

172:                                              ; preds = %170
  br label %173

173:                                              ; preds = %169, %167, %172, %170
  %174 = phi float [ %166, %169 ], [ %164, %167 ], [ %166, %172 ], [ %164, %170 ]
  %175 = phi i64 [ %163, %169 ], [ %162, %167 ], [ %163, %172 ], [ %162, %170 ]
  %176 = add i64 %163, 1
  %177 = icmp eq i64 %163, %150
  br i1 %177, label %160, label %161, !llvm.loop !118

178:                                              ; preds = %160, %178
  %179 = phi i64 [ %182, %178 ], [ %175, %160 ]
  %180 = phi i64 [ %187, %178 ], [ %155, %160 ]
  %181 = icmp eq i64 %179, 0
  %182 = select i1 %181, i64 256, i64 %179
  %183 = trunc i64 %182 to i16
  %184 = sub i16 0, %183
  %185 = select i1 %153, i16 %183, i16 %184
  %186 = getelementptr inbounds i16, ptr %3, i64 %180
  store i16 %185, ptr %186, align 2
  %187 = add i64 %180, 1
  %188 = icmp eq i64 %180, %150
  br i1 %188, label %189, label %178, !llvm.loop !119

189:                                              ; preds = %178, %148, %160
  %190 = add nuw nsw i64 %135, 1
  %191 = icmp eq i64 %190, %131
  br i1 %191, label %133, label %134, !llvm.loop !120

192:                                              ; preds = %133, %192
  %193 = phi i64 [ %194, %192 ], [ 0, %133 ]
  %194 = add nuw nsw i64 %193, 1
  %195 = icmp eq i64 %194, %131
  br i1 %195, label %196, label %192, !llvm.loop !121

196:                                              ; preds = %192, %128, %133
  tail call fastcc void @FreeNodes(ptr noundef nonnull %126) #19
  %197 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #17
  %198 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #17
  br label %199

199:                                              ; preds = %125, %9, %4, %196
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @DefineRegion(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct._ExtentPacket, ptr %1, i64 0, i32 2
  store i64 0, ptr %3, align 8, !tbaa !123
  store float 0.000000e+00, ptr %1, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct._ExtentPacket, ptr %1, i64 0, i32 3
  store i64 255, ptr %4, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct._ExtentPacket, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !59
  %7 = icmp slt i64 %6, 256
  br i1 %7, label %8, label %29

8:                                                ; preds = %2, %13
  %9 = phi i64 [ %14, %13 ], [ %6, %2 ]
  %10 = getelementptr inbounds i16, ptr %0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !108
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = add i64 %9, 1
  store i64 %14, ptr %5, align 8, !tbaa !59
  %15 = icmp eq i64 %14, 256
  br i1 %15, label %29, label %8, !llvm.loop !126

16:                                               ; preds = %8
  store i64 %9, ptr %3, align 8, !tbaa !123
  %17 = icmp slt i64 %9, 256
  br i1 %17, label %18, label %26

18:                                               ; preds = %16, %23
  %19 = phi i64 [ %24, %23 ], [ %9, %16 ]
  %20 = getelementptr inbounds i16, ptr %0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !108
  %22 = icmp slt i16 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = add i64 %19, 1
  store i64 %24, ptr %5, align 8, !tbaa !59
  %25 = icmp eq i64 %24, 256
  br i1 %25, label %26, label %18, !llvm.loop !127

26:                                               ; preds = %23, %18, %16
  %27 = phi i64 [ %9, %16 ], [ %19, %18 ], [ 256, %23 ]
  %28 = add nsw i64 %27, -1
  store i64 %28, ptr %4, align 8, !tbaa !125
  br label %29

29:                                               ; preds = %13, %2, %26
  %30 = phi i64 [ 1, %26 ], [ 0, %2 ], [ 0, %13 ]
  ret i64 %30
}

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #7 !PGOFuncName !128 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !PGOFuncName !129 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #17
  %11 = load ptr, ptr %5, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #17
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #16
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %0) unnamed_addr #7 !PGOFuncName !132 {
  %2 = zext i8 %0 to i16
  %3 = mul nuw i16 %2, 257
  ret i16 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SegmentImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x ptr], align 16
  %7 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1820, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #17
  br label %14

14:                                               ; preds = %11, %5
  br label %15

15:                                               ; preds = %14, %42
  %16 = phi i64 [ %43, %42 ], [ 0, %14 ]
  %17 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #18
  %18 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %16
  store ptr %17, ptr %18, align 8, !tbaa !53
  %19 = tail call dereferenceable_or_null(512) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 2) #18
  %20 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %16
  store ptr %19, ptr %20, align 8, !tbaa !53
  %21 = icmp eq ptr %17, null
  %22 = icmp eq ptr %19, null
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %15
  %25 = icmp eq i64 %16, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %28, %26 ], [ %16, %24 ]
  %28 = add nsw i64 %27, -1
  %29 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = tail call ptr @RelinquishMagickMemory(ptr noundef %30) #17
  store ptr %31, ptr %29, align 8, !tbaa !53
  %32 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #17
  store ptr %34, ptr %32, align 8, !tbaa !53
  %35 = icmp sgt i64 %27, 1
  br i1 %35, label %26, label %36, !llvm.loop !133

36:                                               ; preds = %26, %24
  %37 = icmp eq ptr %0, null
  br i1 %37, label %75, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %41 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1833, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %40) #17
  br label %75

42:                                               ; preds = %15
  %43 = add nuw nsw i64 %16, 1
  %44 = icmp eq i64 %43, 3
  br i1 %44, label %45, label %15, !llvm.loop !134

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !135
  %48 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef %1) #17
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call fastcc void @InitializeHistogram(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %49) #19
  %50 = load ptr, ptr %7, align 16, !tbaa !53
  %51 = fcmp oeq double %4, 0.000000e+00
  %52 = select i1 %51, double 1.000000e+00, double %4
  %53 = load ptr, ptr %6, align 16, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %50, double noundef 2.000000e-01, double noundef %52, ptr noundef %53) #19
  %54 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !53
  %56 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %55, double noundef 2.000000e-01, double noundef %52, ptr noundef %57) #19
  %58 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  %59 = load ptr, ptr %58, align 16, !tbaa !53
  %60 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 2
  %61 = load ptr, ptr %60, align 16, !tbaa !53
  tail call fastcc void @OptimalTau(ptr noundef %59, double noundef 2.000000e-01, double noundef %52, ptr noundef %61) #19
  %62 = fptrunc double %3 to float
  %63 = call fastcc i32 @Classify(ptr noundef %0, ptr noundef nonnull %6, float noundef %62, i32 noundef %2) #19
  %64 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef %47) #17
  br label %65

65:                                               ; preds = %45, %65
  %66 = phi i64 [ 0, %45 ], [ %73, %65 ]
  %67 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !53
  %69 = tail call ptr @RelinquishMagickMemory(ptr noundef %68) #17
  store ptr %69, ptr %67, align 8, !tbaa !53
  %70 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %66
  %71 = load ptr, ptr %70, align 8, !tbaa !53
  %72 = tail call ptr @RelinquishMagickMemory(ptr noundef %71) #17
  store ptr %72, ptr %70, align 8, !tbaa !53
  %73 = add nuw nsw i64 %66, 1
  %74 = icmp eq i64 %73, 3
  br i1 %74, label %75, label %65, !llvm.loop !136

75:                                               ; preds = %65, %36, %38
  %76 = phi i32 [ 0, %38 ], [ 0, %36 ], [ %63, %65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret i32 %76
}

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @Classify(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !137 {
  %5 = alloca %struct._ExtentPacket, align 8
  %6 = alloca %struct._ExtentPacket, align 8
  %7 = alloca %struct._ExtentPacket, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  %8 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 32) #17
  %9 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 32) #17
  %10 = call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 32) #17
  %11 = load ptr, ptr %1, align 8, !tbaa !53
  %12 = call fastcc i64 @DefineRegion(ptr noundef %11, ptr noundef nonnull %7) #19, !range !57
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %81, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct._ExtentPacket, ptr %6, i64 0, i32 1
  %16 = getelementptr inbounds ptr, ptr %1, i64 1
  %17 = getelementptr inbounds %struct._ExtentPacket, ptr %5, i64 0, i32 1
  %18 = getelementptr inbounds ptr, ptr %1, i64 2
  %19 = load ptr, ptr %16, align 8, !tbaa !53
  br label %30

20:                                               ; preds = %42
  %21 = load ptr, ptr %1, align 8, !tbaa !53
  br label %22

22:                                               ; preds = %20, %30
  %23 = phi ptr [ %31, %30 ], [ %21, %20 ]
  %24 = phi ptr [ %32, %30 ], [ %43, %20 ]
  %25 = phi ptr [ %33, %30 ], [ %43, %20 ]
  %26 = phi ptr [ %35, %30 ], [ %45, %20 ]
  %27 = phi ptr [ %34, %30 ], [ %46, %20 ]
  %28 = call fastcc i64 @DefineRegion(ptr noundef %23, ptr noundef nonnull %7) #19, !range !57
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %79, label %30, !llvm.loop !138

30:                                               ; preds = %14, %22
  %31 = phi ptr [ %11, %14 ], [ %23, %22 ]
  %32 = phi ptr [ %19, %14 ], [ %24, %22 ]
  %33 = phi ptr [ %19, %14 ], [ %25, %22 ]
  %34 = phi ptr [ null, %14 ], [ %27, %22 ]
  %35 = phi ptr [ null, %14 ], [ %26, %22 ]
  store i64 0, ptr %15, align 8, !tbaa !59
  %36 = call fastcc i64 @DefineRegion(ptr noundef %33, ptr noundef nonnull %6) #19, !range !57
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %22, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %18, align 8, !tbaa !53
  br label %49

40:                                               ; preds = %71
  %41 = load ptr, ptr %16, align 8, !tbaa !53
  br label %42

42:                                               ; preds = %40, %49
  %43 = phi ptr [ %50, %49 ], [ %41, %40 ]
  %44 = phi ptr [ %51, %49 ], [ %76, %40 ]
  %45 = phi ptr [ %53, %49 ], [ %63, %40 ]
  %46 = phi ptr [ %52, %49 ], [ %60, %40 ]
  %47 = call fastcc i64 @DefineRegion(ptr noundef %43, ptr noundef nonnull %6) #19, !range !57
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %20, label %49, !llvm.loop !139

49:                                               ; preds = %38, %42
  %50 = phi ptr [ %43, %42 ], [ %32, %38 ]
  %51 = phi ptr [ %44, %42 ], [ %39, %38 ]
  %52 = phi ptr [ %46, %42 ], [ %34, %38 ]
  %53 = phi ptr [ %45, %42 ], [ %35, %38 ]
  store i64 0, ptr %17, align 8, !tbaa !59
  %54 = call fastcc i64 @DefineRegion(ptr noundef %51, ptr noundef nonnull %5) #19, !range !57
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %42, label %56

56:                                               ; preds = %49, %71
  %57 = phi ptr [ %60, %71 ], [ %52, %49 ]
  %58 = phi ptr [ %63, %71 ], [ %53, %49 ]
  %59 = icmp eq ptr %58, null
  %60 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #20
  br i1 %59, label %62, label %61

61:                                               ; preds = %56
  store ptr %60, ptr %57, align 8, !tbaa !63
  br label %62

62:                                               ; preds = %56, %61
  %63 = phi ptr [ %58, %61 ], [ %60, %56 ]
  %64 = icmp eq ptr %60, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = icmp eq ptr %0, null
  br i1 %66, label %664, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %70 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %68, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 319, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %69) #17
  br label %664

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct._Cluster, ptr %60, i64 0, i32 4
  store i64 0, ptr %72, align 8, !tbaa !65
  %73 = getelementptr inbounds %struct._Cluster, ptr %60, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !66
  %74 = getelementptr inbounds %struct._Cluster, ptr %60, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !66
  %75 = getelementptr inbounds %struct._Cluster, ptr %60, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !66
  store ptr null, ptr %60, align 8, !tbaa !63
  %76 = load ptr, ptr %18, align 8, !tbaa !53
  %77 = call fastcc i64 @DefineRegion(ptr noundef %76, ptr noundef nonnull %5) #19, !range !57
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %40, label %56, !llvm.loop !140

79:                                               ; preds = %22
  %80 = icmp eq ptr %26, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %4, %79
  %82 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #20
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = icmp eq ptr %0, null
  br i1 %85, label %664, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %89 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %87, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 339, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %88) #17
  br label %664

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct._Cluster, ptr %82, i64 0, i32 4
  store i64 0, ptr %91, align 8, !tbaa !65
  %92 = getelementptr inbounds %struct._Cluster, ptr %82, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !66
  %93 = getelementptr inbounds %struct._Cluster, ptr %82, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %93, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !66
  %94 = getelementptr inbounds %struct._Cluster, ptr %82, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %94, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !66
  store ptr null, ptr %82, align 8, !tbaa !63
  br label %95

95:                                               ; preds = %90, %79
  %96 = phi ptr [ %82, %90 ], [ %26, %79 ]
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %98 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %97) #17
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %101 = load i64, ptr %100, align 8, !tbaa !70
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %199

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %105

105:                                              ; preds = %103, %193
  %106 = phi i64 [ 0, %103 ], [ %196, %193 ]
  %107 = phi i32 [ 1, %103 ], [ %195, %193 ]
  %108 = phi i64 [ 0, %103 ], [ %194, %193 ]
  %109 = load i64, ptr %99, align 8, !tbaa !72
  %110 = call ptr @GetCacheViewVirtualPixels(ptr noundef %98, i64 noundef 0, i64 noundef %106, i64 noundef %109, i64 noundef 1, ptr noundef nonnull %97) #23
  %111 = icmp eq ptr %110, null
  br i1 %111, label %199, label %112

112:                                              ; preds = %105
  %113 = load i64, ptr %99, align 8, !tbaa !72
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %183

115:                                              ; preds = %112, %179
  %116 = phi i64 [ %181, %179 ], [ 0, %112 ]
  %117 = phi ptr [ %180, %179 ], [ %110, %112 ]
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %119 = load i16, ptr %118, align 2, !tbaa !73
  %120 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %119) #19
  %121 = zext i8 %120 to i64
  %122 = add nuw nsw i64 %121, 3
  %123 = add nsw i64 %121, -3
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  br label %125

125:                                              ; preds = %115, %176
  %126 = phi ptr [ %96, %115 ], [ %177, %176 ]
  %127 = getelementptr inbounds %struct._Cluster, ptr %126, i64 0, i32 1, i32 2
  %128 = load i64, ptr %127, align 8, !tbaa !74
  %129 = icmp sgt i64 %128, %122
  br i1 %129, label %176, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct._Cluster, ptr %126, i64 0, i32 1, i32 3
  %132 = load i64, ptr %131, align 8, !tbaa !75
  %133 = icmp slt i64 %132, %123
  br i1 %133, label %176, label %134

134:                                              ; preds = %130
  %135 = load i16, ptr %124, align 2, !tbaa !76
  %136 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %135) #19
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds %struct._Cluster, ptr %126, i64 0, i32 2, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !77
  %140 = add nsw i64 %139, -3
  %141 = icmp sgt i64 %140, %137
  br i1 %141, label %176, label %142

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct._Cluster, ptr %126, i64 0, i32 2, i32 3
  %144 = load i64, ptr %143, align 8, !tbaa !78
  %145 = add nsw i64 %144, 3
  %146 = icmp slt i64 %145, %137
  br i1 %146, label %176, label %147

147:                                              ; preds = %142
  %148 = load i16, ptr %117, align 2, !tbaa !79
  %149 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %148) #19
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds %struct._Cluster, ptr %126, i64 0, i32 3, i32 2
  %152 = load i64, ptr %151, align 8, !tbaa !80
  %153 = add nsw i64 %152, -3
  %154 = icmp sgt i64 %153, %150
  br i1 %154, label %176, label %155

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct._Cluster, ptr %126, i64 0, i32 3, i32 3
  %157 = load i64, ptr %156, align 8, !tbaa !81
  %158 = add nsw i64 %157, 3
  %159 = icmp slt i64 %158, %150
  br i1 %159, label %176, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct._Cluster, ptr %126, i64 0, i32 1
  %162 = getelementptr inbounds %struct._Cluster, ptr %126, i64 0, i32 2
  %163 = getelementptr inbounds %struct._Cluster, ptr %126, i64 0, i32 3
  %164 = uitofp i8 %120 to float
  %165 = load float, ptr %161, align 8, !tbaa !82
  %166 = fadd float %165, %164
  store float %166, ptr %161, align 8, !tbaa !82
  %167 = uitofp i8 %136 to float
  %168 = load float, ptr %162, align 8, !tbaa !83
  %169 = fadd float %168, %167
  store float %169, ptr %162, align 8, !tbaa !83
  %170 = uitofp i8 %149 to float
  %171 = load float, ptr %163, align 8, !tbaa !84
  %172 = fadd float %171, %170
  store float %172, ptr %163, align 8, !tbaa !84
  %173 = getelementptr inbounds %struct._Cluster, ptr %126, i64 0, i32 4
  %174 = load i64, ptr %173, align 8, !tbaa !65
  %175 = add nsw i64 %174, 1
  store i64 %175, ptr %173, align 8, !tbaa !65
  br label %179

176:                                              ; preds = %125, %130, %134, %142, %147, %155
  %177 = load ptr, ptr %126, align 8, !tbaa !63
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %125, !llvm.loop !141

179:                                              ; preds = %176, %160
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 1
  %181 = add nuw nsw i64 %116, 1
  %182 = icmp eq i64 %181, %113
  br i1 %182, label %183, label %115, !llvm.loop !142

183:                                              ; preds = %179, %112
  %184 = load ptr, ptr %104, align 8, !tbaa !130
  %185 = icmp eq ptr %184, null
  br i1 %185, label %193, label %186

186:                                              ; preds = %183
  %187 = add nsw i64 %108, 1
  %188 = load i64, ptr %100, align 8, !tbaa !70
  %189 = shl i64 %188, 1
  %190 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %108, i64 noundef %189) #19
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i32 0, i32 %107
  br label %193

193:                                              ; preds = %186, %183
  %194 = phi i64 [ %108, %183 ], [ %187, %186 ]
  %195 = phi i32 [ %107, %183 ], [ %192, %186 ]
  %196 = add nuw nsw i64 %106, 1
  %197 = load i64, ptr %100, align 8, !tbaa !70
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %105, label %199, !llvm.loop !143

199:                                              ; preds = %193, %105, %95
  %200 = phi i64 [ 0, %95 ], [ %108, %105 ], [ %194, %193 ]
  %201 = phi i32 [ 1, %95 ], [ %107, %105 ], [ %195, %193 ]
  %202 = call ptr @DestroyCacheView(ptr noundef %98) #17
  br label %203

203:                                              ; preds = %199, %238
  %204 = phi ptr [ %96, %199 ], [ %208, %238 ]
  %205 = phi ptr [ %96, %199 ], [ %241, %238 ]
  %206 = phi ptr [ %96, %199 ], [ %240, %238 ]
  %207 = phi i64 [ 0, %199 ], [ %239, %238 ]
  %208 = load ptr, ptr %204, align 8, !tbaa !63
  %209 = getelementptr inbounds %struct._Cluster, ptr %204, i64 0, i32 4
  %210 = load i64, ptr %209, align 8, !tbaa !65
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %232

212:                                              ; preds = %203
  %213 = sitofp i64 %210 to double
  %214 = sitofp i64 %207 to float
  %215 = fmul float %214, %2
  %216 = fpext float %215 to double
  %217 = fdiv double %216, 1.000000e+02
  %218 = fcmp ugt double %217, %213
  br i1 %218, label %232, label %219

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct._Cluster, ptr %204, i64 0, i32 5
  store i64 %207, ptr %220, align 8, !tbaa !87
  %221 = sitofp i64 %210 to float
  %222 = getelementptr inbounds %struct._Cluster, ptr %204, i64 0, i32 1
  %223 = load float, ptr %222, align 8, !tbaa !82
  %224 = fdiv float %223, %221
  store float %224, ptr %222, align 8, !tbaa !82
  %225 = getelementptr inbounds %struct._Cluster, ptr %204, i64 0, i32 2
  %226 = load float, ptr %225, align 8, !tbaa !83
  %227 = fdiv float %226, %221
  store float %227, ptr %225, align 8, !tbaa !83
  %228 = getelementptr inbounds %struct._Cluster, ptr %204, i64 0, i32 3
  %229 = load float, ptr %228, align 8, !tbaa !84
  %230 = fdiv float %229, %221
  store float %230, ptr %228, align 8, !tbaa !84
  %231 = add nsw i64 %207, 1
  br label %238

232:                                              ; preds = %212, %203
  %233 = icmp eq ptr %204, %205
  br i1 %233, label %235, label %234

234:                                              ; preds = %232
  store ptr %208, ptr %206, align 8, !tbaa !63
  br label %235

235:                                              ; preds = %232, %234
  %236 = phi ptr [ %205, %234 ], [ %208, %232 ]
  %237 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %204) #17
  br label %238

238:                                              ; preds = %235, %219
  %239 = phi i64 [ %231, %219 ], [ %207, %235 ]
  %240 = phi ptr [ %204, %219 ], [ %206, %235 ]
  %241 = phi ptr [ %205, %219 ], [ %236, %235 ]
  %242 = icmp eq ptr %208, null
  br i1 %242, label %243, label %203, !llvm.loop !144

243:                                              ; preds = %238
  %244 = icmp eq i32 %3, 0
  br i1 %244, label %347, label %245

245:                                              ; preds = %243
  %246 = load ptr, ptr @stdout, align 8, !tbaa !53
  %247 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %246, ptr noundef nonnull @.str.9) #17
  %248 = load ptr, ptr @stdout, align 8, !tbaa !53
  %249 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %248, ptr noundef nonnull @.str.10) #17
  %250 = load ptr, ptr @stdout, align 8, !tbaa !53
  %251 = fpext float %2 to double
  %252 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %250, ptr noundef nonnull @.str.11, double noundef %251) #17
  %253 = load ptr, ptr @stdout, align 8, !tbaa !53
  %254 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %253, ptr noundef nonnull @.str.12, double noundef 2.500000e+00) #17
  %255 = load ptr, ptr @stdout, align 8, !tbaa !53
  %256 = uitofp i64 %239 to double
  %257 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %255, ptr noundef nonnull @.str.13, double noundef %256) #17
  %258 = load ptr, ptr @stdout, align 8, !tbaa !53
  %259 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %258, ptr noundef nonnull @.str.14) #17
  %260 = load ptr, ptr @stdout, align 8, !tbaa !53
  %261 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %260, ptr noundef nonnull @.str.15) #17
  %262 = icmp eq ptr %241, null
  br i1 %262, label %309, label %263

263:                                              ; preds = %245, %263
  %264 = phi ptr [ %273, %263 ], [ %241, %245 ]
  %265 = load ptr, ptr @stdout, align 8, !tbaa !53
  %266 = getelementptr inbounds %struct._Cluster, ptr %264, i64 0, i32 5
  %267 = load i64, ptr %266, align 8, !tbaa !87
  %268 = sitofp i64 %267 to double
  %269 = getelementptr inbounds %struct._Cluster, ptr %264, i64 0, i32 4
  %270 = load i64, ptr %269, align 8, !tbaa !65
  %271 = sitofp i64 %270 to double
  %272 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %265, ptr noundef nonnull @.str.16, double noundef %268, double noundef %271) #17
  %273 = load ptr, ptr %264, align 8, !tbaa !63
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %263, !llvm.loop !145

275:                                              ; preds = %263
  %276 = load ptr, ptr @stdout, align 8, !tbaa !53
  %277 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %276, ptr noundef nonnull @.str.17, i32 noundef 3) #17
  %278 = load ptr, ptr @stdout, align 8, !tbaa !53
  %279 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %278, ptr noundef nonnull @.str.18) #17
  br i1 %262, label %339, label %280

280:                                              ; preds = %275, %280
  %281 = phi ptr [ %307, %280 ], [ %241, %275 ]
  %282 = load ptr, ptr @stdout, align 8, !tbaa !53
  %283 = getelementptr inbounds %struct._Cluster, ptr %281, i64 0, i32 5
  %284 = load i64, ptr %283, align 8, !tbaa !87
  %285 = sitofp i64 %284 to double
  %286 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %282, ptr noundef nonnull @.str.19, double noundef %285) #17
  %287 = load ptr, ptr @stdout, align 8, !tbaa !53
  %288 = getelementptr inbounds %struct._Cluster, ptr %281, i64 0, i32 1, i32 2
  %289 = load i64, ptr %288, align 8, !tbaa !74
  %290 = sitofp i64 %289 to double
  %291 = getelementptr inbounds %struct._Cluster, ptr %281, i64 0, i32 1, i32 3
  %292 = load i64, ptr %291, align 8, !tbaa !75
  %293 = sitofp i64 %292 to double
  %294 = getelementptr inbounds %struct._Cluster, ptr %281, i64 0, i32 2, i32 2
  %295 = load i64, ptr %294, align 8, !tbaa !77
  %296 = sitofp i64 %295 to double
  %297 = getelementptr inbounds %struct._Cluster, ptr %281, i64 0, i32 2, i32 3
  %298 = load i64, ptr %297, align 8, !tbaa !78
  %299 = sitofp i64 %298 to double
  %300 = getelementptr inbounds %struct._Cluster, ptr %281, i64 0, i32 3, i32 2
  %301 = load i64, ptr %300, align 8, !tbaa !80
  %302 = sitofp i64 %301 to double
  %303 = getelementptr inbounds %struct._Cluster, ptr %281, i64 0, i32 3, i32 3
  %304 = load i64, ptr %303, align 8, !tbaa !81
  %305 = sitofp i64 %304 to double
  %306 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %287, ptr noundef nonnull @.str.20, double noundef %290, double noundef %293, double noundef %296, double noundef %299, double noundef %302, double noundef %305) #17
  %307 = load ptr, ptr %281, align 8, !tbaa !63
  %308 = icmp eq ptr %307, null
  br i1 %308, label %314, label %280, !llvm.loop !146

309:                                              ; preds = %245
  %310 = load ptr, ptr @stdout, align 8, !tbaa !53
  %311 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %310, ptr noundef nonnull @.str.17, i32 noundef 3) #17
  %312 = load ptr, ptr @stdout, align 8, !tbaa !53
  %313 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %312, ptr noundef nonnull @.str.18) #17
  br label %314

314:                                              ; preds = %280, %309
  %315 = load ptr, ptr @stdout, align 8, !tbaa !53
  %316 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %315, ptr noundef nonnull @.str.21, i32 noundef 3) #17
  %317 = load ptr, ptr @stdout, align 8, !tbaa !53
  %318 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %317, ptr noundef nonnull @.str.22) #17
  br i1 %262, label %344, label %319

319:                                              ; preds = %314, %319
  %320 = phi ptr [ %337, %319 ], [ %241, %314 ]
  %321 = load ptr, ptr @stdout, align 8, !tbaa !53
  %322 = getelementptr inbounds %struct._Cluster, ptr %320, i64 0, i32 5
  %323 = load i64, ptr %322, align 8, !tbaa !87
  %324 = sitofp i64 %323 to double
  %325 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %321, ptr noundef nonnull @.str.19, double noundef %324) #17
  %326 = load ptr, ptr @stdout, align 8, !tbaa !53
  %327 = getelementptr inbounds %struct._Cluster, ptr %320, i64 0, i32 1
  %328 = load float, ptr %327, align 8, !tbaa !82
  %329 = fpext float %328 to double
  %330 = getelementptr inbounds %struct._Cluster, ptr %320, i64 0, i32 2
  %331 = load float, ptr %330, align 8, !tbaa !83
  %332 = fpext float %331 to double
  %333 = getelementptr inbounds %struct._Cluster, ptr %320, i64 0, i32 3
  %334 = load float, ptr %333, align 8, !tbaa !84
  %335 = fpext float %334 to double
  %336 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %326, ptr noundef nonnull @.str.23, double noundef %329, double noundef %332, double noundef %335) #17
  %337 = load ptr, ptr %320, align 8, !tbaa !63
  %338 = icmp eq ptr %337, null
  br i1 %338, label %344, label %319, !llvm.loop !147

339:                                              ; preds = %275
  %340 = load ptr, ptr @stdout, align 8, !tbaa !53
  %341 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %340, ptr noundef nonnull @.str.21, i32 noundef 3) #17
  %342 = load ptr, ptr @stdout, align 8, !tbaa !53
  %343 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %342, ptr noundef nonnull @.str.22) #17
  br label %344

344:                                              ; preds = %319, %339, %314
  %345 = load ptr, ptr @stdout, align 8, !tbaa !53
  %346 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %345, ptr noundef nonnull @.str.24) #17
  br label %347

347:                                              ; preds = %344, %243
  %348 = icmp ugt i64 %239, 256
  br i1 %348, label %349, label %354

349:                                              ; preds = %347
  %350 = icmp eq ptr %0, null
  br i1 %350, label %664, label %351

351:                                              ; preds = %349
  %352 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %353 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %97, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 500, i32 noundef 465, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4, ptr noundef nonnull %352) #17
  br label %664

354:                                              ; preds = %347
  %355 = call dereferenceable_or_null(2052) ptr @AcquireQuantumMemory(i64 noundef 513, i64 noundef 4) #18
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %362

357:                                              ; preds = %354
  %358 = icmp eq ptr %0, null
  br i1 %358, label %664, label %359

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %361 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %97, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 507, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %360) #17
  br label %664

362:                                              ; preds = %354
  %363 = getelementptr inbounds float, ptr %355, i64 255
  %364 = getelementptr float, ptr %363, i64 -254
  %365 = getelementptr float, ptr %363, i64 -253
  %366 = getelementptr float, ptr %363, i64 -252
  br label %367

367:                                              ; preds = %398, %362
  %368 = phi i64 [ 0, %362 ], [ %399, %398 ]
  %369 = phi <4 x i64> [ <i64 -255, i64 -254, i64 -253, i64 -252>, %362 ], [ %400, %398 ]
  %370 = insertelement <4 x i64> poison, i64 %368, i64 0
  %371 = shufflevector <4 x i64> %370, <4 x i64> poison, <4 x i32> zeroinitializer
  %372 = or disjoint <4 x i64> %371, <i64 0, i64 1, i64 2, i64 3>
  %373 = icmp ult <4 x i64> %372, <i64 511, i64 511, i64 511, i64 511>
  %374 = sitofp <4 x i64> %369 to <4 x float>
  %375 = extractelement <4 x i1> %373, i64 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %367
  %377 = getelementptr inbounds float, ptr %355, i64 %368
  %378 = fmul <4 x float> %374, %374
  %379 = extractelement <4 x float> %378, i64 0
  store float %379, ptr %377, align 4, !tbaa !67
  br label %380

380:                                              ; preds = %376, %367
  %381 = extractelement <4 x i1> %373, i64 1
  br i1 %381, label %382, label %386

382:                                              ; preds = %380
  %383 = getelementptr float, ptr %364, i64 %368
  %384 = fmul <4 x float> %374, %374
  %385 = extractelement <4 x float> %384, i64 1
  store float %385, ptr %383, align 4, !tbaa !67
  br label %386

386:                                              ; preds = %382, %380
  %387 = extractelement <4 x i1> %373, i64 2
  br i1 %387, label %388, label %392

388:                                              ; preds = %386
  %389 = getelementptr float, ptr %365, i64 %368
  %390 = fmul <4 x float> %374, %374
  %391 = extractelement <4 x float> %390, i64 2
  store float %391, ptr %389, align 4, !tbaa !67
  br label %392

392:                                              ; preds = %388, %386
  %393 = extractelement <4 x i1> %373, i64 3
  br i1 %393, label %394, label %398

394:                                              ; preds = %392
  %395 = getelementptr float, ptr %366, i64 %368
  %396 = fmul <4 x float> %374, %374
  %397 = extractelement <4 x float> %396, i64 3
  store float %397, ptr %395, align 4, !tbaa !67
  br label %398

398:                                              ; preds = %394, %392
  %399 = add i64 %368, 4
  %400 = add <4 x i64> %369, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %399, 512
  br i1 %401, label %402, label %367, !llvm.loop !148

402:                                              ; preds = %398
  %403 = call i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %239) #17
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %410, label %405

405:                                              ; preds = %402
  %406 = icmp eq ptr %241, null
  br i1 %406, label %442, label %407

407:                                              ; preds = %405
  %408 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %409 = load ptr, ptr %408, align 8, !tbaa !149
  br label %415

410:                                              ; preds = %402
  %411 = icmp eq ptr %0, null
  br i1 %411, label %664, label %412

412:                                              ; preds = %410
  %413 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %414 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %97, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 516, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %413) #17
  br label %664

415:                                              ; preds = %407, %415
  %416 = phi ptr [ %241, %407 ], [ %440, %415 ]
  %417 = phi i64 [ 0, %407 ], [ %439, %415 ]
  %418 = getelementptr inbounds %struct._Cluster, ptr %416, i64 0, i32 1
  %419 = load float, ptr %418, align 8, !tbaa !82
  %420 = fpext float %419 to double
  %421 = fadd double %420, 5.000000e-01
  %422 = fptoui double %421 to i8
  %423 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %422) #19
  %424 = getelementptr inbounds %struct._PixelPacket, ptr %409, i64 %417, i32 2
  store i16 %423, ptr %424, align 2, !tbaa !73
  %425 = getelementptr inbounds %struct._Cluster, ptr %416, i64 0, i32 2
  %426 = load float, ptr %425, align 8, !tbaa !83
  %427 = fpext float %426 to double
  %428 = fadd double %427, 5.000000e-01
  %429 = fptoui double %428 to i8
  %430 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %429) #19
  %431 = getelementptr inbounds %struct._PixelPacket, ptr %409, i64 %417, i32 1
  store i16 %430, ptr %431, align 2, !tbaa !76
  %432 = getelementptr inbounds %struct._Cluster, ptr %416, i64 0, i32 3
  %433 = load float, ptr %432, align 8, !tbaa !84
  %434 = fpext float %433 to double
  %435 = fadd double %434, 5.000000e-01
  %436 = fptoui double %435 to i8
  %437 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %436) #19
  %438 = getelementptr inbounds %struct._PixelPacket, ptr %409, i64 %417
  store i16 %437, ptr %438, align 2, !tbaa !79
  %439 = add nuw nsw i64 %417, 1
  %440 = load ptr, ptr %416, align 8, !tbaa !63
  %441 = icmp eq ptr %440, null
  br i1 %441, label %442, label %415, !llvm.loop !150

442:                                              ; preds = %415, %405
  %443 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %97) #17
  %444 = load i64, ptr %100, align 8, !tbaa !70
  %445 = icmp sgt i64 %444, 0
  br i1 %445, label %446, label %654

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %448 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %449 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %450

450:                                              ; preds = %446, %648
  %451 = phi i64 [ 0, %446 ], [ %651, %648 ]
  %452 = phi i32 [ %201, %446 ], [ %650, %648 ]
  %453 = phi i64 [ %200, %446 ], [ %649, %648 ]
  %454 = icmp eq i32 %452, 0
  br i1 %454, label %648, label %455

455:                                              ; preds = %450
  %456 = load i64, ptr %99, align 8, !tbaa !72
  %457 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %443, i64 noundef 0, i64 noundef %451, i64 noundef %456, i64 noundef 1, ptr noundef nonnull %97) #23
  %458 = icmp eq ptr %457, null
  br i1 %458, label %648, label %459

459:                                              ; preds = %455
  %460 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %443) #17
  %461 = load i64, ptr %99, align 8, !tbaa !72
  %462 = icmp sgt i64 %461, 0
  br i1 %462, label %463, label %635

463:                                              ; preds = %459
  %464 = icmp eq ptr %460, null
  br label %465

465:                                              ; preds = %463, %630
  %466 = phi i64 [ %461, %463 ], [ %631, %630 ]
  %467 = phi ptr [ %457, %463 ], [ %632, %630 ]
  %468 = phi i64 [ 0, %463 ], [ %633, %630 ]
  %469 = getelementptr inbounds i16, ptr %460, i64 %468
  br i1 %464, label %471, label %470

470:                                              ; preds = %465
  store i16 0, ptr %469, align 2, !tbaa !108
  br label %471

471:                                              ; preds = %470, %465
  br i1 %406, label %480, label %472

472:                                              ; preds = %471
  %473 = getelementptr inbounds %struct._PixelPacket, ptr %467, i64 0, i32 2
  %474 = load i16, ptr %473, align 2, !tbaa !73
  %475 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %474) #19
  %476 = zext i8 %475 to i64
  %477 = add nuw nsw i64 %476, 3
  %478 = add nsw i64 %476, -3
  %479 = getelementptr inbounds %struct._PixelPacket, ptr %467, i64 0, i32 1
  br label %486

480:                                              ; preds = %526, %471
  %481 = load i64, ptr %447, align 8, !tbaa !151
  %482 = icmp sgt i64 %481, 0
  br i1 %482, label %483, label %630

483:                                              ; preds = %480
  %484 = getelementptr inbounds %struct._PixelPacket, ptr %467, i64 0, i32 2
  %485 = getelementptr inbounds %struct._PixelPacket, ptr %467, i64 0, i32 1
  br label %529

486:                                              ; preds = %472, %526
  %487 = phi ptr [ %241, %472 ], [ %527, %526 ]
  %488 = getelementptr inbounds %struct._Cluster, ptr %487, i64 0, i32 1, i32 2
  %489 = load i64, ptr %488, align 8, !tbaa !74
  %490 = icmp sgt i64 %489, %477
  br i1 %490, label %526, label %491

491:                                              ; preds = %486
  %492 = getelementptr inbounds %struct._Cluster, ptr %487, i64 0, i32 1, i32 3
  %493 = load i64, ptr %492, align 8, !tbaa !75
  %494 = icmp slt i64 %493, %478
  br i1 %494, label %526, label %495

495:                                              ; preds = %491
  %496 = load i16, ptr %479, align 2, !tbaa !76
  %497 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %496) #19
  %498 = zext i8 %497 to i64
  %499 = getelementptr inbounds %struct._Cluster, ptr %487, i64 0, i32 2, i32 2
  %500 = load i64, ptr %499, align 8, !tbaa !77
  %501 = add nsw i64 %500, -3
  %502 = icmp sgt i64 %501, %498
  br i1 %502, label %526, label %503

503:                                              ; preds = %495
  %504 = getelementptr inbounds %struct._Cluster, ptr %487, i64 0, i32 2, i32 3
  %505 = load i64, ptr %504, align 8, !tbaa !78
  %506 = add nsw i64 %505, 3
  %507 = icmp slt i64 %506, %498
  br i1 %507, label %526, label %508

508:                                              ; preds = %503
  %509 = load i16, ptr %467, align 2, !tbaa !79
  %510 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %509) #19
  %511 = zext i8 %510 to i64
  %512 = getelementptr inbounds %struct._Cluster, ptr %487, i64 0, i32 3, i32 2
  %513 = load i64, ptr %512, align 8, !tbaa !80
  %514 = add nsw i64 %513, -3
  %515 = icmp sgt i64 %514, %511
  br i1 %515, label %526, label %516

516:                                              ; preds = %508
  %517 = getelementptr inbounds %struct._Cluster, ptr %487, i64 0, i32 3, i32 3
  %518 = load i64, ptr %517, align 8, !tbaa !81
  %519 = add nsw i64 %518, 3
  %520 = icmp slt i64 %519, %511
  br i1 %520, label %526, label %521

521:                                              ; preds = %516
  br i1 %464, label %630, label %522

522:                                              ; preds = %521
  %523 = getelementptr inbounds %struct._Cluster, ptr %487, i64 0, i32 5
  %524 = load i64, ptr %523, align 8, !tbaa !87
  %525 = trunc i64 %524 to i16
  store i16 %525, ptr %469, align 2, !tbaa !108
  br label %630

526:                                              ; preds = %486, %491, %495, %503, %508, %516
  %527 = load ptr, ptr %487, align 8, !tbaa !63
  %528 = icmp eq ptr %527, null
  br i1 %528, label %480, label %486, !llvm.loop !152

529:                                              ; preds = %483, %623
  %530 = phi i64 [ %481, %483 ], [ %624, %623 ]
  %531 = phi i64 [ 0, %483 ], [ %626, %623 ]
  %532 = phi float [ 0.000000e+00, %483 ], [ %625, %623 ]
  %533 = load ptr, ptr %448, align 8, !tbaa !149
  %534 = getelementptr inbounds %struct._PixelPacket, ptr %533, i64 %531
  %535 = load i16, ptr %484, align 2, !tbaa !73
  %536 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %535) #19
  %537 = zext i8 %536 to i64
  %538 = getelementptr inbounds %struct._PixelPacket, ptr %533, i64 %531, i32 2
  %539 = load i16, ptr %538, align 2, !tbaa !73
  %540 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %539) #19
  %541 = zext i8 %540 to i64
  %542 = sub nsw i64 %537, %541
  %543 = getelementptr inbounds float, ptr %363, i64 %542
  %544 = load float, ptr %543, align 4, !tbaa !67
  %545 = load i16, ptr %485, align 2, !tbaa !76
  %546 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %545) #19
  %547 = zext i8 %546 to i64
  %548 = getelementptr inbounds %struct._PixelPacket, ptr %533, i64 %531, i32 1
  %549 = load i16, ptr %548, align 2, !tbaa !76
  %550 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %549) #19
  %551 = zext i8 %550 to i64
  %552 = sub nsw i64 %547, %551
  %553 = getelementptr inbounds float, ptr %363, i64 %552
  %554 = load float, ptr %553, align 4, !tbaa !67
  %555 = fadd float %544, %554
  %556 = load i16, ptr %467, align 2, !tbaa !79
  %557 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %556) #19
  %558 = zext i8 %557 to i64
  %559 = load i16, ptr %534, align 2, !tbaa !79
  %560 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %559) #19
  %561 = zext i8 %560 to i64
  %562 = sub nsw i64 %558, %561
  %563 = getelementptr inbounds float, ptr %363, i64 %562
  %564 = load float, ptr %563, align 4, !tbaa !67
  %565 = fadd float %555, %564
  %566 = icmp sgt i64 %530, 0
  br i1 %566, label %567, label %623

567:                                              ; preds = %529, %567
  %568 = phi i64 [ %609, %567 ], [ 0, %529 ]
  %569 = phi float [ %608, %567 ], [ 0.000000e+00, %529 ]
  %570 = load ptr, ptr %448, align 8, !tbaa !149
  %571 = getelementptr inbounds %struct._PixelPacket, ptr %570, i64 %568
  %572 = load i16, ptr %484, align 2, !tbaa !73
  %573 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %572) #19
  %574 = zext i8 %573 to i64
  %575 = getelementptr inbounds %struct._PixelPacket, ptr %570, i64 %568, i32 2
  %576 = load i16, ptr %575, align 2, !tbaa !73
  %577 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %576) #19
  %578 = zext i8 %577 to i64
  %579 = sub nsw i64 %574, %578
  %580 = getelementptr inbounds float, ptr %363, i64 %579
  %581 = load float, ptr %580, align 4, !tbaa !67
  %582 = load i16, ptr %485, align 2, !tbaa !76
  %583 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %582) #19
  %584 = zext i8 %583 to i64
  %585 = getelementptr inbounds %struct._PixelPacket, ptr %570, i64 %568, i32 1
  %586 = load i16, ptr %585, align 2, !tbaa !76
  %587 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %586) #19
  %588 = zext i8 %587 to i64
  %589 = sub nsw i64 %584, %588
  %590 = getelementptr inbounds float, ptr %363, i64 %589
  %591 = load float, ptr %590, align 4, !tbaa !67
  %592 = fadd float %581, %591
  %593 = load i16, ptr %467, align 2, !tbaa !79
  %594 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %593) #19
  %595 = zext i8 %594 to i64
  %596 = load i16, ptr %571, align 2, !tbaa !79
  %597 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %596) #19
  %598 = zext i8 %597 to i64
  %599 = sub nsw i64 %595, %598
  %600 = getelementptr inbounds float, ptr %363, i64 %599
  %601 = load float, ptr %600, align 4, !tbaa !67
  %602 = fadd float %592, %601
  %603 = fdiv float %565, %602
  %604 = fpext float %603 to double
  %605 = call double @pow(double noundef %604, double noundef 0x3FE5555555555555) #17
  %606 = fpext float %569 to double
  %607 = fadd double %605, %606
  %608 = fptrunc double %607 to float
  %609 = add nuw nsw i64 %568, 1
  %610 = load i64, ptr %447, align 8, !tbaa !151
  %611 = icmp slt i64 %609, %610
  br i1 %611, label %567, label %612, !llvm.loop !153

612:                                              ; preds = %567
  %613 = fcmp une float %608, 0.000000e+00
  br i1 %613, label %614, label %623

614:                                              ; preds = %612
  %615 = fpext float %608 to double
  %616 = fdiv double 1.000000e+00, %615
  %617 = fpext float %532 to double
  %618 = fcmp ogt double %616, %617
  br i1 %618, label %619, label %623

619:                                              ; preds = %614
  %620 = fptrunc double %616 to float
  br i1 %464, label %623, label %621

621:                                              ; preds = %619
  %622 = trunc i64 %531 to i16
  store i16 %622, ptr %469, align 2, !tbaa !108
  br label %623

623:                                              ; preds = %529, %612, %614, %621, %619
  %624 = phi i64 [ %610, %621 ], [ %610, %619 ], [ %610, %614 ], [ %610, %612 ], [ %530, %529 ]
  %625 = phi float [ %620, %621 ], [ %620, %619 ], [ %532, %614 ], [ %532, %612 ], [ %532, %529 ]
  %626 = add nuw nsw i64 %531, 1
  %627 = icmp slt i64 %626, %624
  br i1 %627, label %529, label %628, !llvm.loop !154

628:                                              ; preds = %623
  %629 = load i64, ptr %99, align 8, !tbaa !72
  br label %630

630:                                              ; preds = %628, %480, %522, %521
  %631 = phi i64 [ %629, %628 ], [ %466, %480 ], [ %466, %522 ], [ %466, %521 ]
  %632 = getelementptr inbounds %struct._PixelPacket, ptr %467, i64 1
  %633 = add nuw nsw i64 %468, 1
  %634 = icmp slt i64 %633, %631
  br i1 %634, label %465, label %635, !llvm.loop !155

635:                                              ; preds = %630, %459
  %636 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %443, ptr noundef nonnull %97) #23
  %637 = icmp ne i32 %636, 0
  %638 = zext i1 %637 to i32
  %639 = load ptr, ptr %449, align 8, !tbaa !130
  %640 = icmp eq ptr %639, null
  br i1 %640, label %648, label %641

641:                                              ; preds = %635
  %642 = add nsw i64 %453, 1
  %643 = load i64, ptr %100, align 8, !tbaa !70
  %644 = shl i64 %643, 1
  %645 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %453, i64 noundef %644) #19
  %646 = icmp eq i32 %645, 0
  %647 = select i1 %646, i32 0, i32 %638
  br label %648

648:                                              ; preds = %635, %641, %455, %450
  %649 = phi i64 [ %453, %450 ], [ %453, %455 ], [ %642, %641 ], [ %453, %635 ]
  %650 = phi i32 [ 0, %450 ], [ 0, %455 ], [ %647, %641 ], [ %638, %635 ]
  %651 = add nuw nsw i64 %451, 1
  %652 = load i64, ptr %100, align 8, !tbaa !70
  %653 = icmp slt i64 %651, %652
  br i1 %653, label %450, label %654, !llvm.loop !156

654:                                              ; preds = %648, %442
  %655 = call ptr @DestroyCacheView(ptr noundef %443) #17
  %656 = call i32 @SyncImage(ptr noundef nonnull %0) #17
  br i1 %406, label %662, label %657

657:                                              ; preds = %654, %657
  %658 = phi ptr [ %659, %657 ], [ %241, %654 ]
  %659 = load ptr, ptr %658, align 8, !tbaa !63
  %660 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %658) #17
  %661 = icmp eq ptr %659, null
  br i1 %661, label %662, label %657, !llvm.loop !157

662:                                              ; preds = %657, %654
  %663 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %355) #17
  br label %664

664:                                              ; preds = %410, %412, %357, %359, %349, %351, %84, %86, %65, %67, %662
  %665 = phi i32 [ 1, %662 ], [ 0, %67 ], [ 0, %65 ], [ 0, %86 ], [ 0, %84 ], [ 0, %351 ], [ 0, %349 ], [ 0, %359 ], [ 0, %357 ], [ 0, %412 ], [ 0, %410 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret i32 %665
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ScaleSpace(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !158 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @GetExceptionInfo(ptr noundef nonnull %4) #17
  %8 = tail call ptr @__errno_location() #21
  %9 = load i32, ptr %8, align 4, !tbaa !105
  %10 = call ptr @GetExceptionMessage(i32 noundef %9) #17
  %11 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1735, i32 noundef 700, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef %10) #17
  %12 = call ptr @DestroyString(ptr noundef %10) #17
  call void @CatchException(ptr noundef nonnull %4) #17
  %13 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #17
  call void @MagickCoreTerminus() #17
  call void @_exit(i32 noundef 1) #22
  unreachable

14:                                               ; preds = %3
  %15 = fpext float %1 to double
  %16 = fmul double %15, 0x40040D931FF62705
  %17 = fmul double %15, 2.000000e+00
  %18 = fmul double %17, %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %5, i8 0, i64 2048, i1 false), !tbaa !159
  %19 = fdiv double 1.000000e+00, %16
  %20 = fdiv double -1.000000e+00, %18
  br label %21

21:                                               ; preds = %21, %14
  %22 = phi i64 [ 0, %14 ], [ %29, %21 ]
  %23 = sitofp i64 %22 to double
  %24 = fmul double %20, %23
  %25 = fmul double %24, %23
  %26 = tail call double @exp(double noundef %25) #17
  %27 = getelementptr inbounds double, ptr %5, i64 %22
  store double %26, ptr %27, align 8, !tbaa !159
  %28 = fcmp olt double %26, 1.000000e-15
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, 256
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %21, !llvm.loop !160

32:                                               ; preds = %21, %47
  %33 = phi i64 [ %51, %47 ], [ 0, %21 ]
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %45, %34 ]
  %36 = phi double [ 0.000000e+00, %32 ], [ %44, %34 ]
  %37 = getelementptr inbounds i64, ptr %0, i64 %35
  %38 = load i64, ptr %37, align 8, !tbaa !68
  %39 = sitofp i64 %38 to double
  %40 = sub nsw i64 %33, %35
  %41 = tail call fastcc i64 @MagickAbsoluteValue(i64 noundef %40) #19, !range !161
  %42 = getelementptr inbounds double, ptr %5, i64 %41
  %43 = load double, ptr %42, align 8, !tbaa !159
  %44 = tail call double @llvm.fmuladd.f64(double %39, double %43, double %36)
  %45 = add nuw nsw i64 %35, 1
  %46 = icmp eq i64 %45, 256
  br i1 %46, label %47, label %34, !llvm.loop !162

47:                                               ; preds = %34
  %48 = fmul double %19, %44
  %49 = fptrunc double %48 to float
  %50 = getelementptr inbounds float, ptr %2, i64 %33
  store float %49, ptr %50, align 4, !tbaa !67
  %51 = add nuw nsw i64 %33, 1
  %52 = icmp eq i64 %51, 256
  br i1 %52, label %53, label %32, !llvm.loop !163

53:                                               ; preds = %47
  %54 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @DerivativeHistogram(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 !PGOFuncName !164 {
  %3 = load float, ptr %0, align 4, !tbaa !67
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !67
  %7 = fpext float %6 to double
  %8 = fmul double %7, 2.000000e+00
  %9 = tail call double @llvm.fmuladd.f64(double %4, double -1.500000e+00, double %8)
  %10 = getelementptr inbounds float, ptr %0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !67
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double -5.000000e-01, double %9)
  %14 = fptrunc double %13 to float
  store float %14, ptr %1, align 4, !tbaa !67
  %15 = getelementptr inbounds float, ptr %0, i64 253
  %16 = load float, ptr %15, align 4, !tbaa !67
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds float, ptr %0, i64 254
  %19 = load float, ptr %18, align 4, !tbaa !67
  %20 = fpext float %19 to double
  %21 = fmul double %20, -2.000000e+00
  %22 = tail call double @llvm.fmuladd.f64(double %17, double 5.000000e-01, double %21)
  %23 = getelementptr inbounds float, ptr %0, i64 255
  %24 = load float, ptr %23, align 4, !tbaa !67
  %25 = fpext float %24 to double
  %26 = tail call double @llvm.fmuladd.f64(double %25, double 1.500000e+00, double %22)
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds float, ptr %1, i64 255
  store float %27, ptr %28, align 4, !tbaa !67
  %29 = getelementptr float, ptr %0, i64 -1
  br label %30

30:                                               ; preds = %2, %30
  %31 = phi i64 [ 1, %2 ], [ %32, %30 ]
  %32 = add nuw nsw i64 %31, 1
  %33 = getelementptr inbounds float, ptr %0, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !67
  %35 = getelementptr float, ptr %29, i64 %31
  %36 = load float, ptr %35, align 4, !tbaa !67
  %37 = fsub float %34, %36
  %38 = fmul float %37, 5.000000e-01
  %39 = getelementptr inbounds float, ptr %1, i64 %31
  store float %38, ptr %39, align 4, !tbaa !67
  %40 = icmp eq i64 %32, 255
  br i1 %40, label %41, label %30, !llvm.loop !165

41:                                               ; preds = %30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @ZeroCrossHistogram(ptr nocapture noundef %0, float noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !PGOFuncName !166 {
  %4 = fneg float %1
  %5 = insertelement <4 x float> poison, float %1, i64 0
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %7 = insertelement <4 x float> poison, float %4, i64 0
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  br label %9

9:                                                ; preds = %34, %3
  %10 = phi i64 [ 0, %3 ], [ %35, %34 ]
  %11 = getelementptr inbounds float, ptr %0, i64 %10
  %12 = load <4 x float>, ptr %11, align 4, !tbaa !67
  %13 = fcmp olt <4 x float> %12, %6
  %14 = fcmp oge <4 x float> %12, %8
  %15 = and <4 x i1> %13, %14
  %16 = extractelement <4 x i1> %15, i64 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = getelementptr inbounds float, ptr %0, i64 %10
  store float 0.000000e+00, ptr %18, align 4, !tbaa !67
  br label %19

19:                                               ; preds = %17, %9
  %20 = extractelement <4 x i1> %15, i64 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = or disjoint i64 %10, 1
  %23 = getelementptr inbounds float, ptr %0, i64 %22
  store float 0.000000e+00, ptr %23, align 4, !tbaa !67
  br label %24

24:                                               ; preds = %21, %19
  %25 = extractelement <4 x i1> %15, i64 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = or disjoint i64 %10, 2
  %28 = getelementptr inbounds float, ptr %0, i64 %27
  store float 0.000000e+00, ptr %28, align 4, !tbaa !67
  br label %29

29:                                               ; preds = %26, %24
  %30 = extractelement <4 x i1> %15, i64 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = or disjoint i64 %10, 3
  %33 = getelementptr inbounds float, ptr %0, i64 %32
  store float 0.000000e+00, ptr %33, align 4, !tbaa !67
  br label %34

34:                                               ; preds = %31, %29
  %35 = add nuw i64 %10, 4
  %36 = icmp eq i64 %35, 256
  br i1 %36, label %37, label %9, !llvm.loop !167

37:                                               ; preds = %34, %53
  %38 = phi i64 [ %54, %53 ], [ 0, %34 ]
  %39 = phi i64 [ %55, %53 ], [ 0, %34 ]
  %40 = getelementptr inbounds i16, ptr %2, i64 %39
  store i16 0, ptr %40, align 2, !tbaa !108
  %41 = getelementptr inbounds float, ptr %0, i64 %39
  %42 = load float, ptr %41, align 4, !tbaa !67
  %43 = fcmp olt float %42, 0.000000e+00
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = icmp sgt i64 %38, 0
  br i1 %45, label %50, label %53

46:                                               ; preds = %37
  %47 = fcmp ogt float %42, 0.000000e+00
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = icmp slt i64 %38, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %48, %44
  %51 = phi i16 [ -1, %44 ], [ 1, %48 ]
  %52 = phi i64 [ 1, %44 ], [ -1, %48 ]
  store i16 %51, ptr %40, align 2, !tbaa !108
  br label %53

53:                                               ; preds = %50, %48, %44, %46
  %54 = phi i64 [ %38, %46 ], [ 1, %44 ], [ -1, %48 ], [ %52, %50 ]
  %55 = add nuw nsw i64 %39, 1
  %56 = icmp eq i64 %55, 256
  br i1 %56, label %57, label %37, !llvm.loop !168

57:                                               ; preds = %53
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @ConsolidateCrossings(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #4 !PGOFuncName !169 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %6, label %120

4:                                                ; preds = %117
  %5 = icmp sgt i64 %7, 1
  br i1 %5, label %6, label %120, !llvm.loop !170

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %8, %4 ], [ %1, %2 ]
  %8 = add nsw i64 %7, -1
  br label %9

9:                                                ; preds = %6, %117
  %10 = phi i64 [ 0, %6 ], [ %118, %117 ]
  %11 = tail call i64 @llvm.umax.i64(i64 %10, i64 254)
  %12 = add nuw nsw i64 %11, 1
  %13 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %8, i32 2, i64 %10
  %14 = load i16, ptr %13, align 2, !tbaa !108
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %117, label %16

16:                                               ; preds = %9
  %17 = add nsw i64 %10, -1
  %18 = icmp ugt i64 %10, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %16, %24
  %20 = phi i64 [ %25, %24 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %7, i32 2, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !108
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = add nsw i64 %20, -1
  %26 = icmp sgt i64 %20, 1
  br i1 %26, label %19, label %27, !llvm.loop !171

27:                                               ; preds = %24, %19, %16
  %28 = phi i64 [ %17, %16 ], [ %20, %19 ], [ 0, %24 ]
  %29 = tail call fastcc i64 @MagickMax(i64 noundef %28) #19
  br label %30

30:                                               ; preds = %33, %27
  %31 = phi i64 [ %10, %27 ], [ %34, %33 ]
  %32 = icmp ult i64 %31, 254
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %7, i32 2, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !108
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %30, label %38, !llvm.loop !172

38:                                               ; preds = %33, %30
  %39 = phi i64 [ %34, %33 ], [ %12, %30 ]
  %40 = tail call fastcc i64 @MagickMin(i64 noundef %39) #19
  br i1 %18, label %41, label %49

41:                                               ; preds = %38, %46
  %42 = phi i64 [ %47, %46 ], [ %17, %38 ]
  %43 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %8, i32 2, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !108
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = add nsw i64 %42, -1
  %48 = icmp sgt i64 %42, 1
  br i1 %48, label %41, label %49, !llvm.loop !173

49:                                               ; preds = %46, %41, %38
  %50 = phi i64 [ %17, %38 ], [ %42, %41 ], [ 0, %46 ]
  %51 = tail call i64 @llvm.smax.i64(i64 %50, i64 0)
  %52 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %7, i32 2, i64 %10
  %53 = load i16, ptr %52, align 2, !tbaa !108
  %54 = icmp eq i16 %53, 0
  %55 = add nuw nsw i64 %51, 1
  br i1 %54, label %74, label %56

56:                                               ; preds = %49
  %57 = icmp ult i64 %55, %10
  br i1 %57, label %58, label %68

58:                                               ; preds = %56, %58
  %59 = phi i64 [ %66, %58 ], [ %55, %56 ]
  %60 = phi i64 [ %65, %58 ], [ 0, %56 ]
  %61 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %7, i32 2, i64 %59
  %62 = load i16, ptr %61, align 2, !tbaa !108
  %63 = icmp ne i16 %62, 0
  %64 = zext i1 %63 to i64
  %65 = add nuw nsw i64 %60, %64
  %66 = add nuw nsw i64 %59, 1
  %67 = icmp ult i64 %66, %10
  br i1 %67, label %58, label %68, !llvm.loop !174

68:                                               ; preds = %58, %56
  %69 = phi i64 [ 0, %56 ], [ %65, %58 ]
  %70 = and i64 %69, 1
  %71 = icmp ne i64 %70, 0
  %72 = icmp eq i64 %10, %51
  %73 = or i1 %72, %71
  br i1 %73, label %74, label %94

74:                                               ; preds = %49, %68
  %75 = icmp ult i64 %55, %29
  br i1 %75, label %76, label %86

76:                                               ; preds = %74, %76
  %77 = phi i64 [ %84, %76 ], [ %55, %74 ]
  %78 = phi i64 [ %83, %76 ], [ 0, %74 ]
  %79 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %7, i32 2, i64 %77
  %80 = load i16, ptr %79, align 2, !tbaa !108
  %81 = icmp ne i16 %80, 0
  %82 = zext i1 %81 to i64
  %83 = add nuw nsw i64 %78, %82
  %84 = add nuw nsw i64 %77, 1
  %85 = icmp eq i64 %84, %29
  br i1 %85, label %86, label %76, !llvm.loop !175

86:                                               ; preds = %76, %74
  %87 = phi i64 [ 0, %74 ], [ %83, %76 ]
  %88 = and i64 %87, 1
  %89 = icmp ne i64 %88, 0
  %90 = icmp eq i64 %29, %51
  %91 = or i1 %90, %89
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = icmp slt i64 %55, %40
  br i1 %93, label %96, label %106

94:                                               ; preds = %68, %86
  %95 = phi i64 [ %29, %86 ], [ %10, %68 ]
  store i16 0, ptr %13, align 2, !tbaa !108
  br label %114

96:                                               ; preds = %92, %96
  %97 = phi i64 [ %104, %96 ], [ %55, %92 ]
  %98 = phi i64 [ %103, %96 ], [ 0, %92 ]
  %99 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %7, i32 2, i64 %97
  %100 = load i16, ptr %99, align 2, !tbaa !108
  %101 = icmp ne i16 %100, 0
  %102 = zext i1 %101 to i64
  %103 = add nuw nsw i64 %98, %102
  %104 = add nuw nsw i64 %97, 1
  %105 = icmp eq i64 %104, %40
  br i1 %105, label %106, label %96, !llvm.loop !176

106:                                              ; preds = %96, %92
  %107 = phi i64 [ 0, %92 ], [ %103, %96 ]
  %108 = and i64 %107, 1
  %109 = icmp ne i64 %108, 0
  %110 = icmp eq i64 %40, %51
  %111 = or i1 %110, %109
  store i16 0, ptr %13, align 2, !tbaa !108
  %112 = icmp eq i64 %40, -1
  %113 = or i1 %111, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %106, %94
  %115 = phi i64 [ %95, %94 ], [ %40, %106 ]
  %116 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %8, i32 2, i64 %115
  store i16 %14, ptr %116, align 2, !tbaa !108
  br label %117

117:                                              ; preds = %106, %114, %9
  %118 = add nuw nsw i64 %10, 1
  %119 = icmp eq i64 %118, 256
  br i1 %119, label %4, label %9, !llvm.loop !177

120:                                              ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @InitializeIntervalTree(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !PGOFuncName !178 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = tail call dereferenceable_or_null(4800) ptr @AcquireQuantumMemory(i64 noundef 600, i64 noundef 8) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %2
  %7 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #20
  %8 = getelementptr inbounds %struct._IntervalTree, ptr %7, i64 0, i32 6
  %9 = getelementptr inbounds %struct._IntervalTree, ptr %7, i64 0, i32 5
  store float 0.000000e+00, ptr %7, align 8, !tbaa !114
  %10 = getelementptr inbounds %struct._IntervalTree, ptr %7, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !117
  %11 = getelementptr inbounds %struct._IntervalTree, ptr %7, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store i64 255, ptr %11, align 8, !tbaa !116
  %12 = getelementptr %struct._ZeroCrossing, ptr %0, i64 1
  %13 = icmp sgt i64 %1, -1
  br i1 %13, label %14, label %77

14:                                               ; preds = %6, %72
  %15 = phi i64 [ %73, %72 ], [ -1, %6 ]
  store i64 0, ptr %3, align 8, !tbaa !68
  call fastcc void @InitializeList(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %7) #19
  %16 = load i64, ptr %3, align 8, !tbaa !68
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = getelementptr %struct._ZeroCrossing, ptr %0, i64 %15
  %20 = getelementptr %struct._ZeroCrossing, ptr %19, i64 1
  %21 = getelementptr %struct._ZeroCrossing, ptr %12, i64 %15
  br label %22

22:                                               ; preds = %18, %69
  %23 = phi i64 [ 0, %18 ], [ %70, %69 ]
  %24 = getelementptr inbounds ptr, ptr %4, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct._IntervalTree, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !117
  %28 = getelementptr inbounds %struct._IntervalTree, ptr %25, i64 0, i32 2
  %29 = add nsw i64 %27, 1
  %30 = load i64, ptr %28, align 8, !tbaa !116
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct._IntervalTree, ptr %25, i64 0, i32 6
  br label %34

34:                                               ; preds = %32, %52
  %35 = phi i64 [ %53, %52 ], [ %30, %32 ]
  %36 = phi i64 [ %56, %52 ], [ %29, %32 ]
  %37 = phi i64 [ %55, %52 ], [ %27, %32 ]
  %38 = phi ptr [ %54, %52 ], [ %25, %32 ]
  %39 = getelementptr %struct._ZeroCrossing, ptr %19, i64 1, i32 2, i64 %36
  %40 = load i16, ptr %39, align 2, !tbaa !108
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = icmp eq ptr %38, %25
  %44 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #20
  %45 = getelementptr inbounds %struct._IntervalTree, ptr %38, i64 0, i32 5
  %46 = select i1 %43, ptr %33, ptr %45
  store ptr %44, ptr %46, align 8, !tbaa !53
  %47 = load float, ptr %20, align 4, !tbaa !100
  store float %47, ptr %44, align 8, !tbaa !114
  %48 = getelementptr inbounds %struct._IntervalTree, ptr %44, i64 0, i32 5
  %49 = getelementptr inbounds %struct._IntervalTree, ptr %44, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  store i64 %37, ptr %49, align 8, !tbaa !117
  %50 = getelementptr inbounds %struct._IntervalTree, ptr %44, i64 0, i32 2
  store i64 %36, ptr %50, align 8, !tbaa !116
  %51 = load i64, ptr %28, align 8, !tbaa !116
  br label %52

52:                                               ; preds = %34, %42
  %53 = phi i64 [ %51, %42 ], [ %35, %34 ]
  %54 = phi ptr [ %44, %42 ], [ %38, %34 ]
  %55 = phi i64 [ %36, %42 ], [ %37, %34 ]
  %56 = add nsw i64 %36, 1
  %57 = icmp slt i64 %56, %53
  br i1 %57, label %34, label %58, !llvm.loop !179

58:                                               ; preds = %52
  %59 = load i64, ptr %26, align 8, !tbaa !117
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #20
  %63 = getelementptr inbounds %struct._IntervalTree, ptr %54, i64 0, i32 5
  store ptr %62, ptr %63, align 8, !tbaa !180
  %64 = load float, ptr %21, align 4, !tbaa !100
  store float %64, ptr %62, align 8, !tbaa !114
  %65 = getelementptr inbounds %struct._IntervalTree, ptr %62, i64 0, i32 5
  %66 = getelementptr inbounds %struct._IntervalTree, ptr %62, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  store i64 %55, ptr %66, align 8, !tbaa !117
  %67 = load i64, ptr %28, align 8, !tbaa !116
  %68 = getelementptr inbounds %struct._IntervalTree, ptr %62, i64 0, i32 2
  store i64 %67, ptr %68, align 8, !tbaa !116
  br label %69

69:                                               ; preds = %22, %58, %61
  %70 = add nuw nsw i64 %23, 1
  %71 = icmp eq i64 %70, %16
  br i1 %71, label %72, label %22, !llvm.loop !181

72:                                               ; preds = %69, %14
  %73 = add nsw i64 %15, 1
  %74 = icmp eq i64 %73, %1
  br i1 %74, label %75, label %14, !llvm.loop !182

75:                                               ; preds = %72
  %76 = load ptr, ptr %8, align 8, !tbaa !112
  br label %77

77:                                               ; preds = %75, %6
  %78 = phi ptr [ %76, %75 ], [ null, %6 ]
  tail call fastcc void @Stability(ptr noundef %78) #19
  %79 = load ptr, ptr %8, align 8, !tbaa !112
  tail call fastcc void @MeanStability(ptr noundef %79) #19
  %80 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #17
  br label %81

81:                                               ; preds = %2, %77
  %82 = phi ptr [ %7, %77 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %82
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ActiveNodes(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #10 !PGOFuncName !183 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3, %17
  %6 = phi ptr [ %19, %17 ], [ %2, %3 ]
  %7 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !184
  %9 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 3
  %10 = load float, ptr %9, align 8, !tbaa !185
  %11 = fcmp ult float %8, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %1, align 8, !tbaa !68
  %14 = add nsw i64 %13, 1
  store i64 %14, ptr %1, align 8, !tbaa !68
  %15 = getelementptr inbounds ptr, ptr %0, i64 %13
  store ptr %6, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 5
  br label %17

17:                                               ; preds = %12, %21
  %18 = phi ptr [ %16, %12 ], [ %24, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %5

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !180
  tail call fastcc void @ActiveNodes(ptr noundef %0, ptr noundef %1, ptr noundef %23) #19
  %24 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 6
  br label %17

25:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @FreeNodes(ptr noundef %0) unnamed_addr #0 !PGOFuncName !186 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1, %4
  ret void

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._IntervalTree, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !180
  tail call fastcc void @FreeNodes(ptr noundef %6) #19
  %7 = getelementptr inbounds %struct._IntervalTree, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  tail call fastcc void @FreeNodes(ptr noundef %8) #19
  %9 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #17
  br label %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @MagickAbsoluteValue(i64 noundef %0) unnamed_addr #7 !PGOFuncName !187 {
  %2 = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0) unnamed_addr #7 !PGOFuncName !188 {
  %2 = tail call i64 @llvm.smax.i64(i64 %0, i64 0)
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0) unnamed_addr #7 !PGOFuncName !189 {
  %2 = tail call i64 @llvm.smin.i64(i64 %0, i64 255)
  ret i64 %2
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @InitializeList(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #10 !PGOFuncName !190 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3, %14
  %6 = phi ptr [ %17, %14 ], [ %2, %3 ]
  %7 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load i64, ptr %1, align 8, !tbaa !68
  %12 = add nsw i64 %11, 1
  store i64 %12, ptr %1, align 8, !tbaa !68
  %13 = getelementptr inbounds ptr, ptr %0, i64 %11
  store ptr %6, ptr %13, align 8, !tbaa !53
  br label %14

14:                                               ; preds = %10, %5
  %15 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !180
  tail call fastcc void @InitializeList(ptr noundef %0, ptr noundef %1, ptr noundef %16) #19
  %17 = load ptr, ptr %7, align 8, !tbaa !112
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5

19:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @Stability(ptr noundef %0) unnamed_addr #10 !PGOFuncName !191 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %12
  %4 = phi ptr [ %17, %12 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load float, ptr %4, align 8, !tbaa !114
  %10 = load float, ptr %6, align 8, !tbaa !114
  %11 = fsub float %9, %10
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi float [ %11, %8 ], [ 0.000000e+00, %3 ]
  %14 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 4
  store float %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !180
  tail call fastcc void @Stability(ptr noundef %16) #19
  %17 = load ptr, ptr %5, align 8, !tbaa !112
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %3

19:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MeanStability(ptr noundef %0) unnamed_addr #10 !PGOFuncName !192 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1, %23
  %4 = phi ptr [ %26, %23 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 3
  store float 0.000000e+00, ptr %5, align 8, !tbaa !185
  %6 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %3, %9
  %10 = phi float [ %15, %9 ], [ 0.000000e+00, %3 ]
  %11 = phi i64 [ %16, %9 ], [ 0, %3 ]
  %12 = phi ptr [ %18, %9 ], [ %7, %3 ]
  %13 = getelementptr inbounds %struct._IntervalTree, ptr %12, i64 0, i32 4
  %14 = load float, ptr %13, align 4, !tbaa !184
  %15 = fadd float %10, %14
  %16 = add nuw nsw i64 %11, 1
  %17 = getelementptr inbounds %struct._IntervalTree, ptr %12, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !180
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !193

20:                                               ; preds = %9
  %21 = sitofp i64 %16 to float
  %22 = fdiv float %15, %21
  store float %22, ptr %5, align 8, !tbaa !185
  br label %23

23:                                               ; preds = %20, %3
  %24 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !180
  tail call fastcc void @MeanStability(ptr noundef %25) #19
  %26 = load ptr, ptr %6, align 8, !tbaa !112
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %3

28:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind optsize allocsize(0,1) }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize allocsize(0) }
attributes #21 = { nounwind optsize willreturn memory(none) }
attributes #22 = { noreturn nounwind optsize }
attributes #23 = { hot nounwind optsize }

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
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = !{i64 0, i64 2}
!58 = distinct !{!58, !55}
!59 = !{!60, !39, i64 8}
!60 = !{!"_ExtentPacket", !61, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!61 = !{!"float", !37, i64 0}
!62 = distinct !{!62, !55}
!63 = !{!64, !40, i64 0}
!64 = !{!"_Cluster", !40, i64 0, !60, i64 8, !60, i64 40, !60, i64 72, !39, i64 104, !39, i64 112}
!65 = !{!64, !39, i64 104}
!66 = !{i64 0, i64 4, !67, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 8, !68}
!67 = !{!61, !61, i64 0}
!68 = !{!39, !39, i64 0}
!69 = distinct !{!69, !55}
!70 = !{!35, !39, i64 48}
!71 = distinct !{!71, !55}
!72 = !{!35, !39, i64 40}
!73 = !{!41, !42, i64 4}
!74 = !{!64, !39, i64 24}
!75 = !{!64, !39, i64 32}
!76 = !{!41, !42, i64 2}
!77 = !{!64, !39, i64 56}
!78 = !{!64, !39, i64 64}
!79 = !{!41, !42, i64 0}
!80 = !{!64, !39, i64 88}
!81 = !{!64, !39, i64 96}
!82 = !{!64, !61, i64 8}
!83 = !{!64, !61, i64 40}
!84 = !{!64, !61, i64 72}
!85 = distinct !{!85, !55}
!86 = distinct !{!86, !55}
!87 = !{!64, !39, i64 112}
!88 = distinct !{!88, !55}
!89 = distinct !{!89, !55}
!90 = distinct !{!90, !55}
!91 = !{!92, !61, i64 40}
!92 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !61, i64 32, !61, i64 36, !61, i64 40, !61, i64 44, !61, i64 48}
!93 = distinct !{!93, !55}
!94 = distinct !{!94, !55}
!95 = !{!"segment.c:InitializeHistogram"}
!96 = distinct !{!96, !55}
!97 = distinct !{!97, !55}
!98 = distinct !{!98, !55}
!99 = !{!"segment.c:OptimalTau"}
!100 = !{!101, !61, i64 0}
!101 = !{!"_ZeroCrossing", !61, i64 0, !37, i64 4, !37, i64 1028}
!102 = distinct !{!102, !55, !103, !104}
!103 = !{!"llvm.loop.isvectorized", i32 1}
!104 = !{!"llvm.loop.unroll.runtime.disable"}
!105 = !{!36, !36, i64 0}
!106 = distinct !{!106, !55}
!107 = distinct !{!107, !55, !103, !104}
!108 = !{!42, !42, i64 0}
!109 = distinct !{!109, !55}
!110 = distinct !{!110, !55}
!111 = distinct !{!111, !55}
!112 = !{!113, !40, i64 40}
!113 = !{!"_IntervalTree", !61, i64 0, !39, i64 8, !39, i64 16, !61, i64 24, !61, i64 28, !40, i64 32, !40, i64 40}
!114 = !{!113, !61, i64 0}
!115 = distinct !{!115, !55}
!116 = !{!113, !39, i64 16}
!117 = !{!113, !39, i64 8}
!118 = distinct !{!118, !55}
!119 = distinct !{!119, !55}
!120 = distinct !{!120, !55}
!121 = distinct !{!121, !55}
!122 = !{!"segment.c:DefineRegion"}
!123 = !{!60, !39, i64 16}
!124 = !{!60, !61, i64 0}
!125 = !{!60, !39, i64 24}
!126 = distinct !{!126, !55}
!127 = distinct !{!127, !55}
!128 = !{!"segment.c:ScaleQuantumToChar"}
!129 = !{!"segment.c:SetImageProgress"}
!130 = !{!35, !40, i64 568}
!131 = !{!35, !40, i64 576}
!132 = !{!"segment.c:ScaleCharToQuantum"}
!133 = distinct !{!133, !55}
!134 = distinct !{!134, !55}
!135 = !{!35, !36, i64 4}
!136 = distinct !{!136, !55}
!137 = !{!"segment.c:Classify"}
!138 = distinct !{!138, !55}
!139 = distinct !{!139, !55}
!140 = distinct !{!140, !55}
!141 = distinct !{!141, !55}
!142 = distinct !{!142, !55}
!143 = distinct !{!143, !55}
!144 = distinct !{!144, !55}
!145 = distinct !{!145, !55}
!146 = distinct !{!146, !55}
!147 = distinct !{!147, !55}
!148 = distinct !{!148, !55, !103, !104}
!149 = !{!35, !40, i64 72}
!150 = distinct !{!150, !55}
!151 = !{!35, !39, i64 64}
!152 = distinct !{!152, !55}
!153 = distinct !{!153, !55}
!154 = distinct !{!154, !55}
!155 = distinct !{!155, !55}
!156 = distinct !{!156, !55}
!157 = distinct !{!157, !55}
!158 = !{!"segment.c:ScaleSpace"}
!159 = !{!43, !43, i64 0}
!160 = distinct !{!160, !55}
!161 = !{i64 0, i64 -9223372036854775807}
!162 = distinct !{!162, !55}
!163 = distinct !{!163, !55}
!164 = !{!"segment.c:DerivativeHistogram"}
!165 = distinct !{!165, !55}
!166 = !{!"segment.c:ZeroCrossHistogram"}
!167 = distinct !{!167, !55, !103, !104}
!168 = distinct !{!168, !55}
!169 = !{!"segment.c:ConsolidateCrossings"}
!170 = distinct !{!170, !55}
!171 = distinct !{!171, !55}
!172 = distinct !{!172, !55}
!173 = distinct !{!173, !55}
!174 = distinct !{!174, !55}
!175 = distinct !{!175, !55}
!176 = distinct !{!176, !55}
!177 = distinct !{!177, !55}
!178 = !{!"segment.c:InitializeIntervalTree"}
!179 = distinct !{!179, !55}
!180 = !{!113, !40, i64 32}
!181 = distinct !{!181, !55}
!182 = distinct !{!182, !55}
!183 = !{!"segment.c:ActiveNodes"}
!184 = !{!113, !61, i64 28}
!185 = !{!113, !61, i64 24}
!186 = !{!"segment.c:FreeNodes"}
!187 = !{!"segment.c:MagickAbsoluteValue"}
!188 = !{!"segment.c:MagickMax"}
!189 = !{!"segment.c:MagickMin"}
!190 = !{!"segment.c:InitializeList"}
!191 = !{!"segment.c:Stability"}
!192 = !{!"segment.c:MeanStability"}
!193 = distinct !{!193, !55}
