; ModuleID = 'magick/threshold.c'
source_filename = "magick/threshold.c"
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
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._ThresholdMap = type { ptr, ptr, i64, i64, i64, ptr }
%struct._LongPixelPacket = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"magick/threshold.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_AdaptiveThresholdImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Threshold/Image\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.gomp_critical_user_MagickCore_BilevelImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.gomp_critical_user_MagickCore_BlackThresholdImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.gomp_critical_user_MagickCore_ClampImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"Clamp/Image\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Loading threshold map file \22%s\22 ...\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"XmlMissingElement\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"<description>, map \22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"levels\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"<levels>, map \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"UnableToAcquireThresholdMap\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"XmlMissingAttribute\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"<levels width>, map \22%s\22\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"XmlInvalidAttribute\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"<levels height>, map \22%s\22\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"divisor\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"<levels divisor>, map \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"XmlMissingContent\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"XmlInvalidContent\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"<level> too few values, map \22%s\22\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"<level> %.20g out of range, map \22%s\22\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"<level> too many values, map \22%s\22\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"thresholds.xml\00", align 1
@.str.32 = private unnamed_addr constant [412 x i8] c"<?xml version=\221.0\22?><thresholds>  <threshold map=\22threshold\22 alias=\221x1\22>    <description>Threshold 1x1 (non-dither)</description>    <levels width=\221\22 height=\221\22 divisor=\222\22>        1    </levels>  </threshold>  <threshold map=\22checks\22 alias=\222x1\22>    <description>Checkerboard 2x1 (dither)</description>    <levels width=\222\22 height=\222\22 divisor=\223\22>       1 2       2 1    </levels>  </threshold></thresholds>\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"%-16s %-12s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"Map\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"Alias\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"----------------------------------------------------\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"<map>\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [50 x i8] c"\0A   Threshold Maps for Ordered Dither Operations\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"o8x8\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"InvalidArgument\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"%s : '%s'\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"ordered-dither\00", align 1
@.gomp_critical_user_MagickCore_OrderedPosterizeImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.45 = private unnamed_addr constant [13 x i8] c"Dither/Image\00", align 1
@.gomp_critical_user_MagickCore_PerceptibleImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.46 = private unnamed_addr constant [18 x i8] c"Perceptible/Image\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.gomp_critical_user_MagickCore_RandomThresholdImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.gomp_critical_user_MagickCore_WhiteThresholdImageChannel.var = common global [8 x i32] zeroinitializer, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveThresholdImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = alloca float, align 4
  %18 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store i64 %1, ptr %7, align 8, !tbaa !10
  store i64 %2, ptr %8, align 8, !tbaa !10
  store i64 %3, ptr %9, align 8, !tbaa !10
  store ptr %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #4
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %20 = load i32, ptr %19, align 8, !tbaa !12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %24 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 199, ptr noundef nonnull @.str.2, ptr noundef nonnull %23) #21
  br label %25

25:                                               ; preds = %22, %5
  %26 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #21
  store ptr %26, ptr %13, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %68, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %26, i32 noundef 1) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %32) #21
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %26) #21
  br label %68

34:                                               ; preds = %28
  store i32 1, ptr %14, align 4, !tbaa !27
  store i64 0, ptr %15, align 8, !tbaa !28
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %16) #21
  %35 = mul i64 %2, %1
  %36 = uitofp i64 %35 to float
  store float %36, ptr %17, align 4, !tbaa !29
  %37 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #21
  store ptr %37, ptr %11, align 8, !tbaa !6
  %38 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %26, ptr noundef %4) #21
  store ptr %38, ptr %12, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !31
  %41 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %42 = shl i64 %41, 5
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %26) #21
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %56

52:                                               ; preds = %47, %44, %34
  %53 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %54 = icmp ult i64 %53, 2
  %55 = select i1 %54, i64 1, i64 2
  br label %56

56:                                               ; preds = %52, %50
  %57 = phi i64 [ %51, %50 ], [ %55, %52 ]
  %58 = trunc i64 %57 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %18, i32 %58)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @AdaptiveThresholdImage.omp_outlined, ptr nonnull %6, ptr nonnull %14, ptr nonnull %11, ptr nonnull %7, ptr nonnull %8, ptr nonnull %10, ptr nonnull %12, ptr nonnull %13, ptr nonnull %16, ptr nonnull %17, ptr nonnull %9, ptr nonnull %15)
  %59 = load ptr, ptr %12, align 8, !tbaa !6
  %60 = call ptr @DestroyCacheView(ptr noundef %59) #21
  store ptr %60, ptr %12, align 8, !tbaa !6
  %61 = load ptr, ptr %11, align 8, !tbaa !6
  %62 = call ptr @DestroyCacheView(ptr noundef %61) #21
  store ptr %62, ptr %11, align 8, !tbaa !6
  %63 = load i32, ptr %14, align 4, !tbaa !27
  %64 = icmp eq i32 %63, 0
  %65 = load ptr, ptr %13, align 8, !tbaa !6
  br i1 %64, label %66, label %68

66:                                               ; preds = %56
  %67 = call ptr @DestroyImage(ptr noundef %65) #21
  br label %68

68:                                               ; preds = %56, %66, %25, %31
  %69 = phi ptr [ null, %31 ], [ null, %25 ], [ %67, %66 ], [ %65, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret ptr %69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @AdaptiveThresholdImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %10, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull align 8 dereferenceable(8) %13) #3 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = load ptr, ptr %2, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !31
  %22 = add nsw i64 %21, -1
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %290

24:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 0, ptr %15, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 %22, ptr %16, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  store i64 1, ptr %17, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #4
  store i32 0, ptr %18, align 4, !tbaa !27
  %25 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %26 = load i64, ptr %16, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %16, align 8, !tbaa !10
  %28 = load i64, ptr %15, align 8, !tbaa !10
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %289, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds i8, ptr %10, i64 32
  %32 = getelementptr inbounds i8, ptr %10, i64 48
  br label %33

33:                                               ; preds = %30, %281
  %34 = phi i64 [ %27, %30 ], [ %287, %281 ]
  %35 = phi i64 [ %28, %30 ], [ %285, %281 ]
  %36 = icmp sgt i64 %35, %34
  br i1 %36, label %281, label %37

37:                                               ; preds = %33, %275
  %38 = phi i64 [ %276, %275 ], [ %35, %33 ]
  %39 = load i32, ptr %3, align 4, !tbaa !27
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %275, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 8, !tbaa !6
  %43 = load i64, ptr %5, align 8, !tbaa !10
  %44 = sdiv i64 %43, -2
  %45 = load i64, ptr %6, align 8, !tbaa !10
  %46 = sdiv i64 %45, -2
  %47 = add i64 %46, %38
  %48 = load ptr, ptr %2, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !32
  %51 = add i64 %50, %43
  %52 = load ptr, ptr %7, align 8, !tbaa !6
  %53 = call ptr @GetCacheViewVirtualPixels(ptr noundef %42, i64 noundef %44, i64 noundef %47, i64 noundef %51, i64 noundef %45, ptr noundef %52) #22
  %54 = load ptr, ptr %8, align 8, !tbaa !6
  %55 = load ptr, ptr %9, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !32
  %58 = load ptr, ptr %7, align 8, !tbaa !6
  %59 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %54, i64 noundef 0, i64 noundef %38, i64 noundef %57, i64 noundef 1, ptr noundef %58) #22
  %60 = icmp eq ptr %53, null
  %61 = icmp eq ptr %59, null
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %274, label %63

63:                                               ; preds = %41
  %64 = load ptr, ptr %4, align 8, !tbaa !6
  %65 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %64) #21
  %66 = load ptr, ptr %8, align 8, !tbaa !6
  %67 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %66) #21
  %68 = load <4 x float>, ptr %31, align 8
  %69 = shufflevector <4 x float> %68, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %70 = load float, ptr %32, align 8
  %71 = load i64, ptr %6, align 8, !tbaa !10
  %72 = icmp sgt i64 %71, 0
  %73 = load ptr, ptr %2, align 8
  br i1 %72, label %77, label %74

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %76 = load i64, ptr %75, align 8, !tbaa !32
  br label %87

77:                                               ; preds = %63
  %78 = load i64, ptr %5, align 8, !tbaa !10
  %79 = icmp sgt i64 %78, 0
  %80 = add nsw i64 %78, -1
  %81 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 1
  %82 = icmp eq ptr %65, null
  %83 = ptrtoint ptr %53 to i64
  %84 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %85 = load i64, ptr %84, align 8, !tbaa !32
  %86 = add i64 %85, %78
  br label %114

87:                                               ; preds = %167, %74
  %88 = phi i64 [ %76, %74 ], [ %85, %167 ]
  %89 = phi float [ %70, %74 ], [ %168, %167 ]
  %90 = phi float [ %70, %74 ], [ %169, %167 ]
  %91 = phi <4 x float> [ %69, %74 ], [ %170, %167 ]
  %92 = phi <4 x float> [ %69, %74 ], [ %171, %167 ]
  %93 = icmp sgt i64 %88, 0
  br i1 %93, label %94, label %255

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 1
  %96 = icmp eq ptr %65, null
  %97 = load i64, ptr %5, align 8
  %98 = add i64 %97, -1
  %99 = getelementptr i16, ptr %65, i64 %97
  %100 = getelementptr i16, ptr %99, i64 -1
  %101 = add i64 %97, %88
  %102 = load float, ptr %11, align 4, !tbaa !29
  %103 = load i64, ptr %12, align 8, !tbaa !10
  %104 = sitofp i64 %103 to float
  %105 = load i32, ptr %95, align 4, !tbaa !33
  %106 = icmp ne i32 %105, 12
  %107 = icmp eq ptr %67, null
  %108 = select i1 %106, i1 true, i1 %107
  %109 = icmp eq i32 %105, 12
  %110 = insertelement <4 x float> poison, float %102, i64 0
  %111 = shufflevector <4 x float> %110, <4 x float> poison, <4 x i32> zeroinitializer
  %112 = insertelement <4 x float> poison, float %104, i64 0
  %113 = shufflevector <4 x float> %112, <4 x float> poison, <4 x i32> zeroinitializer
  br label %175

114:                                              ; preds = %77, %167
  %115 = phi i64 [ 0, %77 ], [ %173, %167 ]
  %116 = phi float [ %70, %77 ], [ %169, %167 ]
  %117 = phi ptr [ %53, %77 ], [ %172, %167 ]
  %118 = phi float [ %70, %77 ], [ %168, %167 ]
  %119 = phi <4 x float> [ %69, %77 ], [ %170, %167 ]
  %120 = phi <4 x float> [ %69, %77 ], [ %171, %167 ]
  br i1 %79, label %121, label %167

121:                                              ; preds = %114
  %122 = ptrtoint ptr %117 to i64
  %123 = sub i64 %122, %83
  %124 = ashr exact i64 %123, 3
  %125 = getelementptr inbounds i16, ptr %65, i64 %124
  %126 = load i32, ptr %81, align 4, !tbaa !33
  %127 = icmp eq i32 %126, 12
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 %80
  %129 = getelementptr inbounds i16, ptr %125, i64 %80
  br label %130

130:                                              ; preds = %121, %163
  %131 = phi i64 [ 0, %121 ], [ %165, %163 ]
  %132 = phi float [ %116, %121 ], [ %149, %163 ]
  %133 = phi float [ %118, %121 ], [ %164, %163 ]
  %134 = phi <4 x float> [ %119, %121 ], [ %154, %163 ]
  %135 = phi <4 x float> [ %120, %121 ], [ %150, %163 ]
  %136 = icmp eq i64 %131, %80
  br i1 %136, label %137, label %148

137:                                              ; preds = %130
  %138 = load <4 x i16>, ptr %128, align 2, !tbaa !34
  %139 = uitofp <4 x i16> %138 to <4 x float>
  %140 = fadd <4 x float> %135, %139
  br i1 %127, label %141, label %148

141:                                              ; preds = %137
  br i1 %82, label %145, label %142

142:                                              ; preds = %141
  %143 = load i16, ptr %129, align 2, !tbaa !34
  %144 = zext i16 %143 to i32
  br label %145

145:                                              ; preds = %141, %142
  %146 = phi i32 [ %144, %142 ], [ 0, %141 ]
  %147 = sitofp i32 %146 to float
  br label %148

148:                                              ; preds = %137, %145, %130
  %149 = phi float [ %147, %145 ], [ %132, %137 ], [ %132, %130 ]
  %150 = phi <4 x float> [ %140, %145 ], [ %140, %137 ], [ %135, %130 ]
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 %131
  %152 = load <4 x i16>, ptr %151, align 2, !tbaa !34
  %153 = uitofp <4 x i16> %152 to <4 x float>
  %154 = fadd <4 x float> %134, %153
  br i1 %127, label %155, label %163

155:                                              ; preds = %148
  br i1 %82, label %160, label %156

156:                                              ; preds = %155
  %157 = getelementptr inbounds i16, ptr %125, i64 %131
  %158 = load i16, ptr %157, align 2, !tbaa !34
  %159 = zext i16 %158 to i32
  br label %160

160:                                              ; preds = %155, %156
  %161 = phi i32 [ %159, %156 ], [ 0, %155 ]
  %162 = sitofp i32 %161 to float
  br label %163

163:                                              ; preds = %148, %160
  %164 = phi float [ %162, %160 ], [ %133, %148 ]
  %165 = add nuw nsw i64 %131, 1
  %166 = icmp eq i64 %165, %78
  br i1 %166, label %167, label %130, !llvm.loop !35

167:                                              ; preds = %163, %114
  %168 = phi float [ %118, %114 ], [ %164, %163 ]
  %169 = phi float [ %116, %114 ], [ %149, %163 ]
  %170 = phi <4 x float> [ %119, %114 ], [ %154, %163 ]
  %171 = phi <4 x float> [ %120, %114 ], [ %150, %163 ]
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 %86
  %173 = add nuw nsw i64 %115, 1
  %174 = icmp eq i64 %173, %71
  br i1 %174, label %87, label %114, !llvm.loop !37

175:                                              ; preds = %94, %250
  %176 = phi i64 [ 0, %94 ], [ %253, %250 ]
  %177 = phi ptr [ %59, %94 ], [ %252, %250 ]
  %178 = phi float [ %90, %94 ], [ %233, %250 ]
  %179 = phi ptr [ %53, %94 ], [ %251, %250 ]
  %180 = phi float [ %89, %94 ], [ %232, %250 ]
  %181 = phi <4 x float> [ %91, %94 ], [ %234, %250 ]
  %182 = phi <4 x float> [ %92, %94 ], [ %235, %250 ]
  %183 = load float, ptr %32, align 8
  %184 = fsub <4 x float> %181, %182
  %185 = fsub float %180, %178
  %186 = load <4 x float>, ptr %31, align 8
  %187 = shufflevector <4 x float> %186, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  br i1 %72, label %188, label %231

188:                                              ; preds = %175
  %189 = getelementptr inbounds i16, ptr %65, i64 %176
  %190 = ptrtoint ptr %179 to i64
  %191 = getelementptr i16, ptr %100, i64 %176
  br label %192

192:                                              ; preds = %188, %226
  %193 = phi i64 [ 0, %188 ], [ %229, %226 ]
  %194 = phi float [ %183, %188 ], [ %214, %226 ]
  %195 = phi ptr [ %179, %188 ], [ %228, %226 ]
  %196 = phi float [ %185, %188 ], [ %227, %226 ]
  %197 = phi <4 x float> [ %184, %188 ], [ %218, %226 ]
  %198 = phi <4 x float> [ %187, %188 ], [ %201, %226 ]
  %199 = load <4 x i16>, ptr %195, align 2, !tbaa !34
  %200 = uitofp <4 x i16> %199 to <4 x float>
  %201 = fadd <4 x float> %198, %200
  br i1 %109, label %202, label %213

202:                                              ; preds = %192
  br i1 %96, label %210, label %203

203:                                              ; preds = %202
  %204 = ptrtoint ptr %195 to i64
  %205 = sub i64 %204, %190
  %206 = ashr exact i64 %205, 3
  %207 = getelementptr inbounds i16, ptr %189, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !34
  %209 = zext i16 %208 to i32
  br label %210

210:                                              ; preds = %202, %203
  %211 = phi i32 [ %209, %203 ], [ 0, %202 ]
  %212 = sitofp i32 %211 to float
  br label %213

213:                                              ; preds = %210, %192
  %214 = phi float [ %212, %210 ], [ %194, %192 ]
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 %98
  %216 = load <4 x i16>, ptr %215, align 2, !tbaa !34
  %217 = uitofp <4 x i16> %216 to <4 x float>
  %218 = fadd <4 x float> %197, %217
  br i1 %109, label %219, label %226

219:                                              ; preds = %213
  %220 = ptrtoint ptr %195 to i64
  %221 = sub i64 %220, %190
  %222 = ashr exact i64 %221, 3
  %223 = getelementptr i16, ptr %191, i64 %222
  %224 = load i16, ptr %223, align 2, !tbaa !34
  %225 = uitofp i16 %224 to float
  br label %226

226:                                              ; preds = %219, %213
  %227 = phi float [ %225, %219 ], [ %196, %213 ]
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 %101
  %229 = add nuw nsw i64 %193, 1
  %230 = icmp eq i64 %229, %71
  br i1 %230, label %231, label %192, !llvm.loop !38

