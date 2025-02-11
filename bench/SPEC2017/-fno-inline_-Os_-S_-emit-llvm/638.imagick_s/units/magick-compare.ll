; ModuleID = 'magick/compare.c'
source_filename = "magick/compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
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
%struct._ChannelStatistics = type { i64, double, double, double, double, double, double, double, double, double, double, double }
%struct._ChannelPerceptualHash = type { [32 x double], [32 x double] }

@.str = private unnamed_addr constant [17 x i8] c"magick/compare.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ImageSizeDiffers\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"#f1001ecc\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"highlight-color\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"#ffffffcc\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"lowlight-color\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"distortion\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@.gomp_critical_user_MagickCore_GetAbsoluteError.var = common global [8 x i32] zeroinitializer, align 8
@.gomp_critical_user_MagickCore_GetFuzzDistortion.var = common global [8 x i32] zeroinitializer, align 8
@.gomp_critical_user_MagickCore_GetMeanAbsoluteError.var = common global [8 x i32] zeroinitializer, align 8
@.gomp_critical_user_MagickCore_GetMeanSquaredError.var = common global [8 x i32] zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"Similarity/Image\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.gomp_critical_user_MagickCore_GetPeakAbsoluteError.var = common global [8 x i32] zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"compare:similarity-threshold\00", align 1
@.gomp_critical_user_MagickCore_SimilarityImage.var = common global [8 x i32] zeroinitializer, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CompareImages(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CompareImageChannels(ptr noundef %0, ptr noundef %1, i32 noundef 47, i32 noundef %2, ptr noundef %3, ptr noundef %4) #20
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CompareImageChannels(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = alloca %struct._MagickPixelPacket, align 8
  %18 = alloca %struct._MagickPixelPacket, align 8
  %19 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !6
  store ptr %1, ptr %8, align 8, !tbaa !6
  store i32 %2, ptr %9, align 4, !tbaa !10
  store ptr %5, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %18) #4
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store double 0.000000e+00, ptr %4, align 8, !tbaa !27
  br label %32

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 152, ptr noundef nonnull @.str.2, ptr noundef nonnull %25) #21
  %27 = load i32, ptr %20, align 8, !tbaa !12
  %28 = icmp eq i32 %27, 0
  store double 0.000000e+00, ptr %4, align 8, !tbaa !27
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %31 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 158, ptr noundef nonnull @.str.2, ptr noundef nonnull %30) #21
  br label %32

32:                                               ; preds = %23, %29, %24
  %33 = icmp eq i32 %3, 255
  br i1 %33, label %49, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !28
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !28
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %42 = load i64, ptr %41, align 8, !tbaa !29
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %44 = load i64, ptr %43, align 8, !tbaa !29
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %40, %34
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 162, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %47) #21
  br label %130

49:                                               ; preds = %40, %32
  %50 = tail call i32 @GetImageChannelDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, ptr noundef %5) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %130, label %52

52:                                               ; preds = %49
  %53 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #21
  %54 = icmp eq ptr %53, null
  br i1 %54, label %130, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %53, i32 noundef 6) #21
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %58 = load i64, ptr %57, align 8, !tbaa !28
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %60 = load i64, ptr %59, align 8, !tbaa !29
  %61 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %58, i64 noundef %60, i32 noundef 1, ptr noundef %5) #21
  store ptr %61, ptr %14, align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = tail call ptr @DestroyImage(ptr noundef nonnull %53) #21
  br label %130

65:                                               ; preds = %55
  %66 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %61, i32 noundef 1) #21
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %69) #21
  %70 = tail call ptr @DestroyImage(ptr noundef nonnull %53) #21
  %71 = tail call ptr @DestroyImage(ptr noundef nonnull %61) #21
  br label %130

72:                                               ; preds = %65
  %73 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %61, i32 noundef 6) #21
  %74 = call i32 @QueryMagickColor(ptr noundef nonnull @.str.5, ptr noundef nonnull %16, ptr noundef %5) #21
  %75 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #21
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = call i32 @QueryMagickColor(ptr noundef nonnull %75, ptr noundef nonnull %16, ptr noundef %5) #21
  br label %79

79:                                               ; preds = %77, %72
  %80 = call i32 @QueryMagickColor(ptr noundef nonnull @.str.7, ptr noundef nonnull %17, ptr noundef %5) #21
  %81 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #21
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = call i32 @QueryMagickColor(ptr noundef nonnull %81, ptr noundef nonnull %17, ptr noundef %5) #21
  br label %85

85:                                               ; preds = %83, %79
  %86 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !30
  %88 = icmp eq i32 %87, 12
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %16) #20
  call fastcc void @ConvertRGBToCMYK(ptr noundef nonnull %17) #20
  br label %90

90:                                               ; preds = %89, %85
  store i32 1, ptr %15, align 4, !tbaa !10
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %18) #21
  %91 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %5) #21
  store ptr %91, ptr %12, align 8, !tbaa !6
  %92 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %5) #21
  store ptr %92, ptr %13, align 8, !tbaa !6
  %93 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %61, ptr noundef %5) #21
  store ptr %93, ptr %11, align 8, !tbaa !6
  %94 = load i64, ptr %59, align 8, !tbaa !29
  %95 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %96 = shl i64 %95, 5
  %97 = icmp ugt i64 %94, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %61) #21
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %110

106:                                              ; preds = %101, %98, %90
  %107 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %108 = icmp ult i64 %107, 2
  %109 = select i1 %108, i64 1, i64 2
  br label %110

110:                                              ; preds = %106, %104
  %111 = phi i64 [ %105, %104 ], [ %109, %106 ]
  %112 = trunc i64 %111 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %112)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @CompareImageChannels.omp_outlined, ptr nonnull %7, ptr nonnull %15, ptr nonnull %12, ptr nonnull %10, ptr nonnull %13, ptr nonnull %11, ptr nonnull %14, ptr nonnull %18, ptr nonnull %8, ptr nonnull %9, ptr nonnull %16, ptr nonnull %17)
  %113 = load ptr, ptr %11, align 8, !tbaa !6
  %114 = call ptr @DestroyCacheView(ptr noundef %113) #21
  store ptr %114, ptr %11, align 8, !tbaa !6
  %115 = load ptr, ptr %13, align 8, !tbaa !6
  %116 = call ptr @DestroyCacheView(ptr noundef %115) #21
  store ptr %116, ptr %13, align 8, !tbaa !6
  %117 = load ptr, ptr %12, align 8, !tbaa !6
  %118 = call ptr @DestroyCacheView(ptr noundef %117) #21
  store ptr %118, ptr %12, align 8, !tbaa !6
  %119 = load ptr, ptr %7, align 8, !tbaa !6
  %120 = getelementptr inbounds %struct._Image, ptr %119, i64 0, i32 36
  %121 = load i32, ptr %120, align 8, !tbaa !31
  %122 = load ptr, ptr %14, align 8, !tbaa !6
  %123 = call i32 @CompositeImage(ptr noundef nonnull %53, i32 noundef %121, ptr noundef %122, i64 noundef 0, i64 noundef 0) #21
  %124 = load ptr, ptr %14, align 8, !tbaa !6
  %125 = call ptr @DestroyImage(ptr noundef %124) #21
  store ptr %125, ptr %14, align 8, !tbaa !6
  %126 = load i32, ptr %15, align 4, !tbaa !10
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %110
  %129 = call ptr @DestroyImage(ptr noundef nonnull %53) #21
  br label %130

130:                                              ; preds = %110, %128, %52, %49, %68, %63, %46
  %131 = phi ptr [ null, %46 ], [ null, %63 ], [ null, %68 ], [ null, %49 ], [ null, %52 ], [ %129, %128 ], [ %53, %110 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret ptr %131
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageChannelDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store double 0.000000e+00, ptr %4, align 8, !tbaa !27
  br label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1466, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #21
  %15 = load i32, ptr %8, align 8, !tbaa !12
  store double 0.000000e+00, ptr %4, align 8, !tbaa !27
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1472, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #21
  br label %19

19:                                               ; preds = %11, %17, %12
  %20 = icmp eq i32 %3, 255
  br i1 %20, label %37, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !28
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !28
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !29
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !29
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %21, %27
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %36 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %34, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1476, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %35) #21
  br label %77

37:                                               ; preds = %27, %19
  %38 = tail call dereferenceable_or_null(384) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 8) #22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #4
  call void @GetExceptionInfo(ptr noundef nonnull %7) #21
  %41 = tail call ptr @__errno_location() #23
  %42 = load i32, ptr %41, align 4, !tbaa !10
  %43 = call ptr @GetExceptionMessage(i32 noundef %42) #21
  %44 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1484, i32 noundef 700, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef %43) #21
  %45 = call ptr @DestroyString(ptr noundef %43) #21
  call void @CatchException(ptr noundef nonnull %7) #21
  %46 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 1) #24
  unreachable

47:                                               ; preds = %37
  %48 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %38, i32 noundef 0, i64 noundef 384) #21
  switch i32 %3, label %59 [
    i32 1, label %49
    i32 9, label %51
    i32 2, label %53
    i32 3, label %55
    i32 4, label %57
    i32 7, label %67
    i32 5, label %61
    i32 6, label %63
    i32 255, label %65
  ]

49:                                               ; preds = %47
  %50 = tail call fastcc i32 @GetAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #20
  br label %69

51:                                               ; preds = %47
  %52 = tail call fastcc i32 @GetFuzzDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #20
  br label %69

53:                                               ; preds = %47
  %54 = tail call fastcc i32 @GetMeanAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #20
  br label %69

55:                                               ; preds = %47
  %56 = tail call fastcc i32 @GetMeanErrorPerPixel(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #20, !range !32
  br label %69

57:                                               ; preds = %47
  %58 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #20
  br label %69

59:                                               ; preds = %47
  %60 = tail call fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #20, !range !32
  br label %69

61:                                               ; preds = %47
  %62 = tail call fastcc i32 @GetPeakAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #20
  br label %69

63:                                               ; preds = %47
  %64 = tail call fastcc i32 @GetPeakSignalToNoiseRatio(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #20
  br label %69

65:                                               ; preds = %47
  %66 = tail call fastcc i32 @GetPerceptualHashDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #20, !range !32
  br label %69

67:                                               ; preds = %47
  %68 = tail call fastcc i32 @GetRootMeanSquaredDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %5) #20
  br label %69

69:                                               ; preds = %67, %65, %63, %61, %59, %57, %55, %53, %51, %49
  %70 = phi i32 [ %60, %59 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %68, %67 ], [ %58, %57 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ], [ %50, %49 ]
  %71 = getelementptr inbounds double, ptr %38, i64 47
  %72 = load double, ptr %71, align 8, !tbaa !27
  store double %72, ptr %4, align 8, !tbaa !27
  %73 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %38) #21
  %74 = tail call i32 @GetMagickPrecision() #21
  %75 = load double, ptr %4, align 8, !tbaa !27
  %76 = tail call i32 (ptr, ptr, ptr, ...) @FormatImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %74, double noundef %75) #21
  br label %77

77:                                               ; preds = %33, %69
  %78 = phi i32 [ %70, %69 ], [ 0, %33 ]
  ret i32 %78
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @QueryMagickColor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConvertRGBToCMYK(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !33
  %4 = icmp eq i32 %3, 13
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !36
  br i1 %4, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !37
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %11 = insertelement <2 x float> %10, float %9, i64 1
  %12 = fpext <2 x float> %11 to <2 x double>
  %13 = fmul <2 x double> %12, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !38
  %17 = fpext float %16 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = fptrunc double %18 to float
  br label %30

20:                                               ; preds = %1
  %21 = tail call float @DecodePixelGamma(float noundef %6) #25
  %22 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !37
  %24 = tail call float @DecodePixelGamma(float noundef %23) #25
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %26 = load float, ptr %25, align 8, !tbaa !38
  %27 = tail call float @DecodePixelGamma(float noundef %26) #25
  %28 = insertelement <2 x float> poison, float %21, i64 0
  %29 = insertelement <2 x float> %28, float %24, i64 1
  br label %30

30:                                               ; preds = %20, %7
  %31 = phi float [ %19, %7 ], [ %27, %20 ]
  %32 = phi <2 x float> [ %14, %7 ], [ %29, %20 ]
  %33 = extractelement <2 x float> %32, i64 0
  %34 = tail call float @llvm.fabs.f32(float %33)
  %35 = fpext float %34 to double
  %36 = fcmp olt double %35, 1.000000e-15
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = extractelement <2 x float> %32, i64 1
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fpext float %39 to double
  %41 = fcmp olt double %40, 1.000000e-15
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call float @llvm.fabs.f32(float %31)
  %44 = fpext float %43 to double
  %45 = fcmp olt double %44, 1.000000e-15
  br i1 %45, label %74, label %46

46:                                               ; preds = %42, %37, %30
  %47 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %32
  %48 = fsub float 1.000000e+00, %31
  %49 = extractelement <2 x float> %47, i64 0
  %50 = extractelement <2 x float> %47, i64 1
  %51 = fcmp olt float %50, %49
  %52 = select i1 %51, float %50, float %49
  %53 = fcmp olt float %48, %52
  %54 = select i1 %53, float %48, float %52
  %55 = fpext float %54 to double
  %56 = fsub double 1.000000e+00, %55
  %57 = fsub float %48, %54
  %58 = fpext float %57 to double
  %59 = fdiv double %58, %56
  %60 = fptrunc double %59 to float
  store i32 12, ptr %2, align 4, !tbaa !33
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %62 = insertelement <2 x float> poison, float %54, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fsub <2 x float> %47, %63
  %65 = fpext <2 x float> %64 to <2 x double>
  %66 = insertelement <2 x double> poison, double %56, i64 0
  %67 = shufflevector <2 x double> %66, <2 x double> poison, <2 x i32> zeroinitializer
  %68 = fdiv <2 x double> %65, %67
  %69 = fptrunc <2 x double> %68 to <2 x float>
  %70 = fmul <2 x float> %69, <float 6.553500e+04, float 6.553500e+04>
  store <2 x float> %70, ptr %61, align 8, !tbaa !39
  %71 = fmul float %60, 6.553500e+04
  %72 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  store float %71, ptr %72, align 8, !tbaa !38
  %73 = fmul float %54, 6.553500e+04
  br label %74

74:                                               ; preds = %42, %46
  %75 = phi float [ %73, %46 ], [ 6.553500e+04, %42 ]
  %76 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  store float %75, ptr %76, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @CompareImageChannels.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %13) #3 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = alloca %struct._MagickPixelPacket, align 8
  %21 = load ptr, ptr %2, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !29
  %24 = add nsw i64 %23, -1
  %25 = icmp sgt i64 %23, 0
  br i1 %25, label %26, label %199

26:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 0, ptr %15, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 %24, ptr %16, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  store i64 1, ptr %17, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #4
  store i32 0, ptr %18, align 4, !tbaa !10
  %27 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %27, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %28 = load i64, ptr %16, align 8
  %29 = call i64 @llvm.smin.i64(i64 %28, i64 %24)
  store i64 %29, ptr %16, align 8, !tbaa !41
  %30 = load i64, ptr %15, align 8, !tbaa !41
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %198, label %32

32:                                               ; preds = %26, %190
  %33 = phi i64 [ %196, %190 ], [ %29, %26 ]
  %34 = phi i64 [ %194, %190 ], [ %30, %26 ]
  %35 = icmp sgt i64 %34, %33
  br i1 %35, label %190, label %36

36:                                               ; preds = %32, %184
  %37 = phi i64 [ %185, %184 ], [ %34, %32 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %20) #4
  %38 = load i32, ptr %3, align 4, !tbaa !10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %184, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %4, align 8, !tbaa !6
  %42 = load ptr, ptr %2, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !28
  %45 = load ptr, ptr %5, align 8, !tbaa !6
  %46 = call ptr @GetCacheViewVirtualPixels(ptr noundef %41, i64 noundef 0, i64 noundef %37, i64 noundef %44, i64 noundef 1, ptr noundef %45) #25
  %47 = load ptr, ptr %6, align 8, !tbaa !6
  %48 = load ptr, ptr %2, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !28
  %51 = load ptr, ptr %5, align 8, !tbaa !6
  %52 = call ptr @GetCacheViewVirtualPixels(ptr noundef %47, i64 noundef 0, i64 noundef %37, i64 noundef %50, i64 noundef 1, ptr noundef %51) #25
  %53 = load ptr, ptr %7, align 8, !tbaa !6
  %54 = load ptr, ptr %8, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !28
  %57 = load ptr, ptr %5, align 8, !tbaa !6
  %58 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %53, i64 noundef 0, i64 noundef %37, i64 noundef %56, i64 noundef 1, ptr noundef %57) #25
  %59 = icmp eq ptr %46, null
  %60 = icmp eq ptr %52, null
  %61 = select i1 %59, i1 true, i1 %60
  %62 = icmp eq ptr %58, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %183, label %64

64:                                               ; preds = %40
  %65 = load ptr, ptr %4, align 8, !tbaa !6
  %66 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %65) #21
  %67 = load ptr, ptr %6, align 8, !tbaa !6
  %68 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %67) #21
  %69 = load ptr, ptr %7, align 8, !tbaa !6
  %70 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %69) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false), !tbaa.struct !42
  %71 = load ptr, ptr %2, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  %73 = load i64, ptr %72, align 8, !tbaa !28
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %178

75:                                               ; preds = %64
  %76 = icmp eq ptr %66, null
  %77 = icmp eq ptr %68, null
  br label %78

78:                                               ; preds = %75, %166
  %79 = phi ptr [ %71, %75 ], [ %174, %166 ]
  %80 = phi i64 [ 0, %75 ], [ %173, %166 ]
  %81 = phi ptr [ %58, %75 ], [ %172, %166 ]
  %82 = phi ptr [ %52, %75 ], [ %171, %166 ]
  %83 = phi ptr [ %46, %75 ], [ %170, %166 ]
  %84 = getelementptr inbounds i16, ptr %66, i64 %80
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %79, ptr noundef nonnull %83, ptr noundef %84, ptr noundef nonnull %19) #20
  %85 = load ptr, ptr %10, align 8, !tbaa !6
  %86 = getelementptr inbounds i16, ptr %68, i64 %80
  call fastcc void @SetMagickPixelPacket(ptr noundef %85, ptr noundef nonnull %82, ptr noundef %86, ptr noundef nonnull %20) #20
  %87 = load i32, ptr %11, align 4, !tbaa !10
  %88 = icmp eq i32 %87, 47
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %19, ptr noundef nonnull %20) #21
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %166, label %165

92:                                               ; preds = %78
  %93 = and i32 %87, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 2
  %97 = load i16, ptr %96, align 2, !tbaa !43
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 2
  %99 = load i16, ptr %98, align 2, !tbaa !43
  %100 = icmp ne i16 %97, %99
  %101 = zext i1 %100 to i32
  br label %102

102:                                              ; preds = %95, %92
  %103 = phi i32 [ 0, %92 ], [ %101, %95 ]
  %104 = and i32 %87, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 1
  %108 = load i16, ptr %107, align 2, !tbaa !44
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 1
  %110 = load i16, ptr %109, align 2, !tbaa !44
  %111 = icmp eq i16 %108, %110
  %112 = select i1 %111, i32 %103, i32 1
  br label %113

113:                                              ; preds = %106, %102
  %114 = phi i32 [ %103, %102 ], [ %112, %106 ]
  %115 = and i32 %87, 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  %118 = load i16, ptr %83, align 2, !tbaa !45
  %119 = load i16, ptr %82, align 2, !tbaa !45
  %120 = icmp eq i16 %118, %119
  %121 = select i1 %120, i32 %114, i32 1
  br label %122

122:                                              ; preds = %117, %113
  %123 = phi i32 [ %114, %113 ], [ %121, %117 ]
  %124 = and i32 %87, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 6
  %128 = load i32, ptr %127, align 8, !tbaa !46
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 3
  %132 = load i16, ptr %131, align 2, !tbaa !47
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 3
  %134 = load i16, ptr %133, align 2, !tbaa !47
  %135 = icmp eq i16 %132, %134
  %136 = select i1 %135, i32 %123, i32 1
  br label %137

137:                                              ; preds = %130, %126, %122
  %138 = phi i32 [ %123, %126 ], [ %123, %122 ], [ %136, %130 ]
  %139 = and i32 %87, 32
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %163, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !30
  %144 = icmp eq i32 %143, 12
  br i1 %144, label %145, label %163

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct._Image, ptr %85, i64 0, i32 1
  %147 = load i32, ptr %146, align 4, !tbaa !30
  %148 = icmp eq i32 %147, 12
  br i1 %148, label %149, label %163

149:                                              ; preds = %145
  br i1 %76, label %153, label %150

150:                                              ; preds = %149
  %151 = load i16, ptr %84, align 2, !tbaa !48
  %152 = zext i16 %151 to i32
  br label %153

153:                                              ; preds = %149, %150
  %154 = phi i32 [ %152, %150 ], [ 0, %149 ]
  br i1 %77, label %158, label %155

155:                                              ; preds = %153
  %156 = load i16, ptr %86, align 2, !tbaa !48
  %157 = zext i16 %156 to i32
  br label %158

158:                                              ; preds = %153, %155
  %159 = phi i32 [ %157, %155 ], [ 0, %153 ]
  %160 = icmp eq i32 %154, %159
  %161 = icmp eq i32 %138, 0
  %162 = select i1 %160, i1 %161, i1 false
  br i1 %162, label %165, label %166

163:                                              ; preds = %137, %141, %145
  %164 = icmp eq i32 %138, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158, %89, %163
  br label %166

