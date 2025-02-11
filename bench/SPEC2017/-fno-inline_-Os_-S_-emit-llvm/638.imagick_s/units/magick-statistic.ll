; ModuleID = 'magick/statistic.c'
source_filename = "magick/statistic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ChannelStatistics = type { i64, double, double, double, double, double, double, double, double, double, double, double }
%struct._PointInfo = type { double, double }
%struct._ChannelMoments = type { [32 x double], %struct._PointInfo, %struct._PointInfo, double, double, double }
%struct._ChannelPerceptualHash = type { [32 x double], [32 x double] }
%struct._PixelList = type { i64, i64, i64, [5 x %struct._SkipList] }
%struct._SkipList = type { i64, ptr }
%struct._ListNode = type { [9 x i64], i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"magick/statistic.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_EvaluateImages.var = common global [8 x i32] zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Evaluate/Image\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.gomp_critical_user_MagickCore_EvaluateImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.gomp_critical_user_MagickCore_FunctionImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"Function/Image \00", align 1
@.gomp_critical_user_MagickCore_PolynomialImages.var = common global [8 x i32] zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"Polynomial/Image\00", align 1
@.gomp_critical_user_MagickCore_StatisticImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"Statistic/Image\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @EvaluateImage(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @EvaluateImageChannel(ptr noundef %0, i32 noundef 47, i32 noundef %1, double noundef %2, ptr noundef %3) #25
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @EvaluateImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store i32 %1, ptr %7, align 4, !tbaa !10
  store i32 %2, ptr %8, align 4, !tbaa !10
  store double %3, ptr %9, align 8, !tbaa !12
  store ptr %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 773, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #26
  br label %22

22:                                               ; preds = %19, %5
  %23 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %26) #26
  br label %59

27:                                               ; preds = %22
  store i32 1, ptr %12, align 4, !tbaa !10
  store i64 0, ptr %13, align 8, !tbaa !28
  %28 = tail call fastcc ptr @AcquireRandomInfoThreadSet() #25
  store ptr %28, ptr %14, align 8, !tbaa !6
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = tail call i64 @GetRandomSecretKey(ptr noundef %29) #26
  %31 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %4) #26
  store ptr %31, ptr %11, align 8, !tbaa !6
  %32 = icmp eq i64 %30, -1
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !29
  %36 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %37 = shl i64 %36, 5
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %51

47:                                               ; preds = %42, %39, %33
  %48 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %49 = icmp ult i64 %48, 2
  %50 = select i1 %49, i64 1, i64 2
  br label %51

51:                                               ; preds = %45, %47, %27
  %52 = phi i64 [ 1, %27 ], [ %46, %45 ], [ %50, %47 ]
  %53 = trunc i64 %52 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %53)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @EvaluateImageChannel.omp_outlined, ptr nonnull %6, ptr nonnull %12, ptr nonnull %11, ptr nonnull %10, ptr nonnull %7, ptr nonnull %14, ptr nonnull %8, ptr nonnull %9, ptr nonnull %13)
  %54 = load ptr, ptr %11, align 8, !tbaa !6
  %55 = call ptr @DestroyCacheView(ptr noundef %54) #26
  store ptr %55, ptr %11, align 8, !tbaa !6
  %56 = load ptr, ptr %14, align 8, !tbaa !6
  %57 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %56) #25
  %58 = load i32, ptr %12, align 4, !tbaa !10
  br label %59

59:                                               ; preds = %51, %25
  %60 = phi i32 [ 0, %25 ], [ %58, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret i32 %60
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EvaluateImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !6
  store i32 %1, ptr %5, align 4, !tbaa !10
  store ptr %2, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 465, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #26
  br label %22

22:                                               ; preds = %19, %3
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !30
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !29
  %27 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %24, i64 noundef %26, i32 noundef 1, ptr noundef %2) #26
  store ptr %27, ptr %8, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %110, label %29

29:                                               ; preds = %22
  %30 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %27, i32 noundef 1) #26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %33) #26
  %34 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #26
  br label %110

35:                                               ; preds = %29
  %36 = tail call i64 @GetImageListLength(ptr noundef nonnull %0) #26
  store i64 %36, ptr %14, align 8, !tbaa !31
  %37 = tail call fastcc ptr @AcquirePixelThreadSet(ptr noundef nonnull %0, i64 noundef %36) #25
  store ptr %37, ptr %11, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #26
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %42 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 482, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %41) #26
  br label %110

43:                                               ; preds = %35
  store i32 1, ptr %9, align 4, !tbaa !10
  store i64 0, ptr %10, align 8, !tbaa !28
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %12) #26
  %44 = call fastcc ptr @AcquireRandomInfoThreadSet() #25
  store ptr %44, ptr %13, align 8, !tbaa !6
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = call i64 @GetRandomSecretKey(ptr noundef %45) #26
  %47 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %27, ptr noundef %2) #26
  store ptr %47, ptr %7, align 8, !tbaa !6
  %48 = icmp eq i32 %1, 30
  %49 = icmp eq i64 %46, -1
  br i1 %48, label %50, label %74

50:                                               ; preds = %43
  br i1 %49, label %51, label %71

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %53 = load i64, ptr %52, align 8, !tbaa !29
  %54 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %55 = shl i64 %54, 5
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load ptr, ptr %8, align 8, !tbaa !6
  %59 = call i32 @GetImagePixelCacheType(ptr noundef %58) #26
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %4, align 8, !tbaa !6
  %63 = call i32 @GetImagePixelCacheType(ptr noundef %62) #26
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %71

67:                                               ; preds = %61, %57, %51
  %68 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %69 = icmp ult i64 %68, 2
  %70 = select i1 %69, i64 1, i64 2
  br label %71

71:                                               ; preds = %65, %67, %50
  %72 = phi i64 [ 1, %50 ], [ %66, %65 ], [ %70, %67 ]
  %73 = trunc i64 %72 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %73)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @EvaluateImages.omp_outlined, ptr nonnull %8, ptr nonnull %9, ptr nonnull %7, ptr nonnull %6, ptr nonnull %11, ptr nonnull %14, ptr nonnull %12, ptr nonnull %4, ptr nonnull %13, ptr nonnull %5, ptr nonnull %10)
  br label %98

74:                                               ; preds = %43
  br i1 %49, label %75, label %95

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 8
  %77 = load i64, ptr %76, align 8, !tbaa !29
  %78 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %79 = shl i64 %78, 5
  %80 = icmp ugt i64 %77, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load ptr, ptr %8, align 8, !tbaa !6
  %83 = call i32 @GetImagePixelCacheType(ptr noundef %82) #26
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %4, align 8, !tbaa !6
  %87 = call i32 @GetImagePixelCacheType(ptr noundef %86) #26
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %95

91:                                               ; preds = %85, %81, %75
  %92 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %93 = icmp ult i64 %92, 2
  %94 = select i1 %93, i64 1, i64 2
  br label %95

95:                                               ; preds = %89, %91, %74
  %96 = phi i64 [ 1, %74 ], [ %90, %89 ], [ %94, %91 ]
  %97 = trunc i64 %96 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %97)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @EvaluateImages.omp_outlined.6, ptr nonnull %8, ptr nonnull %9, ptr nonnull %7, ptr nonnull %6, ptr nonnull %11, ptr nonnull %12, ptr nonnull %4, ptr nonnull %14, ptr nonnull %13, ptr nonnull %5, ptr nonnull %10)
  br label %98

98:                                               ; preds = %95, %71
  %99 = load ptr, ptr %7, align 8, !tbaa !6
  %100 = call ptr @DestroyCacheView(ptr noundef %99) #26
  store ptr %100, ptr %7, align 8, !tbaa !6
  %101 = load ptr, ptr %11, align 8, !tbaa !6
  %102 = call fastcc ptr @DestroyPixelThreadSet(ptr noundef %101) #25
  store ptr %102, ptr %11, align 8, !tbaa !6
  %103 = load ptr, ptr %13, align 8, !tbaa !6
  %104 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %103) #25
  store ptr %104, ptr %13, align 8, !tbaa !6
  %105 = load i32, ptr %9, align 4, !tbaa !10
  %106 = icmp eq i32 %105, 0
  %107 = load ptr, ptr %8, align 8, !tbaa !6
  br i1 %106, label %108, label %110

108:                                              ; preds = %98
  %109 = call ptr @DestroyImage(ptr noundef %107) #26
  br label %110

110:                                              ; preds = %98, %108, %22, %39, %32
  %111 = phi ptr [ null, %32 ], [ null, %39 ], [ null, %22 ], [ %109, %108 ], [ %107, %98 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  ret ptr %111
}

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
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquirePixelThreadSet(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %4 = tail call ptr @AcquireQuantumMemory(i64 noundef %3, i64 noundef 8) #27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = shl i64 %3, 3
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %7) #26
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %12

12:                                               ; preds = %10, %29
  %13 = phi i64 [ 0, %10 ], [ %30, %29 ]
  %14 = load i64, ptr %11, align 8, !tbaa !30
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 %1)
  %16 = tail call ptr @AcquireQuantumMemory(i64 noundef %15, i64 noundef 56) #27
  %17 = getelementptr inbounds ptr, ptr %4, i64 %13
  store ptr %16, ptr %17, align 8, !tbaa !6
  %18 = icmp eq ptr %16, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = icmp sgt i64 %15, 0
  br i1 %20, label %23, label %29

21:                                               ; preds = %12
  %22 = tail call fastcc ptr @DestroyPixelThreadSet(ptr noundef nonnull %4) #25
  br label %32

23:                                               ; preds = %19, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %19 ]
  %25 = load ptr, ptr %17, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %25, i64 %24
  tail call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef %26) #26
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, %15
  br i1 %28, label %29, label %23, !llvm.loop !32

29:                                               ; preds = %23, %19
  %30 = add nuw nsw i64 %13, 1
  %31 = icmp eq i64 %30, %3
  br i1 %31, label %32, label %12, !llvm.loop !34

32:                                               ; preds = %29, %6, %2, %21
  %33 = phi ptr [ %22, %21 ], [ null, %2 ], [ %4, %6 ], [ %4, %29 ]
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireRandomInfoThreadSet() unnamed_addr #0 {
  %1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %2 = tail call ptr @AcquireAlignedMemory(i64 noundef %1, i64 noundef 8) #27
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = shl i64 %1, 3
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef %5) #26
  %7 = icmp sgt i64 %1, 0
  br i1 %7, label %11, label %18

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %18, label %11, !llvm.loop !35

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %13 = tail call ptr @AcquireRandomInfo() #26
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !6
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef nonnull %2) #25
  br label %18

18:                                               ; preds = %8, %4, %0, %16
  %19 = phi ptr [ %17, %16 ], [ null, %0 ], [ %2, %4 ], [ %2, %8 ]
  ret ptr %19
}

; Function Attrs: optsize
declare i64 @GetRandomSecretKey(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @EvaluateImages.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %11, ptr nocapture noundef nonnull align 8 dereferenceable(8) %12) #3 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = load ptr, ptr %2, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = add nsw i64 %20, -1
  %22 = icmp sgt i64 %20, 0
  br i1 %22, label %23, label %214

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 0, ptr %14, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 %21, ptr %15, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 1, ptr %16, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #4
  store i32 0, ptr %17, align 4, !tbaa !10
  %24 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %24, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %25 = load i64, ptr %15, align 8
  %26 = call i64 @llvm.smin.i64(i64 %25, i64 %21)
  store i64 %26, ptr %15, align 8, !tbaa !31
  %27 = load i64, ptr %14, align 8, !tbaa !31
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %213, label %29

29:                                               ; preds = %23, %205
  %30 = phi i64 [ %211, %205 ], [ %26, %23 ]
  %31 = phi i64 [ %209, %205 ], [ %27, %23 ]
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %205, label %33

33:                                               ; preds = %29, %199
  %34 = phi i64 [ %200, %199 ], [ %31, %29 ]
  %35 = call fastcc i32 @GetOpenMPThreadId() #25
  %36 = load i32, ptr %3, align 4, !tbaa !10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %199, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %4, align 8, !tbaa !6
  %40 = load ptr, ptr %2, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !30
  %43 = load ptr, ptr %5, align 8, !tbaa !6
  %44 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %34, i64 noundef %42, i64 noundef 1, ptr noundef %43) #28
  %45 = icmp eq ptr %44, null
  br i1 %45, label %198, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %4, align 8, !tbaa !6
  %48 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %47) #26
  %49 = load ptr, ptr %6, align 8, !tbaa !6
  %50 = sext i32 %35 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = load ptr, ptr %2, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !30
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %178

57:                                               ; preds = %46
  %58 = icmp eq ptr %48, null
  br label %59

59:                                               ; preds = %57, %172
  %60 = phi i64 [ 0, %57 ], [ %174, %172 ]
  %61 = phi ptr [ %44, %57 ], [ %173, %172 ]
  %62 = load i64, ptr %7, align 8, !tbaa !31
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %142

64:                                               ; preds = %59, %64
  %65 = phi i64 [ %67, %64 ], [ 0, %59 ]
  %66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %66, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 56, i1 false), !tbaa.struct !36
  %67 = add nuw nsw i64 %65, 1
  %68 = load i64, ptr %7, align 8, !tbaa !31
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %64, label %70, !llvm.loop !39

70:                                               ; preds = %64
  %71 = icmp sgt i64 %68, 0
  br i1 %71, label %72, label %142

72:                                               ; preds = %70
  %73 = load ptr, ptr %9, align 8, !tbaa !6
  br label %74

74:                                               ; preds = %72, %136
  %75 = phi ptr [ %138, %136 ], [ %73, %72 ]
  %76 = phi i64 [ %139, %136 ], [ 0, %72 ]
  %77 = load ptr, ptr %5, align 8, !tbaa !6
  %78 = call ptr @AcquireVirtualCacheView(ptr noundef %75, ptr noundef %77) #26
  %79 = load ptr, ptr %5, align 8, !tbaa !6
  %80 = call ptr @GetCacheViewVirtualPixels(ptr noundef %78, i64 noundef %60, i64 noundef %34, i64 noundef 1, i64 noundef 1, ptr noundef %79) #28
  %81 = icmp eq ptr %80, null
  br i1 %81, label %133, label %82

82:                                               ; preds = %74
  %83 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %78) #26
  %84 = load ptr, ptr %10, align 8, !tbaa !6
  %85 = getelementptr inbounds ptr, ptr %84, i64 %50
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 2
  %88 = load i16, ptr %87, align 2, !tbaa !40
  %89 = load i32, ptr %11, align 4, !tbaa !10
  %90 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %76, i32 5
  %91 = load float, ptr %90, align 8, !tbaa !41
  %92 = call fastcc float @ApplyEvaluateOperator(ptr noundef %86, i16 noundef zeroext %88, i32 noundef %89, float noundef %91) #25
  store float %92, ptr %90, align 8, !tbaa !41
  %93 = load ptr, ptr %10, align 8, !tbaa !6
  %94 = getelementptr inbounds ptr, ptr %93, i64 %50
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 1
  %97 = load i16, ptr %96, align 2, !tbaa !43
  %98 = load i32, ptr %11, align 4, !tbaa !10
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %76, i32 6
  %100 = load float, ptr %99, align 4, !tbaa !44
  %101 = call fastcc float @ApplyEvaluateOperator(ptr noundef %95, i16 noundef zeroext %97, i32 noundef %98, float noundef %100) #25
  store float %101, ptr %99, align 4, !tbaa !44
  %102 = load ptr, ptr %10, align 8, !tbaa !6
  %103 = getelementptr inbounds ptr, ptr %102, i64 %50
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = load i16, ptr %80, align 2, !tbaa !45
  %106 = load i32, ptr %11, align 4, !tbaa !10
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %76, i32 7
  %108 = load float, ptr %107, align 8, !tbaa !46
  %109 = call fastcc float @ApplyEvaluateOperator(ptr noundef %104, i16 noundef zeroext %105, i32 noundef %106, float noundef %108) #25
  store float %109, ptr %107, align 8, !tbaa !46
  %110 = load ptr, ptr %10, align 8, !tbaa !6
  %111 = getelementptr inbounds ptr, ptr %110, i64 %50
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  %114 = load i16, ptr %113, align 2, !tbaa !47
  %115 = xor i16 %114, -1
  %116 = load i32, ptr %11, align 4, !tbaa !10
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %76, i32 8
  %118 = load float, ptr %117, align 4, !tbaa !48
  %119 = call fastcc float @ApplyEvaluateOperator(ptr noundef %112, i16 noundef zeroext %115, i32 noundef %116, float noundef %118) #25
  store float %119, ptr %117, align 4, !tbaa !48
  %120 = load ptr, ptr %2, align 8, !tbaa !6
  %121 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !49
  %123 = icmp eq i32 %122, 12
  br i1 %123, label %124, label %136

124:                                              ; preds = %82
  %125 = load ptr, ptr %10, align 8, !tbaa !6
  %126 = getelementptr inbounds ptr, ptr %125, i64 %50
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = load i16, ptr %83, align 2, !tbaa !50
  %129 = load i32, ptr %11, align 4, !tbaa !10
  %130 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %76, i32 9
  %131 = load float, ptr %130, align 8, !tbaa !51
  %132 = call fastcc float @ApplyEvaluateOperator(ptr noundef %127, i16 noundef zeroext %128, i32 noundef %129, float noundef %131) #25
  store float %132, ptr %130, align 8, !tbaa !51
  br label %136

133:                                              ; preds = %74
  %134 = call ptr @DestroyCacheView(ptr noundef %78) #26
  %135 = load i64, ptr %7, align 8, !tbaa !31
  br label %142

136:                                              ; preds = %82, %124
  %137 = call ptr @DestroyCacheView(ptr noundef %78) #26
  %138 = call ptr @GetNextImageInList(ptr noundef %75) #26
  %139 = add nuw nsw i64 %76, 1
  %140 = load i64, ptr %7, align 8, !tbaa !31
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %74, label %142, !llvm.loop !52

142:                                              ; preds = %136, %59, %70, %133
  %143 = phi i64 [ %135, %133 ], [ %68, %70 ], [ %62, %59 ], [ %140, %136 ]
  %144 = phi i64 [ %76, %133 ], [ 0, %70 ], [ 0, %59 ], [ %139, %136 ]
  call void @qsort(ptr noundef %52, i64 noundef %143, i64 noundef 56, ptr noundef nonnull @IntensityCompare) #26
  %145 = lshr i64 %144, 1
  %146 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %145, i32 5
  %147 = load float, ptr %146, align 8, !tbaa !41
  %148 = call fastcc zeroext i16 @ClampToQuantum(float noundef %147) #25
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 2
  store i16 %148, ptr %149, align 2, !tbaa !40
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %145, i32 6
  %151 = load float, ptr %150, align 4, !tbaa !44
  %152 = call fastcc zeroext i16 @ClampToQuantum(float noundef %151) #25
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 1
  store i16 %152, ptr %153, align 2, !tbaa !43
  %154 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %145, i32 7
  %155 = load float, ptr %154, align 8, !tbaa !46
  %156 = call fastcc zeroext i16 @ClampToQuantum(float noundef %155) #25
  store i16 %156, ptr %61, align 2, !tbaa !45
  %157 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %145, i32 8
  %158 = load float, ptr %157, align 4, !tbaa !48
  %159 = call fastcc zeroext i16 @ClampToQuantum(float noundef %158) #25
  %160 = xor i16 %159, -1
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 0, i32 3
  store i16 %160, ptr %161, align 2, !tbaa !47
  %162 = load ptr, ptr %2, align 8, !tbaa !6
  %163 = getelementptr inbounds %struct._Image, ptr %162, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !49
  %165 = icmp ne i32 %164, 12
  %166 = select i1 %165, i1 true, i1 %58
  br i1 %166, label %172, label %167

167:                                              ; preds = %142
  %168 = getelementptr inbounds i16, ptr %48, i64 %144
  %169 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %145, i32 9
  %170 = load float, ptr %169, align 8, !tbaa !51
  %171 = call fastcc zeroext i16 @ClampToQuantum(float noundef %170) #25
  store i16 %171, ptr %168, align 2, !tbaa !50
  br label %172

172:                                              ; preds = %167, %142
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 1
  %174 = add nuw nsw i64 %60, 1
  %175 = getelementptr inbounds %struct._Image, ptr %162, i64 0, i32 7
  %176 = load i64, ptr %175, align 8, !tbaa !30
  %177 = icmp slt i64 %174, %176
  br i1 %177, label %59, label %178, !llvm.loop !53

178:                                              ; preds = %172, %46
  %179 = load ptr, ptr %4, align 8, !tbaa !6
  %180 = load ptr, ptr %5, align 8, !tbaa !6
  %181 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %179, ptr noundef %180) #28
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %184

184:                                              ; preds = %183, %178
  %185 = load ptr, ptr %9, align 8, !tbaa !6
  %186 = getelementptr inbounds %struct._Image, ptr %185, i64 0, i32 47
  %187 = load ptr, ptr %186, align 8, !tbaa !54
  %188 = icmp eq ptr %187, null
  br i1 %188, label %199, label %189

189:                                              ; preds = %184
  call void @__kmpc_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_EvaluateImages.var)
  %190 = load ptr, ptr %9, align 8, !tbaa !6
  %191 = load i64, ptr %12, align 8, !tbaa !28
  %192 = add nsw i64 %191, 1
  store i64 %192, ptr %12, align 8, !tbaa !28
  %193 = load ptr, ptr %2, align 8, !tbaa !6
  %194 = getelementptr inbounds %struct._Image, ptr %193, i64 0, i32 8
  %195 = load i64, ptr %194, align 8, !tbaa !29
  %196 = call fastcc i32 @SetImageProgress(ptr noundef %190, ptr noundef nonnull @.str.5, i64 noundef %191, i64 noundef %195) #25
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_EvaluateImages.var)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %189, %38
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %199

199:                                              ; preds = %198, %184, %189, %33
  %200 = add nsw i64 %34, 1
  %201 = load i64, ptr %15, align 8, !tbaa !31
  %202 = icmp slt i64 %34, %201
  br i1 %202, label %33, label %203

203:                                              ; preds = %199
  %204 = load i64, ptr %14, align 8, !tbaa !31
  br label %205

205:                                              ; preds = %203, %29
  %206 = phi i64 [ %31, %29 ], [ %204, %203 ]
  %207 = phi i64 [ %30, %29 ], [ %201, %203 ]
  %208 = load i64, ptr %16, align 8, !tbaa !31
  %209 = add nsw i64 %208, %206
  store i64 %209, ptr %14, align 8, !tbaa !31
  %210 = add nsw i64 %208, %207
  %211 = call i64 @llvm.smin.i64(i64 %210, i64 %21)
  store i64 %211, ptr %15, align 8, !tbaa !31
  %212 = icmp sgt i64 %209, %211
  br i1 %212, label %213, label %29

213:                                              ; preds = %205, %23
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  br label %214

214:                                              ; preds = %213, %13
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #5 {
  %1 = tail call i32 @omp_get_thread_num() #25
  ret i32 %1
}

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc float @ApplyEvaluateOperator(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, float noundef %3) unnamed_addr #5 {
  switch i32 %2, label %165 [
    i32 12, label %158
    i32 28, label %5
    i32 1, label %9
    i32 26, label %12
    i32 2, label %20
    i32 24, label %27
    i32 3, label %36
    i32 29, label %43
    i32 18, label %51
    i32 19, label %54
    i32 20, label %57
    i32 4, label %60
    i32 14, label %67
    i32 5, label %81
    i32 27, label %86
    i32 30, label %89
    i32 6, label %92
    i32 21, label %97
    i32 7, label %100
    i32 8, label %103
    i32 22, label %110
    i32 13, label %113
    i32 9, label %120
    i32 10, label %127
    i32 25, label %128
    i32 11, label %137
    i32 31, label %140
    i32 15, label %143
    i32 16, label %147
    i32 17, label %151
    i32 23, label %155
  ]

5:                                                ; preds = %4
  %6 = uitofp i16 %1 to float
  %7 = fadd float %6, %3
  %8 = tail call float @llvm.fabs.f32(float %7)
  br label %165

9:                                                ; preds = %4
  %10 = uitofp i16 %1 to float
  %11 = fadd float %10, %3
  br label %165

12:                                               ; preds = %4
  %13 = uitofp i16 %1 to float
  %14 = fadd float %13, %3
  %15 = fpext float %14 to double
  %16 = fmul double %15, 0x3EF0000000000000
  %17 = tail call double @llvm.floor.f64(double %16)
  %18 = tail call double @llvm.fmuladd.f64(double %17, double -6.553600e+04, double %15)
  %19 = fptrunc double %18 to float
  br label %165

20:                                               ; preds = %4
  %21 = zext i16 %1 to i64
  %22 = fpext float %3 to double
  %23 = fadd double %22, 5.000000e-01
  %24 = fptoui double %23 to i64
  %25 = and i64 %24, %21
  %26 = uitofp i64 %25 to float
  br label %165

27:                                               ; preds = %4
  %28 = uitofp i16 %1 to double
  %29 = fmul double %28, 0x3F1922147658A371
  %30 = fpext float %3 to double
  %31 = fmul double %29, %30
  %32 = tail call double @cos(double noundef %31) #26
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 5.000000e-01, double 5.000000e-01)
  %34 = fmul double %33, 6.553500e+04
  %35 = fptrunc double %34 to float
  br label %165

36:                                               ; preds = %4
  %37 = uitofp i16 %1 to double
  %38 = fpext float %3 to double
  %39 = fcmp oeq float %3, 0.000000e+00
  %40 = select i1 %39, double 1.000000e+00, double %38
  %41 = fdiv double %37, %40
  %42 = fptrunc double %41 to float
  br label %165

43:                                               ; preds = %4
  %44 = fpext float %3 to double
  %45 = fmul double %44, 0x3EF0001000100010
  %46 = uitofp i16 %1 to double
  %47 = fmul double %45, %46
  %48 = tail call double @exp(double noundef %47) #26
  %49 = fmul double %48, 6.553500e+04
  %50 = fptrunc double %49 to float
  br label %165

51:                                               ; preds = %4
  %52 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 2, float noundef %3) #26
  %53 = fptrunc double %52 to float
  br label %165

54:                                               ; preds = %4
  %55 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 4, float noundef %3) #26
  %56 = fptrunc double %55 to float
  br label %165

57:                                               ; preds = %4
  %58 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 5, float noundef %3) #26
  %59 = fptrunc double %58 to float
  br label %165

60:                                               ; preds = %4
  %61 = zext i16 %1 to i64
  %62 = fpext float %3 to double
  %63 = fadd double %62, 5.000000e-01
  %64 = fptoui double %63 to i64
  %65 = shl i64 %61, %64
  %66 = uitofp i64 %65 to float
  br label %165

67:                                               ; preds = %4
  %68 = uitofp i16 %1 to double
  %69 = fmul double %68, 0x3EF0001000100010
  %70 = fcmp ult double %69, 1.000000e-15
  br i1 %70, label %165, label %71

71:                                               ; preds = %67
  %72 = fpext float %3 to double
  %73 = fmul double %72, 0x3EF0001000100010
  %74 = tail call double @llvm.fmuladd.f64(double %73, double %68, double 1.000000e+00)
  %75 = tail call double @log(double noundef %74) #26
  %76 = fmul double %75, 6.553500e+04
  %77 = fadd double %72, 1.000000e+00
  %78 = tail call double @log(double noundef %77) #26
  %79 = fdiv double %76, %78
  %80 = fptrunc double %79 to float
  br label %165

81:                                               ; preds = %4
  %82 = uitofp i16 %1 to double
  %83 = fpext float %3 to double
  %84 = tail call fastcc double @EvaluateMax(double noundef %82, double noundef %83) #25
  %85 = fptrunc double %84 to float
  br label %165

86:                                               ; preds = %4
  %87 = uitofp i16 %1 to float
  %88 = fadd float %87, %3
  br label %165

89:                                               ; preds = %4
  %90 = uitofp i16 %1 to float
  %91 = fadd float %90, %3
  br label %165

92:                                               ; preds = %4
  %93 = uitofp i16 %1 to double
  %94 = fpext float %3 to double
  %95 = tail call fastcc double @MagickMin(double noundef %93, double noundef %94) #25
  %96 = fptrunc double %95 to float
  br label %165

97:                                               ; preds = %4
  %98 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 3, float noundef %3) #26
  %99 = fptrunc double %98 to float
  br label %165

100:                                              ; preds = %4
  %101 = uitofp i16 %1 to float
  %102 = fmul float %101, %3
  br label %165

103:                                              ; preds = %4
  %104 = zext i16 %1 to i64
  %105 = fpext float %3 to double
  %106 = fadd double %105, 5.000000e-01
  %107 = fptoui double %106 to i64
  %108 = or i64 %107, %104
  %109 = uitofp i64 %108 to float
  br label %165

110:                                              ; preds = %4
  %111 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 6, float noundef %3) #26
  %112 = fptrunc double %111 to float
  br label %165

113:                                              ; preds = %4
  %114 = uitofp i16 %1 to double
  %115 = fmul double %114, 0x3EF0001000100010
  %116 = fpext float %3 to double
  %117 = tail call double @pow(double noundef %115, double noundef %116) #26
  %118 = fmul double %117, 6.553500e+04
  %119 = fptrunc double %118 to float
  br label %165

120:                                              ; preds = %4
  %121 = zext i16 %1 to i64
  %122 = fpext float %3 to double
  %123 = fadd double %122, 5.000000e-01
  %124 = fptoui double %123 to i64
  %125 = lshr i64 %121, %124
  %126 = uitofp i64 %125 to float
  br label %165

127:                                              ; preds = %4
  br label %165

128:                                              ; preds = %4
  %129 = uitofp i16 %1 to double
  %130 = fmul double %129, 0x3F1922147658A371
  %131 = fpext float %3 to double
  %132 = fmul double %130, %131
  %133 = tail call double @sin(double noundef %132) #26
  %134 = tail call double @llvm.fmuladd.f64(double %133, double 5.000000e-01, double 5.000000e-01)
  %135 = fmul double %134, 6.553500e+04
  %136 = fptrunc double %135 to float
  br label %165

137:                                              ; preds = %4
  %138 = uitofp i16 %1 to float
  %139 = fsub float %138, %3
  br label %165

140:                                              ; preds = %4
  %141 = uitofp i16 %1 to float
  %142 = fadd float %141, %3
  br label %165

143:                                              ; preds = %4
  %144 = uitofp i16 %1 to float
  %145 = fcmp ole float %144, %3
  %146 = select i1 %145, float 0.000000e+00, float 6.553500e+04
  br label %165

147:                                              ; preds = %4
  %148 = uitofp i16 %1 to float
  %149 = fcmp ole float %148, %3
  %150 = select i1 %149, float 0.000000e+00, float %148
  br label %165

151:                                              ; preds = %4
  %152 = uitofp i16 %1 to float
  %153 = fcmp ogt float %152, %3
  %154 = select i1 %153, float 6.553500e+04, float %152
  br label %165

155:                                              ; preds = %4
  %156 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 1, float noundef %3) #26
  %157 = fptrunc double %156 to float
  br label %165

158:                                              ; preds = %4
  %159 = zext i16 %1 to i64
  %160 = fpext float %3 to double
  %161 = fadd double %160, 5.000000e-01
  %162 = fptoui double %161 to i64
  %163 = xor i64 %162, %159
  %164 = uitofp i64 %163 to float
  br label %165