231:                                              ; preds = %226, %175
  %232 = phi float [ %185, %175 ], [ %227, %226 ]
  %233 = phi float [ %183, %175 ], [ %214, %226 ]
  %234 = phi <4 x float> [ %184, %175 ], [ %218, %226 ]
  %235 = phi <4 x float> [ %187, %175 ], [ %201, %226 ]
  %236 = fdiv <4 x float> %234, %111
  %237 = fadd <4 x float> %236, %113
  %238 = load <4 x i16>, ptr %177, align 2, !tbaa !34
  %239 = uitofp <4 x i16> %238 to <4 x float>
  %240 = fcmp ult <4 x float> %237, %239
  %241 = sext <4 x i1> %240 to <4 x i16>
  store <4 x i16> %241, ptr %177, align 2, !tbaa !34
  br i1 %108, label %250, label %242

242:                                              ; preds = %231
  %243 = fdiv float %232, %102
  %244 = fadd float %243, %104
  %245 = getelementptr inbounds i16, ptr %67, i64 %176
  %246 = load i16, ptr %245, align 2, !tbaa !34
  %247 = uitofp i16 %246 to float
  %248 = fcmp ult float %244, %247
  %249 = sext i1 %248 to i16
  store i16 %249, ptr %245, align 2, !tbaa !34
  br label %250

250:                                              ; preds = %242, %231
  %251 = getelementptr inbounds %struct._PixelPacket, ptr %179, i64 1
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %177, i64 1
  %253 = add nuw nsw i64 %176, 1
  %254 = icmp eq i64 %253, %88
  br i1 %254, label %255, label %175, !llvm.loop !39

255:                                              ; preds = %250, %87
  %256 = load ptr, ptr %8, align 8, !tbaa !6
  %257 = load ptr, ptr %7, align 8, !tbaa !6
  %258 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %256, ptr noundef %257) #22
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %261

261:                                              ; preds = %260, %255
  %262 = load ptr, ptr %2, align 8, !tbaa !6
  %263 = getelementptr inbounds %struct._Image, ptr %262, i64 0, i32 47
  %264 = load ptr, ptr %263, align 8, !tbaa !40
  %265 = icmp eq ptr %264, null
  br i1 %265, label %275, label %266

266:                                              ; preds = %261
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_AdaptiveThresholdImage.var)
  %267 = load ptr, ptr %2, align 8, !tbaa !6
  %268 = load i64, ptr %13, align 8, !tbaa !28
  %269 = add nsw i64 %268, 1
  store i64 %269, ptr %13, align 8, !tbaa !28
  %270 = getelementptr inbounds %struct._Image, ptr %267, i64 0, i32 8
  %271 = load i64, ptr %270, align 8, !tbaa !31
  %272 = call fastcc i32 @SetImageProgress(ptr noundef %267, ptr noundef nonnull @.str.3, i64 noundef %268, i64 noundef %271) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_AdaptiveThresholdImage.var)
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %266, %41
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %275

275:                                              ; preds = %274, %261, %266, %37
  %276 = add nsw i64 %38, 1
  %277 = load i64, ptr %16, align 8, !tbaa !10
  %278 = icmp slt i64 %38, %277
  br i1 %278, label %37, label %279

279:                                              ; preds = %275
  %280 = load i64, ptr %15, align 8, !tbaa !10
  br label %281

281:                                              ; preds = %279, %33
  %282 = phi i64 [ %35, %33 ], [ %280, %279 ]
  %283 = phi i64 [ %34, %33 ], [ %277, %279 ]
  %284 = load i64, ptr %17, align 8, !tbaa !10
  %285 = add nsw i64 %284, %282
  store i64 %285, ptr %15, align 8, !tbaa !10
  %286 = add nsw i64 %284, %283
  %287 = call i64 @llvm.smin.i64(i64 %286, i64 %22)
  store i64 %287, ptr %16, align 8, !tbaa !10
  %288 = icmp sgt i64 %285, %287
  br i1 %288, label %289, label %33

289:                                              ; preds = %281, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  br label %290

290:                                              ; preds = %289, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #6

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #7 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #4
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef nonnull %10) #21
  %12 = load ptr, ptr %6, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #21
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #4
  ret i32 %17
}

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
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BilevelImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BilevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1) #23
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BilevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !6
  store i32 %1, ptr %5, align 4, !tbaa !27
  store double %2, ptr %6, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 441, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #21
  br label %18

18:                                               ; preds = %15, %3
  %19 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !33
  %24 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %23) #23, !range !45
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #21
  br label %28

28:                                               ; preds = %26, %21
  store i32 1, ptr %9, align 4, !tbaa !27
  store i64 0, ptr %10, align 8, !tbaa !28
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %29, ptr %8, align 8, !tbaa !6
  %30 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %29) #21
  store ptr %30, ptr %7, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !31
  %33 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %34 = shl i64 %33, 5
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %48

44:                                               ; preds = %39, %36, %28
  %45 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %46 = icmp ult i64 %45, 2
  %47 = select i1 %46, i64 1, i64 2
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i64 [ %43, %42 ], [ %47, %44 ]
  %50 = trunc i64 %49 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %11, i32 %50)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @BilevelImageChannel.omp_outlined, ptr nonnull %4, ptr nonnull %9, ptr nonnull %7, ptr nonnull %8, ptr nonnull %5, ptr nonnull %6, ptr nonnull %10)
  %51 = load ptr, ptr %7, align 8, !tbaa !6
  %52 = call ptr @DestroyCacheView(ptr noundef %51) #21
  %53 = load i32, ptr %9, align 4, !tbaa !27
  br label %54

54:                                               ; preds = %18, %48
  %55 = phi i32 [ %53, %48 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  ret i32 %55
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #8 {
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
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @BilevelImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #3 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !31
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %163

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  store i64 0, ptr %10, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 %17, ptr %11, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 1, ptr %12, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  store i32 0, ptr %13, align 4, !tbaa !27
  %20 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !10
  %23 = load i64, ptr %10, align 8, !tbaa !10
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %162, label %25

25:                                               ; preds = %19, %154
  %26 = phi i64 [ %160, %154 ], [ %22, %19 ]
  %27 = phi i64 [ %158, %154 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %154, label %29

29:                                               ; preds = %25, %148
  %30 = phi i64 [ %149, %148 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %148, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !6
  %35 = load ptr, ptr %2, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !32
  %38 = load ptr, ptr %5, align 8, !tbaa !6
  %39 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %30, i64 noundef %37, i64 noundef 1, ptr noundef %38) #22
  %40 = icmp eq ptr %39, null
  br i1 %40, label %147, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !tbaa !6
  %43 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %42) #21
  %44 = load i32, ptr %6, align 4, !tbaa !27
  %45 = and i32 %44, 256
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %2, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !32
  %50 = icmp sgt i64 %49, 0
  br i1 %46, label %52, label %51

51:                                               ; preds = %41
  br i1 %50, label %67, label %128

52:                                               ; preds = %41
  br i1 %50, label %53, label %128

53:                                               ; preds = %52
  %54 = and i32 %44, 1
  %55 = icmp eq i32 %54, 0
  %56 = load double, ptr %7, align 8
  %57 = insertelement <4 x i32> poison, i32 %44, i64 0
  %58 = shufflevector <4 x i32> %57, <4 x i32> poison, <4 x i32> zeroinitializer
  %59 = and <4 x i32> %58, <i32 32, i32 8, i32 4, i32 2>
  %60 = icmp eq <4 x i32> %59, zeroinitializer
  %61 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 1
  %62 = icmp eq ptr %43, null
  %63 = extractelement <4 x i1> %60, i64 0
  %64 = extractelement <4 x i1> %60, i64 1
  %65 = extractelement <4 x i1> %60, i64 2
  %66 = extractelement <4 x i1> %60, i64 3
  br label %84

67:                                               ; preds = %51, %67
  %68 = phi ptr [ %80, %67 ], [ %47, %51 ]
  %69 = phi ptr [ %78, %67 ], [ %39, %51 ]
  %70 = phi i64 [ %79, %67 ], [ 0, %51 ]
  %71 = call float @GetPixelIntensity(ptr noundef nonnull %68, ptr noundef nonnull %69) #22
  %72 = fpext float %71 to double
  %73 = load double, ptr %7, align 8, !tbaa !44
  %74 = fcmp ult double %73, %72
  %75 = sext i1 %74 to i16
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 2
  store i16 %75, ptr %76, align 2, !tbaa !46
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 0, i32 1
  store i16 %75, ptr %77, align 2, !tbaa !47
  store i16 %75, ptr %69, align 2, !tbaa !48
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 1
  %79 = add nuw nsw i64 %70, 1
  %80 = load ptr, ptr %2, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct._Image, ptr %80, i64 0, i32 7
  %82 = load i64, ptr %81, align 8, !tbaa !32
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %67, label %128, !llvm.loop !49

84:                                               ; preds = %53, %124
  %85 = phi ptr [ %39, %53 ], [ %125, %124 ]
  %86 = phi i64 [ 0, %53 ], [ %126, %124 ]
  br i1 %55, label %93, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 2
  %89 = load i16, ptr %88, align 2, !tbaa !46
  %90 = uitofp i16 %89 to double
  %91 = fcmp ult double %56, %90
  %92 = sext i1 %91 to i16
  store i16 %92, ptr %88, align 2, !tbaa !46
  br label %93

93:                                               ; preds = %87, %84
  br i1 %66, label %100, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 1
  %96 = load i16, ptr %95, align 2, !tbaa !47
  %97 = uitofp i16 %96 to double
  %98 = fcmp ult double %56, %97
  %99 = sext i1 %98 to i16
  store i16 %99, ptr %95, align 2, !tbaa !47
  br label %100

100:                                              ; preds = %94, %93
  br i1 %65, label %106, label %101

101:                                              ; preds = %100
  %102 = load i16, ptr %85, align 2, !tbaa !48
  %103 = uitofp i16 %102 to double
  %104 = fcmp ult double %56, %103
  %105 = sext i1 %104 to i16
  store i16 %105, ptr %85, align 2, !tbaa !48
  br label %106

106:                                              ; preds = %101, %100
  br i1 %64, label %113, label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 3
  %109 = load i16, ptr %108, align 2, !tbaa !50
  %110 = uitofp i16 %109 to double
  %111 = fcmp ult double %56, %110
  %112 = sext i1 %111 to i16
  store i16 %112, ptr %108, align 2, !tbaa !50
  br label %113

113:                                              ; preds = %107, %106
  br i1 %63, label %124, label %114

114:                                              ; preds = %113
  %115 = load i32, ptr %61, align 4, !tbaa !33
  %116 = icmp ne i32 %115, 12
  %117 = select i1 %116, i1 true, i1 %62
  br i1 %117, label %124, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds i16, ptr %43, i64 %86
  %120 = load i16, ptr %119, align 2, !tbaa !34
  %121 = uitofp i16 %120 to double
  %122 = fcmp ult double %56, %121
  %123 = sext i1 %122 to i16
  store i16 %123, ptr %119, align 2, !tbaa !34
  br label %124

124:                                              ; preds = %118, %114, %113
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 1
  %126 = add nuw nsw i64 %86, 1
  %127 = icmp eq i64 %126, %49
  br i1 %127, label %128, label %84, !llvm.loop !51

128:                                              ; preds = %67, %124, %51, %52
  %129 = load ptr, ptr %4, align 8, !tbaa !6
  %130 = load ptr, ptr %5, align 8, !tbaa !6
  %131 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %129, ptr noundef %130) #22
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %134

134:                                              ; preds = %133, %128
  %135 = load ptr, ptr %2, align 8, !tbaa !6
  %136 = getelementptr inbounds %struct._Image, ptr %135, i64 0, i32 47
  %137 = load ptr, ptr %136, align 8, !tbaa !40
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %134
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_BilevelImageChannel.var)
  %140 = load ptr, ptr %2, align 8, !tbaa !6
  %141 = load i64, ptr %8, align 8, !tbaa !28
  %142 = add nsw i64 %141, 1
  store i64 %142, ptr %8, align 8, !tbaa !28
  %143 = getelementptr inbounds %struct._Image, ptr %140, i64 0, i32 8
  %144 = load i64, ptr %143, align 8, !tbaa !31
  %145 = call fastcc i32 @SetImageProgress(ptr noundef %140, ptr noundef nonnull @.str.3, i64 noundef %141, i64 noundef %144) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_BilevelImageChannel.var)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139, %33
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %148

148:                                              ; preds = %147, %134, %139, %29
  %149 = add nsw i64 %30, 1
  %150 = load i64, ptr %11, align 8, !tbaa !10
  %151 = icmp slt i64 %30, %150
  br i1 %151, label %29, label %152

152:                                              ; preds = %148
  %153 = load i64, ptr %10, align 8, !tbaa !10
  br label %154

154:                                              ; preds = %152, %25
  %155 = phi i64 [ %27, %25 ], [ %153, %152 ]
  %156 = phi i64 [ %26, %25 ], [ %150, %152 ]
  %157 = load i64, ptr %12, align 8, !tbaa !10
  %158 = add nsw i64 %157, %155
  store i64 %158, ptr %10, align 8, !tbaa !10
  %159 = add nsw i64 %157, %156
  %160 = call i64 @llvm.smin.i64(i64 %159, i64 %17)
  store i64 %160, ptr %11, align 8, !tbaa !10
  %161 = icmp sgt i64 %158, %160
  br i1 %161, label %162, label %25

162:                                              ; preds = %154, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  br label %163

163:                                              ; preds = %162, %9
  ret void
}

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlackThresholdImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @BlackThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef nonnull %3) #23
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BlackThresholdImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._GeometryInfo, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !6
  store i32 %1, ptr %6, align 4, !tbaa !27
  store ptr %3, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #4
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %15 = load i32, ptr %14, align 8, !tbaa !12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 608, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #21
  br label %20

20:                                               ; preds = %17, %4
  %21 = icmp eq ptr %2, null
  br i1 %21, label %95, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %95, label %25

25:                                               ; preds = %22
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %12) #21
  %26 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %9) #21
  %27 = load double, ptr %9, align 8, !tbaa !52
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 5
  store float %28, ptr %29, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 6
  %32 = load <2 x double>, ptr %30, align 8, !tbaa !44
  %33 = fptrunc <2 x double> %32 to <2 x float>
  %34 = insertelement <2 x i32> poison, i32 %26, i64 0
  %35 = shufflevector <2 x i32> %34, <2 x i32> poison, <2 x i32> zeroinitializer
  %36 = and <2 x i32> %35, <i32 8, i32 1>
  %37 = icmp eq <2 x i32> %36, zeroinitializer
  %38 = insertelement <2 x float> poison, float %28, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = select <2 x i1> %37, <2 x float> %39, <2 x float> %33
  store <2 x float> %40, ptr %31, align 4
  %41 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 8
  %43 = load <2 x double>, ptr %41, align 8, !tbaa !44
  %44 = fptrunc <2 x double> %43 to <2 x float>
  %45 = and <2 x i32> %35, <i32 2, i32 16>
  %46 = icmp eq <2 x i32> %45, zeroinitializer
  %47 = select <2 x i1> %46, <2 x float> %39, <2 x float> %44
  store <2 x float> %47, ptr %42, align 4
  %48 = and i32 %26, 4096
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %25
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 9
  %52 = insertelement <4 x float> poison, float %28, i64 0
  %53 = shufflevector <2 x float> %40, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %54 = shufflevector <4 x float> %52, <4 x float> %53, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %55 = shufflevector <2 x float> %47, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %56 = shufflevector <4 x float> %54, <4 x float> %55, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %57 = fmul <4 x float> %56, <float 0x40847ACCC0000000, float 0x40847ACCC0000000, float 0x40847ACCC0000000, float 0x40847ACCC0000000>
  store <4 x float> %57, ptr %29, align 8, !tbaa !29
  %58 = extractelement <2 x float> %47, i64 1
  %59 = fmul float %58, 0x40847ACCC0000000
  store float %59, ptr %51, align 8, !tbaa !56
  br label %60

60:                                               ; preds = %50, %25
  %61 = call fastcc i32 @IsMagickGray(ptr noundef nonnull %12) #23, !range !45
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !33
  %66 = call fastcc i32 @IsGrayColorspace(i32 noundef %65) #23, !range !45
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #21
  br label %70

70:                                               ; preds = %68, %63, %60
  store i32 1, ptr %10, align 4, !tbaa !27
  store i64 0, ptr %11, align 8, !tbaa !28
  %71 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %3) #21
  store ptr %71, ptr %8, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %73 = load i64, ptr %72, align 8, !tbaa !31
  %74 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %75 = shl i64 %74, 5
  %76 = icmp ugt i64 %73, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %89

85:                                               ; preds = %80, %77, %70
  %86 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %87 = icmp ult i64 %86, 2
  %88 = select i1 %87, i64 1, i64 2
  br label %89

89:                                               ; preds = %85, %83
  %90 = phi i64 [ %84, %83 ], [ %88, %85 ]
  %91 = trunc i64 %90 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %91)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @BlackThresholdImageChannel.omp_outlined, ptr nonnull %5, ptr nonnull %10, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %12, ptr nonnull %11)
  %92 = load ptr, ptr %8, align 8, !tbaa !6
  %93 = call ptr @DestroyCacheView(ptr noundef %92) #21
  %94 = load i32, ptr %10, align 4, !tbaa !27
  br label %95

