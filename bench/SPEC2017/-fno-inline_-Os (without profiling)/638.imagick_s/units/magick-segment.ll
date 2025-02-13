; ModuleID = 'magick/segment.c'
source_filename = "magick/segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
@.str.6 = private unnamed_addr constant [28 x i8] c"UnableToAllocateDerivatives\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"UnableToAllocateGammaMap\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_Classify.var = common global [8 x i32] zeroinitializer, align 8
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
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetImageDynamicThreshold(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._ExtentPacket, align 8
  %7 = alloca %struct._ExtentPacket, align 8
  %8 = alloca %struct._ExtentPacket, align 8
  %9 = alloca [3 x ptr], align 16
  %10 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #14
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #19
  br label %17

17:                                               ; preds = %14, %5
  tail call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %3) #19
  br label %18

18:                                               ; preds = %17, %42
  %19 = phi i64 [ 0, %17 ], [ %43, %42 ]
  %20 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #20
  %21 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %19
  store ptr %20, ptr %21, align 8, !tbaa !25
  %22 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #20
  %23 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 %19
  store ptr %22, ptr %23, align 8, !tbaa !25
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
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #19
  store ptr %34, ptr %32, align 8, !tbaa !25
  %35 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %31
  %36 = load ptr, ptr %35, align 8, !tbaa !25
  %37 = tail call ptr @RelinquishMagickMemory(ptr noundef %36) #19
  store ptr %37, ptr %35, align 8, !tbaa !25
  %38 = icmp sgt i64 %30, 1
  br i1 %38, label %29, label %39, !llvm.loop !26

39:                                               ; preds = %29, %27
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %41 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1008, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %40) #19
  br label %358

42:                                               ; preds = %18
  %43 = add nuw nsw i64 %19, 1
  %44 = icmp eq i64 %43, 3
  br i1 %44, label %45, label %18, !llvm.loop !28

45:                                               ; preds = %42
  call fastcc void @InitializeHistogram(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %4) #21
  %46 = load ptr, ptr %10, align 16, !tbaa !25
  %47 = fcmp oeq double %2, 0.000000e+00
  %48 = select i1 %47, double 1.000000e+00, double %2
  %49 = load ptr, ptr %9, align 16, !tbaa !25
  tail call fastcc void @OptimalTau(ptr noundef %46, double noundef 0x3FC99999A0000000, double noundef %48, ptr noundef %49) #21
  %50 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !25
  %52 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !25
  tail call fastcc void @OptimalTau(ptr noundef %51, double noundef 0x3FC99999A0000000, double noundef %48, ptr noundef %53) #21
  %54 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  %55 = load ptr, ptr %54, align 16, !tbaa !25
  %56 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 2
  %57 = load ptr, ptr %56, align 16, !tbaa !25
  tail call fastcc void @OptimalTau(ptr noundef %55, double noundef 0x3FC99999A0000000, double noundef %48, ptr noundef %57) #21
  %58 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 32) #19
  %59 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 32) #19
  %60 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 32) #19
  %61 = call fastcc i64 @DefineRegion(ptr noundef %49, ptr noundef nonnull %8) #21, !range !29
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %124, label %63

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct._ExtentPacket, ptr %7, i64 0, i32 1
  %65 = getelementptr inbounds %struct._ExtentPacket, ptr %6, i64 0, i32 1
  br label %77

66:                                               ; preds = %88
  %67 = load ptr, ptr %9, align 16, !tbaa !25
  br label %68

68:                                               ; preds = %66, %77
  %69 = phi ptr [ %78, %77 ], [ %67, %66 ]
  %70 = phi ptr [ %79, %77 ], [ %89, %66 ]
  %71 = phi ptr [ %80, %77 ], [ %90, %66 ]
  %72 = phi ptr [ %81, %77 ], [ %89, %66 ]
  %73 = phi ptr [ %83, %77 ], [ %91, %66 ]
  %74 = phi ptr [ %82, %77 ], [ %92, %66 ]
  %75 = call fastcc i64 @DefineRegion(ptr noundef %69, ptr noundef nonnull %8) #21, !range !29
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %122, label %77, !llvm.loop !30

77:                                               ; preds = %63, %68
  %78 = phi ptr [ %49, %63 ], [ %69, %68 ]
  %79 = phi ptr [ %53, %63 ], [ %70, %68 ]
  %80 = phi ptr [ %57, %63 ], [ %71, %68 ]
  %81 = phi ptr [ %53, %63 ], [ %72, %68 ]
  %82 = phi ptr [ null, %63 ], [ %74, %68 ]
  %83 = phi ptr [ null, %63 ], [ %73, %68 ]
  store i64 0, ptr %64, align 8, !tbaa !31
  %84 = call fastcc i64 @DefineRegion(ptr noundef %81, ptr noundef nonnull %7) #21, !range !29
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %68, label %95

86:                                               ; preds = %114
  %87 = load ptr, ptr %52, align 8, !tbaa !25
  br label %88

88:                                               ; preds = %86, %95
  %89 = phi ptr [ %96, %95 ], [ %87, %86 ]
  %90 = phi ptr [ %97, %95 ], [ %119, %86 ]
  %91 = phi ptr [ %99, %95 ], [ %106, %86 ]
  %92 = phi ptr [ %98, %95 ], [ %109, %86 ]
  %93 = call fastcc i64 @DefineRegion(ptr noundef %89, ptr noundef nonnull %7) #21, !range !29
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %66, label %95, !llvm.loop !34

95:                                               ; preds = %77, %88
  %96 = phi ptr [ %89, %88 ], [ %79, %77 ]
  %97 = phi ptr [ %90, %88 ], [ %80, %77 ]
  %98 = phi ptr [ %92, %88 ], [ %82, %77 ]
  %99 = phi ptr [ %91, %88 ], [ %83, %77 ]
  store i64 0, ptr %65, align 8, !tbaa !31
  %100 = call fastcc i64 @DefineRegion(ptr noundef %97, ptr noundef nonnull %6) #21, !range !29
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %88, label %102

102:                                              ; preds = %95, %114
  %103 = phi ptr [ %109, %114 ], [ %98, %95 ]
  %104 = phi ptr [ %106, %114 ], [ %99, %95 ]
  %105 = icmp eq ptr %103, null
  %106 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #22
  br i1 %105, label %108, label %107

107:                                              ; preds = %102
  store ptr %106, ptr %104, align 8, !tbaa !35
  br label %108

108:                                              ; preds = %102, %107
  %109 = phi ptr [ %103, %107 ], [ %106, %102 ]
  %110 = icmp eq ptr %106, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %113 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1055, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %112) #19
  br label %358

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct._Cluster, ptr %106, i64 0, i32 4
  store i64 0, ptr %115, align 8, !tbaa !37
  %116 = getelementptr inbounds %struct._Cluster, ptr %106, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %116, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !38
  %117 = getelementptr inbounds %struct._Cluster, ptr %106, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %117, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !38
  %118 = getelementptr inbounds %struct._Cluster, ptr %106, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %118, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !38
  store ptr null, ptr %106, align 8, !tbaa !35
  %119 = load ptr, ptr %56, align 16, !tbaa !25
  %120 = call fastcc i64 @DefineRegion(ptr noundef %119, ptr noundef nonnull %6) #21, !range !29
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %86, label %102, !llvm.loop !41

122:                                              ; preds = %68
  %123 = icmp eq ptr %74, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %45, %122
  %125 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #22
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %129 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1079, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %128) #19
  br label %358

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct._Cluster, ptr %125, i64 0, i32 4
  store i64 0, ptr %131, align 8, !tbaa !37
  %132 = getelementptr inbounds %struct._Cluster, ptr %125, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !38
  %133 = getelementptr inbounds %struct._Cluster, ptr %125, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %133, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !38
  %134 = getelementptr inbounds %struct._Cluster, ptr %125, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %134, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !38
  store ptr null, ptr %125, align 8, !tbaa !35
  br label %135

135:                                              ; preds = %130, %122
  %136 = phi ptr [ %125, %130 ], [ %74, %122 ]
  %137 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %138 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %139 = load i64, ptr %138, align 8, !tbaa !42
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %145, label %226

141:                                              ; preds = %221
  %142 = add nuw nsw i64 %146, 1
  %143 = load i64, ptr %138, align 8, !tbaa !42
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %226, !llvm.loop !43

145:                                              ; preds = %135, %141
  %146 = phi i64 [ %142, %141 ], [ 0, %135 ]
  %147 = load i64, ptr %137, align 8, !tbaa !44
  %148 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %146, i64 noundef %147, i64 noundef 1, ptr noundef %4) #19
  %149 = icmp eq ptr %148, null
  br i1 %149, label %226, label %150

150:                                              ; preds = %145
  %151 = load i64, ptr %137, align 8, !tbaa !44
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %221

153:                                              ; preds = %150, %217
  %154 = phi i64 [ %219, %217 ], [ 0, %150 ]
  %155 = phi ptr [ %218, %217 ], [ %148, %150 ]
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 2
  %157 = load i16, ptr %156, align 2, !tbaa !45
  %158 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %157) #21
  %159 = zext i8 %158 to i64
  %160 = add nuw nsw i64 %159, 3
  %161 = add nsw i64 %159, -3
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 1
  br label %163

163:                                              ; preds = %153, %214
  %164 = phi ptr [ %136, %153 ], [ %215, %214 ]
  %165 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 1, i32 2
  %166 = load i64, ptr %165, align 8, !tbaa !46
  %167 = icmp sgt i64 %166, %160
  br i1 %167, label %214, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 1, i32 3
  %170 = load i64, ptr %169, align 8, !tbaa !47
  %171 = icmp slt i64 %170, %161
  br i1 %171, label %214, label %172

172:                                              ; preds = %168
  %173 = load i16, ptr %162, align 2, !tbaa !48
  %174 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %173) #21
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 2, i32 2
  %177 = load i64, ptr %176, align 8, !tbaa !49
  %178 = add nsw i64 %177, -3
  %179 = icmp sgt i64 %178, %175
  br i1 %179, label %214, label %180

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 2, i32 3
  %182 = load i64, ptr %181, align 8, !tbaa !50
  %183 = add nsw i64 %182, 3
  %184 = icmp slt i64 %183, %175
  br i1 %184, label %214, label %185

185:                                              ; preds = %180
  %186 = load i16, ptr %155, align 2, !tbaa !51
  %187 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %186) #21
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 3, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !52
  %191 = add nsw i64 %190, -3
  %192 = icmp sgt i64 %191, %188
  br i1 %192, label %214, label %193

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 3, i32 3
  %195 = load i64, ptr %194, align 8, !tbaa !53
  %196 = add nsw i64 %195, 3
  %197 = icmp slt i64 %196, %188
  br i1 %197, label %214, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 1
  %200 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 2
  %201 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 3
  %202 = uitofp i8 %158 to float
  %203 = load float, ptr %199, align 8, !tbaa !54
  %204 = fadd float %203, %202
  store float %204, ptr %199, align 8, !tbaa !54
  %205 = uitofp i8 %174 to float
  %206 = load float, ptr %200, align 8, !tbaa !55
  %207 = fadd float %206, %205
  store float %207, ptr %200, align 8, !tbaa !55
  %208 = uitofp i8 %187 to float
  %209 = load float, ptr %201, align 8, !tbaa !56
  %210 = fadd float %209, %208
  store float %210, ptr %201, align 8, !tbaa !56
  %211 = getelementptr inbounds %struct._Cluster, ptr %164, i64 0, i32 4
  %212 = load i64, ptr %211, align 8, !tbaa !37
  %213 = add nsw i64 %212, 1
  store i64 %213, ptr %211, align 8, !tbaa !37
  br label %217

214:                                              ; preds = %163, %168, %172, %180, %185, %193
  %215 = load ptr, ptr %164, align 8, !tbaa !35
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %163, !llvm.loop !57

217:                                              ; preds = %214, %198
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 1
  %219 = add nuw nsw i64 %154, 1
  %220 = icmp eq i64 %219, %151
  br i1 %220, label %221, label %153, !llvm.loop !58

221:                                              ; preds = %217, %150
  %222 = load i64, ptr %138, align 8, !tbaa !42
  %223 = shl i64 %222, 1
  %224 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %146, i64 noundef %223) #21
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %141

226:                                              ; preds = %141, %145, %221, %135
  br label %227

227:                                              ; preds = %226, %261
  %228 = phi i64 [ %264, %261 ], [ 0, %226 ]
  %229 = phi ptr [ %263, %261 ], [ %136, %226 ]
  %230 = phi ptr [ %262, %261 ], [ %136, %226 ]
  %231 = phi ptr [ %232, %261 ], [ %136, %226 ]
  %232 = load ptr, ptr %231, align 8, !tbaa !35
  %233 = getelementptr inbounds %struct._Cluster, ptr %231, i64 0, i32 4
  %234 = load i64, ptr %233, align 8, !tbaa !37
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
  store i64 %228, ptr %243, align 8, !tbaa !59
  %244 = sitofp i64 %234 to float
  %245 = getelementptr inbounds %struct._Cluster, ptr %231, i64 0, i32 1
  %246 = load float, ptr %245, align 8, !tbaa !54
  %247 = fdiv float %246, %244
  store float %247, ptr %245, align 8, !tbaa !54
  %248 = getelementptr inbounds %struct._Cluster, ptr %231, i64 0, i32 2
  %249 = load float, ptr %248, align 8, !tbaa !55
  %250 = fdiv float %249, %244
  store float %250, ptr %248, align 8, !tbaa !55
  %251 = getelementptr inbounds %struct._Cluster, ptr %231, i64 0, i32 3
  %252 = load float, ptr %251, align 8, !tbaa !56
  %253 = fdiv float %252, %244
  store float %253, ptr %251, align 8, !tbaa !56
  %254 = add nsw i64 %228, 1
  br label %261

255:                                              ; preds = %236, %227
  %256 = icmp eq ptr %231, %230
  br i1 %256, label %258, label %257

257:                                              ; preds = %255
  store ptr %232, ptr %229, align 8, !tbaa !35
  br label %258

258:                                              ; preds = %255, %257
  %259 = phi ptr [ %230, %257 ], [ %232, %255 ]
  %260 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %231) #19
  br label %261