165:                                              ; preds = %67, %71, %4, %158, %155, %151, %147, %143, %140, %137, %128, %127, %120, %113, %110, %103, %100, %97, %92, %89, %86, %81, %60, %57, %54, %51, %43, %36, %27, %20, %12, %9, %5
  %166 = phi float [ 0.000000e+00, %4 ], [ %157, %155 ], [ %154, %151 ], [ %150, %147 ], [ %146, %143 ], [ %142, %140 ], [ %139, %137 ], [ %136, %128 ], [ %3, %127 ], [ %126, %120 ], [ %119, %113 ], [ %112, %110 ], [ %109, %103 ], [ %102, %100 ], [ %99, %97 ], [ %96, %92 ], [ %91, %89 ], [ %88, %86 ], [ %85, %81 ], [ %80, %71 ], [ 0.000000e+00, %67 ], [ %66, %60 ], [ %59, %57 ], [ %56, %54 ], [ %53, %51 ], [ %50, %43 ], [ %42, %36 ], [ %35, %27 ], [ %26, %20 ], [ %19, %12 ], [ %11, %9 ], [ %8, %5 ], [ %164, %158 ]
  ret float %166
}

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = tail call fastcc float @MagickPixelIntensity(ptr noundef %1) #25
  %4 = fptosi float %3 to i32
  %5 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #25
  %6 = fptosi float %5 to i32
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #10 {
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
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #11

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #5 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #4
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef %1, ptr noundef nonnull %10) #26
  %12 = load ptr, ptr %6, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #26
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
declare !callback !56 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @EvaluateImages.omp_outlined.6(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %11, ptr nocapture noundef nonnull align 8 dereferenceable(8) %12) #3 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = load ptr, ptr %2, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !29
  %21 = add nsw i64 %20, -1
  %22 = icmp sgt i64 %20, 0
  br i1 %22, label %23, label %280

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 0, ptr %14, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 %21, ptr %15, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 1, ptr %16, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #4
  store i32 0, ptr %17, align 4, !tbaa !10
  %24 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %24, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %25 = load i64, ptr %15, align 8
  %26 = call i64 @llvm.smin.i64(i64 %25, i64 %21)
  store i64 %26, ptr %15, align 8, !tbaa !31
  %27 = load i64, ptr %14, align 8, !tbaa !31
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %279, label %29

29:                                               ; preds = %23, %271
  %30 = phi i64 [ %277, %271 ], [ %26, %23 ]
  %31 = phi i64 [ %275, %271 ], [ %27, %23 ]
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %271, label %33

33:                                               ; preds = %29, %265
  %34 = phi i64 [ %266, %265 ], [ %31, %29 ]
  %35 = call fastcc i32 @GetOpenMPThreadId() #25
  %36 = load i32, ptr %3, align 4, !tbaa !10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %265, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %4, align 8, !tbaa !6
  %40 = load ptr, ptr %2, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !30
  %43 = load ptr, ptr %5, align 8, !tbaa !6
  %44 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %34, i64 noundef %42, i64 noundef 1, ptr noundef %43) #28
  %45 = icmp eq ptr %44, null
  br i1 %45, label %264, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %4, align 8, !tbaa !6
  %48 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %47) #26
  %49 = load ptr, ptr %6, align 8, !tbaa !6
  %50 = sext i32 %35 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = load ptr, ptr %2, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !30
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %46, %57
  %58 = phi i64 [ %60, %57 ], [ 0, %46 ]
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %59, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !36
  %60 = add nuw nsw i64 %58, 1
  %61 = load ptr, ptr %2, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 7
  %63 = load i64, ptr %62, align 8, !tbaa !30
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %57, label %65, !llvm.loop !58

65:                                               ; preds = %57, %46
  %66 = load i64, ptr %9, align 8, !tbaa !31
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %161

68:                                               ; preds = %65
  %69 = load ptr, ptr %8, align 8, !tbaa !6
  br label %70

70:                                               ; preds = %68, %155
  %71 = phi ptr [ %157, %155 ], [ %69, %68 ]
  %72 = phi i64 [ %158, %155 ], [ 0, %68 ]
  %73 = load ptr, ptr %5, align 8, !tbaa !6
  %74 = call ptr @AcquireVirtualCacheView(ptr noundef %71, ptr noundef %73) #26
  %75 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  %76 = load i64, ptr %75, align 8, !tbaa !30
  %77 = load ptr, ptr %5, align 8, !tbaa !6
  %78 = call ptr @GetCacheViewVirtualPixels(ptr noundef %74, i64 noundef 0, i64 noundef %34, i64 noundef %76, i64 noundef 1, ptr noundef %77) #28
  %79 = icmp eq ptr %78, null
  br i1 %79, label %153, label %80

80:                                               ; preds = %70
  %81 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %74) #26
  %82 = load i64, ptr %75, align 8, !tbaa !30
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %155

84:                                               ; preds = %80
  %85 = icmp eq i64 %72, 0
  %86 = icmp eq ptr %81, null
  br label %87

87:                                               ; preds = %84, %148
  %88 = phi ptr [ %78, %84 ], [ %149, %148 ]
  %89 = phi i64 [ 0, %84 ], [ %150, %148 ]
  %90 = load ptr, ptr %10, align 8, !tbaa !6
  %91 = getelementptr inbounds ptr, ptr %90, i64 %50
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 2
  %94 = load i16, ptr %93, align 2, !tbaa !40
  %95 = load i32, ptr %11, align 4
  %96 = select i1 %85, i32 1, i32 %95
  %97 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %89, i32 5
  %98 = load float, ptr %97, align 8, !tbaa !41
  %99 = call fastcc float @ApplyEvaluateOperator(ptr noundef %92, i16 noundef zeroext %94, i32 noundef %96, float noundef %98) #25
  store float %99, ptr %97, align 8, !tbaa !41
  %100 = load ptr, ptr %10, align 8, !tbaa !6
  %101 = getelementptr inbounds ptr, ptr %100, i64 %50
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 1
  %104 = load i16, ptr %103, align 2, !tbaa !43
  %105 = load i32, ptr %11, align 4
  %106 = select i1 %85, i32 1, i32 %105
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %89, i32 6
  %108 = load float, ptr %107, align 4, !tbaa !44
  %109 = call fastcc float @ApplyEvaluateOperator(ptr noundef %102, i16 noundef zeroext %104, i32 noundef %106, float noundef %108) #25
  store float %109, ptr %107, align 4, !tbaa !44
  %110 = load ptr, ptr %10, align 8, !tbaa !6
  %111 = getelementptr inbounds ptr, ptr %110, i64 %50
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = load i16, ptr %88, align 2, !tbaa !45
  %114 = load i32, ptr %11, align 4
  %115 = select i1 %85, i32 1, i32 %114
  %116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %89, i32 7
  %117 = load float, ptr %116, align 8, !tbaa !46
  %118 = call fastcc float @ApplyEvaluateOperator(ptr noundef %112, i16 noundef zeroext %113, i32 noundef %115, float noundef %117) #25
  store float %118, ptr %116, align 8, !tbaa !46
  %119 = load ptr, ptr %10, align 8, !tbaa !6
  %120 = getelementptr inbounds ptr, ptr %119, i64 %50
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 3
  %123 = load i16, ptr %122, align 2, !tbaa !47
  %124 = xor i16 %123, -1
  %125 = load i32, ptr %11, align 4
  %126 = select i1 %85, i32 1, i32 %125
  %127 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %89, i32 8
  %128 = load float, ptr %127, align 4, !tbaa !48
  %129 = call fastcc float @ApplyEvaluateOperator(ptr noundef %121, i16 noundef zeroext %124, i32 noundef %126, float noundef %128) #25
  store float %129, ptr %127, align 4, !tbaa !48
  %130 = load ptr, ptr %2, align 8, !tbaa !6
  %131 = getelementptr inbounds %struct._Image, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !49
  %133 = icmp eq i32 %132, 12
  br i1 %133, label %134, label %148

134:                                              ; preds = %87
  %135 = load ptr, ptr %10, align 8, !tbaa !6
  %136 = getelementptr inbounds ptr, ptr %135, i64 %50
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  br i1 %86, label %141, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds i16, ptr %81, i64 %89
  %140 = load i16, ptr %139, align 2, !tbaa !50
  br label %141

141:                                              ; preds = %134, %138
  %142 = phi i16 [ %140, %138 ], [ 0, %134 ]
  %143 = load i32, ptr %11, align 4
  %144 = select i1 %85, i32 1, i32 %143
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %89, i32 9
  %146 = load float, ptr %145, align 8, !tbaa !51
  %147 = call fastcc float @ApplyEvaluateOperator(ptr noundef %137, i16 noundef zeroext %142, i32 noundef %144, float noundef %146) #25
  store float %147, ptr %145, align 8, !tbaa !51
  br label %148

148:                                              ; preds = %141, %87
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 1
  %150 = add nuw nsw i64 %89, 1
  %151 = load i64, ptr %75, align 8, !tbaa !30
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %87, label %155, !llvm.loop !59

153:                                              ; preds = %70
  %154 = call ptr @DestroyCacheView(ptr noundef %74) #26
  br label %161

155:                                              ; preds = %148, %80
  %156 = call ptr @DestroyCacheView(ptr noundef %74) #26
  %157 = call ptr @GetNextImageInList(ptr noundef nonnull %71) #26
  %158 = add nuw nsw i64 %72, 1
  %159 = load i64, ptr %9, align 8, !tbaa !31
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %70, label %161, !llvm.loop !60

161:                                              ; preds = %155, %65, %153
  %162 = load i32, ptr %11, align 4, !tbaa !10
  %163 = load ptr, ptr %2, align 8, !tbaa !6
  %164 = getelementptr inbounds %struct._Image, ptr %163, i64 0, i32 7
  %165 = load i64, ptr %164, align 8, !tbaa !30
  switch i32 %162, label %208 [
    i32 27, label %166
    i32 7, label %183
  ]

166:                                              ; preds = %161
  %167 = icmp sgt i64 %165, 0
  br i1 %167, label %168, label %244

168:                                              ; preds = %166
  %169 = load i64, ptr %9, align 8, !tbaa !31
  %170 = uitofp i64 %169 to float
  %171 = insertelement <4 x float> poison, float %170, i64 0
  %172 = shufflevector <4 x float> %171, <4 x float> poison, <4 x i32> zeroinitializer
  br label %173

173:                                              ; preds = %168, %173
  %174 = phi i64 [ 0, %168 ], [ %181, %173 ]
  %175 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %174, i32 5
  %176 = load <4 x float>, ptr %175, align 8, !tbaa !37
  %177 = fdiv <4 x float> %176, %172
  store <4 x float> %177, ptr %175, align 8, !tbaa !37
  %178 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %174, i32 9
  %179 = load float, ptr %178, align 8, !tbaa !51
  %180 = fdiv float %179, %170
  store float %180, ptr %178, align 8, !tbaa !51
  %181 = add nuw nsw i64 %174, 1
  %182 = icmp eq i64 %181, %165
  br i1 %182, label %208, label %173, !llvm.loop !61

183:                                              ; preds = %161
  %184 = icmp sgt i64 %165, 0
  br i1 %184, label %185, label %244

185:                                              ; preds = %183
  %186 = load i64, ptr %9, align 8, !tbaa !31
  %187 = add i64 %186, -1
  %188 = icmp sgt i64 %187, 0
  br label %189

189:                                              ; preds = %185, %205
  %190 = phi i64 [ 0, %185 ], [ %206, %205 ]
  br i1 %188, label %191, label %205

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %190, i32 5
  %193 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %190, i32 9
  %194 = load <4 x float>, ptr %192, align 8, !tbaa !37
  %195 = load float, ptr %193, align 8, !tbaa !51
  br label %196

196:                                              ; preds = %191, %196
  %197 = phi float [ %195, %191 ], [ %201, %196 ]
  %198 = phi i64 [ 0, %191 ], [ %202, %196 ]
  %199 = phi <4 x float> [ %194, %191 ], [ %200, %196 ]
  %200 = fmul <4 x float> %199, <float 0x3EF0001000000000, float 0x3EF0001000000000, float 0x3EF0001000000000, float 0x3EF0001000000000>
  %201 = fmul float %197, 0x3EF0001000000000
  %202 = add nuw nsw i64 %198, 1
  %203 = icmp eq i64 %202, %187
  br i1 %203, label %204, label %196, !llvm.loop !62

204:                                              ; preds = %196
  store <4 x float> %200, ptr %192, align 8, !tbaa !37
  store float %201, ptr %193, align 8, !tbaa !51
  br label %205

205:                                              ; preds = %204, %189
  %206 = add nuw nsw i64 %190, 1
  %207 = icmp eq i64 %206, %165
  br i1 %207, label %208, label %189, !llvm.loop !63

208:                                              ; preds = %205, %173, %161
  %209 = icmp sgt i64 %165, 0
  br i1 %209, label %210, label %244

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct._Image, ptr %163, i64 0, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !49
  %213 = icmp ne i32 %212, 12
  %214 = icmp eq ptr %48, null
  %215 = select i1 %213, i1 true, i1 %214
  br label %216

216:                                              ; preds = %210, %240
  %217 = phi ptr [ %44, %210 ], [ %241, %240 ]
  %218 = phi i64 [ 0, %210 ], [ %242, %240 ]
  %219 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %218, i32 5
  %220 = load float, ptr %219, align 8, !tbaa !41
  %221 = call fastcc zeroext i16 @ClampToQuantum(float noundef %220) #25
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %217, i64 0, i32 2
  store i16 %221, ptr %222, align 2, !tbaa !40
  %223 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %218, i32 6
  %224 = load float, ptr %223, align 4, !tbaa !44
  %225 = call fastcc zeroext i16 @ClampToQuantum(float noundef %224) #25
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %217, i64 0, i32 1
  store i16 %225, ptr %226, align 2, !tbaa !43
  %227 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %218, i32 7
  %228 = load float, ptr %227, align 8, !tbaa !46
  %229 = call fastcc zeroext i16 @ClampToQuantum(float noundef %228) #25
  store i16 %229, ptr %217, align 2, !tbaa !45
  %230 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %218, i32 8
  %231 = load float, ptr %230, align 4, !tbaa !48
  %232 = call fastcc zeroext i16 @ClampToQuantum(float noundef %231) #25
  %233 = xor i16 %232, -1
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %217, i64 0, i32 3
  store i16 %233, ptr %234, align 2, !tbaa !47
  br i1 %215, label %240, label %235

235:                                              ; preds = %216
  %236 = getelementptr inbounds i16, ptr %48, i64 %218
  %237 = getelementptr inbounds %struct._MagickPixelPacket, ptr %52, i64 %218, i32 9
  %238 = load float, ptr %237, align 8, !tbaa !51
  %239 = call fastcc zeroext i16 @ClampToQuantum(float noundef %238) #25
  store i16 %239, ptr %236, align 2, !tbaa !50
  br label %240

240:                                              ; preds = %235, %216
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %217, i64 1
  %242 = add nuw nsw i64 %218, 1
  %243 = icmp eq i64 %242, %165
  br i1 %243, label %244, label %216, !llvm.loop !64

244:                                              ; preds = %240, %166, %183, %208
  %245 = load ptr, ptr %4, align 8, !tbaa !6
  %246 = load ptr, ptr %5, align 8, !tbaa !6
  %247 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %245, ptr noundef %246) #28
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %250

250:                                              ; preds = %249, %244
  %251 = load ptr, ptr %8, align 8, !tbaa !6
  %252 = getelementptr inbounds %struct._Image, ptr %251, i64 0, i32 47
  %253 = load ptr, ptr %252, align 8, !tbaa !54
  %254 = icmp eq ptr %253, null
  br i1 %254, label %265, label %255

255:                                              ; preds = %250
  call void @__kmpc_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_EvaluateImages.var)
  %256 = load ptr, ptr %8, align 8, !tbaa !6
  %257 = load i64, ptr %12, align 8, !tbaa !28
  %258 = add nsw i64 %257, 1
  store i64 %258, ptr %12, align 8, !tbaa !28
  %259 = load ptr, ptr %2, align 8, !tbaa !6
  %260 = getelementptr inbounds %struct._Image, ptr %259, i64 0, i32 8
  %261 = load i64, ptr %260, align 8, !tbaa !29
  %262 = call fastcc i32 @SetImageProgress(ptr noundef %256, ptr noundef nonnull @.str.5, i64 noundef %257, i64 noundef %261) #25
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %24, ptr nonnull @.gomp_critical_user_MagickCore_EvaluateImages.var)
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %255, %38
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %265

265:                                              ; preds = %264, %250, %255, %33
  %266 = add nsw i64 %34, 1
  %267 = load i64, ptr %15, align 8, !tbaa !31
  %268 = icmp slt i64 %34, %267
  br i1 %268, label %33, label %269

269:                                              ; preds = %265
  %270 = load i64, ptr %14, align 8, !tbaa !31
  br label %271

271:                                              ; preds = %269, %29
  %272 = phi i64 [ %31, %29 ], [ %270, %269 ]
  %273 = phi i64 [ %30, %29 ], [ %267, %269 ]
  %274 = load i64, ptr %16, align 8, !tbaa !31
  %275 = add nsw i64 %274, %272
  store i64 %275, ptr %14, align 8, !tbaa !31
  %276 = add nsw i64 %274, %273
  %277 = call i64 @llvm.smin.i64(i64 %276, i64 %21)
  store i64 %277, ptr %15, align 8, !tbaa !31
  %278 = icmp sgt i64 %275, %277
  br i1 %278, label %279, label %29

279:                                              ; preds = %271, %23
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  br label %280

280:                                              ; preds = %279, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyPixelThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #26
  store ptr %10, ptr %6, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !65

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #26
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %7) #26
  store ptr %10, ptr %6, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !66

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishAlignedMemory(ptr noundef %0) #26
  ret ptr %16
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare double @GenerateDifferentialNoise(ptr noundef, i16 noundef zeroext, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @EvaluateMax(double noundef %0, double noundef %1) unnamed_addr #10 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #10 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @MagickPixelIntensity(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !41
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !46
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  ret float %20
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @EvaluateImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #3 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %191

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 0, ptr %12, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 %19, ptr %13, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 1, ptr %14, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  store i32 0, ptr %15, align 4, !tbaa !10
  %22 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %13, align 8, !tbaa !31
  %25 = load i64, ptr %12, align 8, !tbaa !31
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %190, label %27

27:                                               ; preds = %21, %182
  %28 = phi i64 [ %188, %182 ], [ %24, %21 ]
  %29 = phi i64 [ %186, %182 ], [ %25, %21 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %182, label %31

31:                                               ; preds = %27, %176
  %32 = phi i64 [ %177, %176 ], [ %29, %27 ]
  %33 = call fastcc i32 @GetOpenMPThreadId() #25
  %34 = load i32, ptr %3, align 4, !tbaa !10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %176, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %4, align 8, !tbaa !6
  %38 = load ptr, ptr %2, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct._Image, ptr %38, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !30
  %41 = load ptr, ptr %5, align 8, !tbaa !6
  %42 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %37, i64 noundef 0, i64 noundef %32, i64 noundef %40, i64 noundef 1, ptr noundef %41) #28
  %43 = icmp eq ptr %42, null
  br i1 %43, label %175, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %4, align 8, !tbaa !6
  %46 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %45) #26
  %47 = load ptr, ptr %2, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !30
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %156

51:                                               ; preds = %44
  %52 = sext i32 %33 to i64
  %53 = icmp ne ptr %46, null
  br label %54

54:                                               ; preds = %51, %149
  %55 = phi i64 [ 0, %51 ], [ %151, %149 ]
  %56 = phi ptr [ %42, %51 ], [ %150, %149 ]
  %57 = load i32, ptr %6, align 4, !tbaa !10
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr %7, align 8, !tbaa !6
  %62 = getelementptr inbounds ptr, ptr %61, i64 %52
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 2
  %65 = load i16, ptr %64, align 2, !tbaa !40
  %66 = load i32, ptr %8, align 4, !tbaa !10
  %67 = load double, ptr %9, align 8, !tbaa !12
  %68 = fptrunc double %67 to float
  %69 = call fastcc float @ApplyEvaluateOperator(ptr noundef %63, i16 noundef zeroext %65, i32 noundef %66, float noundef %68) #25
  %70 = call fastcc zeroext i16 @ClampToQuantum(float noundef %69) #25
  store i16 %70, ptr %64, align 2, !tbaa !40
  %71 = load i32, ptr %6, align 4, !tbaa !10
  br label %72

72:                                               ; preds = %60, %54
  %73 = phi i32 [ %71, %60 ], [ %57, %54 ]
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %7, align 8, !tbaa !6
  %78 = getelementptr inbounds ptr, ptr %77, i64 %52
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 1
  %81 = load i16, ptr %80, align 2, !tbaa !43
  %82 = load i32, ptr %8, align 4, !tbaa !10
  %83 = load double, ptr %9, align 8, !tbaa !12
  %84 = fptrunc double %83 to float
  %85 = call fastcc float @ApplyEvaluateOperator(ptr noundef %79, i16 noundef zeroext %81, i32 noundef %82, float noundef %84) #25
  %86 = call fastcc zeroext i16 @ClampToQuantum(float noundef %85) #25
  store i16 %86, ptr %80, align 2, !tbaa !43
  %87 = load i32, ptr %6, align 4, !tbaa !10
  br label %88

88:                                               ; preds = %76, %72
  %89 = phi i32 [ %87, %76 ], [ %73, %72 ]
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %7, align 8, !tbaa !6
  %94 = getelementptr inbounds ptr, ptr %93, i64 %52
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = load i16, ptr %56, align 2, !tbaa !45
  %97 = load i32, ptr %8, align 4, !tbaa !10
  %98 = load double, ptr %9, align 8, !tbaa !12
  %99 = fptrunc double %98 to float
  %100 = call fastcc float @ApplyEvaluateOperator(ptr noundef %95, i16 noundef zeroext %96, i32 noundef %97, float noundef %99) #25
  %101 = call fastcc zeroext i16 @ClampToQuantum(float noundef %100) #25
  store i16 %101, ptr %56, align 2, !tbaa !45
  %102 = load i32, ptr %6, align 4, !tbaa !10
  br label %103

103:                                              ; preds = %92, %88
  %104 = phi i32 [ %102, %92 ], [ %89, %88 ]
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %133, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %2, align 8, !tbaa !6
  %109 = getelementptr inbounds %struct._Image, ptr %108, i64 0, i32 6
  %110 = load i32, ptr %109, align 8, !tbaa !68
  %111 = icmp eq i32 %110, 0
  %112 = load ptr, ptr %7, align 8, !tbaa !6
  %113 = getelementptr inbounds ptr, ptr %112, i64 %52
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 3
  %116 = load i16, ptr %115, align 2, !tbaa !47
  br i1 %111, label %117, label %123

117:                                              ; preds = %107
  %118 = load i32, ptr %8, align 4, !tbaa !10
  %119 = load double, ptr %9, align 8, !tbaa !12
  %120 = fptrunc double %119 to float
  %121 = call fastcc float @ApplyEvaluateOperator(ptr noundef %114, i16 noundef zeroext %116, i32 noundef %118, float noundef %120) #25
  %122 = call fastcc zeroext i16 @ClampToQuantum(float noundef %121) #25
  br label %131

123:                                              ; preds = %107
  %124 = xor i16 %116, -1
  %125 = load i32, ptr %8, align 4, !tbaa !10
  %126 = load double, ptr %9, align 8, !tbaa !12
  %127 = fptrunc double %126 to float
  %128 = call fastcc float @ApplyEvaluateOperator(ptr noundef %114, i16 noundef zeroext %124, i32 noundef %125, float noundef %127) #25
  %129 = call fastcc zeroext i16 @ClampToQuantum(float noundef %128) #25
  %130 = xor i16 %129, -1
  br label %131

131:                                              ; preds = %123, %117
  %132 = phi i16 [ %122, %117 ], [ %130, %123 ]
  store i16 %132, ptr %115, align 2, !tbaa !47
  br label %133

133:                                              ; preds = %131, %103
  %134 = load i32, ptr %6, align 4, !tbaa !10
  %135 = and i32 %134, 32
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %136, i1 %53, i1 false
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = getelementptr inbounds i16, ptr %46, i64 %55
  %140 = load ptr, ptr %7, align 8, !tbaa !6
  %141 = getelementptr inbounds ptr, ptr %140, i64 %52
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  %143 = load i16, ptr %139, align 2, !tbaa !50
  %144 = load i32, ptr %8, align 4, !tbaa !10
  %145 = load double, ptr %9, align 8, !tbaa !12
  %146 = fptrunc double %145 to float
  %147 = call fastcc float @ApplyEvaluateOperator(ptr noundef %142, i16 noundef zeroext %143, i32 noundef %144, float noundef %146) #25
  %148 = call fastcc zeroext i16 @ClampToQuantum(float noundef %147) #25
  store i16 %148, ptr %139, align 2, !tbaa !50
  br label %149

149:                                              ; preds = %138, %133
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %151 = add nuw nsw i64 %55, 1
  %152 = load ptr, ptr %2, align 8, !tbaa !6
  %153 = getelementptr inbounds %struct._Image, ptr %152, i64 0, i32 7
  %154 = load i64, ptr %153, align 8, !tbaa !30
  %155 = icmp slt i64 %151, %154
  br i1 %155, label %54, label %156, !llvm.loop !69

156:                                              ; preds = %149, %44
  %157 = load ptr, ptr %4, align 8, !tbaa !6
  %158 = load ptr, ptr %5, align 8, !tbaa !6
  %159 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %157, ptr noundef %158) #28
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %162

162:                                              ; preds = %161, %156
  %163 = load ptr, ptr %2, align 8, !tbaa !6
  %164 = getelementptr inbounds %struct._Image, ptr %163, i64 0, i32 47
  %165 = load ptr, ptr %164, align 8, !tbaa !54
  %166 = icmp eq ptr %165, null
  br i1 %166, label %176, label %167

167:                                              ; preds = %162
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_EvaluateImageChannel.var)
  %168 = load ptr, ptr %2, align 8, !tbaa !6
  %169 = load i64, ptr %10, align 8, !tbaa !28
  %170 = add nsw i64 %169, 1
  store i64 %170, ptr %10, align 8, !tbaa !28
  %171 = getelementptr inbounds %struct._Image, ptr %168, i64 0, i32 8
  %172 = load i64, ptr %171, align 8, !tbaa !29
  %173 = call fastcc i32 @SetImageProgress(ptr noundef %168, ptr noundef nonnull @.str.5, i64 noundef %169, i64 noundef %172) #25
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_EvaluateImageChannel.var)
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167, %36
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %176

176:                                              ; preds = %175, %162, %167, %31
  %177 = add nsw i64 %32, 1
  %178 = load i64, ptr %13, align 8, !tbaa !31
  %179 = icmp slt i64 %32, %178
  br i1 %179, label %31, label %180

180:                                              ; preds = %176
  %181 = load i64, ptr %12, align 8, !tbaa !31
  br label %182

182:                                              ; preds = %180, %27
  %183 = phi i64 [ %29, %27 ], [ %181, %180 ]
  %184 = phi i64 [ %28, %27 ], [ %178, %180 ]
  %185 = load i64, ptr %14, align 8, !tbaa !31
  %186 = add nsw i64 %185, %183
  store i64 %186, ptr %12, align 8, !tbaa !31
  %187 = add nsw i64 %185, %184
  %188 = call i64 @llvm.smin.i64(i64 %187, i64 %19)
  store i64 %188, ptr %13, align 8, !tbaa !31
  %189 = icmp sgt i64 %186, %188
  br i1 %189, label %190, label %27

190:                                              ; preds = %182, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  br label %191

191:                                              ; preds = %190, %11
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FunctionImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @FunctionImageChannel(ptr noundef %0, i32 noundef 47, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #25
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FunctionImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !6
  store i32 %1, ptr %8, align 4, !tbaa !10
  store i32 %2, ptr %9, align 4, !tbaa !10
  store i64 %3, ptr %10, align 8, !tbaa !31
  store ptr %4, ptr %11, align 8, !tbaa !6
  store ptr %5, ptr %12, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1016, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #26
  br label %23

23:                                               ; preds = %20, %6
  %24 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #26
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %27) #26
  br label %56

28:                                               ; preds = %23
  %29 = tail call i32 @AccelerateFunctionImage(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  store i32 1, ptr %14, align 4, !tbaa !10
  store i64 0, ptr %15, align 8, !tbaa !28
  %32 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %5) #26
  store ptr %32, ptr %13, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !29
  %35 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %36 = shl i64 %35, 5
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %50

46:                                               ; preds = %41, %38, %31
  %47 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %48 = icmp ult i64 %47, 2
  %49 = select i1 %48, i64 1, i64 2
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i64 [ %45, %44 ], [ %49, %46 ]
  %52 = trunc i64 %51 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %52)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @FunctionImageChannel.omp_outlined, ptr nonnull %7, ptr nonnull %14, ptr nonnull %13, ptr nonnull %12, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, ptr nonnull %15)
  %53 = load ptr, ptr %13, align 8, !tbaa !6
  %54 = call ptr @DestroyCacheView(ptr noundef %53) #26
  %55 = load i32, ptr %14, align 4, !tbaa !10
  br label %56

56:                                               ; preds = %28, %50, %26
  %57 = phi i32 [ 0, %26 ], [ %55, %50 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  ret i32 %57
}

; Function Attrs: optsize
declare i32 @AccelerateFunctionImage(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @FunctionImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #3 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !29
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %168

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  store i64 0, ptr %12, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  store i64 %19, ptr %13, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  store i64 1, ptr %14, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  store i32 0, ptr %15, align 4, !tbaa !10
  %22 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %13, align 8, !tbaa !31
  %25 = load i64, ptr %12, align 8, !tbaa !31
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %167, label %27

27:                                               ; preds = %21, %159
  %28 = phi i64 [ %165, %159 ], [ %24, %21 ]
  %29 = phi i64 [ %163, %159 ], [ %25, %21 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %159, label %31

31:                                               ; preds = %27, %153
  %32 = phi i64 [ %154, %153 ], [ %29, %27 ]
  %33 = load i32, ptr %3, align 4, !tbaa !10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %153, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !6
  %37 = load ptr, ptr %2, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !30
  %40 = load ptr, ptr %5, align 8, !tbaa !6
  %41 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %36, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %40) #28
  %42 = icmp eq ptr %41, null
  br i1 %42, label %152, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %4, align 8, !tbaa !6
  %45 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %44) #26
  %46 = load ptr, ptr %2, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !30
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %133

50:                                               ; preds = %43
  %51 = icmp ne ptr %45, null
  br label %52

52:                                               ; preds = %50, %126
  %53 = phi ptr [ %41, %50 ], [ %127, %126 ]
  %54 = phi i64 [ 0, %50 ], [ %128, %126 ]
  %55 = load i32, ptr %6, align 4, !tbaa !10
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !40
  %61 = load i32, ptr %7, align 4, !tbaa !10
  %62 = load i64, ptr %8, align 8, !tbaa !31
  %63 = load ptr, ptr %9, align 8, !tbaa !6
  %64 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %60, i32 noundef %61, i64 noundef %62, ptr noundef %63) #25
  store i16 %64, ptr %59, align 2, !tbaa !40
  %65 = load i32, ptr %6, align 4, !tbaa !10
  br label %66