166:                                              ; preds = %163, %158, %89, %165
  %167 = phi ptr [ %13, %165 ], [ %12, %89 ], [ %12, %158 ], [ %12, %163 ]
  %168 = load ptr, ptr %8, align 8, !tbaa !6
  %169 = getelementptr inbounds i16, ptr %70, i64 %80
  call fastcc void @SetPixelPacket(ptr noundef %168, ptr noundef nonnull %167, ptr noundef nonnull %81, ptr noundef %169) #20
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 1
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 1
  %173 = add nuw nsw i64 %80, 1
  %174 = load ptr, ptr %2, align 8, !tbaa !6
  %175 = getelementptr inbounds %struct._Image, ptr %174, i64 0, i32 7
  %176 = load i64, ptr %175, align 8, !tbaa !28
  %177 = icmp slt i64 %173, %176
  br i1 %177, label %78, label %178, !llvm.loop !49

178:                                              ; preds = %166, %64
  %179 = load ptr, ptr %7, align 8, !tbaa !6
  %180 = load ptr, ptr %5, align 8, !tbaa !6
  %181 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %179, ptr noundef %180) #25
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178, %40
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %184

184:                                              ; preds = %183, %178, %36
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %20) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #4
  %185 = add nsw i64 %37, 1
  %186 = load i64, ptr %16, align 8, !tbaa !41
  %187 = icmp slt i64 %37, %186
  br i1 %187, label %36, label %188

188:                                              ; preds = %184
  %189 = load i64, ptr %15, align 8, !tbaa !41
  br label %190

190:                                              ; preds = %188, %32
  %191 = phi i64 [ %34, %32 ], [ %189, %188 ]
  %192 = phi i64 [ %33, %32 ], [ %186, %188 ]
  %193 = load i64, ptr %17, align 8, !tbaa !41
  %194 = add nsw i64 %193, %191
  store i64 %194, ptr %15, align 8, !tbaa !41
  %195 = add nsw i64 %193, %192
  %196 = call i64 @llvm.smin.i64(i64 %195, i64 %24)
  store i64 %196, ptr %16, align 8, !tbaa !41
  %197 = icmp sgt i64 %194, %196
  br i1 %197, label %198, label %32

198:                                              ; preds = %190, %26
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  br label %199

199:                                              ; preds = %198, %14
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !48
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !30
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !48
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !40
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !36
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #20
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !43
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !37
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #20
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !44
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !38
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #20
  store i16 %15, ptr %2, align 2, !tbaa !45
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #20
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !47
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !30
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !52
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !40
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #20
  store i16 %33, ptr %3, align 2, !tbaa !48
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

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
declare !callback !53 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

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
define dso_local i32 @GetImageDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @GetImageChannelDistortion(ptr noundef %0, ptr noundef %1, i32 noundef 47, i32 noundef %2, ptr noundef %3, ptr noundef %4) #20
  ret i32 %6
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
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store ptr %1, ptr %7, align 8, !tbaa !6
  store i32 %2, ptr %8, align 4, !tbaa !10
  store ptr %3, ptr %9, align 8, !tbaa !6
  store ptr %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #4
  store i32 1, ptr %13, align 4, !tbaa !10
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %14) #21
  %16 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #21
  store ptr %16, ptr %11, align 8, !tbaa !6
  %17 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #21
  store ptr %17, ptr %12, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !29
  %20 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %21 = shl i64 %20, 5
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %35

31:                                               ; preds = %26, %23, %5
  %32 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %33 = icmp ult i64 %32, 2
  %34 = select i1 %33, i64 1, i64 2
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i64 [ %30, %29 ], [ %34, %31 ]
  %37 = trunc i64 %36 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %37)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @GetAbsoluteDistortion.omp_outlined, ptr nonnull %6, ptr nonnull %13, ptr nonnull %11, ptr nonnull %10, ptr nonnull %12, ptr nonnull %7, ptr nonnull %14, ptr nonnull %8, ptr nonnull %9)
  %38 = load ptr, ptr %12, align 8, !tbaa !6
  %39 = call ptr @DestroyCacheView(ptr noundef %38) #21
  store ptr %39, ptr %12, align 8, !tbaa !6
  %40 = load ptr, ptr %11, align 8, !tbaa !6
  %41 = call ptr @DestroyCacheView(ptr noundef %40) #21
  %42 = load i32, ptr %13, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetFuzzDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store ptr %1, ptr %7, align 8, !tbaa !6
  store i32 %2, ptr %8, align 4, !tbaa !10
  store ptr %3, ptr %9, align 8, !tbaa !6
  store ptr %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  store i32 1, ptr %13, align 4, !tbaa !10
  %15 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #21
  store ptr %15, ptr %11, align 8, !tbaa !6
  %16 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #21
  store ptr %16, ptr %12, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %20 = shl i64 %19, 5
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %34

30:                                               ; preds = %25, %22, %5
  %31 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %32 = icmp ult i64 %31, 2
  %33 = select i1 %32, i64 1, i64 2
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i64 [ %29, %28 ], [ %33, %30 ]
  %36 = trunc i64 %35 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %14, i32 %36)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @GetFuzzDistortion.omp_outlined, ptr nonnull %6, ptr nonnull %13, ptr nonnull %11, ptr nonnull %10, ptr nonnull %12, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9)
  %37 = load ptr, ptr %12, align 8, !tbaa !6
  %38 = call ptr @DestroyCacheView(ptr noundef %37) #21
  store ptr %38, ptr %12, align 8, !tbaa !6
  %39 = load ptr, ptr %11, align 8, !tbaa !6
  %40 = call ptr @DestroyCacheView(ptr noundef %39) #21
  store ptr %40, ptr %11, align 8, !tbaa !6
  %41 = load ptr, ptr %6, align 8, !tbaa !6
  %42 = load ptr, ptr %9, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %44 = load <2 x i64>, ptr %43, align 8, !tbaa !41
  %45 = uitofp <2 x i64> %44 to <2 x double>
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %47 = fmul <2 x double> %46, %45
  %48 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> zeroinitializer
  br label %49

49:                                               ; preds = %49, %34
  %50 = phi i64 [ 0, %34 ], [ %54, %49 ]
  %51 = getelementptr inbounds double, ptr %42, i64 %50
  %52 = load <2 x double>, ptr %51, align 8, !tbaa !27
  %53 = fdiv <2 x double> %52, %48
  store <2 x double> %53, ptr %51, align 8, !tbaa !27
  %54 = add nuw i64 %50, 2
  %55 = icmp eq i64 %54, 48
  br i1 %55, label %56, label %49, !llvm.loop !55

56:                                               ; preds = %49
  %57 = load i32, ptr %8, align 4, !tbaa !10
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !46
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load ptr, ptr %7, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !46
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64, %60
  %70 = call fastcc i64 @GetNumberChannels(ptr noundef nonnull %41, i32 noundef %57) #20
  %71 = add i64 %70, -1
  %72 = uitofp i64 %71 to double
  %73 = getelementptr inbounds double, ptr %42, i64 47
  %74 = load double, ptr %73, align 8, !tbaa !27
  %75 = fdiv double %74, %72
  store double %75, ptr %73, align 8, !tbaa !27
  br label %82

76:                                               ; preds = %64, %56
  %77 = call fastcc i64 @GetNumberChannels(ptr noundef %41, i32 noundef %57) #20
  %78 = uitofp i64 %77 to double
  %79 = getelementptr inbounds double, ptr %42, i64 47
  %80 = load double, ptr %79, align 8, !tbaa !27
  %81 = fdiv double %80, %78
  store double %81, ptr %79, align 8, !tbaa !27
  br label %82

82:                                               ; preds = %76, %69
  %83 = phi double [ %81, %76 ], [ %75, %69 ]
  %84 = call double @sqrt(double noundef %83) #21
  %85 = load ptr, ptr %9, align 8, !tbaa !6
  %86 = getelementptr inbounds double, ptr %85, i64 47
  store double %84, ptr %86, align 8, !tbaa !27
  %87 = load i32, ptr %13, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret i32 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetMeanAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store ptr %1, ptr %7, align 8, !tbaa !6
  store i32 %2, ptr %8, align 4, !tbaa !10
  store ptr %3, ptr %9, align 8, !tbaa !6
  store ptr %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  store i32 1, ptr %13, align 4, !tbaa !10
  %15 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #21
  store ptr %15, ptr %11, align 8, !tbaa !6
  %16 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #21
  store ptr %16, ptr %12, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %20 = shl i64 %19, 5
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %34

30:                                               ; preds = %25, %22, %5
  %31 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %32 = icmp ult i64 %31, 2
  %33 = select i1 %32, i64 1, i64 2
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i64 [ %29, %28 ], [ %33, %30 ]
  %36 = trunc i64 %35 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %14, i32 %36)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @GetMeanAbsoluteDistortion.omp_outlined, ptr nonnull %6, ptr nonnull %13, ptr nonnull %11, ptr nonnull %10, ptr nonnull %12, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9)
  %37 = load ptr, ptr %12, align 8, !tbaa !6
  %38 = call ptr @DestroyCacheView(ptr noundef %37) #21
  store ptr %38, ptr %12, align 8, !tbaa !6
  %39 = load ptr, ptr %11, align 8, !tbaa !6
  %40 = call ptr @DestroyCacheView(ptr noundef %39) #21
  store ptr %40, ptr %11, align 8, !tbaa !6
  %41 = load ptr, ptr %6, align 8, !tbaa !6
  %42 = load ptr, ptr %9, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %44 = load <2 x i64>, ptr %43, align 8, !tbaa !41
  %45 = uitofp <2 x i64> %44 to <2 x double>
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %47 = fmul <2 x double> %46, %45
  %48 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> zeroinitializer
  br label %49

49:                                               ; preds = %49, %34
  %50 = phi i64 [ 0, %34 ], [ %54, %49 ]
  %51 = getelementptr inbounds double, ptr %42, i64 %50
  %52 = load <2 x double>, ptr %51, align 8, !tbaa !27
  %53 = fdiv <2 x double> %52, %48
  store <2 x double> %53, ptr %51, align 8, !tbaa !27
  %54 = add nuw i64 %50, 2
  %55 = icmp eq i64 %54, 48
  br i1 %55, label %56, label %49, !llvm.loop !58

56:                                               ; preds = %49
  %57 = load i32, ptr %8, align 4, !tbaa !10
  %58 = call fastcc i64 @GetNumberChannels(ptr noundef %41, i32 noundef %57) #20
  %59 = uitofp i64 %58 to double
  %60 = getelementptr inbounds double, ptr %42, i64 47
  %61 = load double, ptr %60, align 8, !tbaa !27
  %62 = fdiv double %61, %59
  store double %62, ptr %60, align 8, !tbaa !27
  %63 = load i32, ptr %13, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetMeanErrorPerPixel(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #21
  %7 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #21
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %9 = load i64, ptr %8, align 8, !tbaa !29
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %239

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %16 = and i32 %2, 1
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds double, ptr %3, i64 1
  %19 = getelementptr inbounds double, ptr %3, i64 47
  %20 = and i32 %2, 2
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds double, ptr %3, i64 2
  %23 = and i32 %2, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds double, ptr %3, i64 4
  %26 = and i32 %2, 8
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds double, ptr %3, i64 8
  %29 = and i32 %2, 32
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %33 = getelementptr inbounds double, ptr %3, i64 32
  %34 = load i64, ptr %12, align 8, !tbaa !28
  br label %35

35:                                               ; preds = %11, %222
  %36 = phi i64 [ %34, %11 ], [ %50, %222 ]
  %37 = phi float [ 0.000000e+00, %11 ], [ %225, %222 ]
  %38 = phi i64 [ 0, %11 ], [ %226, %222 ]
  %39 = phi float [ 0.000000e+00, %11 ], [ %224, %222 ]
  %40 = phi float [ 0.000000e+00, %11 ], [ %223, %222 ]
  %41 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %6, i64 noundef 0, i64 noundef %38, i64 noundef %36, i64 noundef 1, ptr noundef %4) #25
  %42 = load i64, ptr %13, align 8, !tbaa !28
  %43 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %7, i64 noundef 0, i64 noundef %38, i64 noundef %42, i64 noundef 1, ptr noundef %4) #25
  %44 = icmp eq ptr %41, null
  %45 = icmp eq ptr %43, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %229, label %47

47:                                               ; preds = %35
  %48 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %6) #21
  %49 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %7) #21
  %50 = load i64, ptr %12, align 8, !tbaa !28
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %222

52:                                               ; preds = %47
  %53 = load i32, ptr %14, align 8, !tbaa !46
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr %15, align 8, !tbaa !46
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %27, %54
  %58 = icmp eq ptr %48, null
  %59 = icmp eq ptr %49, null
  br label %60

60:                                               ; preds = %52, %214
  %61 = phi i64 [ 0, %52 ], [ %220, %214 ]
  %62 = phi ptr [ %43, %52 ], [ %219, %214 ]
  %63 = phi ptr [ %41, %52 ], [ %218, %214 ]
  %64 = phi float [ %37, %52 ], [ %217, %214 ]
  %65 = phi float [ %39, %52 ], [ %216, %214 ]
  %66 = phi float [ %40, %52 ], [ %215, %214 ]
  br i1 %54, label %72, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 3
  %69 = load i16, ptr %68, align 2, !tbaa !47
  %70 = xor i16 %69, -1
  %71 = zext i16 %70 to i32
  br label %72

72:                                               ; preds = %60, %67
  %73 = phi i32 [ %71, %67 ], [ 65535, %60 ]
  %74 = sitofp i32 %73 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = fptrunc double %75 to float
  br i1 %56, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 3
  %79 = load i16, ptr %78, align 2, !tbaa !47
  %80 = xor i16 %79, -1
  %81 = zext i16 %80 to i32
  br label %82

82:                                               ; preds = %72, %77
  %83 = phi i32 [ %81, %77 ], [ 65535, %72 ]
  %84 = sitofp i32 %83 to double
  %85 = fmul double %84, 0x3EF0001000100010
  %86 = fptrunc double %85 to float
  br i1 %17, label %107, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 2
  %89 = load i16, ptr %88, align 2, !tbaa !43
  %90 = uitofp i16 %89 to float
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 2
  %92 = load i16, ptr %91, align 2, !tbaa !43
  %93 = uitofp i16 %92 to float
  %94 = fneg float %86
  %95 = fmul float %94, %93
  %96 = tail call float @llvm.fmuladd.f32(float %76, float %90, float %95)
  %97 = tail call float @llvm.fabs.f32(float %96)
  %98 = fpext float %97 to double
  %99 = load double, ptr %18, align 8, !tbaa !27
  %100 = fadd double %99, %98
  store double %100, ptr %18, align 8, !tbaa !27
  %101 = load double, ptr %19, align 8, !tbaa !27
  %102 = fadd double %101, %98
  store double %102, ptr %19, align 8, !tbaa !27
  %103 = tail call float @llvm.fmuladd.f32(float %96, float %96, float %65)
  %104 = fcmp ogt float %97, %66
  %105 = select i1 %104, float %97, float %66
  %106 = fadd float %64, 1.000000e+00
  br label %107

107:                                              ; preds = %87, %82
  %108 = phi float [ %105, %87 ], [ %66, %82 ]
  %109 = phi float [ %103, %87 ], [ %65, %82 ]
  %110 = phi float [ %106, %87 ], [ %64, %82 ]
  br i1 %21, label %131, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 1
  %113 = load i16, ptr %112, align 2, !tbaa !44
  %114 = uitofp i16 %113 to float
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 1
  %116 = load i16, ptr %115, align 2, !tbaa !44
  %117 = uitofp i16 %116 to float
  %118 = fneg float %86
  %119 = fmul float %118, %117
  %120 = tail call float @llvm.fmuladd.f32(float %76, float %114, float %119)
  %121 = tail call float @llvm.fabs.f32(float %120)
  %122 = fpext float %121 to double
  %123 = load double, ptr %22, align 8, !tbaa !27
  %124 = fadd double %123, %122
  store double %124, ptr %22, align 8, !tbaa !27
  %125 = load double, ptr %19, align 8, !tbaa !27
  %126 = fadd double %125, %122
  store double %126, ptr %19, align 8, !tbaa !27
  %127 = tail call float @llvm.fmuladd.f32(float %120, float %120, float %109)
  %128 = fcmp ogt float %121, %108
  %129 = select i1 %128, float %121, float %108
  %130 = fadd float %110, 1.000000e+00
  br label %131

131:                                              ; preds = %111, %107
  %132 = phi float [ %129, %111 ], [ %108, %107 ]
  %133 = phi float [ %127, %111 ], [ %109, %107 ]
  %134 = phi float [ %130, %111 ], [ %110, %107 ]
  br i1 %24, label %153, label %135

135:                                              ; preds = %131
  %136 = load i16, ptr %63, align 2, !tbaa !45
  %137 = uitofp i16 %136 to float
  %138 = load i16, ptr %62, align 2, !tbaa !45
  %139 = uitofp i16 %138 to float
  %140 = fneg float %86
  %141 = fmul float %140, %139
  %142 = tail call float @llvm.fmuladd.f32(float %76, float %137, float %141)
  %143 = tail call float @llvm.fabs.f32(float %142)
  %144 = fpext float %143 to double
  %145 = load double, ptr %25, align 8, !tbaa !27
  %146 = fadd double %145, %144
  store double %146, ptr %25, align 8, !tbaa !27
  %147 = load double, ptr %19, align 8, !tbaa !27
  %148 = fadd double %147, %144
  store double %148, ptr %19, align 8, !tbaa !27
  %149 = tail call float @llvm.fmuladd.f32(float %142, float %142, float %133)
  %150 = fcmp ogt float %143, %132
  %151 = select i1 %150, float %143, float %132
  %152 = fadd float %134, 1.000000e+00
  br label %153

153:                                              ; preds = %135, %131
  %154 = phi float [ %151, %135 ], [ %132, %131 ]
  %155 = phi float [ %149, %135 ], [ %133, %131 ]
  %156 = phi float [ %152, %135 ], [ %134, %131 ]
  br i1 %57, label %176, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 3
  %159 = load i16, ptr %158, align 2, !tbaa !47
  %160 = uitofp i16 %159 to double
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 3
  %162 = load i16, ptr %161, align 2, !tbaa !47
  %163 = uitofp i16 %162 to double
  %164 = fsub double %160, %163
  %165 = fptrunc double %164 to float
  %166 = tail call float @llvm.fabs.f32(float %165)
  %167 = fpext float %166 to double
  %168 = load double, ptr %28, align 8, !tbaa !27
  %169 = fadd double %168, %167
  store double %169, ptr %28, align 8, !tbaa !27
  %170 = load double, ptr %19, align 8, !tbaa !27
  %171 = fadd double %170, %167
  store double %171, ptr %19, align 8, !tbaa !27
  %172 = tail call float @llvm.fmuladd.f32(float %165, float %165, float %155)
  %173 = fcmp ogt float %166, %154
  %174 = select i1 %173, float %166, float %154
  %175 = fadd float %156, 1.000000e+00
  br label %176

176:                                              ; preds = %153, %157
  %177 = phi float [ %174, %157 ], [ %154, %153 ]
  %178 = phi float [ %172, %157 ], [ %155, %153 ]
  %179 = phi float [ %175, %157 ], [ %156, %153 ]
  br i1 %30, label %214, label %180

180:                                              ; preds = %176
  %181 = load i32, ptr %31, align 4, !tbaa !30
  %182 = icmp eq i32 %181, 12
  br i1 %182, label %183, label %214

183:                                              ; preds = %180
  %184 = load i32, ptr %32, align 4, !tbaa !30
  %185 = icmp eq i32 %184, 12
  br i1 %185, label %186, label %214

186:                                              ; preds = %183
  br i1 %58, label %191, label %187

187:                                              ; preds = %186
  %188 = getelementptr inbounds i16, ptr %48, i64 %61
  %189 = load i16, ptr %188, align 2, !tbaa !48
  %190 = zext i16 %189 to i32
  br label %191

191:                                              ; preds = %186, %187
  %192 = phi i32 [ %190, %187 ], [ 0, %186 ]
  %193 = sitofp i32 %192 to float
  br i1 %59, label %198, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds i16, ptr %49, i64 %61
  %196 = load i16, ptr %195, align 2, !tbaa !48
  %197 = zext i16 %196 to i32
  br label %198

198:                                              ; preds = %191, %194
  %199 = phi i32 [ %197, %194 ], [ 0, %191 ]
  %200 = sitofp i32 %199 to float
  %201 = fneg float %86
  %202 = fmul float %201, %200
  %203 = tail call float @llvm.fmuladd.f32(float %76, float %193, float %202)
  %204 = tail call float @llvm.fabs.f32(float %203)
  %205 = fpext float %204 to double
  %206 = load double, ptr %33, align 8, !tbaa !27
  %207 = fadd double %206, %205
  store double %207, ptr %33, align 8, !tbaa !27
  %208 = load double, ptr %19, align 8, !tbaa !27
  %209 = fadd double %208, %205
  store double %209, ptr %19, align 8, !tbaa !27
  %210 = tail call float @llvm.fmuladd.f32(float %203, float %203, float %178)
  %211 = fcmp ogt float %204, %177
  %212 = select i1 %211, float %204, float %177
  %213 = fadd float %179, 1.000000e+00
  br label %214

214:                                              ; preds = %198, %183, %180, %176
  %215 = phi float [ %212, %198 ], [ %177, %183 ], [ %177, %180 ], [ %177, %176 ]
  %216 = phi float [ %210, %198 ], [ %178, %183 ], [ %178, %180 ], [ %178, %176 ]
  %217 = phi float [ %213, %198 ], [ %179, %183 ], [ %179, %180 ], [ %179, %176 ]
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 1
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 1
  %220 = add nuw nsw i64 %61, 1
  %221 = icmp eq i64 %220, %50
  br i1 %221, label %222, label %60, !llvm.loop !59