261:                                              ; preds = %258, %242
  %262 = phi ptr [ %230, %242 ], [ %259, %258 ]
  %263 = phi ptr [ %231, %242 ], [ %229, %258 ]
  %264 = phi i64 [ %254, %242 ], [ %228, %258 ]
  %265 = icmp eq ptr %232, null
  br i1 %265, label %266, label %227, !llvm.loop !60

266:                                              ; preds = %261
  %267 = icmp sgt i64 %264, 1
  br i1 %267, label %268, label %297

268:                                              ; preds = %266
  %269 = load ptr, ptr %262, align 8, !tbaa !35
  %270 = load ptr, ptr %269, align 8, !tbaa !35
  %271 = icmp eq ptr %270, null
  br i1 %271, label %301, label %273

272:                                              ; preds = %273
  br i1 %271, label %297, label %285

273:                                              ; preds = %268, %273
  %274 = phi ptr [ %283, %273 ], [ %270, %268 ]
  %275 = phi ptr [ %282, %273 ], [ %269, %268 ]
  %276 = phi ptr [ %274, %273 ], [ %269, %268 ]
  %277 = getelementptr inbounds %struct._Cluster, ptr %276, i64 0, i32 4
  %278 = load i64, ptr %277, align 8, !tbaa !37
  %279 = getelementptr inbounds %struct._Cluster, ptr %275, i64 0, i32 4
  %280 = load i64, ptr %279, align 8, !tbaa !37
  %281 = icmp slt i64 %278, %280
  %282 = select i1 %281, ptr %276, ptr %275
  %283 = load ptr, ptr %274, align 8, !tbaa !35
  %284 = icmp eq ptr %283, null
  br i1 %284, label %272, label %273, !llvm.loop !61

285:                                              ; preds = %272, %285
  %286 = phi ptr [ %295, %285 ], [ %270, %272 ]
  %287 = phi ptr [ %294, %285 ], [ %269, %272 ]
  %288 = phi ptr [ %286, %285 ], [ %269, %272 ]
  %289 = getelementptr inbounds %struct._Cluster, ptr %288, i64 0, i32 4
  %290 = load i64, ptr %289, align 8, !tbaa !37
  %291 = getelementptr inbounds %struct._Cluster, ptr %287, i64 0, i32 4
  %292 = load i64, ptr %291, align 8, !tbaa !37
  %293 = icmp sgt i64 %290, %292
  %294 = select i1 %293, ptr %288, ptr %287
  %295 = load ptr, ptr %286, align 8, !tbaa !35
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %285, !llvm.loop !62

297:                                              ; preds = %285, %272, %266
  %298 = phi ptr [ %262, %266 ], [ %282, %272 ], [ %282, %285 ]
  %299 = phi ptr [ %262, %266 ], [ %269, %272 ], [ %294, %285 ]
  %300 = icmp eq ptr %299, null
  br i1 %300, label %340, label %301

301:                                              ; preds = %268, %297
  %302 = phi ptr [ %299, %297 ], [ %269, %268 ]
  %303 = phi ptr [ %298, %297 ], [ %269, %268 ]
  %304 = getelementptr inbounds %struct._Cluster, ptr %302, i64 0, i32 1
  %305 = load float, ptr %304, align 8, !tbaa !54
  %306 = getelementptr inbounds %struct._Cluster, ptr %303, i64 0, i32 1
  %307 = load float, ptr %306, align 8, !tbaa !54
  %308 = fadd float %305, %307
  %309 = fmul float %308, 5.000000e-01
  %310 = fpext float %309 to double
  %311 = fadd double %310, 5.000000e-01
  %312 = fptoui double %311 to i8
  %313 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %312) #21
  %314 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %315 = getelementptr inbounds %struct._Cluster, ptr %302, i64 0, i32 2
  %316 = load float, ptr %315, align 8, !tbaa !55
  %317 = getelementptr inbounds %struct._Cluster, ptr %303, i64 0, i32 2
  %318 = load float, ptr %317, align 8, !tbaa !55
  %319 = fadd float %316, %318
  %320 = fmul float %319, 5.000000e-01
  %321 = fpext float %320 to double
  %322 = fadd double %321, 5.000000e-01
  %323 = fptoui double %322 to i8
  %324 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %323) #21
  %325 = insertelement <2 x i16> poison, i16 %313, i64 0
  %326 = insertelement <2 x i16> %325, i16 %324, i64 1
  %327 = uitofp <2 x i16> %326 to <2 x float>
  store <2 x float> %327, ptr %314, align 8, !tbaa !39
  %328 = getelementptr inbounds %struct._Cluster, ptr %302, i64 0, i32 3
  %329 = load float, ptr %328, align 8, !tbaa !56
  %330 = getelementptr inbounds %struct._Cluster, ptr %303, i64 0, i32 3
  %331 = load float, ptr %330, align 8, !tbaa !56
  %332 = fadd float %329, %331
  %333 = fmul float %332, 5.000000e-01
  %334 = fpext float %333 to double
  %335 = fadd double %334, 5.000000e-01
  %336 = fptoui double %335 to i8
  %337 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %336) #21
  %338 = uitofp i16 %337 to float
  %339 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %338, ptr %339, align 8, !tbaa !63
  br label %340

340:                                              ; preds = %301, %297
  %341 = icmp eq ptr %262, null
  br i1 %341, label %347, label %342

342:                                              ; preds = %340, %342
  %343 = phi ptr [ %344, %342 ], [ %262, %340 ]
  %344 = load ptr, ptr %343, align 8, !tbaa !35
  %345 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %343) #19
  %346 = icmp eq ptr %344, null
  br i1 %346, label %347, label %342, !llvm.loop !65

347:                                              ; preds = %342, %340
  br label %348

348:                                              ; preds = %347, %348
  %349 = phi i64 [ %356, %348 ], [ 0, %347 ]
  %350 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !25
  %352 = call ptr @RelinquishMagickMemory(ptr noundef %351) #19
  store ptr %352, ptr %350, align 8, !tbaa !25
  %353 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %349
  %354 = load ptr, ptr %353, align 8, !tbaa !25
  %355 = call ptr @RelinquishMagickMemory(ptr noundef %354) #19
  store ptr %355, ptr %353, align 8, !tbaa !25
  %356 = add nuw nsw i64 %349, 1
  %357 = icmp eq i64 %356, 3
  br i1 %357, label %358, label %348, !llvm.loop !66

358:                                              ; preds = %348, %127, %111, %39
  %359 = phi i32 [ 0, %39 ], [ 0, %111 ], [ 0, %127 ], [ 1, %348 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
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
define internal fastcc void @InitializeHistogram(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !25
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  br label %16

9:                                                ; preds = %16
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %9
  %15 = load i64, ptr %10, align 8, !tbaa !44
  br label %23

16:                                               ; preds = %3, %16
  %17 = phi i64 [ 0, %3 ], [ %21, %16 ]
  %18 = getelementptr inbounds i64, ptr %4, i64 %17
  store i64 0, ptr %18, align 8, !tbaa !40
  %19 = getelementptr inbounds i64, ptr %6, i64 %17
  store i64 0, ptr %19, align 8, !tbaa !40
  %20 = getelementptr inbounds i64, ptr %8, i64 %17
  store i64 0, ptr %20, align 8, !tbaa !40
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, 256
  br i1 %22, label %9, label %16, !llvm.loop !67

23:                                               ; preds = %14, %62
  %24 = phi i64 [ %15, %14 ], [ %63, %62 ]
  %25 = phi i64 [ 0, %14 ], [ %64, %62 ]
  %26 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %25, i64 noundef %24, i64 noundef 1, ptr noundef %2) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %67, label %28

28:                                               ; preds = %23
  %29 = load i64, ptr %10, align 8, !tbaa !44
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load ptr, ptr %1, align 8, !tbaa !25
  %33 = load ptr, ptr %5, align 8, !tbaa !25
  %34 = load ptr, ptr %7, align 8, !tbaa !25
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ 0, %31 ], [ %59, %35 ]
  %37 = phi ptr [ %26, %31 ], [ %58, %35 ]
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !45
  %40 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %39) #21
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i64, ptr %32, i64 %41
  %43 = load i64, ptr %42, align 8, !tbaa !40
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr %42, align 8, !tbaa !40
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 0, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !48
  %47 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %46) #21
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i64, ptr %33, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !40
  %51 = add nsw i64 %50, 1
  store i64 %51, ptr %49, align 8, !tbaa !40
  %52 = load i16, ptr %37, align 2, !tbaa !51
  %53 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %52) #21
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i64, ptr %34, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !40
  %57 = add nsw i64 %56, 1
  store i64 %57, ptr %55, align 8, !tbaa !40
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 1
  %59 = add nuw nsw i64 %36, 1
  %60 = load i64, ptr %10, align 8, !tbaa !44
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %35, label %62, !llvm.loop !68

62:                                               ; preds = %35, %28
  %63 = phi i64 [ %29, %28 ], [ %60, %35 ]
  %64 = add nuw nsw i64 %25, 1
  %65 = load i64, ptr %11, align 8, !tbaa !42
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %23, label %67, !llvm.loop !69

67:                                               ; preds = %62, %23, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @OptimalTau(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %7 = tail call dereferenceable_or_null(4800) ptr @AcquireQuantumMemory(i64 noundef 600, i64 noundef 8) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %199, label %9

9:                                                ; preds = %4
  %10 = fsub double 0x4014CCCCC0000000, %1
  %11 = fmul double %10, 2.000000e+00
  %12 = fptoui double %11 to i64
  %13 = add i64 %12, 2
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %13, i64 noundef 1540) #20
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
  store float -1.000000e+00, ptr %30, align 4, !tbaa !70
  br label %31

31:                                               ; preds = %29, %24
  %32 = extractelement <4 x i1> %27, i64 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %25, 1
  %35 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %34
  store float -1.000000e+00, ptr %35, align 4, !tbaa !70
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <4 x i1> %27, i64 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or disjoint i64 %25, 2
  %40 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %39
  store float -1.000000e+00, ptr %40, align 4, !tbaa !70
  br label %41

41:                                               ; preds = %38, %36
  %42 = extractelement <4 x i1> %27, i64 3
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = or disjoint i64 %25, 3
  %45 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %44
  store float -1.000000e+00, ptr %45, align 4, !tbaa !70
  br label %46

46:                                               ; preds = %43, %41
  %47 = add i64 %25, 4
  %48 = add <4 x i64> %26, <i64 4, i64 4, i64 4, i64 4>
  %49 = icmp eq i64 %47, %20
  br i1 %49, label %50, label %24, !llvm.loop !72

50:                                               ; preds = %46, %16
  %51 = tail call dereferenceable_or_null(1024) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 4) #20
  %52 = tail call dereferenceable_or_null(1024) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 4) #20
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
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #14
  call void @GetExceptionInfo(ptr noundef nonnull %6) #19
  %61 = tail call ptr @__errno_location() #23
  %62 = load i32, ptr %61, align 4, !tbaa !75
  %63 = call ptr @GetExceptionMessage(i32 noundef %62) #19
  %64 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1574, i32 noundef 700, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %63) #19
  %65 = call ptr @DestroyString(ptr noundef %63) #19
  call void @CatchException(ptr noundef nonnull %6) #19
  %66 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #24
  unreachable

67:                                               ; preds = %58, %67
  %68 = phi i64 [ 0, %58 ], [ %73, %67 ]
  %69 = phi float [ 0x4014CCCCC0000000, %58 ], [ %74, %67 ]
  %70 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %68
  store float %69, ptr %70, align 4, !tbaa !70
  %71 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %68, i32 1
  tail call fastcc void @ScaleSpace(ptr noundef %0, float noundef %69, ptr noundef nonnull %71) #21
  tail call fastcc void @DerivativeHistogram(ptr noundef nonnull %71, ptr noundef %51) #21
  tail call fastcc void @DerivativeHistogram(ptr noundef %51, ptr noundef %52) #21
  %72 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %68, i32 2
  tail call fastcc void @ZeroCrossHistogram(ptr noundef %52, float noundef %59, ptr noundef nonnull %72) #21
  %73 = add nuw nsw i64 %68, 1
  %74 = fadd float %69, -5.000000e-01
  %75 = fpext float %74 to double
  %76 = fcmp ult double %75, %1
  br i1 %76, label %77, label %67, !llvm.loop !76

77:                                               ; preds = %67, %56
  %78 = phi i64 [ 0, %56 ], [ %73, %67 ]
  %79 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %78
  store float 0.000000e+00, ptr %79, align 4, !tbaa !70
  br label %80

80:                                               ; preds = %80, %77
  %81 = phi i64 [ 0, %77 ], [ %86, %80 ]
  %82 = getelementptr inbounds i64, ptr %0, i64 %81
  %83 = load <2 x i64>, ptr %82, align 8, !tbaa !40
  %84 = sitofp <2 x i64> %83 to <2 x float>
  %85 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %78, i32 1, i64 %81
  store <2 x float> %84, ptr %85, align 4, !tbaa !39
  %86 = add nuw i64 %81, 2
  %87 = icmp eq i64 %86, 256
  br i1 %87, label %88, label %80, !llvm.loop !77

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %78, i32 1
  tail call fastcc void @DerivativeHistogram(ptr noundef nonnull %89, ptr noundef %51) #21
  tail call fastcc void @DerivativeHistogram(ptr noundef %51, ptr noundef %52) #21
  %90 = fptrunc double %2 to float
  %91 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %78, i32 2
  tail call fastcc void @ZeroCrossHistogram(ptr noundef %52, float noundef %90, ptr noundef nonnull %91) #21
  %92 = tail call ptr @RelinquishMagickMemory(ptr noundef %51) #19
  %93 = tail call ptr @RelinquishMagickMemory(ptr noundef %52) #19
  tail call fastcc void @ConsolidateCrossings(ptr noundef nonnull %14, i64 noundef %78) #21
  br label %94

94:                                               ; preds = %88, %119
  %95 = phi i64 [ 0, %88 ], [ %123, %119 ]
  br label %96

96:                                               ; preds = %94, %101
  %97 = phi i64 [ 0, %94 ], [ %102, %101 ]
  %98 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %95, i32 2, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !78
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = add nuw nsw i64 %97, 1
  %103 = icmp eq i64 %102, 255
  br i1 %103, label %104, label %96, !llvm.loop !79

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %95, i32 2, i64 255
  %106 = load i16, ptr %105, align 2, !tbaa !78
  br label %107