66:                                               ; preds = %58, %52
  %67 = phi i32 [ %65, %58 ], [ %55, %52 ]
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !43
  %73 = load i32, ptr %7, align 4, !tbaa !10
  %74 = load i64, ptr %8, align 8, !tbaa !31
  %75 = load ptr, ptr %9, align 8, !tbaa !6
  %76 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %72, i32 noundef %73, i64 noundef %74, ptr noundef %75) #25
  store i16 %76, ptr %71, align 2, !tbaa !43
  %77 = load i32, ptr %6, align 4, !tbaa !10
  br label %78

78:                                               ; preds = %70, %66
  %79 = phi i32 [ %77, %70 ], [ %67, %66 ]
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = load i16, ptr %53, align 2, !tbaa !45
  %84 = load i32, ptr %7, align 4, !tbaa !10
  %85 = load i64, ptr %8, align 8, !tbaa !31
  %86 = load ptr, ptr %9, align 8, !tbaa !6
  %87 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %83, i32 noundef %84, i64 noundef %85, ptr noundef %86) #25
  store i16 %87, ptr %53, align 2, !tbaa !45
  %88 = load i32, ptr %6, align 4, !tbaa !10
  br label %89

89:                                               ; preds = %82, %78
  %90 = phi i32 [ %88, %82 ], [ %79, %78 ]
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %2, align 8, !tbaa !6
  %95 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !68
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 3
  %99 = load i16, ptr %98, align 2, !tbaa !47
  br i1 %97, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, ptr %7, align 4, !tbaa !10
  %102 = load i64, ptr %8, align 8, !tbaa !31
  %103 = load ptr, ptr %9, align 8, !tbaa !6
  %104 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %99, i32 noundef %101, i64 noundef %102, ptr noundef %103) #25
  br label %112

105:                                              ; preds = %93
  %106 = xor i16 %99, -1
  %107 = load i32, ptr %7, align 4, !tbaa !10
  %108 = load i64, ptr %8, align 8, !tbaa !31
  %109 = load ptr, ptr %9, align 8, !tbaa !6
  %110 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %106, i32 noundef %107, i64 noundef %108, ptr noundef %109) #25
  %111 = xor i16 %110, -1
  br label %112

112:                                              ; preds = %105, %100
  %113 = phi i16 [ %104, %100 ], [ %111, %105 ]
  store i16 %113, ptr %98, align 2, !tbaa !47
  br label %114

114:                                              ; preds = %112, %89
  %115 = load i32, ptr %6, align 4, !tbaa !10
  %116 = and i32 %115, 32
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, i1 %51, i1 false
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = getelementptr inbounds i16, ptr %45, i64 %54
  %121 = load i16, ptr %120, align 2, !tbaa !50
  %122 = load i32, ptr %7, align 4, !tbaa !10
  %123 = load i64, ptr %8, align 8, !tbaa !31
  %124 = load ptr, ptr %9, align 8, !tbaa !6
  %125 = call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %121, i32 noundef %122, i64 noundef %123, ptr noundef %124) #25
  store i16 %125, ptr %120, align 2, !tbaa !50
  br label %126

126:                                              ; preds = %119, %114
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  %128 = add nuw nsw i64 %54, 1
  %129 = load ptr, ptr %2, align 8, !tbaa !6
  %130 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 7
  %131 = load i64, ptr %130, align 8, !tbaa !30
  %132 = icmp slt i64 %128, %131
  br i1 %132, label %52, label %133, !llvm.loop !70

133:                                              ; preds = %126, %43
  %134 = load ptr, ptr %4, align 8, !tbaa !6
  %135 = load ptr, ptr %5, align 8, !tbaa !6
  %136 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %134, ptr noundef %135) #28
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %139

139:                                              ; preds = %138, %133
  %140 = load ptr, ptr %2, align 8, !tbaa !6
  %141 = getelementptr inbounds %struct._Image, ptr %140, i64 0, i32 47
  %142 = load ptr, ptr %141, align 8, !tbaa !54
  %143 = icmp eq ptr %142, null
  br i1 %143, label %153, label %144

144:                                              ; preds = %139
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_FunctionImageChannel.var)
  %145 = load ptr, ptr %2, align 8, !tbaa !6
  %146 = load i64, ptr %10, align 8, !tbaa !28
  %147 = add nsw i64 %146, 1
  store i64 %147, ptr %10, align 8, !tbaa !28
  %148 = getelementptr inbounds %struct._Image, ptr %145, i64 0, i32 8
  %149 = load i64, ptr %148, align 8, !tbaa !29
  %150 = call fastcc i32 @SetImageProgress(ptr noundef %145, ptr noundef nonnull @.str.8, i64 noundef %146, i64 noundef %149) #25
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_FunctionImageChannel.var)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144, %35
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %153

153:                                              ; preds = %152, %139, %144, %31
  %154 = add nsw i64 %32, 1
  %155 = load i64, ptr %13, align 8, !tbaa !31
  %156 = icmp slt i64 %32, %155
  br i1 %156, label %31, label %157

157:                                              ; preds = %153
  %158 = load i64, ptr %12, align 8, !tbaa !31
  br label %159

159:                                              ; preds = %157, %27
  %160 = phi i64 [ %29, %27 ], [ %158, %157 ]
  %161 = phi i64 [ %28, %27 ], [ %155, %157 ]
  %162 = load i64, ptr %14, align 8, !tbaa !31
  %163 = add nsw i64 %162, %160
  store i64 %163, ptr %12, align 8, !tbaa !31
  %164 = add nsw i64 %162, %161
  %165 = call i64 @llvm.smin.i64(i64 %164, i64 %19)
  store i64 %165, ptr %13, align 8, !tbaa !31
  %166 = icmp sgt i64 %163, %165
  br i1 %166, label %167, label %27

167:                                              ; preds = %159, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  br label %168

168:                                              ; preds = %167, %11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #16 {
  switch i32 %1, label %130 [
    i32 1, label %5
    i32 2, label %22
    i32 3, label %52
    i32 4, label %97
  ]

5:                                                ; preds = %4
  %6 = icmp sgt i64 %2, 0
  br i1 %6, label %7, label %130

7:                                                ; preds = %5
  %8 = uitofp i16 %0 to double
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi float [ 0.000000e+00, %7 ], [ %17, %9 ]
  %11 = phi i64 [ 0, %7 ], [ %18, %9 ]
  %12 = fpext float %10 to double
  %13 = fmul double %12, 0x3EF0001000100010
  %14 = getelementptr inbounds double, ptr %3, i64 %11
  %15 = load double, ptr %14, align 8, !tbaa !12
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %8, double %15)
  %17 = fptrunc double %16 to float
  %18 = add nuw nsw i64 %11, 1
  %19 = icmp eq i64 %18, %2
  br i1 %19, label %20, label %9, !llvm.loop !71

20:                                               ; preds = %9
  %21 = fmul float %17, 6.553500e+04
  br label %130

22:                                               ; preds = %4
  %23 = icmp eq i64 %2, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %22
  %25 = load double, ptr %3, align 8, !tbaa !12
  %26 = fmul double %25, 0x3EF0001000100010
  %27 = icmp eq i64 %2, 1
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds double, ptr %3, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !12
  %31 = icmp ugt i64 %2, 2
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = getelementptr inbounds double, ptr %3, i64 2
  %34 = load double, ptr %33, align 8, !tbaa !12
  %35 = icmp eq i64 %2, 3
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds double, ptr %3, i64 3
  %38 = load double, ptr %37, align 8, !tbaa !12
  br label %39

39:                                               ; preds = %22, %24, %28, %32, %36
  %40 = phi double [ %34, %36 ], [ %34, %32 ], [ 5.000000e-01, %28 ], [ 5.000000e-01, %24 ], [ 5.000000e-01, %22 ]
  %41 = phi double [ %26, %36 ], [ %26, %32 ], [ %26, %28 ], [ %26, %24 ], [ 0x3EF0001000100010, %22 ]
  %42 = phi double [ %30, %36 ], [ %30, %32 ], [ %30, %28 ], [ 0.000000e+00, %24 ], [ 0.000000e+00, %22 ]
  %43 = phi double [ %38, %36 ], [ 5.000000e-01, %32 ], [ 5.000000e-01, %28 ], [ 5.000000e-01, %24 ], [ 5.000000e-01, %22 ]
  %44 = uitofp i16 %0 to double
  %45 = fdiv double %42, 3.600000e+02
  %46 = tail call double @llvm.fmuladd.f64(double %41, double %44, double %45)
  %47 = fmul double %46, 0x401921FB54442D18
  %48 = tail call double @sin(double noundef %47) #26
  %49 = tail call double @llvm.fmuladd.f64(double %40, double %48, double %43)
  %50 = fmul double %49, 6.553500e+04
  %51 = fptrunc double %50 to float
  br label %130

52:                                               ; preds = %4
  %53 = icmp eq i64 %2, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %52
  %55 = load double, ptr %3, align 8, !tbaa !12
  %56 = icmp eq i64 %2, 1
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds double, ptr %3, i64 1
  %59 = load double, ptr %58, align 8, !tbaa !12
  %60 = icmp ugt i64 %2, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = getelementptr inbounds double, ptr %3, i64 2
  %63 = load double, ptr %62, align 8, !tbaa !12
  %64 = icmp eq i64 %2, 3
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds double, ptr %3, i64 3
  %67 = load double, ptr %66, align 8, !tbaa !12
  br label %68

68:                                               ; preds = %52, %54, %57, %61, %65
  %69 = phi double [ %63, %65 ], [ %63, %61 ], [ 1.000000e+00, %57 ], [ 1.000000e+00, %54 ], [ 1.000000e+00, %52 ]
  %70 = phi double [ %55, %65 ], [ %55, %61 ], [ %55, %57 ], [ %55, %54 ], [ 1.000000e+00, %52 ]
  %71 = phi double [ %59, %65 ], [ %59, %61 ], [ %59, %57 ], [ 5.000000e-01, %54 ], [ 5.000000e-01, %52 ]
  %72 = phi double [ %67, %65 ], [ 5.000000e-01, %61 ], [ 5.000000e-01, %57 ], [ 5.000000e-01, %54 ], [ 5.000000e-01, %52 ]
  %73 = fdiv double 2.000000e+00, %70
  %74 = uitofp i16 %0 to double
  %75 = fneg double %71
  %76 = tail call double @llvm.fmuladd.f64(double %74, double 0x3EF0001000100010, double %75)
  %77 = fmul double %73, %76
  %78 = fptrunc double %77 to float
  %79 = fpext float %78 to double
  %80 = fcmp ugt float %78, -1.000000e+00
  br i1 %80, label %84, label %81

81:                                               ; preds = %68
  %82 = fmul double %69, 5.000000e-01
  %83 = fsub double %72, %82
  br label %93

84:                                               ; preds = %68
  %85 = fcmp ult float %78, 1.000000e+00
  br i1 %85, label %89, label %86

86:                                               ; preds = %84
  %87 = fmul double %69, 5.000000e-01
  %88 = fadd double %87, %72
  br label %93

89:                                               ; preds = %84
  %90 = fdiv double %69, 0x400921FB54442D18
  %91 = tail call double @asin(double noundef %79) #26
  %92 = tail call double @llvm.fmuladd.f64(double %90, double %91, double %72)
  br label %93

93:                                               ; preds = %86, %89, %81
  %94 = phi double [ %83, %81 ], [ %88, %86 ], [ %92, %89 ]
  %95 = fptrunc double %94 to float
  %96 = fmul float %95, 6.553500e+04
  br label %130

97:                                               ; preds = %4
  %98 = icmp eq i64 %2, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %97
  %100 = load double, ptr %3, align 8, !tbaa !12
  %101 = fmul double %100, 0x400921FB54442D18
  %102 = icmp eq i64 %2, 1
  br i1 %102, label %114, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds double, ptr %3, i64 1
  %105 = load double, ptr %104, align 8, !tbaa !12
  %106 = icmp ugt i64 %2, 2
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = getelementptr inbounds double, ptr %3, i64 2
  %109 = load double, ptr %108, align 8, !tbaa !12
  %110 = icmp eq i64 %2, 3
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds double, ptr %3, i64 3
  %113 = load double, ptr %112, align 8, !tbaa !12
  br label %114

114:                                              ; preds = %97, %99, %103, %107, %111
  %115 = phi double [ %109, %111 ], [ %109, %107 ], [ 1.000000e+00, %103 ], [ 1.000000e+00, %99 ], [ 1.000000e+00, %97 ]
  %116 = phi double [ %101, %111 ], [ %101, %107 ], [ %101, %103 ], [ %101, %99 ], [ 0x400921FB54442D18, %97 ]
  %117 = phi double [ %105, %111 ], [ %105, %107 ], [ %105, %103 ], [ 5.000000e-01, %99 ], [ 5.000000e-01, %97 ]
  %118 = phi double [ %113, %111 ], [ 5.000000e-01, %107 ], [ 5.000000e-01, %103 ], [ 5.000000e-01, %99 ], [ 5.000000e-01, %97 ]
  %119 = uitofp i16 %0 to double
  %120 = fneg double %117
  %121 = tail call double @llvm.fmuladd.f64(double %119, double 0x3EF0001000100010, double %120)
  %122 = fmul double %116, %121
  %123 = fptrunc double %122 to float
  %124 = fdiv double %115, 0x400921FB54442D18
  %125 = fpext float %123 to double
  %126 = tail call double @atan(double noundef %125) #26
  %127 = tail call double @llvm.fmuladd.f64(double %124, double %126, double %118)
  %128 = fmul double %127, 6.553500e+04
  %129 = fptrunc double %128 to float
  br label %130

130:                                              ; preds = %5, %20, %4, %114, %93, %39
  %131 = phi float [ 0.000000e+00, %4 ], [ %129, %114 ], [ %96, %93 ], [ %51, %39 ], [ 0.000000e+00, %5 ], [ %21, %20 ]
  %132 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %131) #25
  ret i16 %132
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageExtrema(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelExtrema(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3) #25, !range !72
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageChannelExtrema(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1152, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #26
  br label %14

14:                                               ; preds = %11, %5
  %15 = call i32 @GetImageChannelRange(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %4) #25, !range !72
  %16 = load double, ptr %7, align 8, !tbaa !12
  %17 = fadd double %16, -5.000000e-01
  %18 = tail call double @llvm.ceil.f64(double %17)
  %19 = fptoui double %18 to i64
  store i64 %19, ptr %2, align 8, !tbaa !31
  %20 = load double, ptr %6, align 8, !tbaa !12
  %21 = fadd double %20, 5.000000e-01
  %22 = tail call double @llvm.floor.f64(double %21)
  %23 = fptoui double %22 to i64
  store i64 %23, ptr %3, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageChannelRange(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #4
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2029, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #26
  br label %13

13:                                               ; preds = %10, %5
  store double 0xFFEFFFFFFFFFFFFF, ptr %3, align 8, !tbaa !12
  store double 0x7FEFFFFFFFFFFFFF, ptr %2, align 8, !tbaa !12
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #26
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !29
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %120

18:                                               ; preds = %13
  %19 = and i32 %1, 1
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %22 = and i32 %1, 2
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %25 = and i32 %1, 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %28 = and i32 %1, 8
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %32 = and i32 %1, 32
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %36 = load i64, ptr %14, align 8, !tbaa !30
  br label %37

37:                                               ; preds = %18, %116
  %38 = phi i64 [ %36, %18 ], [ %46, %116 ]
  %39 = phi i64 [ 0, %18 ], [ %117, %116 ]
  %40 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %39, i64 noundef %38, i64 noundef 1, ptr noundef %4) #26
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, ptr %15, align 8, !tbaa !29
  br label %120

44:                                               ; preds = %37
  %45 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #26
  %46 = load i64, ptr %14, align 8, !tbaa !30
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %116

48:                                               ; preds = %44, %112
  %49 = phi i64 [ %114, %112 ], [ 0, %44 ]
  %50 = phi ptr [ %113, %112 ], [ %40, %44 ]
  %51 = getelementptr inbounds i16, ptr %45, i64 %49
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %50, ptr noundef %51, ptr noundef nonnull %6) #25
  br i1 %20, label %62, label %52

52:                                               ; preds = %48
  %53 = load float, ptr %21, align 8, !tbaa !41
  %54 = fpext float %53 to double
  %55 = load double, ptr %2, align 8, !tbaa !12
  %56 = fcmp ogt double %55, %54
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store double %54, ptr %2, align 8, !tbaa !12
  br label %58

58:                                               ; preds = %57, %52
  %59 = load double, ptr %3, align 8, !tbaa !12
  %60 = fcmp olt double %59, %54
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store double %54, ptr %3, align 8, !tbaa !12
  br label %62

62:                                               ; preds = %58, %61, %48
  br i1 %23, label %73, label %63

63:                                               ; preds = %62
  %64 = load float, ptr %24, align 4, !tbaa !44
  %65 = fpext float %64 to double
  %66 = load double, ptr %2, align 8, !tbaa !12
  %67 = fcmp ogt double %66, %65
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store double %65, ptr %2, align 8, !tbaa !12
  br label %69

69:                                               ; preds = %68, %63
  %70 = load double, ptr %3, align 8, !tbaa !12
  %71 = fcmp olt double %70, %65
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store double %65, ptr %3, align 8, !tbaa !12
  br label %73

73:                                               ; preds = %69, %72, %62
  br i1 %26, label %84, label %74

74:                                               ; preds = %73
  %75 = load float, ptr %27, align 8, !tbaa !46
  %76 = fpext float %75 to double
  %77 = load double, ptr %2, align 8, !tbaa !12
  %78 = fcmp ogt double %77, %76
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store double %76, ptr %2, align 8, !tbaa !12
  br label %80

80:                                               ; preds = %79, %74
  %81 = load double, ptr %3, align 8, !tbaa !12
  %82 = fcmp olt double %81, %76
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store double %76, ptr %3, align 8, !tbaa !12
  br label %84

84:                                               ; preds = %80, %83, %73
  br i1 %29, label %98, label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %30, align 8, !tbaa !68
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  %89 = load float, ptr %31, align 4, !tbaa !48
  %90 = fpext float %89 to double
  %91 = load double, ptr %2, align 8, !tbaa !12
  %92 = fcmp ogt double %91, %90
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store double %90, ptr %2, align 8, !tbaa !12
  br label %94

94:                                               ; preds = %93, %88
  %95 = load double, ptr %3, align 8, !tbaa !12
  %96 = fcmp olt double %95, %90
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store double %90, ptr %3, align 8, !tbaa !12
  br label %98

98:                                               ; preds = %94, %97, %85, %84
  br i1 %33, label %112, label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %34, align 4, !tbaa !49
  %101 = icmp eq i32 %100, 12
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load float, ptr %35, align 8, !tbaa !51
  %104 = fpext float %103 to double
  %105 = load double, ptr %2, align 8, !tbaa !12
  %106 = fcmp ogt double %105, %104
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store double %104, ptr %2, align 8, !tbaa !12
  br label %108

108:                                              ; preds = %107, %102
  %109 = load double, ptr %3, align 8, !tbaa !12
  %110 = fcmp olt double %109, %104
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store double %104, ptr %3, align 8, !tbaa !12
  br label %112

112:                                              ; preds = %108, %111, %99, %98
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 1
  %114 = add nuw nsw i64 %49, 1
  %115 = icmp eq i64 %114, %46
  br i1 %115, label %116, label %48, !llvm.loop !73

116:                                              ; preds = %112, %44
  %117 = add nuw nsw i64 %39, 1
  %118 = load i64, ptr %15, align 8, !tbaa !29
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %37, label %120, !llvm.loop !74

120:                                              ; preds = %116, %42, %13
  %121 = phi i64 [ %16, %13 ], [ %43, %42 ], [ %118, %116 ]
  %122 = phi i64 [ 0, %13 ], [ %39, %42 ], [ %117, %116 ]
  %123 = icmp eq i64 %122, %121
  %124 = zext i1 %123 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #4
  ret i32 %124
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageKurtosis(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelKurtosis(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3) #25, !range !72
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageChannelKurtosis(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1222, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #26
  br label %12

12:                                               ; preds = %9, %5
  store double 0.000000e+00, ptr %2, align 8, !tbaa !12
  store double 0.000000e+00, ptr %3, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !29
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %180

17:                                               ; preds = %12
  %18 = and i32 %1, 1
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %1, 2
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %1, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %1, 8
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %1, 32
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %29 = load i64, ptr %13, align 8, !tbaa !30
  br label %30

30:                                               ; preds = %17, %154
  %31 = phi i64 [ %29, %17 ], [ %44, %154 ]
  %32 = phi i64 [ 0, %17 ], [ %158, %154 ]
  %33 = phi double [ 0.000000e+00, %17 ], [ %155, %154 ]
  %34 = phi <2 x double> [ zeroinitializer, %17 ], [ %156, %154 ]
  %35 = phi <2 x double> [ zeroinitializer, %17 ], [ %157, %154 ]
  %36 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %32, i64 noundef %31, i64 noundef 1, ptr noundef %4) #26
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i64, ptr %14, align 8, !tbaa !29
  %40 = extractelement <2 x double> %35, i64 0
  %41 = extractelement <2 x double> %35, i64 1
  br label %164

42:                                               ; preds = %30
  %43 = tail call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #26
  %44 = load i64, ptr %13, align 8, !tbaa !30
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %154

46:                                               ; preds = %42
  %47 = icmp eq ptr %43, null
  br label %48

48:                                               ; preds = %46, %147
  %49 = phi i64 [ 0, %46 ], [ %152, %147 ]
  %50 = phi ptr [ %36, %46 ], [ %151, %147 ]
  %51 = phi double [ %33, %46 ], [ %148, %147 ]
  %52 = phi <2 x double> [ %35, %46 ], [ %150, %147 ]
  %53 = phi <2 x double> [ %34, %46 ], [ %149, %147 ]
  br i1 %19, label %67, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 2
  %56 = load i16, ptr %55, align 2, !tbaa !40
  %57 = uitofp i16 %56 to double
  %58 = fmul double %57, %57
  %59 = insertelement <2 x double> poison, double %57, i64 0
  %60 = insertelement <2 x double> %59, double %58, i64 1
  %61 = shufflevector <2 x double> %59, <2 x double> poison, <2 x i32> zeroinitializer
  %62 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> %61, <2 x double> %53)
  %63 = fmul double %58, %57
  %64 = tail call double @llvm.fmuladd.f64(double %63, double %57, double %51)
  %65 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %57, i64 1
  %66 = fadd <2 x double> %52, %65
  br label %67

67:                                               ; preds = %54, %48
  %68 = phi double [ %64, %54 ], [ %51, %48 ]
  %69 = phi <2 x double> [ %66, %54 ], [ %52, %48 ]
  %70 = phi <2 x double> [ %62, %54 ], [ %53, %48 ]
  br i1 %21, label %84, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !43
  %74 = uitofp i16 %73 to double
  %75 = fmul double %74, %74
  %76 = insertelement <2 x double> poison, double %74, i64 0
  %77 = insertelement <2 x double> %76, double %75, i64 1
  %78 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %79 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %77, <2 x double> %78, <2 x double> %70)
  %80 = fmul double %75, %74
  %81 = tail call double @llvm.fmuladd.f64(double %80, double %74, double %68)
  %82 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %74, i64 1
  %83 = fadd <2 x double> %69, %82
  br label %84

84:                                               ; preds = %71, %67
  %85 = phi double [ %81, %71 ], [ %68, %67 ]
  %86 = phi <2 x double> [ %79, %71 ], [ %70, %67 ]
  %87 = phi <2 x double> [ %83, %71 ], [ %69, %67 ]
  br i1 %23, label %100, label %88

88:                                               ; preds = %84
  %89 = load i16, ptr %50, align 2, !tbaa !45
  %90 = uitofp i16 %89 to double
  %91 = fmul double %90, %90
  %92 = insertelement <2 x double> poison, double %90, i64 0
  %93 = insertelement <2 x double> %92, double %91, i64 1
  %94 = shufflevector <2 x double> %92, <2 x double> poison, <2 x i32> zeroinitializer
  %95 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %93, <2 x double> %94, <2 x double> %86)
  %96 = fmul double %91, %90
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %90, double %85)
  %98 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %90, i64 1
  %99 = fadd <2 x double> %87, %98
  br label %100

100:                                              ; preds = %88, %84
  %101 = phi double [ %97, %88 ], [ %85, %84 ]
  %102 = phi <2 x double> [ %95, %88 ], [ %86, %84 ]
  %103 = phi <2 x double> [ %99, %88 ], [ %87, %84 ]
  br i1 %25, label %117, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 3
  %106 = load i16, ptr %105, align 2, !tbaa !47
  %107 = uitofp i16 %106 to double
  %108 = fmul double %107, %107
  %109 = insertelement <2 x double> poison, double %107, i64 0
  %110 = insertelement <2 x double> %109, double %108, i64 1
  %111 = shufflevector <2 x double> %109, <2 x double> poison, <2 x i32> zeroinitializer
  %112 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %110, <2 x double> %111, <2 x double> %102)
  %113 = fmul double %108, %107
  %114 = tail call double @llvm.fmuladd.f64(double %113, double %107, double %101)
  %115 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %107, i64 1
  %116 = fadd <2 x double> %103, %115
  br label %117

117:                                              ; preds = %104, %100
  %118 = phi double [ %114, %104 ], [ %101, %100 ]
  %119 = phi <2 x double> [ %112, %104 ], [ %102, %100 ]
  %120 = phi <2 x double> [ %116, %104 ], [ %103, %100 ]
  br i1 %27, label %147, label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %28, align 4, !tbaa !49
  %123 = icmp eq i32 %122, 12
  br i1 %123, label %124, label %147

124:                                              ; preds = %121
  br i1 %47, label %125, label %127

125:                                              ; preds = %124
  %126 = fadd <2 x double> %119, zeroinitializer
  br label %138

127:                                              ; preds = %124
  %128 = getelementptr inbounds i16, ptr %43, i64 %49
  %129 = load i16, ptr %128, align 2, !tbaa !50
  %130 = uitofp i16 %129 to double
  %131 = fmul double %130, %130
  %132 = insertelement <2 x double> poison, double %130, i64 0
  %133 = insertelement <2 x double> %132, double %131, i64 1
  %134 = shufflevector <2 x double> %132, <2 x double> poison, <2 x i32> zeroinitializer
  %135 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %133, <2 x double> %134, <2 x double> %119)
  %136 = fmul double %131, %130
  %137 = zext i16 %129 to i32
  br label %138

138:                                              ; preds = %125, %127
  %139 = phi double [ %136, %127 ], [ 0.000000e+00, %125 ]
  %140 = phi double [ %130, %127 ], [ 0.000000e+00, %125 ]
  %141 = phi i32 [ %137, %127 ], [ 0, %125 ]
  %142 = phi <2 x double> [ %135, %127 ], [ %126, %125 ]
  %143 = sitofp i32 %141 to double
  %144 = tail call double @llvm.fmuladd.f64(double %139, double %143, double %118)
  %145 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %140, i64 1
  %146 = fadd <2 x double> %120, %145
  br label %147

147:                                              ; preds = %138, %121, %117
  %148 = phi double [ %144, %138 ], [ %118, %121 ], [ %118, %117 ]
  %149 = phi <2 x double> [ %142, %138 ], [ %119, %121 ], [ %119, %117 ]
  %150 = phi <2 x double> [ %146, %138 ], [ %120, %121 ], [ %120, %117 ]
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 1
  %152 = add nuw nsw i64 %49, 1
  %153 = icmp eq i64 %152, %44
  br i1 %153, label %154, label %48, !llvm.loop !75

154:                                              ; preds = %147, %42
  %155 = phi double [ %33, %42 ], [ %148, %147 ]
  %156 = phi <2 x double> [ %34, %42 ], [ %149, %147 ]
  %157 = phi <2 x double> [ %35, %42 ], [ %150, %147 ]
  %158 = add nuw nsw i64 %32, 1
  %159 = load i64, ptr %14, align 8, !tbaa !29
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %30, label %161, !llvm.loop !76

161:                                              ; preds = %154
  %162 = extractelement <2 x double> %157, i64 1
  %163 = extractelement <2 x double> %157, i64 0
  br label %164

164:                                              ; preds = %161, %38
  %165 = phi i64 [ %39, %38 ], [ %159, %161 ]
  %166 = phi double [ %40, %38 ], [ %163, %161 ]
  %167 = phi double [ %41, %38 ], [ %162, %161 ]
  %168 = phi double [ %33, %38 ], [ %155, %161 ]
  %169 = phi i64 [ %32, %38 ], [ %158, %161 ]
  %170 = phi <2 x double> [ %34, %38 ], [ %156, %161 ]
  %171 = icmp slt i64 %169, %165
  br i1 %171, label %215, label %172

172:                                              ; preds = %164
  %173 = fcmp une double %166, 0.000000e+00
  br i1 %173, label %174, label %180

174:                                              ; preds = %172
  %175 = fdiv double %167, %166
  %176 = insertelement <2 x double> poison, double %166, i64 0
  %177 = shufflevector <2 x double> %176, <2 x double> poison, <2 x i32> zeroinitializer
  %178 = fdiv <2 x double> %170, %177
  %179 = fdiv double %168, %166
  br label %180

180:                                              ; preds = %12, %174, %172
  %181 = phi i64 [ %169, %174 ], [ %169, %172 ], [ 0, %12 ]
  %182 = phi double [ %175, %174 ], [ %167, %172 ], [ 0.000000e+00, %12 ]
  %183 = phi double [ %179, %174 ], [ %168, %172 ], [ 0.000000e+00, %12 ]
  %184 = phi <2 x double> [ %178, %174 ], [ %170, %172 ], [ zeroinitializer, %12 ]
  %185 = fneg double %182
  %186 = extractelement <2 x double> %184, i64 0
  %187 = tail call double @llvm.fmuladd.f64(double %185, double %182, double %186)
  %188 = tail call double @sqrt(double noundef %187) #26
  %189 = fcmp une double %188, 0.000000e+00
  br i1 %189, label %190, label %211

190:                                              ; preds = %180
  %191 = fmul double %182, -4.000000e+00
  %192 = extractelement <2 x double> %184, i64 1
  %193 = tail call double @llvm.fmuladd.f64(double %191, double %192, double %183)
  %194 = fmul double %182, 6.000000e+00
  %195 = fmul double %182, %194
  %196 = tail call double @llvm.fmuladd.f64(double %195, double %186, double %193)
  %197 = fmul double %182, -3.000000e+00
  %198 = fmul double %182, %197
  %199 = fmul double %182, %198
  %200 = tail call double @llvm.fmuladd.f64(double %199, double %182, double %196)
  %201 = fmul double %188, %188
  %202 = fmul double %188, %201
  %203 = fmul double %188, %202
  %204 = fdiv double %200, %203
  %205 = fadd double %204, -3.000000e+00
  store double %205, ptr %2, align 8, !tbaa !12
  %206 = tail call double @llvm.fmuladd.f64(double %197, double %186, double %192)
  %207 = fmul double %182, 2.000000e+00
  %208 = fmul double %182, %207
  %209 = tail call double @llvm.fmuladd.f64(double %208, double %182, double %206)
  %210 = fdiv double %209, %202
  store double %210, ptr %3, align 8, !tbaa !12
  br label %211

211:                                              ; preds = %190, %180
  %212 = load i64, ptr %14, align 8, !tbaa !29
  %213 = icmp eq i64 %181, %212
  %214 = zext i1 %213 to i32
  br label %215