222:                                              ; preds = %214, %47
  %223 = phi float [ %40, %47 ], [ %215, %214 ]
  %224 = phi float [ %39, %47 ], [ %216, %214 ]
  %225 = phi float [ %37, %47 ], [ %217, %214 ]
  %226 = add nuw nsw i64 %38, 1
  %227 = load i64, ptr %8, align 8, !tbaa !29
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %35, label %229, !llvm.loop !60

229:                                              ; preds = %35, %222
  %230 = phi float [ %223, %222 ], [ %40, %35 ]
  %231 = phi float [ %224, %222 ], [ %39, %35 ]
  %232 = phi float [ %225, %222 ], [ %37, %35 ]
  %233 = phi i32 [ 1, %222 ], [ 0, %35 ]
  %234 = fpext float %232 to double
  %235 = fpext float %231 to double
  %236 = fmul double %235, 0x3DF0002000300040
  %237 = fpext float %230 to double
  %238 = fmul double %237, 0x3EF0001000100010
  br label %239

239:                                              ; preds = %229, %5
  %240 = phi double [ 0.000000e+00, %5 ], [ %238, %229 ]
  %241 = phi double [ 0.000000e+00, %5 ], [ %236, %229 ]
  %242 = phi double [ 0.000000e+00, %5 ], [ %234, %229 ]
  %243 = phi i32 [ 1, %5 ], [ %233, %229 ]
  %244 = tail call ptr @DestroyCacheView(ptr noundef %7) #21
  %245 = tail call ptr @DestroyCacheView(ptr noundef %6) #21
  %246 = getelementptr inbounds double, ptr %3, i64 47
  %247 = load double, ptr %246, align 8, !tbaa !27
  %248 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %249 = insertelement <2 x double> poison, double %247, i64 0
  %250 = insertelement <2 x double> %249, double %241, i64 1
  %251 = insertelement <2 x double> poison, double %242, i64 0
  %252 = shufflevector <2 x double> %251, <2 x double> poison, <2 x i32> zeroinitializer
  %253 = fdiv <2 x double> %250, %252
  store <2 x double> %253, ptr %248, align 8, !tbaa !27
  %254 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  store double %240, ptr %254, align 8, !tbaa !61
  ret i32 %243
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store ptr %1, ptr %7, align 8, !tbaa !6
  store i32 %2, ptr %8, align 4, !tbaa !10
  store ptr %3, ptr %9, align 8, !tbaa !6
  store ptr %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  store i32 1, ptr %13, align 4, !tbaa !10
  %15 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #21
  store ptr %15, ptr %11, align 8, !tbaa !6
  %16 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #21
  store ptr %16, ptr %12, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %20 = shl i64 %19, 5
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %34

30:                                               ; preds = %25, %22, %5
  %31 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %32 = icmp ult i64 %31, 2
  %33 = select i1 %32, i64 1, i64 2
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i64 [ %29, %28 ], [ %33, %30 ]
  %36 = trunc i64 %35 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %14, i32 %36)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @GetMeanSquaredDistortion.omp_outlined, ptr nonnull %6, ptr nonnull %13, ptr nonnull %11, ptr nonnull %10, ptr nonnull %12, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9)
  %37 = load ptr, ptr %12, align 8, !tbaa !6
  %38 = call ptr @DestroyCacheView(ptr noundef %37) #21
  store ptr %38, ptr %12, align 8, !tbaa !6
  %39 = load ptr, ptr %11, align 8, !tbaa !6
  %40 = call ptr @DestroyCacheView(ptr noundef %39) #21
  store ptr %40, ptr %11, align 8, !tbaa !6
  %41 = load ptr, ptr %6, align 8, !tbaa !6
  %42 = load ptr, ptr %9, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %44 = load <2 x i64>, ptr %43, align 8, !tbaa !41
  %45 = uitofp <2 x i64> %44 to <2 x double>
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %47 = fmul <2 x double> %46, %45
  %48 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> zeroinitializer
  br label %49

49:                                               ; preds = %49, %34
  %50 = phi i64 [ 0, %34 ], [ %54, %49 ]
  %51 = getelementptr inbounds double, ptr %42, i64 %50
  %52 = load <2 x double>, ptr %51, align 8, !tbaa !27
  %53 = fdiv <2 x double> %52, %48
  store <2 x double> %53, ptr %51, align 8, !tbaa !27
  %54 = add nuw i64 %50, 2
  %55 = icmp eq i64 %54, 48
  br i1 %55, label %56, label %49, !llvm.loop !62

56:                                               ; preds = %49
  %57 = load i32, ptr %8, align 4, !tbaa !10
  %58 = call fastcc i64 @GetNumberChannels(ptr noundef %41, i32 noundef %57) #20
  %59 = uitofp i64 %58 to double
  %60 = getelementptr inbounds double, ptr %42, i64 47
  %61 = load double, ptr %60, align 8, !tbaa !27
  %62 = fdiv double %61, %59
  store double %62, ptr %60, align 8, !tbaa !27
  %63 = load i32, ptr %13, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @GetImageChannelStatistics(ptr noundef %0, ptr noundef %4) #21
  %7 = tail call ptr @GetImageChannelStatistics(ptr noundef %1, ptr noundef %4) #21
  %8 = icmp eq ptr %6, null
  %9 = icmp eq ptr %7, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %3, i8 0, i64 384, i1 false), !tbaa !27
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !28
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !29
  %16 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #21
  %17 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #21
  %18 = load i64, ptr %14, align 8, !tbaa !29
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %24, label %234

20:                                               ; preds = %5
  br i1 %8, label %23, label %21

21:                                               ; preds = %20
  %22 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %6) #21
  br label %23

23:                                               ; preds = %21, %20
  br i1 %9, label %313, label %309

24:                                               ; preds = %11
  %25 = uitofp i64 %13 to float
  %26 = uitofp i64 %15 to float
  %27 = tail call float @llvm.fmuladd.f32(float %25, float %26, float -1.000000e+00)
  %28 = fdiv float 1.000000e+00, %27
  %29 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %31 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %32 = and i32 %2, 1
  %33 = icmp eq i32 %32, 0
  %34 = fpext float %28 to double
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 1, i32 7
  %37 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 1, i32 7
  %38 = getelementptr inbounds double, ptr %3, i64 1
  %39 = and i32 %2, 2
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 2, i32 7
  %42 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 2, i32 7
  %43 = getelementptr inbounds double, ptr %3, i64 2
  %44 = and i32 %2, 4
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 4, i32 7
  %47 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 4, i32 7
  %48 = getelementptr inbounds double, ptr %3, i64 4
  %49 = and i32 %2, 8
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 8, i32 7
  %52 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 8, i32 7
  %53 = getelementptr inbounds double, ptr %3, i64 8
  %54 = and i32 %2, 32
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %57 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %58 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 32, i32 7
  %59 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 32, i32 7
  %60 = getelementptr inbounds double, ptr %3, i64 32
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %62

62:                                               ; preds = %24, %228
  %63 = phi i64 [ 0, %24 ], [ %231, %228 ]
  %64 = phi i32 [ 1, %24 ], [ %230, %228 ]
  %65 = phi i64 [ 0, %24 ], [ %229, %228 ]
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %228, label %67

67:                                               ; preds = %62
  %68 = load i64, ptr %12, align 8, !tbaa !28
  %69 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %16, i64 noundef 0, i64 noundef %63, i64 noundef %68, i64 noundef 1, ptr noundef %4) #25
  %70 = load i64, ptr %29, align 8, !tbaa !28
  %71 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %17, i64 noundef 0, i64 noundef %63, i64 noundef %70, i64 noundef 1, ptr noundef %4) #25
  %72 = icmp eq ptr %69, null
  %73 = icmp eq ptr %71, null
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %228, label %75

75:                                               ; preds = %67
  %76 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %16) #21
  %77 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %17) #21
  %78 = load i64, ptr %12, align 8, !tbaa !28
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %219

80:                                               ; preds = %75
  %81 = load i32, ptr %30, align 8, !tbaa !46
  %82 = icmp eq i32 %81, 0
  %83 = load i32, ptr %31, align 8, !tbaa !46
  %84 = icmp eq i32 %83, 0
  %85 = or i1 %50, %82
  %86 = icmp eq ptr %76, null
  %87 = icmp eq ptr %77, null
  br label %88

88:                                               ; preds = %80, %214
  %89 = phi i64 [ 0, %80 ], [ %217, %214 ]
  %90 = phi ptr [ %71, %80 ], [ %216, %214 ]
  %91 = phi ptr [ %69, %80 ], [ %215, %214 ]
  br i1 %82, label %97, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 3
  %94 = load i16, ptr %93, align 2, !tbaa !47
  %95 = xor i16 %94, -1
  %96 = zext i16 %95 to i32
  br label %97

97:                                               ; preds = %88, %92
  %98 = phi i32 [ %96, %92 ], [ 65535, %88 ]
  %99 = sitofp i32 %98 to double
  %100 = fmul double %99, 0x3EF0001000100010
  %101 = fptrunc double %100 to float
  br i1 %84, label %107, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 3
  %104 = load i16, ptr %103, align 2, !tbaa !47
  %105 = xor i16 %104, -1
  %106 = zext i16 %105 to i32
  br label %107

107:                                              ; preds = %97, %102
  %108 = phi i32 [ %106, %102 ], [ 65535, %97 ]
  %109 = sitofp i32 %108 to double
  %110 = fmul double %109, 0x3EF0001000100010
  %111 = fptrunc double %110 to float
  br i1 %33, label %130, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 2
  %114 = load i16, ptr %113, align 2, !tbaa !43
  %115 = uitofp i16 %114 to float
  %116 = fmul float %101, %115
  %117 = fpext float %116 to double
  %118 = load double, ptr %36, align 8, !tbaa !63
  %119 = fsub double %117, %118
  %120 = fmul double %35, %119
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 2
  %122 = load i16, ptr %121, align 2, !tbaa !43
  %123 = uitofp i16 %122 to float
  %124 = fmul float %111, %123
  %125 = fpext float %124 to double
  %126 = load double, ptr %37, align 8, !tbaa !63
  %127 = fsub double %125, %126
  %128 = load double, ptr %38, align 8, !tbaa !27
  %129 = tail call double @llvm.fmuladd.f64(double %120, double %127, double %128)
  store double %129, ptr %38, align 8, !tbaa !27
  br label %130

130:                                              ; preds = %112, %107
  br i1 %40, label %149, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 1
  %133 = load i16, ptr %132, align 2, !tbaa !44
  %134 = uitofp i16 %133 to float
  %135 = fmul float %101, %134
  %136 = fpext float %135 to double
  %137 = load double, ptr %41, align 8, !tbaa !63
  %138 = fsub double %136, %137
  %139 = fmul double %35, %138
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 1
  %141 = load i16, ptr %140, align 2, !tbaa !44
  %142 = uitofp i16 %141 to float
  %143 = fmul float %111, %142
  %144 = fpext float %143 to double
  %145 = load double, ptr %42, align 8, !tbaa !63
  %146 = fsub double %144, %145
  %147 = load double, ptr %43, align 8, !tbaa !27
  %148 = tail call double @llvm.fmuladd.f64(double %139, double %146, double %147)
  store double %148, ptr %43, align 8, !tbaa !27
  br label %149

149:                                              ; preds = %131, %130
  br i1 %45, label %166, label %150

150:                                              ; preds = %149
  %151 = load i16, ptr %91, align 2, !tbaa !45
  %152 = uitofp i16 %151 to float
  %153 = fmul float %101, %152
  %154 = fpext float %153 to double
  %155 = load double, ptr %46, align 8, !tbaa !63
  %156 = fsub double %154, %155
  %157 = fmul double %35, %156
  %158 = load i16, ptr %90, align 2, !tbaa !45
  %159 = uitofp i16 %158 to float
  %160 = fmul float %111, %159
  %161 = fpext float %160 to double
  %162 = load double, ptr %47, align 8, !tbaa !63
  %163 = fsub double %161, %162
  %164 = load double, ptr %48, align 8, !tbaa !27
  %165 = tail call double @llvm.fmuladd.f64(double %157, double %163, double %164)
  store double %165, ptr %48, align 8, !tbaa !27
  br label %166

166:                                              ; preds = %150, %149
  br i1 %85, label %181, label %167

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 0, i32 3
  %169 = load i16, ptr %168, align 2, !tbaa !47
  %170 = uitofp i16 %169 to double
  %171 = load double, ptr %51, align 8, !tbaa !63
  %172 = fsub double %170, %171
  %173 = fmul double %35, %172
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 3
  %175 = load i16, ptr %174, align 2, !tbaa !47
  %176 = uitofp i16 %175 to double
  %177 = load double, ptr %52, align 8, !tbaa !63
  %178 = fsub double %176, %177
  %179 = load double, ptr %53, align 8, !tbaa !27
  %180 = tail call double @llvm.fmuladd.f64(double %173, double %178, double %179)
  store double %180, ptr %53, align 8, !tbaa !27
  br label %181

181:                                              ; preds = %166, %167
  br i1 %55, label %214, label %182

182:                                              ; preds = %181
  %183 = load i32, ptr %56, align 4, !tbaa !30
  %184 = icmp eq i32 %183, 12
  br i1 %184, label %185, label %214

185:                                              ; preds = %182
  %186 = load i32, ptr %57, align 4, !tbaa !30
  %187 = icmp eq i32 %186, 12
  br i1 %187, label %188, label %214

188:                                              ; preds = %185
  br i1 %86, label %193, label %189

189:                                              ; preds = %188
  %190 = getelementptr inbounds i16, ptr %76, i64 %89
  %191 = load i16, ptr %190, align 2, !tbaa !48
  %192 = zext i16 %191 to i32
  br label %193

193:                                              ; preds = %188, %189
  %194 = phi i32 [ %192, %189 ], [ 0, %188 ]
  %195 = sitofp i32 %194 to float
  %196 = fmul float %101, %195
  %197 = fpext float %196 to double
  %198 = load double, ptr %58, align 8, !tbaa !63
  %199 = fsub double %197, %198
  %200 = fmul double %35, %199
  br i1 %87, label %205, label %201

201:                                              ; preds = %193
  %202 = getelementptr inbounds i16, ptr %77, i64 %89
  %203 = load i16, ptr %202, align 2, !tbaa !48
  %204 = zext i16 %203 to i32
  br label %205

205:                                              ; preds = %193, %201
  %206 = phi i32 [ %204, %201 ], [ 0, %193 ]
  %207 = sitofp i32 %206 to float
  %208 = fmul float %111, %207
  %209 = fpext float %208 to double
  %210 = load double, ptr %59, align 8, !tbaa !63
  %211 = fsub double %209, %210
  %212 = load double, ptr %60, align 8, !tbaa !27
  %213 = tail call double @llvm.fmuladd.f64(double %200, double %211, double %212)
  store double %213, ptr %60, align 8, !tbaa !27
  br label %214

214:                                              ; preds = %205, %185, %182, %181
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 1
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 1
  %217 = add nuw nsw i64 %89, 1
  %218 = icmp eq i64 %217, %78
  br i1 %218, label %219, label %88, !llvm.loop !65

219:                                              ; preds = %214, %75
  %220 = load ptr, ptr %61, align 8, !tbaa !66
  %221 = icmp eq ptr %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = add nsw i64 %65, 1
  %224 = load i64, ptr %14, align 8, !tbaa !29
  %225 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %65, i64 noundef %224) #20
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i32
  br label %228

228:                                              ; preds = %219, %222, %67, %62
  %229 = phi i64 [ %65, %62 ], [ %65, %67 ], [ %223, %222 ], [ %65, %219 ]
  %230 = phi i32 [ 0, %62 ], [ 0, %67 ], [ %227, %222 ], [ 1, %219 ]
  %231 = add nuw nsw i64 %63, 1
  %232 = load i64, ptr %14, align 8, !tbaa !29
  %233 = icmp slt i64 %231, %232
  br i1 %233, label %62, label %234, !llvm.loop !67

234:                                              ; preds = %228, %11
  %235 = phi i32 [ 1, %11 ], [ %230, %228 ]
  %236 = tail call ptr @DestroyCacheView(ptr noundef %17) #21
  %237 = tail call ptr @DestroyCacheView(ptr noundef %16) #21
  br label %238

238:                                              ; preds = %234, %238
  %239 = phi i64 [ 0, %234 ], [ %252, %238 ]
  %240 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 %239, i32 9
  %241 = load double, ptr %240, align 8, !tbaa !68
  %242 = getelementptr inbounds %struct._ChannelStatistics, ptr %7, i64 %239, i32 9
  %243 = load double, ptr %242, align 8, !tbaa !68
  %244 = fmul double %241, %243
  %245 = fcmp olt double %244, 0.000000e+00
  %246 = select i1 %245, double 0.000000e+00, double %244
  %247 = tail call fastcc double @PerceptibleReciprocal(double noundef %246) #20
  %248 = fmul double %247, 6.553500e+04
  %249 = getelementptr inbounds double, ptr %3, i64 %239
  %250 = load double, ptr %249, align 8, !tbaa !27
  %251 = fmul double %248, %250
  store double %251, ptr %249, align 8, !tbaa !27
  %252 = add nuw nsw i64 %239, 1
  %253 = icmp eq i64 %252, 47
  br i1 %253, label %254, label %238, !llvm.loop !69

254:                                              ; preds = %238
  %255 = getelementptr inbounds double, ptr %3, i64 47
  store double 0.000000e+00, ptr %255, align 8, !tbaa !27
  %256 = and i32 %2, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds double, ptr %3, i64 1
  %260 = load double, ptr %259, align 8, !tbaa !27
  %261 = tail call double @llvm.fmuladd.f64(double %260, double %260, double 0.000000e+00)
  store double %261, ptr %255, align 8, !tbaa !27
  br label %262

262:                                              ; preds = %258, %254
  %263 = phi double [ %261, %258 ], [ 0.000000e+00, %254 ]
  %264 = and i32 %2, 2
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds double, ptr %3, i64 2
  %268 = load double, ptr %267, align 8, !tbaa !27
  %269 = tail call double @llvm.fmuladd.f64(double %268, double %268, double %263)
  store double %269, ptr %255, align 8, !tbaa !27
  br label %270

270:                                              ; preds = %266, %262
  %271 = phi double [ %269, %266 ], [ %263, %262 ]
  %272 = and i32 %2, 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds double, ptr %3, i64 4
  %276 = load double, ptr %275, align 8, !tbaa !27
  %277 = tail call double @llvm.fmuladd.f64(double %276, double %276, double %271)
  store double %277, ptr %255, align 8, !tbaa !27
  br label %278

278:                                              ; preds = %274, %270
  %279 = phi double [ %277, %274 ], [ %271, %270 ]
  %280 = and i32 %2, 8
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %284 = load i32, ptr %283, align 8, !tbaa !46
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds double, ptr %3, i64 8
  %288 = load double, ptr %287, align 8, !tbaa !27
  %289 = tail call double @llvm.fmuladd.f64(double %288, double %288, double %279)
  store double %289, ptr %255, align 8, !tbaa !27
  br label %290

290:                                              ; preds = %286, %282, %278
  %291 = phi double [ %289, %286 ], [ %279, %282 ], [ %279, %278 ]
  %292 = and i32 %2, 32
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %302, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %296 = load i32, ptr %295, align 4, !tbaa !30
  %297 = icmp eq i32 %296, 12
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = getelementptr inbounds double, ptr %3, i64 32
  %300 = load double, ptr %299, align 8, !tbaa !27
  %301 = tail call double @llvm.fmuladd.f64(double %300, double %300, double %291)
  store double %301, ptr %255, align 8, !tbaa !27
  br label %302

302:                                              ; preds = %298, %294, %290
  %303 = phi double [ %301, %298 ], [ %291, %294 ], [ %291, %290 ]
  %304 = tail call fastcc i64 @GetNumberChannels(ptr noundef %0, i32 noundef %2) #20
  %305 = uitofp i64 %304 to double
  %306 = fdiv double %303, %305
  %307 = tail call double @sqrt(double noundef %306) #21
  store double %307, ptr %255, align 8, !tbaa !27
  %308 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #21
  br label %309

309:                                              ; preds = %23, %302
  %310 = phi ptr [ %6, %302 ], [ %7, %23 ]
  %311 = phi i32 [ %235, %302 ], [ 0, %23 ]
  %312 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %310) #21
  br label %313

313:                                              ; preds = %309, %23
  %314 = phi i32 [ 0, %23 ], [ %311, %309 ]
  ret i32 %314
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetPeakAbsoluteDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store ptr %1, ptr %7, align 8, !tbaa !6
  store i32 %2, ptr %8, align 4, !tbaa !10
  store ptr %3, ptr %9, align 8, !tbaa !6
  store ptr %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  store i32 1, ptr %13, align 4, !tbaa !10
  %15 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #21
  store ptr %15, ptr %11, align 8, !tbaa !6
  %16 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #21
  store ptr %16, ptr %12, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %20 = shl i64 %19, 5
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %34