107:                                              ; preds = %96, %104
  %108 = phi i16 [ %106, %104 ], [ %99, %96 ]
  %109 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %95, i32 2
  %110 = sub i16 0, %108
  store i16 %110, ptr %109, align 4, !tbaa !78
  br label %111

111:                                              ; preds = %107, %116
  %112 = phi i64 [ 255, %107 ], [ %117, %116 ]
  %113 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %95, i32 2, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !78
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = add nsw i64 %112, -1
  %118 = icmp ugt i64 %112, 1
  br i1 %118, label %111, label %119, !llvm.loop !80

119:                                              ; preds = %111, %116
  %120 = phi i16 [ %110, %116 ], [ %114, %111 ]
  %121 = sub i16 0, %120
  %122 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %95, i32 2, i64 255
  store i16 %121, ptr %122, align 2, !tbaa !78
  %123 = add nuw i64 %95, 1
  %124 = icmp eq i64 %95, %78
  br i1 %124, label %125, label %94, !llvm.loop !81

125:                                              ; preds = %119
  %126 = tail call fastcc ptr @InitializeIntervalTree(ptr noundef nonnull %14, i64 noundef %78) #21
  %127 = icmp eq ptr %126, null
  br i1 %127, label %199, label %128

128:                                              ; preds = %125
  store i64 0, ptr %5, align 8, !tbaa !40
  %129 = getelementptr inbounds %struct._IntervalTree, ptr %126, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !82
  call fastcc void @ActiveNodes(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef %130) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %3, i8 0, i64 512, i1 false), !tbaa !78
  %131 = load i64, ptr %5, align 8, !tbaa !40
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %134, label %196

133:                                              ; preds = %189
  br i1 %132, label %192, label %196

134:                                              ; preds = %128, %189
  %135 = phi i64 [ %190, %189 ], [ 0, %128 ]
  %136 = getelementptr inbounds ptr, ptr %7, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !25
  %138 = load float, ptr %137, align 8, !tbaa !84
  br label %139

139:                                              ; preds = %134, %139
  %140 = phi i64 [ 0, %134 ], [ %145, %139 ]
  %141 = phi i64 [ 0, %134 ], [ %146, %139 ]
  %142 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %141
  %143 = load float, ptr %142, align 4, !tbaa !70
  %144 = fcmp oeq float %143, %138
  %145 = select i1 %144, i64 %141, i64 %140
  %146 = add nuw i64 %141, 1
  %147 = icmp eq i64 %141, %78
  br i1 %147, label %148, label %139, !llvm.loop !85

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct._IntervalTree, ptr %137, i64 0, i32 2
  %150 = load i64, ptr %149, align 8, !tbaa !86
  %151 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %145, i32 2, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !78
  %153 = icmp eq i16 %152, -1
  %154 = getelementptr inbounds %struct._IntervalTree, ptr %137, i64 0, i32 1
  %155 = load i64, ptr %154, align 8, !tbaa !87
  %156 = icmp sgt i64 %155, %150
  br i1 %156, label %189, label %157

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %145, i32 1, i64 %155
  %159 = load float, ptr %158, align 4, !tbaa !39
  br label %161

160:                                              ; preds = %173
  br i1 %156, label %189, label %178

161:                                              ; preds = %157, %173
  %162 = phi i64 [ %175, %173 ], [ %155, %157 ]
  %163 = phi i64 [ %176, %173 ], [ %155, %157 ]
  %164 = phi float [ %174, %173 ], [ %159, %157 ]
  %165 = getelementptr inbounds %struct._ZeroCrossing, ptr %14, i64 %145, i32 1, i64 %163
  %166 = load float, ptr %165, align 4, !tbaa !39
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
  br i1 %177, label %160, label %161, !llvm.loop !88

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
  br i1 %188, label %189, label %178, !llvm.loop !89

189:                                              ; preds = %178, %148, %160
  %190 = add nuw nsw i64 %135, 1
  %191 = icmp eq i64 %190, %131
  br i1 %191, label %133, label %134, !llvm.loop !90

192:                                              ; preds = %133, %192
  %193 = phi i64 [ %194, %192 ], [ 0, %133 ]
  %194 = add nuw nsw i64 %193, 1
  %195 = icmp eq i64 %194, %131
  br i1 %195, label %196, label %192, !llvm.loop !91

196:                                              ; preds = %192, %128, %133
  tail call fastcc void @FreeNodes(ptr noundef nonnull %126) #21
  %197 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #19
  %198 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #19
  br label %199

199:                                              ; preds = %125, %9, %4, %196
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @DefineRegion(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct._ExtentPacket, ptr %1, i64 0, i32 2
  store i64 0, ptr %3, align 8, !tbaa !92
  store float 0.000000e+00, ptr %1, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct._ExtentPacket, ptr %1, i64 0, i32 3
  store i64 255, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct._ExtentPacket, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !31
  %7 = icmp slt i64 %6, 256
  br i1 %7, label %8, label %29

8:                                                ; preds = %2, %13
  %9 = phi i64 [ %14, %13 ], [ %6, %2 ]
  %10 = getelementptr inbounds i16, ptr %0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !78
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = add i64 %9, 1
  store i64 %14, ptr %5, align 8, !tbaa !31
  %15 = icmp eq i64 %14, 256
  br i1 %15, label %29, label %8, !llvm.loop !95

16:                                               ; preds = %8
  store i64 %9, ptr %3, align 8, !tbaa !92
  %17 = icmp slt i64 %9, 256
  br i1 %17, label %18, label %26

18:                                               ; preds = %16, %23
  %19 = phi i64 [ %24, %23 ], [ %9, %16 ]
  %20 = getelementptr inbounds i16, ptr %0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !78
  %22 = icmp slt i16 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = add i64 %19, 1
  store i64 %24, ptr %5, align 8, !tbaa !31
  %25 = icmp eq i64 %24, 256
  br i1 %25, label %26, label %18, !llvm.loop !96

26:                                               ; preds = %23, %18, %16
  %27 = phi i64 [ %9, %16 ], [ %19, %18 ], [ 256, %23 ]
  %28 = add nsw i64 %27, -1
  store i64 %28, ptr %4, align 8, !tbaa !94
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
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #7 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #19
  %11 = load ptr, ptr %5, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #19
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %0) unnamed_addr #7 {
  %2 = zext i8 %0 to i16
  %3 = mul nuw i16 %2, 257
  ret i16 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
define internal fastcc void @ScaleSpace(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  call void @GetExceptionInfo(ptr noundef nonnull %4) #19
  %8 = tail call ptr @__errno_location() #23
  %9 = load i32, ptr %8, align 4, !tbaa !75
  %10 = call ptr @GetExceptionMessage(i32 noundef %9) #19
  %11 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1735, i32 noundef 700, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %10) #19
  %12 = call ptr @DestroyString(ptr noundef %10) #19
  call void @CatchException(ptr noundef nonnull %4) #19
  %13 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #24
  unreachable

14:                                               ; preds = %3
  %15 = fpext float %1 to double
  %16 = fmul double %15, 0x40040D931FF62705
  %17 = fmul double %15, 2.000000e+00
  %18 = fmul double %17, %15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %5, i8 0, i64 2048, i1 false), !tbaa !99
  %19 = fdiv double 1.000000e+00, %16
  %20 = fdiv double -1.000000e+00, %18
  br label %21

21:                                               ; preds = %21, %14
  %22 = phi i64 [ 0, %14 ], [ %29, %21 ]
  %23 = sitofp i64 %22 to double
  %24 = fmul double %20, %23
  %25 = fmul double %24, %23
  %26 = tail call double @exp(double noundef %25) #19
  %27 = getelementptr inbounds double, ptr %5, i64 %22
  store double %26, ptr %27, align 8, !tbaa !99
  %28 = fcmp olt double %26, 1.000000e-15
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, 256
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %21, !llvm.loop !100

32:                                               ; preds = %21, %47
  %33 = phi i64 [ %51, %47 ], [ 0, %21 ]
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %45, %34 ]
  %36 = phi double [ 0.000000e+00, %32 ], [ %44, %34 ]
  %37 = getelementptr inbounds i64, ptr %0, i64 %35
  %38 = load i64, ptr %37, align 8, !tbaa !40
  %39 = sitofp i64 %38 to double
  %40 = sub nsw i64 %33, %35
  %41 = tail call fastcc i64 @MagickAbsoluteValue(i64 noundef %40) #21, !range !101
  %42 = getelementptr inbounds double, ptr %5, i64 %41
  %43 = load double, ptr %42, align 8, !tbaa !99
  %44 = tail call double @llvm.fmuladd.f64(double %39, double %43, double %36)
  %45 = add nuw nsw i64 %35, 1
  %46 = icmp eq i64 %45, 256
  br i1 %46, label %47, label %34, !llvm.loop !102

47:                                               ; preds = %34
  %48 = fmul double %19, %44
  %49 = fptrunc double %48 to float
  %50 = getelementptr inbounds float, ptr %2, i64 %33
  store float %49, ptr %50, align 4, !tbaa !39
  %51 = add nuw nsw i64 %33, 1
  %52 = icmp eq i64 %51, 256
  br i1 %52, label %53, label %32, !llvm.loop !103