215:                                              ; preds = %164, %211
  %216 = phi i32 [ %214, %211 ], [ 0, %164 ]
  ret i32 %216
}

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetImageMean(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3) #25, !range !72
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetImageChannelMean(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1383, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #26
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call ptr @GetImageChannelStatistics(ptr noundef nonnull %0, ptr noundef %4) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %114, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 47, i32 7
  %17 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 47, i32 9
  %18 = and i32 %1, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 1, i32 7
  %22 = load double, ptr %21, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 1, i32 8
  %24 = load double, ptr %23, align 8, !tbaa !79
  %25 = fneg double %22
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %22, double %24)
  %27 = insertelement <2 x double> poison, double %26, i64 0
  %28 = insertelement <2 x double> %27, double %22, i64 1
  %29 = fadd <2 x double> %28, zeroinitializer
  br label %30

30:                                               ; preds = %20, %15
  %31 = phi i64 [ 1, %20 ], [ 0, %15 ]
  %32 = phi <2 x double> [ %29, %20 ], [ zeroinitializer, %15 ]
  %33 = and i32 %1, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 2, i32 7
  %37 = load double, ptr %36, align 8, !tbaa !77
  %38 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 2, i32 8
  %39 = load double, ptr %38, align 8, !tbaa !79
  %40 = fneg double %37
  %41 = tail call double @llvm.fmuladd.f64(double %40, double %37, double %39)
  %42 = insertelement <2 x double> poison, double %41, i64 0
  %43 = insertelement <2 x double> %42, double %37, i64 1
  %44 = fadd <2 x double> %32, %43
  %45 = add nuw nsw i64 %31, 1
  br label %46

46:                                               ; preds = %35, %30
  %47 = phi i64 [ %45, %35 ], [ %31, %30 ]
  %48 = phi <2 x double> [ %44, %35 ], [ %32, %30 ]
  %49 = and i32 %1, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 4, i32 7
  %53 = load double, ptr %52, align 8, !tbaa !77
  %54 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 4, i32 8
  %55 = load double, ptr %54, align 8, !tbaa !79
  %56 = fneg double %53
  %57 = tail call double @llvm.fmuladd.f64(double %56, double %53, double %55)
  %58 = insertelement <2 x double> poison, double %57, i64 0
  %59 = insertelement <2 x double> %58, double %53, i64 1
  %60 = fadd <2 x double> %48, %59
  %61 = add nuw nsw i64 %47, 1
  br label %62

62:                                               ; preds = %51, %46
  %63 = phi i64 [ %61, %51 ], [ %47, %46 ]
  %64 = phi <2 x double> [ %60, %51 ], [ %48, %46 ]
  %65 = and i32 %1, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 8, i32 7
  %73 = load double, ptr %72, align 8, !tbaa !77
  %74 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 8, i32 8
  %75 = load double, ptr %74, align 8, !tbaa !79
  %76 = fneg double %73
  %77 = tail call double @llvm.fmuladd.f64(double %76, double %73, double %75)
  %78 = insertelement <2 x double> poison, double %77, i64 0
  %79 = insertelement <2 x double> %78, double %73, i64 1
  %80 = fadd <2 x double> %64, %79
  %81 = add nuw nsw i64 %63, 1
  br label %82

82:                                               ; preds = %71, %67, %62
  %83 = phi i64 [ %81, %71 ], [ %63, %67 ], [ %63, %62 ]
  %84 = phi <2 x double> [ %80, %71 ], [ %64, %67 ], [ %64, %62 ]
  %85 = and i32 %1, 32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !49
  %90 = icmp eq i32 %89, 12
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 32, i32 7
  %93 = load double, ptr %92, align 8, !tbaa !77
  %94 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 32, i32 8
  %95 = load double, ptr %94, align 8, !tbaa !79
  %96 = fneg double %93
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %93, double %95)
  %98 = insertelement <2 x double> poison, double %97, i64 0
  %99 = insertelement <2 x double> %98, double %93, i64 1
  %100 = fadd <2 x double> %84, %99
  %101 = add nuw nsw i64 %83, 1
  br label %102

102:                                              ; preds = %91, %87, %82
  %103 = phi i64 [ %101, %91 ], [ %83, %87 ], [ %83, %82 ]
  %104 = phi <2 x double> [ %100, %91 ], [ %84, %87 ], [ %84, %82 ]
  %105 = uitofp i64 %103 to double
  %106 = extractelement <2 x double> %104, i64 1
  %107 = fdiv double %106, %105
  store double %107, ptr %16, align 8, !tbaa !77
  %108 = extractelement <2 x double> %104, i64 0
  %109 = fdiv double %108, %105
  %110 = tail call double @sqrt(double noundef %109) #26
  store double %110, ptr %17, align 8, !tbaa !80
  %111 = load double, ptr %16, align 8, !tbaa !77
  store double %111, ptr %2, align 8, !tbaa !12
  %112 = load double, ptr %17, align 8, !tbaa !80
  store double %112, ptr %3, align 8, !tbaa !12
  %113 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %13) #26
  br label %114

114:                                              ; preds = %12, %102
  %115 = phi i32 [ 1, %102 ], [ 0, %12 ]
  ret i32 %115
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageChannelStatistics(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2153, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #26
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call dereferenceable_or_null(4608) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 96) #27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %445, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 4608) #26
  br label %54

14:                                               ; preds = %54
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !29
  %18 = icmp sgt i64 %17, 0
  %19 = load i64, ptr %15, align 8, !tbaa !30
  br i1 %18, label %20, label %294

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1
  %22 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2
  %23 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %25 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32
  %28 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 1
  %29 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 2
  %30 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 3
  %31 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 4
  %32 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 1, i32 6
  %33 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 1
  %34 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 2
  %35 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 3
  %36 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 4
  %37 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 2, i32 6
  %38 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 1
  %39 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 2
  %40 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 3
  %41 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 4
  %42 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 4, i32 6
  %43 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 1
  %44 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 2
  %45 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 3
  %46 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 4
  %47 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 8, i32 6
  %48 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 1
  %49 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 2
  %50 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 3
  %51 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 4
  %52 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 5
  %53 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 32, i32 6
  br label %60

54:                                               ; preds = %12, %54
  %55 = phi i64 [ 0, %12 ], [ %58, %54 ]
  %56 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %55
  store i64 1, ptr %56, align 8, !tbaa !81
  %57 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %55, i32 1
  store <2 x double> <double 0x7FEFFFFFFFFFFFFF, double 0xFFEFFFFFFFFFFFFF>, ptr %57, align 8, !tbaa !12
  %58 = add nuw nsw i64 %55, 1
  %59 = icmp eq i64 %58, 48
  br i1 %59, label %14, label %54, !llvm.loop !82

60:                                               ; preds = %20, %290
  %61 = phi i64 [ %19, %20 ], [ %70, %290 ]
  %62 = phi i64 [ 0, %20 ], [ %291, %290 ]
  %63 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %62, i64 noundef %61, i64 noundef 1, ptr noundef %1) #26
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i64, ptr %15, align 8, !tbaa !30
  %67 = load i64, ptr %16, align 8, !tbaa !29
  br label %294

68:                                               ; preds = %60
  %69 = tail call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #26
  %70 = load i64, ptr %15, align 8, !tbaa !30
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %290

72:                                               ; preds = %68
  %73 = icmp eq ptr %69, null
  %74 = load i64, ptr %21, align 8, !tbaa !81
  br label %75

75:                                               ; preds = %72, %285
  %76 = phi i64 [ %74, %72 ], [ %85, %285 ]
  %77 = phi i1 [ true, %72 ], [ %288, %285 ]
  %78 = phi i64 [ 0, %72 ], [ %286, %285 ]
  %79 = phi ptr [ %63, %72 ], [ %287, %285 ]
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 2
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 1
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 3
  %83 = getelementptr inbounds i16, ptr %69, i64 %78
  br label %84

84:                                               ; preds = %75, %95
  %85 = phi i64 [ %76, %75 ], [ %96, %95 ]
  %86 = phi i64 [ %76, %75 ], [ %97, %95 ]
  %87 = icmp eq i64 %86, 16
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = tail call fastcc i64 @GetQuantumRange(i64 noundef %86) #25
  %90 = load i16, ptr %80, align 2, !tbaa !40
  %91 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %90, i64 noundef %89) #25, !range !72
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = add i64 %86, 1
  store i64 %94, ptr %21, align 8, !tbaa !81
  br label %95

95:                                               ; preds = %93, %106, %116, %129, %145
  %96 = phi i64 [ %94, %93 ], [ %85, %106 ], [ %85, %116 ], [ %85, %129 ], [ %85, %145 ]
  %97 = phi i64 [ %94, %93 ], [ %86, %106 ], [ %86, %116 ], [ %86, %129 ], [ %86, %145 ]
  br i1 %77, label %84, label %290, !llvm.loop !83

98:                                               ; preds = %88, %84
  %99 = load i64, ptr %22, align 8, !tbaa !81
  %100 = icmp eq i64 %99, 16
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = tail call fastcc i64 @GetQuantumRange(i64 noundef %99) #25
  %103 = load i16, ptr %81, align 2, !tbaa !43
  %104 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %103, i64 noundef %102) #25, !range !72
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = add i64 %99, 1
  store i64 %107, ptr %22, align 8, !tbaa !81
  br label %95

108:                                              ; preds = %101, %98
  %109 = load i64, ptr %23, align 8, !tbaa !81
  %110 = icmp eq i64 %109, 16
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = tail call fastcc i64 @GetQuantumRange(i64 noundef %109) #25
  %113 = load i16, ptr %79, align 2, !tbaa !45
  %114 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %113, i64 noundef %112) #25, !range !72
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = add i64 %109, 1
  store i64 %117, ptr %23, align 8, !tbaa !81
  br label %95

118:                                              ; preds = %111, %108
  %119 = load i32, ptr %24, align 8, !tbaa !68
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = load i64, ptr %25, align 8, !tbaa !81
  %123 = icmp eq i64 %122, 16
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = tail call fastcc i64 @GetQuantumRange(i64 noundef %122) #25
  %126 = load i16, ptr %82, align 2, !tbaa !47
  %127 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %126, i64 noundef %125) #25, !range !72
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = add i64 %122, 1
  store i64 %130, ptr %25, align 8, !tbaa !81
  br label %95

131:                                              ; preds = %121, %124, %118
  %132 = load i32, ptr %26, align 4, !tbaa !49
  %133 = icmp eq i32 %132, 12
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load i64, ptr %27, align 8, !tbaa !81
  %136 = icmp eq i64 %135, 16
  br i1 %136, label %147, label %137

137:                                              ; preds = %134
  %138 = tail call fastcc i64 @GetQuantumRange(i64 noundef %135) #25
  br i1 %73, label %141, label %139

139:                                              ; preds = %137
  %140 = load i16, ptr %83, align 2, !tbaa !50
  br label %141

141:                                              ; preds = %137, %139
  %142 = phi i16 [ %140, %139 ], [ 0, %137 ]
  %143 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %142, i64 noundef %138) #25, !range !72
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = add i64 %135, 1
  store i64 %146, ptr %27, align 8, !tbaa !81
  br label %95

147:                                              ; preds = %134, %141, %131
  %148 = load i16, ptr %80, align 2, !tbaa !40
  %149 = uitofp i16 %148 to double
  %150 = load double, ptr %28, align 8, !tbaa !84
  %151 = fcmp ogt double %150, %149
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store double %149, ptr %28, align 8, !tbaa !84
  br label %153

153:                                              ; preds = %152, %147
  %154 = load double, ptr %29, align 8, !tbaa !85
  %155 = fcmp olt double %154, %149
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store double %149, ptr %29, align 8, !tbaa !85
  br label %157

157:                                              ; preds = %156, %153
  %158 = load double, ptr %30, align 8, !tbaa !86
  %159 = fadd double %158, %149
  store double %159, ptr %30, align 8, !tbaa !86
  %160 = fmul double %149, %149
  %161 = load <2 x double>, ptr %31, align 8, !tbaa !12
  %162 = insertelement <2 x double> poison, double %149, i64 0
  %163 = insertelement <2 x double> %162, double %160, i64 1
  %164 = shufflevector <2 x double> %162, <2 x double> poison, <2 x i32> zeroinitializer
  %165 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %163, <2 x double> %164, <2 x double> %161)
  store <2 x double> %165, ptr %31, align 8, !tbaa !12
  %166 = fmul double %160, %149
  %167 = load double, ptr %32, align 8, !tbaa !87
  %168 = tail call double @llvm.fmuladd.f64(double %166, double %149, double %167)
  store double %168, ptr %32, align 8, !tbaa !87
  %169 = load i16, ptr %81, align 2, !tbaa !43
  %170 = uitofp i16 %169 to double
  %171 = load double, ptr %33, align 8, !tbaa !84
  %172 = fcmp ogt double %171, %170
  br i1 %172, label %173, label %174

173:                                              ; preds = %157
  store double %170, ptr %33, align 8, !tbaa !84
  br label %174

174:                                              ; preds = %173, %157
  %175 = load double, ptr %34, align 8, !tbaa !85
  %176 = fcmp olt double %175, %170
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store double %170, ptr %34, align 8, !tbaa !85
  br label %178

178:                                              ; preds = %177, %174
  %179 = load double, ptr %35, align 8, !tbaa !86
  %180 = fadd double %179, %170
  store double %180, ptr %35, align 8, !tbaa !86
  %181 = fmul double %170, %170
  %182 = load <2 x double>, ptr %36, align 8, !tbaa !12
  %183 = insertelement <2 x double> poison, double %170, i64 0
  %184 = insertelement <2 x double> %183, double %181, i64 1
  %185 = shufflevector <2 x double> %183, <2 x double> poison, <2 x i32> zeroinitializer
  %186 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %184, <2 x double> %185, <2 x double> %182)
  store <2 x double> %186, ptr %36, align 8, !tbaa !12
  %187 = fmul double %181, %170
  %188 = load double, ptr %37, align 8, !tbaa !87
  %189 = tail call double @llvm.fmuladd.f64(double %187, double %170, double %188)
  store double %189, ptr %37, align 8, !tbaa !87
  %190 = load i16, ptr %79, align 2, !tbaa !45
  %191 = uitofp i16 %190 to double
  %192 = load double, ptr %38, align 8, !tbaa !84
  %193 = fcmp ogt double %192, %191
  br i1 %193, label %194, label %195

194:                                              ; preds = %178
  store double %191, ptr %38, align 8, !tbaa !84
  br label %195

195:                                              ; preds = %194, %178
  %196 = load double, ptr %39, align 8, !tbaa !85
  %197 = fcmp olt double %196, %191
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store double %191, ptr %39, align 8, !tbaa !85
  br label %199

199:                                              ; preds = %198, %195
  %200 = load double, ptr %40, align 8, !tbaa !86
  %201 = fadd double %200, %191
  store double %201, ptr %40, align 8, !tbaa !86
  %202 = fmul double %191, %191
  %203 = load <2 x double>, ptr %41, align 8, !tbaa !12
  %204 = insertelement <2 x double> poison, double %191, i64 0
  %205 = insertelement <2 x double> %204, double %202, i64 1
  %206 = shufflevector <2 x double> %204, <2 x double> poison, <2 x i32> zeroinitializer
  %207 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %205, <2 x double> %206, <2 x double> %203)
  store <2 x double> %207, ptr %41, align 8, !tbaa !12
  %208 = fmul double %202, %191
  %209 = load double, ptr %42, align 8, !tbaa !87
  %210 = tail call double @llvm.fmuladd.f64(double %208, double %191, double %209)
  store double %210, ptr %42, align 8, !tbaa !87
  br i1 %120, label %233, label %211

211:                                              ; preds = %199
  %212 = load i16, ptr %82, align 2, !tbaa !47
  %213 = uitofp i16 %212 to double
  %214 = load double, ptr %43, align 8, !tbaa !84
  %215 = fcmp ogt double %214, %213
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store double %213, ptr %43, align 8, !tbaa !84
  br label %217

217:                                              ; preds = %216, %211
  %218 = load double, ptr %44, align 8, !tbaa !85
  %219 = fcmp olt double %218, %213
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store double %213, ptr %44, align 8, !tbaa !85
  br label %221

221:                                              ; preds = %220, %217
  %222 = load double, ptr %45, align 8, !tbaa !86
  %223 = fadd double %222, %213
  store double %223, ptr %45, align 8, !tbaa !86
  %224 = fmul double %213, %213
  %225 = load <2 x double>, ptr %46, align 8, !tbaa !12
  %226 = insertelement <2 x double> poison, double %213, i64 0
  %227 = insertelement <2 x double> %226, double %224, i64 1
  %228 = shufflevector <2 x double> %226, <2 x double> poison, <2 x i32> zeroinitializer
  %229 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %227, <2 x double> %228, <2 x double> %225)
  store <2 x double> %229, ptr %46, align 8, !tbaa !12
  %230 = fmul double %224, %213
  %231 = load double, ptr %47, align 8, !tbaa !87
  %232 = tail call double @llvm.fmuladd.f64(double %230, double %213, double %231)
  store double %232, ptr %47, align 8, !tbaa !87
  br label %233

233:                                              ; preds = %221, %199
  br i1 %133, label %234, label %285

234:                                              ; preds = %233
  br i1 %73, label %235, label %239

235:                                              ; preds = %234
  %236 = load double, ptr %48, align 8, !tbaa !84
  %237 = fcmp ogt double %236, 0.000000e+00
  br i1 %237, label %238, label %248

238:                                              ; preds = %235
  store double 0.000000e+00, ptr %48, align 8, !tbaa !84
  br label %248

239:                                              ; preds = %234
  %240 = load i16, ptr %83, align 2, !tbaa !50
  %241 = uitofp i16 %240 to double
  %242 = load double, ptr %48, align 8, !tbaa !84
  %243 = fcmp ogt double %242, %241
  br i1 %243, label %244, label %252

244:                                              ; preds = %239
  %245 = uitofp i16 %240 to double
  store double %245, ptr %48, align 8, !tbaa !84
  %246 = load i16, ptr %83, align 2, !tbaa !50
  %247 = uitofp i16 %246 to double
  br label %252

248:                                              ; preds = %235, %238
  %249 = load double, ptr %49, align 8, !tbaa !85
  %250 = fcmp olt double %249, 0.000000e+00
  br i1 %250, label %251, label %261

251:                                              ; preds = %248
  store double 0.000000e+00, ptr %49, align 8, !tbaa !85
  br label %261

252:                                              ; preds = %244, %239
  %253 = phi double [ %247, %244 ], [ %241, %239 ]
  %254 = phi i16 [ %246, %244 ], [ %240, %239 ]
  %255 = load double, ptr %49, align 8, !tbaa !85
  %256 = fcmp olt double %255, %253
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = uitofp i16 %254 to double
  store double %258, ptr %49, align 8, !tbaa !85
  %259 = load i16, ptr %83, align 2, !tbaa !50
  %260 = uitofp i16 %259 to double
  br label %266

261:                                              ; preds = %248, %251
  %262 = load <2 x double>, ptr %50, align 8, !tbaa !12
  %263 = fadd <2 x double> %262, zeroinitializer
  store <2 x double> %263, ptr %50, align 8, !tbaa !12
  %264 = load double, ptr %52, align 8, !tbaa !88
  %265 = fadd double %264, 0.000000e+00
  store double %265, ptr %52, align 8, !tbaa !88
  br label %279

266:                                              ; preds = %257, %252
  %267 = phi double [ %260, %257 ], [ %253, %252 ]
  %268 = phi i16 [ %259, %257 ], [ %254, %252 ]
  %269 = load double, ptr %50, align 8, !tbaa !86
  %270 = fadd double %269, %267
  store double %270, ptr %50, align 8, !tbaa !86
  %271 = fmul double %267, %267
  %272 = load <2 x double>, ptr %51, align 8, !tbaa !12
  %273 = insertelement <2 x double> poison, double %267, i64 0
  %274 = insertelement <2 x double> %273, double %271, i64 1
  %275 = shufflevector <2 x double> %273, <2 x double> poison, <2 x i32> zeroinitializer
  %276 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %274, <2 x double> %275, <2 x double> %272)
  store <2 x double> %276, ptr %51, align 8, !tbaa !12
  %277 = fmul double %271, %267
  %278 = zext i16 %268 to i32
  br label %279

279:                                              ; preds = %261, %266
  %280 = phi double [ %277, %266 ], [ 0.000000e+00, %261 ]
  %281 = phi i32 [ %278, %266 ], [ 0, %261 ]
  %282 = sitofp i32 %281 to double
  %283 = load double, ptr %53, align 8, !tbaa !87
  %284 = tail call double @llvm.fmuladd.f64(double %280, double %282, double %283)
  store double %284, ptr %53, align 8, !tbaa !87
  br label %285

285:                                              ; preds = %279, %233
  %286 = add nuw nsw i64 %78, 1
  %287 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 1
  %288 = icmp slt i64 %286, %70
  %289 = icmp eq i64 %286, %70
  br i1 %289, label %290, label %75, !llvm.loop !83

290:                                              ; preds = %285, %95, %68
  %291 = add nuw nsw i64 %62, 1
  %292 = load i64, ptr %16, align 8, !tbaa !29
  %293 = icmp slt i64 %291, %292
  br i1 %293, label %60, label %294, !llvm.loop !89

294:                                              ; preds = %290, %65, %14
  %295 = phi i64 [ %17, %14 ], [ %67, %65 ], [ %292, %290 ]
  %296 = phi i64 [ %19, %14 ], [ %66, %65 ], [ %70, %290 ]
  %297 = phi i64 [ 0, %14 ], [ %62, %65 ], [ %291, %290 ]
  %298 = uitofp i64 %296 to double
  %299 = uitofp i64 %295 to double
  %300 = fmul double %298, %299
  %301 = insertelement <2 x double> poison, double %300, i64 0
  %302 = shufflevector <2 x double> %301, <2 x double> poison, <2 x i32> zeroinitializer
  br label %320

303:                                              ; preds = %320
  %304 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47
  %305 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 1
  %306 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 2
  %307 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 3
  %308 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 5
  %309 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 7
  %310 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 8
  %311 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 9
  %312 = load i64, ptr %304, align 8, !tbaa !81
  %313 = load double, ptr %305, align 8, !tbaa !84
  %314 = load double, ptr %306, align 8, !tbaa !85
  %315 = load <2 x double>, ptr %307, align 8, !tbaa !12
  %316 = load <2 x double>, ptr %308, align 8, !tbaa !12
  %317 = load double, ptr %309, align 8, !tbaa !77
  %318 = load double, ptr %310, align 8, !tbaa !79
  %319 = load double, ptr %311, align 8, !tbaa !80
  br label %337

320:                                              ; preds = %294, %320
  %321 = phi i64 [ 0, %294 ], [ %335, %320 ]
  %322 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %321, i32 3
  %323 = load <2 x double>, ptr %322, align 8, !tbaa !12
  %324 = fdiv <2 x double> %323, %302
  store <2 x double> %324, ptr %322, align 8, !tbaa !12
  %325 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %321, i32 5
  %326 = load <2 x double>, ptr %325, align 8, !tbaa !12
  %327 = fdiv <2 x double> %326, %302
  store <2 x double> %327, ptr %325, align 8, !tbaa !12
  %328 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %321, i32 7
  store <2 x double> %324, ptr %328, align 8, !tbaa !12
  %329 = extractelement <2 x double> %324, i64 0
  %330 = fneg double %329
  %331 = extractelement <2 x double> %324, i64 1
  %332 = tail call double @llvm.fmuladd.f64(double %330, double %329, double %331)
  %333 = tail call double @sqrt(double noundef %332) #26
  %334 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %321, i32 9
  store double %333, ptr %334, align 8, !tbaa !80
  %335 = add nuw nsw i64 %321, 1
  %336 = icmp eq i64 %335, 47
  br i1 %336, label %303, label %320, !llvm.loop !90

337:                                              ; preds = %303, %337
  %338 = phi i64 [ 0, %303 ], [ %377, %337 ]
  %339 = phi i64 [ %312, %303 ], [ %352, %337 ]
  %340 = phi double [ %313, %303 ], [ %355, %337 ]
  %341 = phi double [ %314, %303 ], [ %358, %337 ]
  %342 = phi double [ %317, %303 ], [ %369, %337 ]
  %343 = phi double [ %318, %303 ], [ %373, %337 ]
  %344 = phi double [ %319, %303 ], [ %376, %337 ]
  %345 = phi <2 x double> [ %315, %303 ], [ %361, %337 ]
  %346 = phi <2 x double> [ %316, %303 ], [ %364, %337 ]
  %347 = uitofp i64 %339 to double
  %348 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338
  %349 = load i64, ptr %348, align 8, !tbaa !81
  %350 = uitofp i64 %349 to double
  %351 = tail call fastcc double @EvaluateMax(double noundef %347, double noundef %350) #25
  %352 = fptoui double %351 to i64
  store i64 %352, ptr %304, align 8, !tbaa !81
  %353 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 1
  %354 = load double, ptr %353, align 8, !tbaa !84
  %355 = tail call fastcc double @MagickMin(double noundef %340, double noundef %354) #25
  store double %355, ptr %305, align 8, !tbaa !84
  %356 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 2
  %357 = load double, ptr %356, align 8, !tbaa !85
  %358 = tail call fastcc double @EvaluateMax(double noundef %341, double noundef %357) #25
  store double %358, ptr %306, align 8, !tbaa !85
  %359 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 3
  %360 = load <2 x double>, ptr %359, align 8, !tbaa !12
  %361 = fadd <2 x double> %360, %345
  store <2 x double> %361, ptr %307, align 8, !tbaa !12
  %362 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 5
  %363 = load <2 x double>, ptr %362, align 8, !tbaa !12
  %364 = fadd <2 x double> %363, %346
  store <2 x double> %364, ptr %308, align 8, !tbaa !12
  %365 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 7
  %366 = load double, ptr %365, align 8, !tbaa !77
  %367 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 8
  %368 = load double, ptr %367, align 8, !tbaa !79
  %369 = fadd double %366, %342
  store double %369, ptr %309, align 8, !tbaa !77
  %370 = load double, ptr %365, align 8, !tbaa !77
  %371 = fneg double %370
  %372 = tail call double @llvm.fmuladd.f64(double %371, double %370, double %368)
  %373 = fadd double %343, %372
  store double %373, ptr %310, align 8, !tbaa !79
  %374 = load double, ptr %367, align 8, !tbaa !79
  %375 = tail call double @llvm.fmuladd.f64(double %371, double %370, double %374)
  %376 = fadd double %344, %375
  %377 = add nuw nsw i64 %338, 1
  %378 = icmp eq i64 %377, 47
  br i1 %378, label %379, label %337, !llvm.loop !91

379:                                              ; preds = %337
  %380 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %381 = load i32, ptr %380, align 8, !tbaa !68
  %382 = icmp eq i32 %381, 0
  %383 = select i1 %382, i64 3, i64 4
  %384 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %385 = load i32, ptr %384, align 4, !tbaa !49
  %386 = icmp eq i32 %385, 12
  %387 = zext i1 %386 to i64
  %388 = add nuw nsw i64 %383, %387
  %389 = uitofp i64 %388 to double
  %390 = insertelement <2 x double> poison, double %389, i64 0
  %391 = shufflevector <2 x double> %390, <2 x double> poison, <2 x i32> zeroinitializer
  %392 = fdiv <2 x double> %361, %391
  store <2 x double> %392, ptr %307, align 8, !tbaa !12
  %393 = fdiv <2 x double> %364, %391
  store <2 x double> %393, ptr %308, align 8, !tbaa !12
  %394 = insertelement <2 x double> poison, double %369, i64 0
  %395 = insertelement <2 x double> %394, double %373, i64 1
  %396 = fdiv <2 x double> %395, %391
  store <2 x double> %396, ptr %309, align 8, !tbaa !12
  %397 = fdiv double %376, %389
  %398 = tail call double @sqrt(double noundef %397) #26
  store double %398, ptr %311, align 8, !tbaa !80
  %399 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 10
  %400 = load <2 x double>, ptr %399, align 8, !tbaa !12
  %401 = fdiv <2 x double> %400, %391
  store <2 x double> %401, ptr %399, align 8, !tbaa !12
  br label %402

402:                                              ; preds = %379, %437
  %403 = phi i64 [ 0, %379 ], [ %438, %437 ]
  %404 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 9
  %405 = load double, ptr %404, align 8, !tbaa !80
  %406 = fcmp oeq double %405, 0.000000e+00
  br i1 %406, label %437, label %407

407:                                              ; preds = %402
  %408 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 5
  %409 = load double, ptr %408, align 8, !tbaa !88
  %410 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 7
  %411 = load double, ptr %410, align 8, !tbaa !77
  %412 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 4
  %413 = load double, ptr %412, align 8, !tbaa !92
  %414 = fmul double %411, -3.000000e+00
  %415 = tail call double @llvm.fmuladd.f64(double %414, double %413, double %409)
  %416 = fmul double %411, 2.000000e+00
  %417 = fmul double %411, %416
  %418 = tail call double @llvm.fmuladd.f64(double %417, double %411, double %415)
  %419 = fmul double %405, %405
  %420 = fmul double %405, %419
  %421 = fdiv double %418, %420
  %422 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 11
  store double %421, ptr %422, align 8, !tbaa !93
  %423 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 6
  %424 = load double, ptr %423, align 8, !tbaa !87
  %425 = fmul double %411, -4.000000e+00
  %426 = tail call double @llvm.fmuladd.f64(double %425, double %409, double %424)
  %427 = fmul double %411, 6.000000e+00
  %428 = fmul double %411, %427
  %429 = tail call double @llvm.fmuladd.f64(double %428, double %413, double %426)
  %430 = fmul double %411, %414
  %431 = fmul double %411, %430
  %432 = tail call double @llvm.fmuladd.f64(double %431, double %411, double %429)
  %433 = fmul double %405, %420
  %434 = fdiv double %432, %433
  %435 = fadd double %434, -3.000000e+00
  %436 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 10
  store double %435, ptr %436, align 8, !tbaa !94
  br label %437

437:                                              ; preds = %402, %407
  %438 = add nuw nsw i64 %403, 1
  %439 = icmp eq i64 %438, 48
  br i1 %439, label %440, label %402, !llvm.loop !95

440:                                              ; preds = %437
  %441 = load i64, ptr %16, align 8, !tbaa !29
  %442 = icmp slt i64 %297, %441
  br i1 %442, label %443, label %445

443:                                              ; preds = %440
  %444 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %10) #26
  br label %445

445:                                              ; preds = %440, %443, %9
  %446 = phi ptr [ null, %9 ], [ %444, %443 ], [ %10, %440 ]
  ret ptr %446
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageChannelMoments(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [48 x double], align 16
  %4 = alloca [48 x double], align 16
  %5 = alloca [48 x double], align 16
  %6 = alloca [48 x double], align 16
  %7 = alloca [48 x double], align 16
  %8 = alloca [48 x double], align 16
  %9 = alloca [48 x double], align 16
  %10 = alloca [48 x double], align 16
  %11 = alloca [48 x double], align 16
  %12 = alloca [48 x double], align 16
  %13 = alloca [48 x double], align 16
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = alloca [48 x %struct._PointInfo], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %15) #4
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1516, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #26
  br label %22

22:                                               ; preds = %19, %2
  %23 = tail call dereferenceable_or_null(14976) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 312) #27
  %24 = icmp eq ptr %23, null
  br i1 %24, label %940, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %23, i32 noundef 0, i64 noundef 14976) #26
  %27 = call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 768) #26
  %28 = call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 384) #26
  %29 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 384) #26
  %30 = call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 384) #26
  %31 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #26
  %32 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 384) #26
  %33 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 384) #26
  %34 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 384) #26
  %35 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 384) #26
  %36 = call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 384) #26
  %37 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 384) #26
  %38 = call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 384) #26
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %14) #26
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !29
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %147, %64, %25
  br label %203

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  %46 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 1
  %47 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 1
  %48 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 1
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  %50 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 4
  %51 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 4
  %52 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 4
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %55 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 8
  %56 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 8
  %57 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 8
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %60 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 32
  %61 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 32
  %62 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 32
  %63 = load i64, ptr %39, align 8, !tbaa !30
  br label %64