95:                                               ; preds = %22, %20, %89
  %96 = phi i32 [ %94, %89 ], [ 1, %20 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  ret i32 %96
}

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsMagickGray(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !57
  %4 = add i32 %3, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !58
  %11 = fsub float %8, %10
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fpext float %12 to double
  %14 = fcmp olt double %13, 1.000000e-15
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %17 = load float, ptr %16, align 8, !tbaa !59
  %18 = fsub float %10, %17
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fpext float %19 to double
  %21 = fcmp olt double %20, 1.000000e-15
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %6
  br label %23

23:                                               ; preds = %1, %15, %22
  %24 = phi i32 [ 0, %22 ], [ 0, %1 ], [ 1, %15 ]
  ret i32 %24
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @BlackThresholdImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #3 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !31
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %152

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  store i64 0, ptr %10, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 %17, ptr %11, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 1, ptr %12, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  store i32 0, ptr %13, align 4, !tbaa !27
  %20 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !10
  %23 = load i64, ptr %10, align 8, !tbaa !10
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %151, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  br label %31

31:                                               ; preds = %25, %143
  %32 = phi i64 [ %22, %25 ], [ %149, %143 ]
  %33 = phi i64 [ %23, %25 ], [ %147, %143 ]
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %143, label %35

35:                                               ; preds = %31, %137
  %36 = phi i64 [ %138, %137 ], [ %33, %31 ]
  %37 = load i32, ptr %3, align 4, !tbaa !27
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %137, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8, !tbaa !6
  %41 = load ptr, ptr %2, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !32
  %44 = load ptr, ptr %5, align 8, !tbaa !6
  %45 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %36, i64 noundef %43, i64 noundef 1, ptr noundef %44) #22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %136, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %4, align 8, !tbaa !6
  %49 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %48) #21
  %50 = load ptr, ptr %2, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !32
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %117

54:                                               ; preds = %47
  %55 = load i32, ptr %6, align 4, !tbaa !27
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  %58 = load float, ptr %26, align 8
  %59 = load float, ptr %27, align 4
  %60 = load float, ptr %28, align 8
  %61 = load float, ptr %29, align 4
  %62 = insertelement <4 x i32> poison, i32 %55, i64 0
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> zeroinitializer
  %64 = and <4 x i32> %63, <i32 32, i32 8, i32 4, i32 2>
  %65 = icmp eq <4 x i32> %64, zeroinitializer
  %66 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 1
  %67 = icmp eq ptr %49, null
  %68 = load float, ptr %30, align 8
  %69 = extractelement <4 x i1> %65, i64 0
  %70 = extractelement <4 x i1> %65, i64 1
  %71 = extractelement <4 x i1> %65, i64 2
  %72 = extractelement <4 x i1> %65, i64 3
  br label %73

73:                                               ; preds = %54, %113
  %74 = phi ptr [ %45, %54 ], [ %114, %113 ]
  %75 = phi i64 [ 0, %54 ], [ %115, %113 ]
  br i1 %57, label %82, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  %78 = load i16, ptr %77, align 2, !tbaa !46
  %79 = uitofp i16 %78 to float
  %80 = fcmp ogt float %58, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i16 0, ptr %77, align 2, !tbaa !46
  br label %82

82:                                               ; preds = %81, %76, %73
  br i1 %72, label %89, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 1
  %85 = load i16, ptr %84, align 2, !tbaa !47
  %86 = uitofp i16 %85 to float
  %87 = fcmp ogt float %59, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i16 0, ptr %84, align 2, !tbaa !47
  br label %89

89:                                               ; preds = %88, %83, %82
  br i1 %71, label %95, label %90

90:                                               ; preds = %89
  %91 = load i16, ptr %74, align 2, !tbaa !48
  %92 = uitofp i16 %91 to float
  %93 = fcmp ogt float %60, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i16 0, ptr %74, align 2, !tbaa !48
  br label %95

95:                                               ; preds = %94, %90, %89
  br i1 %70, label %102, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 3
  %98 = load i16, ptr %97, align 2, !tbaa !50
  %99 = uitofp i16 %98 to float
  %100 = fcmp ogt float %61, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i16 0, ptr %97, align 2, !tbaa !50
  br label %102

102:                                              ; preds = %101, %96, %95
  br i1 %69, label %113, label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %66, align 4, !tbaa !33
  %105 = icmp eq i32 %104, 12
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = getelementptr inbounds i16, ptr %49, i64 %75
  br i1 %67, label %113, label %108

108:                                              ; preds = %106
  %109 = load i16, ptr %107, align 2, !tbaa !34
  %110 = uitofp i16 %109 to float
  %111 = fcmp ule float %68, %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  store i16 0, ptr %107, align 2, !tbaa !34
  br label %113

113:                                              ; preds = %106, %112, %108, %103, %102
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  %115 = add nuw nsw i64 %75, 1
  %116 = icmp eq i64 %115, %52
  br i1 %116, label %117, label %73, !llvm.loop !60

117:                                              ; preds = %113, %47
  %118 = load ptr, ptr %4, align 8, !tbaa !6
  %119 = load ptr, ptr %5, align 8, !tbaa !6
  %120 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %118, ptr noundef %119) #22
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %123

123:                                              ; preds = %122, %117
  %124 = load ptr, ptr %2, align 8, !tbaa !6
  %125 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 47
  %126 = load ptr, ptr %125, align 8, !tbaa !40
  %127 = icmp eq ptr %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %123
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_BlackThresholdImageChannel.var)
  %129 = load ptr, ptr %2, align 8, !tbaa !6
  %130 = load i64, ptr %8, align 8, !tbaa !28
  %131 = add nsw i64 %130, 1
  store i64 %131, ptr %8, align 8, !tbaa !28
  %132 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 8
  %133 = load i64, ptr %132, align 8, !tbaa !31
  %134 = call fastcc i32 @SetImageProgress(ptr noundef %129, ptr noundef nonnull @.str.3, i64 noundef %130, i64 noundef %133) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_BlackThresholdImageChannel.var)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128, %39
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %137

137:                                              ; preds = %136, %123, %128, %35
  %138 = add nsw i64 %36, 1
  %139 = load i64, ptr %11, align 8, !tbaa !10
  %140 = icmp slt i64 %36, %139
  br i1 %140, label %35, label %141

141:                                              ; preds = %137
  %142 = load i64, ptr %10, align 8, !tbaa !10
  br label %143

143:                                              ; preds = %141, %31
  %144 = phi i64 [ %33, %31 ], [ %142, %141 ]
  %145 = phi i64 [ %32, %31 ], [ %139, %141 ]
  %146 = load i64, ptr %12, align 8, !tbaa !10
  %147 = add nsw i64 %146, %144
  store i64 %147, ptr %10, align 8, !tbaa !10
  %148 = add nsw i64 %146, %145
  %149 = call i64 @llvm.smin.i64(i64 %148, i64 %17)
  store i64 %149, ptr %11, align 8, !tbaa !10
  %150 = icmp sgt i64 %147, %149
  br i1 %150, label %151, label %31

151:                                              ; preds = %143, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  br label %152

152:                                              ; preds = %151, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClampImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ClampImageChannel(ptr noundef %0, i32 noundef 134217719) #23
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClampImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !6
  store i32 %1, ptr %4, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 783, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #21
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, ptr %0, align 8, !tbaa !61
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %21 = load i64, ptr %20, align 8, !tbaa !62
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %44, %26 ], [ %25, %23 ]
  %28 = phi i64 [ %45, %26 ], [ 0, %23 ]
  %29 = getelementptr inbounds %struct._PixelPacket, ptr %27, i64 0, i32 2
  %30 = load i16, ptr %29, align 2, !tbaa !46
  %31 = uitofp i16 %30 to float
  %32 = tail call fastcc zeroext i16 @ClampPixel(float noundef %31) #23
  store i16 %32, ptr %29, align 2, !tbaa !46
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %27, i64 0, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !47
  %35 = uitofp i16 %34 to float
  %36 = tail call fastcc zeroext i16 @ClampPixel(float noundef %35) #23
  store i16 %36, ptr %33, align 2, !tbaa !47
  %37 = load i16, ptr %27, align 2, !tbaa !48
  %38 = uitofp i16 %37 to float
  %39 = tail call fastcc zeroext i16 @ClampPixel(float noundef %38) #23
  store i16 %39, ptr %27, align 2, !tbaa !48
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %27, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !50
  %42 = uitofp i16 %41 to float
  %43 = tail call fastcc zeroext i16 @ClampPixel(float noundef %42) #23
  store i16 %43, ptr %40, align 2, !tbaa !50
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %27, i64 1
  %45 = add nuw nsw i64 %28, 1
  %46 = icmp eq i64 %45, %21
  br i1 %46, label %47, label %26, !llvm.loop !64

47:                                               ; preds = %26, %19
  %48 = tail call i32 @SyncImage(ptr noundef nonnull %0) #21
  br label %75

49:                                               ; preds = %16
  store i32 1, ptr %7, align 4, !tbaa !27
  store i64 0, ptr %8, align 8, !tbaa !28
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %50, ptr %6, align 8, !tbaa !6
  %51 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %50) #21
  store ptr %51, ptr %5, align 8, !tbaa !6
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %53 = load i64, ptr %52, align 8, !tbaa !31
  %54 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %55 = shl i64 %54, 5
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %69

65:                                               ; preds = %60, %57, %49
  %66 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %67 = icmp ult i64 %66, 2
  %68 = select i1 %67, i64 1, i64 2
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i64 [ %64, %63 ], [ %68, %65 ]
  %71 = trunc i64 %70 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %9, i32 %71)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @ClampImageChannel.omp_outlined, ptr nonnull %3, ptr nonnull %7, ptr nonnull %5, ptr nonnull %6, ptr nonnull %4, ptr nonnull %8)
  %72 = load ptr, ptr %5, align 8, !tbaa !6
  %73 = call ptr @DestroyCacheView(ptr noundef %72) #21
  %74 = load i32, ptr %7, align 4, !tbaa !27
  br label %75

75:                                               ; preds = %69, %47
  %76 = phi i32 [ %48, %47 ], [ %74, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  ret i32 %76
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampPixel(float noundef %0) unnamed_addr #8 {
  %2 = fptoui float %0 to i16
  ret i16 %2
}

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ClampImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull align 8 dereferenceable(8) %7) #3 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !31
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %135

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  store i64 0, ptr %9, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  store i64 %16, ptr %10, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 1, ptr %11, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #4
  store i32 0, ptr %12, align 4, !tbaa !27
  %19 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %10, align 8, !tbaa !10
  %22 = load i64, ptr %9, align 8, !tbaa !10
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %134, label %24

24:                                               ; preds = %18, %126
  %25 = phi i64 [ %132, %126 ], [ %21, %18 ]
  %26 = phi i64 [ %130, %126 ], [ %22, %18 ]
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %126, label %28

28:                                               ; preds = %24, %120
  %29 = phi i64 [ %121, %120 ], [ %26, %24 ]
  %30 = load i32, ptr %3, align 4, !tbaa !27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %120, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !6
  %34 = load ptr, ptr %2, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !32
  %37 = load ptr, ptr %5, align 8, !tbaa !6
  %38 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %29, i64 noundef %36, i64 noundef 1, ptr noundef %37) #22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %119, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %4, align 8, !tbaa !6
  %42 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %41) #21
  %43 = load ptr, ptr %2, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !32
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %100

47:                                               ; preds = %40
  %48 = load i32, ptr %6, align 4, !tbaa !27
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  %51 = insertelement <4 x i32> poison, i32 %48, i64 0
  %52 = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> zeroinitializer
  %53 = and <4 x i32> %52, <i32 32, i32 8, i32 4, i32 2>
  %54 = icmp eq <4 x i32> %53, zeroinitializer
  %55 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 1
  %56 = icmp eq ptr %42, null
  %57 = extractelement <4 x i1> %54, i64 0
  %58 = extractelement <4 x i1> %54, i64 1
  %59 = extractelement <4 x i1> %54, i64 2
  %60 = extractelement <4 x i1> %54, i64 3
  br label %61

61:                                               ; preds = %47, %96
  %62 = phi ptr [ %38, %47 ], [ %97, %96 ]
  %63 = phi i64 [ 0, %47 ], [ %98, %96 ]
  br i1 %50, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 2
  %66 = load i16, ptr %65, align 2, !tbaa !46
  %67 = uitofp i16 %66 to float
  %68 = call fastcc zeroext i16 @ClampPixel(float noundef %67) #23
  store i16 %68, ptr %65, align 2, !tbaa !46
  br label %69

69:                                               ; preds = %64, %61
  br i1 %60, label %75, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !47
  %73 = uitofp i16 %72 to float
  %74 = call fastcc zeroext i16 @ClampPixel(float noundef %73) #23
  store i16 %74, ptr %71, align 2, !tbaa !47
  br label %75

75:                                               ; preds = %70, %69
  br i1 %59, label %80, label %76

76:                                               ; preds = %75
  %77 = load i16, ptr %62, align 2, !tbaa !48
  %78 = uitofp i16 %77 to float
  %79 = call fastcc zeroext i16 @ClampPixel(float noundef %78) #23
  store i16 %79, ptr %62, align 2, !tbaa !48
  br label %80

80:                                               ; preds = %76, %75
  br i1 %58, label %86, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 0, i32 3
  %83 = load i16, ptr %82, align 2, !tbaa !50
  %84 = uitofp i16 %83 to float
  %85 = call fastcc zeroext i16 @ClampPixel(float noundef %84) #23
  store i16 %85, ptr %82, align 2, !tbaa !50
  br label %86

86:                                               ; preds = %81, %80
  br i1 %57, label %96, label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %55, align 4, !tbaa !33
  %89 = icmp ne i32 %88, 12
  %90 = select i1 %89, i1 true, i1 %56
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds i16, ptr %42, i64 %63
  %93 = load i16, ptr %92, align 2, !tbaa !34
  %94 = uitofp i16 %93 to float
  %95 = call fastcc zeroext i16 @ClampPixel(float noundef %94) #23
  store i16 %95, ptr %92, align 2, !tbaa !34
  br label %96

96:                                               ; preds = %91, %87, %86
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 1
  %98 = add nuw nsw i64 %63, 1
  %99 = icmp eq i64 %98, %45
  br i1 %99, label %100, label %61, !llvm.loop !65

100:                                              ; preds = %96, %40
  %101 = load ptr, ptr %4, align 8, !tbaa !6
  %102 = load ptr, ptr %5, align 8, !tbaa !6
  %103 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %101, ptr noundef %102) #22
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %106

106:                                              ; preds = %105, %100
  %107 = load ptr, ptr %2, align 8, !tbaa !6
  %108 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 47
  %109 = load ptr, ptr %108, align 8, !tbaa !40
  %110 = icmp eq ptr %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %106
  call void @__kmpc_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_ClampImageChannel.var)
  %112 = load ptr, ptr %2, align 8, !tbaa !6
  %113 = load i64, ptr %7, align 8, !tbaa !28
  %114 = add nsw i64 %113, 1
  store i64 %114, ptr %7, align 8, !tbaa !28
  %115 = getelementptr inbounds %struct._Image, ptr %112, i64 0, i32 8
  %116 = load i64, ptr %115, align 8, !tbaa !31
  %117 = call fastcc i32 @SetImageProgress(ptr noundef %112, ptr noundef nonnull @.str.5, i64 noundef %113, i64 noundef %116) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_ClampImageChannel.var)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111, %32
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %120

120:                                              ; preds = %119, %106, %111, %28
  %121 = add nsw i64 %29, 1
  %122 = load i64, ptr %10, align 8, !tbaa !10
  %123 = icmp slt i64 %29, %122
  br i1 %123, label %28, label %124

124:                                              ; preds = %120
  %125 = load i64, ptr %9, align 8, !tbaa !10
  br label %126

126:                                              ; preds = %124, %24
  %127 = phi i64 [ %26, %24 ], [ %125, %124 ]
  %128 = phi i64 [ %25, %24 ], [ %122, %124 ]
  %129 = load i64, ptr %11, align 8, !tbaa !10
  %130 = add nsw i64 %129, %127
  store i64 %130, ptr %9, align 8, !tbaa !10
  %131 = add nsw i64 %129, %128
  %132 = call i64 @llvm.smin.i64(i64 %131, i64 %16)
  store i64 %132, ptr %10, align 8, !tbaa !10
  %133 = icmp sgt i64 %130, %132
  br i1 %133, label %134, label %24

134:                                              ; preds = %126, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  br label %135

135:                                              ; preds = %134, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyThresholdMap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @DestroyString(ptr noundef nonnull %2) #21
  store ptr %5, ptr %0, align 8, !tbaa !66
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct._ThresholdMap, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @DestroyString(ptr noundef nonnull %8) #21
  store ptr %11, ptr %7, align 8, !tbaa !68
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct._ThresholdMap, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #21
  store ptr %17, ptr %13, align 8, !tbaa !69
  br label %18

18:                                               ; preds = %16, %12
  %19 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #21
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetThresholdMapFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = alloca ptr, align 8
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 953, ptr noundef nonnull @.str.6, ptr noundef %1) #21
  %9 = tail call ptr @NewXMLTree(ptr noundef %0, ptr noundef %3) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %172, label %11

11:                                               ; preds = %4
  %12 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %9, ptr noundef nonnull @.str.7) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %11, %27
  %15 = phi ptr [ %28, %27 ], [ %12, %11 ]
  %16 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %15, ptr noundef nonnull @.str.8) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull %16) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18, %14
  %22 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %15, ptr noundef nonnull @.str.9) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull %22) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21, %24
  %28 = tail call ptr @GetNextXMLTreeTag(ptr noundef nonnull %15) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %14, !llvm.loop !70

30:                                               ; preds = %27, %11
  %31 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  br label %172

32:                                               ; preds = %18, %24
  %33 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %15, ptr noundef nonnull @.str.10) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 977, i32 noundef 410, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %2) #21
  %37 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  br label %172