53:                                               ; preds = %47
  %54 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @DerivativeHistogram(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 {
  %3 = load float, ptr %0, align 4, !tbaa !39
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !39
  %7 = fpext float %6 to double
  %8 = fmul double %7, 2.000000e+00
  %9 = tail call double @llvm.fmuladd.f64(double %4, double -1.500000e+00, double %8)
  %10 = getelementptr inbounds float, ptr %0, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !39
  %12 = fpext float %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double -5.000000e-01, double %9)
  %14 = fptrunc double %13 to float
  store float %14, ptr %1, align 4, !tbaa !39
  %15 = getelementptr inbounds float, ptr %0, i64 253
  %16 = load float, ptr %15, align 4, !tbaa !39
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds float, ptr %0, i64 254
  %19 = load float, ptr %18, align 4, !tbaa !39
  %20 = fpext float %19 to double
  %21 = fmul double %20, -2.000000e+00
  %22 = tail call double @llvm.fmuladd.f64(double %17, double 5.000000e-01, double %21)
  %23 = getelementptr inbounds float, ptr %0, i64 255
  %24 = load float, ptr %23, align 4, !tbaa !39
  %25 = fpext float %24 to double
  %26 = tail call double @llvm.fmuladd.f64(double %25, double 1.500000e+00, double %22)
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds float, ptr %1, i64 255
  store float %27, ptr %28, align 4, !tbaa !39
  %29 = getelementptr float, ptr %0, i64 -1
  br label %30

30:                                               ; preds = %2, %30
  %31 = phi i64 [ 1, %2 ], [ %32, %30 ]
  %32 = add nuw nsw i64 %31, 1
  %33 = getelementptr inbounds float, ptr %0, i64 %32
  %34 = load float, ptr %33, align 4, !tbaa !39
  %35 = getelementptr float, ptr %29, i64 %31
  %36 = load float, ptr %35, align 4, !tbaa !39
  %37 = fsub float %34, %36
  %38 = fmul float %37, 5.000000e-01
  %39 = getelementptr inbounds float, ptr %1, i64 %31
  store float %38, ptr %39, align 4, !tbaa !39
  %40 = icmp eq i64 %32, 255
  br i1 %40, label %41, label %30, !llvm.loop !104

41:                                               ; preds = %30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @ZeroCrossHistogram(ptr nocapture noundef %0, float noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = fneg float %1
  %5 = insertelement <4 x float> poison, float %1, i64 0
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %7 = insertelement <4 x float> poison, float %4, i64 0
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  br label %9

9:                                                ; preds = %34, %3
  %10 = phi i64 [ 0, %3 ], [ %35, %34 ]
  %11 = getelementptr inbounds float, ptr %0, i64 %10
  %12 = load <4 x float>, ptr %11, align 4, !tbaa !39
  %13 = fcmp olt <4 x float> %12, %6
  %14 = fcmp oge <4 x float> %12, %8
  %15 = and <4 x i1> %13, %14
  %16 = extractelement <4 x i1> %15, i64 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = getelementptr inbounds float, ptr %0, i64 %10
  store float 0.000000e+00, ptr %18, align 4, !tbaa !39
  br label %19

19:                                               ; preds = %17, %9
  %20 = extractelement <4 x i1> %15, i64 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = or disjoint i64 %10, 1
  %23 = getelementptr inbounds float, ptr %0, i64 %22
  store float 0.000000e+00, ptr %23, align 4, !tbaa !39
  br label %24

24:                                               ; preds = %21, %19
  %25 = extractelement <4 x i1> %15, i64 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = or disjoint i64 %10, 2
  %28 = getelementptr inbounds float, ptr %0, i64 %27
  store float 0.000000e+00, ptr %28, align 4, !tbaa !39
  br label %29

29:                                               ; preds = %26, %24
  %30 = extractelement <4 x i1> %15, i64 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = or disjoint i64 %10, 3
  %33 = getelementptr inbounds float, ptr %0, i64 %32
  store float 0.000000e+00, ptr %33, align 4, !tbaa !39
  br label %34

34:                                               ; preds = %31, %29
  %35 = add nuw i64 %10, 4
  %36 = icmp eq i64 %35, 256
  br i1 %36, label %37, label %9, !llvm.loop !105

37:                                               ; preds = %34, %53
  %38 = phi i64 [ %54, %53 ], [ 0, %34 ]
  %39 = phi i64 [ %55, %53 ], [ 0, %34 ]
  %40 = getelementptr inbounds i16, ptr %2, i64 %39
  store i16 0, ptr %40, align 2, !tbaa !78
  %41 = getelementptr inbounds float, ptr %0, i64 %39
  %42 = load float, ptr %41, align 4, !tbaa !39
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
  store i16 %51, ptr %40, align 2, !tbaa !78
  br label %53

53:                                               ; preds = %50, %48, %44, %46
  %54 = phi i64 [ %38, %46 ], [ 1, %44 ], [ -1, %48 ], [ %52, %50 ]
  %55 = add nuw nsw i64 %39, 1
  %56 = icmp eq i64 %55, 256
  br i1 %56, label %57, label %37, !llvm.loop !106

57:                                               ; preds = %53
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @ConsolidateCrossings(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #4 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %6, label %120

4:                                                ; preds = %117
  %5 = icmp sgt i64 %7, 1
  br i1 %5, label %6, label %120, !llvm.loop !107

6:                                                ; preds = %2, %4
  %7 = phi i64 [ %8, %4 ], [ %1, %2 ]
  %8 = add nsw i64 %7, -1
  br label %9

9:                                                ; preds = %6, %117
  %10 = phi i64 [ 0, %6 ], [ %118, %117 ]
  %11 = tail call i64 @llvm.umax.i64(i64 %10, i64 254)
  %12 = add nuw nsw i64 %11, 1
  %13 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %8, i32 2, i64 %10
  %14 = load i16, ptr %13, align 2, !tbaa !78
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %117, label %16

16:                                               ; preds = %9
  %17 = add nsw i64 %10, -1
  %18 = icmp ugt i64 %10, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %16, %24
  %20 = phi i64 [ %25, %24 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %7, i32 2, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !78
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = add nsw i64 %20, -1
  %26 = icmp sgt i64 %20, 1
  br i1 %26, label %19, label %27, !llvm.loop !108

27:                                               ; preds = %24, %19, %16
  %28 = phi i64 [ %17, %16 ], [ %20, %19 ], [ 0, %24 ]
  %29 = tail call fastcc i64 @MagickMax(i64 noundef %28) #21
  br label %30

30:                                               ; preds = %33, %27
  %31 = phi i64 [ %10, %27 ], [ %34, %33 ]
  %32 = icmp ult i64 %31, 254
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = add nuw nsw i64 %31, 1
  %35 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %7, i32 2, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !78
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %30, label %38, !llvm.loop !109

38:                                               ; preds = %33, %30
  %39 = phi i64 [ %34, %33 ], [ %12, %30 ]
  %40 = tail call fastcc i64 @MagickMin(i64 noundef %39) #21
  br i1 %18, label %41, label %49

41:                                               ; preds = %38, %46
  %42 = phi i64 [ %47, %46 ], [ %17, %38 ]
  %43 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %8, i32 2, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !78
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = add nsw i64 %42, -1
  %48 = icmp sgt i64 %42, 1
  br i1 %48, label %41, label %49, !llvm.loop !110

49:                                               ; preds = %46, %41, %38
  %50 = phi i64 [ %17, %38 ], [ %42, %41 ], [ 0, %46 ]
  %51 = tail call i64 @llvm.smax.i64(i64 %50, i64 0)
  %52 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %7, i32 2, i64 %10
  %53 = load i16, ptr %52, align 2, !tbaa !78
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
  %62 = load i16, ptr %61, align 2, !tbaa !78
  %63 = icmp ne i16 %62, 0
  %64 = zext i1 %63 to i64
  %65 = add nuw nsw i64 %60, %64
  %66 = add nuw nsw i64 %59, 1
  %67 = icmp ult i64 %66, %10
  br i1 %67, label %58, label %68, !llvm.loop !111

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
  %80 = load i16, ptr %79, align 2, !tbaa !78
  %81 = icmp ne i16 %80, 0
  %82 = zext i1 %81 to i64
  %83 = add nuw nsw i64 %78, %82
  %84 = add nuw nsw i64 %77, 1
  %85 = icmp eq i64 %84, %29
  br i1 %85, label %86, label %76, !llvm.loop !112

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
  store i16 0, ptr %13, align 2, !tbaa !78
  br label %114

96:                                               ; preds = %92, %96
  %97 = phi i64 [ %104, %96 ], [ %55, %92 ]
  %98 = phi i64 [ %103, %96 ], [ 0, %92 ]
  %99 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %7, i32 2, i64 %97
  %100 = load i16, ptr %99, align 2, !tbaa !78
  %101 = icmp ne i16 %100, 0
  %102 = zext i1 %101 to i64
  %103 = add nuw nsw i64 %98, %102
  %104 = add nuw nsw i64 %97, 1
  %105 = icmp eq i64 %104, %40
  br i1 %105, label %106, label %96, !llvm.loop !113

106:                                              ; preds = %96, %92
  %107 = phi i64 [ 0, %92 ], [ %103, %96 ]
  %108 = and i64 %107, 1
  %109 = icmp ne i64 %108, 0
  %110 = icmp eq i64 %40, %51
  %111 = or i1 %110, %109
  store i16 0, ptr %13, align 2, !tbaa !78
  %112 = icmp eq i64 %40, -1
  %113 = or i1 %111, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %106, %94
  %115 = phi i64 [ %95, %94 ], [ %40, %106 ]
  %116 = getelementptr inbounds %struct._ZeroCrossing, ptr %0, i64 %8, i32 2, i64 %115
  store i16 %14, ptr %116, align 2, !tbaa !78
  br label %117

117:                                              ; preds = %106, %114, %9
  %118 = add nuw nsw i64 %10, 1
  %119 = icmp eq i64 %118, 256
  br i1 %119, label %4, label %9, !llvm.loop !114

120:                                              ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @InitializeIntervalTree(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = tail call dereferenceable_or_null(4800) ptr @AcquireQuantumMemory(i64 noundef 600, i64 noundef 8) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %2
  %7 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #22
  %8 = getelementptr inbounds %struct._IntervalTree, ptr %7, i64 0, i32 6
  %9 = getelementptr inbounds %struct._IntervalTree, ptr %7, i64 0, i32 5
  store float 0.000000e+00, ptr %7, align 8, !tbaa !84
  %10 = getelementptr inbounds %struct._IntervalTree, ptr %7, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !87
  %11 = getelementptr inbounds %struct._IntervalTree, ptr %7, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store i64 255, ptr %11, align 8, !tbaa !86
  %12 = getelementptr %struct._ZeroCrossing, ptr %0, i64 1
  %13 = icmp sgt i64 %1, -1
  br i1 %13, label %14, label %77

14:                                               ; preds = %6, %72
  %15 = phi i64 [ %73, %72 ], [ -1, %6 ]
  store i64 0, ptr %3, align 8, !tbaa !40
  call fastcc void @InitializeList(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %7) #21
  %16 = load i64, ptr %3, align 8, !tbaa !40
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
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  %26 = getelementptr inbounds %struct._IntervalTree, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !87
  %28 = getelementptr inbounds %struct._IntervalTree, ptr %25, i64 0, i32 2
  %29 = add nsw i64 %27, 1
  %30 = load i64, ptr %28, align 8, !tbaa !86
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
  %40 = load i16, ptr %39, align 2, !tbaa !78
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = icmp eq ptr %38, %25
  %44 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #22
  %45 = getelementptr inbounds %struct._IntervalTree, ptr %38, i64 0, i32 5
  %46 = select i1 %43, ptr %33, ptr %45
  store ptr %44, ptr %46, align 8, !tbaa !25
  %47 = load float, ptr %20, align 4, !tbaa !70
  store float %47, ptr %44, align 8, !tbaa !84
  %48 = getelementptr inbounds %struct._IntervalTree, ptr %44, i64 0, i32 5
  %49 = getelementptr inbounds %struct._IntervalTree, ptr %44, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  store i64 %37, ptr %49, align 8, !tbaa !87
  %50 = getelementptr inbounds %struct._IntervalTree, ptr %44, i64 0, i32 2
  store i64 %36, ptr %50, align 8, !tbaa !86
  %51 = load i64, ptr %28, align 8, !tbaa !86
  br label %52

52:                                               ; preds = %34, %42
  %53 = phi i64 [ %51, %42 ], [ %35, %34 ]
  %54 = phi ptr [ %44, %42 ], [ %38, %34 ]
  %55 = phi i64 [ %36, %42 ], [ %37, %34 ]
  %56 = add nsw i64 %36, 1
  %57 = icmp slt i64 %56, %53
  br i1 %57, label %34, label %58, !llvm.loop !115

58:                                               ; preds = %52
  %59 = load i64, ptr %26, align 8, !tbaa !87
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #22
  %63 = getelementptr inbounds %struct._IntervalTree, ptr %54, i64 0, i32 5
  store ptr %62, ptr %63, align 8, !tbaa !116
  %64 = load float, ptr %21, align 4, !tbaa !70
  store float %64, ptr %62, align 8, !tbaa !84
  %65 = getelementptr inbounds %struct._IntervalTree, ptr %62, i64 0, i32 5
  %66 = getelementptr inbounds %struct._IntervalTree, ptr %62, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, i8 0, i64 16, i1 false)
  store i64 %55, ptr %66, align 8, !tbaa !87
  %67 = load i64, ptr %28, align 8, !tbaa !86
  %68 = getelementptr inbounds %struct._IntervalTree, ptr %62, i64 0, i32 2
  store i64 %67, ptr %68, align 8, !tbaa !86
  br label %69

69:                                               ; preds = %22, %58, %61
  %70 = add nuw nsw i64 %23, 1
  %71 = icmp eq i64 %70, %16
  br i1 %71, label %72, label %22, !llvm.loop !117

72:                                               ; preds = %69, %14
  %73 = add nsw i64 %15, 1
  %74 = icmp eq i64 %73, %1
  br i1 %74, label %75, label %14, !llvm.loop !118

75:                                               ; preds = %72
  %76 = load ptr, ptr %8, align 8, !tbaa !82
  br label %77

77:                                               ; preds = %75, %6
  %78 = phi ptr [ %76, %75 ], [ null, %6 ]
  tail call fastcc void @Stability(ptr noundef %78) #21
  %79 = load ptr, ptr %8, align 8, !tbaa !82
  tail call fastcc void @MeanStability(ptr noundef %79) #21
  %80 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #19
  br label %81

81:                                               ; preds = %2, %77
  %82 = phi ptr [ %7, %77 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret ptr %82
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ActiveNodes(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #10 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3, %17
  %6 = phi ptr [ %19, %17 ], [ %2, %3 ]
  %7 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !119
  %9 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 3
  %10 = load float, ptr %9, align 8, !tbaa !120
  %11 = fcmp ult float %8, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %1, align 8, !tbaa !40
  %14 = add nsw i64 %13, 1
  store i64 %14, ptr %1, align 8, !tbaa !40
  %15 = getelementptr inbounds ptr, ptr %0, i64 %13
  store ptr %6, ptr %15, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 5
  br label %17

17:                                               ; preds = %12, %21
  %18 = phi ptr [ %16, %12 ], [ %24, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %5

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  tail call fastcc void @ActiveNodes(ptr noundef %0, ptr noundef %1, ptr noundef %23) #21
  %24 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 6
  br label %17

25:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @FreeNodes(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1, %4
  ret void

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._IntervalTree, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  tail call fastcc void @FreeNodes(ptr noundef %6) #21
  %7 = getelementptr inbounds %struct._IntervalTree, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  tail call fastcc void @FreeNodes(ptr noundef %8) #21
  %9 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #19
  br label %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @MagickAbsoluteValue(i64 noundef %0) unnamed_addr #7 {
  %2 = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0) unnamed_addr #7 {
  %2 = tail call i64 @llvm.smax.i64(i64 %0, i64 0)
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMin(i64 noundef %0) unnamed_addr #7 {
  %2 = tail call i64 @llvm.smin.i64(i64 %0, i64 255)
  ret i64 %2
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @InitializeList(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #10 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3, %14
  %6 = phi ptr [ %17, %14 ], [ %2, %3 ]
  %7 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load i64, ptr %1, align 8, !tbaa !40
  %12 = add nsw i64 %11, 1
  store i64 %12, ptr %1, align 8, !tbaa !40
  %13 = getelementptr inbounds ptr, ptr %0, i64 %11
  store ptr %6, ptr %13, align 8, !tbaa !25
  br label %14

14:                                               ; preds = %10, %5
  %15 = getelementptr inbounds %struct._IntervalTree, ptr %6, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  tail call fastcc void @InitializeList(ptr noundef %0, ptr noundef %1, ptr noundef %16) #21
  %17 = load ptr, ptr %7, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5

19:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @Stability(ptr noundef %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %12
  %4 = phi ptr [ %17, %12 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load float, ptr %4, align 8, !tbaa !84
  %10 = load float, ptr %6, align 8, !tbaa !84
  %11 = fsub float %9, %10
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi float [ %11, %8 ], [ 0.000000e+00, %3 ]
  %14 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 4
  store float %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  tail call fastcc void @Stability(ptr noundef %16) #21
  %17 = load ptr, ptr %5, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %3

19:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MeanStability(ptr noundef %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1, %23
  %4 = phi ptr [ %26, %23 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 3
  store float 0.000000e+00, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %3, %9
  %10 = phi float [ %15, %9 ], [ 0.000000e+00, %3 ]
  %11 = phi i64 [ %16, %9 ], [ 0, %3 ]
  %12 = phi ptr [ %18, %9 ], [ %7, %3 ]
  %13 = getelementptr inbounds %struct._IntervalTree, ptr %12, i64 0, i32 4
  %14 = load float, ptr %13, align 4, !tbaa !119
  %15 = fadd float %10, %14
  %16 = add nuw nsw i64 %11, 1
  %17 = getelementptr inbounds %struct._IntervalTree, ptr %12, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !121

20:                                               ; preds = %9
  %21 = sitofp i64 %16 to float
  %22 = fdiv float %15, %21
  store float %22, ptr %5, align 8, !tbaa !120
  br label %23

23:                                               ; preds = %20, %3
  %24 = getelementptr inbounds %struct._IntervalTree, ptr %4, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  tail call fastcc void @MeanStability(ptr noundef %25) #21
  %26 = load ptr, ptr %6, align 8, !tbaa !82
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %3

28:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SegmentImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x ptr], align 16
  %7 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1820, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #19
  br label %14

14:                                               ; preds = %11, %5
  br label %15

15:                                               ; preds = %14, %42
  %16 = phi i64 [ %43, %42 ], [ 0, %14 ]
  %17 = tail call dereferenceable_or_null(2048) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 8) #20
  %18 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %16
  store ptr %17, ptr %18, align 8, !tbaa !25
  %19 = tail call dereferenceable_or_null(512) ptr @AcquireQuantumMemory(i64 noundef 256, i64 noundef 2) #20
  %20 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %16
  store ptr %19, ptr %20, align 8, !tbaa !25
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
  %30 = load ptr, ptr %29, align 8, !tbaa !25
  %31 = tail call ptr @RelinquishMagickMemory(ptr noundef %30) #19
  store ptr %31, ptr %29, align 8, !tbaa !25
  %32 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef %33) #19
  store ptr %34, ptr %32, align 8, !tbaa !25
  %35 = icmp sgt i64 %27, 1
  br i1 %35, label %26, label %36, !llvm.loop !122

36:                                               ; preds = %26, %24
  %37 = icmp eq ptr %0, null
  br i1 %37, label %75, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %41 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1833, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %40) #19
  br label %75

42:                                               ; preds = %15
  %43 = add nuw nsw i64 %16, 1
  %44 = icmp eq i64 %43, 3
  br i1 %44, label %45, label %15, !llvm.loop !123

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !124
  %48 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef %1) #19
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call fastcc void @InitializeHistogram(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %49) #21
  %50 = load ptr, ptr %7, align 16, !tbaa !25
  %51 = fcmp oeq double %4, 0.000000e+00
  %52 = select i1 %51, double 1.000000e+00, double %4
  %53 = load ptr, ptr %6, align 16, !tbaa !25
  tail call fastcc void @OptimalTau(ptr noundef %50, double noundef 2.000000e-01, double noundef %52, ptr noundef %53) #21
  %54 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !25
  %56 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !25
  tail call fastcc void @OptimalTau(ptr noundef %55, double noundef 2.000000e-01, double noundef %52, ptr noundef %57) #21
  %58 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  %59 = load ptr, ptr %58, align 16, !tbaa !25
  %60 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 2
  %61 = load ptr, ptr %60, align 16, !tbaa !25
  tail call fastcc void @OptimalTau(ptr noundef %59, double noundef 2.000000e-01, double noundef %52, ptr noundef %61) #21
  %62 = fptrunc double %3 to float
  %63 = call fastcc i32 @Classify(ptr noundef %0, ptr noundef nonnull %6, float noundef %62, i32 noundef %2) #21
  %64 = tail call i32 @TransformImageColorspace(ptr noundef %0, i32 noundef %47) #19
  br label %65

65:                                               ; preds = %45, %65
  %66 = phi i64 [ 0, %45 ], [ %73, %65 ]
  %67 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !25
  %69 = tail call ptr @RelinquishMagickMemory(ptr noundef %68) #19
  store ptr %69, ptr %67, align 8, !tbaa !25
  %70 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 %66
  %71 = load ptr, ptr %70, align 8, !tbaa !25
  %72 = tail call ptr @RelinquishMagickMemory(ptr noundef %71) #19
  store ptr %72, ptr %70, align 8, !tbaa !25
  %73 = add nuw nsw i64 %66, 1
  %74 = icmp eq i64 %73, 3
  br i1 %74, label %75, label %65, !llvm.loop !125

75:                                               ; preds = %65, %36, %38
  %76 = phi i32 [ 0, %38 ], [ 0, %36 ], [ %63, %65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  ret i32 %76
}

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @Classify(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct._ExtentPacket, align 8
  %11 = alloca %struct._ExtentPacket, align 8
  %12 = alloca %struct._ExtentPacket, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store ptr %0, ptr %5, align 8, !tbaa !25
  store float 2.500000e+00, ptr %6, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  store ptr null, ptr %8, align 8, !tbaa !25
  %17 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 32) #19
  %18 = call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 32) #19
  %19 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 32) #19
  %20 = load ptr, ptr %1, align 8, !tbaa !25
  %21 = call fastcc i64 @DefineRegion(ptr noundef %20, ptr noundef nonnull %12) #21, !range !29
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %88, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct._ExtentPacket, ptr %11, i64 0, i32 1
  %25 = getelementptr inbounds ptr, ptr %1, i64 1
  %26 = getelementptr inbounds %struct._ExtentPacket, ptr %10, i64 0, i32 1
  %27 = getelementptr inbounds ptr, ptr %1, i64 2
  %28 = load ptr, ptr %25, align 8, !tbaa !25
  br label %38

29:                                               ; preds = %49
  %30 = load ptr, ptr %1, align 8, !tbaa !25
  br label %31

31:                                               ; preds = %29, %38
  %32 = phi ptr [ %39, %38 ], [ %30, %29 ]
  %33 = phi ptr [ %40, %38 ], [ %50, %29 ]
  %34 = phi ptr [ %41, %38 ], [ %50, %29 ]
  %35 = phi ptr [ %42, %38 ], [ %52, %29 ]
  %36 = call fastcc i64 @DefineRegion(ptr noundef %32, ptr noundef nonnull %12) #21, !range !29
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %85, label %38, !llvm.loop !126

38:                                               ; preds = %23, %31
  %39 = phi ptr [ %20, %23 ], [ %32, %31 ]
  %40 = phi ptr [ %28, %23 ], [ %33, %31 ]
  %41 = phi ptr [ %28, %23 ], [ %34, %31 ]
  %42 = phi ptr [ null, %23 ], [ %35, %31 ]
  store i64 0, ptr %24, align 8, !tbaa !31
  %43 = call fastcc i64 @DefineRegion(ptr noundef %41, ptr noundef nonnull %11) #21, !range !29
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %31, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %27, align 8, !tbaa !25
  br label %55

47:                                               ; preds = %77
  %48 = load ptr, ptr %25, align 8, !tbaa !25
  br label %49

49:                                               ; preds = %47, %55
  %50 = phi ptr [ %56, %55 ], [ %48, %47 ]
  %51 = phi ptr [ %57, %55 ], [ %82, %47 ]
  %52 = phi ptr [ %58, %55 ], [ %65, %47 ]
  %53 = call fastcc i64 @DefineRegion(ptr noundef %50, ptr noundef nonnull %11) #21, !range !29
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %29, label %55, !llvm.loop !127

55:                                               ; preds = %45, %49
  %56 = phi ptr [ %50, %49 ], [ %40, %45 ]
  %57 = phi ptr [ %51, %49 ], [ %46, %45 ]
  %58 = phi ptr [ %52, %49 ], [ %42, %45 ]
  store i64 0, ptr %26, align 8, !tbaa !31
  %59 = call fastcc i64 @DefineRegion(ptr noundef %57, ptr noundef nonnull %10) #21, !range !29
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %49, label %61

61:                                               ; preds = %55, %77
  %62 = phi ptr [ %65, %77 ], [ %58, %55 ]
  %63 = load ptr, ptr %8, align 8, !tbaa !25
  %64 = icmp eq ptr %63, null
  %65 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #22
  br i1 %64, label %67, label %66

66:                                               ; preds = %61
  store ptr %65, ptr %62, align 8, !tbaa !35
  br label %68

67:                                               ; preds = %61
  store ptr %65, ptr %8, align 8, !tbaa !25
  br label %68

68:                                               ; preds = %67, %66
  %69 = icmp eq ptr %65, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %68
  %71 = load ptr, ptr %5, align 8, !tbaa !25
  %72 = icmp eq ptr %71, null
  br i1 %72, label %496, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 58
  %75 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 53
  %76 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %74, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 319, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %75) #19
  br label %496

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct._Cluster, ptr %65, i64 0, i32 4
  store i64 0, ptr %78, align 8, !tbaa !37
  %79 = getelementptr inbounds %struct._Cluster, ptr %65, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !38
  %80 = getelementptr inbounds %struct._Cluster, ptr %65, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !38
  %81 = getelementptr inbounds %struct._Cluster, ptr %65, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !38
  store ptr null, ptr %65, align 8, !tbaa !35
  %82 = load ptr, ptr %27, align 8, !tbaa !25
  %83 = call fastcc i64 @DefineRegion(ptr noundef %82, ptr noundef nonnull %10) #21, !range !29
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %47, label %61, !llvm.loop !128

85:                                               ; preds = %31
  %86 = load ptr, ptr %8, align 8, !tbaa !25
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %103

88:                                               ; preds = %4, %85
  %89 = call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #22
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load ptr, ptr %5, align 8, !tbaa !25
  %93 = icmp eq ptr %92, null
  br i1 %93, label %496, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct._Image, ptr %92, i64 0, i32 58
  %96 = getelementptr inbounds %struct._Image, ptr %92, i64 0, i32 53
  %97 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %95, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 339, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %96) #19
  br label %496

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct._Cluster, ptr %89, i64 0, i32 4
  store i64 0, ptr %99, align 8, !tbaa !37
  %100 = getelementptr inbounds %struct._Cluster, ptr %89, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !38
  %101 = getelementptr inbounds %struct._Cluster, ptr %89, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %101, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !38
  %102 = getelementptr inbounds %struct._Cluster, ptr %89, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %102, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !38
  store ptr null, ptr %89, align 8, !tbaa !35
  store ptr %89, ptr %8, align 8, !tbaa !25
  br label %103

103:                                              ; preds = %98, %85
  %104 = phi ptr [ %89, %98 ], [ %86, %85 ]
  store i32 1, ptr %14, align 4, !tbaa !75
  store i64 0, ptr %13, align 8, !tbaa !129
  %105 = load ptr, ptr %5, align 8, !tbaa !25
  %106 = getelementptr inbounds %struct._Image, ptr %105, i64 0, i32 58
  store ptr %106, ptr %9, align 8, !tbaa !25
  %107 = call ptr @AcquireVirtualCacheView(ptr noundef %105, ptr noundef nonnull %106) #19
  store ptr %107, ptr %7, align 8, !tbaa !25
  %108 = getelementptr inbounds %struct._Image, ptr %105, i64 0, i32 8
  %109 = load i64, ptr %108, align 8, !tbaa !42
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %206

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct._Image, ptr %105, i64 0, i32 7
  %113 = getelementptr inbounds %struct._Image, ptr %105, i64 0, i32 47
  br label %114

114:                                              ; preds = %111, %201
  %115 = phi i64 [ %202, %201 ], [ 0, %111 ]
  %116 = phi i64 [ %203, %201 ], [ 0, %111 ]
  %117 = load i64, ptr %112, align 8, !tbaa !44
  %118 = call ptr @GetCacheViewVirtualPixels(ptr noundef %107, i64 noundef 0, i64 noundef %116, i64 noundef %117, i64 noundef 1, ptr noundef nonnull %106) #25
  %119 = icmp eq ptr %118, null
  br i1 %119, label %206, label %120

120:                                              ; preds = %114
  %121 = load i64, ptr %112, align 8, !tbaa !44
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %191

123:                                              ; preds = %120, %187
  %124 = phi i64 [ %189, %187 ], [ 0, %120 ]
  %125 = phi ptr [ %188, %187 ], [ %118, %120 ]
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 2
  %127 = load i16, ptr %126, align 2, !tbaa !45
  %128 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %127) #21
  %129 = zext i8 %128 to i64
  %130 = add nuw nsw i64 %129, 3
  %131 = add nsw i64 %129, -3
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 1
  br label %133

133:                                              ; preds = %123, %184
  %134 = phi ptr [ %104, %123 ], [ %185, %184 ]
  %135 = getelementptr inbounds %struct._Cluster, ptr %134, i64 0, i32 1, i32 2
  %136 = load i64, ptr %135, align 8, !tbaa !46
  %137 = icmp sgt i64 %136, %130
  br i1 %137, label %184, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct._Cluster, ptr %134, i64 0, i32 1, i32 3
  %140 = load i64, ptr %139, align 8, !tbaa !47
  %141 = icmp slt i64 %140, %131
  br i1 %141, label %184, label %142

142:                                              ; preds = %138
  %143 = load i16, ptr %132, align 2, !tbaa !48
  %144 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %143) #21
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds %struct._Cluster, ptr %134, i64 0, i32 2, i32 2
  %147 = load i64, ptr %146, align 8, !tbaa !49
  %148 = add nsw i64 %147, -3
  %149 = icmp sgt i64 %148, %145
  br i1 %149, label %184, label %150

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct._Cluster, ptr %134, i64 0, i32 2, i32 3
  %152 = load i64, ptr %151, align 8, !tbaa !50
  %153 = add nsw i64 %152, 3
  %154 = icmp slt i64 %153, %145
  br i1 %154, label %184, label %155

155:                                              ; preds = %150
  %156 = load i16, ptr %125, align 2, !tbaa !51
  %157 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %156) #21
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds %struct._Cluster, ptr %134, i64 0, i32 3, i32 2
  %160 = load i64, ptr %159, align 8, !tbaa !52
  %161 = add nsw i64 %160, -3
  %162 = icmp sgt i64 %161, %158
  br i1 %162, label %184, label %163

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct._Cluster, ptr %134, i64 0, i32 3, i32 3
  %165 = load i64, ptr %164, align 8, !tbaa !53
  %166 = add nsw i64 %165, 3
  %167 = icmp slt i64 %166, %158
  br i1 %167, label %184, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct._Cluster, ptr %134, i64 0, i32 1
  %170 = getelementptr inbounds %struct._Cluster, ptr %134, i64 0, i32 2
  %171 = getelementptr inbounds %struct._Cluster, ptr %134, i64 0, i32 3
  %172 = uitofp i8 %128 to float
  %173 = load float, ptr %169, align 8, !tbaa !54
  %174 = fadd float %173, %172
  store float %174, ptr %169, align 8, !tbaa !54
  %175 = uitofp i8 %144 to float
  %176 = load float, ptr %170, align 8, !tbaa !55
  %177 = fadd float %176, %175
  store float %177, ptr %170, align 8, !tbaa !55
  %178 = uitofp i8 %157 to float
  %179 = load float, ptr %171, align 8, !tbaa !56
  %180 = fadd float %179, %178
  store float %180, ptr %171, align 8, !tbaa !56
  %181 = getelementptr inbounds %struct._Cluster, ptr %134, i64 0, i32 4
  %182 = load i64, ptr %181, align 8, !tbaa !37
  %183 = add nsw i64 %182, 1
  store i64 %183, ptr %181, align 8, !tbaa !37
  br label %187