64:                                               ; preds = %44, %147
  %65 = phi i64 [ %63, %44 ], [ %71, %147 ]
  %66 = phi i64 [ 0, %44 ], [ %148, %147 ]
  %67 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %66, i64 noundef %65, i64 noundef 1, ptr noundef %1) #26
  %68 = icmp eq ptr %67, null
  br i1 %68, label %43, label %69

69:                                               ; preds = %64
  %70 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #26
  %71 = load i64, ptr %39, align 8, !tbaa !30
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %147

73:                                               ; preds = %69
  %74 = sitofp i64 %66 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = load i32, ptr %53, align 8, !tbaa !68
  %77 = icmp eq i32 %76, 0
  %78 = load i32, ptr %58, align 4, !tbaa !49
  %79 = icmp eq i32 %78, 12
  %80 = load <2 x double>, ptr %46, align 8, !tbaa !12
  %81 = load <2 x double>, ptr %47, align 8, !tbaa !12
  %82 = load <2 x double>, ptr %48, align 8, !tbaa !12
  %83 = load double, ptr %50, align 16, !tbaa !12
  %84 = load double, ptr %51, align 16, !tbaa !12
  %85 = load double, ptr %52, align 16, !tbaa !12
  %86 = load double, ptr %55, align 16, !tbaa !12
  %87 = load double, ptr %56, align 16, !tbaa !12
  %88 = load double, ptr %57, align 16, !tbaa !12
  %89 = load double, ptr %60, align 16, !tbaa !12
  %90 = load double, ptr %61, align 16, !tbaa !12
  %91 = load double, ptr %62, align 16, !tbaa !12
  %92 = insertelement <2 x double> poison, double %75, i64 0
  %93 = shufflevector <2 x double> %92, <2 x double> poison, <2 x i32> zeroinitializer
  br label %94

94:                                               ; preds = %73, %140
  %95 = phi double [ %91, %73 ], [ %141, %140 ]
  %96 = phi double [ %90, %73 ], [ %142, %140 ]
  %97 = phi double [ %89, %73 ], [ %143, %140 ]
  %98 = phi double [ %88, %73 ], [ %131, %140 ]
  %99 = phi double [ %87, %73 ], [ %132, %140 ]
  %100 = phi double [ %86, %73 ], [ %133, %140 ]
  %101 = phi double [ %85, %73 ], [ %123, %140 ]
  %102 = phi double [ %84, %73 ], [ %122, %140 ]
  %103 = phi double [ %83, %73 ], [ %121, %140 ]
  %104 = phi i64 [ 0, %73 ], [ %145, %140 ]
  %105 = phi ptr [ %67, %73 ], [ %144, %140 ]
  %106 = phi <2 x double> [ %80, %73 ], [ %114, %140 ]
  %107 = phi <2 x double> [ %81, %73 ], [ %117, %140 ]
  %108 = phi <2 x double> [ %82, %73 ], [ %118, %140 ]
  %109 = getelementptr inbounds i16, ptr %70, i64 %104
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %105, ptr noundef %109, ptr noundef nonnull %14) #25
  %110 = sitofp i64 %104 to double
  %111 = fmul double %110, 0x3EF0001000100010
  %112 = load <2 x float>, ptr %45, align 8, !tbaa !37
  %113 = fpext <2 x float> %112 to <2 x double>
  %114 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %113, <2 x double> <double 0x3EF0001000100010, double 0x3EF0001000100010>, <2 x double> %106)
  store <2 x double> %114, ptr %46, align 8, !tbaa !12
  %115 = insertelement <2 x double> poison, double %111, i64 0
  %116 = shufflevector <2 x double> %115, <2 x double> poison, <2 x i32> zeroinitializer
  %117 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %116, <2 x double> %113, <2 x double> %107)
  store <2 x double> %117, ptr %47, align 8, !tbaa !12
  %118 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %93, <2 x double> %113, <2 x double> %108)
  store <2 x double> %118, ptr %48, align 8, !tbaa !12
  %119 = load float, ptr %49, align 8, !tbaa !46
  %120 = fpext float %119 to double
  %121 = call double @llvm.fmuladd.f64(double %120, double 0x3EF0001000100010, double %103)
  store double %121, ptr %50, align 16, !tbaa !12
  %122 = call double @llvm.fmuladd.f64(double %111, double %120, double %102)
  store double %122, ptr %51, align 16, !tbaa !12
  %123 = call double @llvm.fmuladd.f64(double %75, double %120, double %101)
  store double %123, ptr %52, align 16, !tbaa !12
  br i1 %77, label %130, label %124

124:                                              ; preds = %94
  %125 = load float, ptr %54, align 4, !tbaa !48
  %126 = fpext float %125 to double
  %127 = call double @llvm.fmuladd.f64(double %126, double 0x3EF0001000100010, double %100)
  store double %127, ptr %55, align 16, !tbaa !12
  %128 = call double @llvm.fmuladd.f64(double %111, double %126, double %99)
  store double %128, ptr %56, align 16, !tbaa !12
  %129 = call double @llvm.fmuladd.f64(double %75, double %126, double %98)
  store double %129, ptr %57, align 16, !tbaa !12
  br label %130

130:                                              ; preds = %124, %94
  %131 = phi double [ %129, %124 ], [ %98, %94 ]
  %132 = phi double [ %128, %124 ], [ %99, %94 ]
  %133 = phi double [ %127, %124 ], [ %100, %94 ]
  br i1 %79, label %134, label %140

134:                                              ; preds = %130
  %135 = load float, ptr %59, align 8, !tbaa !51
  %136 = fpext float %135 to double
  %137 = call double @llvm.fmuladd.f64(double %136, double 0x3EF0001000100010, double %97)
  store double %137, ptr %60, align 16, !tbaa !12
  %138 = call double @llvm.fmuladd.f64(double %111, double %136, double %96)
  store double %138, ptr %61, align 16, !tbaa !12
  %139 = call double @llvm.fmuladd.f64(double %75, double %136, double %95)
  store double %139, ptr %62, align 16, !tbaa !12
  br label %140

140:                                              ; preds = %134, %130
  %141 = phi double [ %139, %134 ], [ %95, %130 ]
  %142 = phi double [ %138, %134 ], [ %96, %130 ]
  %143 = phi double [ %137, %134 ], [ %97, %130 ]
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 1
  %145 = add nuw nsw i64 %104, 1
  %146 = icmp eq i64 %145, %71
  br i1 %146, label %147, label %94, !llvm.loop !96

147:                                              ; preds = %140, %69
  %148 = add nuw nsw i64 %66, 1
  %149 = load i64, ptr %40, align 8, !tbaa !29
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %64, label %43, !llvm.loop !97

151:                                              ; preds = %223
  %152 = load i64, ptr %40, align 8, !tbaa !29
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %495

154:                                              ; preds = %151
  %155 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 1
  %156 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 1, i32 1
  %157 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  %158 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 1
  %159 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 1
  %160 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 1
  %161 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 1
  %162 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 1
  %163 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 1
  %164 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 1
  %165 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 1
  %166 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 2
  %167 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 2, i32 1
  %168 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 4
  %169 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 4, i32 1
  %170 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  %171 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 4
  %172 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 4
  %173 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 4
  %174 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 4
  %175 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 4
  %176 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 4
  %177 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 4
  %178 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %179 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %180 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 8
  %181 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 8, i32 1
  %182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %183 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 8
  %184 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 8
  %185 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 8
  %186 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 8
  %187 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 8
  %188 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 8
  %189 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 8
  %190 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %191 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %192 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 32
  %193 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 32, i32 1
  %194 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 9
  %195 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 32
  %196 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 32
  %197 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 32
  %198 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 32
  %199 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 32
  %200 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 32
  %201 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 32
  %202 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  br label %228

203:                                              ; preds = %43, %223
  %204 = phi i64 [ %226, %223 ], [ 0, %43 ]
  %205 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 %204
  %206 = load double, ptr %205, align 8, !tbaa !12
  %207 = fcmp olt double %206, 1.000000e-15
  %208 = fadd double %206, 1.000000e-15
  br i1 %207, label %209, label %213

209:                                              ; preds = %203
  %210 = load <2 x i64>, ptr %39, align 8, !tbaa !31
  %211 = uitofp <2 x i64> %210 to <2 x double>
  %212 = fmul <2 x double> %211, <double 5.000000e-01, double 5.000000e-01>
  br label %223

213:                                              ; preds = %203
  %214 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 %204
  %215 = load double, ptr %214, align 8, !tbaa !12
  %216 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 %204
  %217 = load double, ptr %216, align 8, !tbaa !12
  %218 = insertelement <2 x double> poison, double %215, i64 0
  %219 = insertelement <2 x double> %218, double %217, i64 1
  %220 = insertelement <2 x double> poison, double %208, i64 0
  %221 = shufflevector <2 x double> %220, <2 x double> poison, <2 x i32> zeroinitializer
  %222 = fdiv <2 x double> %219, %221
  br label %223

223:                                              ; preds = %213, %209
  %224 = phi <2 x double> [ %212, %209 ], [ %222, %213 ]
  store double %208, ptr %205, align 8
  %225 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 %204
  store <2 x double> %224, ptr %225, align 16
  %226 = add nuw nsw i64 %204, 1
  %227 = icmp eq i64 %226, 48
  br i1 %227, label %151, label %203, !llvm.loop !98

228:                                              ; preds = %154, %491
  %229 = phi i64 [ 0, %154 ], [ %492, %491 ]
  %230 = load i64, ptr %39, align 8, !tbaa !30
  %231 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %229, i64 noundef %230, i64 noundef 1, ptr noundef %1) #26
  %232 = icmp eq ptr %231, null
  br i1 %232, label %495, label %233

233:                                              ; preds = %228
  %234 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #26
  %235 = load i64, ptr %39, align 8, !tbaa !30
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %491

237:                                              ; preds = %233
  %238 = load <2 x double>, ptr %155, align 16
  %239 = sitofp i64 %229 to double
  %240 = load <2 x double>, ptr %156, align 8
  %241 = load double, ptr %166, align 16, !tbaa !99
  %242 = load double, ptr %167, align 8, !tbaa !101
  %243 = load double, ptr %168, align 16, !tbaa !99
  %244 = load double, ptr %169, align 8, !tbaa !101
  %245 = fsub double %239, %244
  %246 = fmul double %245, %245
  %247 = fmul double %245, %246
  %248 = insertelement <2 x double> poison, double %247, i64 0
  %249 = insertelement <2 x double> %248, double %246, i64 1
  %250 = fmul <2 x double> %249, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %251 = load i32, ptr %179, align 8, !tbaa !68
  %252 = icmp eq i32 %251, 0
  %253 = load double, ptr %180, align 16
  %254 = load double, ptr %181, align 8
  %255 = fsub double %239, %254
  %256 = fmul double %255, %255
  %257 = fmul double %255, %256
  %258 = insertelement <2 x double> poison, double %257, i64 0
  %259 = insertelement <2 x double> %258, double %256, i64 1
  %260 = fmul <2 x double> %259, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %261 = load i32, ptr %191, align 4, !tbaa !49
  %262 = icmp eq i32 %261, 12
  %263 = load double, ptr %192, align 16
  %264 = load double, ptr %193, align 8
  %265 = fsub double %239, %264
  %266 = fmul double %265, %265
  %267 = fmul double %265, %266
  %268 = insertelement <2 x double> poison, double %267, i64 0
  %269 = insertelement <2 x double> %268, double %266, i64 1
  %270 = fmul <2 x double> %269, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %271 = insertelement <2 x double> poison, double %239, i64 0
  %272 = shufflevector <2 x double> %271, <2 x double> poison, <2 x i32> zeroinitializer
  %273 = insertelement <2 x double> %240, double %242, i64 1
  %274 = fsub <2 x double> %272, %273
  %275 = load <2 x double>, ptr %158, align 8, !tbaa !12
  %276 = load <2 x double>, ptr %159, align 8, !tbaa !12
  %277 = fmul <2 x double> %274, %274
  %278 = fmul <2 x double> %277, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %279 = load <2 x double>, ptr %160, align 8, !tbaa !12
  %280 = load <2 x double>, ptr %161, align 8, !tbaa !12
  %281 = load <2 x double>, ptr %162, align 8, !tbaa !12
  %282 = load <2 x double>, ptr %163, align 8, !tbaa !12
  %283 = load <2 x double>, ptr %164, align 8, !tbaa !12
  %284 = fmul <2 x double> %274, %277
  %285 = fmul <2 x double> %284, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %286 = load <2 x double>, ptr %165, align 8, !tbaa !12
  %287 = load double, ptr %171, align 16, !tbaa !12
  %288 = load double, ptr %172, align 16, !tbaa !12
  %289 = load double, ptr %173, align 16, !tbaa !12
  %290 = load double, ptr %174, align 16, !tbaa !12
  %291 = load double, ptr %175, align 16, !tbaa !12
  %292 = load double, ptr %176, align 16, !tbaa !12
  %293 = load double, ptr %177, align 16, !tbaa !12
  %294 = load <2 x double>, ptr %178, align 16
  %295 = shufflevector <2 x double> %294, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %296 = load double, ptr %183, align 16, !tbaa !12
  %297 = load double, ptr %184, align 16, !tbaa !12
  %298 = load double, ptr %185, align 16, !tbaa !12
  %299 = load double, ptr %186, align 16, !tbaa !12
  %300 = load double, ptr %187, align 16, !tbaa !12
  %301 = load double, ptr %188, align 16, !tbaa !12
  %302 = load double, ptr %189, align 16, !tbaa !12
  %303 = load <2 x double>, ptr %190, align 16
  %304 = shufflevector <2 x double> %303, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %305 = load double, ptr %195, align 16, !tbaa !12
  %306 = load double, ptr %196, align 16, !tbaa !12
  %307 = load double, ptr %197, align 16, !tbaa !12
  %308 = load double, ptr %198, align 16, !tbaa !12
  %309 = load double, ptr %199, align 16, !tbaa !12
  %310 = load double, ptr %200, align 16, !tbaa !12
  %311 = load double, ptr %201, align 16, !tbaa !12
  %312 = load <2 x double>, ptr %202, align 16
  %313 = shufflevector <2 x double> %312, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %314 = insertelement <8 x double> %313, double %311, i64 1
  %315 = insertelement <8 x double> %314, double %310, i64 2
  %316 = insertelement <8 x double> %315, double %309, i64 3
  %317 = insertelement <8 x double> %316, double %308, i64 4
  %318 = insertelement <8 x double> %317, double %307, i64 5
  %319 = insertelement <8 x double> %318, double %306, i64 6
  %320 = insertelement <8 x double> %319, double %305, i64 7
  %321 = insertelement <8 x double> %304, double %302, i64 1
  %322 = insertelement <8 x double> %321, double %301, i64 2
  %323 = insertelement <8 x double> %322, double %300, i64 3
  %324 = insertelement <8 x double> %323, double %299, i64 4
  %325 = insertelement <8 x double> %324, double %298, i64 5
  %326 = insertelement <8 x double> %325, double %297, i64 6
  %327 = insertelement <8 x double> %326, double %296, i64 7
  %328 = insertelement <8 x double> %295, double %293, i64 1
  %329 = insertelement <8 x double> %328, double %292, i64 2
  %330 = insertelement <8 x double> %329, double %291, i64 3
  %331 = insertelement <8 x double> %330, double %290, i64 4
  %332 = insertelement <8 x double> %331, double %289, i64 5
  %333 = insertelement <8 x double> %332, double %288, i64 6
  %334 = insertelement <8 x double> %333, double %287, i64 7
  %335 = insertelement <2 x double> poison, double %265, i64 0
  %336 = shufflevector <2 x double> %335, <2 x double> poison, <2 x i32> zeroinitializer
  %337 = shufflevector <2 x double> %270, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison>
  %338 = insertelement <2 x double> poison, double %255, i64 0
  %339 = shufflevector <2 x double> %338, <2 x double> poison, <2 x i32> zeroinitializer
  %340 = shufflevector <2 x double> %260, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison>
  %341 = insertelement <2 x double> %238, double %241, i64 1
  %342 = insertelement <2 x double> poison, double %245, i64 0
  %343 = shufflevector <2 x double> %342, <2 x double> poison, <2 x i32> zeroinitializer
  %344 = shufflevector <2 x double> %250, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison>
  br label %345

345:                                              ; preds = %237, %486
  %346 = phi i64 [ 0, %237 ], [ %489, %486 ]
  %347 = phi ptr [ %231, %237 ], [ %488, %486 ]
  %348 = phi <8 x double> [ %320, %237 ], [ %487, %486 ]
  %349 = phi <8 x double> [ %327, %237 ], [ %452, %486 ]
  %350 = phi <2 x double> [ %275, %237 ], [ %368, %486 ]
  %351 = phi <2 x double> [ %276, %237 ], [ %371, %486 ]
  %352 = phi <2 x double> [ %279, %237 ], [ %372, %486 ]
  %353 = phi <2 x double> [ %280, %237 ], [ %375, %486 ]
  %354 = phi <2 x double> [ %281, %237 ], [ %378, %486 ]
  %355 = phi <2 x double> [ %282, %237 ], [ %381, %486 ]
  %356 = phi <2 x double> [ %283, %237 ], [ %384, %486 ]
  %357 = phi <2 x double> [ %286, %237 ], [ %385, %486 ]
  %358 = phi <8 x double> [ %334, %237 ], [ %409, %486 ]
  %359 = getelementptr inbounds i16, ptr %234, i64 %346
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %347, ptr noundef %359, ptr noundef nonnull %14) #25
  %360 = sitofp i64 %346 to double
  %361 = insertelement <2 x double> poison, double %360, i64 0
  %362 = shufflevector <2 x double> %361, <2 x double> poison, <2 x i32> zeroinitializer
  %363 = fsub <2 x double> %362, %341
  %364 = load <2 x float>, ptr %157, align 8, !tbaa !37
  %365 = fpext <2 x float> %364 to <2 x double>
  %366 = fmul <2 x double> %363, %274
  %367 = fmul <2 x double> %366, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %368 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %367, <2 x double> %365, <2 x double> %350)
  store <2 x double> %368, ptr %158, align 8, !tbaa !12
  %369 = fmul <2 x double> %363, %363
  %370 = fmul <2 x double> %369, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %371 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %370, <2 x double> %365, <2 x double> %351)
  store <2 x double> %371, ptr %159, align 8, !tbaa !12
  %372 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %278, <2 x double> %365, <2 x double> %352)
  store <2 x double> %372, ptr %160, align 8, !tbaa !12
  %373 = fmul <2 x double> %369, %274
  %374 = fmul <2 x double> %373, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %375 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %374, <2 x double> %365, <2 x double> %353)
  store <2 x double> %375, ptr %161, align 8, !tbaa !12
  %376 = fmul <2 x double> %274, %366
  %377 = fmul <2 x double> %376, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %378 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %377, <2 x double> %365, <2 x double> %354)
  store <2 x double> %378, ptr %162, align 8, !tbaa !12
  %379 = fmul <2 x double> %274, %373
  %380 = fmul <2 x double> %379, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %381 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %380, <2 x double> %365, <2 x double> %355)
  store <2 x double> %381, ptr %163, align 8, !tbaa !12
  %382 = fmul <2 x double> %363, %369
  %383 = fmul <2 x double> %382, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %384 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %383, <2 x double> %365, <2 x double> %356)
  store <2 x double> %384, ptr %164, align 8, !tbaa !12
  %385 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %285, <2 x double> %365, <2 x double> %357)
  store <2 x double> %385, ptr %165, align 8, !tbaa !12
  %386 = fsub double %360, %243
  %387 = load float, ptr %170, align 8, !tbaa !46
  %388 = fpext float %387 to double
  %389 = fmul double %386, %386
  %390 = insertelement <2 x double> poison, double %389, i64 0
  %391 = insertelement <2 x double> %390, double %386, i64 1
  %392 = fmul <2 x double> %391, %343
  %393 = insertelement <2 x double> %392, double %389, i64 0
  %394 = fmul <2 x double> %393, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %395 = extractelement <2 x double> %392, i64 0
  %396 = fmul double %395, 0x3EF0001000100010
  %397 = fmul <2 x double> %343, %392
  %398 = fmul <2 x double> %397, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %399 = fmul double %386, %389
  %400 = fmul double %399, 0x3EF0001000100010
  %401 = insertelement <8 x double> %344, double %400, i64 1
  %402 = shufflevector <2 x double> %398, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %403 = shufflevector <8 x double> %401, <8 x double> %402, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 5, i32 poison, i32 poison>
  %404 = insertelement <8 x double> %403, double %396, i64 4
  %405 = shufflevector <2 x double> %394, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %406 = shufflevector <8 x double> %404, <8 x double> %405, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %407 = insertelement <8 x double> poison, double %388, i64 0
  %408 = shufflevector <8 x double> %407, <8 x double> poison, <8 x i32> zeroinitializer
  %409 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %406, <8 x double> %408, <8 x double> %358)
  %410 = extractelement <8 x double> %409, i64 7
  store double %410, ptr %171, align 16, !tbaa !12
  %411 = extractelement <8 x double> %409, i64 6
  store double %411, ptr %172, align 16, !tbaa !12
  %412 = extractelement <8 x double> %409, i64 5
  store double %412, ptr %173, align 16, !tbaa !12
  %413 = extractelement <8 x double> %409, i64 4
  store double %413, ptr %174, align 16, !tbaa !12
  %414 = extractelement <8 x double> %409, i64 3
  store double %414, ptr %175, align 16, !tbaa !12
  %415 = extractelement <8 x double> %409, i64 2
  store double %415, ptr %176, align 16, !tbaa !12
  %416 = extractelement <8 x double> %409, i64 1
  store double %416, ptr %177, align 16, !tbaa !12
  %417 = extractelement <8 x double> %409, i64 0
  store double %417, ptr %178, align 16, !tbaa !12
  br i1 %252, label %451, label %418

418:                                              ; preds = %345
  %419 = fsub double %360, %253
  %420 = load float, ptr %182, align 4, !tbaa !48
  %421 = fpext float %420 to double
  %422 = fmul double %419, %419
  %423 = insertelement <2 x double> poison, double %422, i64 0
  %424 = insertelement <2 x double> %423, double %419, i64 1
  %425 = fmul <2 x double> %424, %339
  %426 = insertelement <2 x double> %425, double %422, i64 0
  %427 = fmul <2 x double> %426, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %428 = extractelement <2 x double> %425, i64 0
  %429 = fmul double %428, 0x3EF0001000100010
  %430 = fmul <2 x double> %339, %425
  %431 = fmul <2 x double> %430, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %432 = fmul double %419, %422
  %433 = fmul double %432, 0x3EF0001000100010
  %434 = insertelement <8 x double> %340, double %433, i64 1
  %435 = shufflevector <2 x double> %431, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %436 = shufflevector <8 x double> %434, <8 x double> %435, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 5, i32 poison, i32 poison>
  %437 = insertelement <8 x double> %436, double %429, i64 4
  %438 = shufflevector <2 x double> %427, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %439 = shufflevector <8 x double> %437, <8 x double> %438, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %440 = insertelement <8 x double> poison, double %421, i64 0
  %441 = shufflevector <8 x double> %440, <8 x double> poison, <8 x i32> zeroinitializer
  %442 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %439, <8 x double> %441, <8 x double> %349)
  %443 = extractelement <8 x double> %442, i64 7
  store double %443, ptr %183, align 16, !tbaa !12
  %444 = extractelement <8 x double> %442, i64 6
  store double %444, ptr %184, align 16, !tbaa !12
  %445 = extractelement <8 x double> %442, i64 5
  store double %445, ptr %185, align 16, !tbaa !12
  %446 = extractelement <8 x double> %442, i64 4
  store double %446, ptr %186, align 16, !tbaa !12
  %447 = extractelement <8 x double> %442, i64 3
  store double %447, ptr %187, align 16, !tbaa !12
  %448 = extractelement <8 x double> %442, i64 2
  store double %448, ptr %188, align 16, !tbaa !12
  %449 = extractelement <8 x double> %442, i64 1
  store double %449, ptr %189, align 16, !tbaa !12
  %450 = extractelement <8 x double> %442, i64 0
  store double %450, ptr %190, align 16, !tbaa !12
  br label %451

451:                                              ; preds = %418, %345
  %452 = phi <8 x double> [ %442, %418 ], [ %349, %345 ]
  br i1 %262, label %453, label %486

453:                                              ; preds = %451
  %454 = fsub double %360, %263
  %455 = load float, ptr %194, align 8, !tbaa !51
  %456 = fpext float %455 to double
  %457 = fmul double %454, %454
  %458 = insertelement <2 x double> poison, double %457, i64 0
  %459 = insertelement <2 x double> %458, double %454, i64 1
  %460 = fmul <2 x double> %459, %336
  %461 = insertelement <2 x double> %460, double %457, i64 0
  %462 = fmul <2 x double> %461, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %463 = extractelement <2 x double> %460, i64 0
  %464 = fmul double %463, 0x3EF0001000100010
  %465 = fmul <2 x double> %336, %460
  %466 = fmul <2 x double> %465, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %467 = fmul double %454, %457
  %468 = fmul double %467, 0x3EF0001000100010
  %469 = insertelement <8 x double> %337, double %468, i64 1
  %470 = shufflevector <2 x double> %466, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %471 = shufflevector <8 x double> %469, <8 x double> %470, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 5, i32 poison, i32 poison>
  %472 = insertelement <8 x double> %471, double %464, i64 4
  %473 = shufflevector <2 x double> %462, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %474 = shufflevector <8 x double> %472, <8 x double> %473, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %475 = insertelement <8 x double> poison, double %456, i64 0
  %476 = shufflevector <8 x double> %475, <8 x double> poison, <8 x i32> zeroinitializer
  %477 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %474, <8 x double> %476, <8 x double> %348)
  %478 = extractelement <8 x double> %477, i64 7
  store double %478, ptr %195, align 16, !tbaa !12
  %479 = extractelement <8 x double> %477, i64 6
  store double %479, ptr %196, align 16, !tbaa !12
  %480 = extractelement <8 x double> %477, i64 5
  store double %480, ptr %197, align 16, !tbaa !12
  %481 = extractelement <8 x double> %477, i64 4
  store double %481, ptr %198, align 16, !tbaa !12
  %482 = extractelement <8 x double> %477, i64 3
  store double %482, ptr %199, align 16, !tbaa !12
  %483 = extractelement <8 x double> %477, i64 2
  store double %483, ptr %200, align 16, !tbaa !12
  %484 = extractelement <8 x double> %477, i64 1
  store double %484, ptr %201, align 16, !tbaa !12
  %485 = extractelement <8 x double> %477, i64 0
  store double %485, ptr %202, align 16, !tbaa !12
  br label %486

486:                                              ; preds = %453, %451
  %487 = phi <8 x double> [ %477, %453 ], [ %348, %451 ]
  %488 = getelementptr inbounds %struct._PixelPacket, ptr %347, i64 1
  %489 = add nuw nsw i64 %346, 1
  %490 = icmp eq i64 %489, %235
  br i1 %490, label %491, label %345, !llvm.loop !102

491:                                              ; preds = %486, %233
  %492 = add nuw nsw i64 %229, 1
  %493 = load i64, ptr %40, align 8, !tbaa !29
  %494 = icmp slt i64 %492, %493
  br i1 %494, label %228, label %495, !llvm.loop !103

495:                                              ; preds = %491, %228, %151
  %496 = phi i64 [ 0, %151 ], [ %229, %228 ], [ %492, %491 ]
  %497 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 1
  %498 = load double, ptr %497, align 8, !tbaa !12
  %499 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 2
  %500 = load double, ptr %499, align 16, !tbaa !12
  %501 = fadd double %498, %500
  %502 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 4
  %503 = load double, ptr %502, align 16, !tbaa !12
  %504 = fadd double %501, %503
  %505 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 47
  %506 = load double, ptr %505, align 8, !tbaa !12
  %507 = fadd double %506, %504
  store double %507, ptr %505, align 8, !tbaa !12
  %508 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 1
  %509 = load double, ptr %508, align 8, !tbaa !12
  %510 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 2
  %511 = load double, ptr %510, align 16, !tbaa !12
  %512 = fadd double %509, %511
  %513 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 4
  %514 = load double, ptr %513, align 16, !tbaa !12
  %515 = fadd double %512, %514
  %516 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 47
  %517 = load double, ptr %516, align 8, !tbaa !12
  %518 = fadd double %517, %515
  store double %518, ptr %516, align 8, !tbaa !12
  %519 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 1
  %520 = load double, ptr %519, align 8, !tbaa !12
  %521 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 2
  %522 = load double, ptr %521, align 16, !tbaa !12
  %523 = fadd double %520, %522
  %524 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 4
  %525 = load double, ptr %524, align 16, !tbaa !12
  %526 = fadd double %523, %525
  %527 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 47
  %528 = load double, ptr %527, align 8, !tbaa !12
  %529 = fadd double %528, %526
  store double %529, ptr %527, align 8, !tbaa !12
  %530 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 1
  %531 = load double, ptr %530, align 8, !tbaa !12
  %532 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 2
  %533 = load double, ptr %532, align 16, !tbaa !12
  %534 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %535 = load double, ptr %534, align 16, !tbaa !12
  %536 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %537 = load double, ptr %536, align 8, !tbaa !12
  %538 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 1
  %539 = load double, ptr %538, align 8, !tbaa !12
  %540 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 2
  %541 = load double, ptr %540, align 16, !tbaa !12
  %542 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 4
  %543 = load double, ptr %542, align 16, !tbaa !12
  %544 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 47
  %545 = load double, ptr %544, align 8, !tbaa !12
  %546 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 1
  %547 = load double, ptr %546, align 8, !tbaa !12
  %548 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 2
  %549 = load double, ptr %548, align 16, !tbaa !12
  %550 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 4
  %551 = load double, ptr %550, align 16, !tbaa !12
  %552 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 47
  %553 = load double, ptr %552, align 8, !tbaa !12
  %554 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 1
  %555 = load double, ptr %554, align 8, !tbaa !12
  %556 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 2
  %557 = load double, ptr %556, align 16, !tbaa !12
  %558 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 4
  %559 = load double, ptr %558, align 16, !tbaa !12
  %560 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 47
  %561 = load double, ptr %560, align 8, !tbaa !12
  %562 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 1
  %563 = load double, ptr %562, align 8, !tbaa !12
  %564 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 2
  %565 = load double, ptr %564, align 16, !tbaa !12
  %566 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 4
  %567 = load double, ptr %566, align 16, !tbaa !12
  %568 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 47
  %569 = load double, ptr %568, align 8, !tbaa !12
  %570 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 1
  %571 = load double, ptr %570, align 8, !tbaa !12
  %572 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 2
  %573 = load double, ptr %572, align 16, !tbaa !12
  %574 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 4
  %575 = load double, ptr %574, align 16, !tbaa !12
  %576 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 47
  %577 = load double, ptr %576, align 8, !tbaa !12
  %578 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 1
  %579 = load double, ptr %578, align 8, !tbaa !12
  %580 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 2
  %581 = load double, ptr %580, align 16, !tbaa !12
  %582 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 4
  %583 = load double, ptr %582, align 16, !tbaa !12
  %584 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 47
  %585 = load double, ptr %584, align 8, !tbaa !12
  %586 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 1
  %587 = load <2 x double>, ptr %586, align 8
  %588 = shufflevector <2 x double> %587, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %589 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 2
  %590 = load <2 x double>, ptr %589, align 16
  %591 = shufflevector <2 x double> %590, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %592 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 4
  %593 = load <2 x double>, ptr %592, align 16
  %594 = shufflevector <2 x double> %593, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %595 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 47
  %596 = load double, ptr %595, align 8, !tbaa !12
  %597 = insertelement <8 x double> %588, double %579, i64 1
  %598 = insertelement <8 x double> %597, double %571, i64 2
  %599 = insertelement <8 x double> %598, double %563, i64 3
  %600 = insertelement <8 x double> %599, double %555, i64 4
  %601 = insertelement <8 x double> %600, double %547, i64 5
  %602 = insertelement <8 x double> %601, double %539, i64 6
  %603 = insertelement <8 x double> %602, double %531, i64 7
  %604 = insertelement <8 x double> %591, double %581, i64 1
  %605 = insertelement <8 x double> %604, double %573, i64 2
  %606 = insertelement <8 x double> %605, double %565, i64 3
  %607 = insertelement <8 x double> %606, double %557, i64 4
  %608 = insertelement <8 x double> %607, double %549, i64 5
  %609 = insertelement <8 x double> %608, double %541, i64 6
  %610 = insertelement <8 x double> %609, double %533, i64 7
  %611 = fadd <8 x double> %603, %610
  %612 = insertelement <8 x double> %594, double %583, i64 1
  %613 = insertelement <8 x double> %612, double %575, i64 2
  %614 = insertelement <8 x double> %613, double %567, i64 3
  %615 = insertelement <8 x double> %614, double %559, i64 4
  %616 = insertelement <8 x double> %615, double %551, i64 5
  %617 = insertelement <8 x double> %616, double %543, i64 6
  %618 = insertelement <8 x double> %617, double %535, i64 7
  %619 = fadd <8 x double> %611, %618
  %620 = insertelement <8 x double> poison, double %596, i64 0
  %621 = insertelement <8 x double> %620, double %585, i64 1
  %622 = insertelement <8 x double> %621, double %577, i64 2
  %623 = insertelement <8 x double> %622, double %569, i64 3
  %624 = insertelement <8 x double> %623, double %561, i64 4
  %625 = insertelement <8 x double> %624, double %553, i64 5
  %626 = insertelement <8 x double> %625, double %545, i64 6
  %627 = insertelement <8 x double> %626, double %537, i64 7
  %628 = fadd <8 x double> %627, %619
  %629 = extractelement <8 x double> %628, i64 7
  store double %629, ptr %536, align 8, !tbaa !12
  %630 = extractelement <8 x double> %628, i64 6
  store double %630, ptr %544, align 8, !tbaa !12
  %631 = extractelement <8 x double> %628, i64 5
  store double %631, ptr %552, align 8, !tbaa !12
  %632 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %633 = load i32, ptr %632, align 8, !tbaa !68
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %639