30:                                               ; preds = %25, %22, %5
  %31 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %32 = icmp ult i64 %31, 2
  %33 = select i1 %32, i64 1, i64 2
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i64 [ %29, %28 ], [ %33, %30 ]
  %36 = trunc i64 %35 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %14, i32 %36)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @GetPeakAbsoluteDistortion.omp_outlined, ptr nonnull %6, ptr nonnull %13, ptr nonnull %11, ptr nonnull %10, ptr nonnull %12, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9)
  %37 = load ptr, ptr %12, align 8, !tbaa !6
  %38 = call ptr @DestroyCacheView(ptr noundef %37) #21
  store ptr %38, ptr %12, align 8, !tbaa !6
  %39 = load ptr, ptr %11, align 8, !tbaa !6
  %40 = call ptr @DestroyCacheView(ptr noundef %39) #21
  %41 = load i32, ptr %13, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetPeakSignalToNoiseRatio(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #20
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !27
  %12 = tail call double @sqrt(double noundef %11) #21
  %13 = fdiv double 1.000000e+00, %12
  %14 = tail call fastcc double @MagickLog10(double noundef %13) #20
  %15 = fmul double %14, 2.000000e+01
  store double %15, ptr %10, align 8, !tbaa !27
  br label %16

16:                                               ; preds = %9, %5
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds double, ptr %3, i64 2
  %21 = load double, ptr %20, align 8, !tbaa !27
  %22 = tail call double @sqrt(double noundef %21) #21
  %23 = fdiv double 1.000000e+00, %22
  %24 = tail call fastcc double @MagickLog10(double noundef %23) #20
  %25 = fmul double %24, 2.000000e+01
  store double %25, ptr %20, align 8, !tbaa !27
  br label %26

26:                                               ; preds = %19, %16
  %27 = and i32 %2, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds double, ptr %3, i64 4
  %31 = load double, ptr %30, align 8, !tbaa !27
  %32 = tail call double @sqrt(double noundef %31) #21
  %33 = fdiv double 1.000000e+00, %32
  %34 = tail call fastcc double @MagickLog10(double noundef %33) #20
  %35 = fmul double %34, 2.000000e+01
  store double %35, ptr %30, align 8, !tbaa !27
  br label %36

36:                                               ; preds = %29, %26
  %37 = and i32 %2, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !46
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds double, ptr %3, i64 8
  %45 = load double, ptr %44, align 8, !tbaa !27
  %46 = tail call double @sqrt(double noundef %45) #21
  %47 = fdiv double 1.000000e+00, %46
  %48 = tail call fastcc double @MagickLog10(double noundef %47) #20
  %49 = fmul double %48, 2.000000e+01
  store double %49, ptr %44, align 8, !tbaa !27
  br label %50

50:                                               ; preds = %43, %39, %36
  %51 = and i32 %2, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !30
  %56 = icmp eq i32 %55, 12
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = getelementptr inbounds double, ptr %3, i64 32
  %59 = load double, ptr %58, align 8, !tbaa !27
  %60 = tail call double @sqrt(double noundef %59) #21
  %61 = fdiv double 1.000000e+00, %60
  %62 = tail call fastcc double @MagickLog10(double noundef %61) #20
  %63 = fmul double %62, 2.000000e+01
  store double %63, ptr %58, align 8, !tbaa !27
  br label %64

64:                                               ; preds = %57, %53, %50
  %65 = getelementptr inbounds double, ptr %3, i64 47
  %66 = load double, ptr %65, align 8, !tbaa !27
  %67 = tail call double @sqrt(double noundef %66) #21
  %68 = fdiv double 1.000000e+00, %67
  %69 = tail call fastcc double @MagickLog10(double noundef %68) #20
  %70 = fmul double %69, 2.000000e+01
  store double %70, ptr %65, align 8, !tbaa !27
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @GetPerceptualHashDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @GetImageChannelPerceptualHash(ptr noundef %0, ptr noundef %4) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %189, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @GetImageChannelPerceptualHash(ptr noundef %1, ptr noundef %4) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %186, label %11

11:                                               ; preds = %8
  %12 = and i32 %2, 1
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %2, 2
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %2, 4
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %2, 8
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %2, 32
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 1
  %23 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 1
  %24 = getelementptr inbounds double, ptr %3, i64 1
  %25 = getelementptr inbounds double, ptr %3, i64 47
  %26 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 2
  %27 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 2
  %28 = getelementptr inbounds double, ptr %3, i64 2
  %29 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 4
  %30 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 4
  %31 = getelementptr inbounds double, ptr %3, i64 4
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %33 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %34 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 8
  %35 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 8
  %36 = getelementptr inbounds double, ptr %3, i64 8
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %39 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 32
  %40 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 32
  %41 = getelementptr inbounds double, ptr %3, i64 32
  br label %42

42:                                               ; preds = %11, %110
  %43 = phi i64 [ 0, %11 ], [ %111, %110 ]
  br i1 %13, label %54, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds [32 x double], ptr %22, i64 0, i64 %43
  %46 = load double, ptr %45, align 8, !tbaa !27
  %47 = getelementptr inbounds [32 x double], ptr %23, i64 0, i64 %43
  %48 = load double, ptr %47, align 8, !tbaa !27
  %49 = fsub double %46, %48
  %50 = load double, ptr %24, align 8, !tbaa !27
  %51 = tail call double @llvm.fmuladd.f64(double %49, double %49, double %50)
  store double %51, ptr %24, align 8, !tbaa !27
  %52 = load double, ptr %25, align 8, !tbaa !27
  %53 = tail call double @llvm.fmuladd.f64(double %49, double %49, double %52)
  store double %53, ptr %25, align 8, !tbaa !27
  br label %54

54:                                               ; preds = %44, %42
  br i1 %15, label %65, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds [32 x double], ptr %26, i64 0, i64 %43
  %57 = load double, ptr %56, align 8, !tbaa !27
  %58 = getelementptr inbounds [32 x double], ptr %27, i64 0, i64 %43
  %59 = load double, ptr %58, align 8, !tbaa !27
  %60 = fsub double %57, %59
  %61 = load double, ptr %28, align 8, !tbaa !27
  %62 = tail call double @llvm.fmuladd.f64(double %60, double %60, double %61)
  store double %62, ptr %28, align 8, !tbaa !27
  %63 = load double, ptr %25, align 8, !tbaa !27
  %64 = tail call double @llvm.fmuladd.f64(double %60, double %60, double %63)
  store double %64, ptr %25, align 8, !tbaa !27
  br label %65

65:                                               ; preds = %55, %54
  br i1 %17, label %76, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds [32 x double], ptr %29, i64 0, i64 %43
  %68 = load double, ptr %67, align 8, !tbaa !27
  %69 = getelementptr inbounds [32 x double], ptr %30, i64 0, i64 %43
  %70 = load double, ptr %69, align 8, !tbaa !27
  %71 = fsub double %68, %70
  %72 = load double, ptr %31, align 8, !tbaa !27
  %73 = tail call double @llvm.fmuladd.f64(double %71, double %71, double %72)
  store double %73, ptr %31, align 8, !tbaa !27
  %74 = load double, ptr %25, align 8, !tbaa !27
  %75 = tail call double @llvm.fmuladd.f64(double %71, double %71, double %74)
  store double %75, ptr %25, align 8, !tbaa !27
  br label %76

76:                                               ; preds = %66, %65
  br i1 %19, label %93, label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %32, align 8, !tbaa !46
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %33, align 8, !tbaa !46
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds [32 x double], ptr %34, i64 0, i64 %43
  %85 = load double, ptr %84, align 8, !tbaa !27
  %86 = getelementptr inbounds [32 x double], ptr %35, i64 0, i64 %43
  %87 = load double, ptr %86, align 8, !tbaa !27
  %88 = fsub double %85, %87
  %89 = load double, ptr %36, align 8, !tbaa !27
  %90 = tail call double @llvm.fmuladd.f64(double %88, double %88, double %89)
  store double %90, ptr %36, align 8, !tbaa !27
  %91 = load double, ptr %25, align 8, !tbaa !27
  %92 = tail call double @llvm.fmuladd.f64(double %88, double %88, double %91)
  store double %92, ptr %25, align 8, !tbaa !27
  br label %93

93:                                               ; preds = %83, %80, %77, %76
  br i1 %21, label %110, label %94

94:                                               ; preds = %93
  %95 = load i32, ptr %37, align 4, !tbaa !30
  %96 = icmp eq i32 %95, 12
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load i32, ptr %38, align 4, !tbaa !30
  %99 = icmp eq i32 %98, 12
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = getelementptr inbounds [32 x double], ptr %39, i64 0, i64 %43
  %102 = load double, ptr %101, align 8, !tbaa !27
  %103 = getelementptr inbounds [32 x double], ptr %40, i64 0, i64 %43
  %104 = load double, ptr %103, align 8, !tbaa !27
  %105 = fsub double %102, %104
  %106 = load double, ptr %41, align 8, !tbaa !27
  %107 = tail call double @llvm.fmuladd.f64(double %105, double %105, double %106)
  store double %107, ptr %41, align 8, !tbaa !27
  %108 = load double, ptr %25, align 8, !tbaa !27
  %109 = tail call double @llvm.fmuladd.f64(double %105, double %105, double %108)
  store double %109, ptr %25, align 8, !tbaa !27
  br label %110

110:                                              ; preds = %93, %94, %97, %100
  %111 = add nuw nsw i64 %43, 1
  %112 = icmp eq i64 %111, 7
  br i1 %112, label %113, label %42, !llvm.loop !70

113:                                              ; preds = %110, %181
  %114 = phi i64 [ %182, %181 ], [ 0, %110 ]
  br i1 %13, label %125, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 1, i32 1, i64 %114
  %117 = load double, ptr %116, align 8, !tbaa !27
  %118 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 1, i32 1, i64 %114
  %119 = load double, ptr %118, align 8, !tbaa !27
  %120 = fsub double %117, %119
  %121 = load double, ptr %24, align 8, !tbaa !27
  %122 = tail call double @llvm.fmuladd.f64(double %120, double %120, double %121)
  store double %122, ptr %24, align 8, !tbaa !27
  %123 = load double, ptr %25, align 8, !tbaa !27
  %124 = tail call double @llvm.fmuladd.f64(double %120, double %120, double %123)
  store double %124, ptr %25, align 8, !tbaa !27
  br label %125

125:                                              ; preds = %115, %113
  br i1 %15, label %136, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 2, i32 1, i64 %114
  %128 = load double, ptr %127, align 8, !tbaa !27
  %129 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 2, i32 1, i64 %114
  %130 = load double, ptr %129, align 8, !tbaa !27
  %131 = fsub double %128, %130
  %132 = load double, ptr %28, align 8, !tbaa !27
  %133 = tail call double @llvm.fmuladd.f64(double %131, double %131, double %132)
  store double %133, ptr %28, align 8, !tbaa !27
  %134 = load double, ptr %25, align 8, !tbaa !27
  %135 = tail call double @llvm.fmuladd.f64(double %131, double %131, double %134)
  store double %135, ptr %25, align 8, !tbaa !27
  br label %136

136:                                              ; preds = %126, %125
  br i1 %17, label %147, label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 4, i32 1, i64 %114
  %139 = load double, ptr %138, align 8, !tbaa !27
  %140 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 4, i32 1, i64 %114
  %141 = load double, ptr %140, align 8, !tbaa !27
  %142 = fsub double %139, %141
  %143 = load double, ptr %31, align 8, !tbaa !27
  %144 = tail call double @llvm.fmuladd.f64(double %142, double %142, double %143)
  store double %144, ptr %31, align 8, !tbaa !27
  %145 = load double, ptr %25, align 8, !tbaa !27
  %146 = tail call double @llvm.fmuladd.f64(double %142, double %142, double %145)
  store double %146, ptr %25, align 8, !tbaa !27
  br label %147

147:                                              ; preds = %137, %136
  br i1 %19, label %164, label %148

148:                                              ; preds = %147
  %149 = load i32, ptr %32, align 8, !tbaa !46
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %148
  %152 = load i32, ptr %33, align 8, !tbaa !46
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %164, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 8, i32 1, i64 %114
  %156 = load double, ptr %155, align 8, !tbaa !27
  %157 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 8, i32 1, i64 %114
  %158 = load double, ptr %157, align 8, !tbaa !27
  %159 = fsub double %156, %158
  %160 = load double, ptr %36, align 8, !tbaa !27
  %161 = tail call double @llvm.fmuladd.f64(double %159, double %159, double %160)
  store double %161, ptr %36, align 8, !tbaa !27
  %162 = load double, ptr %25, align 8, !tbaa !27
  %163 = tail call double @llvm.fmuladd.f64(double %159, double %159, double %162)
  store double %163, ptr %25, align 8, !tbaa !27
  br label %164

164:                                              ; preds = %154, %151, %148, %147
  br i1 %21, label %181, label %165

165:                                              ; preds = %164
  %166 = load i32, ptr %37, align 4, !tbaa !30
  %167 = icmp eq i32 %166, 12
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = load i32, ptr %38, align 4, !tbaa !30
  %170 = icmp eq i32 %169, 12
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %9, i64 32, i32 1, i64 %114
  %173 = load double, ptr %172, align 8, !tbaa !27
  %174 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %6, i64 32, i32 1, i64 %114
  %175 = load double, ptr %174, align 8, !tbaa !27
  %176 = fsub double %173, %175
  %177 = load double, ptr %41, align 8, !tbaa !27
  %178 = tail call double @llvm.fmuladd.f64(double %176, double %176, double %177)
  store double %178, ptr %41, align 8, !tbaa !27
  %179 = load double, ptr %25, align 8, !tbaa !27
  %180 = tail call double @llvm.fmuladd.f64(double %176, double %176, double %179)
  store double %180, ptr %25, align 8, !tbaa !27
  br label %181

181:                                              ; preds = %164, %165, %168, %171
  %182 = add nuw nsw i64 %114, 1
  %183 = icmp eq i64 %182, 7
  br i1 %183, label %184, label %113, !llvm.loop !71

184:                                              ; preds = %181
  %185 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %9) #21
  br label %186

186:                                              ; preds = %8, %184
  %187 = phi i32 [ 1, %184 ], [ 0, %8 ]
  %188 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %6) #21
  br label %189

189:                                              ; preds = %186, %5
  %190 = phi i32 [ 0, %5 ], [ %187, %186 ]
  ret i32 %190
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @GetRootMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #20
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !27
  %12 = tail call double @sqrt(double noundef %11) #21
  store double %12, ptr %10, align 8, !tbaa !27
  br label %13

13:                                               ; preds = %9, %5
  %14 = and i32 %2, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds double, ptr %3, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !27
  %19 = tail call double @sqrt(double noundef %18) #21
  store double %19, ptr %17, align 8, !tbaa !27
  br label %20

20:                                               ; preds = %16, %13
  %21 = and i32 %2, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds double, ptr %3, i64 4
  %25 = load double, ptr %24, align 8, !tbaa !27
  %26 = tail call double @sqrt(double noundef %25) #21
  store double %26, ptr %24, align 8, !tbaa !27
  br label %27

27:                                               ; preds = %23, %20
  %28 = and i32 %2, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !46
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds double, ptr %3, i64 8
  %36 = load double, ptr %35, align 8, !tbaa !27
  %37 = tail call double @sqrt(double noundef %36) #21
  store double %37, ptr %35, align 8, !tbaa !27
  br label %38

38:                                               ; preds = %34, %30, %27
  %39 = and i32 %2, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !30
  %44 = icmp eq i32 %43, 12
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds double, ptr %3, i64 32
  %47 = load double, ptr %46, align 8, !tbaa !27
  %48 = tail call double @sqrt(double noundef %47) #21
  store double %48, ptr %46, align 8, !tbaa !27
  br label %49

49:                                               ; preds = %45, %41, %38
  %50 = getelementptr inbounds double, ptr %3, i64 47
  %51 = load double, ptr %50, align 8, !tbaa !27
  %52 = tail call double @sqrt(double noundef %51) #21
  store double %52, ptr %50, align 8, !tbaa !27
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @FormatImageProperty(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetAbsoluteDistortion.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %8, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10) #3 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [48 x double], align 16
  %17 = alloca %struct._MagickPixelPacket, align 8
  %18 = alloca %struct._MagickPixelPacket, align 8
  %19 = load ptr, ptr %2, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !29
  %22 = add nsw i64 %21, -1
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %161

24:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 0, ptr %12, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 %22, ptr %13, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 1, ptr %14, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  store i32 0, ptr %15, align 4, !tbaa !10
  %25 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %26 = load i64, ptr %13, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %13, align 8, !tbaa !41
  %28 = load i64, ptr %12, align 8, !tbaa !41
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %160, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds [48 x double], ptr %16, i64 0, i64 1
  %32 = getelementptr inbounds [48 x double], ptr %16, i64 0, i64 2
  %33 = getelementptr inbounds [48 x double], ptr %16, i64 0, i64 4
  %34 = getelementptr inbounds [48 x double], ptr %16, i64 0, i64 8
  %35 = getelementptr inbounds [48 x double], ptr %16, i64 0, i64 32
  %36 = getelementptr inbounds [48 x double], ptr %16, i64 0, i64 47
  br label %37

37:                                               ; preds = %30, %152
  %38 = phi i64 [ %27, %30 ], [ %158, %152 ]
  %39 = phi i64 [ %28, %30 ], [ %156, %152 ]
  %40 = icmp sgt i64 %39, %38
  br i1 %40, label %152, label %41

41:                                               ; preds = %37, %146
  %42 = phi i64 [ %147, %146 ], [ %39, %37 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %17) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %18) #4
  %43 = load i32, ptr %3, align 4, !tbaa !10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %146, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 8, !tbaa !6
  %47 = load ptr, ptr %2, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !28
  %50 = load ptr, ptr %5, align 8, !tbaa !6
  %51 = call ptr @GetCacheViewVirtualPixels(ptr noundef %46, i64 noundef 0, i64 noundef %42, i64 noundef %49, i64 noundef 1, ptr noundef %50) #25
  %52 = load ptr, ptr %6, align 8, !tbaa !6
  %53 = load ptr, ptr %7, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !28
  %56 = load ptr, ptr %5, align 8, !tbaa !6
  %57 = call ptr @GetCacheViewVirtualPixels(ptr noundef %52, i64 noundef 0, i64 noundef %42, i64 noundef %55, i64 noundef 1, ptr noundef %56) #25
  %58 = icmp eq ptr %51, null
  %59 = icmp eq ptr %57, null
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %146

62:                                               ; preds = %45
  %63 = load ptr, ptr %4, align 8, !tbaa !6
  %64 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %63) #21
  %65 = load ptr, ptr %6, align 8, !tbaa !6
  %66 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %65) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false), !tbaa.struct !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false)
  %67 = call ptr @ResetMagickMemory(ptr noundef nonnull %16, i32 noundef 0, i64 noundef 384) #21
  %68 = load ptr, ptr %2, align 8, !tbaa !6
  %69 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 7
  %70 = load i64, ptr %69, align 8, !tbaa !28
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %134

72:                                               ; preds = %62, %126
  %73 = phi ptr [ %130, %126 ], [ %68, %62 ]
  %74 = phi i64 [ %129, %126 ], [ 0, %62 ]
  %75 = phi ptr [ %128, %126 ], [ %57, %62 ]
  %76 = phi ptr [ %127, %126 ], [ %51, %62 ]
  %77 = getelementptr inbounds i16, ptr %64, i64 %74
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %73, ptr noundef nonnull %76, ptr noundef %77, ptr noundef nonnull %17) #20
  %78 = load ptr, ptr %7, align 8, !tbaa !6
  %79 = getelementptr inbounds i16, ptr %66, i64 %74
  call fastcc void @SetMagickPixelPacket(ptr noundef %78, ptr noundef nonnull %75, ptr noundef %79, ptr noundef nonnull %18) #20
  %80 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %17, ptr noundef nonnull %18) #21
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %126

82:                                               ; preds = %72
  %83 = load i32, ptr %9, align 4, !tbaa !10
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load double, ptr %31, align 8, !tbaa !27
  %88 = fadd double %87, 1.000000e+00
  store double %88, ptr %31, align 8, !tbaa !27
  br label %89

89:                                               ; preds = %86, %82
  %90 = and i32 %83, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load double, ptr %32, align 16, !tbaa !27
  %94 = fadd double %93, 1.000000e+00
  store double %94, ptr %32, align 16, !tbaa !27
  br label %95

95:                                               ; preds = %92, %89
  %96 = and i32 %83, 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load double, ptr %33, align 16, !tbaa !27
  %100 = fadd double %99, 1.000000e+00
  store double %100, ptr %33, align 16, !tbaa !27
  br label %101

101:                                              ; preds = %98, %95
  %102 = and i32 %83, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %2, align 8, !tbaa !6
  %106 = getelementptr inbounds %struct._Image, ptr %105, i64 0, i32 6
  %107 = load i32, ptr %106, align 8, !tbaa !46
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load double, ptr %34, align 16, !tbaa !27
  %111 = fadd double %110, 1.000000e+00
  store double %111, ptr %34, align 16, !tbaa !27
  br label %112

112:                                              ; preds = %109, %104, %101
  %113 = and i32 %83, 32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %2, align 8, !tbaa !6
  %117 = getelementptr inbounds %struct._Image, ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !30
  %119 = icmp eq i32 %118, 12
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load double, ptr %35, align 16, !tbaa !27
  %122 = fadd double %121, 1.000000e+00
  store double %122, ptr %35, align 16, !tbaa !27
  br label %123

123:                                              ; preds = %120, %115, %112
  %124 = load double, ptr %36, align 8, !tbaa !27
  %125 = fadd double %124, 1.000000e+00
  store double %125, ptr %36, align 8, !tbaa !27
  br label %126

126:                                              ; preds = %123, %72
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 1
  %129 = add nuw nsw i64 %74, 1
  %130 = load ptr, ptr %2, align 8, !tbaa !6
  %131 = getelementptr inbounds %struct._Image, ptr %130, i64 0, i32 7
  %132 = load i64, ptr %131, align 8, !tbaa !28
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %72, label %134, !llvm.loop !72

134:                                              ; preds = %126, %62
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_GetAbsoluteError.var)
  %135 = load ptr, ptr %10, align 8, !tbaa !6
  br label %136