184:                                              ; preds = %133, %138, %142, %150, %155, %163
  %185 = load ptr, ptr %134, align 8, !tbaa !25
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %133, !llvm.loop !130

187:                                              ; preds = %184, %168
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 1
  %189 = add nuw nsw i64 %124, 1
  %190 = icmp eq i64 %189, %121
  br i1 %190, label %191, label %123, !llvm.loop !131

191:                                              ; preds = %187, %120
  %192 = load ptr, ptr %113, align 8, !tbaa !97
  %193 = icmp eq ptr %192, null
  br i1 %193, label %201, label %194

194:                                              ; preds = %191
  call void @__kmpc_critical(ptr nonnull @1, i32 %16, ptr nonnull @.gomp_critical_user_MagickCore_Classify.var)
  %195 = add nsw i64 %115, 1
  store i64 %195, ptr %13, align 8, !tbaa !129
  %196 = load i64, ptr %108, align 8, !tbaa !42
  %197 = shl i64 %196, 1
  %198 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %105, i64 noundef %115, i64 noundef %197) #21
  call void @__kmpc_end_critical(ptr nonnull @1, i32 %16, ptr nonnull @.gomp_critical_user_MagickCore_Classify.var)
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  store i32 0, ptr %14, align 4, !tbaa !75
  br label %201