635:                                              ; preds = %495
  %636 = load double, ptr %505, align 8, !tbaa !12
  %637 = load double, ptr %516, align 8, !tbaa !12
  %638 = load double, ptr %527, align 8, !tbaa !12
  br label %674

639:                                              ; preds = %495
  %640 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 8
  %641 = load double, ptr %640, align 16, !tbaa !12
  %642 = fadd double %507, %641
  store double %642, ptr %505, align 8, !tbaa !12
  %643 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 8
  %644 = load double, ptr %643, align 16, !tbaa !12
  %645 = fadd double %518, %644
  store double %645, ptr %516, align 8, !tbaa !12
  %646 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 8
  %647 = load double, ptr %646, align 16, !tbaa !12
  %648 = fadd double %529, %647
  store double %648, ptr %527, align 8, !tbaa !12
  %649 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %650 = load double, ptr %649, align 16, !tbaa !12
  %651 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 8
  %652 = load double, ptr %651, align 16, !tbaa !12
  %653 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 8
  %654 = load double, ptr %653, align 16, !tbaa !12
  %655 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 8
  %656 = load double, ptr %655, align 16, !tbaa !12
  %657 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 8
  %658 = load double, ptr %657, align 16, !tbaa !12
  %659 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 8
  %660 = load double, ptr %659, align 16, !tbaa !12
  %661 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 8
  %662 = load double, ptr %661, align 16, !tbaa !12
  %663 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 8
  %664 = load <2 x double>, ptr %663, align 16
  %665 = shufflevector <2 x double> %664, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %666 = insertelement <8 x double> %665, double %662, i64 1
  %667 = insertelement <8 x double> %666, double %660, i64 2
  %668 = insertelement <8 x double> %667, double %658, i64 3
  %669 = insertelement <8 x double> %668, double %656, i64 4
  %670 = insertelement <8 x double> %669, double %654, i64 5
  %671 = insertelement <8 x double> %670, double %652, i64 6
  %672 = insertelement <8 x double> %671, double %650, i64 7
  %673 = fadd <8 x double> %628, %672
  br label %674

674:                                              ; preds = %635, %639
  %675 = phi double [ %648, %639 ], [ %638, %635 ]
  %676 = phi double [ %645, %639 ], [ %637, %635 ]
  %677 = phi double [ %642, %639 ], [ %636, %635 ]
  %678 = phi i64 [ 4, %639 ], [ 3, %635 ]
  %679 = phi <8 x double> [ %673, %639 ], [ %628, %635 ]
  %680 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %681 = load i32, ptr %680, align 4, !tbaa !49
  %682 = icmp eq i32 %681, 12
  br i1 %682, label %683, label %719

683:                                              ; preds = %674
  %684 = add nuw nsw i64 %678, 1
  %685 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 32
  %686 = load double, ptr %685, align 16, !tbaa !12
  %687 = fadd double %686, %677
  %688 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 32
  %689 = load double, ptr %688, align 16, !tbaa !12
  %690 = fadd double %689, %676
  %691 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 32
  %692 = load double, ptr %691, align 16, !tbaa !12
  %693 = fadd double %692, %675
  %694 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  %695 = load double, ptr %694, align 16, !tbaa !12
  %696 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 32
  %697 = load double, ptr %696, align 16, !tbaa !12
  %698 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 32
  %699 = load double, ptr %698, align 16, !tbaa !12
  %700 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 32
  %701 = load double, ptr %700, align 16, !tbaa !12
  %702 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 32
  %703 = load double, ptr %702, align 16, !tbaa !12
  %704 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 32
  %705 = load double, ptr %704, align 16, !tbaa !12
  %706 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 32
  %707 = load double, ptr %706, align 16, !tbaa !12
  %708 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 32
  %709 = load <2 x double>, ptr %708, align 16
  %710 = shufflevector <2 x double> %709, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %711 = insertelement <8 x double> %710, double %707, i64 1
  %712 = insertelement <8 x double> %711, double %705, i64 2
  %713 = insertelement <8 x double> %712, double %703, i64 3
  %714 = insertelement <8 x double> %713, double %701, i64 4
  %715 = insertelement <8 x double> %714, double %699, i64 5
  %716 = insertelement <8 x double> %715, double %697, i64 6
  %717 = insertelement <8 x double> %716, double %695, i64 7
  %718 = fadd <8 x double> %717, %679
  br label %719

719:                                              ; preds = %683, %674
  %720 = phi double [ %693, %683 ], [ %675, %674 ]
  %721 = phi double [ %690, %683 ], [ %676, %674 ]
  %722 = phi double [ %687, %683 ], [ %677, %674 ]
  %723 = phi i64 [ %684, %683 ], [ %678, %674 ]
  %724 = phi <8 x double> [ %718, %683 ], [ %679, %674 ]
  %725 = sitofp i64 %723 to double
  %726 = fdiv double %722, %725
  store double %726, ptr %505, align 8, !tbaa !12
  %727 = fdiv double %721, %725
  store double %727, ptr %516, align 8, !tbaa !12
  %728 = fdiv double %720, %725
  store double %728, ptr %527, align 8, !tbaa !12
  %729 = extractelement <8 x double> %724, i64 7
  %730 = fdiv double %729, %725
  store double %730, ptr %536, align 8, !tbaa !12
  %731 = extractelement <8 x double> %724, i64 6
  %732 = fdiv double %731, %725
  store double %732, ptr %544, align 8, !tbaa !12
  %733 = extractelement <8 x double> %724, i64 5
  %734 = fdiv double %733, %725
  store double %734, ptr %552, align 8, !tbaa !12
  %735 = extractelement <8 x double> %724, i64 4
  %736 = fdiv double %735, %725
  store double %736, ptr %560, align 8, !tbaa !12
  %737 = extractelement <8 x double> %724, i64 3
  %738 = fdiv double %737, %725
  store double %738, ptr %568, align 8, !tbaa !12
  %739 = extractelement <8 x double> %724, i64 2
  %740 = fdiv double %739, %725
  store double %740, ptr %576, align 8, !tbaa !12
  %741 = extractelement <8 x double> %724, i64 1
  %742 = fdiv double %741, %725
  store double %742, ptr %584, align 8, !tbaa !12
  %743 = extractelement <8 x double> %724, i64 0
  %744 = fdiv double %743, %725
  store double %744, ptr %595, align 8, !tbaa !12
  br label %745

745:                                              ; preds = %719, %745
  %746 = phi i64 [ 0, %719 ], [ %810, %745 ]
  %747 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 1
  %748 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 %746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %747, ptr noundef nonnull align 16 dereferenceable(16) %748, i64 16, i1 false), !tbaa.struct !104
  %749 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 %746
  %750 = load double, ptr %749, align 8, !tbaa !12
  %751 = fdiv double 2.000000e+00, %750
  %752 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 %746
  %753 = load double, ptr %752, align 8, !tbaa !12
  %754 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 %746
  %755 = load double, ptr %754, align 8, !tbaa !12
  %756 = fadd double %753, %755
  %757 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 %746
  %758 = load double, ptr %757, align 8, !tbaa !12
  %759 = fmul double %758, 4.000000e+00
  %760 = fsub double %753, %755
  %761 = fmul double %760, %760
  %762 = call double @llvm.fmuladd.f64(double %759, double %758, double %761)
  %763 = call double @sqrt(double noundef %762) #26
  %764 = fadd double %756, %763
  %765 = fmul double %751, %764
  %766 = call double @sqrt(double noundef %765) #26
  %767 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 2
  store double %766, ptr %767, align 8, !tbaa !105
  %768 = load double, ptr %749, align 8, !tbaa !12
  %769 = fdiv double 2.000000e+00, %768
  %770 = load double, ptr %752, align 8, !tbaa !12
  %771 = load double, ptr %754, align 8, !tbaa !12
  %772 = fadd double %770, %771
  %773 = load double, ptr %757, align 8, !tbaa !12
  %774 = fmul double %773, 4.000000e+00
  %775 = fsub double %770, %771
  %776 = fmul double %775, %775
  %777 = call double @llvm.fmuladd.f64(double %774, double %773, double %776)
  %778 = call double @sqrt(double noundef %777) #26
  %779 = fsub double %772, %778
  %780 = fmul double %769, %779
  %781 = call double @sqrt(double noundef %780) #26
  %782 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 2, i32 1
  store double %781, ptr %782, align 8, !tbaa !107
  %783 = load double, ptr %757, align 8, !tbaa !12
  %784 = fmul double %783, 2.000000e+00
  %785 = load double, ptr %752, align 8, !tbaa !12
  %786 = load double, ptr %754, align 8, !tbaa !12
  %787 = fsub double %785, %786
  %788 = fadd double %787, 1.000000e-15
  %789 = fdiv double %784, %788
  %790 = call double @atan(double noundef %789) #26
  %791 = fmul double %790, 5.000000e-01
  %792 = fptrunc double %791 to float
  %793 = call fastcc float @RadiansToDegrees(float noundef %792) #25
  %794 = fpext float %793 to double
  %795 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 3
  store double %794, ptr %795, align 8, !tbaa !108
  %796 = load double, ptr %782, align 8, !tbaa !107
  %797 = load double, ptr %767, align 8, !tbaa !105
  %798 = fadd double %797, 1.000000e-15
  %799 = fdiv double %796, %798
  %800 = fsub double 1.000000e+00, %799
  %801 = call double @sqrt(double noundef %800) #26
  %802 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 4
  store double %801, ptr %802, align 8, !tbaa !109
  %803 = load double, ptr %749, align 8, !tbaa !12
  %804 = load double, ptr %767, align 8, !tbaa !105
  %805 = fmul double %804, 0x400921FB54442D18
  %806 = load double, ptr %782, align 8, !tbaa !107
  %807 = call double @llvm.fmuladd.f64(double %805, double %806, double 1.000000e-15)
  %808 = fdiv double %803, %807
  %809 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 5
  store double %808, ptr %809, align 8, !tbaa !110
  %810 = add nuw nsw i64 %746, 1
  %811 = icmp eq i64 %810, 48
  br i1 %811, label %812, label %745, !llvm.loop !111

812:                                              ; preds = %745, %812
  %813 = phi i64 [ %852, %812 ], [ 0, %745 ]
  %814 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 %813
  store double 0.000000e+00, ptr %814, align 8, !tbaa !12
  %815 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 %813
  store double 0.000000e+00, ptr %815, align 8, !tbaa !12
  %816 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 %813
  %817 = load double, ptr %816, align 8, !tbaa !12
  %818 = fmul double %817, %817
  %819 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 %813
  %820 = load double, ptr %819, align 8, !tbaa !12
  %821 = fdiv double %820, %818
  store double %821, ptr %819, align 8, !tbaa !12
  %822 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 %813
  %823 = load double, ptr %822, align 8, !tbaa !12
  %824 = fdiv double %823, %818
  store double %824, ptr %822, align 8, !tbaa !12
  %825 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 %813
  %826 = load double, ptr %825, align 8, !tbaa !12
  %827 = fdiv double %826, %818
  store double %827, ptr %825, align 8, !tbaa !12
  %828 = call double @pow(double noundef %817, double noundef 2.500000e+00) #26
  %829 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 %813
  %830 = load double, ptr %829, align 8, !tbaa !12
  %831 = fdiv double %830, %828
  store double %831, ptr %829, align 8, !tbaa !12
  %832 = load double, ptr %816, align 8, !tbaa !12
  %833 = call double @pow(double noundef %832, double noundef 2.500000e+00) #26
  %834 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 %813
  %835 = load double, ptr %834, align 8, !tbaa !12
  %836 = fdiv double %835, %833
  store double %836, ptr %834, align 8, !tbaa !12
  %837 = load double, ptr %816, align 8, !tbaa !12
  %838 = call double @pow(double noundef %837, double noundef 3.000000e+00) #26
  %839 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 %813
  %840 = load double, ptr %839, align 8, !tbaa !12
  %841 = fdiv double %840, %838
  store double %841, ptr %839, align 8, !tbaa !12
  %842 = load double, ptr %816, align 8, !tbaa !12
  %843 = call double @pow(double noundef %842, double noundef 2.500000e+00) #26
  %844 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 %813
  %845 = load double, ptr %844, align 8, !tbaa !12
  %846 = fdiv double %845, %843
  store double %846, ptr %844, align 8, !tbaa !12
  %847 = load double, ptr %816, align 8, !tbaa !12
  %848 = call double @pow(double noundef %847, double noundef 2.500000e+00) #26
  %849 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %813
  %850 = load double, ptr %849, align 8, !tbaa !12
  %851 = fdiv double %850, %848
  store double %851, ptr %849, align 8, !tbaa !12
  store double 1.000000e+00, ptr %816, align 8, !tbaa !12
  %852 = add nuw nsw i64 %813, 1
  %853 = icmp eq i64 %852, 48
  br i1 %853, label %854, label %812, !llvm.loop !112

854:                                              ; preds = %812, %854
  %855 = phi i64 [ %933, %854 ], [ 0, %812 ]
  %856 = or disjoint i64 %855, 1
  %857 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 %855
  %858 = load <2 x double>, ptr %857, align 16, !tbaa !12
  %859 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 %855
  %860 = load <2 x double>, ptr %859, align 16, !tbaa !12
  %861 = fadd <2 x double> %858, %860
  %862 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %855
  %863 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %856
  %864 = extractelement <2 x double> %861, i64 0
  store double %864, ptr %862, align 8, !tbaa !12
  %865 = fsub <2 x double> %858, %860
  %866 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 %855
  %867 = load <2 x double>, ptr %866, align 16, !tbaa !12
  %868 = fmul <2 x double> %867, <double 4.000000e+00, double 4.000000e+00>
  %869 = fmul <2 x double> %867, %868
  %870 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %865, <2 x double> %865, <2 x double> %869)
  %871 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 1
  %872 = extractelement <2 x double> %870, i64 0
  store double %872, ptr %871, align 8, !tbaa !12
  %873 = shufflevector <2 x double> %861, <2 x double> %870, <2 x i32> <i32 1, i32 3>
  store <2 x double> %873, ptr %863, align 8, !tbaa !12
  %874 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 %855
  %875 = load <2 x double>, ptr %874, align 16, !tbaa !12
  %876 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 %855
  %877 = load <2 x double>, ptr %876, align 16, !tbaa !12
  %878 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %877, <2 x double> <double -3.000000e+00, double -3.000000e+00>, <2 x double> %875)
  %879 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 %855
  %880 = load <2 x double>, ptr %879, align 16, !tbaa !12
  %881 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %855
  %882 = load <2 x double>, ptr %881, align 16, !tbaa !12
  %883 = fneg <2 x double> %882
  %884 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %880, <2 x double> <double 3.000000e+00, double 3.000000e+00>, <2 x double> %883)
  %885 = fmul <2 x double> %884, %884
  %886 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %878, <2 x double> %878, <2 x double> %885)
  %887 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 2
  %888 = getelementptr inbounds [32 x double], ptr %863, i64 0, i64 2
  %889 = extractelement <2 x double> %886, i64 0
  store double %889, ptr %887, align 8, !tbaa !12
  %890 = fadd <2 x double> %875, %877
  %891 = fadd <2 x double> %880, %882
  %892 = fmul <2 x double> %891, %891
  %893 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %890, <2 x double> %890, <2 x double> %892)
  %894 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 3
  %895 = extractelement <2 x double> %893, i64 0
  store double %895, ptr %894, align 8, !tbaa !12
  %896 = shufflevector <2 x double> %886, <2 x double> %893, <2 x i32> <i32 1, i32 3>
  store <2 x double> %896, ptr %888, align 8, !tbaa !12
  %897 = fmul <2 x double> %878, %890
  %898 = fmul <2 x double> %891, <double -3.000000e+00, double -3.000000e+00>
  %899 = fmul <2 x double> %891, %898
  %900 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %890, <2 x double> %890, <2 x double> %899)
  %901 = fmul <2 x double> %884, %891
  %902 = fmul <2 x double> %890, <double 3.000000e+00, double 3.000000e+00>
  %903 = fneg <2 x double> %891
  %904 = fmul <2 x double> %891, %903
  %905 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %902, <2 x double> %890, <2 x double> %904)
  %906 = fmul <2 x double> %901, %905
  %907 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %897, <2 x double> %900, <2 x double> %906)
  %908 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 4
  %909 = getelementptr inbounds [32 x double], ptr %863, i64 0, i64 4
  %910 = extractelement <2 x double> %907, i64 0
  store double %910, ptr %908, align 8, !tbaa !12
  %911 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %890, <2 x double> %890, <2 x double> %904)
  %912 = fmul <2 x double> %868, %890
  %913 = fmul <2 x double> %912, %891
  %914 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %865, <2 x double> %911, <2 x double> %913)
  %915 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 5
  %916 = extractelement <2 x double> %914, i64 0
  store double %916, ptr %915, align 8, !tbaa !12
  %917 = shufflevector <2 x double> %907, <2 x double> %914, <2 x i32> <i32 1, i32 3>
  store <2 x double> %917, ptr %909, align 8, !tbaa !12
  %918 = fmul <2 x double> %890, %884
  %919 = fneg <2 x double> %878
  %920 = fmul <2 x double> %891, %919
  %921 = fmul <2 x double> %920, %905
  %922 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %918, <2 x double> %900, <2 x double> %921)
  %923 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 6
  %924 = getelementptr inbounds [32 x double], ptr %863, i64 0, i64 6
  %925 = extractelement <2 x double> %922, i64 0
  store double %925, ptr %923, align 8, !tbaa !12
  %926 = fneg <2 x double> %865
  %927 = fmul <2 x double> %890, %926
  %928 = fmul <2 x double> %927, %891
  %929 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %867, <2 x double> %911, <2 x double> %928)
  %930 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 7
  %931 = extractelement <2 x double> %929, i64 0
  store double %931, ptr %930, align 8, !tbaa !12
  %932 = shufflevector <2 x double> %922, <2 x double> %929, <2 x i32> <i32 1, i32 3>
  store <2 x double> %932, ptr %924, align 8, !tbaa !12
  %933 = add nuw i64 %855, 2
  %934 = icmp eq i64 %933, 48
  br i1 %934, label %935, label %854, !llvm.loop !113

935:                                              ; preds = %854
  %936 = load i64, ptr %40, align 8, !tbaa !29
  %937 = icmp slt i64 %496, %936
  br i1 %937, label %938, label %940

938:                                              ; preds = %935
  %939 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #26
  br label %940

940:                                              ; preds = %935, %938, %22
  %941 = phi ptr [ null, %22 ], [ %939, %938 ], [ %23, %935 ]
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %3) #4
  ret ptr %941
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #17 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !50
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !49
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !50
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !51
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @RadiansToDegrees(float noundef %0) unnamed_addr #10 {
  %2 = fpext float %0 to double
  %3 = fmul double %2, 1.800000e+02
  %4 = fdiv double %3, 0x400921FB54442D18
  %5 = fptrunc double %4 to float
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GetImageChannelPerceptualHash(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BlurImage(ptr noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef %1) #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 9
  store i64 8, ptr %6, align 8, !tbaa !116
  %7 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %3, i32 noundef 13) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %63, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @GetImageChannelMoments(ptr noundef nonnull %3, ptr noundef %1) #25
  %11 = tail call ptr @DestroyImage(ptr noundef nonnull %3) #26
  %12 = icmp eq ptr %10, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %9
  %14 = tail call dereferenceable_or_null(24576) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 512) #27
  %15 = icmp eq ptr %14, null
  br i1 %15, label %63, label %16

16:                                               ; preds = %13, %29
  %17 = phi i64 [ %30, %29 ], [ 0, %13 ]
  %18 = getelementptr inbounds %struct._ChannelMoments, ptr %10, i64 %17
  %19 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %14, i64 %17
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %27, %20 ]
  %22 = getelementptr inbounds [32 x double], ptr %18, i64 0, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !12
  %24 = tail call fastcc double @MagickLog10(double noundef %23) #25
  %25 = fneg double %24
  %26 = getelementptr inbounds [32 x double], ptr %19, i64 0, i64 %21
  store double %25, ptr %26, align 8, !tbaa !12
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, 7
  br i1 %28, label %29, label %20, !llvm.loop !117

29:                                               ; preds = %20
  %30 = add nuw nsw i64 %17, 1
  %31 = icmp eq i64 %30, 48
  br i1 %31, label %32, label %16, !llvm.loop !118

32:                                               ; preds = %29
  %33 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %10) #26
  %34 = tail call ptr @BlurImage(ptr noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef %1) #26
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 9
  store i64 8, ptr %37, align 8, !tbaa !116
  %38 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %34, i32 noundef 32) #26
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @GetImageChannelMoments(ptr noundef nonnull %34, ptr noundef %1) #25
  %42 = tail call ptr @DestroyImage(ptr noundef nonnull %34) #26
  %43 = icmp eq ptr %41, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %40, %56
  %45 = phi i64 [ %57, %56 ], [ 0, %40 ]
  %46 = getelementptr inbounds %struct._ChannelMoments, ptr %41, i64 %45
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi i64 [ 0, %44 ], [ %54, %47 ]
  %49 = getelementptr inbounds [32 x double], ptr %46, i64 0, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !12
  %51 = tail call fastcc double @MagickLog10(double noundef %50) #25
  %52 = fneg double %51
  %53 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %14, i64 %45, i32 1, i64 %48
  store double %52, ptr %53, align 8, !tbaa !12
  %54 = add nuw nsw i64 %48, 1
  %55 = icmp eq i64 %54, 7
  br i1 %55, label %56, label %47, !llvm.loop !119

56:                                               ; preds = %47
  %57 = add nuw nsw i64 %45, 1
  %58 = icmp eq i64 %57, 48
  br i1 %58, label %59, label %44, !llvm.loop !120

59:                                               ; preds = %56, %40, %36, %32
  %60 = phi ptr [ %14, %32 ], [ %14, %36 ], [ %14, %40 ], [ %41, %56 ]
  %61 = phi ptr [ null, %32 ], [ null, %36 ], [ null, %40 ], [ %14, %56 ]
  %62 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %60) #26
  br label %63

63:                                               ; preds = %59, %13, %9, %5, %2
  %64 = phi ptr [ null, %2 ], [ null, %5 ], [ null, %9 ], [ null, %13 ], [ %61, %59 ]
  ret ptr %64
}

; Function Attrs: optsize
declare ptr @BlurImage(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @MagickLog10(double noundef %0) unnamed_addr #18 {
  %2 = tail call double @llvm.fabs.f64(double %0)
  %3 = fcmp olt double %2, 0x3DA5FD7FE1796495
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call double @log10(double noundef %2) #26
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi double [ %5, %4 ], [ -1.100000e+01, %1 ]
  ret double %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageRange(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3) #25, !range !72
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @GetQuantumRange(i64 noundef %0) unnamed_addr #10 {
  %2 = add i64 %0, -1
  %3 = shl i64 2, %2
  %4 = add i64 %3, -1
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %0, i64 noundef %1) unnamed_addr #10 {
  %3 = uitofp i64 %1 to float
  %4 = uitofp i16 %0 to float
  %5 = fmul float %4, %3
  %6 = fdiv float %5, 6.553500e+04
  %7 = fpext float %6 to double
  %8 = fadd double %7, 5.000000e-01
  %9 = fptoui double %8 to i64
  %10 = uitofp i64 %9 to float
  %11 = fmul float %10, 6.553500e+04
  %12 = fdiv float %11, %3
  %13 = fpext float %12 to double
  %14 = fadd double %13, 5.000000e-01
  %15 = fptoui double %14 to i16
  %16 = icmp eq i16 %15, %0
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PolynomialImage(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @PolynomialImageChannel(ptr noundef %0, i32 noundef 134217719, i64 noundef %1, ptr noundef %2, ptr noundef %3) #25
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PolynomialImageChannel(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = alloca i64, align 8
  %18 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !6
  store i32 %1, ptr %7, align 4, !tbaa !10
  store i64 %2, ptr %8, align 8, !tbaa !31
  store ptr %3, ptr %9, align 8, !tbaa !6
  store ptr %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %20 = load i32, ptr %19, align 8, !tbaa !14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %24 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2475, ptr noundef nonnull @.str.2, ptr noundef nonnull %23) #26
  br label %25

25:                                               ; preds = %22, %5
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !30
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !29
  %30 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %27, i64 noundef %29, i32 noundef 1, ptr noundef %4) #26
  store ptr %30, ptr %12, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %77, label %32

32:                                               ; preds = %25
  %33 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %30, i32 noundef 1) #26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %36) #26
  %37 = tail call ptr @DestroyImage(ptr noundef nonnull %30) #26
  br label %77

38:                                               ; preds = %32
  %39 = tail call i64 @GetImageListLength(ptr noundef nonnull %0) #26
  store i64 %39, ptr %17, align 8, !tbaa !31
  %40 = tail call fastcc ptr @AcquirePixelThreadSet(ptr noundef nonnull %0, i64 noundef %39) #25
  store ptr %40, ptr %15, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = tail call ptr @DestroyImage(ptr noundef nonnull %30) #26
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %45 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2492, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %44) #26
  br label %77

46:                                               ; preds = %38
  store i32 1, ptr %13, align 4, !tbaa !10
  store i64 0, ptr %14, align 8, !tbaa !28
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %16) #26
  %47 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %30, ptr noundef %4) #26
  store ptr %47, ptr %11, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 8
  %49 = load i64, ptr %48, align 8, !tbaa !29
  %50 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %51 = shl i64 %50, 5
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %30) #26
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %30) #26
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %65

61:                                               ; preds = %56, %53, %46
  %62 = call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %63 = icmp ult i64 %62, 2
  %64 = select i1 %63, i64 1, i64 2
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i64 [ %60, %59 ], [ %64, %61 ]
  %67 = trunc i64 %66 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %18, i32 %67)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @PolynomialImageChannel.omp_outlined, ptr nonnull %12, ptr nonnull %13, ptr nonnull %11, ptr nonnull %10, ptr nonnull %15, ptr nonnull %16, ptr nonnull %6, ptr nonnull %17, ptr nonnull %8, ptr nonnull %9, ptr nonnull %7, ptr nonnull %14)
  %68 = load ptr, ptr %11, align 8, !tbaa !6
  %69 = call ptr @DestroyCacheView(ptr noundef %68) #26
  store ptr %69, ptr %11, align 8, !tbaa !6
  %70 = load ptr, ptr %15, align 8, !tbaa !6
  %71 = call fastcc ptr @DestroyPixelThreadSet(ptr noundef %70) #25
  store ptr %71, ptr %15, align 8, !tbaa !6
  %72 = load i32, ptr %13, align 4, !tbaa !10
  %73 = icmp eq i32 %72, 0
  %74 = load ptr, ptr %12, align 8, !tbaa !6
  br i1 %73, label %75, label %77

75:                                               ; preds = %65
  %76 = call ptr @DestroyImage(ptr noundef %74) #26
  br label %77

77:                                               ; preds = %65, %75, %25, %42, %35
  %78 = phi ptr [ null, %35 ], [ null, %42 ], [ null, %25 ], [ %76, %75 ], [ %74, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret ptr %78
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @PolynomialImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %12, ptr nocapture noundef nonnull align 8 dereferenceable(8) %13) #3 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = load ptr, ptr %2, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !29
  %22 = add nsw i64 %21, -1
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %288

24:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 0, ptr %15, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 %22, ptr %16, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  store i64 1, ptr %17, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #4
  store i32 0, ptr %18, align 4, !tbaa !10
  %25 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %26 = load i64, ptr %16, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %16, align 8, !tbaa !31
  %28 = load i64, ptr %15, align 8, !tbaa !31
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %287, label %30

30:                                               ; preds = %24, %279
  %31 = phi i64 [ %285, %279 ], [ %27, %24 ]
  %32 = phi i64 [ %283, %279 ], [ %28, %24 ]
  %33 = icmp sgt i64 %32, %31
  br i1 %33, label %279, label %34