136:                                              ; preds = %134, %136
  %137 = phi i64 [ 0, %134 ], [ %143, %136 ]
  %138 = getelementptr inbounds [48 x double], ptr %16, i64 0, i64 %137
  %139 = load double, ptr %138, align 8, !tbaa !27
  %140 = getelementptr inbounds double, ptr %135, i64 %137
  %141 = load double, ptr %140, align 8, !tbaa !27
  %142 = fadd double %139, %141
  store double %142, ptr %140, align 8, !tbaa !27
  %143 = add nuw nsw i64 %137, 1
  %144 = icmp eq i64 %143, 48
  br i1 %144, label %145, label %136, !llvm.loop !73

145:                                              ; preds = %136
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_GetAbsoluteError.var)
  br label %146

146:                                              ; preds = %41, %145, %61
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %16) #4
  %147 = add nsw i64 %42, 1
  %148 = load i64, ptr %13, align 8, !tbaa !41
  %149 = icmp slt i64 %42, %148
  br i1 %149, label %41, label %150

150:                                              ; preds = %146
  %151 = load i64, ptr %12, align 8, !tbaa !41
  br label %152

152:                                              ; preds = %150, %37
  %153 = phi i64 [ %39, %37 ], [ %151, %150 ]
  %154 = phi i64 [ %38, %37 ], [ %148, %150 ]
  %155 = load i64, ptr %14, align 8, !tbaa !41
  %156 = add nsw i64 %155, %153
  store i64 %156, ptr %12, align 8, !tbaa !41
  %157 = add nsw i64 %155, %154
  %158 = call i64 @llvm.smin.i64(i64 %157, i64 %22)
  store i64 %158, ptr %13, align 8, !tbaa !41
  %159 = icmp sgt i64 %156, %158
  br i1 %159, label %160, label %37

160:                                              ; preds = %152, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  br label %161

161:                                              ; preds = %160, %11
  ret void
}

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #13

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #13

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetFuzzDistortion.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9) #3 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [48 x double], align 16
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %276

21:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 0, ptr %11, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 %19, ptr %12, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 1, ptr %13, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  store i32 0, ptr %14, align 4, !tbaa !10
  %22 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %23 = load i64, ptr %12, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %12, align 8, !tbaa !41
  %25 = load i64, ptr %11, align 8, !tbaa !41
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %275, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 1
  %29 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 47
  %30 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 2
  %31 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 4
  %32 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 8
  %33 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 32
  br label %34

34:                                               ; preds = %27, %267
  %35 = phi i64 [ %24, %27 ], [ %273, %267 ]
  %36 = phi i64 [ %25, %27 ], [ %271, %267 ]
  %37 = icmp sgt i64 %36, %35
  br i1 %37, label %267, label %38

38:                                               ; preds = %34, %261
  %39 = phi i64 [ %262, %261 ], [ %36, %34 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %15) #4
  %40 = load i32, ptr %3, align 4, !tbaa !10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %261, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !6
  %44 = load ptr, ptr %2, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !28
  %47 = load ptr, ptr %5, align 8, !tbaa !6
  %48 = call ptr @GetCacheViewVirtualPixels(ptr noundef %43, i64 noundef 0, i64 noundef %39, i64 noundef %46, i64 noundef 1, ptr noundef %47) #25
  %49 = load ptr, ptr %6, align 8, !tbaa !6
  %50 = load ptr, ptr %7, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !28
  %53 = load ptr, ptr %5, align 8, !tbaa !6
  %54 = call ptr @GetCacheViewVirtualPixels(ptr noundef %49, i64 noundef 0, i64 noundef %39, i64 noundef %52, i64 noundef 1, ptr noundef %53) #25
  %55 = icmp eq ptr %48, null
  %56 = icmp eq ptr %54, null
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %261

59:                                               ; preds = %42
  %60 = load ptr, ptr %4, align 8, !tbaa !6
  %61 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %60) #21
  %62 = load ptr, ptr %6, align 8, !tbaa !6
  %63 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %62) #21
  %64 = call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 384) #21
  %65 = load ptr, ptr %2, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 7
  %67 = load i64, ptr %66, align 8, !tbaa !28
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %249

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = icmp eq i32 %71, 0
  %73 = load ptr, ptr %7, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !46
  %76 = icmp eq i32 %75, 0
  %77 = load i32, ptr %8, align 4, !tbaa !10
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  %80 = insertelement <4 x i32> poison, i32 %77, i64 0
  %81 = shufflevector <4 x i32> %80, <4 x i32> poison, <4 x i32> zeroinitializer
  %82 = and <4 x i32> %81, <i32 32, i32 8, i32 4, i32 2>
  %83 = icmp eq <4 x i32> %82, zeroinitializer
  %84 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 1
  %85 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 1
  %86 = icmp eq ptr %61, null
  %87 = icmp eq ptr %63, null
  %88 = load double, ptr %28, align 8, !tbaa !27
  %89 = load double, ptr %29, align 8, !tbaa !27
  %90 = load double, ptr %30, align 16, !tbaa !27
  %91 = load double, ptr %31, align 16, !tbaa !27
  %92 = load double, ptr %32, align 16, !tbaa !27
  %93 = load double, ptr %33, align 16, !tbaa !27
  %94 = extractelement <4 x i1> %83, i64 0
  %95 = extractelement <4 x i1> %83, i64 1
  %96 = extractelement <4 x i1> %83, i64 2
  %97 = extractelement <4 x i1> %83, i64 3
  br label %98

98:                                               ; preds = %69, %242
  %99 = phi double [ %93, %69 ], [ %243, %242 ]
  %100 = phi double [ %92, %69 ], [ %209, %242 ]
  %101 = phi double [ %91, %69 ], [ %184, %242 ]
  %102 = phi double [ %90, %69 ], [ %166, %242 ]
  %103 = phi double [ %89, %69 ], [ %244, %242 ]
  %104 = phi double [ %88, %69 ], [ %147, %242 ]
  %105 = phi ptr [ %48, %69 ], [ %245, %242 ]
  %106 = phi i64 [ 0, %69 ], [ %247, %242 ]
  %107 = phi ptr [ %54, %69 ], [ %246, %242 ]
  br i1 %72, label %113, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 3
  %110 = load i16, ptr %109, align 2, !tbaa !47
  %111 = xor i16 %110, -1
  %112 = zext i16 %111 to i32
  br label %113

113:                                              ; preds = %98, %108
  %114 = phi i32 [ %112, %108 ], [ 65535, %98 ]
  %115 = sitofp i32 %114 to double
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = fptrunc double %116 to float
  br i1 %76, label %123, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 3
  %120 = load i16, ptr %119, align 2, !tbaa !47
  %121 = xor i16 %120, -1
  %122 = zext i16 %121 to i32
  br label %123

123:                                              ; preds = %113, %118
  %124 = phi i32 [ %122, %118 ], [ 65535, %113 ]
  %125 = sitofp i32 %124 to double
  %126 = fmul double %125, 0x3EF0001000100010
  %127 = fptrunc double %126 to float
  br i1 %79, label %145, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 2
  %130 = load i16, ptr %129, align 2, !tbaa !43
  %131 = uitofp i16 %130 to float
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  %133 = load i16, ptr %132, align 2, !tbaa !43
  %134 = uitofp i16 %133 to float
  %135 = fneg float %127
  %136 = fmul float %135, %134
  %137 = call float @llvm.fmuladd.f32(float %117, float %131, float %136)
  %138 = fpext float %137 to double
  %139 = fmul double %138, 0x3EF0001000100010
  %140 = fptrunc double %139 to float
  %141 = fmul float %140, %140
  %142 = fpext float %141 to double
  %143 = fadd double %104, %142
  store double %143, ptr %28, align 8, !tbaa !27
  %144 = fadd double %103, %142
  store double %144, ptr %29, align 8, !tbaa !27
  br label %145

145:                                              ; preds = %128, %123
  %146 = phi double [ %144, %128 ], [ %103, %123 ]
  %147 = phi double [ %143, %128 ], [ %104, %123 ]
  br i1 %97, label %165, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 1
  %150 = load i16, ptr %149, align 2, !tbaa !44
  %151 = uitofp i16 %150 to float
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 1
  %153 = load i16, ptr %152, align 2, !tbaa !44
  %154 = uitofp i16 %153 to float
  %155 = fneg float %127
  %156 = fmul float %155, %154
  %157 = call float @llvm.fmuladd.f32(float %117, float %151, float %156)
  %158 = fpext float %157 to double
  %159 = fmul double %158, 0x3EF0001000100010
  %160 = fptrunc double %159 to float
  %161 = fmul float %160, %160
  %162 = fpext float %161 to double
  %163 = fadd double %102, %162
  store double %163, ptr %30, align 16, !tbaa !27
  %164 = fadd double %146, %162
  store double %164, ptr %29, align 8, !tbaa !27
  br label %165

165:                                              ; preds = %148, %145
  %166 = phi double [ %163, %148 ], [ %102, %145 ]
  %167 = phi double [ %164, %148 ], [ %146, %145 ]
  br i1 %96, label %183, label %168

168:                                              ; preds = %165
  %169 = load i16, ptr %105, align 2, !tbaa !45
  %170 = uitofp i16 %169 to float
  %171 = load i16, ptr %107, align 2, !tbaa !45
  %172 = uitofp i16 %171 to float
  %173 = fneg float %127
  %174 = fmul float %173, %172
  %175 = call float @llvm.fmuladd.f32(float %117, float %170, float %174)
  %176 = fpext float %175 to double
  %177 = fmul double %176, 0x3EF0001000100010
  %178 = fptrunc double %177 to float
  %179 = fmul float %178, %178
  %180 = fpext float %179 to double
  %181 = fadd double %101, %180
  store double %181, ptr %31, align 16, !tbaa !27
  %182 = fadd double %167, %180
  store double %182, ptr %29, align 8, !tbaa !27
  br label %183

183:                                              ; preds = %168, %165
  %184 = phi double [ %181, %168 ], [ %101, %165 ]
  %185 = phi double [ %182, %168 ], [ %167, %165 ]
  br i1 %95, label %208, label %186

186:                                              ; preds = %183
  br i1 %72, label %187, label %188

187:                                              ; preds = %186
  br i1 %76, label %208, label %192

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 3
  %190 = load i16, ptr %189, align 2, !tbaa !47
  %191 = zext i16 %190 to i32
  br i1 %76, label %197, label %192

192:                                              ; preds = %187, %188
  %193 = phi i32 [ %191, %188 ], [ 0, %187 ]
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 3
  %195 = load i16, ptr %194, align 2, !tbaa !47
  %196 = zext i16 %195 to i32
  br label %197

197:                                              ; preds = %188, %192
  %198 = phi i32 [ %193, %192 ], [ %191, %188 ]
  %199 = phi i32 [ %196, %192 ], [ 0, %188 ]
  %200 = sub nsw i32 %198, %199
  %201 = sitofp i32 %200 to double
  %202 = fmul double %201, 0x3EF0001000100010
  %203 = fptrunc double %202 to float
  %204 = fmul float %203, %203
  %205 = fpext float %204 to double
  %206 = fadd double %100, %205
  store double %206, ptr %32, align 16, !tbaa !27
  %207 = fadd double %185, %205
  store double %207, ptr %29, align 8, !tbaa !27
  br label %208

208:                                              ; preds = %197, %187, %183
  %209 = phi double [ %206, %197 ], [ %100, %187 ], [ %100, %183 ]
  %210 = phi double [ %207, %197 ], [ %185, %187 ], [ %185, %183 ]
  br i1 %94, label %242, label %211

211:                                              ; preds = %208
  %212 = load i32, ptr %84, align 4, !tbaa !30
  %213 = icmp eq i32 %212, 12
  br i1 %213, label %214, label %242

214:                                              ; preds = %211
  %215 = load i32, ptr %85, align 4, !tbaa !30
  %216 = icmp eq i32 %215, 12
  br i1 %216, label %217, label %242

217:                                              ; preds = %214
  br i1 %86, label %222, label %218

218:                                              ; preds = %217
  %219 = getelementptr inbounds i16, ptr %61, i64 %106
  %220 = load i16, ptr %219, align 2, !tbaa !48
  %221 = zext i16 %220 to i32
  br label %222

222:                                              ; preds = %217, %218
  %223 = phi i32 [ %221, %218 ], [ 0, %217 ]
  %224 = sitofp i32 %223 to float
  br i1 %87, label %229, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds i16, ptr %63, i64 %106
  %227 = load i16, ptr %226, align 2, !tbaa !48
  %228 = zext i16 %227 to i32
  br label %229

229:                                              ; preds = %222, %225
  %230 = phi i32 [ %228, %225 ], [ 0, %222 ]
  %231 = sitofp i32 %230 to float
  %232 = fneg float %127
  %233 = fmul float %232, %231
  %234 = call float @llvm.fmuladd.f32(float %117, float %224, float %233)
  %235 = fpext float %234 to double
  %236 = fmul double %235, 0x3EF0001000100010
  %237 = fptrunc double %236 to float
  %238 = fmul float %237, %237
  %239 = fpext float %238 to double
  %240 = fadd double %99, %239
  store double %240, ptr %33, align 16, !tbaa !27
  %241 = fadd double %210, %239
  store double %241, ptr %29, align 8, !tbaa !27
  br label %242

242:                                              ; preds = %229, %214, %211, %208
  %243 = phi double [ %240, %229 ], [ %99, %214 ], [ %99, %211 ], [ %99, %208 ]
  %244 = phi double [ %241, %229 ], [ %210, %214 ], [ %210, %211 ], [ %210, %208 ]
  %245 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 1
  %246 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 1
  %247 = add nuw nsw i64 %106, 1
  %248 = icmp eq i64 %247, %67
  br i1 %248, label %249, label %98, !llvm.loop !74

249:                                              ; preds = %242, %59
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_GetFuzzDistortion.var)
  %250 = load ptr, ptr %9, align 8, !tbaa !6
  br label %251

251:                                              ; preds = %249, %251
  %252 = phi i64 [ 0, %249 ], [ %258, %251 ]
  %253 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 %252
  %254 = load double, ptr %253, align 8, !tbaa !27
  %255 = getelementptr inbounds double, ptr %250, i64 %252
  %256 = load double, ptr %255, align 8, !tbaa !27
  %257 = fadd double %254, %256
  store double %257, ptr %255, align 8, !tbaa !27
  %258 = add nuw nsw i64 %252, 1
  %259 = icmp eq i64 %258, 48
  br i1 %259, label %260, label %251, !llvm.loop !75

260:                                              ; preds = %251
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_GetFuzzDistortion.var)
  br label %261

261:                                              ; preds = %38, %260, %58
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %15) #4
  %262 = add nsw i64 %39, 1
  %263 = load i64, ptr %12, align 8, !tbaa !41
  %264 = icmp slt i64 %39, %263
  br i1 %264, label %38, label %265

265:                                              ; preds = %261
  %266 = load i64, ptr %11, align 8, !tbaa !41
  br label %267

267:                                              ; preds = %265, %34
  %268 = phi i64 [ %36, %34 ], [ %266, %265 ]
  %269 = phi i64 [ %35, %34 ], [ %263, %265 ]
  %270 = load i64, ptr %13, align 8, !tbaa !41
  %271 = add nsw i64 %270, %268
  store i64 %271, ptr %11, align 8, !tbaa !41
  %272 = add nsw i64 %270, %269
  %273 = call i64 @llvm.smin.i64(i64 %272, i64 %19)
  store i64 %273, ptr %12, align 8, !tbaa !41
  %274 = icmp sgt i64 %271, %273
  br i1 %274, label %275, label %34

275:                                              ; preds = %267, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  br label %276

276:                                              ; preds = %275, %10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @GetNumberChannels(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #14 {
  %3 = and i32 %1, 1
  %4 = lshr i32 %1, 1
  %5 = and i32 %4, 1
  %6 = add nuw nsw i32 %5, %3
  %7 = lshr i32 %1, 2
  %8 = and i32 %7, 1
  %9 = add nuw nsw i32 %6, %8
  %10 = zext nneg i32 %9 to i64
  %11 = and i32 %1, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = add nuw nsw i64 %17, %10
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i64 [ %10, %2 ], [ %18, %13 ]
  %21 = and i32 %1, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !30
  %26 = icmp eq i32 %25, 12
  %27 = zext i1 %26 to i64
  %28 = add nuw nsw i64 %20, %27
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi i64 [ %20, %19 ], [ %28, %23 ]
  ret i64 %30
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetMeanAbsoluteDistortion.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9) #3 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [48 x double], align 16
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %265

21:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 0, ptr %11, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 %19, ptr %12, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 1, ptr %13, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  store i32 0, ptr %14, align 4, !tbaa !10
  %22 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %23 = load i64, ptr %12, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %12, align 8, !tbaa !41
  %25 = load i64, ptr %11, align 8, !tbaa !41
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %264, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 1
  %29 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 47
  %30 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 2
  %31 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 4
  %32 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 8
  %33 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 32
  br label %34

34:                                               ; preds = %27, %256
  %35 = phi i64 [ %24, %27 ], [ %262, %256 ]
  %36 = phi i64 [ %25, %27 ], [ %260, %256 ]
  %37 = icmp sgt i64 %36, %35
  br i1 %37, label %256, label %38

38:                                               ; preds = %34, %250
  %39 = phi i64 [ %251, %250 ], [ %36, %34 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %15) #4
  %40 = load i32, ptr %3, align 4, !tbaa !10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %250, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !6
  %44 = load ptr, ptr %2, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !28
  %47 = load ptr, ptr %5, align 8, !tbaa !6
  %48 = call ptr @GetCacheViewVirtualPixels(ptr noundef %43, i64 noundef 0, i64 noundef %39, i64 noundef %46, i64 noundef 1, ptr noundef %47) #25
  %49 = load ptr, ptr %6, align 8, !tbaa !6
  %50 = load ptr, ptr %7, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !28
  %53 = load ptr, ptr %5, align 8, !tbaa !6
  %54 = call ptr @GetCacheViewVirtualPixels(ptr noundef %49, i64 noundef 0, i64 noundef %39, i64 noundef %52, i64 noundef 1, ptr noundef %53) #25
  %55 = icmp eq ptr %48, null
  %56 = icmp eq ptr %54, null
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %250

59:                                               ; preds = %42
  %60 = load ptr, ptr %4, align 8, !tbaa !6
  %61 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %60) #21
  %62 = load ptr, ptr %6, align 8, !tbaa !6
  %63 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %62) #21
  %64 = call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 384) #21
  %65 = load ptr, ptr %2, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 7
  %67 = load i64, ptr %66, align 8, !tbaa !28
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %238

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = icmp eq i32 %71, 0
  %73 = load ptr, ptr %7, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !46
  %76 = icmp eq i32 %75, 0
  %77 = load i32, ptr %8, align 4, !tbaa !10
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  %80 = insertelement <4 x i32> poison, i32 %77, i64 0
  %81 = shufflevector <4 x i32> %80, <4 x i32> poison, <4 x i32> zeroinitializer
  %82 = and <4 x i32> %81, <i32 32, i32 8, i32 4, i32 2>
  %83 = icmp eq <4 x i32> %82, zeroinitializer
  %84 = extractelement <4 x i1> %83, i64 1
  %85 = or i1 %72, %84
  %86 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 1
  %87 = icmp eq ptr %61, null
  %88 = icmp eq ptr %63, null
  %89 = load double, ptr %28, align 8, !tbaa !27
  %90 = load double, ptr %29, align 8, !tbaa !27
  %91 = load double, ptr %30, align 16, !tbaa !27
  %92 = load double, ptr %31, align 16, !tbaa !27
  %93 = load double, ptr %32, align 16, !tbaa !27
  %94 = load double, ptr %33, align 16, !tbaa !27
  %95 = extractelement <4 x i1> %83, i64 0
  %96 = extractelement <4 x i1> %83, i64 2
  %97 = extractelement <4 x i1> %83, i64 3
  br label %98

98:                                               ; preds = %69, %231
  %99 = phi double [ %94, %69 ], [ %232, %231 ]
  %100 = phi double [ %93, %69 ], [ %201, %231 ]
  %101 = phi double [ %92, %69 ], [ %184, %231 ]
  %102 = phi double [ %91, %69 ], [ %166, %231 ]
  %103 = phi double [ %90, %69 ], [ %233, %231 ]
  %104 = phi double [ %89, %69 ], [ %147, %231 ]
  %105 = phi ptr [ %48, %69 ], [ %234, %231 ]
  %106 = phi i64 [ 0, %69 ], [ %236, %231 ]
  %107 = phi ptr [ %54, %69 ], [ %235, %231 ]
  br i1 %72, label %113, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 3
  %110 = load i16, ptr %109, align 2, !tbaa !47
  %111 = xor i16 %110, -1
  %112 = zext i16 %111 to i32
  br label %113

113:                                              ; preds = %98, %108
  %114 = phi i32 [ %112, %108 ], [ 65535, %98 ]
  %115 = sitofp i32 %114 to double
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = fptrunc double %116 to float
  br i1 %76, label %123, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 3
  %120 = load i16, ptr %119, align 2, !tbaa !47
  %121 = xor i16 %120, -1
  %122 = zext i16 %121 to i32
  br label %123