201:                                              ; preds = %194, %200, %191
  %202 = phi i64 [ %195, %194 ], [ %195, %200 ], [ %115, %191 ]
  %203 = add nuw nsw i64 %116, 1
  %204 = load i64, ptr %108, align 8, !tbaa !42
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %114, label %206, !llvm.loop !132

206:                                              ; preds = %114, %201, %103
  %207 = call ptr @DestroyCacheView(ptr noundef %107) #19
  store ptr %207, ptr %7, align 8, !tbaa !25
  br label %208

208:                                              ; preds = %206, %243
  %209 = phi i64 [ %245, %243 ], [ 0, %206 ]
  %210 = phi ptr [ %212, %243 ], [ %104, %206 ]
  %211 = phi ptr [ %244, %243 ], [ %104, %206 ]
  %212 = load ptr, ptr %210, align 8, !tbaa !35
  %213 = getelementptr inbounds %struct._Cluster, ptr %210, i64 0, i32 4
  %214 = load i64, ptr %213, align 8, !tbaa !37
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %208
  %217 = sitofp i64 %214 to double
  %218 = sitofp i64 %209 to float
  %219 = fmul float %218, %2
  %220 = fpext float %219 to double
  %221 = fdiv double %220, 1.000000e+02
  %222 = fcmp ugt double %221, %217
  br i1 %222, label %236, label %223

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct._Cluster, ptr %210, i64 0, i32 5
  store i64 %209, ptr %224, align 8, !tbaa !59
  %225 = sitofp i64 %214 to float
  %226 = getelementptr inbounds %struct._Cluster, ptr %210, i64 0, i32 1
  %227 = load float, ptr %226, align 8, !tbaa !54
  %228 = fdiv float %227, %225
  store float %228, ptr %226, align 8, !tbaa !54
  %229 = getelementptr inbounds %struct._Cluster, ptr %210, i64 0, i32 2
  %230 = load float, ptr %229, align 8, !tbaa !55
  %231 = fdiv float %230, %225
  store float %231, ptr %229, align 8, !tbaa !55
  %232 = getelementptr inbounds %struct._Cluster, ptr %210, i64 0, i32 3
  %233 = load float, ptr %232, align 8, !tbaa !56
  %234 = fdiv float %233, %225
  store float %234, ptr %232, align 8, !tbaa !56
  %235 = add nsw i64 %209, 1
  br label %243

236:                                              ; preds = %216, %208
  %237 = load ptr, ptr %8, align 8, !tbaa !25
  %238 = icmp eq ptr %210, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  store ptr %212, ptr %8, align 8, !tbaa !25
  br label %241

240:                                              ; preds = %236
  store ptr %212, ptr %211, align 8, !tbaa !35
  br label %241

241:                                              ; preds = %240, %239
  %242 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %210) #19
  br label %243

243:                                              ; preds = %241, %223
  %244 = phi ptr [ %210, %223 ], [ %211, %241 ]
  %245 = phi i64 [ %235, %223 ], [ %209, %241 ]
  %246 = icmp eq ptr %212, null
  br i1 %246, label %247, label %208, !llvm.loop !133

247:                                              ; preds = %243
  %248 = icmp eq i32 %3, 0
  br i1 %248, label %354, label %249

249:                                              ; preds = %247
  %250 = load ptr, ptr @stdout, align 8, !tbaa !25
  %251 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %250, ptr noundef nonnull @.str.9) #19
  %252 = load ptr, ptr @stdout, align 8, !tbaa !25
  %253 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %252, ptr noundef nonnull @.str.10) #19
  %254 = load ptr, ptr @stdout, align 8, !tbaa !25
  %255 = fpext float %2 to double
  %256 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %254, ptr noundef nonnull @.str.11, double noundef %255) #19
  %257 = load ptr, ptr @stdout, align 8, !tbaa !25
  %258 = load float, ptr %6, align 4, !tbaa !39
  %259 = fpext float %258 to double
  %260 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %257, ptr noundef nonnull @.str.12, double noundef %259) #19
  %261 = load ptr, ptr @stdout, align 8, !tbaa !25
  %262 = uitofp i64 %245 to double
  %263 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %261, ptr noundef nonnull @.str.13, double noundef %262) #19
  %264 = load ptr, ptr @stdout, align 8, !tbaa !25
  %265 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %264, ptr noundef nonnull @.str.14) #19
  %266 = load ptr, ptr @stdout, align 8, !tbaa !25
  %267 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %266, ptr noundef nonnull @.str.15) #19
  %268 = load ptr, ptr %8, align 8, !tbaa !25
  %269 = icmp eq ptr %268, null
  br i1 %269, label %316, label %270

270:                                              ; preds = %249, %270
  %271 = phi ptr [ %280, %270 ], [ %268, %249 ]
  %272 = load ptr, ptr @stdout, align 8, !tbaa !25
  %273 = getelementptr inbounds %struct._Cluster, ptr %271, i64 0, i32 5
  %274 = load i64, ptr %273, align 8, !tbaa !59
  %275 = sitofp i64 %274 to double
  %276 = getelementptr inbounds %struct._Cluster, ptr %271, i64 0, i32 4
  %277 = load i64, ptr %276, align 8, !tbaa !37
  %278 = sitofp i64 %277 to double
  %279 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %272, ptr noundef nonnull @.str.16, double noundef %275, double noundef %278) #19
  %280 = load ptr, ptr %271, align 8, !tbaa !25
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %270, !llvm.loop !134

282:                                              ; preds = %270
  %283 = load ptr, ptr @stdout, align 8, !tbaa !25
  %284 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %283, ptr noundef nonnull @.str.17, i32 noundef 3) #19
  %285 = load ptr, ptr @stdout, align 8, !tbaa !25
  %286 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %285, ptr noundef nonnull @.str.18) #19
  br i1 %269, label %346, label %287

287:                                              ; preds = %282, %287
  %288 = phi ptr [ %314, %287 ], [ %268, %282 ]
  %289 = load ptr, ptr @stdout, align 8, !tbaa !25
  %290 = getelementptr inbounds %struct._Cluster, ptr %288, i64 0, i32 5
  %291 = load i64, ptr %290, align 8, !tbaa !59
  %292 = sitofp i64 %291 to double
  %293 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %289, ptr noundef nonnull @.str.19, double noundef %292) #19
  %294 = load ptr, ptr @stdout, align 8, !tbaa !25
  %295 = getelementptr inbounds %struct._Cluster, ptr %288, i64 0, i32 1, i32 2
  %296 = load i64, ptr %295, align 8, !tbaa !46
  %297 = sitofp i64 %296 to double
  %298 = getelementptr inbounds %struct._Cluster, ptr %288, i64 0, i32 1, i32 3
  %299 = load i64, ptr %298, align 8, !tbaa !47
  %300 = sitofp i64 %299 to double
  %301 = getelementptr inbounds %struct._Cluster, ptr %288, i64 0, i32 2, i32 2
  %302 = load i64, ptr %301, align 8, !tbaa !49
  %303 = sitofp i64 %302 to double
  %304 = getelementptr inbounds %struct._Cluster, ptr %288, i64 0, i32 2, i32 3
  %305 = load i64, ptr %304, align 8, !tbaa !50
  %306 = sitofp i64 %305 to double
  %307 = getelementptr inbounds %struct._Cluster, ptr %288, i64 0, i32 3, i32 2
  %308 = load i64, ptr %307, align 8, !tbaa !52
  %309 = sitofp i64 %308 to double
  %310 = getelementptr inbounds %struct._Cluster, ptr %288, i64 0, i32 3, i32 3
  %311 = load i64, ptr %310, align 8, !tbaa !53
  %312 = sitofp i64 %311 to double
  %313 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %294, ptr noundef nonnull @.str.20, double noundef %297, double noundef %300, double noundef %303, double noundef %306, double noundef %309, double noundef %312) #19
  %314 = load ptr, ptr %288, align 8, !tbaa !25
  %315 = icmp eq ptr %314, null
  br i1 %315, label %321, label %287, !llvm.loop !135

316:                                              ; preds = %249
  %317 = load ptr, ptr @stdout, align 8, !tbaa !25
  %318 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %317, ptr noundef nonnull @.str.17, i32 noundef 3) #19
  %319 = load ptr, ptr @stdout, align 8, !tbaa !25
  %320 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %319, ptr noundef nonnull @.str.18) #19
  br label %321

321:                                              ; preds = %287, %316
  %322 = load ptr, ptr @stdout, align 8, !tbaa !25
  %323 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %322, ptr noundef nonnull @.str.21, i32 noundef 3) #19
  %324 = load ptr, ptr @stdout, align 8, !tbaa !25
  %325 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %324, ptr noundef nonnull @.str.22) #19
  br i1 %269, label %351, label %326

326:                                              ; preds = %321, %326
  %327 = phi ptr [ %344, %326 ], [ %268, %321 ]
  %328 = load ptr, ptr @stdout, align 8, !tbaa !25
  %329 = getelementptr inbounds %struct._Cluster, ptr %327, i64 0, i32 5
  %330 = load i64, ptr %329, align 8, !tbaa !59
  %331 = sitofp i64 %330 to double
  %332 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %328, ptr noundef nonnull @.str.19, double noundef %331) #19
  %333 = load ptr, ptr @stdout, align 8, !tbaa !25
  %334 = getelementptr inbounds %struct._Cluster, ptr %327, i64 0, i32 1
  %335 = load float, ptr %334, align 8, !tbaa !54
  %336 = fpext float %335 to double
  %337 = getelementptr inbounds %struct._Cluster, ptr %327, i64 0, i32 2
  %338 = load float, ptr %337, align 8, !tbaa !55
  %339 = fpext float %338 to double
  %340 = getelementptr inbounds %struct._Cluster, ptr %327, i64 0, i32 3
  %341 = load float, ptr %340, align 8, !tbaa !56
  %342 = fpext float %341 to double
  %343 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %333, ptr noundef nonnull @.str.23, double noundef %336, double noundef %339, double noundef %342) #19
  %344 = load ptr, ptr %327, align 8, !tbaa !25
  %345 = icmp eq ptr %344, null
  br i1 %345, label %351, label %326, !llvm.loop !136

346:                                              ; preds = %282
  %347 = load ptr, ptr @stdout, align 8, !tbaa !25
  %348 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %347, ptr noundef nonnull @.str.21, i32 noundef 3) #19
  %349 = load ptr, ptr @stdout, align 8, !tbaa !25
  %350 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %349, ptr noundef nonnull @.str.22) #19
  br label %351

351:                                              ; preds = %326, %346, %321
  %352 = load ptr, ptr @stdout, align 8, !tbaa !25
  %353 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %352, ptr noundef nonnull @.str.24) #19
  br label %354

354:                                              ; preds = %351, %247
  %355 = icmp ugt i64 %245, 256
  br i1 %355, label %356, label %363

356:                                              ; preds = %354
  %357 = load ptr, ptr %5, align 8, !tbaa !25
  %358 = icmp eq ptr %357, null
  br i1 %358, label %496, label %359

359:                                              ; preds = %356
  %360 = getelementptr inbounds %struct._Image, ptr %357, i64 0, i32 58
  %361 = getelementptr inbounds %struct._Image, ptr %357, i64 0, i32 53
  %362 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %360, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 500, i32 noundef 465, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4, ptr noundef nonnull %361) #19
  br label %496

363:                                              ; preds = %354
  %364 = call dereferenceable_or_null(2052) ptr @AcquireQuantumMemory(i64 noundef 513, i64 noundef 4) #20
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %373

366:                                              ; preds = %363
  %367 = load ptr, ptr %5, align 8, !tbaa !25
  %368 = icmp eq ptr %367, null
  br i1 %368, label %496, label %369

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct._Image, ptr %367, i64 0, i32 58
  %371 = getelementptr inbounds %struct._Image, ptr %367, i64 0, i32 53
  %372 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %370, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 507, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %371) #19
  br label %496

373:                                              ; preds = %363
  %374 = getelementptr inbounds float, ptr %364, i64 255
  store ptr %374, ptr %15, align 8, !tbaa !25
  %375 = getelementptr float, ptr %374, i64 -254
  %376 = getelementptr float, ptr %374, i64 -253
  %377 = getelementptr float, ptr %374, i64 -252
  br label %378

378:                                              ; preds = %409, %373
  %379 = phi i64 [ 0, %373 ], [ %410, %409 ]
  %380 = phi <4 x i64> [ <i64 -255, i64 -254, i64 -253, i64 -252>, %373 ], [ %411, %409 ]
  %381 = insertelement <4 x i64> poison, i64 %379, i64 0
  %382 = shufflevector <4 x i64> %381, <4 x i64> poison, <4 x i32> zeroinitializer
  %383 = or disjoint <4 x i64> %382, <i64 0, i64 1, i64 2, i64 3>
  %384 = icmp ult <4 x i64> %383, <i64 511, i64 511, i64 511, i64 511>
  %385 = sitofp <4 x i64> %380 to <4 x float>
  %386 = extractelement <4 x i1> %384, i64 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %378
  %388 = getelementptr inbounds float, ptr %364, i64 %379
  %389 = fmul <4 x float> %385, %385
  %390 = extractelement <4 x float> %389, i64 0
  store float %390, ptr %388, align 4, !tbaa !39
  br label %391

391:                                              ; preds = %387, %378
  %392 = extractelement <4 x i1> %384, i64 1
  br i1 %392, label %393, label %397

393:                                              ; preds = %391
  %394 = getelementptr float, ptr %375, i64 %379
  %395 = fmul <4 x float> %385, %385
  %396 = extractelement <4 x float> %395, i64 1
  store float %396, ptr %394, align 4, !tbaa !39
  br label %397