34:                                               ; preds = %30, %273
  %35 = phi i64 [ %274, %273 ], [ %32, %30 ]
  %36 = call fastcc i32 @GetOpenMPThreadId() #25
  %37 = load i32, ptr %3, align 4, !tbaa !10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %273, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %4, align 8, !tbaa !6
  %41 = load ptr, ptr %2, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !30
  %44 = load ptr, ptr %5, align 8, !tbaa !6
  %45 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %35, i64 noundef %43, i64 noundef 1, ptr noundef %44) #28
  %46 = icmp eq ptr %45, null
  br i1 %46, label %272, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %4, align 8, !tbaa !6
  %49 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %48) #26
  %50 = load ptr, ptr %6, align 8, !tbaa !6
  %51 = sext i32 %36 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = load ptr, ptr %2, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !30
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47, %58
  %59 = phi i64 [ %61, %58 ], [ 0, %47 ]
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %60, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !36
  %61 = add nuw nsw i64 %59, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 7
  %64 = load i64, ptr %63, align 8, !tbaa !30
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %58, label %66, !llvm.loop !121

66:                                               ; preds = %58, %47
  %67 = load i64, ptr %9, align 8, !tbaa !31
  %68 = icmp sgt i64 %67, 0
  %69 = load i64, ptr %10, align 8
  %70 = icmp sgt i64 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %204

72:                                               ; preds = %66
  %73 = load ptr, ptr %8, align 8, !tbaa !6
  br label %74

74:                                               ; preds = %72, %195
  %75 = phi ptr [ %197, %195 ], [ %73, %72 ]
  %76 = phi i64 [ %198, %195 ], [ 0, %72 ]
  %77 = load ptr, ptr %5, align 8, !tbaa !6
  %78 = call ptr @AcquireVirtualCacheView(ptr noundef %75, ptr noundef %77) #26
  %79 = load ptr, ptr %2, align 8, !tbaa !6
  %80 = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 7
  %81 = load i64, ptr %80, align 8, !tbaa !30
  %82 = load ptr, ptr %5, align 8, !tbaa !6
  %83 = call ptr @GetCacheViewVirtualPixels(ptr noundef %78, i64 noundef 0, i64 noundef %35, i64 noundef %81, i64 noundef 1, ptr noundef %82) #28
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = call ptr @DestroyCacheView(ptr noundef %78) #26
  br label %204

87:                                               ; preds = %74
  %88 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %78) #26
  %89 = load ptr, ptr %2, align 8, !tbaa !6
  %90 = getelementptr inbounds %struct._Image, ptr %89, i64 0, i32 7
  %91 = load i64, ptr %90, align 8, !tbaa !30
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %195

93:                                               ; preds = %87
  %94 = shl nuw i64 %76, 1
  %95 = or disjoint i64 %94, 1
  br label %96

96:                                               ; preds = %93, %188
  %97 = phi ptr [ %83, %93 ], [ %190, %188 ]
  %98 = phi i64 [ 0, %93 ], [ %191, %188 ]
  %99 = load ptr, ptr %11, align 8, !tbaa !6
  %100 = getelementptr inbounds double, ptr %99, i64 %94
  %101 = load double, ptr %100, align 8, !tbaa !12
  %102 = getelementptr inbounds double, ptr %99, i64 %95
  %103 = load double, ptr %102, align 8, !tbaa !12
  %104 = load i32, ptr %12, align 4, !tbaa !10
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  %109 = load i16, ptr %108, align 2, !tbaa !40
  %110 = uitofp i16 %109 to double
  %111 = fmul double %110, 0x3EF0001000100010
  %112 = call double @pow(double noundef %111, double noundef %103) #26
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %98, i32 5
  %114 = load float, ptr %113, align 8, !tbaa !41
  %115 = fpext float %114 to double
  %116 = call double @llvm.fmuladd.f64(double %101, double %112, double %115)
  %117 = fptrunc double %116 to float
  store float %117, ptr %113, align 8, !tbaa !41
  %118 = load i32, ptr %12, align 4, !tbaa !10
  br label %119

119:                                              ; preds = %107, %96
  %120 = phi i32 [ %118, %107 ], [ %104, %96 ]
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 1
  %125 = load i16, ptr %124, align 2, !tbaa !43
  %126 = uitofp i16 %125 to double
  %127 = fmul double %126, 0x3EF0001000100010
  %128 = call double @pow(double noundef %127, double noundef %103) #26
  %129 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %98, i32 6
  %130 = load float, ptr %129, align 4, !tbaa !44
  %131 = fpext float %130 to double
  %132 = call double @llvm.fmuladd.f64(double %101, double %128, double %131)
  %133 = fptrunc double %132 to float
  store float %133, ptr %129, align 4, !tbaa !44
  %134 = load i32, ptr %12, align 4, !tbaa !10
  br label %135

135:                                              ; preds = %123, %119
  %136 = phi i32 [ %134, %123 ], [ %120, %119 ]
  %137 = and i32 %136, 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %135
  %140 = load i16, ptr %97, align 2, !tbaa !45
  %141 = uitofp i16 %140 to double
  %142 = fmul double %141, 0x3EF0001000100010
  %143 = call double @pow(double noundef %142, double noundef %103) #26
  %144 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %98, i32 7
  %145 = load float, ptr %144, align 8, !tbaa !46
  %146 = fpext float %145 to double
  %147 = call double @llvm.fmuladd.f64(double %101, double %143, double %146)
  %148 = fptrunc double %147 to float
  store float %148, ptr %144, align 8, !tbaa !46
  %149 = load i32, ptr %12, align 4, !tbaa !10
  br label %150

150:                                              ; preds = %139, %135
  %151 = phi i32 [ %149, %139 ], [ %136, %135 ]
  %152 = and i32 %151, 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 3
  %156 = load i16, ptr %155, align 2, !tbaa !47
  %157 = xor i16 %156, -1
  %158 = uitofp i16 %157 to double
  %159 = fmul double %158, 0x3EF0001000100010
  %160 = call double @pow(double noundef %159, double noundef %103) #26
  %161 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %98, i32 8
  %162 = load float, ptr %161, align 4, !tbaa !48
  %163 = fpext float %162 to double
  %164 = call double @llvm.fmuladd.f64(double %101, double %160, double %163)
  %165 = fptrunc double %164 to float
  store float %165, ptr %161, align 4, !tbaa !48
  %166 = load i32, ptr %12, align 4, !tbaa !10
  br label %167

167:                                              ; preds = %154, %150
  %168 = phi i32 [ %166, %154 ], [ %151, %150 ]
  %169 = and i32 %168, 32
  %170 = icmp eq i32 %169, 0
  %171 = load ptr, ptr %2, align 8, !tbaa !6
  br i1 %170, label %188, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct._Image, ptr %171, i64 0, i32 1
  %174 = load i32, ptr %173, align 4, !tbaa !49
  %175 = icmp eq i32 %174, 12
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = getelementptr inbounds i16, ptr %88, i64 %98
  %178 = load i16, ptr %177, align 2, !tbaa !50
  %179 = uitofp i16 %178 to double
  %180 = fmul double %179, 0x3EF0001000100010
  %181 = call double @pow(double noundef %180, double noundef %103) #26
  %182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %98, i32 9
  %183 = load float, ptr %182, align 8, !tbaa !51
  %184 = fpext float %183 to double
  %185 = call double @llvm.fmuladd.f64(double %101, double %181, double %184)
  %186 = fptrunc double %185 to float
  store float %186, ptr %182, align 8, !tbaa !51
  %187 = load ptr, ptr %2, align 8, !tbaa !6
  br label %188

188:                                              ; preds = %176, %172, %167
  %189 = phi ptr [ %187, %176 ], [ %171, %172 ], [ %171, %167 ]
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 1
  %191 = add nuw nsw i64 %98, 1
  %192 = getelementptr inbounds %struct._Image, ptr %189, i64 0, i32 7
  %193 = load i64, ptr %192, align 8, !tbaa !30
  %194 = icmp slt i64 %191, %193
  br i1 %194, label %96, label %195, !llvm.loop !122

195:                                              ; preds = %188, %87
  %196 = call ptr @DestroyCacheView(ptr noundef %78) #26
  %197 = call ptr @GetNextImageInList(ptr noundef %75) #26
  %198 = add nuw nsw i64 %76, 1
  %199 = load i64, ptr %9, align 8, !tbaa !31
  %200 = icmp slt i64 %198, %199
  %201 = load i64, ptr %10, align 8
  %202 = icmp slt i64 %198, %201
  %203 = select i1 %200, i1 %202, i1 false
  br i1 %203, label %74, label %204, !llvm.loop !123

204:                                              ; preds = %195, %66, %85
  %205 = load ptr, ptr %2, align 8, !tbaa !6
  %206 = getelementptr inbounds %struct._Image, ptr %205, i64 0, i32 7
  %207 = load i64, ptr %206, align 8, !tbaa !30
  %208 = icmp sgt i64 %207, 0
  br i1 %208, label %209, label %252

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct._Image, ptr %205, i64 0, i32 6
  %211 = load i32, ptr %210, align 8, !tbaa !68
  %212 = icmp ne i32 %211, 0
  %213 = getelementptr inbounds %struct._Image, ptr %205, i64 0, i32 1
  %214 = load i32, ptr %213, align 4, !tbaa !49
  %215 = icmp ne i32 %214, 12
  %216 = icmp eq ptr %49, null
  %217 = select i1 %215, i1 true, i1 %216
  %218 = sext i1 %212 to i16
  br label %219

219:                                              ; preds = %209, %248
  %220 = phi ptr [ %45, %209 ], [ %249, %248 ]
  %221 = phi i64 [ 0, %209 ], [ %250, %248 ]
  %222 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %221, i32 5
  %223 = load float, ptr %222, align 8, !tbaa !41
  %224 = fmul float %223, 6.553500e+04
  %225 = call fastcc zeroext i16 @ClampToQuantum(float noundef %224) #25
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 0, i32 2
  store i16 %225, ptr %226, align 2, !tbaa !40
  %227 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %221, i32 6
  %228 = load float, ptr %227, align 4, !tbaa !44
  %229 = fmul float %228, 6.553500e+04
  %230 = call fastcc zeroext i16 @ClampToQuantum(float noundef %229) #25
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 0, i32 1
  store i16 %230, ptr %231, align 2, !tbaa !43
  %232 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %221, i32 7
  %233 = load float, ptr %232, align 8, !tbaa !46
  %234 = fmul float %233, 6.553500e+04
  %235 = call fastcc zeroext i16 @ClampToQuantum(float noundef %234) #25
  store i16 %235, ptr %220, align 2, !tbaa !45
  %236 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %221, i32 8
  %237 = load float, ptr %236, align 4, !tbaa !48
  %238 = call float @llvm.fmuladd.f32(float %237, float -6.553500e+04, float 6.553500e+04)
  %239 = call fastcc zeroext i16 @ClampToQuantum(float noundef %238) #25
  %240 = xor i16 %239, %218
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 0, i32 3
  store i16 %240, ptr %241, align 2
  br i1 %217, label %248, label %242

242:                                              ; preds = %219
  %243 = getelementptr inbounds i16, ptr %49, i64 %221
  %244 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %221, i32 9
  %245 = load float, ptr %244, align 8, !tbaa !51
  %246 = fmul float %245, 6.553500e+04
  %247 = call fastcc zeroext i16 @ClampToQuantum(float noundef %246) #25
  store i16 %247, ptr %243, align 2, !tbaa !50
  br label %248

248:                                              ; preds = %242, %219
  %249 = getelementptr inbounds %struct._PixelPacket, ptr %220, i64 1
  %250 = add nuw nsw i64 %221, 1
  %251 = icmp eq i64 %250, %207
  br i1 %251, label %252, label %219, !llvm.loop !124

252:                                              ; preds = %248, %204
  %253 = load ptr, ptr %4, align 8, !tbaa !6
  %254 = load ptr, ptr %5, align 8, !tbaa !6
  %255 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %253, ptr noundef %254) #28
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %258

258:                                              ; preds = %257, %252
  %259 = load ptr, ptr %8, align 8, !tbaa !6
  %260 = getelementptr inbounds %struct._Image, ptr %259, i64 0, i32 47
  %261 = load ptr, ptr %260, align 8, !tbaa !54
  %262 = icmp eq ptr %261, null
  br i1 %262, label %273, label %263

263:                                              ; preds = %258
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_PolynomialImages.var)
  %264 = load ptr, ptr %8, align 8, !tbaa !6
  %265 = load i64, ptr %13, align 8, !tbaa !28
  %266 = add nsw i64 %265, 1
  store i64 %266, ptr %13, align 8, !tbaa !28
  %267 = load ptr, ptr %2, align 8, !tbaa !6
  %268 = getelementptr inbounds %struct._Image, ptr %267, i64 0, i32 8
  %269 = load i64, ptr %268, align 8, !tbaa !29
  %270 = call fastcc i32 @SetImageProgress(ptr noundef %264, ptr noundef nonnull @.str.9, i64 noundef %265, i64 noundef %269) #25
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_PolynomialImages.var)
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %263, %39
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %273

273:                                              ; preds = %272, %258, %263, %34
  %274 = add nsw i64 %35, 1
  %275 = load i64, ptr %16, align 8, !tbaa !31
  %276 = icmp slt i64 %35, %275
  br i1 %276, label %34, label %277

277:                                              ; preds = %273
  %278 = load i64, ptr %15, align 8, !tbaa !31
  br label %279

279:                                              ; preds = %277, %30
  %280 = phi i64 [ %32, %30 ], [ %278, %277 ]
  %281 = phi i64 [ %31, %30 ], [ %275, %277 ]
  %282 = load i64, ptr %17, align 8, !tbaa !31
  %283 = add nsw i64 %282, %280
  store i64 %283, ptr %15, align 8, !tbaa !31
  %284 = add nsw i64 %282, %281
  %285 = call i64 @llvm.smin.i64(i64 %284, i64 %22)
  store i64 %285, ptr %16, align 8, !tbaa !31
  %286 = icmp sgt i64 %283, %285
  br i1 %286, label %287, label %30

287:                                              ; preds = %279, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  br label %288

288:                                              ; preds = %287, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StatisticImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @StatisticImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #25
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StatisticImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %7, align 8, !tbaa !6
  store i32 %1, ptr %8, align 4, !tbaa !10
  store i32 %2, ptr %9, align 4, !tbaa !10
  store ptr %5, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #4
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 8, !tbaa !14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3284, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #26
  br label %26

26:                                               ; preds = %23, %6
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !30
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %30 = load i64, ptr %29, align 8, !tbaa !29
  %31 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %28, i64 noundef %30, i32 noundef 1, ptr noundef %5) #26
  store ptr %31, ptr %13, align 8, !tbaa !6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %90, label %33

33:                                               ; preds = %26
  %34 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %31, i32 noundef 1) #26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %37) #26
  %38 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #26
  br label %90

39:                                               ; preds = %33
  %40 = icmp eq i64 %3, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = tail call i64 @GetOptimalKernelWidth2D(double noundef 0.000000e+00, double noundef 5.000000e-01) #26
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi i64 [ %42, %41 ], [ %3, %39 ]
  store i64 %44, ptr %18, align 8, !tbaa !31
  %45 = icmp eq i64 %4, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call i64 @GetOptimalKernelWidth2D(double noundef 0.000000e+00, double noundef 5.000000e-01) #26
  br label %48

48:                                               ; preds = %43, %46
  %49 = phi i64 [ %47, %46 ], [ %4, %43 ]
  store i64 %49, ptr %17, align 8, !tbaa !31
  %50 = tail call fastcc ptr @AcquirePixelListThreadSet(i64 noundef %44, i64 noundef %49) #25
  store ptr %50, ptr %16, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = tail call ptr @DestroyImage(ptr noundef nonnull %31) #26
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %55 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3305, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %54) #26
  br label %90

56:                                               ; preds = %48
  store i32 1, ptr %14, align 4, !tbaa !10
  store i64 0, ptr %15, align 8, !tbaa !28
  %57 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %5) #26
  store ptr %57, ptr %11, align 8, !tbaa !6
  %58 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %31, ptr noundef %5) #26
  store ptr %58, ptr %12, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %60 = load i64, ptr %59, align 8, !tbaa !29
  %61 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %62 = shl i64 %61, 5
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #26
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %31) #26
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  br label %76

72:                                               ; preds = %67, %64, %56
  %73 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %74 = icmp ult i64 %73, 2
  %75 = select i1 %74, i64 1, i64 2
  br label %76

76:                                               ; preds = %72, %70
  %77 = phi i64 [ %71, %70 ], [ %75, %72 ]
  %78 = trunc i64 %77 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %19, i32 %78)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @StatisticImageChannel.omp_outlined, ptr nonnull %13, ptr nonnull %14, ptr nonnull %11, ptr nonnull %18, ptr nonnull %17, ptr nonnull %7, ptr nonnull %10, ptr nonnull %12, ptr nonnull %16, ptr nonnull %9, ptr nonnull %8, ptr nonnull %15)
  %79 = load ptr, ptr %12, align 8, !tbaa !6
  %80 = call ptr @DestroyCacheView(ptr noundef %79) #26
  store ptr %80, ptr %12, align 8, !tbaa !6
  %81 = load ptr, ptr %11, align 8, !tbaa !6
  %82 = call ptr @DestroyCacheView(ptr noundef %81) #26
  store ptr %82, ptr %11, align 8, !tbaa !6
  %83 = load ptr, ptr %16, align 8, !tbaa !6
  %84 = call fastcc ptr @DestroyPixelListThreadSet(ptr noundef %83) #25
  store ptr %84, ptr %16, align 8, !tbaa !6
  %85 = load i32, ptr %14, align 4, !tbaa !10
  %86 = icmp eq i32 %85, 0
  %87 = load ptr, ptr %13, align 8, !tbaa !6
  br i1 %86, label %88, label %90

88:                                               ; preds = %76
  %89 = call ptr @DestroyImage(ptr noundef %87) #26
  br label %90

90:                                               ; preds = %76, %88, %26, %52, %36
  %91 = phi ptr [ null, %36 ], [ null, %52 ], [ null, %26 ], [ %89, %88 ], [ %87, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  ret ptr %91
}

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquirePixelListThreadSet(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %4 = tail call ptr @AcquireQuantumMemory(i64 noundef %3, i64 noundef 8) #27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = shl i64 %3, 3
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %7) #26
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %13, label %20

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %3
  br i1 %12, label %20, label %13, !llvm.loop !125

13:                                               ; preds = %6, %10
  %14 = phi i64 [ %11, %10 ], [ 0, %6 ]
  %15 = tail call fastcc ptr @AcquirePixelList(i64 noundef %0, i64 noundef %1) #25
  %16 = getelementptr inbounds ptr, ptr %4, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !6
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @DestroyPixelListThreadSet(ptr noundef nonnull %4) #25
  br label %20

20:                                               ; preds = %10, %6, %2, %18
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ %4, %6 ], [ %4, %10 ]
  ret ptr %21
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @StatisticImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %11, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %12, ptr nocapture noundef nonnull align 8 dereferenceable(8) %13) #3 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = load ptr, ptr %2, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !29
  %23 = add nsw i64 %22, -1
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %25, label %255

25:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 0, ptr %15, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 %23, ptr %16, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  store i64 1, ptr %17, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #4
  store i32 0, ptr %18, align 4, !tbaa !10
  %26 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %26, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %27 = load i64, ptr %16, align 8
  %28 = call i64 @llvm.smin.i64(i64 %27, i64 %23)
  store i64 %28, ptr %16, align 8, !tbaa !31
  %29 = load i64, ptr %15, align 8, !tbaa !31
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %254, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %19, i64 32
  %33 = getelementptr inbounds i8, ptr %19, i64 36
  %34 = getelementptr inbounds i8, ptr %19, i64 40
  %35 = getelementptr inbounds i8, ptr %19, i64 44
  %36 = getelementptr inbounds i8, ptr %19, i64 48
  br label %37

37:                                               ; preds = %31, %246
  %38 = phi i64 [ %28, %31 ], [ %252, %246 ]
  %39 = phi i64 [ %29, %31 ], [ %250, %246 ]
  %40 = icmp sgt i64 %39, %38
  br i1 %40, label %246, label %41

41:                                               ; preds = %37, %240
  %42 = phi i64 [ %241, %240 ], [ %39, %37 ]
  %43 = call fastcc i32 @GetOpenMPThreadId() #25
  %44 = load i32, ptr %3, align 4, !tbaa !10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %240, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %4, align 8, !tbaa !6
  %48 = load i64, ptr %5, align 8, !tbaa !31
  %49 = sdiv i64 %48, -2
  %50 = load i64, ptr %6, align 8, !tbaa !31
  %51 = lshr i64 %50, 1
  %52 = sub nsw i64 %42, %51
  %53 = load ptr, ptr %7, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !30
  %56 = add i64 %55, %48
  %57 = load ptr, ptr %8, align 8, !tbaa !6
  %58 = call ptr @GetCacheViewVirtualPixels(ptr noundef %47, i64 noundef %49, i64 noundef %52, i64 noundef %56, i64 noundef %50, ptr noundef %57) #28
  %59 = load ptr, ptr %9, align 8, !tbaa !6
  %60 = load ptr, ptr %2, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !30
  %63 = load ptr, ptr %8, align 8, !tbaa !6
  %64 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %59, i64 noundef 0, i64 noundef %42, i64 noundef %62, i64 noundef 1, ptr noundef %63) #28
  %65 = icmp eq ptr %58, null
  %66 = icmp eq ptr %64, null
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %239, label %68

68:                                               ; preds = %46
  %69 = load ptr, ptr %4, align 8, !tbaa !6
  %70 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %69) #26
  %71 = load ptr, ptr %9, align 8, !tbaa !6
  %72 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %71) #26
  %73 = load ptr, ptr %2, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %75 = load i64, ptr %74, align 8, !tbaa !30
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %220

77:                                               ; preds = %68
  %78 = sext i32 %43 to i64
  %79 = icmp eq ptr %72, null
  br label %80

80:                                               ; preds = %77, %212
  %81 = phi ptr [ %58, %77 ], [ %213, %212 ]
  %82 = phi ptr [ %64, %77 ], [ %214, %212 ]
  %83 = phi i64 [ 0, %77 ], [ %215, %212 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #4
  %84 = getelementptr inbounds i16, ptr %70, i64 %83
  %85 = load ptr, ptr %10, align 8, !tbaa !6
  %86 = getelementptr inbounds ptr, ptr %85, i64 %78
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  call fastcc void @ResetPixelList(ptr noundef %87) #25
  %88 = load i64, ptr %6, align 8, !tbaa !31
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %80
  %91 = load ptr, ptr %7, align 8, !tbaa !6
  br label %125

92:                                               ; preds = %80
  %93 = load i64, ptr %5, align 8, !tbaa !31
  br label %94

94:                                               ; preds = %92, %114
  %95 = phi i64 [ %115, %114 ], [ %88, %92 ]
  %96 = phi i64 [ %116, %114 ], [ %93, %92 ]
  %97 = phi ptr [ %122, %114 ], [ %84, %92 ]
  %98 = phi ptr [ %121, %114 ], [ %81, %92 ]
  %99 = phi i64 [ %123, %114 ], [ 0, %92 ]
  %100 = icmp sgt i64 %96, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %94, %101
  %102 = phi i64 [ %109, %101 ], [ 0, %94 ]
  %103 = load ptr, ptr %7, align 8, !tbaa !6
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 %102
  %105 = getelementptr inbounds i16, ptr %97, i64 %102
  %106 = load ptr, ptr %10, align 8, !tbaa !6
  %107 = getelementptr inbounds ptr, ptr %106, i64 %78
  %108 = load ptr, ptr %107, align 8, !tbaa !6
  call fastcc void @InsertPixelList(ptr noundef %103, ptr noundef %104, ptr noundef %105, ptr noundef %108) #25
  %109 = add nuw nsw i64 %102, 1
  %110 = load i64, ptr %5, align 8, !tbaa !31
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %101, label %112, !llvm.loop !126

112:                                              ; preds = %101
  %113 = load i64, ptr %6, align 8, !tbaa !31
  br label %114

114:                                              ; preds = %112, %94
  %115 = phi i64 [ %95, %94 ], [ %113, %112 ]
  %116 = phi i64 [ %96, %94 ], [ %110, %112 ]
  %117 = load ptr, ptr %7, align 8, !tbaa !6
  %118 = getelementptr inbounds %struct._Image, ptr %117, i64 0, i32 7
  %119 = load i64, ptr %118, align 8, !tbaa !30
  %120 = add i64 %119, %116
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 %120
  %122 = getelementptr inbounds i16, ptr %97, i64 %120
  %123 = add nuw nsw i64 %99, 1
  %124 = icmp slt i64 %123, %115
  br i1 %124, label %94, label %125, !llvm.loop !127

125:                                              ; preds = %114, %90
  %126 = phi ptr [ %91, %90 ], [ %117, %114 ]
  call void @GetMagickPixelPacket(ptr noundef %126, ptr noundef nonnull %19) #26
  %127 = load ptr, ptr %7, align 8, !tbaa !6
  %128 = load i64, ptr %5, align 8, !tbaa !31
  %129 = load i64, ptr %6, align 8, !tbaa !31
  %130 = mul i64 %129, %128
  %131 = lshr i64 %130, 1
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 %131
  %133 = getelementptr inbounds i16, ptr %84, i64 %131
  call fastcc void @SetMagickPixelPacket(ptr noundef %127, ptr noundef %132, ptr noundef %133, ptr noundef nonnull %19) #25
  %134 = load i32, ptr %11, align 4, !tbaa !10
  %135 = load ptr, ptr %10, align 8, !tbaa !6
  %136 = getelementptr inbounds ptr, ptr %135, i64 %78
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  switch i32 %134, label %166 [
    i32 1, label %138
    i32 2, label %164
    i32 3, label %165
    i32 8, label %170
    i32 5, label %167
    i32 6, label %168
    i32 7, label %169
  ]

138:                                              ; preds = %125
  call fastcc void @GetMinimumPixelList(ptr noundef %137, ptr noundef nonnull %19) #25
  %139 = load float, ptr %32, align 8, !tbaa.struct !128
  %140 = load float, ptr %33, align 4, !tbaa.struct !129
  %141 = load float, ptr %34, align 8, !tbaa.struct !130
  %142 = load float, ptr %35, align 4, !tbaa.struct !131
  %143 = load float, ptr %36, align 8, !tbaa.struct !132
  %144 = load ptr, ptr %136, align 8, !tbaa !6
  call fastcc void @GetMaximumPixelList(ptr noundef %144, ptr noundef nonnull %19) #25
  %145 = load float, ptr %32, align 8, !tbaa.struct !128
  %146 = load float, ptr %33, align 4, !tbaa.struct !129
  %147 = load float, ptr %34, align 8, !tbaa.struct !130
  %148 = load float, ptr %35, align 4, !tbaa.struct !131
  %149 = load float, ptr %36, align 8, !tbaa.struct !132
  %150 = fsub float %145, %139
  %151 = call fastcc float @MagickAbsoluteValue(float noundef %150) #25
  store float %151, ptr %32, align 8, !tbaa !41
  %152 = fsub float %146, %140
  %153 = call fastcc float @MagickAbsoluteValue(float noundef %152) #25
  store float %153, ptr %33, align 4, !tbaa !44
  %154 = fsub float %147, %141
  %155 = call fastcc float @MagickAbsoluteValue(float noundef %154) #25
  store float %155, ptr %34, align 8, !tbaa !46
  %156 = fsub float %148, %142
  %157 = call fastcc float @MagickAbsoluteValue(float noundef %156) #25
  store float %157, ptr %35, align 4, !tbaa !48
  %158 = getelementptr inbounds %struct._Image, ptr %127, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !49
  %160 = icmp eq i32 %159, 12
  br i1 %160, label %161, label %171

161:                                              ; preds = %138
  %162 = fsub float %149, %143
  %163 = call fastcc float @MagickAbsoluteValue(float noundef %162) #25
  store float %163, ptr %36, align 8, !tbaa !51
  br label %171

164:                                              ; preds = %125
  call fastcc void @GetMaximumPixelList(ptr noundef %137, ptr noundef nonnull %19) #25
  br label %171

165:                                              ; preds = %125
  call fastcc void @GetMeanPixelList(ptr noundef %137, ptr noundef nonnull %19) #25
  br label %171

166:                                              ; preds = %125
  call fastcc void @GetMedianPixelList(ptr noundef %137, ptr noundef nonnull %19) #25
  br label %171

167:                                              ; preds = %125
  call fastcc void @GetMinimumPixelList(ptr noundef %137, ptr noundef nonnull %19) #25
  br label %171

168:                                              ; preds = %125
  call fastcc void @GetModePixelList(ptr noundef %137, ptr noundef nonnull %19) #25
  br label %171

169:                                              ; preds = %125
  call fastcc void @GetNonpeakPixelList(ptr noundef %137, ptr noundef nonnull %19) #25
  br label %171

170:                                              ; preds = %125
  call fastcc void @GetStandardDeviationPixelList(ptr noundef %137, ptr noundef nonnull %19) #25
  br label %171

171:                                              ; preds = %138, %161, %170, %169, %168, %167, %166, %165, %164
  %172 = load i32, ptr %12, align 4, !tbaa !10
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load float, ptr %32, align 8, !tbaa !41
  %177 = call fastcc zeroext i16 @ClampToQuantum(float noundef %176) #25
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 2
  store i16 %177, ptr %178, align 2, !tbaa !40
  br label %179

179:                                              ; preds = %175, %171
  %180 = and i32 %172, 2
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179
  %183 = load float, ptr %33, align 4, !tbaa !44
  %184 = call fastcc zeroext i16 @ClampToQuantum(float noundef %183) #25
  %185 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 1
  store i16 %184, ptr %185, align 2, !tbaa !43
  br label %186

186:                                              ; preds = %182, %179
  %187 = and i32 %172, 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load float, ptr %34, align 8, !tbaa !46
  %191 = call fastcc zeroext i16 @ClampToQuantum(float noundef %190) #25
  store i16 %191, ptr %82, align 2, !tbaa !45
  br label %192

192:                                              ; preds = %189, %186
  %193 = and i32 %172, 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = load float, ptr %35, align 4, !tbaa !48
  %197 = call fastcc zeroext i16 @ClampToQuantum(float noundef %196) #25
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 3
  store i16 %197, ptr %198, align 2, !tbaa !47
  br label %199

199:                                              ; preds = %195, %192
  %200 = and i32 %172, 32
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %212, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr %7, align 8, !tbaa !6
  %204 = getelementptr inbounds %struct._Image, ptr %203, i64 0, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !49
  %206 = icmp ne i32 %205, 12
  %207 = select i1 %206, i1 true, i1 %79
  br i1 %207, label %212, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds i16, ptr %72, i64 %83
  %210 = load float, ptr %36, align 8, !tbaa !51
  %211 = call fastcc zeroext i16 @ClampToQuantum(float noundef %210) #25
  store i16 %211, ptr %209, align 2, !tbaa !50
  br label %212

212:                                              ; preds = %208, %202, %199
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 1
  %214 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #4
  %215 = add nuw nsw i64 %83, 1
  %216 = load ptr, ptr %2, align 8, !tbaa !6
  %217 = getelementptr inbounds %struct._Image, ptr %216, i64 0, i32 7
  %218 = load i64, ptr %217, align 8, !tbaa !30
  %219 = icmp slt i64 %215, %218
  br i1 %219, label %80, label %220, !llvm.loop !133

220:                                              ; preds = %212, %68
  %221 = load ptr, ptr %9, align 8, !tbaa !6
  %222 = load ptr, ptr %8, align 8, !tbaa !6
  %223 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %221, ptr noundef %222) #28
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %226

226:                                              ; preds = %225, %220
  %227 = load ptr, ptr %7, align 8, !tbaa !6
  %228 = getelementptr inbounds %struct._Image, ptr %227, i64 0, i32 47
  %229 = load ptr, ptr %228, align 8, !tbaa !54
  %230 = icmp eq ptr %229, null
  br i1 %230, label %240, label %231