123:                                              ; preds = %113, %118
  %124 = phi i32 [ %122, %118 ], [ 65535, %113 ]
  %125 = sitofp i32 %124 to double
  %126 = fmul double %125, 0x3EF0001000100010
  %127 = fptrunc double %126 to float
  br i1 %79, label %145, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 2
  %130 = load i16, ptr %129, align 2, !tbaa !43
  %131 = uitofp i16 %130 to float
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  %133 = load i16, ptr %132, align 2, !tbaa !43
  %134 = uitofp i16 %133 to float
  %135 = fneg float %127
  %136 = fmul float %135, %134
  %137 = call float @llvm.fmuladd.f32(float %117, float %131, float %136)
  %138 = call float @llvm.fabs.f32(float %137)
  %139 = fpext float %138 to double
  %140 = fmul double %139, 0x3EF0001000100010
  %141 = fptrunc double %140 to float
  %142 = fpext float %141 to double
  %143 = fadd double %104, %142
  store double %143, ptr %28, align 8, !tbaa !27
  %144 = fadd double %103, %142
  store double %144, ptr %29, align 8, !tbaa !27
  br label %145

145:                                              ; preds = %128, %123
  %146 = phi double [ %144, %128 ], [ %103, %123 ]
  %147 = phi double [ %143, %128 ], [ %104, %123 ]
  br i1 %97, label %165, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 1
  %150 = load i16, ptr %149, align 2, !tbaa !44
  %151 = uitofp i16 %150 to float
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 1
  %153 = load i16, ptr %152, align 2, !tbaa !44
  %154 = uitofp i16 %153 to float
  %155 = fneg float %127
  %156 = fmul float %155, %154
  %157 = call float @llvm.fmuladd.f32(float %117, float %151, float %156)
  %158 = call float @llvm.fabs.f32(float %157)
  %159 = fpext float %158 to double
  %160 = fmul double %159, 0x3EF0001000100010
  %161 = fptrunc double %160 to float
  %162 = fpext float %161 to double
  %163 = fadd double %102, %162
  store double %163, ptr %30, align 16, !tbaa !27
  %164 = fadd double %146, %162
  store double %164, ptr %29, align 8, !tbaa !27
  br label %165

165:                                              ; preds = %148, %145
  %166 = phi double [ %163, %148 ], [ %102, %145 ]
  %167 = phi double [ %164, %148 ], [ %146, %145 ]
  br i1 %96, label %183, label %168

168:                                              ; preds = %165
  %169 = load i16, ptr %105, align 2, !tbaa !45
  %170 = uitofp i16 %169 to float
  %171 = load i16, ptr %107, align 2, !tbaa !45
  %172 = uitofp i16 %171 to float
  %173 = fneg float %127
  %174 = fmul float %173, %172
  %175 = call float @llvm.fmuladd.f32(float %117, float %170, float %174)
  %176 = call float @llvm.fabs.f32(float %175)
  %177 = fpext float %176 to double
  %178 = fmul double %177, 0x3EF0001000100010
  %179 = fptrunc double %178 to float
  %180 = fpext float %179 to double
  %181 = fadd double %101, %180
  store double %181, ptr %31, align 16, !tbaa !27
  %182 = fadd double %167, %180
  store double %182, ptr %29, align 8, !tbaa !27
  br label %183

183:                                              ; preds = %168, %165
  %184 = phi double [ %181, %168 ], [ %101, %165 ]
  %185 = phi double [ %182, %168 ], [ %167, %165 ]
  br i1 %85, label %200, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 3
  %188 = load i16, ptr %187, align 2, !tbaa !47
  %189 = uitofp i16 %188 to double
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 3
  %191 = load i16, ptr %190, align 2, !tbaa !47
  %192 = uitofp i16 %191 to double
  %193 = fsub double %189, %192
  %194 = call double @llvm.fabs.f64(double %193)
  %195 = fmul double %194, 0x3EF0001000100010
  %196 = fptrunc double %195 to float
  %197 = fpext float %196 to double
  %198 = fadd double %100, %197
  store double %198, ptr %32, align 16, !tbaa !27
  %199 = fadd double %185, %197
  store double %199, ptr %29, align 8, !tbaa !27
  br label %200

200:                                              ; preds = %183, %186
  %201 = phi double [ %100, %183 ], [ %198, %186 ]
  %202 = phi double [ %185, %183 ], [ %199, %186 ]
  br i1 %95, label %231, label %203

203:                                              ; preds = %200
  %204 = load i32, ptr %86, align 4, !tbaa !30
  %205 = icmp eq i32 %204, 12
  br i1 %205, label %206, label %231

206:                                              ; preds = %203
  br i1 %87, label %211, label %207

207:                                              ; preds = %206
  %208 = getelementptr inbounds i16, ptr %61, i64 %106
  %209 = load i16, ptr %208, align 2, !tbaa !48
  %210 = zext i16 %209 to i32
  br label %211

211:                                              ; preds = %206, %207
  %212 = phi i32 [ %210, %207 ], [ 0, %206 ]
  %213 = sitofp i32 %212 to float
  br i1 %88, label %218, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds i16, ptr %63, i64 %106
  %216 = load i16, ptr %215, align 2, !tbaa !48
  %217 = zext i16 %216 to i32
  br label %218

218:                                              ; preds = %211, %214
  %219 = phi i32 [ %217, %214 ], [ 0, %211 ]
  %220 = sitofp i32 %219 to float
  %221 = fneg float %127
  %222 = fmul float %221, %220
  %223 = call float @llvm.fmuladd.f32(float %117, float %213, float %222)
  %224 = call float @llvm.fabs.f32(float %223)
  %225 = fpext float %224 to double
  %226 = fmul double %225, 0x3EF0001000100010
  %227 = fptrunc double %226 to float
  %228 = fpext float %227 to double
  %229 = fadd double %99, %228
  store double %229, ptr %33, align 16, !tbaa !27
  %230 = fadd double %202, %228
  store double %230, ptr %29, align 8, !tbaa !27
  br label %231

231:                                              ; preds = %218, %203, %200
  %232 = phi double [ %229, %218 ], [ %99, %203 ], [ %99, %200 ]
  %233 = phi double [ %230, %218 ], [ %202, %203 ], [ %202, %200 ]
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 1
  %235 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 1
  %236 = add nuw nsw i64 %106, 1
  %237 = icmp eq i64 %236, %67
  br i1 %237, label %238, label %98, !llvm.loop !76

238:                                              ; preds = %231, %59
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_GetMeanAbsoluteError.var)
  %239 = load ptr, ptr %9, align 8, !tbaa !6
  br label %240

240:                                              ; preds = %238, %240
  %241 = phi i64 [ 0, %238 ], [ %247, %240 ]
  %242 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 %241
  %243 = load double, ptr %242, align 8, !tbaa !27
  %244 = getelementptr inbounds double, ptr %239, i64 %241
  %245 = load double, ptr %244, align 8, !tbaa !27
  %246 = fadd double %243, %245
  store double %246, ptr %244, align 8, !tbaa !27
  %247 = add nuw nsw i64 %241, 1
  %248 = icmp eq i64 %247, 48
  br i1 %248, label %249, label %240, !llvm.loop !77

249:                                              ; preds = %240
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_GetMeanAbsoluteError.var)
  br label %250

250:                                              ; preds = %38, %249, %58
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %15) #4
  %251 = add nsw i64 %39, 1
  %252 = load i64, ptr %12, align 8, !tbaa !41
  %253 = icmp slt i64 %39, %252
  br i1 %253, label %38, label %254

254:                                              ; preds = %250
  %255 = load i64, ptr %11, align 8, !tbaa !41
  br label %256

256:                                              ; preds = %254, %34
  %257 = phi i64 [ %36, %34 ], [ %255, %254 ]
  %258 = phi i64 [ %35, %34 ], [ %252, %254 ]
  %259 = load i64, ptr %13, align 8, !tbaa !41
  %260 = add nsw i64 %259, %257
  store i64 %260, ptr %11, align 8, !tbaa !41
  %261 = add nsw i64 %259, %258
  %262 = call i64 @llvm.smin.i64(i64 %261, i64 %19)
  store i64 %262, ptr %12, align 8, !tbaa !41
  %263 = icmp sgt i64 %260, %262
  br i1 %263, label %264, label %34

264:                                              ; preds = %256, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  br label %265

265:                                              ; preds = %264, %10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetMeanSquaredDistortion.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9) #3 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [48 x double], align 16
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %270

21:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 0, ptr %11, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 %19, ptr %12, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 1, ptr %13, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  store i32 0, ptr %14, align 4, !tbaa !10
  %22 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %23 = load i64, ptr %12, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %12, align 8, !tbaa !41
  %25 = load i64, ptr %11, align 8, !tbaa !41
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %269, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 1
  %29 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 47
  %30 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 2
  %31 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 4
  %32 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 8
  %33 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 32
  br label %34

34:                                               ; preds = %27, %261
  %35 = phi i64 [ %24, %27 ], [ %267, %261 ]
  %36 = phi i64 [ %25, %27 ], [ %265, %261 ]
  %37 = icmp sgt i64 %36, %35
  br i1 %37, label %261, label %38

38:                                               ; preds = %34, %255
  %39 = phi i64 [ %256, %255 ], [ %36, %34 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %15) #4
  %40 = load i32, ptr %3, align 4, !tbaa !10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %255, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !6
  %44 = load ptr, ptr %2, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !28
  %47 = load ptr, ptr %5, align 8, !tbaa !6
  %48 = call ptr @GetCacheViewVirtualPixels(ptr noundef %43, i64 noundef 0, i64 noundef %39, i64 noundef %46, i64 noundef 1, ptr noundef %47) #25
  %49 = load ptr, ptr %6, align 8, !tbaa !6
  %50 = load ptr, ptr %7, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !28
  %53 = load ptr, ptr %5, align 8, !tbaa !6
  %54 = call ptr @GetCacheViewVirtualPixels(ptr noundef %49, i64 noundef 0, i64 noundef %39, i64 noundef %52, i64 noundef 1, ptr noundef %53) #25
  %55 = icmp eq ptr %48, null
  %56 = icmp eq ptr %54, null
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %255

59:                                               ; preds = %42
  %60 = load ptr, ptr %4, align 8, !tbaa !6
  %61 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %60) #21
  %62 = load ptr, ptr %6, align 8, !tbaa !6
  %63 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %62) #21
  %64 = call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 384) #21
  %65 = load ptr, ptr %2, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 7
  %67 = load i64, ptr %66, align 8, !tbaa !28
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %243

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = icmp eq i32 %71, 0
  %73 = load ptr, ptr %7, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !46
  %76 = icmp eq i32 %75, 0
  %77 = load i32, ptr %8, align 4, !tbaa !10
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  %80 = insertelement <4 x i32> poison, i32 %77, i64 0
  %81 = shufflevector <4 x i32> %80, <4 x i32> poison, <4 x i32> zeroinitializer
  %82 = and <4 x i32> %81, <i32 32, i32 8, i32 4, i32 2>
  %83 = icmp eq <4 x i32> %82, zeroinitializer
  %84 = extractelement <4 x i1> %83, i64 1
  %85 = or i1 %72, %84
  %86 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 1
  %87 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 1
  %88 = icmp eq ptr %61, null
  %89 = icmp eq ptr %63, null
  %90 = load double, ptr %28, align 8, !tbaa !27
  %91 = load double, ptr %29, align 8, !tbaa !27
  %92 = load double, ptr %30, align 16, !tbaa !27
  %93 = load double, ptr %31, align 16, !tbaa !27
  %94 = load double, ptr %32, align 16, !tbaa !27
  %95 = load double, ptr %33, align 16, !tbaa !27
  %96 = extractelement <4 x i1> %83, i64 0
  %97 = extractelement <4 x i1> %83, i64 2
  %98 = extractelement <4 x i1> %83, i64 3
  br label %99

99:                                               ; preds = %69, %236
  %100 = phi double [ %95, %69 ], [ %237, %236 ]
  %101 = phi double [ %94, %69 ], [ %203, %236 ]
  %102 = phi double [ %93, %69 ], [ %185, %236 ]
  %103 = phi double [ %92, %69 ], [ %167, %236 ]
  %104 = phi double [ %91, %69 ], [ %238, %236 ]
  %105 = phi double [ %90, %69 ], [ %148, %236 ]
  %106 = phi ptr [ %48, %69 ], [ %239, %236 ]
  %107 = phi i64 [ 0, %69 ], [ %241, %236 ]
  %108 = phi ptr [ %54, %69 ], [ %240, %236 ]
  br i1 %72, label %114, label %109

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  %111 = load i16, ptr %110, align 2, !tbaa !47
  %112 = xor i16 %111, -1
  %113 = zext i16 %112 to i32
  br label %114

114:                                              ; preds = %99, %109
  %115 = phi i32 [ %113, %109 ], [ 65535, %99 ]
  %116 = sitofp i32 %115 to double
  %117 = fmul double %116, 0x3EF0001000100010
  %118 = fptrunc double %117 to float
  br i1 %76, label %124, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  %121 = load i16, ptr %120, align 2, !tbaa !47
  %122 = xor i16 %121, -1
  %123 = zext i16 %122 to i32
  br label %124

124:                                              ; preds = %114, %119
  %125 = phi i32 [ %123, %119 ], [ 65535, %114 ]
  %126 = sitofp i32 %125 to double
  %127 = fmul double %126, 0x3EF0001000100010
  %128 = fptrunc double %127 to float
  br i1 %79, label %146, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  %131 = load i16, ptr %130, align 2, !tbaa !43
  %132 = uitofp i16 %131 to float
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  %134 = load i16, ptr %133, align 2, !tbaa !43
  %135 = uitofp i16 %134 to float
  %136 = fneg float %128
  %137 = fmul float %136, %135
  %138 = call float @llvm.fmuladd.f32(float %118, float %132, float %137)
  %139 = fpext float %138 to double
  %140 = fmul double %139, 0x3EF0001000100010
  %141 = fptrunc double %140 to float
  %142 = fmul float %141, %141
  %143 = fpext float %142 to double
  %144 = fadd double %105, %143
  store double %144, ptr %28, align 8, !tbaa !27
  %145 = fadd double %104, %143
  store double %145, ptr %29, align 8, !tbaa !27
  br label %146

146:                                              ; preds = %129, %124
  %147 = phi double [ %145, %129 ], [ %104, %124 ]
  %148 = phi double [ %144, %129 ], [ %105, %124 ]
  br i1 %98, label %166, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 1
  %151 = load i16, ptr %150, align 2, !tbaa !44
  %152 = uitofp i16 %151 to float
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 1
  %154 = load i16, ptr %153, align 2, !tbaa !44
  %155 = uitofp i16 %154 to float
  %156 = fneg float %128
  %157 = fmul float %156, %155
  %158 = call float @llvm.fmuladd.f32(float %118, float %152, float %157)
  %159 = fpext float %158 to double
  %160 = fmul double %159, 0x3EF0001000100010
  %161 = fptrunc double %160 to float
  %162 = fmul float %161, %161
  %163 = fpext float %162 to double
  %164 = fadd double %103, %163
  store double %164, ptr %30, align 16, !tbaa !27
  %165 = fadd double %147, %163
  store double %165, ptr %29, align 8, !tbaa !27
  br label %166

166:                                              ; preds = %149, %146
  %167 = phi double [ %164, %149 ], [ %103, %146 ]
  %168 = phi double [ %165, %149 ], [ %147, %146 ]
  br i1 %97, label %184, label %169

169:                                              ; preds = %166
  %170 = load i16, ptr %106, align 2, !tbaa !45
  %171 = uitofp i16 %170 to float
  %172 = load i16, ptr %108, align 2, !tbaa !45
  %173 = uitofp i16 %172 to float
  %174 = fneg float %128
  %175 = fmul float %174, %173
  %176 = call float @llvm.fmuladd.f32(float %118, float %171, float %175)
  %177 = fpext float %176 to double
  %178 = fmul double %177, 0x3EF0001000100010
  %179 = fptrunc double %178 to float
  %180 = fmul float %179, %179
  %181 = fpext float %180 to double
  %182 = fadd double %102, %181
  store double %182, ptr %31, align 16, !tbaa !27
  %183 = fadd double %168, %181
  store double %183, ptr %29, align 8, !tbaa !27
  br label %184

184:                                              ; preds = %169, %166
  %185 = phi double [ %182, %169 ], [ %102, %166 ]
  %186 = phi double [ %183, %169 ], [ %168, %166 ]
  br i1 %85, label %202, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  %189 = load i16, ptr %188, align 2, !tbaa !47
  %190 = uitofp i16 %189 to float
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  %192 = load i16, ptr %191, align 2, !tbaa !47
  %193 = uitofp i16 %192 to float
  %194 = fsub float %190, %193
  %195 = fpext float %194 to double
  %196 = fmul double %195, 0x3EF0001000100010
  %197 = fptrunc double %196 to float
  %198 = fmul float %197, %197
  %199 = fpext float %198 to double
  %200 = fadd double %101, %199
  store double %200, ptr %32, align 16, !tbaa !27
  %201 = fadd double %186, %199
  store double %201, ptr %29, align 8, !tbaa !27
  br label %202

202:                                              ; preds = %184, %187
  %203 = phi double [ %101, %184 ], [ %200, %187 ]
  %204 = phi double [ %186, %184 ], [ %201, %187 ]
  br i1 %96, label %236, label %205

205:                                              ; preds = %202
  %206 = load i32, ptr %86, align 4, !tbaa !30
  %207 = icmp eq i32 %206, 12
  br i1 %207, label %208, label %236

208:                                              ; preds = %205
  %209 = load i32, ptr %87, align 4, !tbaa !30
  %210 = icmp eq i32 %209, 12
  br i1 %210, label %211, label %236

211:                                              ; preds = %208
  br i1 %88, label %216, label %212

212:                                              ; preds = %211
  %213 = getelementptr inbounds i16, ptr %61, i64 %107
  %214 = load i16, ptr %213, align 2, !tbaa !48
  %215 = zext i16 %214 to i32
  br label %216

216:                                              ; preds = %211, %212
  %217 = phi i32 [ %215, %212 ], [ 0, %211 ]
  %218 = sitofp i32 %217 to float
  br i1 %89, label %223, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds i16, ptr %63, i64 %107
  %221 = load i16, ptr %220, align 2, !tbaa !48
  %222 = zext i16 %221 to i32
  br label %223

223:                                              ; preds = %216, %219
  %224 = phi i32 [ %222, %219 ], [ 0, %216 ]
  %225 = sitofp i32 %224 to float
  %226 = fneg float %128
  %227 = fmul float %226, %225
  %228 = call float @llvm.fmuladd.f32(float %118, float %218, float %227)
  %229 = fpext float %228 to double
  %230 = fmul double %229, 0x3EF0001000100010
  %231 = fptrunc double %230 to float
  %232 = fmul float %231, %231
  %233 = fpext float %232 to double
  %234 = fadd double %100, %233
  store double %234, ptr %33, align 16, !tbaa !27
  %235 = fadd double %204, %233
  store double %235, ptr %29, align 8, !tbaa !27
  br label %236

236:                                              ; preds = %223, %208, %205, %202
  %237 = phi double [ %234, %223 ], [ %100, %208 ], [ %100, %205 ], [ %100, %202 ]
  %238 = phi double [ %235, %223 ], [ %204, %208 ], [ %204, %205 ], [ %204, %202 ]
  %239 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 1
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 1
  %241 = add nuw nsw i64 %107, 1
  %242 = icmp eq i64 %241, %67
  br i1 %242, label %243, label %99, !llvm.loop !78

243:                                              ; preds = %236, %59
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_GetMeanSquaredError.var)
  %244 = load ptr, ptr %9, align 8, !tbaa !6
  br label %245

245:                                              ; preds = %243, %245
  %246 = phi i64 [ 0, %243 ], [ %252, %245 ]
  %247 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 %246
  %248 = load double, ptr %247, align 8, !tbaa !27
  %249 = getelementptr inbounds double, ptr %244, i64 %246
  %250 = load double, ptr %249, align 8, !tbaa !27
  %251 = fadd double %248, %250
  store double %251, ptr %249, align 8, !tbaa !27
  %252 = add nuw nsw i64 %246, 1
  %253 = icmp eq i64 %252, 48
  br i1 %253, label %254, label %245, !llvm.loop !79

254:                                              ; preds = %245
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_GetMeanSquaredError.var)
  br label %255

255:                                              ; preds = %38, %254, %58
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %15) #4
  %256 = add nsw i64 %39, 1
  %257 = load i64, ptr %12, align 8, !tbaa !41
  %258 = icmp slt i64 %39, %257
  br i1 %258, label %38, label %259

259:                                              ; preds = %255
  %260 = load i64, ptr %11, align 8, !tbaa !41
  br label %261

261:                                              ; preds = %259, %34
  %262 = phi i64 [ %36, %34 ], [ %260, %259 ]
  %263 = phi i64 [ %35, %34 ], [ %257, %259 ]
  %264 = load i64, ptr %13, align 8, !tbaa !41
  %265 = add nsw i64 %264, %262
  store i64 %265, ptr %11, align 8, !tbaa !41
  %266 = add nsw i64 %264, %263
  %267 = call i64 @llvm.smin.i64(i64 %266, i64 %19)
  store i64 %267, ptr %12, align 8, !tbaa !41
  %268 = icmp sgt i64 %265, %267
  br i1 %268, label %269, label %34

269:                                              ; preds = %261, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  br label %270

270:                                              ; preds = %269, %10
  ret void
}

; Function Attrs: optsize
declare ptr @GetImageChannelStatistics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef nonnull %9) #21
  %11 = load ptr, ptr %5, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #21
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #4
  ret i32 %16
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

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetPeakAbsoluteDistortion.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9) #3 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [48 x double], align 16
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %291

21:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 0, ptr %11, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 %19, ptr %12, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 1, ptr %13, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  store i32 0, ptr %14, align 4, !tbaa !10
  %22 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %23 = load i64, ptr %12, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %12, align 8, !tbaa !41
  %25 = load i64, ptr %11, align 8, !tbaa !41
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %290, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 1
  %29 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 47
  %30 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 2
  %31 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 4
  %32 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 8
  %33 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 32
  br label %34