397:                                              ; preds = %393, %391
  %398 = extractelement <4 x i1> %384, i64 2
  br i1 %398, label %399, label %403

399:                                              ; preds = %397
  %400 = getelementptr float, ptr %376, i64 %379
  %401 = fmul <4 x float> %385, %385
  %402 = extractelement <4 x float> %401, i64 2
  store float %402, ptr %400, align 4, !tbaa !39
  br label %403

403:                                              ; preds = %399, %397
  %404 = extractelement <4 x i1> %384, i64 3
  br i1 %404, label %405, label %409

405:                                              ; preds = %403
  %406 = getelementptr float, ptr %377, i64 %379
  %407 = fmul <4 x float> %385, %385
  %408 = extractelement <4 x float> %407, i64 3
  store float %408, ptr %406, align 4, !tbaa !39
  br label %409

409:                                              ; preds = %405, %403
  %410 = add i64 %379, 4
  %411 = add <4 x i64> %380, <i64 4, i64 4, i64 4, i64 4>
  %412 = icmp eq i64 %410, 512
  br i1 %412, label %413, label %378, !llvm.loop !137

413:                                              ; preds = %409
  %414 = load ptr, ptr %5, align 8, !tbaa !25
  %415 = call i32 @AcquireImageColormap(ptr noundef %414, i64 noundef %245) #19
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %423, label %417

417:                                              ; preds = %413
  %418 = load ptr, ptr %8, align 8, !tbaa !25
  %419 = icmp eq ptr %418, null
  br i1 %419, label %456, label %420

420:                                              ; preds = %417
  %421 = getelementptr inbounds %struct._Image, ptr %414, i64 0, i32 11
  %422 = load ptr, ptr %421, align 8, !tbaa !138
  br label %429

423:                                              ; preds = %413
  %424 = icmp eq ptr %414, null
  br i1 %424, label %496, label %425

425:                                              ; preds = %423
  %426 = getelementptr inbounds %struct._Image, ptr %414, i64 0, i32 58
  %427 = getelementptr inbounds %struct._Image, ptr %414, i64 0, i32 53
  %428 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %426, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 516, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %427) #19
  br label %496

429:                                              ; preds = %420, %429
  %430 = phi ptr [ %418, %420 ], [ %454, %429 ]
  %431 = phi i64 [ 0, %420 ], [ %453, %429 ]
  %432 = getelementptr inbounds %struct._Cluster, ptr %430, i64 0, i32 1
  %433 = load float, ptr %432, align 8, !tbaa !54
  %434 = fpext float %433 to double
  %435 = fadd double %434, 5.000000e-01
  %436 = fptoui double %435 to i8
  %437 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %436) #21
  %438 = getelementptr inbounds %struct._PixelPacket, ptr %422, i64 %431, i32 2
  store i16 %437, ptr %438, align 2, !tbaa !45
  %439 = getelementptr inbounds %struct._Cluster, ptr %430, i64 0, i32 2
  %440 = load float, ptr %439, align 8, !tbaa !55
  %441 = fpext float %440 to double
  %442 = fadd double %441, 5.000000e-01
  %443 = fptoui double %442 to i8
  %444 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %443) #21
  %445 = getelementptr inbounds %struct._PixelPacket, ptr %422, i64 %431, i32 1
  store i16 %444, ptr %445, align 2, !tbaa !48
  %446 = getelementptr inbounds %struct._Cluster, ptr %430, i64 0, i32 3
  %447 = load float, ptr %446, align 8, !tbaa !56
  %448 = fpext float %447 to double
  %449 = fadd double %448, 5.000000e-01
  %450 = fptoui double %449 to i8
  %451 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %450) #21
  %452 = getelementptr inbounds %struct._PixelPacket, ptr %422, i64 %431
  store i16 %451, ptr %452, align 2, !tbaa !51
  %453 = add nuw nsw i64 %431, 1
  %454 = load ptr, ptr %430, align 8, !tbaa !25
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %429, !llvm.loop !139

456:                                              ; preds = %429, %417
  %457 = getelementptr inbounds %struct._Image, ptr %414, i64 0, i32 58
  store ptr %457, ptr %9, align 8, !tbaa !25
  %458 = call ptr @AcquireAuthenticCacheView(ptr noundef %414, ptr noundef nonnull %457) #19
  store ptr %458, ptr %7, align 8, !tbaa !25
  %459 = getelementptr inbounds %struct._Image, ptr %414, i64 0, i32 8
  %460 = load i64, ptr %459, align 8, !tbaa !42
  %461 = call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  %462 = shl i64 %461, 5
  %463 = icmp ugt i64 %460, %462
  br i1 %463, label %464, label %472

464:                                              ; preds = %456
  %465 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %414) #19
  %466 = icmp eq i32 %465, 3
  br i1 %466, label %472, label %467

467:                                              ; preds = %464
  %468 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %414) #19
  %469 = icmp eq i32 %468, 3
  br i1 %469, label %472, label %470

470:                                              ; preds = %467
  %471 = call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  br label %476

472:                                              ; preds = %467, %464, %456
  %473 = call i64 @GetMagickResourceLimit(i32 noundef 6) #19
  %474 = icmp ult i64 %473, 2
  %475 = select i1 %474, i64 1, i64 2
  br label %476

476:                                              ; preds = %472, %470
  %477 = phi i64 [ %471, %470 ], [ %475, %472 ]
  %478 = trunc i64 %477 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %16, i32 %478)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 8, ptr nonnull @Classify.omp_outlined, ptr nonnull %5, ptr nonnull %14, ptr nonnull %7, ptr nonnull %9, ptr nonnull %8, ptr nonnull %15, ptr nonnull %6, ptr nonnull %13)
  %479 = load ptr, ptr %7, align 8, !tbaa !25
  %480 = call ptr @DestroyCacheView(ptr noundef %479) #19
  store ptr %480, ptr %7, align 8, !tbaa !25
  %481 = load ptr, ptr %5, align 8, !tbaa !25
  %482 = call i32 @SyncImage(ptr noundef %481) #19
  %483 = load i32, ptr %14, align 4, !tbaa !75
  %484 = and i32 %483, %482
  store i32 %484, ptr %14, align 4, !tbaa !75
  %485 = load ptr, ptr %8, align 8, !tbaa !25
  %486 = icmp eq ptr %485, null
  br i1 %486, label %492, label %487

487:                                              ; preds = %476, %487
  %488 = phi ptr [ %489, %487 ], [ %485, %476 ]
  %489 = load ptr, ptr %488, align 8, !tbaa !35
  %490 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %488) #19
  %491 = icmp eq ptr %489, null
  br i1 %491, label %492, label %487, !llvm.loop !140

492:                                              ; preds = %487, %476
  %493 = load ptr, ptr %15, align 8, !tbaa !25
  %494 = getelementptr inbounds float, ptr %493, i64 -255
  store ptr %494, ptr %15, align 8, !tbaa !25
  %495 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %494) #19
  br label %496

496:                                              ; preds = %423, %425, %366, %369, %356, %359, %91, %94, %70, %73, %492
  %497 = phi i32 [ 1, %492 ], [ 0, %73 ], [ 0, %70 ], [ 0, %94 ], [ 0, %91 ], [ 0, %359 ], [ 0, %356 ], [ 0, %369 ], [ 0, %366 ], [ 0, %425 ], [ 0, %423 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret i32 %497
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #14

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #15

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @Classify.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #16 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %275

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  store i64 0, ptr %11, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  store i64 %18, ptr %12, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  store i64 1, ptr %13, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #14
  store i32 0, ptr %14, align 4, !tbaa !75
  %21 = load i32, ptr %0, align 4, !tbaa !75
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !40
  %24 = load i64, ptr %11, align 8, !tbaa !40
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %274, label %26

26:                                               ; preds = %20, %266
  %27 = phi i64 [ %272, %266 ], [ %23, %20 ]
  %28 = phi i64 [ %270, %266 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %266, label %30

30:                                               ; preds = %26, %260
  %31 = phi i64 [ %261, %260 ], [ %28, %26 ]
  %32 = load i32, ptr %3, align 4, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %260, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !25
  %36 = load ptr, ptr %2, align 8, !tbaa !25
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !44
  %39 = load ptr, ptr %5, align 8, !tbaa !25
  %40 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %35, i64 noundef 0, i64 noundef %31, i64 noundef %38, i64 noundef 1, ptr noundef %39) #25
  %41 = icmp eq ptr %40, null
  br i1 %41, label %259, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr %4, align 8, !tbaa !25
  %44 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %43) #19
  %45 = load ptr, ptr %2, align 8, !tbaa !25
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !44
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %239

49:                                               ; preds = %42
  %50 = icmp eq ptr %44, null
  br label %51

51:                                               ; preds = %49, %232
  %52 = phi ptr [ %45, %49 ], [ %233, %232 ]
  %53 = phi ptr [ %40, %49 ], [ %234, %232 ]
  %54 = phi i64 [ 0, %49 ], [ %235, %232 ]
  %55 = getelementptr inbounds i16, ptr %44, i64 %54
  br i1 %50, label %57, label %56

56:                                               ; preds = %51
  store i16 0, ptr %55, align 2, !tbaa !78
  br label %57

57:                                               ; preds = %56, %51
  %58 = load ptr, ptr %6, align 8, !tbaa !25
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 2
  %62 = load i16, ptr %61, align 2, !tbaa !45
  %63 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %62) #21
  %64 = zext i8 %63 to i64
  %65 = add nuw nsw i64 %64, 3
  %66 = add nsw i64 %64, -3
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 1
  br label %75

68:                                               ; preds = %115, %57
  %69 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 10
  %70 = load i64, ptr %69, align 8, !tbaa !141
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %232

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 2
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 1
  br label %118

75:                                               ; preds = %60, %115
  %76 = phi ptr [ %58, %60 ], [ %116, %115 ]
  %77 = getelementptr inbounds %struct._Cluster, ptr %76, i64 0, i32 1, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !46
  %79 = icmp sgt i64 %78, %65
  br i1 %79, label %115, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct._Cluster, ptr %76, i64 0, i32 1, i32 3
  %82 = load i64, ptr %81, align 8, !tbaa !47
  %83 = icmp slt i64 %82, %66
  br i1 %83, label %115, label %84

84:                                               ; preds = %80
  %85 = load i16, ptr %67, align 2, !tbaa !48
  %86 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %85) #21
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds %struct._Cluster, ptr %76, i64 0, i32 2, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !49
  %90 = add nsw i64 %89, -3
  %91 = icmp sgt i64 %90, %87
  br i1 %91, label %115, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct._Cluster, ptr %76, i64 0, i32 2, i32 3
  %94 = load i64, ptr %93, align 8, !tbaa !50
  %95 = add nsw i64 %94, 3
  %96 = icmp slt i64 %95, %87
  br i1 %96, label %115, label %97

97:                                               ; preds = %92
  %98 = load i16, ptr %53, align 2, !tbaa !51
  %99 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %98) #21
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds %struct._Cluster, ptr %76, i64 0, i32 3, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !52
  %103 = add nsw i64 %102, -3
  %104 = icmp sgt i64 %103, %100
  br i1 %104, label %115, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct._Cluster, ptr %76, i64 0, i32 3, i32 3
  %107 = load i64, ptr %106, align 8, !tbaa !53
  %108 = add nsw i64 %107, 3
  %109 = icmp slt i64 %108, %100
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  br i1 %50, label %232, label %111

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct._Cluster, ptr %76, i64 0, i32 5
  %113 = load i64, ptr %112, align 8, !tbaa !59
  %114 = trunc i64 %113 to i16
  store i16 %114, ptr %55, align 2, !tbaa !78
  br label %232

115:                                              ; preds = %75, %80, %84, %92, %97, %105
  %116 = load ptr, ptr %76, align 8, !tbaa !25
  %117 = icmp eq ptr %116, null
  br i1 %117, label %68, label %75, !llvm.loop !142

118:                                              ; preds = %72, %225
  %119 = phi i64 [ %70, %72 ], [ %228, %225 ]
  %120 = phi ptr [ %52, %72 ], [ %227, %225 ]
  %121 = phi ptr [ %52, %72 ], [ %226, %225 ]
  %122 = phi i64 [ 0, %72 ], [ %230, %225 ]
  %123 = phi float [ 0.000000e+00, %72 ], [ %229, %225 ]
  %124 = getelementptr inbounds %struct._Image, ptr %121, i64 0, i32 11
  %125 = load ptr, ptr %124, align 8, !tbaa !138
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 %122
  %127 = load ptr, ptr %7, align 8, !tbaa !25
  %128 = load i16, ptr %73, align 2, !tbaa !45
  %129 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %128) #21
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 %122, i32 2
  %132 = load i16, ptr %131, align 2, !tbaa !45
  %133 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %132) #21
  %134 = zext i8 %133 to i64
  %135 = sub nsw i64 %130, %134
  %136 = getelementptr inbounds float, ptr %127, i64 %135
  %137 = load float, ptr %136, align 4, !tbaa !39
  %138 = load i16, ptr %74, align 2, !tbaa !48
  %139 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %138) #21
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 %122, i32 1
  %142 = load i16, ptr %141, align 2, !tbaa !48
  %143 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %142) #21
  %144 = zext i8 %143 to i64
  %145 = sub nsw i64 %140, %144
  %146 = getelementptr inbounds float, ptr %127, i64 %145
  %147 = load float, ptr %146, align 4, !tbaa !39
  %148 = fadd float %137, %147
  %149 = load i16, ptr %53, align 2, !tbaa !51
  %150 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %149) #21
  %151 = zext i8 %150 to i64
  %152 = load i16, ptr %126, align 2, !tbaa !51
  %153 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %152) #21
  %154 = zext i8 %153 to i64
  %155 = sub nsw i64 %151, %154
  %156 = getelementptr inbounds float, ptr %127, i64 %155
  %157 = load float, ptr %156, align 4, !tbaa !39
  %158 = fadd float %148, %157
  %159 = icmp sgt i64 %119, 0
  br i1 %159, label %160, label %225