38:                                               ; preds = %32
  %39 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %15, ptr noundef nonnull @.str.13) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 985, i32 noundef 410, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14, ptr noundef %2) #21
  %43 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  br label %172

44:                                               ; preds = %38
  %45 = tail call dereferenceable_or_null(48) ptr @AcquireMagickMemory(i64 noundef 48) #24
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #4
  call void @GetExceptionInfo(ptr noundef nonnull %5) #21
  %48 = tail call ptr @__errno_location() #25
  %49 = load i32, ptr %48, align 4, !tbaa !27
  %50 = call ptr @GetExceptionMessage(i32 noundef %49) #21
  %51 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 995, i32 noundef 700, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %50) #21
  %52 = call ptr @DestroyString(ptr noundef %50) #21
  call void @CatchException(ptr noundef nonnull %5) #21
  %53 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 1) #26
  unreachable

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 1
  %56 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 5
  store ptr null, ptr %56, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %57 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %15, ptr noundef nonnull @.str.8) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = tail call ptr @ConstantString(ptr noundef nonnull %57) #21
  store ptr %60, ptr %45, align 8, !tbaa !66
  br label %61

61:                                               ; preds = %59, %54
  %62 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %33) #21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call ptr @ConstantString(ptr noundef nonnull %62) #21
  store ptr %65, ptr %55, align 8, !tbaa !68
  br label %66

66:                                               ; preds = %64, %61
  %67 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %39, ptr noundef nonnull @.str.17) #21
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1011, i32 noundef 410, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %2) #21
  %71 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  %72 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #23
  br label %172

73:                                               ; preds = %66
  %74 = tail call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %67) #23
  %75 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 2
  store i64 %74, ptr %75, align 8, !tbaa !71
  %76 = icmp eq i64 %74, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1020, i32 noundef 410, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef %2) #21
  %79 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  %80 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #23
  br label %172

81:                                               ; preds = %73
  %82 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %39, ptr noundef nonnull @.str.21) #21
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1029, i32 noundef 410, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, ptr noundef %2) #21
  %86 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  %87 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #23
  br label %172

88:                                               ; preds = %81
  %89 = tail call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %82) #23
  %90 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 3
  store i64 %89, ptr %90, align 8, !tbaa !72
  %91 = icmp eq i64 %89, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1038, i32 noundef 410, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, ptr noundef %2) #21
  %94 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  %95 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #23
  br label %172

96:                                               ; preds = %88
  %97 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %39, ptr noundef nonnull @.str.23) #21
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1047, i32 noundef 410, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24, ptr noundef %2) #21
  %101 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  %102 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #23
  br label %172

103:                                              ; preds = %96
  %104 = tail call fastcc i64 @StringToLong(ptr noundef nonnull %97) #23
  %105 = getelementptr inbounds %struct._ThresholdMap, ptr %45, i64 0, i32 4
  store i64 %104, ptr %105, align 8, !tbaa !73
  %106 = icmp slt i64 %104, 2
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1056, i32 noundef 410, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.24, ptr noundef %2) #21
  %109 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  %110 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #23
  br label %172

111:                                              ; preds = %103
  %112 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %39) #21
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1068, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.14, ptr noundef %2) #21
  %116 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  %117 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #23
  br label %172

118:                                              ; preds = %111
  %119 = load i64, ptr %75, align 8, !tbaa !71
  %120 = load i64, ptr %90, align 8, !tbaa !72
  %121 = shl i64 %120, 3
  %122 = tail call ptr @AcquireQuantumMemory(i64 noundef %119, i64 noundef %121) #27
  store ptr %122, ptr %56, align 8, !tbaa !69
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #4
  call void @GetExceptionInfo(ptr noundef nonnull %6) #21
  %125 = tail call ptr @__errno_location() #25
  %126 = load i32, ptr %125, align 4, !tbaa !27
  %127 = call ptr @GetExceptionMessage(i32 noundef %126) #21
  %128 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1077, i32 noundef 700, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %127) #21
  %129 = call ptr @DestroyString(ptr noundef %127) #21
  call void @CatchException(ptr noundef nonnull %6) #21
  %130 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 1) #26
  unreachable

131:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %132 = load i64, ptr %75, align 8, !tbaa !71
  %133 = load i64, ptr %90, align 8, !tbaa !72
  %134 = mul i64 %133, %132
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %142, label %160

136:                                              ; preds = %154
  %137 = add nuw nsw i64 %143, 1
  %138 = load i64, ptr %75, align 8, !tbaa !71
  %139 = load i64, ptr %90, align 8, !tbaa !72
  %140 = mul i64 %139, %138
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %142, label %160, !llvm.loop !74

142:                                              ; preds = %131, %136
  %143 = phi i64 [ %137, %136 ], [ 0, %131 ]
  %144 = phi ptr [ %148, %136 ], [ %112, %131 ]
  %145 = call i64 @strtol(ptr noundef %144, ptr noundef nonnull %7, i32 noundef 10) #21
  %146 = load ptr, ptr %56, align 8, !tbaa !69
  %147 = getelementptr inbounds i64, ptr %146, i64 %143
  store i64 %145, ptr %147, align 8, !tbaa !10
  %148 = load ptr, ptr %7, align 8, !tbaa !6
  %149 = icmp eq ptr %148, %144
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1093, i32 noundef 410, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %2) #21
  br label %167

152:                                              ; preds = %142
  %153 = icmp slt i64 %145, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %152
  %155 = load i64, ptr %105, align 8, !tbaa !73
  %156 = icmp sgt i64 %145, %155
  br i1 %156, label %157, label %136

157:                                              ; preds = %154, %152
  %158 = sitofp i64 %145 to double
  %159 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1101, i32 noundef 410, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28, double noundef %158, ptr noundef %2) #21
  br label %167

160:                                              ; preds = %136, %131
  %161 = phi ptr [ %112, %131 ], [ %148, %136 ]
  %162 = call i64 @strtol(ptr noundef %161, ptr noundef nonnull %7, i32 noundef 10) #21
  %163 = load ptr, ptr %7, align 8, !tbaa !6
  %164 = icmp eq ptr %163, %161
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1114, i32 noundef 410, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.29, ptr noundef %2) #21
  br label %167

167:                                              ; preds = %150, %157, %165
  %168 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  %169 = tail call ptr @DestroyThresholdMap(ptr noundef nonnull %45) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  br label %172

170:                                              ; preds = %160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  %171 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %9) #21
  br label %172

172:                                              ; preds = %167, %4, %170, %114, %107, %99, %92, %84, %77, %69, %41, %35, %30
  %173 = phi ptr [ null, %30 ], [ null, %35 ], [ null, %41 ], [ %72, %69 ], [ %80, %77 ], [ %87, %84 ], [ %95, %92 ], [ %102, %99 ], [ %110, %107 ], [ %117, %114 ], [ %45, %170 ], [ null, %4 ], [ %169, %167 ]
  ret ptr %173
}

; Function Attrs: optsize
declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetXMLTreeAttribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextXMLTreeTag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToUnsignedLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = tail call i64 @strtoul(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #21
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #21
  ret i64 %2
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetThresholdMap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @GetThresholdMapFile(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, ptr noundef %0, ptr noundef %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.31, ptr noundef %1) #21
  %7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %16, %15 ], [ %7, %5 ]
  %11 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %10) #21
  %12 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %10) #21
  %13 = tail call ptr @GetThresholdMapFile(ptr noundef %11, ptr noundef %12, ptr noundef %0, ptr noundef %1) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !75

18:                                               ; preds = %15, %9, %5
  %19 = phi ptr [ null, %5 ], [ %13, %9 ], [ null, %15 ]
  %20 = tail call ptr @DestroyConfigureOptions(ptr noundef %6) #21
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi ptr [ %19, %18 ], [ %3, %2 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListThresholdMapFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1219, ptr noundef nonnull @.str.6, ptr noundef %2) #21
  %6 = tail call ptr @NewXMLTree(ptr noundef %1, ptr noundef %3) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %4
  %9 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #21
  %10 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.37) #21
  %11 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %6, ptr noundef nonnull @.str.7) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %8, %30
  %14 = phi ptr [ %34, %30 ], [ %11, %8 ]
  %15 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %14, ptr noundef nonnull @.str.8) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1235, i32 noundef 410, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.38) #21
  br label %36

19:                                               ; preds = %13
  %20 = tail call ptr @GetXMLTreeAttribute(ptr noundef nonnull %14, ptr noundef nonnull @.str.9) #21
  %21 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %14, ptr noundef nonnull @.str.10) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1244, i32 noundef 410, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull %15) #21
  br label %36

25:                                               ; preds = %19
  %26 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %21) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1251, i32 noundef 410, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.12, ptr noundef nonnull %15) #21
  br label %36

30:                                               ; preds = %25
  %31 = icmp eq ptr %20, null
  %32 = select i1 %31, ptr @.str.1, ptr %20
  %33 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %15, ptr noundef nonnull %32, ptr noundef nonnull %26) #21
  %34 = tail call ptr @GetNextXMLTreeTag(ptr noundef nonnull %14) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %13, !llvm.loop !76

36:                                               ; preds = %30, %8, %17, %23, %28
  %37 = phi i32 [ 0, %28 ], [ 0, %23 ], [ 0, %17 ], [ 1, %8 ], [ 1, %30 ]
  %38 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %6) #21
  br label %39

39:                                               ; preds = %36, %4
  %40 = phi i32 [ 0, %4 ], [ %37, %36 ]
  ret i32 %40
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListThresholdMaps(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @stdout, align 8
  %5 = select i1 %3, ptr %4, ptr %0
  %6 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.31, ptr noundef %1) #21
  %7 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %5, ptr noundef nonnull @.str.39) #21
  %8 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %2 ]
  %12 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %11) #21
  %13 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %5, ptr noundef nonnull @.str.40, ptr noundef %12) #21
  %14 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %11) #21
  %15 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %11) #21
  %16 = tail call i32 @ListThresholdMapFile(ptr noundef %5, ptr noundef %14, ptr noundef %15, ptr noundef %1) #23, !range !45
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !77

19:                                               ; preds = %10, %2
  %20 = tail call ptr @DestroyConfigureOptions(ptr noundef %6) #21
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OrderedDitherImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %3 = tail call i32 @OrderedDitherImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef nonnull %2) #23, !range !45
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OrderedDitherImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.41, ptr noundef %2) #23, !range !45
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct._LongPixelPacket, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [4096 x i8], align 16
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !6
  store ptr %3, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1463, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #21
  br label %22

22:                                               ; preds = %19, %4
  %23 = icmp eq ptr %2, null
  br i1 %23, label %219, label %24

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %12) #4
  %25 = tail call ptr @__ctype_b_loc() #25
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %2, %24 ], [ %40, %27 ]
  %29 = load i8, ptr %28, align 1, !tbaa !78
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i16, ptr %26, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !34
  %33 = freeze i16 %32
  %34 = and i16 %33, 8192
  %35 = icmp eq i16 %34, 0
  %36 = icmp ne i8 %29, 44
  %37 = and i1 %36, %35
  %38 = icmp eq i8 %29, 0
  %39 = or i1 %38, %37
  %40 = getelementptr inbounds i8, ptr %28, i64 1
  br i1 %39, label %41, label %27, !llvm.loop !79

41:                                               ; preds = %27
  %42 = and i16 %33, 8192
  %43 = icmp eq i16 %42, 0
  %44 = ptrtoint ptr %28 to i64
  br i1 %43, label %45, label %66

45:                                               ; preds = %41, %52
  %46 = phi i8 [ %56, %52 ], [ %29, %41 ]
  %47 = phi ptr [ %54, %52 ], [ %28, %41 ]
  switch i8 %46, label %48 [
    i8 44, label %63
    i8 0, label %63
  ]

48:                                               ; preds = %45
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %49, %44
  %51 = icmp sgt i64 %50, 4094
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds [4096 x i8], ptr %12, i64 0, i64 %50
  store i8 %46, ptr %53, align 1, !tbaa !78
  %54 = getelementptr inbounds i8, ptr %47, i64 1
  %55 = load ptr, ptr %25, align 8, !tbaa !6
  %56 = load i8, ptr %54, align 1, !tbaa !78
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i16, ptr %55, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !34
  %60 = freeze i16 %59
  %61 = and i16 %60, 8192
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %45, label %63, !llvm.loop !80

63:                                               ; preds = %45, %45, %52, %48
  %64 = phi ptr [ %47, %48 ], [ %54, %52 ], [ %47, %45 ], [ %47, %45 ]
  %65 = ptrtoint ptr %64 to i64
  br label %66

66:                                               ; preds = %41, %63
  %67 = phi i64 [ %65, %63 ], [ %44, %41 ]
  %68 = sub i64 %67, %44
  %69 = getelementptr inbounds [4096 x i8], ptr %12, i64 0, i64 %68
  store i8 0, ptr %69, align 1, !tbaa !78
  %70 = call ptr @GetThresholdMap(ptr noundef nonnull %12, ptr noundef %3) #23
  store ptr %70, ptr %11, align 8, !tbaa !6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1490, i32 noundef 410, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull %28) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %12) #4
  br label %219

74:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  %75 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef 44) #28
  store ptr %75, ptr %13, align 8, !tbaa !6
  %76 = icmp eq ptr %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %25, align 8, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %79, ptr %13, align 8, !tbaa !6
  %80 = load i8, ptr %79, align 1, !tbaa !78
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %78, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !34
  %84 = and i16 %83, 2048
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %77
  %87 = call i64 @strtoul(ptr noundef nonnull %79, ptr noundef nonnull %13, i32 noundef 10) #21
  %88 = trunc i64 %87 to i32
  br label %89

89:                                               ; preds = %74, %77, %86
  %90 = phi i32 [ %88, %86 ], [ 2, %77 ], [ 2, %74 ]
  %91 = and i32 %1, 1
  %92 = icmp eq i32 %91, 0
  %93 = getelementptr inbounds %struct._LongPixelPacket, ptr %8, i64 0, i32 4
  %94 = select i1 %92, i32 0, i32 %90
  store i32 %94, ptr %8, align 4, !tbaa !81
  %95 = and i32 %1, 2
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i32 0, i32 %90
  %98 = getelementptr inbounds %struct._LongPixelPacket, ptr %8, i64 0, i32 1
  store i32 %97, ptr %98, align 4, !tbaa !83
  %99 = and i32 %1, 4
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 0, i32 %90
  %102 = getelementptr inbounds %struct._LongPixelPacket, ptr %8, i64 0, i32 2
  store i32 %101, ptr %102, align 4, !tbaa !84
  %103 = and i32 %1, 8
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 0, i32 %90
  %106 = getelementptr inbounds %struct._LongPixelPacket, ptr %8, i64 0, i32 3
  store i32 %105, ptr %106, align 4, !tbaa !85
  %107 = and i32 %1, 32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %89
  %110 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !33
  %112 = icmp eq i32 %111, 12
  %113 = select i1 %112, i32 %90, i32 0
  br label %114

114:                                              ; preds = %109, %89
  %115 = phi i32 [ 0, %89 ], [ %113, %109 ]
  store i32 %115, ptr %93, align 4, !tbaa !86
  %116 = load ptr, ptr %13, align 8, !tbaa !6
  %117 = icmp eq ptr %116, null
  br i1 %117, label %175, label %118

118:                                              ; preds = %114
  %119 = load i8, ptr %116, align 1, !tbaa !78
  %120 = icmp eq i8 %119, 44
  br i1 %120, label %121, label %175

121:                                              ; preds = %118
  %122 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef 44) #28
  %123 = getelementptr inbounds i8, ptr %122, i64 1
  store ptr %123, ptr %13, align 8, !tbaa !6
  br i1 %92, label %132, label %124

124:                                              ; preds = %121
  %125 = call i64 @strtoul(ptr noundef nonnull %123, ptr noundef nonnull %13, i32 noundef 10) #21
  %126 = trunc i64 %125 to i32
  store i32 %126, ptr %8, align 4, !tbaa !81
  %127 = load ptr, ptr %13, align 8, !tbaa !6
  %128 = load i8, ptr %127, align 1, !tbaa !78
  %129 = icmp eq i8 %128, 44
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = getelementptr inbounds i8, ptr %127, i64 1
  store ptr %131, ptr %13, align 8, !tbaa !6
  br label %132

132:                                              ; preds = %124, %130, %121
  %133 = phi i32 [ %126, %124 ], [ %126, %130 ], [ 0, %121 ]
  %134 = phi ptr [ %127, %124 ], [ %131, %130 ], [ %123, %121 ]
  br i1 %96, label %143, label %135

135:                                              ; preds = %132
  %136 = call i64 @strtoul(ptr noundef nonnull %134, ptr noundef nonnull %13, i32 noundef 10) #21
  %137 = trunc i64 %136 to i32
  store i32 %137, ptr %98, align 4, !tbaa !83
  %138 = load ptr, ptr %13, align 8, !tbaa !6
  %139 = load i8, ptr %138, align 1, !tbaa !78
  %140 = icmp eq i8 %139, 44
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %142, ptr %13, align 8, !tbaa !6
  br label %143

143:                                              ; preds = %135, %141, %132
  %144 = phi i32 [ %137, %135 ], [ %137, %141 ], [ 0, %132 ]
  %145 = phi ptr [ %138, %135 ], [ %142, %141 ], [ %134, %132 ]
  br i1 %100, label %154, label %146