231:                                              ; preds = %226
  call void @__kmpc_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_StatisticImage.var)
  %232 = load ptr, ptr %7, align 8, !tbaa !6
  %233 = load i64, ptr %13, align 8, !tbaa !28
  %234 = add nsw i64 %233, 1
  store i64 %234, ptr %13, align 8, !tbaa !28
  %235 = getelementptr inbounds %struct._Image, ptr %232, i64 0, i32 8
  %236 = load i64, ptr %235, align 8, !tbaa !29
  %237 = call fastcc i32 @SetImageProgress(ptr noundef %232, ptr noundef nonnull @.str.10, i64 noundef %233, i64 noundef %236) #25
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %26, ptr nonnull @.gomp_critical_user_MagickCore_StatisticImage.var)
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231, %46
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %240

240:                                              ; preds = %239, %226, %231, %41
  %241 = add nsw i64 %42, 1
  %242 = load i64, ptr %16, align 8, !tbaa !31
  %243 = icmp slt i64 %42, %242
  br i1 %243, label %41, label %244

244:                                              ; preds = %240
  %245 = load i64, ptr %15, align 8, !tbaa !31
  br label %246

246:                                              ; preds = %244, %37
  %247 = phi i64 [ %39, %37 ], [ %245, %244 ]
  %248 = phi i64 [ %38, %37 ], [ %242, %244 ]
  %249 = load i64, ptr %17, align 8, !tbaa !31
  %250 = add nsw i64 %249, %247
  store i64 %250, ptr %15, align 8, !tbaa !31
  %251 = add nsw i64 %249, %248
  %252 = call i64 @llvm.smin.i64(i64 %251, i64 %23)
  store i64 %252, ptr %16, align 8, !tbaa !31
  %253 = icmp sgt i64 %250, %252
  br i1 %253, label %254, label %37

254:                                              ; preds = %246, %25
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  br label %255

255:                                              ; preds = %254, %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ResetPixelList(ptr nocapture noundef %0) unnamed_addr #19 {
  %2 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  br label %3

3:                                                ; preds = %1, %25
  %4 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %5 = getelementptr inbounds %struct._SkipList, ptr %2, i64 %4
  %6 = getelementptr inbounds %struct._SkipList, ptr %2, i64 %4, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct._ListNode, ptr %7, i64 65536
  store i64 0, ptr %5, align 8, !tbaa !136
  br label %9

9:                                                ; preds = %21, %3
  %10 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %11 = phi <2 x i64> [ <i64 0, i64 1>, %3 ], [ %23, %21 ]
  %12 = icmp ult <2 x i64> %11, <i64 9, i64 9>
  %13 = extractelement <2 x i1> %12, i64 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds [9 x i64], ptr %8, i64 0, i64 %10
  store i64 65536, ptr %15, align 8, !tbaa !31
  br label %16

16:                                               ; preds = %14, %9
  %17 = extractelement <2 x i1> %12, i64 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = or disjoint i64 %10, 1
  %20 = getelementptr inbounds [9 x i64], ptr %8, i64 0, i64 %19
  store i64 65536, ptr %20, align 8, !tbaa !31
  br label %21

21:                                               ; preds = %18, %16
  %22 = add i64 %10, 2
  %23 = add <2 x i64> %11, <i64 2, i64 2>
  %24 = icmp eq i64 %22, 10
  br i1 %24, label %25, label %9, !llvm.loop !137

25:                                               ; preds = %21
  %26 = add nuw nsw i64 %4, 1
  %27 = icmp eq i64 %26, 5
  br i1 %27, label %28, label %3, !llvm.loop !138

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !139
  %31 = add i64 %30, 1
  store i64 %31, ptr %29, align 8, !tbaa !139
  %32 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 1
  store i64 %30, ptr %32, align 8, !tbaa !141
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @InsertPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #20 {
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !40
  %7 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = zext i16 %6 to i64
  %10 = getelementptr inbounds %struct._ListNode, ptr %8, i64 %9, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !142
  %12 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !139
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct._ListNode, ptr %8, i64 %9, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !144
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8, !tbaa !144
  br label %21

19:                                               ; preds = %4
  tail call fastcc void @AddNodePixelList(ptr noundef nonnull %3, i64 noundef 0, i64 noundef %9) #25
  %20 = load i64, ptr %12, align 8, !tbaa !139
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i64 [ %20, %19 ], [ %11, %15 ]
  %23 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !43
  %25 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 1, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !134
  %27 = zext i16 %24 to i64
  %28 = getelementptr inbounds %struct._ListNode, ptr %26, i64 %27, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !142
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct._ListNode, ptr %26, i64 %27, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !144
  %34 = add i64 %33, 1
  store i64 %34, ptr %32, align 8, !tbaa !144
  br label %37

35:                                               ; preds = %21
  tail call fastcc void @AddNodePixelList(ptr noundef nonnull %3, i64 noundef 1, i64 noundef %27) #25
  %36 = load i64, ptr %12, align 8, !tbaa !139
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i64 [ %36, %35 ], [ %22, %31 ]
  %39 = load i16, ptr %1, align 2, !tbaa !45
  %40 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 2, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !134
  %42 = zext i16 %39 to i64
  %43 = getelementptr inbounds %struct._ListNode, ptr %41, i64 %42, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !142
  %45 = icmp eq i64 %44, %38
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct._ListNode, ptr %41, i64 %42, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !144
  %49 = add i64 %48, 1
  store i64 %49, ptr %47, align 8, !tbaa !144
  br label %52

50:                                               ; preds = %37
  tail call fastcc void @AddNodePixelList(ptr noundef nonnull %3, i64 noundef 2, i64 noundef %42) #25
  %51 = load i64, ptr %12, align 8, !tbaa !139
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %51, %50 ], [ %38, %46 ]
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %55 = load i16, ptr %54, align 2, !tbaa !47
  %56 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 3, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !134
  %58 = zext i16 %55 to i64
  %59 = getelementptr inbounds %struct._ListNode, ptr %57, i64 %58, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !142
  %61 = icmp eq i64 %60, %53
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct._ListNode, ptr %57, i64 %58, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !144
  %65 = add i64 %64, 1
  store i64 %65, ptr %63, align 8, !tbaa !144
  br label %67

66:                                               ; preds = %52
  tail call fastcc void @AddNodePixelList(ptr noundef nonnull %3, i64 noundef 3, i64 noundef %58) #25
  br label %67

67:                                               ; preds = %66, %62
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !49
  %70 = icmp eq i32 %69, 12
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = icmp eq ptr %2, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = load i16, ptr %2, align 2, !tbaa !50
  br label %75

75:                                               ; preds = %73, %71, %67
  %76 = phi i16 [ %55, %67 ], [ %74, %73 ], [ 0, %71 ]
  %77 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 4, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !134
  %79 = zext i16 %76 to i64
  %80 = getelementptr inbounds %struct._ListNode, ptr %78, i64 %79, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !142
  %82 = load i64, ptr %12, align 8, !tbaa !139
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct._ListNode, ptr %78, i64 %79, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !144
  %87 = add i64 %86, 1
  store i64 %87, ptr %85, align 8, !tbaa !144
  br label %89

88:                                               ; preds = %75
  tail call fastcc void @AddNodePixelList(ptr noundef nonnull %3, i64 noundef 4, i64 noundef %79) #25
  br label %89

89:                                               ; preds = %88, %84
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetMinimumPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #21 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !145
  br label %6

6:                                                ; preds = %2, %23
  %7 = phi i64 [ 0, %2 ], [ %26, %23 ]
  %8 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct._ListNode, ptr %9, i64 65536
  %11 = load i64, ptr %10, align 8, !tbaa !31
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ 65536, %6 ], [ %17, %12 ]
  %14 = phi i64 [ %11, %6 ], [ %18, %12 ]
  %15 = phi i64 [ 0, %6 ], [ %21, %12 ]
  %16 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !31
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 %14)
  %19 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %17, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !144
  %21 = add i64 %20, %15
  %22 = icmp slt i64 %21, %5
  br i1 %22, label %12, label %23, !llvm.loop !146

23:                                               ; preds = %12
  %24 = trunc i64 %18 to i16
  %25 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %7
  store i16 %24, ptr %25, align 2, !tbaa !50
  %26 = add nuw nsw i64 %7, 1
  %27 = icmp eq i64 %26, 5
  br i1 %27, label %28, label %6, !llvm.loop !147

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %30 = load <4 x i16>, ptr %3, align 8, !tbaa !50
  %31 = uitofp <4 x i16> %30 to <4 x float>
  store <4 x float> %31, ptr %29, align 8, !tbaa !37
  %32 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %33 = load i16, ptr %32, align 8, !tbaa !50
  %34 = uitofp i16 %33 to float
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %34, ptr %35, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetMaximumPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #21 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !145
  br label %6

6:                                                ; preds = %2, %23
  %7 = phi i64 [ 0, %2 ], [ %26, %23 ]
  %8 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct._ListNode, ptr %9, i64 65536
  %11 = load i64, ptr %10, align 8, !tbaa !31
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ 65536, %6 ], [ %17, %12 ]
  %14 = phi i64 [ %11, %6 ], [ %18, %12 ]
  %15 = phi i64 [ 0, %6 ], [ %21, %12 ]
  %16 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !31
  %18 = tail call i64 @llvm.umax.i64(i64 %17, i64 %14)
  %19 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %17, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !144
  %21 = add i64 %20, %15
  %22 = icmp slt i64 %21, %5
  br i1 %22, label %12, label %23, !llvm.loop !148

23:                                               ; preds = %12
  %24 = trunc i64 %18 to i16
  %25 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %7
  store i16 %24, ptr %25, align 2, !tbaa !50
  %26 = add nuw nsw i64 %7, 1
  %27 = icmp eq i64 %26, 5
  br i1 %27, label %28, label %6, !llvm.loop !149

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %30 = load <4 x i16>, ptr %3, align 8, !tbaa !50
  %31 = uitofp <4 x i16> %30 to <4 x float>
  store <4 x float> %31, ptr %29, align 8, !tbaa !37
  %32 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %33 = load i16, ptr %32, align 8, !tbaa !50
  %34 = uitofp i16 %33 to float
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %34, ptr %35, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @MagickAbsoluteValue(float noundef %0) unnamed_addr #10 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetMeanPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #21 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !145
  %6 = uitofp i64 %5 to float
  br label %7

7:                                                ; preds = %2, %24
  %8 = phi i64 [ 0, %2 ], [ %28, %24 ]
  %9 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  br label %11

11:                                               ; preds = %11, %7
  %12 = phi float [ 0.000000e+00, %7 ], [ %21, %11 ]
  %13 = phi i64 [ 65536, %7 ], [ %16, %11 ]
  %14 = phi i64 [ 0, %7 ], [ %22, %11 ]
  %15 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %13
  %16 = load i64, ptr %15, align 8, !tbaa !31
  %17 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %16, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !144
  %19 = uitofp i64 %18 to float
  %20 = uitofp i64 %16 to float
  %21 = tail call float @llvm.fmuladd.f32(float %19, float %20, float %12)
  %22 = add i64 %18, %14
  %23 = icmp slt i64 %22, %5
  br i1 %23, label %11, label %24, !llvm.loop !150

24:                                               ; preds = %11
  %25 = fdiv float %21, %6
  %26 = fptoui float %25 to i16
  %27 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %8
  store i16 %26, ptr %27, align 2, !tbaa !50
  %28 = add nuw nsw i64 %8, 1
  %29 = icmp eq i64 %28, 5
  br i1 %29, label %30, label %7, !llvm.loop !151

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %32 = load <4 x i16>, ptr %3, align 8, !tbaa !50
  %33 = uitofp <4 x i16> %32 to <4 x float>
  store <4 x float> %33, ptr %31, align 8, !tbaa !37
  %34 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %35 = load i16, ptr %34, align 8, !tbaa !50
  %36 = uitofp i16 %35 to float
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %36, ptr %37, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #4
  ret void
}

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc void @GetMedianPixelList(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !145
  %6 = lshr i64 %5, 1
  br label %7

7:                                                ; preds = %2, %20
  %8 = phi i64 [ 0, %2 ], [ %23, %20 ]
  %9 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  br label %11

11:                                               ; preds = %11, %7
  %12 = phi i64 [ 65536, %7 ], [ %15, %11 ]
  %13 = phi i64 [ 0, %7 ], [ %18, %11 ]
  %14 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %12
  %15 = load i64, ptr %14, align 8, !tbaa !31
  %16 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %15, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !144
  %18 = add i64 %17, %13
  %19 = icmp sgt i64 %18, %6
  br i1 %19, label %20, label %11, !llvm.loop !152

20:                                               ; preds = %11
  %21 = trunc i64 %15 to i16
  %22 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %8
  store i16 %21, ptr %22, align 2, !tbaa !50
  %23 = add nuw nsw i64 %8, 1
  %24 = icmp eq i64 %23, 5
  br i1 %24, label %25, label %7, !llvm.loop !153

25:                                               ; preds = %20
  tail call void @GetMagickPixelPacket(ptr noundef null, ptr noundef %1) #26
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %27 = load <4 x i16>, ptr %3, align 8, !tbaa !50
  %28 = uitofp <4 x i16> %27 to <4 x float>
  store <4 x float> %28, ptr %26, align 8, !tbaa !37
  %29 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %30 = load i16, ptr %29, align 8, !tbaa !50
  %31 = uitofp i16 %30 to float
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %31, ptr %32, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetModePixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #21 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !145
  br label %6

6:                                                ; preds = %2, %26
  %7 = phi i64 [ 0, %2 ], [ %29, %26 ]
  %8 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct._ListNode, ptr %9, i64 65536, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !144
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ 65536, %6 ], [ %18, %12 ]
  %14 = phi i64 [ %11, %6 ], [ %22, %12 ]
  %15 = phi i64 [ 65536, %6 ], [ %23, %12 ]
  %16 = phi i64 [ 0, %6 ], [ %24, %12 ]
  %17 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %13
  %18 = load i64, ptr %17, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %18, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !144
  %21 = icmp ugt i64 %20, %14
  %22 = tail call i64 @llvm.umax.i64(i64 %20, i64 %14)
  %23 = select i1 %21, i64 %18, i64 %15
  %24 = add i64 %20, %16
  %25 = icmp slt i64 %24, %5
  br i1 %25, label %12, label %26, !llvm.loop !154

26:                                               ; preds = %12
  %27 = trunc i64 %23 to i16
  %28 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %7
  store i16 %27, ptr %28, align 2, !tbaa !50
  %29 = add nuw nsw i64 %7, 1
  %30 = icmp eq i64 %29, 5
  br i1 %30, label %31, label %6, !llvm.loop !155

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %33 = load <4 x i16>, ptr %3, align 8, !tbaa !50
  %34 = uitofp <4 x i16> %33 to <4 x float>
  store <4 x float> %34, ptr %32, align 8, !tbaa !37
  %35 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %36 = load i16, ptr %35, align 8, !tbaa !50
  %37 = uitofp i16 %36 to float
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %37, ptr %38, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetNonpeakPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #21 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !145
  %6 = lshr i64 %5, 1
  br label %7

7:                                                ; preds = %2, %23
  %8 = phi i64 [ 0, %2 ], [ %34, %23 ]
  %9 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct._ListNode, ptr %10, i64 65536
  %12 = load i64, ptr %11, align 8, !tbaa !31
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 65536, %7 ], [ %15, %13 ]
  %15 = phi i64 [ %12, %7 ], [ %18, %13 ]
  %16 = phi i64 [ 0, %7 ], [ %21, %13 ]
  %17 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %15
  %18 = load i64, ptr %17, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %15, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !144
  %21 = add i64 %20, %16
  %22 = icmp sgt i64 %21, %6
  br i1 %22, label %23, label %13, !llvm.loop !156

23:                                               ; preds = %13
  %24 = icmp eq i64 %14, 65536
  %25 = icmp ne i64 %18, 65536
  %26 = select i1 %24, i1 %25, i1 false
  %27 = icmp ne i64 %14, 65536
  %28 = icmp eq i64 %18, 65536
  %29 = select i1 %27, i1 %28, i1 false
  %30 = select i1 %29, i64 %14, i64 %15
  %31 = select i1 %26, i64 %18, i64 %30
  %32 = trunc i64 %31 to i16
  %33 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %8
  store i16 %32, ptr %33, align 2, !tbaa !50
  %34 = add nuw nsw i64 %8, 1
  %35 = icmp eq i64 %34, 5
  br i1 %35, label %36, label %7, !llvm.loop !157

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %38 = load <4 x i16>, ptr %3, align 8, !tbaa !50
  %39 = uitofp <4 x i16> %38 to <4 x float>
  store <4 x float> %39, ptr %37, align 8, !tbaa !37
  %40 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %41 = load i16, ptr %40, align 8, !tbaa !50
  %42 = uitofp i16 %41 to float
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %42, ptr %43, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @GetStandardDeviationPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #22 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  br label %5

5:                                                ; preds = %2, %33
  %6 = phi i64 [ 0, %2 ], [ %43, %33 ]
  %7 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !134
  %9 = load i64, ptr %0, align 8, !tbaa !145
  br label %10

10:                                               ; preds = %29, %5
  %11 = phi float [ 0.000000e+00, %5 ], [ %30, %29 ]
  %12 = phi float [ 0.000000e+00, %5 ], [ %21, %29 ]
  %13 = phi i64 [ 65536, %5 ], [ %16, %29 ]
  %14 = phi i64 [ 0, %5 ], [ %31, %29 ]
  %15 = getelementptr inbounds %struct._ListNode, ptr %8, i64 %13
  %16 = load i64, ptr %15, align 8, !tbaa !31
  %17 = getelementptr inbounds %struct._ListNode, ptr %8, i64 %16, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !144
  %19 = uitofp i64 %18 to float
  %20 = uitofp i64 %16 to float
  %21 = tail call float @llvm.fmuladd.f32(float %19, float %20, float %12)
  %22 = icmp sgt i64 %18, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %10, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %10 ]
  %25 = phi float [ %26, %23 ], [ %11, %10 ]
  %26 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %25)
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, %18
  br i1 %28, label %29, label %23, !llvm.loop !158

29:                                               ; preds = %23, %10
  %30 = phi float [ %11, %10 ], [ %26, %23 ]
  %31 = add i64 %18, %14
  %32 = icmp slt i64 %31, %9
  br i1 %32, label %10, label %33, !llvm.loop !159

33:                                               ; preds = %29
  %34 = uitofp i64 %9 to float
  %35 = fdiv float %21, %34
  %36 = fdiv float %30, %34
  %37 = fneg float %35
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %35, float %36)
  %39 = fpext float %38 to double
  %40 = tail call double @sqrt(double noundef %39) #26
  %41 = fptoui double %40 to i16
  %42 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %6
  store i16 %41, ptr %42, align 2, !tbaa !50
  %43 = add nuw nsw i64 %6, 1
  %44 = icmp eq i64 %43, 5
  br i1 %44, label %45, label %5, !llvm.loop !160

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %47 = load <4 x i16>, ptr %3, align 8, !tbaa !50
  %48 = uitofp <4 x i16> %47 to <4 x float>
  store <4 x float> %48, ptr %46, align 8, !tbaa !37
  %49 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %50 = load i16, ptr %49, align 8, !tbaa !50
  %51 = uitofp i16 %50 to float
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %51, ptr %52, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyPixelListThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @DestroyPixelList(ptr noundef nonnull %7) #25
  store ptr %10, ptr %6, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #26
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !161

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #26
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquirePixelList(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 104) #26
  %7 = mul i64 %1, %0
  store i64 %7, ptr %3, align 8, !tbaa !145
  br label %8

8:                                                ; preds = %5, %15
  %9 = phi i64 [ 0, %5 ], [ %17, %15 ]
  %10 = tail call dereferenceable_or_null(5767256) ptr @AcquireQuantumMemory(i64 noundef 65537, i64 noundef 88) #27
  %11 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 %9, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !134
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @DestroyPixelList(ptr noundef nonnull %3) #25
  br label %21

15:                                               ; preds = %8
  %16 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 5767256) #26
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, 5
  br i1 %18, label %19, label %8, !llvm.loop !162

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 2
  store i64 2880220587, ptr %20, align 8, !tbaa !139
  br label %21

21:                                               ; preds = %2, %19, %13
  %22 = phi ptr [ %14, %13 ], [ %3, %19 ], [ null, %2 ]
  ret ptr %22
}

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #23

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyPixelList(ptr noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %9
  %3 = phi i64 [ 0, %1 ], [ %10, %9 ]
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3, i64 %3, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #26
  store ptr %8, ptr %4, align 8, !tbaa !134
  br label %9

9:                                                ; preds = %2, %7
  %10 = add nuw nsw i64 %3, 1
  %11 = icmp eq i64 %10, 5
  br i1 %11, label %12, label %2, !llvm.loop !163

12:                                               ; preds = %9
  %13 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #26
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @AddNodePixelList(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #20 {
  %4 = alloca [9 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct._SkipList, ptr %5, i64 %1
  %7 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !139
  %9 = getelementptr inbounds %struct._SkipList, ptr %5, i64 %1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  %11 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %2, i32 2
  store i64 %8, ptr %11, align 8, !tbaa !142
  %12 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %2, i32 1
  store i64 1, ptr %12, align 8, !tbaa !144
  %13 = load i64, ptr %6, align 8, !tbaa !136
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %3, %27
  %16 = phi i64 [ %23, %27 ], [ 65536, %3 ]
  %17 = phi i64 [ %29, %27 ], [ %13, %3 ]
  %18 = getelementptr [9 x i64], ptr %10, i64 0, i64 %17
  br label %22

19:                                               ; preds = %27, %3
  %20 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !141
  br label %31

22:                                               ; preds = %15, %22
  %23 = phi i64 [ %25, %22 ], [ %16, %15 ]
  %24 = getelementptr %struct._ListNode, ptr %18, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !31
  %26 = icmp ult i64 %25, %2
  br i1 %26, label %22, label %27, !llvm.loop !164

27:                                               ; preds = %22
  %28 = getelementptr inbounds [9 x i64], ptr %4, i64 0, i64 %17
  store i64 %23, ptr %28, align 8, !tbaa !31
  %29 = add nsw i64 %17, -1
  %30 = icmp sgt i64 %17, 0
  br i1 %30, label %15, label %19, !llvm.loop !165

31:                                               ; preds = %31, %19
  %32 = phi i64 [ %35, %31 ], [ %21, %19 ]
  %33 = phi i64 [ %38, %31 ], [ 0, %19 ]
  %34 = mul i64 %32, 42893621
  %35 = add i64 %34, 1
  %36 = and i64 %35, 768
  %37 = icmp eq i64 %36, 768
  %38 = add nuw nsw i64 %33, 1
  br i1 %37, label %31, label %39

39:                                               ; preds = %31
  store i64 %35, ptr %20, align 8, !tbaa !141
  %40 = tail call i64 @llvm.umin.i64(i64 %33, i64 8)
  %41 = add i64 %13, 2
  %42 = tail call i64 @llvm.smin.i64(i64 %40, i64 %41)
  %43 = icmp sgt i64 %42, %13
  br i1 %43, label %47, label %45

44:                                               ; preds = %47
  store i64 %42, ptr %6, align 8, !tbaa !136
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %2
  br label %52

47:                                               ; preds = %39, %47
  %48 = phi i64 [ %49, %47 ], [ %13, %39 ]
  %49 = add nsw i64 %48, 1
  %50 = getelementptr inbounds [9 x i64], ptr %4, i64 0, i64 %49
  store i64 65536, ptr %50, align 8, !tbaa !31
  %51 = icmp eq i64 %49, %42
  br i1 %51, label %44, label %47, !llvm.loop !166

52:                                               ; preds = %45, %52
  %53 = phi i64 [ %60, %52 ], [ %42, %45 ]
  %54 = getelementptr inbounds [9 x i64], ptr %4, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !31
  %56 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %55
  %57 = getelementptr inbounds [9 x i64], ptr %56, i64 0, i64 %53
  %58 = load i64, ptr %57, align 8, !tbaa !31
  %59 = getelementptr inbounds [9 x i64], ptr %46, i64 0, i64 %53
  store i64 %58, ptr %59, align 8, !tbaa !31
  store i64 %2, ptr %57, align 8, !tbaa !31
  %60 = add nsw i64 %53, -1
  %61 = icmp sgt i64 %53, 0
  br i1 %61, label %52, label %62, !llvm.loop !167

62:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #24

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { convergent nounwind }
attributes #12 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree noinline norecurse nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize }
attributes #27 = { nounwind optsize allocsize(0,1) }
attributes #28 = { hot nounwind optsize }
attributes #29 = { nounwind optsize allocsize(0) }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!15, !11, i64 12976}
!15 = !{!"_Image", !11, i64 0, !11, i64 4, !11, i64 8, !16, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !7, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !13, i64 104, !19, i64 112, !11, i64 208, !7, i64 216, !11, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !16, i64 256, !13, i64 264, !13, i64 272, !21, i64 280, !21, i64 312, !21, i64 344, !13, i64 376, !13, i64 384, !13, i64 392, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !7, i64 424, !16, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !22, i64 480, !23, i64 504, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !16, i64 12904, !16, i64 12912, !25, i64 12920, !11, i64 12976, !16, i64 12984, !7, i64 12992, !26, i64 13000, !26, i64 13032, !7, i64 13064, !16, i64 13072, !16, i64 13080, !7, i64 13088, !7, i64 13096, !7, i64 13104, !11, i64 13112, !11, i64 13116, !17, i64 13120, !7, i64 13128, !21, i64 13136, !7, i64 13168, !7, i64 13176, !11, i64 13184, !11, i64 13188, !27, i64 13192, !11, i64 13200, !16, i64 13208, !16, i64 13216, !11, i64 13224, !16, i64 13232}
!16 = !{!"long", !8, i64 0}
!17 = !{!"_PixelPacket", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6}
!18 = !{!"short", !8, i64 0}
!19 = !{!"_ChromaticityInfo", !20, i64 0, !20, i64 24, !20, i64 48, !20, i64 72}
!20 = !{!"_PrimaryInfo", !13, i64 0, !13, i64 8, !13, i64 16}
!21 = !{!"_RectangleInfo", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!22 = !{!"_ErrorInfo", !13, i64 0, !13, i64 8, !13, i64 16}
!23 = !{!"_TimerInfo", !24, i64 0, !24, i64 24, !11, i64 48, !16, i64 56}
!24 = !{!"_Timer", !13, i64 0, !13, i64 8, !13, i64 16}
!25 = !{!"_ExceptionInfo", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32, !7, i64 40, !16, i64 48}
!26 = !{!"_ProfileInfo", !7, i64 0, !16, i64 8, !7, i64 16, !16, i64 24}
!27 = !{!"long long", !8, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!15, !16, i64 48}
!30 = !{!15, !16, i64 40}
!31 = !{!16, !16, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 16, i64 8, !12, i64 24, i64 8, !31, i64 32, i64 4, !37, i64 36, i64 4, !37, i64 40, i64 4, !37, i64 44, i64 4, !37, i64 48, i64 4, !37}
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !8, i64 0}
!39 = distinct !{!39, !33}
!40 = !{!17, !18, i64 4}
!41 = !{!42, !38, i64 32}
!42 = !{!"_MagickPixelPacket", !11, i64 0, !11, i64 4, !11, i64 8, !13, i64 16, !16, i64 24, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48}
!43 = !{!17, !18, i64 2}
!44 = !{!42, !38, i64 36}
!45 = !{!17, !18, i64 0}
!46 = !{!42, !38, i64 40}
!47 = !{!17, !18, i64 6}
!48 = !{!42, !38, i64 44}
!49 = !{!15, !11, i64 4}
!50 = !{!18, !18, i64 0}
!51 = !{!42, !38, i64 48}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33}
!54 = !{!15, !7, i64 568}
!55 = !{!15, !7, i64 576}
!56 = !{!57}
!57 = !{i64 2, i64 -1, i64 -1, i1 true}
!58 = distinct !{!58, !33}
!59 = distinct !{!59, !33}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !33}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !33}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = !{!42, !11, i64 4}
!68 = !{!15, !11, i64 32}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = distinct !{!71, !33}
!72 = !{i32 0, i32 2}
!73 = distinct !{!73, !33}
!74 = distinct !{!74, !33}
!75 = distinct !{!75, !33}
!76 = distinct !{!76, !33}
!77 = !{!78, !13, i64 56}
!78 = !{!"_ChannelStatistics", !16, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88}
!79 = !{!78, !13, i64 64}
!80 = !{!78, !13, i64 72}
!81 = !{!78, !16, i64 0}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = !{!78, !13, i64 8}
!85 = !{!78, !13, i64 16}
!86 = !{!78, !13, i64 24}
!87 = !{!78, !13, i64 48}
!88 = !{!78, !13, i64 40}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = !{!78, !13, i64 32}
!93 = !{!78, !13, i64 88}
!94 = !{!78, !13, i64 80}
!95 = distinct !{!95, !33}
!96 = distinct !{!96, !33}
!97 = distinct !{!97, !33}
!98 = distinct !{!98, !33}
!99 = !{!100, !13, i64 0}
!100 = !{!"_PointInfo", !13, i64 0, !13, i64 8}
!101 = !{!100, !13, i64 8}
!102 = distinct !{!102, !33}
!103 = distinct !{!103, !33}
!104 = !{i64 0, i64 8, !12, i64 8, i64 8, !12}
!105 = !{!106, !13, i64 272}
!106 = !{!"_ChannelMoments", !8, i64 0, !100, i64 256, !100, i64 272, !13, i64 288, !13, i64 296, !13, i64 304}
!107 = !{!106, !13, i64 280}
!108 = !{!106, !13, i64 288}
!109 = !{!106, !13, i64 296}
!110 = !{!106, !13, i64 304}
!111 = distinct !{!111, !33}
!112 = distinct !{!112, !33}
!113 = distinct !{!113, !33, !114, !115}
!114 = !{!"llvm.loop.isvectorized", i32 1}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = !{!15, !16, i64 56}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33}
!128 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !37, i64 12, i64 4, !37, i64 16, i64 4, !37}
!129 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !37, i64 12, i64 4, !37}
!130 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !37}
!131 = !{i64 0, i64 4, !37, i64 4, i64 4, !37}
!132 = !{i64 0, i64 4, !37}
!133 = distinct !{!133, !33}
!134 = !{!135, !7, i64 8}
!135 = !{!"_SkipList", !16, i64 0, !7, i64 8}
!136 = !{!135, !16, i64 0}
!137 = distinct !{!137, !33, !114, !115}
!138 = distinct !{!138, !33}
!139 = !{!140, !16, i64 16}
!140 = !{!"_PixelList", !16, i64 0, !16, i64 8, !16, i64 16, !8, i64 24}
!141 = !{!140, !16, i64 8}
!142 = !{!143, !16, i64 80}
!143 = !{!"_ListNode", !8, i64 0, !16, i64 72, !16, i64 80}
!144 = !{!143, !16, i64 72}
!145 = !{!140, !16, i64 0}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = distinct !{!158, !33}
!159 = distinct !{!159, !33}
!160 = distinct !{!160, !33}
!161 = distinct !{!161, !33}
!162 = distinct !{!162, !33}
!163 = distinct !{!163, !33}
!164 = distinct !{!164, !33}
!165 = distinct !{!165, !33}
!166 = distinct !{!166, !33}
!167 = distinct !{!167, !33}