34:                                               ; preds = %27, %282
  %35 = phi i64 [ %24, %27 ], [ %288, %282 ]
  %36 = phi i64 [ %25, %27 ], [ %286, %282 ]
  %37 = icmp sgt i64 %36, %35
  br i1 %37, label %282, label %38

38:                                               ; preds = %34, %276
  %39 = phi i64 [ %277, %276 ], [ %36, %34 ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %15) #4
  %40 = load i32, ptr %3, align 4, !tbaa !10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %276, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !6
  %44 = load ptr, ptr %2, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !28
  %47 = load ptr, ptr %5, align 8, !tbaa !6
  %48 = call ptr @GetCacheViewVirtualPixels(ptr noundef %43, i64 noundef 0, i64 noundef %39, i64 noundef %46, i64 noundef 1, ptr noundef %47) #25
  %49 = load ptr, ptr %6, align 8, !tbaa !6
  %50 = load ptr, ptr %7, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !28
  %53 = load ptr, ptr %5, align 8, !tbaa !6
  %54 = call ptr @GetCacheViewVirtualPixels(ptr noundef %49, i64 noundef 0, i64 noundef %39, i64 noundef %52, i64 noundef 1, ptr noundef %53) #25
  %55 = icmp eq ptr %48, null
  %56 = icmp eq ptr %54, null
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %276

59:                                               ; preds = %42
  %60 = load ptr, ptr %4, align 8, !tbaa !6
  %61 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %60) #21
  %62 = load ptr, ptr %6, align 8, !tbaa !6
  %63 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %62) #21
  %64 = call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 384) #21
  %65 = load ptr, ptr %2, align 8, !tbaa !6
  %66 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 7
  %67 = load i64, ptr %66, align 8, !tbaa !28
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %262

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = icmp eq i32 %71, 0
  %73 = load ptr, ptr %7, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !46
  %76 = icmp eq i32 %75, 0
  %77 = load i32, ptr %8, align 4, !tbaa !10
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  %80 = insertelement <4 x i32> poison, i32 %77, i64 0
  %81 = shufflevector <4 x i32> %80, <4 x i32> poison, <4 x i32> zeroinitializer
  %82 = and <4 x i32> %81, <i32 32, i32 8, i32 4, i32 2>
  %83 = icmp eq <4 x i32> %82, zeroinitializer
  %84 = extractelement <4 x i1> %83, i64 1
  %85 = or i1 %72, %84
  %86 = getelementptr inbounds %struct._Image, ptr %65, i64 0, i32 1
  %87 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 1
  %88 = icmp eq ptr %61, null
  %89 = icmp eq ptr %63, null
  %90 = load double, ptr %28, align 8, !tbaa !27
  %91 = load double, ptr %29, align 8, !tbaa !27
  %92 = load double, ptr %30, align 16, !tbaa !27
  %93 = load double, ptr %31, align 16, !tbaa !27
  %94 = load double, ptr %32, align 16, !tbaa !27
  %95 = load double, ptr %33, align 16, !tbaa !27
  %96 = extractelement <4 x i1> %83, i64 0
  %97 = extractelement <4 x i1> %83, i64 2
  %98 = extractelement <4 x i1> %83, i64 3
  br label %99

99:                                               ; preds = %69, %255
  %100 = phi double [ %95, %69 ], [ %256, %255 ]
  %101 = phi double [ %94, %69 ], [ %218, %255 ]
  %102 = phi double [ %93, %69 ], [ %197, %255 ]
  %103 = phi double [ %92, %69 ], [ %175, %255 ]
  %104 = phi double [ %91, %69 ], [ %257, %255 ]
  %105 = phi double [ %90, %69 ], [ %152, %255 ]
  %106 = phi ptr [ %48, %69 ], [ %258, %255 ]
  %107 = phi i64 [ 0, %69 ], [ %260, %255 ]
  %108 = phi ptr [ %54, %69 ], [ %259, %255 ]
  br i1 %72, label %114, label %109

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  %111 = load i16, ptr %110, align 2, !tbaa !47
  %112 = xor i16 %111, -1
  %113 = zext i16 %112 to i32
  br label %114

114:                                              ; preds = %99, %109
  %115 = phi i32 [ %113, %109 ], [ 65535, %99 ]
  %116 = sitofp i32 %115 to double
  %117 = fmul double %116, 0x3EF0001000100010
  %118 = fptrunc double %117 to float
  br i1 %76, label %124, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  %121 = load i16, ptr %120, align 2, !tbaa !47
  %122 = xor i16 %121, -1
  %123 = zext i16 %122 to i32
  br label %124

124:                                              ; preds = %114, %119
  %125 = phi i32 [ %123, %119 ], [ 65535, %114 ]
  %126 = sitofp i32 %125 to double
  %127 = fmul double %126, 0x3EF0001000100010
  %128 = fptrunc double %127 to float
  br i1 %79, label %150, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  %131 = load i16, ptr %130, align 2, !tbaa !43
  %132 = uitofp i16 %131 to float
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  %134 = load i16, ptr %133, align 2, !tbaa !43
  %135 = uitofp i16 %134 to float
  %136 = fneg float %128
  %137 = fmul float %136, %135
  %138 = call float @llvm.fmuladd.f32(float %118, float %132, float %137)
  %139 = call float @llvm.fabs.f32(float %138)
  %140 = fpext float %139 to double
  %141 = fmul double %140, 0x3EF0001000100010
  %142 = fptrunc double %141 to float
  %143 = fpext float %142 to double
  %144 = fcmp olt double %105, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %129
  store double %143, ptr %28, align 8, !tbaa !27
  br label %146

146:                                              ; preds = %145, %129
  %147 = phi double [ %143, %145 ], [ %105, %129 ]
  %148 = fcmp olt double %104, %143
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store double %143, ptr %29, align 8, !tbaa !27
  br label %150

150:                                              ; preds = %146, %149, %124
  %151 = phi double [ %104, %146 ], [ %143, %149 ], [ %104, %124 ]
  %152 = phi double [ %147, %146 ], [ %147, %149 ], [ %105, %124 ]
  br i1 %98, label %174, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 1
  %155 = load i16, ptr %154, align 2, !tbaa !44
  %156 = uitofp i16 %155 to float
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 1
  %158 = load i16, ptr %157, align 2, !tbaa !44
  %159 = uitofp i16 %158 to float
  %160 = fneg float %128
  %161 = fmul float %160, %159
  %162 = call float @llvm.fmuladd.f32(float %118, float %156, float %161)
  %163 = call float @llvm.fabs.f32(float %162)
  %164 = fpext float %163 to double
  %165 = fmul double %164, 0x3EF0001000100010
  %166 = fptrunc double %165 to float
  %167 = fpext float %166 to double
  %168 = fcmp olt double %103, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %153
  store double %167, ptr %30, align 16, !tbaa !27
  br label %170

170:                                              ; preds = %169, %153
  %171 = phi double [ %167, %169 ], [ %103, %153 ]
  %172 = fcmp olt double %151, %167
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store double %167, ptr %29, align 8, !tbaa !27
  br label %174

174:                                              ; preds = %170, %173, %150
  %175 = phi double [ %171, %170 ], [ %171, %173 ], [ %103, %150 ]
  %176 = phi double [ %151, %170 ], [ %167, %173 ], [ %151, %150 ]
  br i1 %97, label %196, label %177

177:                                              ; preds = %174
  %178 = load i16, ptr %106, align 2, !tbaa !45
  %179 = uitofp i16 %178 to float
  %180 = load i16, ptr %108, align 2, !tbaa !45
  %181 = uitofp i16 %180 to float
  %182 = fneg float %128
  %183 = fmul float %182, %181
  %184 = call float @llvm.fmuladd.f32(float %118, float %179, float %183)
  %185 = call float @llvm.fabs.f32(float %184)
  %186 = fpext float %185 to double
  %187 = fmul double %186, 0x3EF0001000100010
  %188 = fptrunc double %187 to float
  %189 = fpext float %188 to double
  %190 = fcmp olt double %102, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %177
  store double %189, ptr %31, align 16, !tbaa !27
  br label %192

192:                                              ; preds = %191, %177
  %193 = phi double [ %189, %191 ], [ %102, %177 ]
  %194 = fcmp olt double %176, %189
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store double %189, ptr %29, align 8, !tbaa !27
  br label %196

196:                                              ; preds = %192, %195, %174
  %197 = phi double [ %193, %192 ], [ %193, %195 ], [ %102, %174 ]
  %198 = phi double [ %176, %192 ], [ %189, %195 ], [ %176, %174 ]
  br i1 %85, label %217, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  %201 = load i16, ptr %200, align 2, !tbaa !47
  %202 = uitofp i16 %201 to double
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  %204 = load i16, ptr %203, align 2, !tbaa !47
  %205 = uitofp i16 %204 to double
  %206 = fsub double %202, %205
  %207 = call double @llvm.fabs.f64(double %206)
  %208 = fmul double %207, 0x3EF0001000100010
  %209 = fptrunc double %208 to float
  %210 = fpext float %209 to double
  %211 = fcmp olt double %101, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %199
  store double %210, ptr %32, align 16, !tbaa !27
  br label %213

213:                                              ; preds = %212, %199
  %214 = phi double [ %210, %212 ], [ %101, %199 ]
  %215 = fcmp olt double %198, %210
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store double %210, ptr %29, align 8, !tbaa !27
  br label %217

217:                                              ; preds = %196, %213, %216
  %218 = phi double [ %101, %196 ], [ %214, %213 ], [ %214, %216 ]
  %219 = phi double [ %198, %196 ], [ %198, %213 ], [ %210, %216 ]
  br i1 %96, label %255, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr %86, align 4, !tbaa !30
  %222 = icmp eq i32 %221, 12
  br i1 %222, label %223, label %255

223:                                              ; preds = %220
  %224 = load i32, ptr %87, align 4, !tbaa !30
  %225 = icmp eq i32 %224, 12
  br i1 %225, label %226, label %255

226:                                              ; preds = %223
  br i1 %88, label %231, label %227

227:                                              ; preds = %226
  %228 = getelementptr inbounds i16, ptr %61, i64 %107
  %229 = load i16, ptr %228, align 2, !tbaa !48
  %230 = zext i16 %229 to i32
  br label %231

231:                                              ; preds = %226, %227
  %232 = phi i32 [ %230, %227 ], [ 0, %226 ]
  %233 = sitofp i32 %232 to float
  br i1 %89, label %238, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds i16, ptr %63, i64 %107
  %236 = load i16, ptr %235, align 2, !tbaa !48
  %237 = zext i16 %236 to i32
  br label %238

238:                                              ; preds = %231, %234
  %239 = phi i32 [ %237, %234 ], [ 0, %231 ]
  %240 = sitofp i32 %239 to float
  %241 = fneg float %128
  %242 = fmul float %241, %240
  %243 = call float @llvm.fmuladd.f32(float %118, float %233, float %242)
  %244 = call float @llvm.fabs.f32(float %243)
  %245 = fpext float %244 to double
  %246 = fmul double %245, 0x3EF0001000100010
  %247 = fptrunc double %246 to float
  %248 = fpext float %247 to double
  %249 = fcmp olt double %100, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %238
  store double %248, ptr %33, align 16, !tbaa !27
  br label %251

251:                                              ; preds = %250, %238
  %252 = phi double [ %248, %250 ], [ %100, %238 ]
  %253 = fcmp olt double %219, %248
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  store double %248, ptr %29, align 8, !tbaa !27
  br label %255

255:                                              ; preds = %251, %254, %223, %220, %217
  %256 = phi double [ %252, %251 ], [ %252, %254 ], [ %100, %223 ], [ %100, %220 ], [ %100, %217 ]
  %257 = phi double [ %219, %251 ], [ %248, %254 ], [ %219, %223 ], [ %219, %220 ], [ %219, %217 ]
  %258 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 1
  %259 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 1
  %260 = add nuw nsw i64 %107, 1
  %261 = icmp eq i64 %260, %67
  br i1 %261, label %262, label %99, !llvm.loop !81

262:                                              ; preds = %255, %59
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_GetPeakAbsoluteError.var)
  %263 = load ptr, ptr %9, align 8, !tbaa !6
  br label %264

264:                                              ; preds = %262, %272
  %265 = phi i64 [ 0, %262 ], [ %273, %272 ]
  %266 = getelementptr inbounds [48 x double], ptr %15, i64 0, i64 %265
  %267 = load double, ptr %266, align 8, !tbaa !27
  %268 = getelementptr inbounds double, ptr %263, i64 %265
  %269 = load double, ptr %268, align 8, !tbaa !27
  %270 = fcmp ogt double %267, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %264
  store double %267, ptr %268, align 8, !tbaa !27
  br label %272

272:                                              ; preds = %264, %271
  %273 = add nuw nsw i64 %265, 1
  %274 = icmp eq i64 %273, 48
  br i1 %274, label %275, label %264, !llvm.loop !82

275:                                              ; preds = %272
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_GetPeakAbsoluteError.var)
  br label %276

276:                                              ; preds = %38, %275, %58
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %15) #4
  %277 = add nsw i64 %39, 1
  %278 = load i64, ptr %12, align 8, !tbaa !41
  %279 = icmp slt i64 %39, %278
  br i1 %279, label %38, label %280

280:                                              ; preds = %276
  %281 = load i64, ptr %11, align 8, !tbaa !41
  br label %282

282:                                              ; preds = %280, %34
  %283 = phi i64 [ %36, %34 ], [ %281, %280 ]
  %284 = phi i64 [ %35, %34 ], [ %278, %280 ]
  %285 = load i64, ptr %13, align 8, !tbaa !41
  %286 = add nsw i64 %285, %283
  store i64 %286, ptr %11, align 8, !tbaa !41
  %287 = add nsw i64 %285, %284
  %288 = call i64 @llvm.smin.i64(i64 %287, i64 %19)
  store i64 %288, ptr %12, align 8, !tbaa !41
  %289 = icmp sgt i64 %286, %288
  br i1 %289, label %290, label %34

290:                                              ; preds = %282, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  br label %291

291:                                              ; preds = %290, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @MagickLog10(double noundef %0) unnamed_addr #16 {
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
declare double @log10(double noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @GetImageChannelPerceptualHash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GetImageChannelDistortions(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1606, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #21
  %12 = load i32, ptr %6, align 8, !tbaa !12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1610, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #21
  br label %16

16:                                               ; preds = %4, %14, %9
  %17 = icmp eq i32 %2, 255
  br i1 %17, label %34, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !28
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !29
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %28 = load i64, ptr %27, align 8, !tbaa !29
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %24, %18
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1615, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %32) #21
  br label %71

34:                                               ; preds = %24, %16
  %35 = tail call dereferenceable_or_null(384) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 8) #22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #4
  call void @GetExceptionInfo(ptr noundef nonnull %5) #21
  %38 = tail call ptr @__errno_location() #23
  %39 = load i32, ptr %38, align 4, !tbaa !10
  %40 = call ptr @GetExceptionMessage(i32 noundef %39) #21
  %41 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1626, i32 noundef 700, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, ptr noundef %40) #21
  %42 = call ptr @DestroyString(ptr noundef %40) #21
  call void @CatchException(ptr noundef nonnull %5) #21
  %43 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 1) #24
  unreachable

44:                                               ; preds = %34
  %45 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %35, i32 noundef 0, i64 noundef 384) #21
  switch i32 %2, label %56 [
    i32 1, label %46
    i32 9, label %48
    i32 2, label %50
    i32 3, label %52
    i32 4, label %54
    i32 7, label %64
    i32 5, label %58
    i32 6, label %60
    i32 255, label %62
  ]

46:                                               ; preds = %44
  %47 = tail call fastcc i32 @GetAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #20
  br label %66

48:                                               ; preds = %44
  %49 = tail call fastcc i32 @GetFuzzDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #20
  br label %66

50:                                               ; preds = %44
  %51 = tail call fastcc i32 @GetMeanAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #20
  br label %66

52:                                               ; preds = %44
  %53 = tail call fastcc i32 @GetMeanErrorPerPixel(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #20, !range !32
  br label %66

54:                                               ; preds = %44
  %55 = tail call fastcc i32 @GetMeanSquaredDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #20
  br label %66

56:                                               ; preds = %44
  %57 = tail call fastcc i32 @GetNormalizedCrossCorrelationDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #20, !range !32
  br label %66

58:                                               ; preds = %44
  %59 = tail call fastcc i32 @GetPeakAbsoluteDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #20
  br label %66

60:                                               ; preds = %44
  %61 = tail call fastcc i32 @GetPeakSignalToNoiseRatio(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #20
  br label %66

62:                                               ; preds = %44
  %63 = tail call fastcc i32 @GetPerceptualHashDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #20, !range !32
  br label %66

64:                                               ; preds = %44
  %65 = tail call fastcc i32 @GetRootMeanSquaredDistortion(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 47, ptr noundef nonnull %35, ptr noundef %3) #20
  br label %66

66:                                               ; preds = %64, %62, %60, %58, %56, %54, %52, %50, %48, %46
  %67 = phi i32 [ %57, %56 ], [ %63, %62 ], [ %61, %60 ], [ %59, %58 ], [ %65, %64 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ], [ %47, %46 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %35) #21
  br label %71

71:                                               ; preds = %66, %69, %30
  %72 = phi ptr [ null, %30 ], [ null, %69 ], [ %35, %66 ]
  ret ptr %72
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsImagesEqual(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %4 = load i64, ptr %3, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %6 = load i64, ptr %5, align 8, !tbaa !28
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !29
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !29
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2, %8
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1777, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #21
  br label %185

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %19) #21
  %21 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %1, ptr noundef nonnull %19) #21
  %22 = load i64, ptr %11, align 8, !tbaa !29
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %168

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %28 = load i64, ptr %5, align 8, !tbaa !28
  br label %29

29:                                               ; preds = %24, %153
  %30 = phi i64 [ %28, %24 ], [ %44, %153 ]
  %31 = phi i64 [ 0, %24 ], [ %157, %153 ]
  %32 = phi float [ 0.000000e+00, %24 ], [ %155, %153 ]
  %33 = phi float [ 0.000000e+00, %24 ], [ %154, %153 ]
  %34 = phi <2 x float> [ zeroinitializer, %24 ], [ %156, %153 ]
  %35 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %20, i64 noundef 0, i64 noundef %31, i64 noundef %30, i64 noundef 1, ptr noundef nonnull %19) #25
  %36 = load i64, ptr %3, align 8, !tbaa !28
  %37 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef 0, i64 noundef %31, i64 noundef %36, i64 noundef 1, ptr noundef nonnull %19) #25
  %38 = icmp eq ptr %35, null
  %39 = icmp eq ptr %37, null
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %160, label %41

41:                                               ; preds = %29
  %42 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %20) #21
  %43 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #21
  %44 = load i64, ptr %5, align 8, !tbaa !28
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %153

46:                                               ; preds = %41
  %47 = load i32, ptr %25, align 8, !tbaa !46
  %48 = icmp eq i32 %47, 0
  %49 = load i32, ptr %26, align 4, !tbaa !30
  %50 = icmp eq i32 %49, 12
  %51 = icmp eq ptr %42, null
  %52 = icmp eq ptr %43, null
  br label %53

53:                                               ; preds = %46, %145
  %54 = phi i64 [ 0, %46 ], [ %151, %145 ]
  %55 = phi ptr [ %37, %46 ], [ %150, %145 ]
  %56 = phi ptr [ %35, %46 ], [ %149, %145 ]
  %57 = phi float [ %32, %46 ], [ %147, %145 ]
  %58 = phi float [ %33, %46 ], [ %146, %145 ]
  %59 = phi <2 x float> [ %34, %46 ], [ %148, %145 ]
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 2
  %61 = load i16, ptr %60, align 2, !tbaa !43
  %62 = uitofp i16 %61 to double
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 2
  %64 = load i16, ptr %63, align 2, !tbaa !43
  %65 = uitofp i16 %64 to double
  %66 = fsub double %62, %65
  %67 = fptrunc double %66 to float
  %68 = tail call float @llvm.fabs.f32(float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %67, float %67, float %57)
  %70 = fcmp ogt float %68, %58
  %71 = select i1 %70, float %68, float %58
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !44
  %74 = uitofp i16 %73 to double
  %75 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 1
  %76 = load i16, ptr %75, align 2, !tbaa !44
  %77 = uitofp i16 %76 to double
  %78 = fsub double %74, %77
  %79 = fptrunc double %78 to float
  %80 = tail call float @llvm.fabs.f32(float %79)
  %81 = tail call float @llvm.fmuladd.f32(float %79, float %79, float %69)
  %82 = fcmp ogt float %80, %71
  %83 = select i1 %82, float %80, float %71
  %84 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %68, i64 1
  %85 = fadd <2 x float> %59, %84
  %86 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %80, i64 1
  %87 = fadd <2 x float> %85, %86
  %88 = load i16, ptr %56, align 2, !tbaa !45
  %89 = uitofp i16 %88 to double
  %90 = load i16, ptr %55, align 2, !tbaa !45
  %91 = uitofp i16 %90 to double
  %92 = fsub double %89, %91
  %93 = fptrunc double %92 to float
  %94 = tail call float @llvm.fabs.f32(float %93)
  %95 = tail call float @llvm.fmuladd.f32(float %93, float %93, float %81)
  %96 = fcmp ogt float %94, %83
  %97 = select i1 %96, float %94, float %83
  %98 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %94, i64 1
  %99 = fadd <2 x float> %87, %98
  br i1 %48, label %115, label %100