146:                                              ; preds = %143
  %147 = call i64 @strtoul(ptr noundef nonnull %145, ptr noundef nonnull %13, i32 noundef 10) #21
  %148 = trunc i64 %147 to i32
  store i32 %148, ptr %102, align 4, !tbaa !84
  %149 = load ptr, ptr %13, align 8, !tbaa !6
  %150 = load i8, ptr %149, align 1, !tbaa !78
  %151 = icmp eq i8 %150, 44
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = getelementptr inbounds i8, ptr %149, i64 1
  store ptr %153, ptr %13, align 8, !tbaa !6
  br label %154

154:                                              ; preds = %146, %152, %143
  %155 = phi i32 [ %148, %146 ], [ %148, %152 ], [ 0, %143 ]
  %156 = phi ptr [ %149, %146 ], [ %153, %152 ], [ %145, %143 ]
  br i1 %108, label %169, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !33
  %160 = icmp eq i32 %159, 12
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = call i64 @strtoul(ptr noundef nonnull %156, ptr noundef nonnull %13, i32 noundef 10) #21
  %163 = trunc i64 %162 to i32
  store i32 %163, ptr %93, align 4, !tbaa !86
  %164 = load ptr, ptr %13, align 8, !tbaa !6
  %165 = load i8, ptr %164, align 1, !tbaa !78
  %166 = icmp eq i8 %165, 44
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %168, ptr %13, align 8, !tbaa !6
  br label %169

169:                                              ; preds = %161, %167, %157, %154
  %170 = phi i32 [ %163, %161 ], [ %163, %167 ], [ %115, %157 ], [ %115, %154 ]
  %171 = phi ptr [ %164, %161 ], [ %168, %167 ], [ %156, %157 ], [ %156, %154 ]
  br i1 %104, label %175, label %172

172:                                              ; preds = %169
  %173 = call i64 @strtoul(ptr noundef nonnull %171, ptr noundef nonnull %13, i32 noundef 10) #21
  %174 = trunc i64 %173 to i32
  br label %175

175:                                              ; preds = %172, %169, %118, %114
  %176 = phi i32 [ %170, %169 ], [ %115, %118 ], [ %115, %114 ], [ %170, %172 ]
  %177 = phi i32 [ 0, %169 ], [ %105, %118 ], [ %105, %114 ], [ %174, %172 ]
  %178 = phi i32 [ %155, %169 ], [ %101, %118 ], [ %101, %114 ], [ %155, %172 ]
  %179 = phi i32 [ %144, %169 ], [ %97, %118 ], [ %97, %114 ], [ %144, %172 ]
  %180 = phi i32 [ %133, %169 ], [ %94, %118 ], [ %94, %114 ], [ %133, %172 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  %181 = getelementptr inbounds %struct._ThresholdMap, ptr %70, i64 0, i32 4
  %182 = load i64, ptr %181, align 8, !tbaa !73
  %183 = add nsw i64 %182, -1
  store i64 %183, ptr %14, align 8, !tbaa !10
  %184 = call i32 @llvm.usub.sat.i32(i32 %180, i32 1)
  store i32 %184, ptr %8, align 4, !tbaa !81
  %185 = call i32 @llvm.usub.sat.i32(i32 %179, i32 1)
  store i32 %185, ptr %98, align 4, !tbaa !83
  %186 = call i32 @llvm.usub.sat.i32(i32 %178, i32 1)
  store i32 %186, ptr %102, align 4, !tbaa !84
  %187 = call i32 @llvm.usub.sat.i32(i32 %177, i32 1)
  store i32 %187, ptr %106, align 4, !tbaa !85
  %188 = call i32 @llvm.usub.sat.i32(i32 %176, i32 1)
  store i32 %188, ptr %93, align 4, !tbaa !86
  %189 = call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #21
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %175
  %192 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %192) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  br label %219

193:                                              ; preds = %175
  store i32 1, ptr %9, align 4, !tbaa !27
  store i64 0, ptr %10, align 8, !tbaa !28
  %194 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %3) #21
  store ptr %194, ptr %7, align 8, !tbaa !6
  %195 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %196 = load i64, ptr %195, align 8, !tbaa !31
  %197 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %198 = shl i64 %197, 5
  %199 = icmp ugt i64 %196, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %193
  %201 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %202 = icmp eq i32 %201, 3
  br i1 %202, label %208, label %203

203:                                              ; preds = %200
  %204 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %205 = icmp eq i32 %204, 3
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %212

208:                                              ; preds = %203, %200, %193
  %209 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %210 = icmp ult i64 %209, 2
  %211 = select i1 %210, i64 1, i64 2
  br label %212

212:                                              ; preds = %208, %206
  %213 = phi i64 [ %207, %206 ], [ %211, %208 ]
  %214 = trunc i64 %213 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %214)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @OrderedPosterizeImageChannel.omp_outlined, ptr nonnull %5, ptr nonnull %9, ptr nonnull %7, ptr nonnull %6, ptr nonnull %11, ptr nonnull %8, ptr nonnull %14, ptr nonnull %10)
  %215 = load ptr, ptr %7, align 8, !tbaa !6
  %216 = call ptr @DestroyCacheView(ptr noundef %215) #21
  store ptr %216, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  %217 = load ptr, ptr %11, align 8, !tbaa !6
  %218 = call ptr @DestroyThresholdMap(ptr noundef %217) #23
  br label %219

219:                                              ; preds = %191, %72, %22, %212
  %220 = phi i32 [ 1, %212 ], [ 0, %72 ], [ 1, %22 ], [ 0, %191 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  ret i32 %220
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @OrderedPosterizeImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @OrderedPosterizeImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2) #23, !range !45
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @OrderedPosterizeImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 4 dereferenceable(20) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #3 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !31
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %238

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 0, ptr %11, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 %18, ptr %12, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 1, ptr %13, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  store i32 0, ptr %14, align 4, !tbaa !27
  %21 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !10
  %24 = load i64, ptr %11, align 8, !tbaa !10
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %237, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._LongPixelPacket, ptr %7, i64 0, i32 1
  %28 = getelementptr inbounds %struct._LongPixelPacket, ptr %7, i64 0, i32 2
  %29 = getelementptr inbounds %struct._LongPixelPacket, ptr %7, i64 0, i32 3
  %30 = getelementptr inbounds %struct._LongPixelPacket, ptr %7, i64 0, i32 4
  br label %31

31:                                               ; preds = %26, %229
  %32 = phi i64 [ %23, %26 ], [ %235, %229 ]
  %33 = phi i64 [ %24, %26 ], [ %233, %229 ]
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %229, label %35

35:                                               ; preds = %31, %223
  %36 = phi i64 [ %224, %223 ], [ %33, %31 ]
  %37 = load i32, ptr %3, align 4, !tbaa !27
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %223, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8, !tbaa !6
  %41 = load ptr, ptr %2, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !32
  %44 = load ptr, ptr %5, align 8, !tbaa !6
  %45 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %36, i64 noundef %43, i64 noundef 1, ptr noundef %44) #22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %222, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %4, align 8, !tbaa !6
  %49 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %48) #21
  %50 = load ptr, ptr %2, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !32
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %203

54:                                               ; preds = %47
  %55 = load ptr, ptr %6, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct._ThresholdMap, ptr %55, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !69
  %58 = getelementptr inbounds %struct._ThresholdMap, ptr %55, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !71
  %60 = getelementptr inbounds %struct._ThresholdMap, ptr %55, i64 0, i32 3
  %61 = load i64, ptr %60, align 8, !tbaa !72
  %62 = urem i64 %36, %61
  %63 = mul i64 %62, %59
  %64 = getelementptr i64, ptr %57, i64 %63
  %65 = load i32, ptr %7, align 4, !tbaa !81
  %66 = icmp eq i32 %65, 0
  %67 = zext i32 %65 to i64
  %68 = load i64, ptr %8, align 8
  %69 = mul nsw i64 %68, %67
  %70 = add nsw i64 %69, 1
  %71 = sitofp i64 %70 to double
  %72 = uitofp i32 %65 to float
  %73 = load i32, ptr %27, align 4, !tbaa !83
  %74 = icmp eq i32 %73, 0
  %75 = zext i32 %73 to i64
  %76 = mul nsw i64 %68, %75
  %77 = add nsw i64 %76, 1
  %78 = sitofp i64 %77 to double
  %79 = uitofp i32 %73 to float
  %80 = load i32, ptr %28, align 4, !tbaa !84
  %81 = icmp eq i32 %80, 0
  %82 = zext i32 %80 to i64
  %83 = mul nsw i64 %68, %82
  %84 = add nsw i64 %83, 1
  %85 = sitofp i64 %84 to double
  %86 = uitofp i32 %80 to float
  %87 = load i32, ptr %29, align 4, !tbaa !85
  %88 = icmp eq i32 %87, 0
  %89 = zext i32 %87 to i64
  %90 = mul nsw i64 %68, %89
  %91 = add nsw i64 %90, 1
  %92 = sitofp i64 %91 to double
  %93 = uitofp i32 %87 to double
  %94 = load i32, ptr %30, align 4, !tbaa !86
  %95 = icmp eq i32 %94, 0
  %96 = icmp eq ptr %49, null
  %97 = select i1 %95, i1 true, i1 %96
  %98 = zext i32 %94 to i64
  %99 = mul nsw i64 %68, %98
  %100 = add nsw i64 %99, 1
  %101 = sitofp i64 %100 to double
  %102 = uitofp i32 %94 to float
  br label %103

103:                                              ; preds = %54, %199
  %104 = phi i64 [ 0, %54 ], [ %201, %199 ]
  %105 = phi ptr [ %45, %54 ], [ %200, %199 ]
  %106 = urem i64 %104, %59
  %107 = getelementptr i64, ptr %64, i64 %106
  %108 = load i64, ptr %107, align 8, !tbaa !10
  br i1 %66, label %126, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 2
  %111 = load i16, ptr %110, align 2, !tbaa !46
  %112 = uitofp i16 %111 to double
  %113 = fmul double %112, 0x3EF0001000100010
  %114 = fmul double %113, %71
  %115 = fptosi double %114 to i64
  %116 = sdiv i64 %115, %68
  %117 = mul nsw i64 %116, %68
  %118 = srem i64 %115, %68
  %119 = icmp sge i64 %118, %108
  %120 = zext i1 %119 to i64
  %121 = add nsw i64 %116, %120
  %122 = sitofp i64 %121 to float
  %123 = fmul float %122, 6.553500e+04
  %124 = fdiv float %123, %72
  %125 = call fastcc zeroext i16 @ClampToQuantum(float noundef %124) #23
  store i16 %125, ptr %110, align 2, !tbaa !46
  br label %126

126:                                              ; preds = %109, %103
  br i1 %74, label %144, label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 1
  %129 = load i16, ptr %128, align 2, !tbaa !47
  %130 = uitofp i16 %129 to double
  %131 = fmul double %130, 0x3EF0001000100010
  %132 = fmul double %131, %78
  %133 = fptosi double %132 to i64
  %134 = sdiv i64 %133, %68
  %135 = mul nsw i64 %134, %68
  %136 = srem i64 %133, %68
  %137 = icmp sge i64 %136, %108
  %138 = zext i1 %137 to i64
  %139 = add nsw i64 %134, %138
  %140 = sitofp i64 %139 to float
  %141 = fmul float %140, 6.553500e+04
  %142 = fdiv float %141, %79
  %143 = call fastcc zeroext i16 @ClampToQuantum(float noundef %142) #23
  store i16 %143, ptr %128, align 2, !tbaa !47
  br label %144

144:                                              ; preds = %127, %126
  br i1 %81, label %161, label %145

145:                                              ; preds = %144
  %146 = load i16, ptr %105, align 2, !tbaa !48
  %147 = uitofp i16 %146 to double
  %148 = fmul double %147, 0x3EF0001000100010
  %149 = fmul double %148, %85
  %150 = fptosi double %149 to i64
  %151 = sdiv i64 %150, %68
  %152 = mul nsw i64 %151, %68
  %153 = srem i64 %150, %68
  %154 = icmp sge i64 %153, %108
  %155 = zext i1 %154 to i64
  %156 = add nsw i64 %151, %155
  %157 = sitofp i64 %156 to float
  %158 = fmul float %157, 6.553500e+04
  %159 = fdiv float %158, %86
  %160 = call fastcc zeroext i16 @ClampToQuantum(float noundef %159) #23
  store i16 %160, ptr %105, align 2, !tbaa !48
  br label %161

161:                                              ; preds = %145, %144
  br i1 %88, label %181, label %162

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 0, i32 3
  %164 = load i16, ptr %163, align 2, !tbaa !50
  %165 = uitofp i16 %164 to double
  %166 = call double @llvm.fmuladd.f64(double %165, double 0xBEF0001000100010, double 1.000000e+00)
  %167 = fmul double %166, %92
  %168 = fptosi double %167 to i64
  %169 = sdiv i64 %168, %68
  %170 = mul nsw i64 %169, %68
  %171 = srem i64 %168, %68
  %172 = sitofp i64 %169 to double
  %173 = fsub double 1.000000e+00, %172
  %174 = icmp sge i64 %171, %108
  %175 = uitofp i1 %174 to double
  %176 = fsub double %173, %175
  %177 = fmul double %176, 6.553500e+04
  %178 = fdiv double %177, %93
  %179 = fptrunc double %178 to float
  %180 = call fastcc zeroext i16 @ClampToQuantum(float noundef %179) #23
  store i16 %180, ptr %163, align 2, !tbaa !50
  br label %181

181:                                              ; preds = %162, %161
  br i1 %97, label %199, label %182

182:                                              ; preds = %181
  %183 = getelementptr inbounds i16, ptr %49, i64 %104
  %184 = load i16, ptr %183, align 2, !tbaa !34
  %185 = uitofp i16 %184 to double
  %186 = fmul double %185, 0x3EF0001000100010
  %187 = fmul double %186, %101
  %188 = fptosi double %187 to i64
  %189 = sdiv i64 %188, %68
  %190 = mul nsw i64 %189, %68
  %191 = srem i64 %188, %68
  %192 = icmp sge i64 %191, %108
  %193 = zext i1 %192 to i64
  %194 = add nsw i64 %189, %193
  %195 = sitofp i64 %194 to float
  %196 = fmul float %195, 6.553500e+04
  %197 = fdiv float %196, %102
  %198 = call fastcc zeroext i16 @ClampToQuantum(float noundef %197) #23
  store i16 %198, ptr %183, align 2, !tbaa !34
  br label %199

199:                                              ; preds = %182, %181
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 1
  %201 = add nuw nsw i64 %104, 1
  %202 = icmp eq i64 %201, %52
  br i1 %202, label %203, label %103, !llvm.loop !87

203:                                              ; preds = %199, %47
  %204 = load ptr, ptr %4, align 8, !tbaa !6
  %205 = load ptr, ptr %5, align 8, !tbaa !6
  %206 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %204, ptr noundef %205) #22
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %209

209:                                              ; preds = %208, %203
  %210 = load ptr, ptr %2, align 8, !tbaa !6
  %211 = getelementptr inbounds %struct._Image, ptr %210, i64 0, i32 47
  %212 = load ptr, ptr %211, align 8, !tbaa !40
  %213 = icmp eq ptr %212, null
  br i1 %213, label %223, label %214

214:                                              ; preds = %209
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_OrderedPosterizeImageChannel.var)
  %215 = load ptr, ptr %2, align 8, !tbaa !6
  %216 = load i64, ptr %9, align 8, !tbaa !28
  %217 = add nsw i64 %216, 1
  store i64 %217, ptr %9, align 8, !tbaa !28
  %218 = getelementptr inbounds %struct._Image, ptr %215, i64 0, i32 8
  %219 = load i64, ptr %218, align 8, !tbaa !31
  %220 = call fastcc i32 @SetImageProgress(ptr noundef %215, ptr noundef nonnull @.str.45, i64 noundef %216, i64 noundef %219) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_OrderedPosterizeImageChannel.var)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214, %39
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %223

223:                                              ; preds = %222, %209, %214, %35
  %224 = add nsw i64 %36, 1
  %225 = load i64, ptr %12, align 8, !tbaa !10
  %226 = icmp slt i64 %36, %225
  br i1 %226, label %35, label %227

227:                                              ; preds = %223
  %228 = load i64, ptr %11, align 8, !tbaa !10
  br label %229

229:                                              ; preds = %227, %31
  %230 = phi i64 [ %33, %31 ], [ %228, %227 ]
  %231 = phi i64 [ %32, %31 ], [ %225, %227 ]
  %232 = load i64, ptr %13, align 8, !tbaa !10
  %233 = add nsw i64 %232, %230
  store i64 %233, ptr %11, align 8, !tbaa !10
  %234 = add nsw i64 %232, %231
  %235 = call i64 @llvm.smin.i64(i64 %234, i64 %18)
  store i64 %235, ptr %12, align 8, !tbaa !10
  %236 = icmp sgt i64 %233, %235
  br i1 %236, label %237, label %31

237:                                              ; preds = %229, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  br label %238

238:                                              ; preds = %237, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #8 {
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerceptibleImage(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @PerceptibleImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1) #23
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PerceptibleImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !6
  store i32 %1, ptr %5, align 4, !tbaa !27
  store double %2, ptr %6, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1753, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #21
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32, ptr %0, align 8, !tbaa !61
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %23 = load i64, ptr %22, align 8, !tbaa !62
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %27, %25 ], [ %42, %28 ]
  %30 = phi i64 [ 0, %25 ], [ %43, %28 ]
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 0, i32 2
  %32 = load i16, ptr %31, align 2, !tbaa !46
  %33 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %32, double noundef %2) #23
  store i16 %33, ptr %31, align 2, !tbaa !46
  %34 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !47
  %36 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %35, double noundef %2) #23
  store i16 %36, ptr %34, align 2, !tbaa !47
  %37 = load i16, ptr %29, align 2, !tbaa !48
  %38 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %37, double noundef %2) #23
  store i16 %38, ptr %29, align 2, !tbaa !48
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 0, i32 3
  %40 = load i16, ptr %39, align 2, !tbaa !50
  %41 = tail call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %40, double noundef %2) #23
  store i16 %41, ptr %39, align 2, !tbaa !50
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 1
  %43 = add nuw nsw i64 %30, 1
  %44 = icmp eq i64 %43, %23
  br i1 %44, label %45, label %28, !llvm.loop !88