160:                                              ; preds = %118, %160
  %161 = phi ptr [ %210, %160 ], [ %121, %118 ]
  %162 = phi i64 [ %209, %160 ], [ 0, %118 ]
  %163 = phi float [ %208, %160 ], [ 0.000000e+00, %118 ]
  %164 = getelementptr inbounds %struct._Image, ptr %161, i64 0, i32 11
  %165 = load ptr, ptr %164, align 8, !tbaa !138
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 %162
  %167 = load ptr, ptr %7, align 8, !tbaa !25
  %168 = load i16, ptr %73, align 2, !tbaa !45
  %169 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %168) #21
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 %162, i32 2
  %172 = load i16, ptr %171, align 2, !tbaa !45
  %173 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %172) #21
  %174 = zext i8 %173 to i64
  %175 = sub nsw i64 %170, %174
  %176 = getelementptr inbounds float, ptr %167, i64 %175
  %177 = load float, ptr %176, align 4, !tbaa !39
  %178 = load i16, ptr %74, align 2, !tbaa !48
  %179 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %178) #21
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 %162, i32 1
  %182 = load i16, ptr %181, align 2, !tbaa !48
  %183 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %182) #21
  %184 = zext i8 %183 to i64
  %185 = sub nsw i64 %180, %184
  %186 = getelementptr inbounds float, ptr %167, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !39
  %188 = fadd float %177, %187
  %189 = load i16, ptr %53, align 2, !tbaa !51
  %190 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %189) #21
  %191 = zext i8 %190 to i64
  %192 = load i16, ptr %166, align 2, !tbaa !51
  %193 = call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %192) #21
  %194 = zext i8 %193 to i64
  %195 = sub nsw i64 %191, %194
  %196 = getelementptr inbounds float, ptr %167, i64 %195
  %197 = load float, ptr %196, align 4, !tbaa !39
  %198 = fadd float %188, %197
  %199 = fdiv float %158, %198
  %200 = fpext float %199 to double
  %201 = load float, ptr %8, align 4, !tbaa !39
  %202 = fpext float %201 to double
  %203 = fadd double %202, -1.000000e+00
  %204 = fdiv double 1.000000e+00, %203
  %205 = call double @pow(double noundef %200, double noundef %204) #19
  %206 = fpext float %163 to double
  %207 = fadd double %205, %206
  %208 = fptrunc double %207 to float
  %209 = add nuw nsw i64 %162, 1
  %210 = load ptr, ptr %2, align 8, !tbaa !25
  %211 = getelementptr inbounds %struct._Image, ptr %210, i64 0, i32 10
  %212 = load i64, ptr %211, align 8, !tbaa !141
  %213 = icmp slt i64 %209, %212
  br i1 %213, label %160, label %214, !llvm.loop !143

214:                                              ; preds = %160
  %215 = fcmp une float %208, 0.000000e+00
  br i1 %215, label %216, label %225

216:                                              ; preds = %214
  %217 = fpext float %208 to double
  %218 = fdiv double 1.000000e+00, %217
  %219 = fpext float %123 to double
  %220 = fcmp ogt double %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = fptrunc double %218 to float
  br i1 %50, label %225, label %223

223:                                              ; preds = %221
  %224 = trunc i64 %122 to i16
  store i16 %224, ptr %55, align 2, !tbaa !78
  br label %225

225:                                              ; preds = %118, %214, %216, %223, %221
  %226 = phi ptr [ %210, %223 ], [ %210, %221 ], [ %210, %216 ], [ %210, %214 ], [ %121, %118 ]
  %227 = phi ptr [ %210, %223 ], [ %210, %221 ], [ %210, %216 ], [ %210, %214 ], [ %120, %118 ]
  %228 = phi i64 [ %212, %223 ], [ %212, %221 ], [ %212, %216 ], [ %212, %214 ], [ %119, %118 ]
  %229 = phi float [ %222, %223 ], [ %222, %221 ], [ %123, %216 ], [ %123, %214 ], [ %123, %118 ]
  %230 = add nuw nsw i64 %122, 1
  %231 = icmp slt i64 %230, %228
  br i1 %231, label %118, label %232, !llvm.loop !144

232:                                              ; preds = %225, %68, %111, %110
  %233 = phi ptr [ %52, %68 ], [ %52, %111 ], [ %52, %110 ], [ %227, %225 ]
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  %235 = add nuw nsw i64 %54, 1
  %236 = getelementptr inbounds %struct._Image, ptr %233, i64 0, i32 7
  %237 = load i64, ptr %236, align 8, !tbaa !44
  %238 = icmp slt i64 %235, %237
  br i1 %238, label %51, label %239, !llvm.loop !145

239:                                              ; preds = %232, %42
  %240 = load ptr, ptr %4, align 8, !tbaa !25
  %241 = load ptr, ptr %5, align 8, !tbaa !25
  %242 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %240, ptr noundef %241) #25
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i32 0, ptr %3, align 4, !tbaa !75
  br label %245

245:                                              ; preds = %244, %239
  %246 = load ptr, ptr %2, align 8, !tbaa !25
  %247 = getelementptr inbounds %struct._Image, ptr %246, i64 0, i32 47
  %248 = load ptr, ptr %247, align 8, !tbaa !97
  %249 = icmp eq ptr %248, null
  br i1 %249, label %260, label %250

250:                                              ; preds = %245
  call void @__kmpc_critical(ptr nonnull @1, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_Classify.var)
  %251 = load ptr, ptr %2, align 8, !tbaa !25
  %252 = load i64, ptr %9, align 8, !tbaa !129
  %253 = add nsw i64 %252, 1
  store i64 %253, ptr %9, align 8, !tbaa !129
  %254 = getelementptr inbounds %struct._Image, ptr %251, i64 0, i32 8
  %255 = load i64, ptr %254, align 8, !tbaa !42
  %256 = shl i64 %255, 1
  %257 = call fastcc i32 @SetImageProgress(ptr noundef %251, i64 noundef %252, i64 noundef %256) #21
  call void @__kmpc_end_critical(ptr nonnull @1, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_Classify.var)
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %250, %34
  store i32 0, ptr %3, align 4, !tbaa !75
  br label %260

260:                                              ; preds = %259, %245, %250, %30
  %261 = add nsw i64 %31, 1
  %262 = load i64, ptr %12, align 8, !tbaa !40
  %263 = icmp slt i64 %31, %262
  br i1 %263, label %30, label %264

264:                                              ; preds = %260
  %265 = load i64, ptr %11, align 8, !tbaa !40
  br label %266

266:                                              ; preds = %264, %26
  %267 = phi i64 [ %28, %26 ], [ %265, %264 ]
  %268 = phi i64 [ %27, %26 ], [ %262, %264 ]
  %269 = load i64, ptr %13, align 8, !tbaa !40
  %270 = add nsw i64 %269, %267
  store i64 %270, ptr %11, align 8, !tbaa !40
  %271 = add nsw i64 %269, %268
  %272 = call i64 @llvm.smin.i64(i64 %271, i64 %18)
  store i64 %272, ptr %12, align 8, !tbaa !40
  %273 = icmp sgt i64 %270, %272
  br i1 %273, label %274, label %26

274:                                              ; preds = %266, %20
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %275

275:                                              ; preds = %274, %10
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #14

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #14

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare !callback !146 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #14

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

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
attributes #14 = { nounwind }
attributes #15 = { convergent nounwind }
attributes #16 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind optsize allocsize(0,1) }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize allocsize(0) }
attributes #23 = { nounwind optsize willreturn memory(none) }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 12976}
!7 = !{!"_Image", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !15, i64 104, !16, i64 112, !8, i64 208, !12, i64 216, !8, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !11, i64 256, !15, i64 264, !15, i64 272, !18, i64 280, !18, i64 312, !18, i64 344, !15, i64 376, !15, i64 384, !15, i64 392, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !12, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !19, i64 480, !20, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !11, i64 12904, !11, i64 12912, !22, i64 12920, !8, i64 12976, !11, i64 12984, !12, i64 12992, !23, i64 13000, !23, i64 13032, !12, i64 13064, !11, i64 13072, !11, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !8, i64 13112, !8, i64 13116, !13, i64 13120, !12, i64 13128, !18, i64 13136, !12, i64 13168, !12, i64 13176, !8, i64 13184, !8, i64 13188, !24, i64 13192, !8, i64 13200, !11, i64 13208, !11, i64 13216, !8, i64 13224, !11, i64 13232}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"_PixelPacket", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!14 = !{!"short", !9, i64 0}
!15 = !{!"double", !9, i64 0}
!16 = !{!"_ChromaticityInfo", !17, i64 0, !17, i64 24, !17, i64 48, !17, i64 72}
!17 = !{!"_PrimaryInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!"_RectangleInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!19 = !{!"_ErrorInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!20 = !{!"_TimerInfo", !21, i64 0, !21, i64 24, !8, i64 48, !11, i64 56}
!21 = !{!"_Timer", !15, i64 0, !15, i64 8, !15, i64 16}
!22 = !{!"_ExceptionInfo", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 40, !11, i64 48}
!23 = !{!"_ProfileInfo", !12, i64 0, !11, i64 8, !12, i64 16, !11, i64 24}
!24 = !{!"long long", !9, i64 0}
!25 = !{!12, !12, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{i64 0, i64 2}
!30 = distinct !{!30, !27}
!31 = !{!32, !11, i64 8}
!32 = !{!"_ExtentPacket", !33, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!33 = !{!"float", !9, i64 0}
!34 = distinct !{!34, !27}
!35 = !{!36, !12, i64 0}
!36 = !{!"_Cluster", !12, i64 0, !32, i64 8, !32, i64 40, !32, i64 72, !11, i64 104, !11, i64 112}
!37 = !{!36, !11, i64 104}
!38 = !{i64 0, i64 4, !39, i64 8, i64 8, !40, i64 16, i64 8, !40, i64 24, i64 8, !40}
!39 = !{!33, !33, i64 0}
!40 = !{!11, !11, i64 0}
!41 = distinct !{!41, !27}
!42 = !{!7, !11, i64 48}
!43 = distinct !{!43, !27}
!44 = !{!7, !11, i64 40}
!45 = !{!13, !14, i64 4}
!46 = !{!36, !11, i64 24}
!47 = !{!36, !11, i64 32}
!48 = !{!13, !14, i64 2}
!49 = !{!36, !11, i64 56}
!50 = !{!36, !11, i64 64}
!51 = !{!13, !14, i64 0}
!52 = !{!36, !11, i64 88}
!53 = !{!36, !11, i64 96}
!54 = !{!36, !33, i64 8}
!55 = !{!36, !33, i64 40}
!56 = !{!36, !33, i64 72}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = !{!36, !11, i64 112}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = !{!64, !33, i64 40}
!64 = !{!"_MagickPixelPacket", !8, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !11, i64 24, !33, i64 32, !33, i64 36, !33, i64 40, !33, i64 44, !33, i64 48}
!65 = distinct !{!65, !27}
!66 = distinct !{!66, !27}
!67 = distinct !{!67, !27}
!68 = distinct !{!68, !27}
!69 = distinct !{!69, !27}
!70 = !{!71, !33, i64 0}
!71 = !{!"_ZeroCrossing", !33, i64 0, !9, i64 4, !9, i64 1028}
!72 = distinct !{!72, !27, !73, !74}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!8, !8, i64 0}
!76 = distinct !{!76, !27}
!77 = distinct !{!77, !27, !73, !74}
!78 = !{!14, !14, i64 0}
!79 = distinct !{!79, !27}
!80 = distinct !{!80, !27}
!81 = distinct !{!81, !27}
!82 = !{!83, !12, i64 40}
!83 = !{!"_IntervalTree", !33, i64 0, !11, i64 8, !11, i64 16, !33, i64 24, !33, i64 28, !12, i64 32, !12, i64 40}
!84 = !{!83, !33, i64 0}
!85 = distinct !{!85, !27}
!86 = !{!83, !11, i64 16}
!87 = !{!83, !11, i64 8}
!88 = distinct !{!88, !27}
!89 = distinct !{!89, !27}
!90 = distinct !{!90, !27}
!91 = distinct !{!91, !27}
!92 = !{!32, !11, i64 16}
!93 = !{!32, !33, i64 0}
!94 = !{!32, !11, i64 24}
!95 = distinct !{!95, !27}
!96 = distinct !{!96, !27}
!97 = !{!7, !12, i64 568}
!98 = !{!7, !12, i64 576}
!99 = !{!15, !15, i64 0}
!100 = distinct !{!100, !27}
!101 = !{i64 0, i64 -9223372036854775807}
!102 = distinct !{!102, !27}
!103 = distinct !{!103, !27}
!104 = distinct !{!104, !27}
!105 = distinct !{!105, !27, !73, !74}
!106 = distinct !{!106, !27}
!107 = distinct !{!107, !27}
!108 = distinct !{!108, !27}
!109 = distinct !{!109, !27}
!110 = distinct !{!110, !27}
!111 = distinct !{!111, !27}
!112 = distinct !{!112, !27}
!113 = distinct !{!113, !27}
!114 = distinct !{!114, !27}
!115 = distinct !{!115, !27}
!116 = !{!83, !12, i64 32}
!117 = distinct !{!117, !27}
!118 = distinct !{!118, !27}
!119 = !{!83, !33, i64 28}
!120 = !{!83, !33, i64 24}
!121 = distinct !{!121, !27}
!122 = distinct !{!122, !27}
!123 = distinct !{!123, !27}
!124 = !{!7, !8, i64 4}
!125 = distinct !{!125, !27}
!126 = distinct !{!126, !27}
!127 = distinct !{!127, !27}
!128 = distinct !{!128, !27}
!129 = !{!24, !24, i64 0}
!130 = distinct !{!130, !27}
!131 = distinct !{!131, !27}
!132 = distinct !{!132, !27}
!133 = distinct !{!133, !27}
!134 = distinct !{!134, !27}
!135 = distinct !{!135, !27}
!136 = distinct !{!136, !27}
!137 = distinct !{!137, !27, !73, !74}
!138 = !{!7, !12, i64 72}
!139 = distinct !{!139, !27}
!140 = distinct !{!140, !27}
!141 = !{!7, !11, i64 64}
!142 = distinct !{!142, !27}
!143 = distinct !{!143, !27}
!144 = distinct !{!144, !27}
!145 = distinct !{!145, !27}
!146 = !{!147}
!147 = !{i64 2, i64 -1, i64 -1, i1 true}