100:                                              ; preds = %53
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 3
  %102 = load i16, ptr %101, align 2, !tbaa !47
  %103 = uitofp i16 %102 to double
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 3
  %105 = load i16, ptr %104, align 2, !tbaa !47
  %106 = uitofp i16 %105 to double
  %107 = fsub double %103, %106
  %108 = fptrunc double %107 to float
  %109 = tail call float @llvm.fabs.f32(float %108)
  %110 = tail call float @llvm.fmuladd.f32(float %108, float %108, float %95)
  %111 = fcmp ogt float %109, %97
  %112 = select i1 %111, float %109, float %97
  %113 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %109, i64 1
  %114 = fadd <2 x float> %99, %113
  br label %115

115:                                              ; preds = %100, %53
  %116 = phi float [ %112, %100 ], [ %97, %53 ]
  %117 = phi float [ %110, %100 ], [ %95, %53 ]
  %118 = phi <2 x float> [ %114, %100 ], [ %99, %53 ]
  br i1 %50, label %119, label %145

119:                                              ; preds = %115
  %120 = load i32, ptr %27, align 4, !tbaa !30
  %121 = icmp eq i32 %120, 12
  br i1 %121, label %122, label %145

122:                                              ; preds = %119
  br i1 %51, label %127, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds i16, ptr %42, i64 %54
  %125 = load i16, ptr %124, align 2, !tbaa !48
  %126 = zext i16 %125 to i32
  br label %127

127:                                              ; preds = %122, %123
  %128 = phi i32 [ %126, %123 ], [ 0, %122 ]
  %129 = sitofp i32 %128 to double
  br i1 %52, label %134, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds i16, ptr %43, i64 %54
  %132 = load i16, ptr %131, align 2, !tbaa !48
  %133 = zext i16 %132 to i32
  br label %134

134:                                              ; preds = %127, %130
  %135 = phi i32 [ %133, %130 ], [ 0, %127 ]
  %136 = sitofp i32 %135 to double
  %137 = fsub double %129, %136
  %138 = fptrunc double %137 to float
  %139 = tail call float @llvm.fabs.f32(float %138)
  %140 = tail call float @llvm.fmuladd.f32(float %138, float %138, float %117)
  %141 = fcmp ogt float %139, %116
  %142 = select i1 %141, float %139, float %116
  %143 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %139, i64 1
  %144 = fadd <2 x float> %118, %143
  br label %145

145:                                              ; preds = %134, %119, %115
  %146 = phi float [ %142, %134 ], [ %116, %119 ], [ %116, %115 ]
  %147 = phi float [ %140, %134 ], [ %117, %119 ], [ %117, %115 ]
  %148 = phi <2 x float> [ %144, %134 ], [ %118, %119 ], [ %118, %115 ]
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 1
  %151 = add nuw nsw i64 %54, 1
  %152 = icmp eq i64 %151, %44
  br i1 %152, label %153, label %53, !llvm.loop !83

153:                                              ; preds = %145, %41
  %154 = phi float [ %33, %41 ], [ %146, %145 ]
  %155 = phi float [ %32, %41 ], [ %147, %145 ]
  %156 = phi <2 x float> [ %34, %41 ], [ %148, %145 ]
  %157 = add nuw nsw i64 %31, 1
  %158 = load i64, ptr %11, align 8, !tbaa !29
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %29, label %160, !llvm.loop !84

160:                                              ; preds = %29, %153
  %161 = phi float [ %154, %153 ], [ %33, %29 ]
  %162 = phi float [ %155, %153 ], [ %32, %29 ]
  %163 = phi <2 x float> [ %156, %153 ], [ %34, %29 ]
  %164 = fpext float %162 to double
  %165 = fmul double %164, 0x3DF0002000300040
  %166 = fpext float %161 to double
  %167 = fmul double %166, 0x3EF0001000100010
  br label %168

168:                                              ; preds = %160, %18
  %169 = phi double [ 0.000000e+00, %18 ], [ %167, %160 ]
  %170 = phi double [ 0.000000e+00, %18 ], [ %165, %160 ]
  %171 = phi <2 x float> [ zeroinitializer, %18 ], [ %163, %160 ]
  %172 = tail call ptr @DestroyCacheView(ptr noundef %21) #21
  %173 = tail call ptr @DestroyCacheView(ptr noundef %20) #21
  %174 = extractelement <2 x float> %171, i64 0
  %175 = extractelement <2 x float> %171, i64 1
  %176 = fdiv float %175, %174
  %177 = fpext float %176 to double
  %178 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  store double %177, ptr %178, align 8, !tbaa !85
  %179 = fpext float %174 to double
  %180 = fdiv double %170, %179
  %181 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 1
  store double %180, ptr %181, align 8, !tbaa !86
  %182 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  store double %169, ptr %182, align 8, !tbaa !61
  %183 = fcmp oeq float %176, 0.000000e+00
  %184 = zext i1 %183 to i32
  br label %185

185:                                              ; preds = %14, %168
  %186 = phi i32 [ %184, %168 ], [ 0, %14 ]
  ret i32 %186
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SimilarityImage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @SimilarityMetricImage(ptr noundef %0, ptr noundef %1, i32 noundef 7, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SimilarityMetricImage(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca double, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !6
  store ptr %1, ptr %8, align 8, !tbaa !6
  store i32 %2, ptr %9, align 4, !tbaa !10
  store ptr %3, ptr %10, align 8, !tbaa !6
  store ptr %4, ptr %11, align 8, !tbaa !6
  store ptr %5, ptr %12, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %20 = load i32, ptr %19, align 8, !tbaa !12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %24 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1975, ptr noundef nonnull @.str.2, ptr noundef nonnull %23) #21
  br label %25

25:                                               ; preds = %22, %6
  tail call void @SetGeometry(ptr noundef %1, ptr noundef %3) #21
  store double 0x7FEFFFFFFFFFFFFF, ptr %4, align 8, !tbaa !27
  %26 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !28
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %33 = load i64, ptr %32, align 8, !tbaa !29
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !29
  %36 = icmp ugt i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %25
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %39 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1982, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %38) #21
  br label %87

40:                                               ; preds = %31
  %41 = sub i64 %29, %27
  %42 = add i64 %41, 1
  %43 = sub i64 %35, %33
  %44 = add i64 %43, 1
  %45 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %42, i64 noundef %44, i32 noundef 1, ptr noundef %5) #21
  store ptr %45, ptr %15, align 8, !tbaa !6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %87, label %47

47:                                               ; preds = %40
  %48 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %45, i32 noundef 1) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %51) #21
  %52 = tail call ptr @DestroyImage(ptr noundef nonnull %45) #21
  br label %87

53:                                               ; preds = %47
  %54 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %45, i32 noundef 4) #21
  store double -1.000000e+00, ptr %14, align 8, !tbaa !27
  %55 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call fastcc double @StringToDouble(ptr noundef nonnull %55) #20
  store double %58, ptr %14, align 8, !tbaa !27
  br label %59

59:                                               ; preds = %57, %53
  store i32 1, ptr %16, align 4, !tbaa !10
  store i64 0, ptr %17, align 8, !tbaa !87
  %60 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %45, ptr noundef %5) #21
  store ptr %60, ptr %13, align 8, !tbaa !6
  %61 = load i64, ptr %34, align 8, !tbaa !29
  %62 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %63 = shl i64 %62, 5
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %77

73:                                               ; preds = %68, %65, %59
  %74 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %75 = icmp ult i64 %74, 2
  %76 = select i1 %75, i64 1, i64 2
  br label %77

77:                                               ; preds = %73, %71
  %78 = phi i64 [ %72, %71 ], [ %76, %73 ]
  %79 = trunc i64 %78 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %18, i32 %79)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @SimilarityMetricImage.omp_outlined, ptr nonnull %7, ptr nonnull %8, ptr nonnull %16, ptr nonnull %11, ptr nonnull %14, ptr nonnull %13, ptr nonnull %15, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %17)
  %80 = load ptr, ptr %13, align 8, !tbaa !6
  %81 = call ptr @DestroyCacheView(ptr noundef %80) #21
  store ptr %81, ptr %13, align 8, !tbaa !6
  %82 = load i32, ptr %16, align 4, !tbaa !10
  %83 = icmp eq i32 %82, 0
  %84 = load ptr, ptr %15, align 8, !tbaa !6
  br i1 %83, label %85, label %87

85:                                               ; preds = %77
  %86 = call ptr @DestroyImage(ptr noundef %84) #21
  br label %87

87:                                               ; preds = %77, %85, %40, %50, %37
  %88 = phi ptr [ null, %37 ], [ null, %50 ], [ null, %40 ], [ %86, %85 ], [ %84, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  ret ptr %88
}

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #21
  ret double %2
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SimilarityMetricImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull align 8 dereferenceable(8) %12) #3 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = load ptr, ptr %2, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = load ptr, ptr %3, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !29
  %24 = sub i64 %20, %23
  %25 = icmp ult i64 %24, 9223372036854775807
  br i1 %25, label %26, label %142

26:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 0, ptr %14, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 %24, ptr %15, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 1, ptr %16, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #4
  store i32 0, ptr %17, align 4, !tbaa !10
  %27 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %27, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %28 = load i64, ptr %15, align 8
  %29 = call i64 @llvm.smin.i64(i64 %28, i64 %24)
  store i64 %29, ptr %15, align 8, !tbaa !41
  %30 = load i64, ptr %14, align 8, !tbaa !41
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %141, label %32

32:                                               ; preds = %26, %133
  %33 = phi i64 [ %139, %133 ], [ %29, %26 ]
  %34 = phi i64 [ %137, %133 ], [ %30, %26 ]
  %35 = icmp sgt i64 %34, %33
  br i1 %35, label %133, label %36

36:                                               ; preds = %32, %127
  %37 = phi i64 [ %128, %127 ], [ %34, %32 ]
  %38 = load i32, ptr %4, align 4, !tbaa !10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %127, label %40

40:                                               ; preds = %36
  call void @__kmpc_flush(ptr nonnull @2)
  %41 = load ptr, ptr %5, align 8, !tbaa !6
  %42 = load double, ptr %41, align 8, !tbaa !27
  %43 = load double, ptr %6, align 8, !tbaa !27
  %44 = fcmp ugt double %42, %43
  br i1 %44, label %45, label %127

45:                                               ; preds = %40
  %46 = load ptr, ptr %7, align 8, !tbaa !6
  %47 = load ptr, ptr %8, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !28
  %50 = load ptr, ptr %9, align 8, !tbaa !6
  %51 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %46, i64 noundef 0, i64 noundef %37, i64 noundef %49, i64 noundef 1, ptr noundef %50) #25
  %52 = icmp eq ptr %51, null
  br i1 %52, label %126, label %53

53:                                               ; preds = %45
  %54 = load ptr, ptr %2, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !28
  %57 = load ptr, ptr %3, align 8, !tbaa !6
  %58 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !28
  %60 = add i64 %56, 1
  %61 = sub i64 %60, %59
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %107

63:                                               ; preds = %53, %89
  %64 = phi ptr [ %96, %89 ], [ %51, %53 ]
  %65 = phi i64 [ %97, %89 ], [ 0, %53 ]
  call void @__kmpc_flush(ptr nonnull @2)
  %66 = load ptr, ptr %5, align 8, !tbaa !6
  %67 = load double, ptr %66, align 8, !tbaa !27
  %68 = load double, ptr %6, align 8, !tbaa !27
  %69 = fcmp ugt double %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %63
  %71 = load ptr, ptr %2, align 8, !tbaa !6
  %72 = load ptr, ptr %3, align 8, !tbaa !6
  %73 = load i32, ptr %10, align 4, !tbaa !10
  %74 = load ptr, ptr %9, align 8, !tbaa !6
  %75 = call fastcc double @GetSimilarityMetric(ptr noundef %71, ptr noundef %72, i32 noundef %73, i64 noundef %65, i64 noundef %37, ptr noundef %74) #20
  call void @__kmpc_critical(ptr nonnull @2, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_SimilarityImage.var)
  %76 = load ptr, ptr %5, align 8, !tbaa !6
  %77 = load double, ptr %76, align 8, !tbaa !27
  %78 = fcmp olt double %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  store double %75, ptr %76, align 8, !tbaa !27
  %80 = load ptr, ptr %11, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct._RectangleInfo, ptr %80, i64 0, i32 2
  store i64 %65, ptr %81, align 8, !tbaa !88
  %82 = getelementptr inbounds %struct._RectangleInfo, ptr %80, i64 0, i32 3
  store i64 %37, ptr %82, align 8, !tbaa !89
  br label %83

83:                                               ; preds = %79, %70
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_SimilarityImage.var)
  %84 = load i32, ptr %10, align 4, !tbaa !10
  %85 = icmp eq i32 %84, 255
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = fmul double %75, 1.000000e-02
  %88 = call fastcc double @MagickMin(double noundef %87) #20
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi double [ %88, %86 ], [ %75, %83 ]
  %91 = call double @llvm.fmuladd.f64(double %90, double -6.553500e+04, double 6.553500e+04)
  %92 = fptrunc double %91 to float
  %93 = call fastcc zeroext i16 @ClampToQuantum(float noundef %92) #20
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 2
  store i16 %93, ptr %94, align 2, !tbaa !43
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 1
  store i16 %93, ptr %95, align 2, !tbaa !44
  store i16 %93, ptr %64, align 2, !tbaa !45
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 1
  %97 = add nuw nsw i64 %65, 1
  %98 = load ptr, ptr %2, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct._Image, ptr %98, i64 0, i32 7
  %100 = load i64, ptr %99, align 8, !tbaa !28
  %101 = load ptr, ptr %3, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct._Image, ptr %101, i64 0, i32 7
  %103 = load i64, ptr %102, align 8, !tbaa !28
  %104 = add i64 %100, 1
  %105 = sub i64 %104, %103
  %106 = icmp slt i64 %97, %105
  br i1 %106, label %63, label %107, !llvm.loop !90

107:                                              ; preds = %89, %63, %53
  %108 = load ptr, ptr %7, align 8, !tbaa !6
  %109 = load ptr, ptr %9, align 8, !tbaa !6
  %110 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %108, ptr noundef %109) #25
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %113

113:                                              ; preds = %112, %107
  %114 = load ptr, ptr %2, align 8, !tbaa !6
  %115 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 47
  %116 = load ptr, ptr %115, align 8, !tbaa !66
  %117 = icmp eq ptr %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %113
  call void @__kmpc_critical(ptr nonnull @2, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_SimilarityImage.var)
  %119 = load ptr, ptr %2, align 8, !tbaa !6
  %120 = load i64, ptr %12, align 8, !tbaa !87
  %121 = add nsw i64 %120, 1
  store i64 %121, ptr %12, align 8, !tbaa !87
  %122 = getelementptr inbounds %struct._Image, ptr %119, i64 0, i32 8
  %123 = load i64, ptr %122, align 8, !tbaa !29
  %124 = call fastcc i32 @SetImageProgress(ptr noundef %119, i64 noundef %120, i64 noundef %123) #20
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_SimilarityImage.var)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118, %45
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %127

127:                                              ; preds = %126, %113, %118, %40, %36
  %128 = add nsw i64 %37, 1
  %129 = load i64, ptr %15, align 8, !tbaa !41
  %130 = icmp slt i64 %37, %129
  br i1 %130, label %36, label %131

131:                                              ; preds = %127
  %132 = load i64, ptr %14, align 8, !tbaa !41
  br label %133

133:                                              ; preds = %131, %32
  %134 = phi i64 [ %34, %32 ], [ %132, %131 ]
  %135 = phi i64 [ %33, %32 ], [ %129, %131 ]
  %136 = load i64, ptr %16, align 8, !tbaa !41
  %137 = add nsw i64 %136, %134
  store i64 %137, ptr %14, align 8, !tbaa !41
  %138 = add nsw i64 %136, %135
  %139 = call i64 @llvm.smin.i64(i64 %138, i64 %24)
  store i64 %139, ptr %15, align 8, !tbaa !41
  %140 = icmp sgt i64 %137, %139
  br i1 %140, label %141, label %32

141:                                              ; preds = %133, %26
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  br label %142

142:                                              ; preds = %141, %13
  ret void
}

; Function Attrs: convergent nounwind
declare void @__kmpc_flush(ptr) local_unnamed_addr #13

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc double @GetSimilarityMetric(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #17 {
  %7 = alloca double, align 8
  %8 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #4
  call void @SetGeometry(ptr noundef %1, ptr noundef nonnull %8) #21
  %9 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 2
  store i64 %3, ptr %9, align 8, !tbaa !88
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %8, i64 0, i32 3
  store i64 %4, ptr %10, align 8, !tbaa !89
  %11 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %5) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  store double 0.000000e+00, ptr %7, align 8, !tbaa !27
  %14 = call i32 @GetImageDistortion(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7, ptr noundef %5) #20
  %15 = call ptr @DestroyImage(ptr noundef nonnull %11) #21
  %16 = load double, ptr %7, align 8, !tbaa !27
  br label %17

17:                                               ; preds = %6, %13
  %18 = phi double [ %16, %13 ], [ 0.000000e+00, %6 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  ret double %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0) unnamed_addr #9 {
  %2 = fcmp olt double %0, 1.000000e+00
  %3 = select i1 %2, double %0, double 1.000000e+00
  ret double %3
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { convergent nounwind }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind optsize allocsize(0,1) }
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
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !11, i64 12976}
!13 = !{!"_Image", !11, i64 0, !11, i64 4, !11, i64 8, !14, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !7, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !17, i64 104, !18, i64 112, !11, i64 208, !7, i64 216, !11, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !14, i64 256, !17, i64 264, !17, i64 272, !20, i64 280, !20, i64 312, !20, i64 344, !17, i64 376, !17, i64 384, !17, i64 392, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !7, i64 424, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !21, i64 480, !22, i64 504, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !14, i64 12904, !14, i64 12912, !24, i64 12920, !11, i64 12976, !14, i64 12984, !7, i64 12992, !25, i64 13000, !25, i64 13032, !7, i64 13064, !14, i64 13072, !14, i64 13080, !7, i64 13088, !7, i64 13096, !7, i64 13104, !11, i64 13112, !11, i64 13116, !15, i64 13120, !7, i64 13128, !20, i64 13136, !7, i64 13168, !7, i64 13176, !11, i64 13184, !11, i64 13188, !26, i64 13192, !11, i64 13200, !14, i64 13208, !14, i64 13216, !11, i64 13224, !14, i64 13232}
!14 = !{!"long", !8, i64 0}
!15 = !{!"_PixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!16 = !{!"short", !8, i64 0}
!17 = !{!"double", !8, i64 0}
!18 = !{!"_ChromaticityInfo", !19, i64 0, !19, i64 24, !19, i64 48, !19, i64 72}
!19 = !{!"_PrimaryInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!20 = !{!"_RectangleInfo", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!21 = !{!"_ErrorInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!22 = !{!"_TimerInfo", !23, i64 0, !23, i64 24, !11, i64 48, !14, i64 56}
!23 = !{!"_Timer", !17, i64 0, !17, i64 8, !17, i64 16}
!24 = !{!"_ExceptionInfo", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32, !7, i64 40, !14, i64 48}
!25 = !{!"_ProfileInfo", !7, i64 0, !14, i64 8, !7, i64 16, !14, i64 24}
!26 = !{!"long long", !8, i64 0}
!27 = !{!17, !17, i64 0}
!28 = !{!13, !14, i64 40}
!29 = !{!13, !14, i64 48}
!30 = !{!13, !11, i64 4}
!31 = !{!13, !11, i64 416}
!32 = !{i32 0, i32 2}
!33 = !{!34, !11, i64 4}
!34 = !{!"_MagickPixelPacket", !11, i64 0, !11, i64 4, !11, i64 8, !17, i64 16, !14, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48}
!35 = !{!"float", !8, i64 0}
!36 = !{!34, !35, i64 32}
!37 = !{!34, !35, i64 36}
!38 = !{!34, !35, i64 40}
!39 = !{!35, !35, i64 0}
!40 = !{!34, !35, i64 48}
!41 = !{!14, !14, i64 0}
!42 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 16, i64 8, !27, i64 24, i64 8, !41, i64 32, i64 4, !39, i64 36, i64 4, !39, i64 40, i64 4, !39, i64 44, i64 4, !39, i64 48, i64 4, !39}
!43 = !{!15, !16, i64 4}
!44 = !{!15, !16, i64 2}
!45 = !{!15, !16, i64 0}
!46 = !{!13, !11, i64 32}
!47 = !{!15, !16, i64 6}
!48 = !{!16, !16, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!34, !35, i64 44}
!52 = !{!13, !11, i64 0}
!53 = !{!54}
!54 = !{i64 2, i64 -1, i64 -1, i1 true}
!55 = distinct !{!55, !50, !56, !57}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = distinct !{!58, !50, !56, !57}
!59 = distinct !{!59, !50}
!60 = distinct !{!60, !50}
!61 = !{!13, !17, i64 496}
!62 = distinct !{!62, !50, !56, !57}
!63 = !{!64, !17, i64 56}
!64 = !{!"_ChannelStatistics", !14, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88}
!65 = distinct !{!65, !50}
!66 = !{!13, !7, i64 568}
!67 = distinct !{!67, !50}
!68 = !{!64, !17, i64 72}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !50}
!71 = distinct !{!71, !50}
!72 = distinct !{!72, !50}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = distinct !{!76, !50}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
!80 = !{!13, !7, i64 576}
!81 = distinct !{!81, !50}
!82 = distinct !{!82, !50}
!83 = distinct !{!83, !50}
!84 = distinct !{!84, !50}
!85 = !{!13, !17, i64 480}
!86 = !{!13, !17, i64 488}
!87 = !{!26, !26, i64 0}
!88 = !{!20, !14, i64 16}
!89 = !{!20, !14, i64 24}
!90 = distinct !{!90, !50}