45:                                               ; preds = %28, %21
  %46 = tail call i32 @SyncImage(ptr noundef nonnull %0) #21
  br label %73

47:                                               ; preds = %18
  store i32 1, ptr %9, align 4, !tbaa !27
  store i64 0, ptr %10, align 8, !tbaa !28
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %48, ptr %8, align 8, !tbaa !6
  %49 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %48) #21
  store ptr %49, ptr %7, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !31
  %52 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %53 = shl i64 %52, 5
  %54 = icmp ugt i64 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %67

63:                                               ; preds = %58, %55, %47
  %64 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %65 = icmp ult i64 %64, 2
  %66 = select i1 %65, i64 1, i64 2
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i64 [ %62, %61 ], [ %66, %63 ]
  %69 = trunc i64 %68 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %11, i32 %69)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @PerceptibleImageChannel.omp_outlined, ptr nonnull %4, ptr nonnull %9, ptr nonnull %7, ptr nonnull %8, ptr nonnull %5, ptr nonnull %6, ptr nonnull %10)
  %70 = load ptr, ptr %7, align 8, !tbaa !6
  %71 = call ptr @DestroyCacheView(ptr noundef %70) #21
  %72 = load i32, ptr %9, align 4, !tbaa !27
  br label %73

73:                                               ; preds = %67, %45
  %74 = phi i32 [ %46, %45 ], [ %72, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  ret i32 %74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %0, double noundef %1) unnamed_addr #8 {
  %3 = uitofp i16 %0 to double
  %4 = fcmp ult double %3, %1
  %5 = fptoui double %1 to i16
  %6 = select i1 %4, i16 %5, i16 %0
  ret i16 %6
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @PerceptibleImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #3 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !31
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %132

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  store i64 0, ptr %10, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 %17, ptr %11, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 1, ptr %12, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  store i32 0, ptr %13, align 4, !tbaa !27
  %20 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !10
  %23 = load i64, ptr %10, align 8, !tbaa !10
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %131, label %25

25:                                               ; preds = %19, %123
  %26 = phi i64 [ %129, %123 ], [ %22, %19 ]
  %27 = phi i64 [ %127, %123 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %123, label %29

29:                                               ; preds = %25, %117
  %30 = phi i64 [ %118, %117 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %117, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !6
  %35 = load ptr, ptr %2, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !32
  %38 = load ptr, ptr %5, align 8, !tbaa !6
  %39 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %30, i64 noundef %37, i64 noundef 1, ptr noundef %38) #22
  %40 = icmp eq ptr %39, null
  br i1 %40, label %116, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !tbaa !6
  %43 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %42) #21
  %44 = load ptr, ptr %2, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !32
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %97

48:                                               ; preds = %41
  %49 = load i32, ptr %6, align 4, !tbaa !27
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  %52 = load double, ptr %7, align 8
  %53 = insertelement <4 x i32> poison, i32 %49, i64 0
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> zeroinitializer
  %55 = and <4 x i32> %54, <i32 32, i32 8, i32 4, i32 2>
  %56 = icmp eq <4 x i32> %55, zeroinitializer
  %57 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 1
  %58 = icmp eq ptr %43, null
  %59 = extractelement <4 x i1> %56, i64 0
  %60 = extractelement <4 x i1> %56, i64 1
  %61 = extractelement <4 x i1> %56, i64 2
  %62 = extractelement <4 x i1> %56, i64 3
  br label %63

63:                                               ; preds = %48, %93
  %64 = phi ptr [ %39, %48 ], [ %94, %93 ]
  %65 = phi i64 [ 0, %48 ], [ %95, %93 ]
  br i1 %51, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 2
  %68 = load i16, ptr %67, align 2, !tbaa !46
  %69 = call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %68, double noundef %52) #23
  store i16 %69, ptr %67, align 2, !tbaa !46
  br label %70

70:                                               ; preds = %66, %63
  br i1 %62, label %75, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !47
  %74 = call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %73, double noundef %52) #23
  store i16 %74, ptr %72, align 2, !tbaa !47
  br label %75

75:                                               ; preds = %71, %70
  br i1 %61, label %79, label %76

76:                                               ; preds = %75
  %77 = load i16, ptr %64, align 2, !tbaa !48
  %78 = call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %77, double noundef %52) #23
  store i16 %78, ptr %64, align 2, !tbaa !48
  br label %79

79:                                               ; preds = %76, %75
  br i1 %60, label %84, label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 3
  %82 = load i16, ptr %81, align 2, !tbaa !50
  %83 = call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %82, double noundef %52) #23
  store i16 %83, ptr %81, align 2, !tbaa !50
  br label %84

84:                                               ; preds = %80, %79
  br i1 %59, label %93, label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %57, align 4, !tbaa !33
  %87 = icmp ne i32 %86, 12
  %88 = select i1 %87, i1 true, i1 %58
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds i16, ptr %43, i64 %65
  %91 = load i16, ptr %90, align 2, !tbaa !34
  %92 = call fastcc zeroext i16 @PerceptibleThreshold(i16 noundef zeroext %91, double noundef %52) #23
  store i16 %92, ptr %90, align 2, !tbaa !34
  br label %93

93:                                               ; preds = %89, %85, %84
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 1
  %95 = add nuw nsw i64 %65, 1
  %96 = icmp eq i64 %95, %46
  br i1 %96, label %97, label %63, !llvm.loop !89

97:                                               ; preds = %93, %41
  %98 = load ptr, ptr %4, align 8, !tbaa !6
  %99 = load ptr, ptr %5, align 8, !tbaa !6
  %100 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %98, ptr noundef %99) #22
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %103

103:                                              ; preds = %102, %97
  %104 = load ptr, ptr %2, align 8, !tbaa !6
  %105 = getelementptr inbounds %struct._Image, ptr %104, i64 0, i32 47
  %106 = load ptr, ptr %105, align 8, !tbaa !40
  %107 = icmp eq ptr %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %103
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_PerceptibleImageChannel.var)
  %109 = load ptr, ptr %2, align 8, !tbaa !6
  %110 = load i64, ptr %8, align 8, !tbaa !28
  %111 = add nsw i64 %110, 1
  store i64 %111, ptr %8, align 8, !tbaa !28
  %112 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 8
  %113 = load i64, ptr %112, align 8, !tbaa !31
  %114 = call fastcc i32 @SetImageProgress(ptr noundef %109, ptr noundef nonnull @.str.46, i64 noundef %110, i64 noundef %113) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_PerceptibleImageChannel.var)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108, %33
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %117

117:                                              ; preds = %116, %103, %108, %29
  %118 = add nsw i64 %30, 1
  %119 = load i64, ptr %11, align 8, !tbaa !10
  %120 = icmp slt i64 %30, %119
  br i1 %120, label %29, label %121

121:                                              ; preds = %117
  %122 = load i64, ptr %10, align 8, !tbaa !10
  br label %123

123:                                              ; preds = %121, %25
  %124 = phi i64 [ %27, %25 ], [ %122, %121 ]
  %125 = phi i64 [ %26, %25 ], [ %119, %121 ]
  %126 = load i64, ptr %12, align 8, !tbaa !10
  %127 = add nsw i64 %126, %124
  store i64 %127, ptr %10, align 8, !tbaa !10
  %128 = add nsw i64 %126, %125
  %129 = call i64 @llvm.smin.i64(i64 %128, i64 %17)
  store i64 %129, ptr %11, align 8, !tbaa !10
  %130 = icmp sgt i64 %127, %129
  br i1 %130, label %131, label %25

131:                                              ; preds = %123, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  br label %132

132:                                              ; preds = %131, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RandomThresholdImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @RandomThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2) #23
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RandomThresholdImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._GeometryInfo, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca ptr, align 8
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !6
  store i32 %1, ptr %6, align 4, !tbaa !27
  store ptr %3, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1928, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #21
  br label %23

23:                                               ; preds = %20, %4
  %24 = icmp eq ptr %2, null
  br i1 %24, label %141, label %25

25:                                               ; preds = %23
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %12) #21
  %26 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %9) #21
  %27 = load double, ptr %9, align 8, !tbaa !52
  %28 = fptrunc double %27 to float
  store float %28, ptr %13, align 4, !tbaa !29
  %29 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %30 = load double, ptr %29, align 8, !tbaa !90
  %31 = fptrunc double %30 to float
  %32 = and i32 %26, 8
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, float %28, float %31
  store float %34, ptr %14, align 4
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 37) #28
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = fmul float %34, 0x40847ACCC0000000
  store float %38, ptr %14, align 4, !tbaa !29
  %39 = fmul float %28, 0x40847ACCC0000000
  store float %39, ptr %13, align 4, !tbaa !29
  br label %48

40:                                               ; preds = %25
  %41 = fcmp oeq float %34, %28
  %42 = fcmp oeq float %34, 1.000000e+00
  %43 = or i1 %41, %42
  %44 = fcmp ole float %28, 8.000000e+00
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 @OrderedPosterizeImageChannel(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) #23, !range !45
  br label %141

48:                                               ; preds = %40, %37
  store i32 1, ptr %10, align 4, !tbaa !27
  store i64 0, ptr %11, align 8, !tbaa !28
  %49 = icmp eq i32 %1, 47
  br i1 %49, label %50, label %97

50:                                               ; preds = %48
  %51 = call i32 @AcquireImageColormap(ptr noundef nonnull %0, i64 noundef 2) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load ptr, ptr %5, align 8, !tbaa !6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %141, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 58
  %58 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 53
  %59 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %57, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1965, i32 noundef 400, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.16, ptr noundef nonnull %58) #21
  br label %141

60:                                               ; preds = %50
  %61 = call fastcc ptr @AcquireRandomInfoThreadSet() #23
  store ptr %61, ptr %15, align 8, !tbaa !6
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = call i64 @GetRandomSecretKey(ptr noundef %62) #21
  %64 = load ptr, ptr %5, align 8, !tbaa !6
  %65 = load ptr, ptr %7, align 8, !tbaa !6
  %66 = call ptr @AcquireAuthenticCacheView(ptr noundef %64, ptr noundef %65) #21
  store ptr %66, ptr %8, align 8, !tbaa !6
  %67 = icmp eq i64 %63, -1
  br i1 %67, label %68, label %89

68:                                               ; preds = %60
  %69 = load ptr, ptr %5, align 8, !tbaa !6
  %70 = getelementptr inbounds %struct._Image, ptr %69, i64 0, i32 8
  %71 = load i64, ptr %70, align 8, !tbaa !31
  %72 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %73 = shl i64 %72, 5
  %74 = icmp ugt i64 %71, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load ptr, ptr %5, align 8, !tbaa !6
  %77 = call i32 @GetImagePixelCacheType(ptr noundef %76) #21
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %5, align 8, !tbaa !6
  %81 = call i32 @GetImagePixelCacheType(ptr noundef %80) #21
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %89

85:                                               ; preds = %79, %75, %68
  %86 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %87 = icmp ult i64 %86, 2
  %88 = select i1 %87, i64 1, i64 2
  br label %89

89:                                               ; preds = %83, %85, %60
  %90 = phi i64 [ 1, %60 ], [ %84, %83 ], [ %88, %85 ]
  %91 = trunc i64 %90 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %91)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @RandomThresholdImageChannel.omp_outlined, ptr nonnull %5, ptr nonnull %10, ptr nonnull %8, ptr nonnull %7, ptr nonnull %13, ptr nonnull %12, ptr nonnull %14, ptr nonnull %15, ptr nonnull %11)
  %92 = load ptr, ptr %8, align 8, !tbaa !6
  %93 = call ptr @DestroyCacheView(ptr noundef %92) #21
  store ptr %93, ptr %8, align 8, !tbaa !6
  %94 = load ptr, ptr %15, align 8, !tbaa !6
  %95 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %94) #23
  %96 = load i32, ptr %10, align 4, !tbaa !27
  br label %141

97:                                               ; preds = %48
  %98 = call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #21
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load ptr, ptr %7, align 8, !tbaa !6
  %102 = load ptr, ptr %5, align 8, !tbaa !6
  %103 = getelementptr inbounds %struct._Image, ptr %102, i64 0, i32 58
  call void @InheritException(ptr noundef %101, ptr noundef nonnull %103) #21
  br label %141

104:                                              ; preds = %97
  %105 = call fastcc ptr @AcquireRandomInfoThreadSet() #23
  store ptr %105, ptr %15, align 8, !tbaa !6
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = call i64 @GetRandomSecretKey(ptr noundef %106) #21
  %108 = load ptr, ptr %5, align 8, !tbaa !6
  %109 = load ptr, ptr %7, align 8, !tbaa !6
  %110 = call ptr @AcquireAuthenticCacheView(ptr noundef %108, ptr noundef %109) #21
  store ptr %110, ptr %8, align 8, !tbaa !6
  %111 = icmp eq i64 %107, -1
  br i1 %111, label %112, label %133

112:                                              ; preds = %104
  %113 = load ptr, ptr %5, align 8, !tbaa !6
  %114 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 8
  %115 = load i64, ptr %114, align 8, !tbaa !31
  %116 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %117 = shl i64 %116, 5
  %118 = icmp ugt i64 %115, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load ptr, ptr %5, align 8, !tbaa !6
  %121 = call i32 @GetImagePixelCacheType(ptr noundef %120) #21
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %5, align 8, !tbaa !6
  %125 = call i32 @GetImagePixelCacheType(ptr noundef %124) #21
  %126 = icmp eq i32 %125, 3
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %133

129:                                              ; preds = %123, %119, %112
  %130 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %131 = icmp ult i64 %130, 2
  %132 = select i1 %131, i64 1, i64 2
  br label %133

133:                                              ; preds = %127, %129, %104
  %134 = phi i64 [ 1, %104 ], [ %128, %127 ], [ %132, %129 ]
  %135 = trunc i64 %134 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %135)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @RandomThresholdImageChannel.omp_outlined.48, ptr nonnull %5, ptr nonnull %10, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %13, ptr nonnull %12, ptr nonnull %14, ptr nonnull %15, ptr nonnull %11)
  %136 = load ptr, ptr %8, align 8, !tbaa !6
  %137 = call ptr @DestroyCacheView(ptr noundef %136) #21
  store ptr %137, ptr %8, align 8, !tbaa !6
  %138 = load ptr, ptr %15, align 8, !tbaa !6
  %139 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %138) #23
  %140 = load i32, ptr %10, align 4, !tbaa !27
  br label %141

141:                                              ; preds = %53, %56, %23, %133, %100, %89, %46
  %142 = phi i32 [ %96, %89 ], [ 0, %100 ], [ %140, %133 ], [ %47, %46 ], [ 1, %23 ], [ 0, %56 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  ret i32 %142
}

; Function Attrs: optsize
declare i32 @AcquireImageColormap(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireRandomInfoThreadSet() unnamed_addr #0 {
  %1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %2 = tail call ptr @AcquireAlignedMemory(i64 noundef %1, i64 noundef 8) #27
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = shl i64 %1, 3
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %5) #21
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %11, label %18

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %18, label %11, !llvm.loop !91

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %13 = tail call ptr @AcquireRandomInfo() #21
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !6
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef nonnull %2) #23
  br label %18

18:                                               ; preds = %8, %4, %0, %16
  %19 = phi ptr [ %17, %16 ], [ null, %0 ], [ %2, %4 ], [ %2, %8 ]
  ret ptr %19
}

; Function Attrs: optsize
declare i64 @GetRandomSecretKey(ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @RandomThresholdImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #3 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !31
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %126

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 0, ptr %12, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 %19, ptr %13, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 1, ptr %14, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  store i32 0, ptr %15, align 4, !tbaa !27
  %22 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %13, align 8, !tbaa !10
  %25 = load i64, ptr %12, align 8, !tbaa !10
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %125, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  br label %29

29:                                               ; preds = %27, %117
  %30 = phi i64 [ %24, %27 ], [ %123, %117 ]
  %31 = phi i64 [ %25, %27 ], [ %121, %117 ]
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %117, label %33

33:                                               ; preds = %29, %111
  %34 = phi i64 [ %112, %111 ], [ %31, %29 ]
  %35 = call fastcc i32 @GetOpenMPThreadId() #23
  %36 = load i32, ptr %3, align 4, !tbaa !27
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %111, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %4, align 8, !tbaa !6
  %40 = load ptr, ptr %2, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !32
  %43 = load ptr, ptr %5, align 8, !tbaa !6
  %44 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %34, i64 noundef %42, i64 noundef 1, ptr noundef %43) #22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %110, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %4, align 8, !tbaa !6
  %48 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %47) #21
  %49 = load ptr, ptr %2, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !32
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %46
  %54 = sext i32 %35 to i64
  %55 = icmp eq ptr %48, null
  br label %56

56:                                               ; preds = %53, %79
  %57 = phi ptr [ %49, %53 ], [ %80, %79 ]
  %58 = phi i64 [ 0, %53 ], [ %87, %79 ]
  %59 = phi ptr [ %44, %53 ], [ %86, %79 ]
  %60 = call float @GetPixelIntensity(ptr noundef nonnull %57, ptr noundef nonnull %59) #22
  %61 = load float, ptr %6, align 4, !tbaa !29
  %62 = fcmp olt float %60, %61
  br i1 %62, label %73, label %63

63:                                               ; preds = %56
  %64 = load float, ptr %8, align 4, !tbaa !29
  %65 = fcmp ogt float %60, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %9, align 8, !tbaa !6
  %68 = getelementptr inbounds ptr, ptr %67, i64 %54
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = call double @GetPseudoRandomValue(ptr noundef %69) #21
  %71 = fmul double %70, 6.553500e+04
  %72 = fptrunc double %71 to float
  br label %73

73:                                               ; preds = %63, %56, %66
  %74 = phi float [ %72, %66 ], [ %61, %56 ], [ %64, %63 ]
  store float %74, ptr %28, align 8, !tbaa !56
  %75 = fcmp ugt float %60, %74
  br i1 %55, label %79, label %76

76:                                               ; preds = %73
  %77 = zext i1 %75 to i16
  %78 = getelementptr inbounds i16, ptr %48, i64 %58
  store i16 %77, ptr %78, align 2, !tbaa !34
  br label %79

79:                                               ; preds = %76, %73
  %80 = load ptr, ptr %2, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct._Image, ptr %80, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !63
  %83 = zext i1 %75 to i64
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 %83
  %85 = load <4 x i16>, ptr %84, align 2, !tbaa !34
  store <4 x i16> %85, ptr %59, align 2, !tbaa !34
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 1
  %87 = add nuw nsw i64 %58, 1
  %88 = getelementptr inbounds %struct._Image, ptr %80, i64 0, i32 7
  %89 = load i64, ptr %88, align 8, !tbaa !32
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %56, label %91, !llvm.loop !92

91:                                               ; preds = %79, %46
  %92 = load ptr, ptr %4, align 8, !tbaa !6
  %93 = load ptr, ptr %5, align 8, !tbaa !6
  %94 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %92, ptr noundef %93) #22
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %97

97:                                               ; preds = %96, %91
  %98 = load ptr, ptr %2, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct._Image, ptr %98, i64 0, i32 47
  %100 = load ptr, ptr %99, align 8, !tbaa !40
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %97
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_RandomThresholdImageChannel.var)
  %103 = load ptr, ptr %2, align 8, !tbaa !6
  %104 = load i64, ptr %10, align 8, !tbaa !28
  %105 = add nsw i64 %104, 1
  store i64 %105, ptr %10, align 8, !tbaa !28
  %106 = getelementptr inbounds %struct._Image, ptr %103, i64 0, i32 8
  %107 = load i64, ptr %106, align 8, !tbaa !31
  %108 = call fastcc i32 @SetImageProgress(ptr noundef %103, ptr noundef nonnull @.str.3, i64 noundef %104, i64 noundef %107) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_RandomThresholdImageChannel.var)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102, %38
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %111

111:                                              ; preds = %110, %97, %102, %33
  %112 = add nsw i64 %34, 1
  %113 = load i64, ptr %13, align 8, !tbaa !10
  %114 = icmp slt i64 %34, %113
  br i1 %114, label %33, label %115

115:                                              ; preds = %111
  %116 = load i64, ptr %12, align 8, !tbaa !10
  br label %117

117:                                              ; preds = %115, %29
  %118 = phi i64 [ %31, %29 ], [ %116, %115 ]
  %119 = phi i64 [ %30, %29 ], [ %113, %115 ]
  %120 = load i64, ptr %14, align 8, !tbaa !10
  %121 = add nsw i64 %120, %118
  store i64 %121, ptr %12, align 8, !tbaa !10
  %122 = add nsw i64 %120, %119
  %123 = call i64 @llvm.smin.i64(i64 %122, i64 %19)
  store i64 %123, ptr %13, align 8, !tbaa !10
  %124 = icmp sgt i64 %121, %123
  br i1 %124, label %125, label %29

125:                                              ; preds = %117, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  br label %126

126:                                              ; preds = %125, %11
  ret void
}

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #7 {
  %1 = tail call i32 @omp_get_thread_num() #23
  ret i32 %1
}

; Function Attrs: optsize
declare double @GetPseudoRandomValue(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %7) #21
  store ptr %10, ptr %6, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !93

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishAlignedMemory(ptr noundef %0) #21
  ret ptr %16
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @RandomThresholdImageChannel.omp_outlined.48(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %7, ptr nocapture noundef nonnull align 8 dereferenceable(56) %8, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull align 8 dereferenceable(8) %11) #3 {
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = load ptr, ptr %2, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !31
  %20 = add nsw i64 %19, -1
  %21 = icmp sgt i64 %19, 0
  br i1 %21, label %22, label %289

22:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 0, ptr %13, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 %20, ptr %14, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 1, ptr %15, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #4
  store i32 0, ptr %16, align 4, !tbaa !27
  %23 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %23, i32 33, ptr nonnull %16, ptr nonnull %13, ptr nonnull %14, ptr nonnull %15, i64 1, i64 4)
  %24 = load i64, ptr %14, align 8
  %25 = call i64 @llvm.smin.i64(i64 %24, i64 %20)
  store i64 %25, ptr %14, align 8, !tbaa !10
  %26 = load i64, ptr %13, align 8, !tbaa !10
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %288, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  br label %34

34:                                               ; preds = %28, %280
  %35 = phi i64 [ %25, %28 ], [ %286, %280 ]
  %36 = phi i64 [ %26, %28 ], [ %284, %280 ]
  %37 = icmp sgt i64 %36, %35
  br i1 %37, label %280, label %38

38:                                               ; preds = %34, %274
  %39 = phi i64 [ %275, %274 ], [ %36, %34 ]
  %40 = call fastcc i32 @GetOpenMPThreadId() #23
  %41 = load i32, ptr %3, align 4, !tbaa !27
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %274, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %4, align 8, !tbaa !6
  %45 = load ptr, ptr %2, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !32
  %48 = load ptr, ptr %5, align 8, !tbaa !6
  %49 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %44, i64 noundef 0, i64 noundef %39, i64 noundef %47, i64 noundef 1, ptr noundef %48) #22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %273, label %51

51:                                               ; preds = %43
  %52 = load ptr, ptr %4, align 8, !tbaa !6
  %53 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #21
  %54 = load ptr, ptr %2, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !32
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %254

58:                                               ; preds = %51
  %59 = sext i32 %40 to i64
  %60 = icmp eq ptr %53, null
  %61 = load i32, ptr %6, align 4, !tbaa !27
  br label %62

62:                                               ; preds = %58, %248
  %63 = phi i32 [ %61, %58 ], [ %193, %248 ]
  %64 = phi i64 [ 0, %58 ], [ %250, %248 ]
  %65 = phi ptr [ %49, %58 ], [ %249, %248 ]
  %66 = and i32 %63, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 2
  %70 = load i16, ptr %69, align 2, !tbaa !46
  %71 = uitofp i16 %70 to float
  %72 = load float, ptr %7, align 4, !tbaa !29
  %73 = fcmp ogt float %72, %71
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store float %72, ptr %29, align 8, !tbaa !54
  br label %87

75:                                               ; preds = %68
  %76 = load float, ptr %9, align 4, !tbaa !29
  %77 = fcmp olt float %76, %71
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store float %76, ptr %29, align 8, !tbaa !54
  br label %87

79:                                               ; preds = %75
  %80 = load ptr, ptr %10, align 8, !tbaa !6
  %81 = getelementptr inbounds ptr, ptr %80, i64 %59
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = call double @GetPseudoRandomValue(ptr noundef %82) #21
  %84 = fmul double %83, 6.553500e+04
  %85 = fptrunc double %84 to float
  store float %85, ptr %29, align 8, !tbaa !54
  %86 = load i32, ptr %6, align 4, !tbaa !27
  br label %87

87:                                               ; preds = %74, %79, %78, %62
  %88 = phi i32 [ %63, %74 ], [ %86, %79 ], [ %63, %78 ], [ %63, %62 ]
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 1
  %93 = load i16, ptr %92, align 2, !tbaa !47
  %94 = uitofp i16 %93 to float
  %95 = load float, ptr %7, align 4, !tbaa !29
  %96 = fcmp ogt float %95, %94
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store float %95, ptr %30, align 4, !tbaa !58
  br label %110

98:                                               ; preds = %91
  %99 = load float, ptr %9, align 4, !tbaa !29
  %100 = fcmp olt float %99, %94
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store float %99, ptr %30, align 4, !tbaa !58
  br label %110

102:                                              ; preds = %98
  %103 = load ptr, ptr %10, align 8, !tbaa !6
  %104 = getelementptr inbounds ptr, ptr %103, i64 %59
  %105 = load ptr, ptr %104, align 8, !tbaa !6
  %106 = call double @GetPseudoRandomValue(ptr noundef %105) #21
  %107 = fmul double %106, 6.553500e+04
  %108 = fptrunc double %107 to float
  store float %108, ptr %30, align 4, !tbaa !58
  %109 = load i32, ptr %6, align 4, !tbaa !27
  br label %110

110:                                              ; preds = %97, %102, %101, %87
  %111 = phi i32 [ %88, %97 ], [ %109, %102 ], [ %88, %101 ], [ %88, %87 ]
  %112 = and i32 %111, 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %110
  %115 = load i16, ptr %65, align 2, !tbaa !48
  %116 = uitofp i16 %115 to float
  %117 = load float, ptr %7, align 4, !tbaa !29
  %118 = fcmp ogt float %117, %116
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store float %117, ptr %31, align 8, !tbaa !59
  br label %132

120:                                              ; preds = %114
  %121 = load float, ptr %9, align 4, !tbaa !29
  %122 = fcmp olt float %121, %116
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store float %121, ptr %31, align 8, !tbaa !59
  br label %132

124:                                              ; preds = %120
  %125 = load ptr, ptr %10, align 8, !tbaa !6
  %126 = getelementptr inbounds ptr, ptr %125, i64 %59
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = call double @GetPseudoRandomValue(ptr noundef %127) #21
  %129 = fmul double %128, 6.553500e+04
  %130 = fptrunc double %129 to float
  store float %130, ptr %31, align 8, !tbaa !59
  %131 = load i32, ptr %6, align 4, !tbaa !27
  br label %132

132:                                              ; preds = %119, %124, %123, %110
  %133 = phi i32 [ %111, %119 ], [ %131, %124 ], [ %111, %123 ], [ %111, %110 ]
  %134 = and i32 %133, 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %155, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 3
  %138 = load i16, ptr %137, align 2, !tbaa !50
  %139 = uitofp i16 %138 to float
  %140 = load float, ptr %7, align 4, !tbaa !29
  %141 = fcmp ogt float %140, %139
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store float %140, ptr %32, align 4, !tbaa !94
  br label %155

143:                                              ; preds = %136
  %144 = load float, ptr %9, align 4, !tbaa !29
  %145 = fcmp olt float %144, %139
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store float %144, ptr %32, align 4, !tbaa !94
  br label %155

147:                                              ; preds = %143
  %148 = load ptr, ptr %10, align 8, !tbaa !6
  %149 = getelementptr inbounds ptr, ptr %148, i64 %59
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = call double @GetPseudoRandomValue(ptr noundef %150) #21
  %152 = fmul double %151, 6.553500e+04
  %153 = fptrunc double %152 to float
  store float %153, ptr %32, align 4, !tbaa !94
  %154 = load i32, ptr %6, align 4, !tbaa !27
  br label %155

155:                                              ; preds = %142, %147, %146, %132
  %156 = phi i32 [ %133, %142 ], [ %154, %147 ], [ %133, %146 ], [ %133, %132 ]
  %157 = and i32 %156, 32
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %192, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr %2, align 8, !tbaa !6
  %161 = getelementptr inbounds %struct._Image, ptr %160, i64 0, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !33
  %163 = icmp eq i32 %162, 12
  br i1 %163, label %164, label %192

164:                                              ; preds = %159
  br i1 %60, label %165, label %168

165:                                              ; preds = %164
  %166 = load float, ptr %7, align 4, !tbaa !29
  %167 = fcmp ogt float %166, 0.000000e+00
  br i1 %167, label %174, label %178

168:                                              ; preds = %164
  %169 = getelementptr inbounds i16, ptr %53, i64 %64
  %170 = load i16, ptr %169, align 2, !tbaa !34
  %171 = uitofp i16 %170 to float
  %172 = load float, ptr %7, align 4, !tbaa !29
  %173 = fcmp ogt float %172, %171
  br i1 %173, label %174, label %176

174:                                              ; preds = %168, %165
  %175 = phi float [ %172, %168 ], [ %166, %165 ]
  store float %175, ptr %33, align 8, !tbaa !56
  br label %192

176:                                              ; preds = %168
  %177 = zext i16 %170 to i32
  br label %178

178:                                              ; preds = %165, %176
  %179 = phi i32 [ %177, %176 ], [ 0, %165 ]
  %180 = sitofp i32 %179 to float
  %181 = load float, ptr %9, align 4, !tbaa !29
  %182 = fcmp olt float %181, %180
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store float %181, ptr %33, align 8, !tbaa !56
  br label %192

184:                                              ; preds = %178
  %185 = load ptr, ptr %10, align 8, !tbaa !6
  %186 = getelementptr inbounds ptr, ptr %185, i64 %59
  %187 = load ptr, ptr %186, align 8, !tbaa !6
  %188 = call double @GetPseudoRandomValue(ptr noundef %187) #21
  %189 = fmul double %188, 6.553500e+04
  %190 = fptrunc double %189 to float
  store float %190, ptr %33, align 8, !tbaa !56
  %191 = load i32, ptr %6, align 4, !tbaa !27
  br label %192

192:                                              ; preds = %174, %184, %183, %159, %155
  %193 = phi i32 [ %156, %174 ], [ %191, %184 ], [ %156, %183 ], [ %156, %159 ], [ %156, %155 ]
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 2
  %198 = load i16, ptr %197, align 2, !tbaa !46
  %199 = uitofp i16 %198 to float
  %200 = load float, ptr %29, align 8, !tbaa !54
  %201 = fcmp ult float %200, %199
  %202 = sext i1 %201 to i16
  store i16 %202, ptr %197, align 2, !tbaa !46
  br label %203

203:                                              ; preds = %196, %192
  %204 = and i32 %193, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 1
  %208 = load i16, ptr %207, align 2, !tbaa !47
  %209 = uitofp i16 %208 to float
  %210 = load float, ptr %30, align 4, !tbaa !58
  %211 = fcmp ult float %210, %209
  %212 = sext i1 %211 to i16
  store i16 %212, ptr %207, align 2, !tbaa !47
  br label %213

213:                                              ; preds = %206, %203
  %214 = and i32 %193, 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %213
  %217 = load i16, ptr %65, align 2, !tbaa !48
  %218 = uitofp i16 %217 to float
  %219 = load float, ptr %31, align 8, !tbaa !59
  %220 = fcmp ult float %219, %218
  %221 = sext i1 %220 to i16
  store i16 %221, ptr %65, align 2, !tbaa !48
  br label %222

222:                                              ; preds = %216, %213
  %223 = and i32 %193, 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 3
  %227 = load i16, ptr %226, align 2, !tbaa !50
  %228 = uitofp i16 %227 to float
  %229 = load float, ptr %32, align 4, !tbaa !94
  %230 = fcmp ult float %229, %228
  %231 = sext i1 %230 to i16
  store i16 %231, ptr %226, align 2, !tbaa !50
  br label %232

232:                                              ; preds = %225, %222
  %233 = and i32 %193, 32
  %234 = icmp eq i32 %233, 0
  %235 = load ptr, ptr %2, align 8, !tbaa !6
  br i1 %234, label %248, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct._Image, ptr %235, i64 0, i32 1
  %238 = load i32, ptr %237, align 4, !tbaa !33
  %239 = icmp ne i32 %238, 12
  %240 = select i1 %239, i1 true, i1 %60
  br i1 %240, label %248, label %241

241:                                              ; preds = %236
  %242 = getelementptr inbounds i16, ptr %53, i64 %64
  %243 = load i16, ptr %242, align 2, !tbaa !34
  %244 = uitofp i16 %243 to float
  %245 = load float, ptr %33, align 8, !tbaa !56
  %246 = fcmp ult float %245, %244
  %247 = sext i1 %246 to i16
  store i16 %247, ptr %242, align 2, !tbaa !34
  br label %248

248:                                              ; preds = %241, %236, %232
  %249 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 1
  %250 = add nuw nsw i64 %64, 1
  %251 = getelementptr inbounds %struct._Image, ptr %235, i64 0, i32 7
  %252 = load i64, ptr %251, align 8, !tbaa !32
  %253 = icmp slt i64 %250, %252
  br i1 %253, label %62, label %254, !llvm.loop !95

254:                                              ; preds = %248, %51
  %255 = load ptr, ptr %4, align 8, !tbaa !6
  %256 = load ptr, ptr %5, align 8, !tbaa !6
  %257 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %255, ptr noundef %256) #22
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %260

260:                                              ; preds = %259, %254
  %261 = load ptr, ptr %2, align 8, !tbaa !6
  %262 = getelementptr inbounds %struct._Image, ptr %261, i64 0, i32 47
  %263 = load ptr, ptr %262, align 8, !tbaa !40
  %264 = icmp eq ptr %263, null
  br i1 %264, label %274, label %265

265:                                              ; preds = %260
  call void @__kmpc_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_RandomThresholdImageChannel.var)
  %266 = load ptr, ptr %2, align 8, !tbaa !6
  %267 = load i64, ptr %11, align 8, !tbaa !28
  %268 = add nsw i64 %267, 1
  store i64 %268, ptr %11, align 8, !tbaa !28
  %269 = getelementptr inbounds %struct._Image, ptr %266, i64 0, i32 8
  %270 = load i64, ptr %269, align 8, !tbaa !31
  %271 = call fastcc i32 @SetImageProgress(ptr noundef %266, ptr noundef nonnull @.str.3, i64 noundef %267, i64 noundef %270) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_RandomThresholdImageChannel.var)
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %265, %43
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %274

274:                                              ; preds = %273, %260, %265, %38
  %275 = add nsw i64 %39, 1
  %276 = load i64, ptr %14, align 8, !tbaa !10
  %277 = icmp slt i64 %39, %276
  br i1 %277, label %38, label %278

278:                                              ; preds = %274
  %279 = load i64, ptr %13, align 8, !tbaa !10
  br label %280

280:                                              ; preds = %278, %34
  %281 = phi i64 [ %36, %34 ], [ %279, %278 ]
  %282 = phi i64 [ %35, %34 ], [ %276, %278 ]
  %283 = load i64, ptr %15, align 8, !tbaa !10
  %284 = add nsw i64 %283, %281
  store i64 %284, ptr %13, align 8, !tbaa !10
  %285 = add nsw i64 %283, %282
  %286 = call i64 @llvm.smin.i64(i64 %285, i64 %20)
  store i64 %286, ptr %14, align 8, !tbaa !10
  %287 = icmp sgt i64 %284, %286
  br i1 %287, label %288, label %34

288:                                              ; preds = %280, %22
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  br label %289

289:                                              ; preds = %288, %12
  ret void
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #18

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WhiteThresholdImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %4 = tail call i32 @WhiteThresholdImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef nonnull %3) #23
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WhiteThresholdImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._GeometryInfo, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !6
  store i32 %1, ptr %6, align 4, !tbaa !27
  store ptr %3, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #4
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %15 = load i32, ptr %14, align 8, !tbaa !12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2251, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #21
  br label %20

20:                                               ; preds = %17, %4
  %21 = icmp eq ptr %2, null
  br i1 %21, label %95, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %95, label %25

25:                                               ; preds = %22
  %26 = call i32 @ParseGeometry(ptr noundef nonnull %2, ptr noundef nonnull %9) #21
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %12) #21
  %27 = load double, ptr %9, align 8, !tbaa !52
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 5
  store float %28, ptr %29, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 1
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 6
  %32 = load <2 x double>, ptr %30, align 8, !tbaa !44
  %33 = fptrunc <2 x double> %32 to <2 x float>
  %34 = insertelement <2 x i32> poison, i32 %26, i64 0
  %35 = shufflevector <2 x i32> %34, <2 x i32> poison, <2 x i32> zeroinitializer
  %36 = and <2 x i32> %35, <i32 8, i32 1>
  %37 = icmp eq <2 x i32> %36, zeroinitializer
  %38 = insertelement <2 x float> poison, float %28, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = select <2 x i1> %37, <2 x float> %39, <2 x float> %33
  store <2 x float> %40, ptr %31, align 4
  %41 = getelementptr inbounds %struct._GeometryInfo, ptr %9, i64 0, i32 3
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 8
  %43 = load <2 x double>, ptr %41, align 8, !tbaa !44
  %44 = fptrunc <2 x double> %43 to <2 x float>
  %45 = and <2 x i32> %35, <i32 2, i32 16>
  %46 = icmp eq <2 x i32> %45, zeroinitializer
  %47 = select <2 x i1> %46, <2 x float> %39, <2 x float> %44
  store <2 x float> %47, ptr %42, align 4
  %48 = and i32 %26, 4096
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %25
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 9
  %52 = insertelement <4 x float> poison, float %28, i64 0
  %53 = shufflevector <2 x float> %40, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %54 = shufflevector <4 x float> %52, <4 x float> %53, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %55 = shufflevector <2 x float> %47, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %56 = shufflevector <4 x float> %54, <4 x float> %55, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %57 = fmul <4 x float> %56, <float 0x40847ACCC0000000, float 0x40847ACCC0000000, float 0x40847ACCC0000000, float 0x40847ACCC0000000>
  store <4 x float> %57, ptr %29, align 8, !tbaa !29
  %58 = extractelement <2 x float> %47, i64 1
  %59 = fmul float %58, 0x40847ACCC0000000
  store float %59, ptr %51, align 8, !tbaa !56
  br label %60

60:                                               ; preds = %50, %25
  %61 = call fastcc i32 @IsMagickGray(ptr noundef nonnull %12) #23, !range !45
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !33
  %66 = call fastcc i32 @IsGrayColorspace(i32 noundef %65) #23, !range !45
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #21
  br label %70

70:                                               ; preds = %68, %63, %60
  store i32 1, ptr %10, align 4, !tbaa !27
  store i64 0, ptr %11, align 8, !tbaa !28
  %71 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %3) #21
  store ptr %71, ptr %8, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %73 = load i64, ptr %72, align 8, !tbaa !31
  %74 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %75 = shl i64 %74, 5
  %76 = icmp ugt i64 %73, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #21
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  br label %89

85:                                               ; preds = %80, %77, %70
  %86 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %87 = icmp ult i64 %86, 2
  %88 = select i1 %87, i64 1, i64 2
  br label %89

89:                                               ; preds = %85, %83
  %90 = phi i64 [ %84, %83 ], [ %88, %85 ]
  %91 = trunc i64 %90 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %91)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @WhiteThresholdImageChannel.omp_outlined, ptr nonnull %5, ptr nonnull %10, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %12, ptr nonnull %11)
  %92 = load ptr, ptr %8, align 8, !tbaa !6
  %93 = call ptr @DestroyCacheView(ptr noundef %92) #21
  %94 = load i32, ptr %10, align 4, !tbaa !27
  br label %95

95:                                               ; preds = %22, %20, %89
  %96 = phi i32 [ %94, %89 ], [ 1, %20 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  ret i32 %96
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @WhiteThresholdImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #3 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !31
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %152

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  store i64 0, ptr %10, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  store i64 %17, ptr %11, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 1, ptr %12, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  store i32 0, ptr %13, align 4, !tbaa !27
  %20 = load i32, ptr %0, align 4, !tbaa !27
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !10
  %23 = load i64, ptr %10, align 8, !tbaa !10
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %151, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  br label %31

31:                                               ; preds = %25, %143
  %32 = phi i64 [ %22, %25 ], [ %149, %143 ]
  %33 = phi i64 [ %23, %25 ], [ %147, %143 ]
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %143, label %35

35:                                               ; preds = %31, %137
  %36 = phi i64 [ %138, %137 ], [ %33, %31 ]
  %37 = load i32, ptr %3, align 4, !tbaa !27
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %137, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8, !tbaa !6
  %41 = load ptr, ptr %2, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !32
  %44 = load ptr, ptr %5, align 8, !tbaa !6
  %45 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %36, i64 noundef %43, i64 noundef 1, ptr noundef %44) #22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %136, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %4, align 8, !tbaa !6
  %49 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %48) #21
  %50 = load ptr, ptr %2, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !32
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %117

54:                                               ; preds = %47
  %55 = load i32, ptr %6, align 4, !tbaa !27
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  %58 = load float, ptr %26, align 8
  %59 = load float, ptr %27, align 4
  %60 = load float, ptr %28, align 8
  %61 = load float, ptr %29, align 4
  %62 = insertelement <4 x i32> poison, i32 %55, i64 0
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> zeroinitializer
  %64 = and <4 x i32> %63, <i32 32, i32 8, i32 4, i32 2>
  %65 = icmp eq <4 x i32> %64, zeroinitializer
  %66 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 1
  %67 = icmp eq ptr %49, null
  %68 = load float, ptr %30, align 8
  %69 = extractelement <4 x i1> %65, i64 0
  %70 = extractelement <4 x i1> %65, i64 1
  %71 = extractelement <4 x i1> %65, i64 2
  %72 = extractelement <4 x i1> %65, i64 3
  br label %73

73:                                               ; preds = %54, %113
  %74 = phi ptr [ %45, %54 ], [ %114, %113 ]
  %75 = phi i64 [ 0, %54 ], [ %115, %113 ]
  br i1 %57, label %82, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  %78 = load i16, ptr %77, align 2, !tbaa !46
  %79 = uitofp i16 %78 to float
  %80 = fcmp olt float %58, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i16 -1, ptr %77, align 2, !tbaa !46
  br label %82

82:                                               ; preds = %81, %76, %73
  br i1 %72, label %89, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 1
  %85 = load i16, ptr %84, align 2, !tbaa !47
  %86 = uitofp i16 %85 to float
  %87 = fcmp olt float %59, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i16 -1, ptr %84, align 2, !tbaa !47
  br label %89

89:                                               ; preds = %88, %83, %82
  br i1 %71, label %95, label %90

90:                                               ; preds = %89
  %91 = load i16, ptr %74, align 2, !tbaa !48
  %92 = uitofp i16 %91 to float
  %93 = fcmp olt float %60, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i16 -1, ptr %74, align 2, !tbaa !48
  br label %95

95:                                               ; preds = %94, %90, %89
  br i1 %70, label %102, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 3
  %98 = load i16, ptr %97, align 2, !tbaa !50
  %99 = uitofp i16 %98 to float
  %100 = fcmp olt float %61, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i16 -1, ptr %97, align 2, !tbaa !50
  br label %102

102:                                              ; preds = %101, %96, %95
  br i1 %69, label %113, label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %66, align 4, !tbaa !33
  %105 = icmp eq i32 %104, 12
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = getelementptr inbounds i16, ptr %49, i64 %75
  br i1 %67, label %113, label %108

108:                                              ; preds = %106
  %109 = load i16, ptr %107, align 2, !tbaa !34
  %110 = uitofp i16 %109 to float
  %111 = fcmp uge float %68, %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  store i16 -1, ptr %107, align 2, !tbaa !34
  br label %113

113:                                              ; preds = %106, %112, %108, %103, %102
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  %115 = add nuw nsw i64 %75, 1
  %116 = icmp eq i64 %115, %52
  br i1 %116, label %117, label %73, !llvm.loop !96

117:                                              ; preds = %113, %47
  %118 = load ptr, ptr %4, align 8, !tbaa !6
  %119 = load ptr, ptr %5, align 8, !tbaa !6
  %120 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %118, ptr noundef %119) #22
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %123

123:                                              ; preds = %122, %117
  %124 = load ptr, ptr %2, align 8, !tbaa !6
  %125 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 47
  %126 = load ptr, ptr %125, align 8, !tbaa !40
  %127 = icmp eq ptr %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %123
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_WhiteThresholdImageChannel.var)
  %129 = load ptr, ptr %2, align 8, !tbaa !6
  %130 = load i64, ptr %8, align 8, !tbaa !28
  %131 = add nsw i64 %130, 1
  store i64 %131, ptr %8, align 8, !tbaa !28
  %132 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 8
  %133 = load i64, ptr %132, align 8, !tbaa !31
  %134 = call fastcc i32 @SetImageProgress(ptr noundef %129, ptr noundef nonnull @.str.3, i64 noundef %130, i64 noundef %133) #23
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_WhiteThresholdImageChannel.var)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128, %39
  store i32 0, ptr %3, align 4, !tbaa !27
  br label %137

137:                                              ; preds = %136, %123, %128, %35
  %138 = add nsw i64 %36, 1
  %139 = load i64, ptr %11, align 8, !tbaa !10
  %140 = icmp slt i64 %36, %139
  br i1 %140, label %35, label %141

141:                                              ; preds = %137
  %142 = load i64, ptr %10, align 8, !tbaa !10
  br label %143

143:                                              ; preds = %141, %31
  %144 = phi i64 [ %33, %31 ], [ %142, %141 ]
  %145 = phi i64 [ %32, %31 ], [ %139, %141 ]
  %146 = load i64, ptr %12, align 8, !tbaa !10
  %147 = add nsw i64 %146, %144
  store i64 %147, ptr %10, align 8, !tbaa !10
  %148 = add nsw i64 %146, %145
  %149 = call i64 @llvm.smin.i64(i64 %148, i64 %17)
  store i64 %149, ptr %11, align 8, !tbaa !10
  %150 = icmp sgt i64 %147, %149
  br i1 %150, label %151, label %31

151:                                              ; preds = %143, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  br label %152

152:                                              ; preds = %151, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { convergent nounwind }
attributes #7 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind optsize }
attributes #22 = { hot nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { nounwind optsize allocsize(0) }
attributes #25 = { nounwind optsize willreturn memory(none) }
attributes #26 = { noreturn nounwind optsize }
attributes #27 = { nounwind optsize allocsize(0,1) }
attributes #28 = { nounwind optsize willreturn memory(read) }

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
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !14, i64 12976}
!13 = !{!"_Image", !14, i64 0, !14, i64 4, !14, i64 8, !11, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !7, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !17, i64 104, !18, i64 112, !14, i64 208, !7, i64 216, !14, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !11, i64 256, !17, i64 264, !17, i64 272, !20, i64 280, !20, i64 312, !20, i64 344, !17, i64 376, !17, i64 384, !17, i64 392, !14, i64 400, !14, i64 404, !14, i64 408, !14, i64 412, !14, i64 416, !14, i64 420, !7, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !21, i64 480, !22, i64 504, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !11, i64 12904, !11, i64 12912, !24, i64 12920, !14, i64 12976, !11, i64 12984, !7, i64 12992, !25, i64 13000, !25, i64 13032, !7, i64 13064, !11, i64 13072, !11, i64 13080, !7, i64 13088, !7, i64 13096, !7, i64 13104, !14, i64 13112, !14, i64 13116, !15, i64 13120, !7, i64 13128, !20, i64 13136, !7, i64 13168, !7, i64 13176, !14, i64 13184, !14, i64 13188, !26, i64 13192, !14, i64 13200, !11, i64 13208, !11, i64 13216, !14, i64 13224, !11, i64 13232}
!14 = !{!"int", !8, i64 0}
!15 = !{!"_PixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!16 = !{!"short", !8, i64 0}
!17 = !{!"double", !8, i64 0}
!18 = !{!"_ChromaticityInfo", !19, i64 0, !19, i64 24, !19, i64 48, !19, i64 72}
!19 = !{!"_PrimaryInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!20 = !{!"_RectangleInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!21 = !{!"_ErrorInfo", !17, i64 0, !17, i64 8, !17, i64 16}
!22 = !{!"_TimerInfo", !23, i64 0, !23, i64 24, !14, i64 48, !11, i64 56}
!23 = !{!"_Timer", !17, i64 0, !17, i64 8, !17, i64 16}
!24 = !{!"_ExceptionInfo", !14, i64 0, !14, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !14, i64 32, !7, i64 40, !11, i64 48}
!25 = !{!"_ProfileInfo", !7, i64 0, !11, i64 8, !7, i64 16, !11, i64 24}
!26 = !{!"long long", !8, i64 0}
!27 = !{!14, !14, i64 0}
!28 = !{!26, !26, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !8, i64 0}
!31 = !{!13, !11, i64 48}
!32 = !{!13, !11, i64 40}
!33 = !{!13, !14, i64 4}
!34 = !{!16, !16, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = !{!13, !7, i64 568}
!41 = !{!13, !7, i64 576}
!42 = !{!43}
!43 = !{i64 2, i64 -1, i64 -1, i1 true}
!44 = !{!17, !17, i64 0}
!45 = !{i32 0, i32 2}
!46 = !{!15, !16, i64 4}
!47 = !{!15, !16, i64 2}
!48 = !{!15, !16, i64 0}
!49 = distinct !{!49, !36}
!50 = !{!15, !16, i64 6}
!51 = distinct !{!51, !36}
!52 = !{!53, !17, i64 0}
!53 = !{!"_GeometryInfo", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!54 = !{!55, !30, i64 32}
!55 = !{!"_MagickPixelPacket", !14, i64 0, !14, i64 4, !14, i64 8, !17, i64 16, !11, i64 24, !30, i64 32, !30, i64 36, !30, i64 40, !30, i64 44, !30, i64 48}
!56 = !{!55, !30, i64 48}
!57 = !{!55, !14, i64 4}
!58 = !{!55, !30, i64 36}
!59 = !{!55, !30, i64 40}
!60 = distinct !{!60, !36}
!61 = !{!13, !14, i64 0}
!62 = !{!13, !11, i64 64}
!63 = !{!13, !7, i64 72}
!64 = distinct !{!64, !36}
!65 = distinct !{!65, !36}
!66 = !{!67, !7, i64 0}
!67 = !{!"_ThresholdMap", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40}
!68 = !{!67, !7, i64 8}
!69 = !{!67, !7, i64 40}
!70 = distinct !{!70, !36}
!71 = !{!67, !11, i64 16}
!72 = !{!67, !11, i64 24}
!73 = !{!67, !11, i64 32}
!74 = distinct !{!74, !36}
!75 = distinct !{!75, !36}
!76 = distinct !{!76, !36}
!77 = distinct !{!77, !36}
!78 = !{!8, !8, i64 0}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !36}
!81 = !{!82, !14, i64 0}
!82 = !{!"_LongPixelPacket", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16}
!83 = !{!82, !14, i64 4}
!84 = !{!82, !14, i64 8}
!85 = !{!82, !14, i64 12}
!86 = !{!82, !14, i64 16}
!87 = distinct !{!87, !36}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = !{!53, !17, i64 8}
!91 = distinct !{!91, !36}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
!94 = !{!55, !30, i64 44}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
