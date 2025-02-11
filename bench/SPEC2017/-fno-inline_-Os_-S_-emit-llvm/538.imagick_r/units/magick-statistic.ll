; ModuleID = 'magick/statistic.c'
source_filename = "magick/statistic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
@.str.5 = private unnamed_addr constant [15 x i8] c"Evaluate/Image\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Function/Image \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Polynomial/Image\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Statistic/Image\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @EvaluateImage(ptr noundef %0, i32 noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @EvaluateImageChannel(ptr noundef %0, i32 noundef 47, i32 noundef %1, double noundef %2, ptr noundef %3) #20, !range !5
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @EvaluateImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 773, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #21
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %16) #21
  br label %127

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @AcquireRandomInfoThreadSet() #20
  %19 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %4) #21
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !25
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %123

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = and i32 %1, 1
  %26 = icmp eq i32 %25, 0
  %27 = fptrunc double %3 to float
  %28 = and i32 %1, 2
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %1, 4
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %1, 8
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %35 = and i32 %1, 32
  %36 = icmp ne i32 %35, 0
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %38

38:                                               ; preds = %23, %117
  %39 = phi i32 [ 1, %23 ], [ %119, %117 ]
  %40 = phi i64 [ 0, %23 ], [ %120, %117 ]
  %41 = phi i64 [ 0, %23 ], [ %118, %117 ]
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %117, label %43

43:                                               ; preds = %38
  %44 = load i64, ptr %24, align 8, !tbaa !26
  %45 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %19, i64 noundef 0, i64 noundef %40, i64 noundef %44, i64 noundef 1, ptr noundef %4) #22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %117, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %19) #21
  %49 = load i64, ptr %24, align 8, !tbaa !26
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %105

51:                                               ; preds = %47
  %52 = icmp ne ptr %48, null
  %53 = select i1 %36, i1 %52, i1 false
  br label %54

54:                                               ; preds = %51, %100
  %55 = phi i64 [ 0, %51 ], [ %102, %100 ]
  %56 = phi ptr [ %45, %51 ], [ %101, %100 ]
  br i1 %26, label %63, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %18, align 8, !tbaa !27
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !28
  %61 = tail call fastcc float @ApplyEvaluateOperator(ptr noundef %58, i16 noundef zeroext %60, i32 noundef %2, float noundef %27) #20
  %62 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %61) #20
  store i16 %62, ptr %59, align 2, !tbaa !28
  br label %63

63:                                               ; preds = %57, %54
  br i1 %29, label %70, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %18, align 8, !tbaa !27
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 1
  %67 = load i16, ptr %66, align 2, !tbaa !29
  %68 = tail call fastcc float @ApplyEvaluateOperator(ptr noundef %65, i16 noundef zeroext %67, i32 noundef %2, float noundef %27) #20
  %69 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %68) #20
  store i16 %69, ptr %66, align 2, !tbaa !29
  br label %70

70:                                               ; preds = %64, %63
  br i1 %31, label %76, label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %18, align 8, !tbaa !27
  %73 = load i16, ptr %56, align 2, !tbaa !30
  %74 = tail call fastcc float @ApplyEvaluateOperator(ptr noundef %72, i16 noundef zeroext %73, i32 noundef %2, float noundef %27) #20
  %75 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %74) #20
  store i16 %75, ptr %56, align 2, !tbaa !30
  br label %76

76:                                               ; preds = %71, %70
  br i1 %33, label %93, label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %34, align 8, !tbaa !31
  %79 = icmp eq i32 %78, 0
  %80 = load ptr, ptr %18, align 8, !tbaa !27
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 0, i32 3
  %82 = load i16, ptr %81, align 2, !tbaa !32
  br i1 %79, label %83, label %86

83:                                               ; preds = %77
  %84 = tail call fastcc float @ApplyEvaluateOperator(ptr noundef %80, i16 noundef zeroext %82, i32 noundef %2, float noundef %27) #20
  %85 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %84) #20
  br label %91

86:                                               ; preds = %77
  %87 = xor i16 %82, -1
  %88 = tail call fastcc float @ApplyEvaluateOperator(ptr noundef %80, i16 noundef zeroext %87, i32 noundef %2, float noundef %27) #20
  %89 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %88) #20
  %90 = xor i16 %89, -1
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i16 [ %85, %83 ], [ %90, %86 ]
  store i16 %92, ptr %81, align 2, !tbaa !32
  br label %93

93:                                               ; preds = %91, %76
  br i1 %53, label %94, label %100

94:                                               ; preds = %93
  %95 = getelementptr inbounds i16, ptr %48, i64 %55
  %96 = load ptr, ptr %18, align 8, !tbaa !27
  %97 = load i16, ptr %95, align 2, !tbaa !33
  %98 = tail call fastcc float @ApplyEvaluateOperator(ptr noundef %96, i16 noundef zeroext %97, i32 noundef %2, float noundef %27) #20
  %99 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %98) #20
  store i16 %99, ptr %95, align 2, !tbaa !33
  br label %100

100:                                              ; preds = %94, %93
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 1
  %102 = add nuw nsw i64 %55, 1
  %103 = load i64, ptr %24, align 8, !tbaa !26
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %54, label %105, !llvm.loop !34

105:                                              ; preds = %100, %47
  %106 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %19, ptr noundef %4) #22
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = load ptr, ptr %37, align 8, !tbaa !36
  %110 = icmp eq ptr %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = add nsw i64 %41, 1
  %113 = load i64, ptr %20, align 8, !tbaa !25
  %114 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %41, i64 noundef %113) #20
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i32 0, i32 %108
  br label %117

117:                                              ; preds = %105, %111, %43, %38
  %118 = phi i64 [ %41, %38 ], [ %41, %43 ], [ %112, %111 ], [ %41, %105 ]
  %119 = phi i32 [ 0, %38 ], [ 0, %43 ], [ %116, %111 ], [ %108, %105 ]
  %120 = add nuw nsw i64 %40, 1
  %121 = load i64, ptr %20, align 8, !tbaa !25
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %38, label %123, !llvm.loop !37

123:                                              ; preds = %117, %17
  %124 = phi i32 [ 1, %17 ], [ %119, %117 ]
  %125 = tail call ptr @DestroyCacheView(ptr noundef %19) #21
  %126 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %18) #20
  br label %127

127:                                              ; preds = %123, %15
  %128 = phi i32 [ 0, %15 ], [ %124, %123 ]
  ret i32 %128
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EvaluateImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 465, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #21
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !25
  %16 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %13, i64 noundef %15, i32 noundef 1, ptr noundef %2) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %362, label %18

18:                                               ; preds = %11
  %19 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %16, i32 noundef 1) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %22) #21
  %23 = tail call ptr @DestroyImage(ptr noundef nonnull %16) #21
  br label %362

24:                                               ; preds = %18
  %25 = tail call i64 @GetImageListLength(ptr noundef nonnull %0) #21
  %26 = tail call fastcc ptr @AcquirePixelThreadSet(ptr noundef nonnull %0, i64 noundef %25) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = tail call ptr @DestroyImage(ptr noundef nonnull %16) #21
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 482, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %30) #21
  br label %362

32:                                               ; preds = %24
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %4) #21
  %33 = call fastcc ptr @AcquireRandomInfoThreadSet() #20
  %34 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %16, ptr noundef %2) #21
  %35 = icmp eq i32 %1, 30
  %36 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !25
  %38 = icmp sgt i64 %37, 0
  br i1 %35, label %50, label %39

39:                                               ; preds = %32
  br i1 %38, label %40, label %354

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 7
  %42 = icmp sgt i64 %25, 0
  %43 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 1
  %44 = add i64 %25, -1
  %45 = icmp sgt i64 %44, 0
  %46 = uitofp i64 %25 to float
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %48 = insertelement <4 x float> poison, float %46, i64 0
  %49 = shufflevector <4 x float> %48, <4 x float> poison, <4 x i32> zeroinitializer
  br label %178

50:                                               ; preds = %32
  br i1 %38, label %51, label %354

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 7
  %53 = icmp sgt i64 %25, 0
  %54 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 1
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %56

56:                                               ; preds = %51, %172
  %57 = phi i32 [ 1, %51 ], [ %174, %172 ]
  %58 = phi i64 [ 0, %51 ], [ %173, %172 ]
  %59 = phi i64 [ 0, %51 ], [ %175, %172 ]
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %172, label %61

61:                                               ; preds = %56
  %62 = load i64, ptr %52, align 8, !tbaa !26
  %63 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %59, i64 noundef %62, i64 noundef 1, ptr noundef %2) #22
  %64 = icmp eq ptr %63, null
  br i1 %64, label %172, label %65

65:                                               ; preds = %61
  %66 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %34) #21
  %67 = load ptr, ptr %26, align 8, !tbaa !27
  %68 = load i64, ptr %52, align 8, !tbaa !26
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %160

70:                                               ; preds = %65
  %71 = icmp eq ptr %66, null
  br label %72

72:                                               ; preds = %70, %155
  %73 = phi i64 [ 0, %70 ], [ %157, %155 ]
  %74 = phi ptr [ %63, %70 ], [ %156, %155 ]
  br i1 %53, label %76, label %128

75:                                               ; preds = %76
  br i1 %53, label %81, label %128

76:                                               ; preds = %72, %76
  %77 = phi i64 [ %79, %76 ], [ 0, %72 ]
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %78, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !38
  %79 = add nuw nsw i64 %77, 1
  %80 = icmp eq i64 %79, %25
  br i1 %80, label %75, label %76, !llvm.loop !44

81:                                               ; preds = %75, %123
  %82 = phi i64 [ %126, %123 ], [ 0, %75 ]
  %83 = phi ptr [ %125, %123 ], [ %0, %75 ]
  %84 = call ptr @AcquireVirtualCacheView(ptr noundef %83, ptr noundef %2) #21
  %85 = call ptr @GetCacheViewVirtualPixels(ptr noundef %84, i64 noundef %73, i64 noundef %59, i64 noundef 1, i64 noundef 1, ptr noundef %2) #22
  %86 = icmp eq ptr %85, null
  br i1 %86, label %121, label %87

87:                                               ; preds = %81
  %88 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %84) #21
  %89 = load ptr, ptr %33, align 8, !tbaa !27
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 2
  %91 = load i16, ptr %90, align 2, !tbaa !28
  %92 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %82, i32 5
  %93 = load float, ptr %92, align 8, !tbaa !45
  %94 = call fastcc float @ApplyEvaluateOperator(ptr noundef %89, i16 noundef zeroext %91, i32 noundef 30, float noundef %93) #20
  store float %94, ptr %92, align 8, !tbaa !45
  %95 = load ptr, ptr %33, align 8, !tbaa !27
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 1
  %97 = load i16, ptr %96, align 2, !tbaa !29
  %98 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %82, i32 6
  %99 = load float, ptr %98, align 4, !tbaa !47
  %100 = call fastcc float @ApplyEvaluateOperator(ptr noundef %95, i16 noundef zeroext %97, i32 noundef 30, float noundef %99) #20
  store float %100, ptr %98, align 4, !tbaa !47
  %101 = load ptr, ptr %33, align 8, !tbaa !27
  %102 = load i16, ptr %85, align 2, !tbaa !30
  %103 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %82, i32 7
  %104 = load float, ptr %103, align 8, !tbaa !48
  %105 = call fastcc float @ApplyEvaluateOperator(ptr noundef %101, i16 noundef zeroext %102, i32 noundef 30, float noundef %104) #20
  store float %105, ptr %103, align 8, !tbaa !48
  %106 = load ptr, ptr %33, align 8, !tbaa !27
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !32
  %109 = xor i16 %108, -1
  %110 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %82, i32 8
  %111 = load float, ptr %110, align 4, !tbaa !49
  %112 = call fastcc float @ApplyEvaluateOperator(ptr noundef %106, i16 noundef zeroext %109, i32 noundef 30, float noundef %111) #20
  store float %112, ptr %110, align 4, !tbaa !49
  %113 = load i32, ptr %54, align 4, !tbaa !50
  %114 = icmp eq i32 %113, 12
  br i1 %114, label %115, label %123

115:                                              ; preds = %87
  %116 = load ptr, ptr %33, align 8, !tbaa !27
  %117 = load i16, ptr %88, align 2, !tbaa !33
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %82, i32 9
  %119 = load float, ptr %118, align 8, !tbaa !51
  %120 = call fastcc float @ApplyEvaluateOperator(ptr noundef %116, i16 noundef zeroext %117, i32 noundef 30, float noundef %119) #20
  store float %120, ptr %118, align 8, !tbaa !51
  br label %123

121:                                              ; preds = %81
  %122 = call ptr @DestroyCacheView(ptr noundef %84) #21
  br label %128

123:                                              ; preds = %87, %115
  %124 = call ptr @DestroyCacheView(ptr noundef %84) #21
  %125 = call ptr @GetNextImageInList(ptr noundef %83) #21
  %126 = add nuw nsw i64 %82, 1
  %127 = icmp eq i64 %126, %25
  br i1 %127, label %128, label %81, !llvm.loop !52

128:                                              ; preds = %123, %72, %75, %121
  %129 = phi i64 [ %82, %121 ], [ 0, %75 ], [ 0, %72 ], [ %25, %123 ]
  call void @qsort(ptr noundef %67, i64 noundef %25, i64 noundef 56, ptr noundef nonnull @IntensityCompare) #21
  %130 = lshr i64 %129, 1
  %131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %130, i32 5
  %132 = load float, ptr %131, align 8, !tbaa !45
  %133 = call fastcc zeroext i16 @ClampToQuantum(float noundef %132) #20
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  store i16 %133, ptr %134, align 2, !tbaa !28
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %130, i32 6
  %136 = load float, ptr %135, align 4, !tbaa !47
  %137 = call fastcc zeroext i16 @ClampToQuantum(float noundef %136) #20
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 1
  store i16 %137, ptr %138, align 2, !tbaa !29
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %130, i32 7
  %140 = load float, ptr %139, align 8, !tbaa !48
  %141 = call fastcc zeroext i16 @ClampToQuantum(float noundef %140) #20
  store i16 %141, ptr %74, align 2, !tbaa !30
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %130, i32 8
  %143 = load float, ptr %142, align 4, !tbaa !49
  %144 = call fastcc zeroext i16 @ClampToQuantum(float noundef %143) #20
  %145 = xor i16 %144, -1
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 3
  store i16 %145, ptr %146, align 2, !tbaa !32
  %147 = load i32, ptr %54, align 4, !tbaa !50
  %148 = icmp ne i32 %147, 12
  %149 = select i1 %148, i1 true, i1 %71
  br i1 %149, label %155, label %150

150:                                              ; preds = %128
  %151 = getelementptr inbounds i16, ptr %66, i64 %129
  %152 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %130, i32 9
  %153 = load float, ptr %152, align 8, !tbaa !51
  %154 = call fastcc zeroext i16 @ClampToQuantum(float noundef %153) #20
  store i16 %154, ptr %151, align 2, !tbaa !33
  br label %155

155:                                              ; preds = %150, %128
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  %157 = add nuw nsw i64 %73, 1
  %158 = load i64, ptr %52, align 8, !tbaa !26
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %72, label %160, !llvm.loop !53

160:                                              ; preds = %155, %65
  %161 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %34, ptr noundef %2) #22
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = load ptr, ptr %55, align 8, !tbaa !36
  %165 = icmp eq ptr %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = add nsw i64 %58, 1
  %168 = load i64, ptr %36, align 8, !tbaa !25
  %169 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %58, i64 noundef %168) #20
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 0, i32 %163
  br label %172

172:                                              ; preds = %160, %166, %61, %56
  %173 = phi i64 [ %58, %56 ], [ %58, %61 ], [ %167, %166 ], [ %58, %160 ]
  %174 = phi i32 [ 0, %56 ], [ 0, %61 ], [ %171, %166 ], [ %163, %160 ]
  %175 = add nuw nsw i64 %59, 1
  %176 = load i64, ptr %36, align 8, !tbaa !25
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %56, label %354, !llvm.loop !54

178:                                              ; preds = %40, %348
  %179 = phi i32 [ 1, %40 ], [ %350, %348 ]
  %180 = phi i64 [ 0, %40 ], [ %349, %348 ]
  %181 = phi i64 [ 0, %40 ], [ %351, %348 ]
  %182 = icmp eq i32 %179, 0
  br i1 %182, label %348, label %183

183:                                              ; preds = %178
  %184 = load i64, ptr %41, align 8, !tbaa !26
  %185 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %181, i64 noundef %184, i64 noundef 1, ptr noundef %2) #22
  %186 = icmp eq ptr %185, null
  br i1 %186, label %348, label %187

187:                                              ; preds = %183
  %188 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %34) #21
  %189 = load ptr, ptr %26, align 8, !tbaa !27
  %190 = load i64, ptr %41, align 8, !tbaa !26
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %193, %187
  br i1 %42, label %199, label %266

193:                                              ; preds = %187, %193
  %194 = phi i64 [ %196, %193 ], [ 0, %187 ]
  %195 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %195, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false), !tbaa.struct !38
  %196 = add nuw nsw i64 %194, 1
  %197 = load i64, ptr %41, align 8, !tbaa !26
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %193, label %192, !llvm.loop !55

199:                                              ; preds = %192, %261
  %200 = phi i64 [ %264, %261 ], [ 0, %192 ]
  %201 = phi ptr [ %263, %261 ], [ %0, %192 ]
  %202 = call ptr @AcquireVirtualCacheView(ptr noundef %201, ptr noundef %2) #21
  %203 = getelementptr inbounds %struct._Image, ptr %201, i64 0, i32 7
  %204 = load i64, ptr %203, align 8, !tbaa !26
  %205 = call ptr @GetCacheViewVirtualPixels(ptr noundef %202, i64 noundef 0, i64 noundef %181, i64 noundef %204, i64 noundef 1, ptr noundef %2) #22
  %206 = icmp eq ptr %205, null
  br i1 %206, label %259, label %207

207:                                              ; preds = %199
  %208 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %202) #21
  %209 = load i64, ptr %203, align 8, !tbaa !26
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %261

211:                                              ; preds = %207
  %212 = icmp eq i64 %200, 0
  %213 = select i1 %212, i32 1, i32 %1
  %214 = icmp eq ptr %208, null
  br label %215

215:                                              ; preds = %211, %254
  %216 = phi ptr [ %205, %211 ], [ %255, %254 ]
  %217 = phi i64 [ 0, %211 ], [ %256, %254 ]
  %218 = load ptr, ptr %33, align 8, !tbaa !27
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %216, i64 0, i32 2
  %220 = load i16, ptr %219, align 2, !tbaa !28
  %221 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %217, i32 5
  %222 = load float, ptr %221, align 8, !tbaa !45
  %223 = call fastcc float @ApplyEvaluateOperator(ptr noundef %218, i16 noundef zeroext %220, i32 noundef %213, float noundef %222) #20
  store float %223, ptr %221, align 8, !tbaa !45
  %224 = load ptr, ptr %33, align 8, !tbaa !27
  %225 = getelementptr inbounds %struct._PixelPacket, ptr %216, i64 0, i32 1
  %226 = load i16, ptr %225, align 2, !tbaa !29
  %227 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %217, i32 6
  %228 = load float, ptr %227, align 4, !tbaa !47
  %229 = call fastcc float @ApplyEvaluateOperator(ptr noundef %224, i16 noundef zeroext %226, i32 noundef %213, float noundef %228) #20
  store float %229, ptr %227, align 4, !tbaa !47
  %230 = load ptr, ptr %33, align 8, !tbaa !27
  %231 = load i16, ptr %216, align 2, !tbaa !30
  %232 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %217, i32 7
  %233 = load float, ptr %232, align 8, !tbaa !48
  %234 = call fastcc float @ApplyEvaluateOperator(ptr noundef %230, i16 noundef zeroext %231, i32 noundef %213, float noundef %233) #20
  store float %234, ptr %232, align 8, !tbaa !48
  %235 = load ptr, ptr %33, align 8, !tbaa !27
  %236 = getelementptr inbounds %struct._PixelPacket, ptr %216, i64 0, i32 3
  %237 = load i16, ptr %236, align 2, !tbaa !32
  %238 = xor i16 %237, -1
  %239 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %217, i32 8
  %240 = load float, ptr %239, align 4, !tbaa !49
  %241 = call fastcc float @ApplyEvaluateOperator(ptr noundef %235, i16 noundef zeroext %238, i32 noundef %213, float noundef %240) #20
  store float %241, ptr %239, align 4, !tbaa !49
  %242 = load i32, ptr %43, align 4, !tbaa !50
  %243 = icmp eq i32 %242, 12
  br i1 %243, label %244, label %254

244:                                              ; preds = %215
  %245 = load ptr, ptr %33, align 8, !tbaa !27
  br i1 %214, label %249, label %246

246:                                              ; preds = %244
  %247 = getelementptr inbounds i16, ptr %208, i64 %217
  %248 = load i16, ptr %247, align 2, !tbaa !33
  br label %249

249:                                              ; preds = %244, %246
  %250 = phi i16 [ %248, %246 ], [ 0, %244 ]
  %251 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %217, i32 9
  %252 = load float, ptr %251, align 8, !tbaa !51
  %253 = call fastcc float @ApplyEvaluateOperator(ptr noundef %245, i16 noundef zeroext %250, i32 noundef %213, float noundef %252) #20
  store float %253, ptr %251, align 8, !tbaa !51
  br label %254

254:                                              ; preds = %249, %215
  %255 = getelementptr inbounds %struct._PixelPacket, ptr %216, i64 1
  %256 = add nuw nsw i64 %217, 1
  %257 = load i64, ptr %203, align 8, !tbaa !26
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %215, label %261, !llvm.loop !56

259:                                              ; preds = %199
  %260 = call ptr @DestroyCacheView(ptr noundef %202) #21
  br label %266

261:                                              ; preds = %254, %207
  %262 = call ptr @DestroyCacheView(ptr noundef %202) #21
  %263 = call ptr @GetNextImageInList(ptr noundef nonnull %201) #21
  %264 = add nuw nsw i64 %200, 1
  %265 = icmp eq i64 %264, %25
  br i1 %265, label %266, label %199, !llvm.loop !57

266:                                              ; preds = %261, %192, %259
  %267 = load i64, ptr %41, align 8, !tbaa !26
  switch i32 %1, label %301 [
    i32 27, label %268
    i32 7, label %280
  ]

268:                                              ; preds = %266
  %269 = icmp sgt i64 %267, 0
  br i1 %269, label %270, label %336

270:                                              ; preds = %268, %270
  %271 = phi i64 [ %278, %270 ], [ 0, %268 ]
  %272 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %271, i32 5
  %273 = load <4 x float>, ptr %272, align 8, !tbaa !42
  %274 = fdiv <4 x float> %273, %49
  store <4 x float> %274, ptr %272, align 8, !tbaa !42
  %275 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %271, i32 9
  %276 = load float, ptr %275, align 8, !tbaa !51
  %277 = fdiv float %276, %46
  store float %277, ptr %275, align 8, !tbaa !51
  %278 = add nuw nsw i64 %271, 1
  %279 = icmp eq i64 %278, %267
  br i1 %279, label %301, label %270, !llvm.loop !58

280:                                              ; preds = %266
  %281 = icmp sgt i64 %267, 0
  br i1 %281, label %282, label %336

282:                                              ; preds = %280, %298
  %283 = phi i64 [ %299, %298 ], [ 0, %280 ]
  br i1 %45, label %284, label %298

284:                                              ; preds = %282
  %285 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %283, i32 5
  %286 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %283, i32 9
  %287 = load <4 x float>, ptr %285, align 8, !tbaa !42
  %288 = load float, ptr %286, align 8, !tbaa !51
  br label %289

289:                                              ; preds = %284, %289
  %290 = phi float [ %288, %284 ], [ %294, %289 ]
  %291 = phi i64 [ 0, %284 ], [ %295, %289 ]
  %292 = phi <4 x float> [ %287, %284 ], [ %293, %289 ]
  %293 = fmul <4 x float> %292, <float 0x3EF0001000000000, float 0x3EF0001000000000, float 0x3EF0001000000000, float 0x3EF0001000000000>
  %294 = fmul float %290, 0x3EF0001000000000
  %295 = add nuw nsw i64 %291, 1
  %296 = icmp eq i64 %295, %44
  br i1 %296, label %297, label %289, !llvm.loop !59

297:                                              ; preds = %289
  store <4 x float> %293, ptr %285, align 8, !tbaa !42
  store float %294, ptr %286, align 8, !tbaa !51
  br label %298

298:                                              ; preds = %297, %282
  %299 = add nuw nsw i64 %283, 1
  %300 = icmp eq i64 %299, %267
  br i1 %300, label %301, label %282, !llvm.loop !60

301:                                              ; preds = %298, %270, %266
  %302 = icmp sgt i64 %267, 0
  br i1 %302, label %303, label %336

303:                                              ; preds = %301
  %304 = load i32, ptr %43, align 4, !tbaa !50
  %305 = icmp ne i32 %304, 12
  %306 = icmp eq ptr %188, null
  %307 = select i1 %305, i1 true, i1 %306
  br label %308

308:                                              ; preds = %303, %332
  %309 = phi ptr [ %185, %303 ], [ %333, %332 ]
  %310 = phi i64 [ 0, %303 ], [ %334, %332 ]
  %311 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %310, i32 5
  %312 = load float, ptr %311, align 8, !tbaa !45
  %313 = call fastcc zeroext i16 @ClampToQuantum(float noundef %312) #20
  %314 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 0, i32 2
  store i16 %313, ptr %314, align 2, !tbaa !28
  %315 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %310, i32 6
  %316 = load float, ptr %315, align 4, !tbaa !47
  %317 = call fastcc zeroext i16 @ClampToQuantum(float noundef %316) #20
  %318 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 0, i32 1
  store i16 %317, ptr %318, align 2, !tbaa !29
  %319 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %310, i32 7
  %320 = load float, ptr %319, align 8, !tbaa !48
  %321 = call fastcc zeroext i16 @ClampToQuantum(float noundef %320) #20
  store i16 %321, ptr %309, align 2, !tbaa !30
  %322 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %310, i32 8
  %323 = load float, ptr %322, align 4, !tbaa !49
  %324 = call fastcc zeroext i16 @ClampToQuantum(float noundef %323) #20
  %325 = xor i16 %324, -1
  %326 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 0, i32 3
  store i16 %325, ptr %326, align 2, !tbaa !32
  br i1 %307, label %332, label %327

327:                                              ; preds = %308
  %328 = getelementptr inbounds i16, ptr %188, i64 %310
  %329 = getelementptr inbounds %struct._MagickPixelPacket, ptr %189, i64 %310, i32 9
  %330 = load float, ptr %329, align 8, !tbaa !51
  %331 = call fastcc zeroext i16 @ClampToQuantum(float noundef %330) #20
  store i16 %331, ptr %328, align 2, !tbaa !33
  br label %332

332:                                              ; preds = %327, %308
  %333 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 1
  %334 = add nuw nsw i64 %310, 1
  %335 = icmp eq i64 %334, %267
  br i1 %335, label %336, label %308, !llvm.loop !61

336:                                              ; preds = %332, %268, %280, %301
  %337 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %34, ptr noundef %2) #22
  %338 = icmp ne i32 %337, 0
  %339 = zext i1 %338 to i32
  %340 = load ptr, ptr %47, align 8, !tbaa !36
  %341 = icmp eq ptr %340, null
  br i1 %341, label %348, label %342

342:                                              ; preds = %336
  %343 = add nsw i64 %180, 1
  %344 = load i64, ptr %36, align 8, !tbaa !25
  %345 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %180, i64 noundef %344) #20
  %346 = icmp eq i32 %345, 0
  %347 = select i1 %346, i32 0, i32 %339
  br label %348

348:                                              ; preds = %336, %342, %183, %178
  %349 = phi i64 [ %180, %178 ], [ %180, %183 ], [ %343, %342 ], [ %180, %336 ]
  %350 = phi i32 [ 0, %178 ], [ 0, %183 ], [ %347, %342 ], [ %339, %336 ]
  %351 = add nuw nsw i64 %181, 1
  %352 = load i64, ptr %36, align 8, !tbaa !25
  %353 = icmp slt i64 %351, %352
  br i1 %353, label %178, label %354, !llvm.loop !62

354:                                              ; preds = %348, %172, %39, %50
  %355 = phi i32 [ 1, %50 ], [ 1, %39 ], [ %174, %172 ], [ %350, %348 ]
  %356 = call ptr @DestroyCacheView(ptr noundef %34) #21
  %357 = call fastcc ptr @DestroyPixelThreadSet(ptr noundef nonnull %26) #20
  %358 = call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %33) #20
  %359 = icmp eq i32 %355, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %354
  %361 = call ptr @DestroyImage(ptr noundef nonnull %16) #21
  br label %362

362:                                              ; preds = %354, %360, %11, %28, %21
  %363 = phi ptr [ null, %21 ], [ null, %28 ], [ null, %11 ], [ %361, %360 ], [ %16, %354 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #23
  ret ptr %363
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
  %3 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %4 = tail call ptr @AcquireQuantumMemory(i64 noundef %3, i64 noundef 8) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = shl i64 %3, 3
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %7) #21
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %12

12:                                               ; preds = %10, %29
  %13 = phi i64 [ 0, %10 ], [ %30, %29 ]
  %14 = load i64, ptr %11, align 8, !tbaa !26
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 %1)
  %16 = tail call ptr @AcquireQuantumMemory(i64 noundef %15, i64 noundef 56) #24
  %17 = getelementptr inbounds ptr, ptr %4, i64 %13
  store ptr %16, ptr %17, align 8, !tbaa !27
  %18 = icmp eq ptr %16, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = icmp sgt i64 %15, 0
  br i1 %20, label %23, label %29

21:                                               ; preds = %12
  %22 = tail call fastcc ptr @DestroyPixelThreadSet(ptr noundef nonnull %4) #20
  br label %32

23:                                               ; preds = %19, %23
  %24 = phi i64 [ %27, %23 ], [ 0, %19 ]
  %25 = load ptr, ptr %17, align 8, !tbaa !27
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %25, i64 %24
  tail call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef %26) #21
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, %15
  br i1 %28, label %29, label %23, !llvm.loop !63

29:                                               ; preds = %23, %19
  %30 = add nuw nsw i64 %13, 1
  %31 = icmp eq i64 %30, %3
  br i1 %31, label %32, label %12, !llvm.loop !64

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
  %1 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %2 = tail call ptr @AcquireAlignedMemory(i64 noundef %1, i64 noundef 8) #24
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
  br i1 %10, label %18, label %11, !llvm.loop !65

11:                                               ; preds = %4, %8
  %12 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %13 = tail call ptr @AcquireRandomInfo() #21
  %14 = getelementptr inbounds ptr, ptr %2, i64 %12
  store ptr %13, ptr %14, align 8, !tbaa !27
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef nonnull %2) #20
  br label %18

18:                                               ; preds = %8, %4, %0, %16
  %19 = phi ptr [ %17, %16 ], [ null, %0 ], [ %2, %4 ], [ %2, %8 ]
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @ApplyEvaluateOperator(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, float noundef %3) unnamed_addr #0 {
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
  %32 = tail call double @cos(double noundef %31) #21
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
  %48 = tail call double @exp(double noundef %47) #21
  %49 = fmul double %48, 6.553500e+04
  %50 = fptrunc double %49 to float
  br label %165

51:                                               ; preds = %4
  %52 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 2, float noundef %3) #21
  %53 = fptrunc double %52 to float
  br label %165

54:                                               ; preds = %4
  %55 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 4, float noundef %3) #21
  %56 = fptrunc double %55 to float
  br label %165

57:                                               ; preds = %4
  %58 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 5, float noundef %3) #21
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
  %75 = tail call double @log(double noundef %74) #21
  %76 = fmul double %75, 6.553500e+04
  %77 = fadd double %72, 1.000000e+00
  %78 = tail call double @log(double noundef %77) #21
  %79 = fdiv double %76, %78
  %80 = fptrunc double %79 to float
  br label %165

81:                                               ; preds = %4
  %82 = uitofp i16 %1 to double
  %83 = fpext float %3 to double
  %84 = tail call fastcc double @EvaluateMax(double noundef %82, double noundef %83) #20
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
  %95 = tail call fastcc double @MagickMin(double noundef %93, double noundef %94) #20
  %96 = fptrunc double %95 to float
  br label %165

97:                                               ; preds = %4
  %98 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 3, float noundef %3) #21
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
  %111 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 6, float noundef %3) #21
  %112 = fptrunc double %111 to float
  br label %165

113:                                              ; preds = %4
  %114 = uitofp i16 %1 to double
  %115 = fmul double %114, 0x3EF0001000100010
  %116 = fpext float %3 to double
  %117 = tail call double @pow(double noundef %115, double noundef %116) #21
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
  %133 = tail call double @sin(double noundef %132) #21
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
  %156 = tail call double @GenerateDifferentialNoise(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 1, float noundef %3) #21
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
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = tail call fastcc float @MagickPixelIntensity(ptr noundef %1) #20
  %4 = fptosi float %3 to i32
  %5 = tail call fastcc float @MagickPixelIntensity(ptr noundef %0) #20
  %6 = fptosi float %5 to i32
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #7 {
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
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef nonnull %10) #21
  %12 = load ptr, ptr %6, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #21
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #23
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyPixelThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %7) #21
  store ptr %10, ptr %6, align 8, !tbaa !27
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !67

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #21
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyRandomInfoThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %7) #21
  store ptr %10, ptr %6, align 8, !tbaa !27
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !68

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishAlignedMemory(ptr noundef %0) #21
  ret ptr %16
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FunctionImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @FunctionImageChannel(ptr noundef %0, i32 noundef 47, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #20
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @FunctionImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1016, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #21
  br label %13

13:                                               ; preds = %10, %6
  %14 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %17) #21
  br label %117

18:                                               ; preds = %13
  %19 = tail call i32 @AccelerateFunctionImage(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %117

21:                                               ; preds = %18
  %22 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %5) #21
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !25
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %114

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = and i32 %1, 1
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %1, 2
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %1, 4
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %1, 8
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %37 = and i32 %1, 32
  %38 = icmp ne i32 %37, 0
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %40

40:                                               ; preds = %26, %108
  %41 = phi i64 [ 0, %26 ], [ %111, %108 ]
  %42 = phi i64 [ 0, %26 ], [ %110, %108 ]
  %43 = phi i32 [ 1, %26 ], [ %109, %108 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %108, label %45

45:                                               ; preds = %40
  %46 = load i64, ptr %27, align 8, !tbaa !26
  %47 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %22, i64 noundef 0, i64 noundef %41, i64 noundef %46, i64 noundef 1, ptr noundef %5) #22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %108, label %49

49:                                               ; preds = %45
  %50 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %22) #21
  %51 = load i64, ptr %27, align 8, !tbaa !26
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %49
  %54 = icmp ne ptr %50, null
  %55 = select i1 %38, i1 %54, i1 false
  br label %56

56:                                               ; preds = %53, %91
  %57 = phi ptr [ %47, %53 ], [ %92, %91 ]
  %58 = phi i64 [ 0, %53 ], [ %93, %91 ]
  br i1 %29, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 2
  %61 = load i16, ptr %60, align 2, !tbaa !28
  %62 = tail call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %61, i32 noundef %2, i64 noundef %3, ptr noundef %4) #20
  store i16 %62, ptr %60, align 2, !tbaa !28
  br label %63

63:                                               ; preds = %59, %56
  br i1 %31, label %68, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !29
  %67 = tail call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %66, i32 noundef %2, i64 noundef %3, ptr noundef %4) #20
  store i16 %67, ptr %65, align 2, !tbaa !29
  br label %68

68:                                               ; preds = %64, %63
  br i1 %33, label %72, label %69

69:                                               ; preds = %68
  %70 = load i16, ptr %57, align 2, !tbaa !30
  %71 = tail call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %70, i32 noundef %2, i64 noundef %3, ptr noundef %4) #20
  store i16 %71, ptr %57, align 2, !tbaa !30
  br label %72

72:                                               ; preds = %69, %68
  br i1 %35, label %86, label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %36, align 8, !tbaa !31
  %75 = icmp eq i32 %74, 0
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 3
  %77 = load i16, ptr %76, align 2, !tbaa !32
  br i1 %75, label %78, label %80

78:                                               ; preds = %73
  %79 = tail call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %77, i32 noundef %2, i64 noundef %3, ptr noundef %4) #20
  br label %84

80:                                               ; preds = %73
  %81 = xor i16 %77, -1
  %82 = tail call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %81, i32 noundef %2, i64 noundef %3, ptr noundef %4) #20
  %83 = xor i16 %82, -1
  br label %84

84:                                               ; preds = %80, %78
  %85 = phi i16 [ %79, %78 ], [ %83, %80 ]
  store i16 %85, ptr %76, align 2, !tbaa !32
  br label %86

86:                                               ; preds = %84, %72
  br i1 %55, label %87, label %91

87:                                               ; preds = %86
  %88 = getelementptr inbounds i16, ptr %50, i64 %58
  %89 = load i16, ptr %88, align 2, !tbaa !33
  %90 = tail call fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %89, i32 noundef %2, i64 noundef %3, ptr noundef %4) #20
  store i16 %90, ptr %88, align 2, !tbaa !33
  br label %91

91:                                               ; preds = %87, %86
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 1
  %93 = add nuw nsw i64 %58, 1
  %94 = load i64, ptr %27, align 8, !tbaa !26
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %56, label %96, !llvm.loop !69

96:                                               ; preds = %91, %49
  %97 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %22, ptr noundef %5) #22
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = load ptr, ptr %39, align 8, !tbaa !36
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = add nsw i64 %42, 1
  %104 = load i64, ptr %23, align 8, !tbaa !25
  %105 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef %42, i64 noundef %104) #20
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 0, i32 %99
  br label %108

108:                                              ; preds = %96, %102, %45, %40
  %109 = phi i32 [ 0, %40 ], [ 0, %45 ], [ %107, %102 ], [ %99, %96 ]
  %110 = phi i64 [ %42, %40 ], [ %42, %45 ], [ %103, %102 ], [ %42, %96 ]
  %111 = add nuw nsw i64 %41, 1
  %112 = load i64, ptr %23, align 8, !tbaa !25
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %40, label %114, !llvm.loop !70

114:                                              ; preds = %108, %21
  %115 = phi i32 [ 1, %21 ], [ %109, %108 ]
  %116 = tail call ptr @DestroyCacheView(ptr noundef %22) #21
  br label %117

117:                                              ; preds = %18, %114, %16
  %118 = phi i32 [ 0, %16 ], [ %115, %114 ], [ %19, %18 ]
  ret i32 %118
}

; Function Attrs: optsize
declare i32 @AccelerateFunctionImage(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc zeroext i16 @ApplyFunction(i16 noundef zeroext %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #8 {
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
  %15 = load double, ptr %14, align 8, !tbaa !40
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
  %25 = load double, ptr %3, align 8, !tbaa !40
  %26 = fmul double %25, 0x3EF0001000100010
  %27 = icmp eq i64 %2, 1
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds double, ptr %3, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !40
  %31 = icmp ugt i64 %2, 2
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = getelementptr inbounds double, ptr %3, i64 2
  %34 = load double, ptr %33, align 8, !tbaa !40
  %35 = icmp eq i64 %2, 3
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds double, ptr %3, i64 3
  %38 = load double, ptr %37, align 8, !tbaa !40
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
  %48 = tail call double @sin(double noundef %47) #21
  %49 = tail call double @llvm.fmuladd.f64(double %40, double %48, double %43)
  %50 = fmul double %49, 6.553500e+04
  %51 = fptrunc double %50 to float
  br label %130

52:                                               ; preds = %4
  %53 = icmp eq i64 %2, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %52
  %55 = load double, ptr %3, align 8, !tbaa !40
  %56 = icmp eq i64 %2, 1
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds double, ptr %3, i64 1
  %59 = load double, ptr %58, align 8, !tbaa !40
  %60 = icmp ugt i64 %2, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = getelementptr inbounds double, ptr %3, i64 2
  %63 = load double, ptr %62, align 8, !tbaa !40
  %64 = icmp eq i64 %2, 3
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds double, ptr %3, i64 3
  %67 = load double, ptr %66, align 8, !tbaa !40
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
  %91 = tail call double @asin(double noundef %79) #21
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
  %100 = load double, ptr %3, align 8, !tbaa !40
  %101 = fmul double %100, 0x400921FB54442D18
  %102 = icmp eq i64 %2, 1
  br i1 %102, label %114, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds double, ptr %3, i64 1
  %105 = load double, ptr %104, align 8, !tbaa !40
  %106 = icmp ugt i64 %2, 2
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = getelementptr inbounds double, ptr %3, i64 2
  %109 = load double, ptr %108, align 8, !tbaa !40
  %110 = icmp eq i64 %2, 3
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds double, ptr %3, i64 3
  %113 = load double, ptr %112, align 8, !tbaa !40
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
  %126 = tail call double @atan(double noundef %125) #21
  %127 = tail call double @llvm.fmuladd.f64(double %124, double %126, double %118)
  %128 = fmul double %127, 6.553500e+04
  %129 = fptrunc double %128 to float
  br label %130

130:                                              ; preds = %5, %20, %4, %114, %93, %39
  %131 = phi float [ 0.000000e+00, %4 ], [ %129, %114 ], [ %96, %93 ], [ %51, %39 ], [ 0.000000e+00, %5 ], [ %21, %20 ]
  %132 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %131) #20
  ret i16 %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageExtrema(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelExtrema(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20, !range !5
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageChannelExtrema(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1152, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #21
  br label %14

14:                                               ; preds = %11, %5
  %15 = call i32 @GetImageChannelRange(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %4) #20, !range !5
  %16 = load double, ptr %7, align 8, !tbaa !40
  %17 = fadd double %16, -5.000000e-01
  %18 = tail call double @llvm.ceil.f64(double %17)
  %19 = fptoui double %18 to i64
  store i64 %19, ptr %2, align 8, !tbaa !41
  %20 = load double, ptr %6, align 8, !tbaa !40
  %21 = fadd double %20, 5.000000e-01
  %22 = tail call double @llvm.floor.f64(double %21)
  %23 = fptoui double %22 to i64
  store i64 %23, ptr %3, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageChannelRange(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2029, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #21
  br label %13

13:                                               ; preds = %10, %5
  store double 0xFFEFFFFFFFFFFFFF, ptr %3, align 8, !tbaa !40
  store double 0x7FEFFFFFFFFFFFFF, ptr %2, align 8, !tbaa !40
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #21
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !25
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
  %36 = load i64, ptr %14, align 8, !tbaa !26
  br label %37

37:                                               ; preds = %18, %116
  %38 = phi i64 [ %36, %18 ], [ %46, %116 ]
  %39 = phi i64 [ 0, %18 ], [ %117, %116 ]
  %40 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %39, i64 noundef %38, i64 noundef 1, ptr noundef %4) #21
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, ptr %15, align 8, !tbaa !25
  br label %120

44:                                               ; preds = %37
  %45 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #21
  %46 = load i64, ptr %14, align 8, !tbaa !26
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %116

48:                                               ; preds = %44, %112
  %49 = phi i64 [ %114, %112 ], [ 0, %44 ]
  %50 = phi ptr [ %113, %112 ], [ %40, %44 ]
  %51 = getelementptr inbounds i16, ptr %45, i64 %49
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %50, ptr noundef %51, ptr noundef nonnull %6) #20
  br i1 %20, label %62, label %52

52:                                               ; preds = %48
  %53 = load float, ptr %21, align 8, !tbaa !45
  %54 = fpext float %53 to double
  %55 = load double, ptr %2, align 8, !tbaa !40
  %56 = fcmp ogt double %55, %54
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store double %54, ptr %2, align 8, !tbaa !40
  br label %58

58:                                               ; preds = %57, %52
  %59 = load double, ptr %3, align 8, !tbaa !40
  %60 = fcmp olt double %59, %54
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store double %54, ptr %3, align 8, !tbaa !40
  br label %62

62:                                               ; preds = %58, %61, %48
  br i1 %23, label %73, label %63

63:                                               ; preds = %62
  %64 = load float, ptr %24, align 4, !tbaa !47
  %65 = fpext float %64 to double
  %66 = load double, ptr %2, align 8, !tbaa !40
  %67 = fcmp ogt double %66, %65
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store double %65, ptr %2, align 8, !tbaa !40
  br label %69

69:                                               ; preds = %68, %63
  %70 = load double, ptr %3, align 8, !tbaa !40
  %71 = fcmp olt double %70, %65
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store double %65, ptr %3, align 8, !tbaa !40
  br label %73

73:                                               ; preds = %69, %72, %62
  br i1 %26, label %84, label %74

74:                                               ; preds = %73
  %75 = load float, ptr %27, align 8, !tbaa !48
  %76 = fpext float %75 to double
  %77 = load double, ptr %2, align 8, !tbaa !40
  %78 = fcmp ogt double %77, %76
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store double %76, ptr %2, align 8, !tbaa !40
  br label %80

80:                                               ; preds = %79, %74
  %81 = load double, ptr %3, align 8, !tbaa !40
  %82 = fcmp olt double %81, %76
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store double %76, ptr %3, align 8, !tbaa !40
  br label %84

84:                                               ; preds = %80, %83, %73
  br i1 %29, label %98, label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %30, align 8, !tbaa !31
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  %89 = load float, ptr %31, align 4, !tbaa !49
  %90 = fpext float %89 to double
  %91 = load double, ptr %2, align 8, !tbaa !40
  %92 = fcmp ogt double %91, %90
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store double %90, ptr %2, align 8, !tbaa !40
  br label %94

94:                                               ; preds = %93, %88
  %95 = load double, ptr %3, align 8, !tbaa !40
  %96 = fcmp olt double %95, %90
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store double %90, ptr %3, align 8, !tbaa !40
  br label %98

98:                                               ; preds = %94, %97, %85, %84
  br i1 %33, label %112, label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %34, align 4, !tbaa !50
  %101 = icmp eq i32 %100, 12
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load float, ptr %35, align 8, !tbaa !51
  %104 = fpext float %103 to double
  %105 = load double, ptr %2, align 8, !tbaa !40
  %106 = fcmp ogt double %105, %104
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store double %104, ptr %2, align 8, !tbaa !40
  br label %108

108:                                              ; preds = %107, %102
  %109 = load double, ptr %3, align 8, !tbaa !40
  %110 = fcmp olt double %109, %104
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store double %104, ptr %3, align 8, !tbaa !40
  br label %112

112:                                              ; preds = %108, %111, %99, %98
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 1
  %114 = add nuw nsw i64 %49, 1
  %115 = icmp eq i64 %114, %46
  br i1 %115, label %116, label %48, !llvm.loop !72

116:                                              ; preds = %112, %44
  %117 = add nuw nsw i64 %39, 1
  %118 = load i64, ptr %15, align 8, !tbaa !25
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %37, label %120, !llvm.loop !73

120:                                              ; preds = %116, %42, %13
  %121 = phi i64 [ %16, %13 ], [ %43, %42 ], [ %118, %116 ]
  %122 = phi i64 [ 0, %13 ], [ %39, %42 ], [ %117, %116 ]
  %123 = icmp eq i64 %122, %121
  %124 = zext i1 %123 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #23
  ret i32 %124
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageKurtosis(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelKurtosis(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20, !range !5
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageChannelKurtosis(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1222, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #21
  br label %12

12:                                               ; preds = %9, %5
  store double 0.000000e+00, ptr %2, align 8, !tbaa !40
  store double 0.000000e+00, ptr %3, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !25
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
  %29 = load i64, ptr %13, align 8, !tbaa !26
  br label %30

30:                                               ; preds = %17, %154
  %31 = phi i64 [ %29, %17 ], [ %44, %154 ]
  %32 = phi i64 [ 0, %17 ], [ %158, %154 ]
  %33 = phi double [ 0.000000e+00, %17 ], [ %155, %154 ]
  %34 = phi <2 x double> [ zeroinitializer, %17 ], [ %156, %154 ]
  %35 = phi <2 x double> [ zeroinitializer, %17 ], [ %157, %154 ]
  %36 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %32, i64 noundef %31, i64 noundef 1, ptr noundef %4) #21
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i64, ptr %14, align 8, !tbaa !25
  %40 = extractelement <2 x double> %35, i64 0
  %41 = extractelement <2 x double> %35, i64 1
  br label %164

42:                                               ; preds = %30
  %43 = tail call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #21
  %44 = load i64, ptr %13, align 8, !tbaa !26
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
  %56 = load i16, ptr %55, align 2, !tbaa !28
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
  %73 = load i16, ptr %72, align 2, !tbaa !29
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
  %89 = load i16, ptr %50, align 2, !tbaa !30
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
  %106 = load i16, ptr %105, align 2, !tbaa !32
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
  %122 = load i32, ptr %28, align 4, !tbaa !50
  %123 = icmp eq i32 %122, 12
  br i1 %123, label %124, label %147

124:                                              ; preds = %121
  br i1 %47, label %125, label %127

125:                                              ; preds = %124
  %126 = fadd <2 x double> %119, zeroinitializer
  br label %138

127:                                              ; preds = %124
  %128 = getelementptr inbounds i16, ptr %43, i64 %49
  %129 = load i16, ptr %128, align 2, !tbaa !33
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
  br i1 %153, label %154, label %48, !llvm.loop !74

154:                                              ; preds = %147, %42
  %155 = phi double [ %33, %42 ], [ %148, %147 ]
  %156 = phi <2 x double> [ %34, %42 ], [ %149, %147 ]
  %157 = phi <2 x double> [ %35, %42 ], [ %150, %147 ]
  %158 = add nuw nsw i64 %32, 1
  %159 = load i64, ptr %14, align 8, !tbaa !25
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %30, label %161, !llvm.loop !75

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
  %188 = tail call double @sqrt(double noundef %187) #21
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
  store double %205, ptr %2, align 8, !tbaa !40
  %206 = tail call double @llvm.fmuladd.f64(double %197, double %186, double %192)
  %207 = fmul double %182, 2.000000e+00
  %208 = fmul double %182, %207
  %209 = tail call double @llvm.fmuladd.f64(double %208, double %182, double %206)
  %210 = fdiv double %209, %202
  store double %210, ptr %3, align 8, !tbaa !40
  br label %211

211:                                              ; preds = %190, %180
  %212 = load i64, ptr %14, align 8, !tbaa !25
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetImageMean(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20, !range !5
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @GetImageChannelMean(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1383, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #21
  br label %12

12:                                               ; preds = %9, %5
  %13 = tail call ptr @GetImageChannelStatistics(ptr noundef nonnull %0, ptr noundef %4) #20
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
  %22 = load double, ptr %21, align 8, !tbaa !76
  %23 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 1, i32 8
  %24 = load double, ptr %23, align 8, !tbaa !78
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
  %37 = load double, ptr %36, align 8, !tbaa !76
  %38 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 2, i32 8
  %39 = load double, ptr %38, align 8, !tbaa !78
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
  %53 = load double, ptr %52, align 8, !tbaa !76
  %54 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 4, i32 8
  %55 = load double, ptr %54, align 8, !tbaa !78
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
  %69 = load i32, ptr %68, align 8, !tbaa !31
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 8, i32 7
  %73 = load double, ptr %72, align 8, !tbaa !76
  %74 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 8, i32 8
  %75 = load double, ptr %74, align 8, !tbaa !78
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
  %89 = load i32, ptr %88, align 4, !tbaa !50
  %90 = icmp eq i32 %89, 12
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 32, i32 7
  %93 = load double, ptr %92, align 8, !tbaa !76
  %94 = getelementptr inbounds %struct._ChannelStatistics, ptr %13, i64 32, i32 8
  %95 = load double, ptr %94, align 8, !tbaa !78
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
  store double %107, ptr %16, align 8, !tbaa !76
  %108 = extractelement <2 x double> %104, i64 0
  %109 = fdiv double %108, %105
  %110 = tail call double @sqrt(double noundef %109) #21
  store double %110, ptr %17, align 8, !tbaa !79
  %111 = load double, ptr %16, align 8, !tbaa !76
  store double %111, ptr %2, align 8, !tbaa !40
  %112 = load double, ptr %17, align 8, !tbaa !79
  store double %112, ptr %3, align 8, !tbaa !40
  %113 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %13) #21
  br label %114

114:                                              ; preds = %12, %102
  %115 = phi i32 [ 1, %102 ], [ 0, %12 ]
  ret i32 %115
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetImageChannelStatistics(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2153, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #21
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call dereferenceable_or_null(4608) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 96) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %445, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 4608) #21
  br label %54

14:                                               ; preds = %54
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !25
  %18 = icmp sgt i64 %17, 0
  %19 = load i64, ptr %15, align 8, !tbaa !26
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
  store i64 1, ptr %56, align 8, !tbaa !80
  %57 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %55, i32 1
  store <2 x double> <double 0x7FEFFFFFFFFFFFFF, double 0xFFEFFFFFFFFFFFFF>, ptr %57, align 8, !tbaa !40
  %58 = add nuw nsw i64 %55, 1
  %59 = icmp eq i64 %58, 48
  br i1 %59, label %14, label %54, !llvm.loop !81

60:                                               ; preds = %20, %290
  %61 = phi i64 [ %19, %20 ], [ %70, %290 ]
  %62 = phi i64 [ 0, %20 ], [ %291, %290 ]
  %63 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %62, i64 noundef %61, i64 noundef 1, ptr noundef %1) #21
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i64, ptr %15, align 8, !tbaa !26
  %67 = load i64, ptr %16, align 8, !tbaa !25
  br label %294

68:                                               ; preds = %60
  %69 = tail call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #21
  %70 = load i64, ptr %15, align 8, !tbaa !26
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %290

72:                                               ; preds = %68
  %73 = icmp eq ptr %69, null
  %74 = load i64, ptr %21, align 8, !tbaa !80
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
  %89 = tail call fastcc i64 @GetQuantumRange(i64 noundef %86) #20
  %90 = load i16, ptr %80, align 2, !tbaa !28
  %91 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %90, i64 noundef %89) #20, !range !5
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = add i64 %86, 1
  store i64 %94, ptr %21, align 8, !tbaa !80
  br label %95

95:                                               ; preds = %93, %106, %116, %129, %145
  %96 = phi i64 [ %94, %93 ], [ %85, %106 ], [ %85, %116 ], [ %85, %129 ], [ %85, %145 ]
  %97 = phi i64 [ %94, %93 ], [ %86, %106 ], [ %86, %116 ], [ %86, %129 ], [ %86, %145 ]
  br i1 %77, label %84, label %290, !llvm.loop !82

98:                                               ; preds = %88, %84
  %99 = load i64, ptr %22, align 8, !tbaa !80
  %100 = icmp eq i64 %99, 16
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = tail call fastcc i64 @GetQuantumRange(i64 noundef %99) #20
  %103 = load i16, ptr %81, align 2, !tbaa !29
  %104 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %103, i64 noundef %102) #20, !range !5
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = add i64 %99, 1
  store i64 %107, ptr %22, align 8, !tbaa !80
  br label %95

108:                                              ; preds = %101, %98
  %109 = load i64, ptr %23, align 8, !tbaa !80
  %110 = icmp eq i64 %109, 16
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = tail call fastcc i64 @GetQuantumRange(i64 noundef %109) #20
  %113 = load i16, ptr %79, align 2, !tbaa !30
  %114 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %113, i64 noundef %112) #20, !range !5
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = add i64 %109, 1
  store i64 %117, ptr %23, align 8, !tbaa !80
  br label %95

118:                                              ; preds = %111, %108
  %119 = load i32, ptr %24, align 8, !tbaa !31
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = load i64, ptr %25, align 8, !tbaa !80
  %123 = icmp eq i64 %122, 16
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = tail call fastcc i64 @GetQuantumRange(i64 noundef %122) #20
  %126 = load i16, ptr %82, align 2, !tbaa !32
  %127 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %126, i64 noundef %125) #20, !range !5
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = add i64 %122, 1
  store i64 %130, ptr %25, align 8, !tbaa !80
  br label %95

131:                                              ; preds = %121, %124, %118
  %132 = load i32, ptr %26, align 4, !tbaa !50
  %133 = icmp eq i32 %132, 12
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load i64, ptr %27, align 8, !tbaa !80
  %136 = icmp eq i64 %135, 16
  br i1 %136, label %147, label %137

137:                                              ; preds = %134
  %138 = tail call fastcc i64 @GetQuantumRange(i64 noundef %135) #20
  br i1 %73, label %141, label %139

139:                                              ; preds = %137
  %140 = load i16, ptr %83, align 2, !tbaa !33
  br label %141

141:                                              ; preds = %137, %139
  %142 = phi i16 [ %140, %139 ], [ 0, %137 ]
  %143 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %142, i64 noundef %138) #20, !range !5
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = add i64 %135, 1
  store i64 %146, ptr %27, align 8, !tbaa !80
  br label %95

147:                                              ; preds = %134, %141, %131
  %148 = load i16, ptr %80, align 2, !tbaa !28
  %149 = uitofp i16 %148 to double
  %150 = load double, ptr %28, align 8, !tbaa !83
  %151 = fcmp ogt double %150, %149
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store double %149, ptr %28, align 8, !tbaa !83
  br label %153

153:                                              ; preds = %152, %147
  %154 = load double, ptr %29, align 8, !tbaa !84
  %155 = fcmp olt double %154, %149
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store double %149, ptr %29, align 8, !tbaa !84
  br label %157

157:                                              ; preds = %156, %153
  %158 = load double, ptr %30, align 8, !tbaa !85
  %159 = fadd double %158, %149
  store double %159, ptr %30, align 8, !tbaa !85
  %160 = fmul double %149, %149
  %161 = load <2 x double>, ptr %31, align 8, !tbaa !40
  %162 = insertelement <2 x double> poison, double %149, i64 0
  %163 = insertelement <2 x double> %162, double %160, i64 1
  %164 = shufflevector <2 x double> %162, <2 x double> poison, <2 x i32> zeroinitializer
  %165 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %163, <2 x double> %164, <2 x double> %161)
  store <2 x double> %165, ptr %31, align 8, !tbaa !40
  %166 = fmul double %160, %149
  %167 = load double, ptr %32, align 8, !tbaa !86
  %168 = tail call double @llvm.fmuladd.f64(double %166, double %149, double %167)
  store double %168, ptr %32, align 8, !tbaa !86
  %169 = load i16, ptr %81, align 2, !tbaa !29
  %170 = uitofp i16 %169 to double
  %171 = load double, ptr %33, align 8, !tbaa !83
  %172 = fcmp ogt double %171, %170
  br i1 %172, label %173, label %174

173:                                              ; preds = %157
  store double %170, ptr %33, align 8, !tbaa !83
  br label %174

174:                                              ; preds = %173, %157
  %175 = load double, ptr %34, align 8, !tbaa !84
  %176 = fcmp olt double %175, %170
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store double %170, ptr %34, align 8, !tbaa !84
  br label %178

178:                                              ; preds = %177, %174
  %179 = load double, ptr %35, align 8, !tbaa !85
  %180 = fadd double %179, %170
  store double %180, ptr %35, align 8, !tbaa !85
  %181 = fmul double %170, %170
  %182 = load <2 x double>, ptr %36, align 8, !tbaa !40
  %183 = insertelement <2 x double> poison, double %170, i64 0
  %184 = insertelement <2 x double> %183, double %181, i64 1
  %185 = shufflevector <2 x double> %183, <2 x double> poison, <2 x i32> zeroinitializer
  %186 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %184, <2 x double> %185, <2 x double> %182)
  store <2 x double> %186, ptr %36, align 8, !tbaa !40
  %187 = fmul double %181, %170
  %188 = load double, ptr %37, align 8, !tbaa !86
  %189 = tail call double @llvm.fmuladd.f64(double %187, double %170, double %188)
  store double %189, ptr %37, align 8, !tbaa !86
  %190 = load i16, ptr %79, align 2, !tbaa !30
  %191 = uitofp i16 %190 to double
  %192 = load double, ptr %38, align 8, !tbaa !83
  %193 = fcmp ogt double %192, %191
  br i1 %193, label %194, label %195

194:                                              ; preds = %178
  store double %191, ptr %38, align 8, !tbaa !83
  br label %195

195:                                              ; preds = %194, %178
  %196 = load double, ptr %39, align 8, !tbaa !84
  %197 = fcmp olt double %196, %191
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store double %191, ptr %39, align 8, !tbaa !84
  br label %199

199:                                              ; preds = %198, %195
  %200 = load double, ptr %40, align 8, !tbaa !85
  %201 = fadd double %200, %191
  store double %201, ptr %40, align 8, !tbaa !85
  %202 = fmul double %191, %191
  %203 = load <2 x double>, ptr %41, align 8, !tbaa !40
  %204 = insertelement <2 x double> poison, double %191, i64 0
  %205 = insertelement <2 x double> %204, double %202, i64 1
  %206 = shufflevector <2 x double> %204, <2 x double> poison, <2 x i32> zeroinitializer
  %207 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %205, <2 x double> %206, <2 x double> %203)
  store <2 x double> %207, ptr %41, align 8, !tbaa !40
  %208 = fmul double %202, %191
  %209 = load double, ptr %42, align 8, !tbaa !86
  %210 = tail call double @llvm.fmuladd.f64(double %208, double %191, double %209)
  store double %210, ptr %42, align 8, !tbaa !86
  br i1 %120, label %233, label %211

211:                                              ; preds = %199
  %212 = load i16, ptr %82, align 2, !tbaa !32
  %213 = uitofp i16 %212 to double
  %214 = load double, ptr %43, align 8, !tbaa !83
  %215 = fcmp ogt double %214, %213
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store double %213, ptr %43, align 8, !tbaa !83
  br label %217

217:                                              ; preds = %216, %211
  %218 = load double, ptr %44, align 8, !tbaa !84
  %219 = fcmp olt double %218, %213
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store double %213, ptr %44, align 8, !tbaa !84
  br label %221

221:                                              ; preds = %220, %217
  %222 = load double, ptr %45, align 8, !tbaa !85
  %223 = fadd double %222, %213
  store double %223, ptr %45, align 8, !tbaa !85
  %224 = fmul double %213, %213
  %225 = load <2 x double>, ptr %46, align 8, !tbaa !40
  %226 = insertelement <2 x double> poison, double %213, i64 0
  %227 = insertelement <2 x double> %226, double %224, i64 1
  %228 = shufflevector <2 x double> %226, <2 x double> poison, <2 x i32> zeroinitializer
  %229 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %227, <2 x double> %228, <2 x double> %225)
  store <2 x double> %229, ptr %46, align 8, !tbaa !40
  %230 = fmul double %224, %213
  %231 = load double, ptr %47, align 8, !tbaa !86
  %232 = tail call double @llvm.fmuladd.f64(double %230, double %213, double %231)
  store double %232, ptr %47, align 8, !tbaa !86
  br label %233

233:                                              ; preds = %221, %199
  br i1 %133, label %234, label %285

234:                                              ; preds = %233
  br i1 %73, label %235, label %239

235:                                              ; preds = %234
  %236 = load double, ptr %48, align 8, !tbaa !83
  %237 = fcmp ogt double %236, 0.000000e+00
  br i1 %237, label %238, label %248

238:                                              ; preds = %235
  store double 0.000000e+00, ptr %48, align 8, !tbaa !83
  br label %248

239:                                              ; preds = %234
  %240 = load i16, ptr %83, align 2, !tbaa !33
  %241 = uitofp i16 %240 to double
  %242 = load double, ptr %48, align 8, !tbaa !83
  %243 = fcmp ogt double %242, %241
  br i1 %243, label %244, label %252

244:                                              ; preds = %239
  %245 = uitofp i16 %240 to double
  store double %245, ptr %48, align 8, !tbaa !83
  %246 = load i16, ptr %83, align 2, !tbaa !33
  %247 = uitofp i16 %246 to double
  br label %252

248:                                              ; preds = %235, %238
  %249 = load double, ptr %49, align 8, !tbaa !84
  %250 = fcmp olt double %249, 0.000000e+00
  br i1 %250, label %251, label %261

251:                                              ; preds = %248
  store double 0.000000e+00, ptr %49, align 8, !tbaa !84
  br label %261

252:                                              ; preds = %244, %239
  %253 = phi double [ %247, %244 ], [ %241, %239 ]
  %254 = phi i16 [ %246, %244 ], [ %240, %239 ]
  %255 = load double, ptr %49, align 8, !tbaa !84
  %256 = fcmp olt double %255, %253
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = uitofp i16 %254 to double
  store double %258, ptr %49, align 8, !tbaa !84
  %259 = load i16, ptr %83, align 2, !tbaa !33
  %260 = uitofp i16 %259 to double
  br label %266

261:                                              ; preds = %248, %251
  %262 = load <2 x double>, ptr %50, align 8, !tbaa !40
  %263 = fadd <2 x double> %262, zeroinitializer
  store <2 x double> %263, ptr %50, align 8, !tbaa !40
  %264 = load double, ptr %52, align 8, !tbaa !87
  %265 = fadd double %264, 0.000000e+00
  store double %265, ptr %52, align 8, !tbaa !87
  br label %279

266:                                              ; preds = %257, %252
  %267 = phi double [ %260, %257 ], [ %253, %252 ]
  %268 = phi i16 [ %259, %257 ], [ %254, %252 ]
  %269 = load double, ptr %50, align 8, !tbaa !85
  %270 = fadd double %269, %267
  store double %270, ptr %50, align 8, !tbaa !85
  %271 = fmul double %267, %267
  %272 = load <2 x double>, ptr %51, align 8, !tbaa !40
  %273 = insertelement <2 x double> poison, double %267, i64 0
  %274 = insertelement <2 x double> %273, double %271, i64 1
  %275 = shufflevector <2 x double> %273, <2 x double> poison, <2 x i32> zeroinitializer
  %276 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %274, <2 x double> %275, <2 x double> %272)
  store <2 x double> %276, ptr %51, align 8, !tbaa !40
  %277 = fmul double %271, %267
  %278 = zext i16 %268 to i32
  br label %279

279:                                              ; preds = %261, %266
  %280 = phi double [ %277, %266 ], [ 0.000000e+00, %261 ]
  %281 = phi i32 [ %278, %266 ], [ 0, %261 ]
  %282 = sitofp i32 %281 to double
  %283 = load double, ptr %53, align 8, !tbaa !86
  %284 = tail call double @llvm.fmuladd.f64(double %280, double %282, double %283)
  store double %284, ptr %53, align 8, !tbaa !86
  br label %285

285:                                              ; preds = %279, %233
  %286 = add nuw nsw i64 %78, 1
  %287 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 1
  %288 = icmp slt i64 %286, %70
  %289 = icmp eq i64 %286, %70
  br i1 %289, label %290, label %75, !llvm.loop !82

290:                                              ; preds = %285, %95, %68
  %291 = add nuw nsw i64 %62, 1
  %292 = load i64, ptr %16, align 8, !tbaa !25
  %293 = icmp slt i64 %291, %292
  br i1 %293, label %60, label %294, !llvm.loop !88

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
  %312 = load i64, ptr %304, align 8, !tbaa !80
  %313 = load double, ptr %305, align 8, !tbaa !83
  %314 = load double, ptr %306, align 8, !tbaa !84
  %315 = load <2 x double>, ptr %307, align 8, !tbaa !40
  %316 = load <2 x double>, ptr %308, align 8, !tbaa !40
  %317 = load double, ptr %309, align 8, !tbaa !76
  %318 = load double, ptr %310, align 8, !tbaa !78
  %319 = load double, ptr %311, align 8, !tbaa !79
  br label %337

320:                                              ; preds = %294, %320
  %321 = phi i64 [ 0, %294 ], [ %335, %320 ]
  %322 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %321, i32 3
  %323 = load <2 x double>, ptr %322, align 8, !tbaa !40
  %324 = fdiv <2 x double> %323, %302
  store <2 x double> %324, ptr %322, align 8, !tbaa !40
  %325 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %321, i32 5
  %326 = load <2 x double>, ptr %325, align 8, !tbaa !40
  %327 = fdiv <2 x double> %326, %302
  store <2 x double> %327, ptr %325, align 8, !tbaa !40
  %328 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %321, i32 7
  store <2 x double> %324, ptr %328, align 8, !tbaa !40
  %329 = extractelement <2 x double> %324, i64 0
  %330 = fneg double %329
  %331 = extractelement <2 x double> %324, i64 1
  %332 = tail call double @llvm.fmuladd.f64(double %330, double %329, double %331)
  %333 = tail call double @sqrt(double noundef %332) #21
  %334 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %321, i32 9
  store double %333, ptr %334, align 8, !tbaa !79
  %335 = add nuw nsw i64 %321, 1
  %336 = icmp eq i64 %335, 47
  br i1 %336, label %303, label %320, !llvm.loop !89

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
  %349 = load i64, ptr %348, align 8, !tbaa !80
  %350 = uitofp i64 %349 to double
  %351 = tail call fastcc double @EvaluateMax(double noundef %347, double noundef %350) #20
  %352 = fptoui double %351 to i64
  store i64 %352, ptr %304, align 8, !tbaa !80
  %353 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 1
  %354 = load double, ptr %353, align 8, !tbaa !83
  %355 = tail call fastcc double @MagickMin(double noundef %340, double noundef %354) #20
  store double %355, ptr %305, align 8, !tbaa !83
  %356 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 2
  %357 = load double, ptr %356, align 8, !tbaa !84
  %358 = tail call fastcc double @EvaluateMax(double noundef %341, double noundef %357) #20
  store double %358, ptr %306, align 8, !tbaa !84
  %359 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 3
  %360 = load <2 x double>, ptr %359, align 8, !tbaa !40
  %361 = fadd <2 x double> %360, %345
  store <2 x double> %361, ptr %307, align 8, !tbaa !40
  %362 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 5
  %363 = load <2 x double>, ptr %362, align 8, !tbaa !40
  %364 = fadd <2 x double> %363, %346
  store <2 x double> %364, ptr %308, align 8, !tbaa !40
  %365 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 7
  %366 = load double, ptr %365, align 8, !tbaa !76
  %367 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %338, i32 8
  %368 = load double, ptr %367, align 8, !tbaa !78
  %369 = fadd double %366, %342
  store double %369, ptr %309, align 8, !tbaa !76
  %370 = load double, ptr %365, align 8, !tbaa !76
  %371 = fneg double %370
  %372 = tail call double @llvm.fmuladd.f64(double %371, double %370, double %368)
  %373 = fadd double %343, %372
  store double %373, ptr %310, align 8, !tbaa !78
  %374 = load double, ptr %367, align 8, !tbaa !78
  %375 = tail call double @llvm.fmuladd.f64(double %371, double %370, double %374)
  %376 = fadd double %344, %375
  %377 = add nuw nsw i64 %338, 1
  %378 = icmp eq i64 %377, 47
  br i1 %378, label %379, label %337, !llvm.loop !90

379:                                              ; preds = %337
  %380 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %381 = load i32, ptr %380, align 8, !tbaa !31
  %382 = icmp eq i32 %381, 0
  %383 = select i1 %382, i64 3, i64 4
  %384 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %385 = load i32, ptr %384, align 4, !tbaa !50
  %386 = icmp eq i32 %385, 12
  %387 = zext i1 %386 to i64
  %388 = add nuw nsw i64 %383, %387
  %389 = uitofp i64 %388 to double
  %390 = insertelement <2 x double> poison, double %389, i64 0
  %391 = shufflevector <2 x double> %390, <2 x double> poison, <2 x i32> zeroinitializer
  %392 = fdiv <2 x double> %361, %391
  store <2 x double> %392, ptr %307, align 8, !tbaa !40
  %393 = fdiv <2 x double> %364, %391
  store <2 x double> %393, ptr %308, align 8, !tbaa !40
  %394 = insertelement <2 x double> poison, double %369, i64 0
  %395 = insertelement <2 x double> %394, double %373, i64 1
  %396 = fdiv <2 x double> %395, %391
  store <2 x double> %396, ptr %309, align 8, !tbaa !40
  %397 = fdiv double %376, %389
  %398 = tail call double @sqrt(double noundef %397) #21
  store double %398, ptr %311, align 8, !tbaa !79
  %399 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 47, i32 10
  %400 = load <2 x double>, ptr %399, align 8, !tbaa !40
  %401 = fdiv <2 x double> %400, %391
  store <2 x double> %401, ptr %399, align 8, !tbaa !40
  br label %402

402:                                              ; preds = %379, %437
  %403 = phi i64 [ 0, %379 ], [ %438, %437 ]
  %404 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 9
  %405 = load double, ptr %404, align 8, !tbaa !79
  %406 = fcmp oeq double %405, 0.000000e+00
  br i1 %406, label %437, label %407

407:                                              ; preds = %402
  %408 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 5
  %409 = load double, ptr %408, align 8, !tbaa !87
  %410 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 7
  %411 = load double, ptr %410, align 8, !tbaa !76
  %412 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 4
  %413 = load double, ptr %412, align 8, !tbaa !91
  %414 = fmul double %411, -3.000000e+00
  %415 = tail call double @llvm.fmuladd.f64(double %414, double %413, double %409)
  %416 = fmul double %411, 2.000000e+00
  %417 = fmul double %411, %416
  %418 = tail call double @llvm.fmuladd.f64(double %417, double %411, double %415)
  %419 = fmul double %405, %405
  %420 = fmul double %405, %419
  %421 = fdiv double %418, %420
  %422 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 11
  store double %421, ptr %422, align 8, !tbaa !92
  %423 = getelementptr inbounds %struct._ChannelStatistics, ptr %10, i64 %403, i32 6
  %424 = load double, ptr %423, align 8, !tbaa !86
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
  store double %435, ptr %436, align 8, !tbaa !93
  br label %437

437:                                              ; preds = %402, %407
  %438 = add nuw nsw i64 %403, 1
  %439 = icmp eq i64 %438, 48
  br i1 %439, label %440, label %402, !llvm.loop !94

440:                                              ; preds = %437
  %441 = load i64, ptr %16, align 8, !tbaa !25
  %442 = icmp slt i64 %297, %441
  br i1 %442, label %443, label %445

443:                                              ; preds = %440
  %444 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %10) #21
  br label %445

445:                                              ; preds = %440, %443, %9
  %446 = phi ptr [ null, %9 ], [ %444, %443 ], [ %10, %440 ]
  ret ptr %446
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

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
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %15) #23
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1516, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #21
  br label %22

22:                                               ; preds = %19, %2
  %23 = tail call dereferenceable_or_null(14976) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 312) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %940, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %23, i32 noundef 0, i64 noundef 14976) #21
  %27 = call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 768) #21
  %28 = call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 384) #21
  %29 = call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 384) #21
  %30 = call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef 384) #21
  %31 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 384) #21
  %32 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 384) #21
  %33 = call ptr @ResetMagickMemory(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 384) #21
  %34 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 384) #21
  %35 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 384) #21
  %36 = call ptr @ResetMagickMemory(ptr noundef nonnull %11, i32 noundef 0, i64 noundef 384) #21
  %37 = call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 384) #21
  %38 = call ptr @ResetMagickMemory(ptr noundef nonnull %13, i32 noundef 0, i64 noundef 384) #21
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %14) #21
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !25
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
  %63 = load i64, ptr %39, align 8, !tbaa !26
  br label %64

64:                                               ; preds = %44, %147
  %65 = phi i64 [ %63, %44 ], [ %71, %147 ]
  %66 = phi i64 [ 0, %44 ], [ %148, %147 ]
  %67 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %66, i64 noundef %65, i64 noundef 1, ptr noundef %1) #21
  %68 = icmp eq ptr %67, null
  br i1 %68, label %43, label %69

69:                                               ; preds = %64
  %70 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #21
  %71 = load i64, ptr %39, align 8, !tbaa !26
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %147

73:                                               ; preds = %69
  %74 = sitofp i64 %66 to double
  %75 = fmul double %74, 0x3EF0001000100010
  %76 = load i32, ptr %53, align 8, !tbaa !31
  %77 = icmp eq i32 %76, 0
  %78 = load i32, ptr %58, align 4, !tbaa !50
  %79 = icmp eq i32 %78, 12
  %80 = load <2 x double>, ptr %46, align 8, !tbaa !40
  %81 = load <2 x double>, ptr %47, align 8, !tbaa !40
  %82 = load <2 x double>, ptr %48, align 8, !tbaa !40
  %83 = load double, ptr %50, align 16, !tbaa !40
  %84 = load double, ptr %51, align 16, !tbaa !40
  %85 = load double, ptr %52, align 16, !tbaa !40
  %86 = load double, ptr %55, align 16, !tbaa !40
  %87 = load double, ptr %56, align 16, !tbaa !40
  %88 = load double, ptr %57, align 16, !tbaa !40
  %89 = load double, ptr %60, align 16, !tbaa !40
  %90 = load double, ptr %61, align 16, !tbaa !40
  %91 = load double, ptr %62, align 16, !tbaa !40
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
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %105, ptr noundef %109, ptr noundef nonnull %14) #20
  %110 = sitofp i64 %104 to double
  %111 = fmul double %110, 0x3EF0001000100010
  %112 = load <2 x float>, ptr %45, align 8, !tbaa !42
  %113 = fpext <2 x float> %112 to <2 x double>
  %114 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %113, <2 x double> <double 0x3EF0001000100010, double 0x3EF0001000100010>, <2 x double> %106)
  store <2 x double> %114, ptr %46, align 8, !tbaa !40
  %115 = insertelement <2 x double> poison, double %111, i64 0
  %116 = shufflevector <2 x double> %115, <2 x double> poison, <2 x i32> zeroinitializer
  %117 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %116, <2 x double> %113, <2 x double> %107)
  store <2 x double> %117, ptr %47, align 8, !tbaa !40
  %118 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %93, <2 x double> %113, <2 x double> %108)
  store <2 x double> %118, ptr %48, align 8, !tbaa !40
  %119 = load float, ptr %49, align 8, !tbaa !48
  %120 = fpext float %119 to double
  %121 = call double @llvm.fmuladd.f64(double %120, double 0x3EF0001000100010, double %103)
  store double %121, ptr %50, align 16, !tbaa !40
  %122 = call double @llvm.fmuladd.f64(double %111, double %120, double %102)
  store double %122, ptr %51, align 16, !tbaa !40
  %123 = call double @llvm.fmuladd.f64(double %75, double %120, double %101)
  store double %123, ptr %52, align 16, !tbaa !40
  br i1 %77, label %130, label %124

124:                                              ; preds = %94
  %125 = load float, ptr %54, align 4, !tbaa !49
  %126 = fpext float %125 to double
  %127 = call double @llvm.fmuladd.f64(double %126, double 0x3EF0001000100010, double %100)
  store double %127, ptr %55, align 16, !tbaa !40
  %128 = call double @llvm.fmuladd.f64(double %111, double %126, double %99)
  store double %128, ptr %56, align 16, !tbaa !40
  %129 = call double @llvm.fmuladd.f64(double %75, double %126, double %98)
  store double %129, ptr %57, align 16, !tbaa !40
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
  store double %137, ptr %60, align 16, !tbaa !40
  %138 = call double @llvm.fmuladd.f64(double %111, double %136, double %96)
  store double %138, ptr %61, align 16, !tbaa !40
  %139 = call double @llvm.fmuladd.f64(double %75, double %136, double %95)
  store double %139, ptr %62, align 16, !tbaa !40
  br label %140

140:                                              ; preds = %134, %130
  %141 = phi double [ %139, %134 ], [ %95, %130 ]
  %142 = phi double [ %138, %134 ], [ %96, %130 ]
  %143 = phi double [ %137, %134 ], [ %97, %130 ]
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %105, i64 1
  %145 = add nuw nsw i64 %104, 1
  %146 = icmp eq i64 %145, %71
  br i1 %146, label %147, label %94, !llvm.loop !95

147:                                              ; preds = %140, %69
  %148 = add nuw nsw i64 %66, 1
  %149 = load i64, ptr %40, align 8, !tbaa !25
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %64, label %43, !llvm.loop !96

151:                                              ; preds = %223
  %152 = load i64, ptr %40, align 8, !tbaa !25
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
  %206 = load double, ptr %205, align 8, !tbaa !40
  %207 = fcmp olt double %206, 1.000000e-15
  %208 = fadd double %206, 1.000000e-15
  br i1 %207, label %209, label %213

209:                                              ; preds = %203
  %210 = load <2 x i64>, ptr %39, align 8, !tbaa !41
  %211 = uitofp <2 x i64> %210 to <2 x double>
  %212 = fmul <2 x double> %211, <double 5.000000e-01, double 5.000000e-01>
  br label %223

213:                                              ; preds = %203
  %214 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 %204
  %215 = load double, ptr %214, align 8, !tbaa !40
  %216 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 %204
  %217 = load double, ptr %216, align 8, !tbaa !40
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
  br i1 %227, label %151, label %203, !llvm.loop !97

228:                                              ; preds = %154, %491
  %229 = phi i64 [ 0, %154 ], [ %492, %491 ]
  %230 = load i64, ptr %39, align 8, !tbaa !26
  %231 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %229, i64 noundef %230, i64 noundef 1, ptr noundef %1) #21
  %232 = icmp eq ptr %231, null
  br i1 %232, label %495, label %233

233:                                              ; preds = %228
  %234 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #21
  %235 = load i64, ptr %39, align 8, !tbaa !26
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %491

237:                                              ; preds = %233
  %238 = load <2 x double>, ptr %155, align 16
  %239 = sitofp i64 %229 to double
  %240 = load <2 x double>, ptr %156, align 8
  %241 = load double, ptr %166, align 16, !tbaa !98
  %242 = load double, ptr %167, align 8, !tbaa !100
  %243 = load double, ptr %168, align 16, !tbaa !98
  %244 = load double, ptr %169, align 8, !tbaa !100
  %245 = fsub double %239, %244
  %246 = fmul double %245, %245
  %247 = fmul double %245, %246
  %248 = insertelement <2 x double> poison, double %247, i64 0
  %249 = insertelement <2 x double> %248, double %246, i64 1
  %250 = fmul <2 x double> %249, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %251 = load i32, ptr %179, align 8, !tbaa !31
  %252 = icmp eq i32 %251, 0
  %253 = load double, ptr %180, align 16
  %254 = load double, ptr %181, align 8
  %255 = fsub double %239, %254
  %256 = fmul double %255, %255
  %257 = fmul double %255, %256
  %258 = insertelement <2 x double> poison, double %257, i64 0
  %259 = insertelement <2 x double> %258, double %256, i64 1
  %260 = fmul <2 x double> %259, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %261 = load i32, ptr %191, align 4, !tbaa !50
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
  %275 = load <2 x double>, ptr %158, align 8, !tbaa !40
  %276 = load <2 x double>, ptr %159, align 8, !tbaa !40
  %277 = fmul <2 x double> %274, %274
  %278 = fmul <2 x double> %277, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %279 = load <2 x double>, ptr %160, align 8, !tbaa !40
  %280 = load <2 x double>, ptr %161, align 8, !tbaa !40
  %281 = load <2 x double>, ptr %162, align 8, !tbaa !40
  %282 = load <2 x double>, ptr %163, align 8, !tbaa !40
  %283 = load <2 x double>, ptr %164, align 8, !tbaa !40
  %284 = fmul <2 x double> %274, %277
  %285 = fmul <2 x double> %284, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %286 = load <2 x double>, ptr %165, align 8, !tbaa !40
  %287 = load double, ptr %171, align 16, !tbaa !40
  %288 = load double, ptr %172, align 16, !tbaa !40
  %289 = load double, ptr %173, align 16, !tbaa !40
  %290 = load double, ptr %174, align 16, !tbaa !40
  %291 = load double, ptr %175, align 16, !tbaa !40
  %292 = load double, ptr %176, align 16, !tbaa !40
  %293 = load double, ptr %177, align 16, !tbaa !40
  %294 = load <2 x double>, ptr %178, align 16
  %295 = shufflevector <2 x double> %294, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %296 = load double, ptr %183, align 16, !tbaa !40
  %297 = load double, ptr %184, align 16, !tbaa !40
  %298 = load double, ptr %185, align 16, !tbaa !40
  %299 = load double, ptr %186, align 16, !tbaa !40
  %300 = load double, ptr %187, align 16, !tbaa !40
  %301 = load double, ptr %188, align 16, !tbaa !40
  %302 = load double, ptr %189, align 16, !tbaa !40
  %303 = load <2 x double>, ptr %190, align 16
  %304 = shufflevector <2 x double> %303, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %305 = load double, ptr %195, align 16, !tbaa !40
  %306 = load double, ptr %196, align 16, !tbaa !40
  %307 = load double, ptr %197, align 16, !tbaa !40
  %308 = load double, ptr %198, align 16, !tbaa !40
  %309 = load double, ptr %199, align 16, !tbaa !40
  %310 = load double, ptr %200, align 16, !tbaa !40
  %311 = load double, ptr %201, align 16, !tbaa !40
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
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %347, ptr noundef %359, ptr noundef nonnull %14) #20
  %360 = sitofp i64 %346 to double
  %361 = insertelement <2 x double> poison, double %360, i64 0
  %362 = shufflevector <2 x double> %361, <2 x double> poison, <2 x i32> zeroinitializer
  %363 = fsub <2 x double> %362, %341
  %364 = load <2 x float>, ptr %157, align 8, !tbaa !42
  %365 = fpext <2 x float> %364 to <2 x double>
  %366 = fmul <2 x double> %363, %274
  %367 = fmul <2 x double> %366, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %368 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %367, <2 x double> %365, <2 x double> %350)
  store <2 x double> %368, ptr %158, align 8, !tbaa !40
  %369 = fmul <2 x double> %363, %363
  %370 = fmul <2 x double> %369, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %371 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %370, <2 x double> %365, <2 x double> %351)
  store <2 x double> %371, ptr %159, align 8, !tbaa !40
  %372 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %278, <2 x double> %365, <2 x double> %352)
  store <2 x double> %372, ptr %160, align 8, !tbaa !40
  %373 = fmul <2 x double> %369, %274
  %374 = fmul <2 x double> %373, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %375 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %374, <2 x double> %365, <2 x double> %353)
  store <2 x double> %375, ptr %161, align 8, !tbaa !40
  %376 = fmul <2 x double> %274, %366
  %377 = fmul <2 x double> %376, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %378 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %377, <2 x double> %365, <2 x double> %354)
  store <2 x double> %378, ptr %162, align 8, !tbaa !40
  %379 = fmul <2 x double> %274, %373
  %380 = fmul <2 x double> %379, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %381 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %380, <2 x double> %365, <2 x double> %355)
  store <2 x double> %381, ptr %163, align 8, !tbaa !40
  %382 = fmul <2 x double> %363, %369
  %383 = fmul <2 x double> %382, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %384 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %383, <2 x double> %365, <2 x double> %356)
  store <2 x double> %384, ptr %164, align 8, !tbaa !40
  %385 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %285, <2 x double> %365, <2 x double> %357)
  store <2 x double> %385, ptr %165, align 8, !tbaa !40
  %386 = fsub double %360, %243
  %387 = load float, ptr %170, align 8, !tbaa !48
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
  store double %410, ptr %171, align 16, !tbaa !40
  %411 = extractelement <8 x double> %409, i64 6
  store double %411, ptr %172, align 16, !tbaa !40
  %412 = extractelement <8 x double> %409, i64 5
  store double %412, ptr %173, align 16, !tbaa !40
  %413 = extractelement <8 x double> %409, i64 4
  store double %413, ptr %174, align 16, !tbaa !40
  %414 = extractelement <8 x double> %409, i64 3
  store double %414, ptr %175, align 16, !tbaa !40
  %415 = extractelement <8 x double> %409, i64 2
  store double %415, ptr %176, align 16, !tbaa !40
  %416 = extractelement <8 x double> %409, i64 1
  store double %416, ptr %177, align 16, !tbaa !40
  %417 = extractelement <8 x double> %409, i64 0
  store double %417, ptr %178, align 16, !tbaa !40
  br i1 %252, label %451, label %418

418:                                              ; preds = %345
  %419 = fsub double %360, %253
  %420 = load float, ptr %182, align 4, !tbaa !49
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
  store double %443, ptr %183, align 16, !tbaa !40
  %444 = extractelement <8 x double> %442, i64 6
  store double %444, ptr %184, align 16, !tbaa !40
  %445 = extractelement <8 x double> %442, i64 5
  store double %445, ptr %185, align 16, !tbaa !40
  %446 = extractelement <8 x double> %442, i64 4
  store double %446, ptr %186, align 16, !tbaa !40
  %447 = extractelement <8 x double> %442, i64 3
  store double %447, ptr %187, align 16, !tbaa !40
  %448 = extractelement <8 x double> %442, i64 2
  store double %448, ptr %188, align 16, !tbaa !40
  %449 = extractelement <8 x double> %442, i64 1
  store double %449, ptr %189, align 16, !tbaa !40
  %450 = extractelement <8 x double> %442, i64 0
  store double %450, ptr %190, align 16, !tbaa !40
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
  store double %478, ptr %195, align 16, !tbaa !40
  %479 = extractelement <8 x double> %477, i64 6
  store double %479, ptr %196, align 16, !tbaa !40
  %480 = extractelement <8 x double> %477, i64 5
  store double %480, ptr %197, align 16, !tbaa !40
  %481 = extractelement <8 x double> %477, i64 4
  store double %481, ptr %198, align 16, !tbaa !40
  %482 = extractelement <8 x double> %477, i64 3
  store double %482, ptr %199, align 16, !tbaa !40
  %483 = extractelement <8 x double> %477, i64 2
  store double %483, ptr %200, align 16, !tbaa !40
  %484 = extractelement <8 x double> %477, i64 1
  store double %484, ptr %201, align 16, !tbaa !40
  %485 = extractelement <8 x double> %477, i64 0
  store double %485, ptr %202, align 16, !tbaa !40
  br label %486

486:                                              ; preds = %453, %451
  %487 = phi <8 x double> [ %477, %453 ], [ %348, %451 ]
  %488 = getelementptr inbounds %struct._PixelPacket, ptr %347, i64 1
  %489 = add nuw nsw i64 %346, 1
  %490 = icmp eq i64 %489, %235
  br i1 %490, label %491, label %345, !llvm.loop !101

491:                                              ; preds = %486, %233
  %492 = add nuw nsw i64 %229, 1
  %493 = load i64, ptr %40, align 8, !tbaa !25
  %494 = icmp slt i64 %492, %493
  br i1 %494, label %228, label %495, !llvm.loop !102

495:                                              ; preds = %491, %228, %151
  %496 = phi i64 [ 0, %151 ], [ %229, %228 ], [ %492, %491 ]
  %497 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 1
  %498 = load double, ptr %497, align 8, !tbaa !40
  %499 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 2
  %500 = load double, ptr %499, align 16, !tbaa !40
  %501 = fadd double %498, %500
  %502 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 4
  %503 = load double, ptr %502, align 16, !tbaa !40
  %504 = fadd double %501, %503
  %505 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 47
  %506 = load double, ptr %505, align 8, !tbaa !40
  %507 = fadd double %506, %504
  store double %507, ptr %505, align 8, !tbaa !40
  %508 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 1
  %509 = load double, ptr %508, align 8, !tbaa !40
  %510 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 2
  %511 = load double, ptr %510, align 16, !tbaa !40
  %512 = fadd double %509, %511
  %513 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 4
  %514 = load double, ptr %513, align 16, !tbaa !40
  %515 = fadd double %512, %514
  %516 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 47
  %517 = load double, ptr %516, align 8, !tbaa !40
  %518 = fadd double %517, %515
  store double %518, ptr %516, align 8, !tbaa !40
  %519 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 1
  %520 = load double, ptr %519, align 8, !tbaa !40
  %521 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 2
  %522 = load double, ptr %521, align 16, !tbaa !40
  %523 = fadd double %520, %522
  %524 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 4
  %525 = load double, ptr %524, align 16, !tbaa !40
  %526 = fadd double %523, %525
  %527 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 47
  %528 = load double, ptr %527, align 8, !tbaa !40
  %529 = fadd double %528, %526
  store double %529, ptr %527, align 8, !tbaa !40
  %530 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 1
  %531 = load double, ptr %530, align 8, !tbaa !40
  %532 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 2
  %533 = load double, ptr %532, align 16, !tbaa !40
  %534 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 4
  %535 = load double, ptr %534, align 16, !tbaa !40
  %536 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 47
  %537 = load double, ptr %536, align 8, !tbaa !40
  %538 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 1
  %539 = load double, ptr %538, align 8, !tbaa !40
  %540 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 2
  %541 = load double, ptr %540, align 16, !tbaa !40
  %542 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 4
  %543 = load double, ptr %542, align 16, !tbaa !40
  %544 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 47
  %545 = load double, ptr %544, align 8, !tbaa !40
  %546 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 1
  %547 = load double, ptr %546, align 8, !tbaa !40
  %548 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 2
  %549 = load double, ptr %548, align 16, !tbaa !40
  %550 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 4
  %551 = load double, ptr %550, align 16, !tbaa !40
  %552 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 47
  %553 = load double, ptr %552, align 8, !tbaa !40
  %554 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 1
  %555 = load double, ptr %554, align 8, !tbaa !40
  %556 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 2
  %557 = load double, ptr %556, align 16, !tbaa !40
  %558 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 4
  %559 = load double, ptr %558, align 16, !tbaa !40
  %560 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 47
  %561 = load double, ptr %560, align 8, !tbaa !40
  %562 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 1
  %563 = load double, ptr %562, align 8, !tbaa !40
  %564 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 2
  %565 = load double, ptr %564, align 16, !tbaa !40
  %566 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 4
  %567 = load double, ptr %566, align 16, !tbaa !40
  %568 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 47
  %569 = load double, ptr %568, align 8, !tbaa !40
  %570 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 1
  %571 = load double, ptr %570, align 8, !tbaa !40
  %572 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 2
  %573 = load double, ptr %572, align 16, !tbaa !40
  %574 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 4
  %575 = load double, ptr %574, align 16, !tbaa !40
  %576 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 47
  %577 = load double, ptr %576, align 8, !tbaa !40
  %578 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 1
  %579 = load double, ptr %578, align 8, !tbaa !40
  %580 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 2
  %581 = load double, ptr %580, align 16, !tbaa !40
  %582 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 4
  %583 = load double, ptr %582, align 16, !tbaa !40
  %584 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 47
  %585 = load double, ptr %584, align 8, !tbaa !40
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
  %596 = load double, ptr %595, align 8, !tbaa !40
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
  store double %629, ptr %536, align 8, !tbaa !40
  %630 = extractelement <8 x double> %628, i64 6
  store double %630, ptr %544, align 8, !tbaa !40
  %631 = extractelement <8 x double> %628, i64 5
  store double %631, ptr %552, align 8, !tbaa !40
  %632 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %633 = load i32, ptr %632, align 8, !tbaa !31
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %639

635:                                              ; preds = %495
  %636 = load double, ptr %505, align 8, !tbaa !40
  %637 = load double, ptr %516, align 8, !tbaa !40
  %638 = load double, ptr %527, align 8, !tbaa !40
  br label %674

639:                                              ; preds = %495
  %640 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 8
  %641 = load double, ptr %640, align 16, !tbaa !40
  %642 = fadd double %507, %641
  store double %642, ptr %505, align 8, !tbaa !40
  %643 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 8
  %644 = load double, ptr %643, align 16, !tbaa !40
  %645 = fadd double %518, %644
  store double %645, ptr %516, align 8, !tbaa !40
  %646 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 8
  %647 = load double, ptr %646, align 16, !tbaa !40
  %648 = fadd double %529, %647
  store double %648, ptr %527, align 8, !tbaa !40
  %649 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 8
  %650 = load double, ptr %649, align 16, !tbaa !40
  %651 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 8
  %652 = load double, ptr %651, align 16, !tbaa !40
  %653 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 8
  %654 = load double, ptr %653, align 16, !tbaa !40
  %655 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 8
  %656 = load double, ptr %655, align 16, !tbaa !40
  %657 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 8
  %658 = load double, ptr %657, align 16, !tbaa !40
  %659 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 8
  %660 = load double, ptr %659, align 16, !tbaa !40
  %661 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 8
  %662 = load double, ptr %661, align 16, !tbaa !40
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
  %681 = load i32, ptr %680, align 4, !tbaa !50
  %682 = icmp eq i32 %681, 12
  br i1 %682, label %683, label %719

683:                                              ; preds = %674
  %684 = add nuw nsw i64 %678, 1
  %685 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 32
  %686 = load double, ptr %685, align 16, !tbaa !40
  %687 = fadd double %686, %677
  %688 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 32
  %689 = load double, ptr %688, align 16, !tbaa !40
  %690 = fadd double %689, %676
  %691 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 32
  %692 = load double, ptr %691, align 16, !tbaa !40
  %693 = fadd double %692, %675
  %694 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 32
  %695 = load double, ptr %694, align 16, !tbaa !40
  %696 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 32
  %697 = load double, ptr %696, align 16, !tbaa !40
  %698 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 32
  %699 = load double, ptr %698, align 16, !tbaa !40
  %700 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 32
  %701 = load double, ptr %700, align 16, !tbaa !40
  %702 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 32
  %703 = load double, ptr %702, align 16, !tbaa !40
  %704 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 32
  %705 = load double, ptr %704, align 16, !tbaa !40
  %706 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 32
  %707 = load double, ptr %706, align 16, !tbaa !40
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
  store double %726, ptr %505, align 8, !tbaa !40
  %727 = fdiv double %721, %725
  store double %727, ptr %516, align 8, !tbaa !40
  %728 = fdiv double %720, %725
  store double %728, ptr %527, align 8, !tbaa !40
  %729 = extractelement <8 x double> %724, i64 7
  %730 = fdiv double %729, %725
  store double %730, ptr %536, align 8, !tbaa !40
  %731 = extractelement <8 x double> %724, i64 6
  %732 = fdiv double %731, %725
  store double %732, ptr %544, align 8, !tbaa !40
  %733 = extractelement <8 x double> %724, i64 5
  %734 = fdiv double %733, %725
  store double %734, ptr %552, align 8, !tbaa !40
  %735 = extractelement <8 x double> %724, i64 4
  %736 = fdiv double %735, %725
  store double %736, ptr %560, align 8, !tbaa !40
  %737 = extractelement <8 x double> %724, i64 3
  %738 = fdiv double %737, %725
  store double %738, ptr %568, align 8, !tbaa !40
  %739 = extractelement <8 x double> %724, i64 2
  %740 = fdiv double %739, %725
  store double %740, ptr %576, align 8, !tbaa !40
  %741 = extractelement <8 x double> %724, i64 1
  %742 = fdiv double %741, %725
  store double %742, ptr %584, align 8, !tbaa !40
  %743 = extractelement <8 x double> %724, i64 0
  %744 = fdiv double %743, %725
  store double %744, ptr %595, align 8, !tbaa !40
  br label %745

745:                                              ; preds = %719, %745
  %746 = phi i64 [ 0, %719 ], [ %810, %745 ]
  %747 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 1
  %748 = getelementptr inbounds [48 x %struct._PointInfo], ptr %15, i64 0, i64 %746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %747, ptr noundef nonnull align 16 dereferenceable(16) %748, i64 16, i1 false), !tbaa.struct !103
  %749 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 %746
  %750 = load double, ptr %749, align 8, !tbaa !40
  %751 = fdiv double 2.000000e+00, %750
  %752 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 %746
  %753 = load double, ptr %752, align 8, !tbaa !40
  %754 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 %746
  %755 = load double, ptr %754, align 8, !tbaa !40
  %756 = fadd double %753, %755
  %757 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 %746
  %758 = load double, ptr %757, align 8, !tbaa !40
  %759 = fmul double %758, 4.000000e+00
  %760 = fsub double %753, %755
  %761 = fmul double %760, %760
  %762 = call double @llvm.fmuladd.f64(double %759, double %758, double %761)
  %763 = call double @sqrt(double noundef %762) #21
  %764 = fadd double %756, %763
  %765 = fmul double %751, %764
  %766 = call double @sqrt(double noundef %765) #21
  %767 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 2
  store double %766, ptr %767, align 8, !tbaa !104
  %768 = load double, ptr %749, align 8, !tbaa !40
  %769 = fdiv double 2.000000e+00, %768
  %770 = load double, ptr %752, align 8, !tbaa !40
  %771 = load double, ptr %754, align 8, !tbaa !40
  %772 = fadd double %770, %771
  %773 = load double, ptr %757, align 8, !tbaa !40
  %774 = fmul double %773, 4.000000e+00
  %775 = fsub double %770, %771
  %776 = fmul double %775, %775
  %777 = call double @llvm.fmuladd.f64(double %774, double %773, double %776)
  %778 = call double @sqrt(double noundef %777) #21
  %779 = fsub double %772, %778
  %780 = fmul double %769, %779
  %781 = call double @sqrt(double noundef %780) #21
  %782 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 2, i32 1
  store double %781, ptr %782, align 8, !tbaa !106
  %783 = load double, ptr %757, align 8, !tbaa !40
  %784 = fmul double %783, 2.000000e+00
  %785 = load double, ptr %752, align 8, !tbaa !40
  %786 = load double, ptr %754, align 8, !tbaa !40
  %787 = fsub double %785, %786
  %788 = fadd double %787, 1.000000e-15
  %789 = fdiv double %784, %788
  %790 = call double @atan(double noundef %789) #21
  %791 = fmul double %790, 5.000000e-01
  %792 = fptrunc double %791 to float
  %793 = call fastcc float @RadiansToDegrees(float noundef %792) #20
  %794 = fpext float %793 to double
  %795 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 3
  store double %794, ptr %795, align 8, !tbaa !107
  %796 = load double, ptr %782, align 8, !tbaa !106
  %797 = load double, ptr %767, align 8, !tbaa !104
  %798 = fadd double %797, 1.000000e-15
  %799 = fdiv double %796, %798
  %800 = fsub double 1.000000e+00, %799
  %801 = call double @sqrt(double noundef %800) #21
  %802 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 4
  store double %801, ptr %802, align 8, !tbaa !108
  %803 = load double, ptr %749, align 8, !tbaa !40
  %804 = load double, ptr %767, align 8, !tbaa !104
  %805 = fmul double %804, 0x400921FB54442D18
  %806 = load double, ptr %782, align 8, !tbaa !106
  %807 = call double @llvm.fmuladd.f64(double %805, double %806, double 1.000000e-15)
  %808 = fdiv double %803, %807
  %809 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %746, i32 5
  store double %808, ptr %809, align 8, !tbaa !109
  %810 = add nuw nsw i64 %746, 1
  %811 = icmp eq i64 %810, 48
  br i1 %811, label %812, label %745, !llvm.loop !110

812:                                              ; preds = %745, %812
  %813 = phi i64 [ %852, %812 ], [ 0, %745 ]
  %814 = getelementptr inbounds [48 x double], ptr %7, i64 0, i64 %813
  store double 0.000000e+00, ptr %814, align 8, !tbaa !40
  %815 = getelementptr inbounds [48 x double], ptr %4, i64 0, i64 %813
  store double 0.000000e+00, ptr %815, align 8, !tbaa !40
  %816 = getelementptr inbounds [48 x double], ptr %3, i64 0, i64 %813
  %817 = load double, ptr %816, align 8, !tbaa !40
  %818 = fmul double %817, %817
  %819 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 %813
  %820 = load double, ptr %819, align 8, !tbaa !40
  %821 = fdiv double %820, %818
  store double %821, ptr %819, align 8, !tbaa !40
  %822 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 %813
  %823 = load double, ptr %822, align 8, !tbaa !40
  %824 = fdiv double %823, %818
  store double %824, ptr %822, align 8, !tbaa !40
  %825 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 %813
  %826 = load double, ptr %825, align 8, !tbaa !40
  %827 = fdiv double %826, %818
  store double %827, ptr %825, align 8, !tbaa !40
  %828 = call double @pow(double noundef %817, double noundef 2.500000e+00) #21
  %829 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 %813
  %830 = load double, ptr %829, align 8, !tbaa !40
  %831 = fdiv double %830, %828
  store double %831, ptr %829, align 8, !tbaa !40
  %832 = load double, ptr %816, align 8, !tbaa !40
  %833 = call double @pow(double noundef %832, double noundef 2.500000e+00) #21
  %834 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 %813
  %835 = load double, ptr %834, align 8, !tbaa !40
  %836 = fdiv double %835, %833
  store double %836, ptr %834, align 8, !tbaa !40
  %837 = load double, ptr %816, align 8, !tbaa !40
  %838 = call double @pow(double noundef %837, double noundef 3.000000e+00) #21
  %839 = getelementptr inbounds [48 x double], ptr %12, i64 0, i64 %813
  %840 = load double, ptr %839, align 8, !tbaa !40
  %841 = fdiv double %840, %838
  store double %841, ptr %839, align 8, !tbaa !40
  %842 = load double, ptr %816, align 8, !tbaa !40
  %843 = call double @pow(double noundef %842, double noundef 2.500000e+00) #21
  %844 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 %813
  %845 = load double, ptr %844, align 8, !tbaa !40
  %846 = fdiv double %845, %843
  store double %846, ptr %844, align 8, !tbaa !40
  %847 = load double, ptr %816, align 8, !tbaa !40
  %848 = call double @pow(double noundef %847, double noundef 2.500000e+00) #21
  %849 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %813
  %850 = load double, ptr %849, align 8, !tbaa !40
  %851 = fdiv double %850, %848
  store double %851, ptr %849, align 8, !tbaa !40
  store double 1.000000e+00, ptr %816, align 8, !tbaa !40
  %852 = add nuw nsw i64 %813, 1
  %853 = icmp eq i64 %852, 48
  br i1 %853, label %854, label %812, !llvm.loop !111

854:                                              ; preds = %812, %854
  %855 = phi i64 [ %933, %854 ], [ 0, %812 ]
  %856 = or disjoint i64 %855, 1
  %857 = getelementptr inbounds [48 x double], ptr %10, i64 0, i64 %855
  %858 = load <2 x double>, ptr %857, align 16, !tbaa !40
  %859 = getelementptr inbounds [48 x double], ptr %5, i64 0, i64 %855
  %860 = load <2 x double>, ptr %859, align 16, !tbaa !40
  %861 = fadd <2 x double> %858, %860
  %862 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %855
  %863 = getelementptr inbounds %struct._ChannelMoments, ptr %23, i64 %856
  %864 = extractelement <2 x double> %861, i64 0
  store double %864, ptr %862, align 8, !tbaa !40
  %865 = fsub <2 x double> %858, %860
  %866 = getelementptr inbounds [48 x double], ptr %8, i64 0, i64 %855
  %867 = load <2 x double>, ptr %866, align 16, !tbaa !40
  %868 = fmul <2 x double> %867, <double 4.000000e+00, double 4.000000e+00>
  %869 = fmul <2 x double> %867, %868
  %870 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %865, <2 x double> %865, <2 x double> %869)
  %871 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 1
  %872 = extractelement <2 x double> %870, i64 0
  store double %872, ptr %871, align 8, !tbaa !40
  %873 = shufflevector <2 x double> %861, <2 x double> %870, <2 x i32> <i32 1, i32 3>
  store <2 x double> %873, ptr %863, align 8, !tbaa !40
  %874 = getelementptr inbounds [48 x double], ptr %13, i64 0, i64 %855
  %875 = load <2 x double>, ptr %874, align 16, !tbaa !40
  %876 = getelementptr inbounds [48 x double], ptr %9, i64 0, i64 %855
  %877 = load <2 x double>, ptr %876, align 16, !tbaa !40
  %878 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %877, <2 x double> <double -3.000000e+00, double -3.000000e+00>, <2 x double> %875)
  %879 = getelementptr inbounds [48 x double], ptr %11, i64 0, i64 %855
  %880 = load <2 x double>, ptr %879, align 16, !tbaa !40
  %881 = getelementptr inbounds [48 x double], ptr %6, i64 0, i64 %855
  %882 = load <2 x double>, ptr %881, align 16, !tbaa !40
  %883 = fneg <2 x double> %882
  %884 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %880, <2 x double> <double 3.000000e+00, double 3.000000e+00>, <2 x double> %883)
  %885 = fmul <2 x double> %884, %884
  %886 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %878, <2 x double> %878, <2 x double> %885)
  %887 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 2
  %888 = getelementptr inbounds [32 x double], ptr %863, i64 0, i64 2
  %889 = extractelement <2 x double> %886, i64 0
  store double %889, ptr %887, align 8, !tbaa !40
  %890 = fadd <2 x double> %875, %877
  %891 = fadd <2 x double> %880, %882
  %892 = fmul <2 x double> %891, %891
  %893 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %890, <2 x double> %890, <2 x double> %892)
  %894 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 3
  %895 = extractelement <2 x double> %893, i64 0
  store double %895, ptr %894, align 8, !tbaa !40
  %896 = shufflevector <2 x double> %886, <2 x double> %893, <2 x i32> <i32 1, i32 3>
  store <2 x double> %896, ptr %888, align 8, !tbaa !40
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
  store double %910, ptr %908, align 8, !tbaa !40
  %911 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %890, <2 x double> %890, <2 x double> %904)
  %912 = fmul <2 x double> %868, %890
  %913 = fmul <2 x double> %912, %891
  %914 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %865, <2 x double> %911, <2 x double> %913)
  %915 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 5
  %916 = extractelement <2 x double> %914, i64 0
  store double %916, ptr %915, align 8, !tbaa !40
  %917 = shufflevector <2 x double> %907, <2 x double> %914, <2 x i32> <i32 1, i32 3>
  store <2 x double> %917, ptr %909, align 8, !tbaa !40
  %918 = fmul <2 x double> %890, %884
  %919 = fneg <2 x double> %878
  %920 = fmul <2 x double> %891, %919
  %921 = fmul <2 x double> %920, %905
  %922 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %918, <2 x double> %900, <2 x double> %921)
  %923 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 6
  %924 = getelementptr inbounds [32 x double], ptr %863, i64 0, i64 6
  %925 = extractelement <2 x double> %922, i64 0
  store double %925, ptr %923, align 8, !tbaa !40
  %926 = fneg <2 x double> %865
  %927 = fmul <2 x double> %890, %926
  %928 = fmul <2 x double> %927, %891
  %929 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %867, <2 x double> %911, <2 x double> %928)
  %930 = getelementptr inbounds [32 x double], ptr %862, i64 0, i64 7
  %931 = extractelement <2 x double> %929, i64 0
  store double %931, ptr %930, align 8, !tbaa !40
  %932 = shufflevector <2 x double> %922, <2 x double> %929, <2 x i32> <i32 1, i32 3>
  store <2 x double> %932, ptr %924, align 8, !tbaa !40
  %933 = add nuw i64 %855, 2
  %934 = icmp eq i64 %933, 48
  br i1 %934, label %935, label %854, !llvm.loop !112

935:                                              ; preds = %854
  %936 = load i64, ptr %40, align 8, !tbaa !25
  %937 = icmp slt i64 %496, %936
  br i1 %937, label %938, label %940

938:                                              ; preds = %935
  %939 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %23) #21
  br label %940

940:                                              ; preds = %935, %938, %22
  %941 = phi ptr [ null, %22 ], [ %939, %938 ], [ %23, %935 ]
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %3) #23
  ret ptr %941
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !33
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !33
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !51
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @RadiansToDegrees(float noundef %0) unnamed_addr #7 {
  %2 = fpext float %0 to double
  %3 = fmul double %2, 1.800000e+02
  %4 = fdiv double %3, 0x400921FB54442D18
  %5 = fptrunc double %4 to float
  ret float %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @GetImageChannelPerceptualHash(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BlurImage(ptr noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._Image, ptr %3, i64 0, i32 9
  store i64 8, ptr %6, align 8, !tbaa !115
  %7 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %3, i32 noundef 13) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %63, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @GetImageChannelMoments(ptr noundef nonnull %3, ptr noundef %1) #20
  %11 = tail call ptr @DestroyImage(ptr noundef nonnull %3) #21
  %12 = icmp eq ptr %10, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %9
  %14 = tail call dereferenceable_or_null(24576) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 512) #24
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
  %23 = load double, ptr %22, align 8, !tbaa !40
  %24 = tail call fastcc double @MagickLog10(double noundef %23) #20
  %25 = fneg double %24
  %26 = getelementptr inbounds [32 x double], ptr %19, i64 0, i64 %21
  store double %25, ptr %26, align 8, !tbaa !40
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, 7
  br i1 %28, label %29, label %20, !llvm.loop !116

29:                                               ; preds = %20
  %30 = add nuw nsw i64 %17, 1
  %31 = icmp eq i64 %30, 48
  br i1 %31, label %32, label %16, !llvm.loop !117

32:                                               ; preds = %29
  %33 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %10) #21
  %34 = tail call ptr @BlurImage(ptr noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef %1) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 9
  store i64 8, ptr %37, align 8, !tbaa !115
  %38 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %34, i32 noundef 32) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @GetImageChannelMoments(ptr noundef nonnull %34, ptr noundef %1) #20
  %42 = tail call ptr @DestroyImage(ptr noundef nonnull %34) #21
  %43 = icmp eq ptr %41, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %40, %56
  %45 = phi i64 [ %57, %56 ], [ 0, %40 ]
  %46 = getelementptr inbounds %struct._ChannelMoments, ptr %41, i64 %45
  br label %47

47:                                               ; preds = %44, %47
  %48 = phi i64 [ 0, %44 ], [ %54, %47 ]
  %49 = getelementptr inbounds [32 x double], ptr %46, i64 0, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !40
  %51 = tail call fastcc double @MagickLog10(double noundef %50) #20
  %52 = fneg double %51
  %53 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %14, i64 %45, i32 1, i64 %48
  store double %52, ptr %53, align 8, !tbaa !40
  %54 = add nuw nsw i64 %48, 1
  %55 = icmp eq i64 %54, 7
  br i1 %55, label %56, label %47, !llvm.loop !118

56:                                               ; preds = %47
  %57 = add nuw nsw i64 %45, 1
  %58 = icmp eq i64 %57, 48
  br i1 %58, label %59, label %44, !llvm.loop !119

59:                                               ; preds = %56, %40, %36, %32
  %60 = phi ptr [ %14, %32 ], [ %14, %36 ], [ %14, %40 ], [ %41, %56 ]
  %61 = phi ptr [ null, %32 ], [ null, %36 ], [ null, %40 ], [ %14, %56 ]
  %62 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %60) #21
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
define internal fastcc double @MagickLog10(double noundef %0) unnamed_addr #13 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageRange(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GetImageChannelRange(ptr noundef %0, i32 noundef 47, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20, !range !5
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @GetQuantumRange(i64 noundef %0) unnamed_addr #7 {
  %2 = add i64 %0, -1
  %3 = shl i64 2, %2
  %4 = add i64 %3, -1
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %0, i64 noundef %1) unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @EvaluateMax(double noundef %0, double noundef %1) unnamed_addr #7 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #7 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PolynomialImage(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @PolynomialImageChannel(ptr noundef %0, i32 noundef 134217719, i64 noundef %1, ptr noundef %2, ptr noundef %3) #20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PolynomialImageChannel(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2475, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #21
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !25
  %18 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %15, i64 noundef %17, i32 noundef 1, ptr noundef %4) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %243, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %18, i32 noundef 1) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %24) #21
  %25 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #21
  br label %243

26:                                               ; preds = %20
  %27 = tail call i64 @GetImageListLength(ptr noundef nonnull %0) #21
  %28 = tail call fastcc ptr @AcquirePixelThreadSet(ptr noundef nonnull %0, i64 noundef %27) #20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %18) #21
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2492, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %32) #21
  br label %243

34:                                               ; preds = %26
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #21
  %35 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %18, ptr noundef %4) #21
  %36 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !25
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %240

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %41 = call i64 @llvm.smin.i64(i64 %27, i64 %2)
  %42 = icmp sgt i64 %41, 0
  %43 = and i32 %1, 1
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %1, 2
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %1, 4
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %1, 8
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %1, 32
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 1
  %54 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 6
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %56

56:                                               ; preds = %39, %228
  %57 = phi i32 [ 1, %39 ], [ %230, %228 ]
  %58 = phi i64 [ 0, %39 ], [ %229, %228 ]
  %59 = phi i64 [ 0, %39 ], [ %231, %228 ]
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %228, label %61

61:                                               ; preds = %56
  %62 = load i64, ptr %40, align 8, !tbaa !26
  %63 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %35, i64 noundef 0, i64 noundef %59, i64 noundef %62, i64 noundef 1, ptr noundef %4) #22
  %64 = icmp eq ptr %63, null
  br i1 %64, label %228, label %65

65:                                               ; preds = %61
  %66 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %35) #21
  %67 = load ptr, ptr %28, align 8, !tbaa !27
  %68 = load i64, ptr %40, align 8, !tbaa !26
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %71, %65
  br i1 %42, label %77, label %172

71:                                               ; preds = %65, %71
  %72 = phi i64 [ %74, %71 ], [ 0, %65 ]
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %73, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !38
  %74 = add nuw nsw i64 %72, 1
  %75 = load i64, ptr %40, align 8, !tbaa !26
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %71, label %70, !llvm.loop !120

77:                                               ; preds = %70, %167
  %78 = phi i64 [ %170, %167 ], [ 0, %70 ]
  %79 = phi ptr [ %169, %167 ], [ %0, %70 ]
  %80 = call ptr @AcquireVirtualCacheView(ptr noundef %79, ptr noundef %4) #21
  %81 = load i64, ptr %40, align 8, !tbaa !26
  %82 = call ptr @GetCacheViewVirtualPixels(ptr noundef %80, i64 noundef 0, i64 noundef %59, i64 noundef %81, i64 noundef 1, ptr noundef %4) #22
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call ptr @DestroyCacheView(ptr noundef %80) #21
  br label %172

86:                                               ; preds = %77
  %87 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %80) #21
  %88 = load i64, ptr %40, align 8, !tbaa !26
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %167

90:                                               ; preds = %86
  %91 = shl nuw i64 %78, 1
  %92 = getelementptr inbounds double, ptr %3, i64 %91
  %93 = or disjoint i64 %91, 1
  %94 = getelementptr inbounds double, ptr %3, i64 %93
  br label %95

95:                                               ; preds = %90, %162
  %96 = phi ptr [ %82, %90 ], [ %163, %162 ]
  %97 = phi i64 [ 0, %90 ], [ %164, %162 ]
  %98 = load double, ptr %92, align 8, !tbaa !40
  %99 = load double, ptr %94, align 8, !tbaa !40
  br i1 %44, label %111, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  %102 = load i16, ptr %101, align 2, !tbaa !28
  %103 = uitofp i16 %102 to double
  %104 = fmul double %103, 0x3EF0001000100010
  %105 = call double @pow(double noundef %104, double noundef %99) #21
  %106 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %97, i32 5
  %107 = load float, ptr %106, align 8, !tbaa !45
  %108 = fpext float %107 to double
  %109 = call double @llvm.fmuladd.f64(double %98, double %105, double %108)
  %110 = fptrunc double %109 to float
  store float %110, ptr %106, align 8, !tbaa !45
  br label %111

111:                                              ; preds = %100, %95
  br i1 %46, label %123, label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 1
  %114 = load i16, ptr %113, align 2, !tbaa !29
  %115 = uitofp i16 %114 to double
  %116 = fmul double %115, 0x3EF0001000100010
  %117 = call double @pow(double noundef %116, double noundef %99) #21
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %97, i32 6
  %119 = load float, ptr %118, align 4, !tbaa !47
  %120 = fpext float %119 to double
  %121 = call double @llvm.fmuladd.f64(double %98, double %117, double %120)
  %122 = fptrunc double %121 to float
  store float %122, ptr %118, align 4, !tbaa !47
  br label %123

123:                                              ; preds = %112, %111
  br i1 %48, label %134, label %124

124:                                              ; preds = %123
  %125 = load i16, ptr %96, align 2, !tbaa !30
  %126 = uitofp i16 %125 to double
  %127 = fmul double %126, 0x3EF0001000100010
  %128 = call double @pow(double noundef %127, double noundef %99) #21
  %129 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %97, i32 7
  %130 = load float, ptr %129, align 8, !tbaa !48
  %131 = fpext float %130 to double
  %132 = call double @llvm.fmuladd.f64(double %98, double %128, double %131)
  %133 = fptrunc double %132 to float
  store float %133, ptr %129, align 8, !tbaa !48
  br label %134

134:                                              ; preds = %124, %123
  br i1 %50, label %147, label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  %137 = load i16, ptr %136, align 2, !tbaa !32
  %138 = xor i16 %137, -1
  %139 = uitofp i16 %138 to double
  %140 = fmul double %139, 0x3EF0001000100010
  %141 = call double @pow(double noundef %140, double noundef %99) #21
  %142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %97, i32 8
  %143 = load float, ptr %142, align 4, !tbaa !49
  %144 = fpext float %143 to double
  %145 = call double @llvm.fmuladd.f64(double %98, double %141, double %144)
  %146 = fptrunc double %145 to float
  store float %146, ptr %142, align 4, !tbaa !49
  br label %147

147:                                              ; preds = %135, %134
  br i1 %52, label %162, label %148

148:                                              ; preds = %147
  %149 = load i32, ptr %53, align 4, !tbaa !50
  %150 = icmp eq i32 %149, 12
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = getelementptr inbounds i16, ptr %87, i64 %97
  %153 = load i16, ptr %152, align 2, !tbaa !33
  %154 = uitofp i16 %153 to double
  %155 = fmul double %154, 0x3EF0001000100010
  %156 = call double @pow(double noundef %155, double noundef %99) #21
  %157 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %97, i32 9
  %158 = load float, ptr %157, align 8, !tbaa !51
  %159 = fpext float %158 to double
  %160 = call double @llvm.fmuladd.f64(double %98, double %156, double %159)
  %161 = fptrunc double %160 to float
  store float %161, ptr %157, align 8, !tbaa !51
  br label %162

162:                                              ; preds = %151, %148, %147
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 1
  %164 = add nuw nsw i64 %97, 1
  %165 = load i64, ptr %40, align 8, !tbaa !26
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %95, label %167, !llvm.loop !121

167:                                              ; preds = %162, %86
  %168 = call ptr @DestroyCacheView(ptr noundef %80) #21
  %169 = call ptr @GetNextImageInList(ptr noundef %79) #21
  %170 = add nuw nsw i64 %78, 1
  %171 = icmp eq i64 %170, %41
  br i1 %171, label %172, label %77, !llvm.loop !122

172:                                              ; preds = %167, %70, %84
  %173 = load i64, ptr %40, align 8, !tbaa !26
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %216

175:                                              ; preds = %172
  %176 = load i32, ptr %54, align 8, !tbaa !31
  %177 = icmp ne i32 %176, 0
  %178 = load i32, ptr %53, align 4, !tbaa !50
  %179 = icmp ne i32 %178, 12
  %180 = icmp eq ptr %66, null
  %181 = select i1 %179, i1 true, i1 %180
  %182 = sext i1 %177 to i16
  br label %183

183:                                              ; preds = %175, %212
  %184 = phi i64 [ 0, %175 ], [ %214, %212 ]
  %185 = phi ptr [ %63, %175 ], [ %213, %212 ]
  %186 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %184, i32 5
  %187 = load float, ptr %186, align 8, !tbaa !45
  %188 = fmul float %187, 6.553500e+04
  %189 = call fastcc zeroext i16 @ClampToQuantum(float noundef %188) #20
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 0, i32 2
  store i16 %189, ptr %190, align 2, !tbaa !28
  %191 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %184, i32 6
  %192 = load float, ptr %191, align 4, !tbaa !47
  %193 = fmul float %192, 6.553500e+04
  %194 = call fastcc zeroext i16 @ClampToQuantum(float noundef %193) #20
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 0, i32 1
  store i16 %194, ptr %195, align 2, !tbaa !29
  %196 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %184, i32 7
  %197 = load float, ptr %196, align 8, !tbaa !48
  %198 = fmul float %197, 6.553500e+04
  %199 = call fastcc zeroext i16 @ClampToQuantum(float noundef %198) #20
  store i16 %199, ptr %185, align 2, !tbaa !30
  %200 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %184, i32 8
  %201 = load float, ptr %200, align 4, !tbaa !49
  %202 = call float @llvm.fmuladd.f32(float %201, float -6.553500e+04, float 6.553500e+04)
  %203 = call fastcc zeroext i16 @ClampToQuantum(float noundef %202) #20
  %204 = xor i16 %203, %182
  %205 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 0, i32 3
  store i16 %204, ptr %205, align 2
  br i1 %181, label %212, label %206

206:                                              ; preds = %183
  %207 = getelementptr inbounds i16, ptr %66, i64 %184
  %208 = getelementptr inbounds %struct._MagickPixelPacket, ptr %67, i64 %184, i32 9
  %209 = load float, ptr %208, align 8, !tbaa !51
  %210 = fmul float %209, 6.553500e+04
  %211 = call fastcc zeroext i16 @ClampToQuantum(float noundef %210) #20
  store i16 %211, ptr %207, align 2, !tbaa !33
  br label %212

212:                                              ; preds = %206, %183
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 1
  %214 = add nuw nsw i64 %184, 1
  %215 = icmp eq i64 %214, %173
  br i1 %215, label %216, label %183, !llvm.loop !123

216:                                              ; preds = %212, %172
  %217 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %35, ptr noundef %4) #22
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i32
  %220 = load ptr, ptr %55, align 8, !tbaa !36
  %221 = icmp eq ptr %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %216
  %223 = add nsw i64 %58, 1
  %224 = load i64, ptr %36, align 8, !tbaa !25
  %225 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %58, i64 noundef %224) #20
  %226 = icmp eq i32 %225, 0
  %227 = select i1 %226, i32 0, i32 %219
  br label %228

228:                                              ; preds = %216, %222, %61, %56
  %229 = phi i64 [ %58, %56 ], [ %58, %61 ], [ %223, %222 ], [ %58, %216 ]
  %230 = phi i32 [ 0, %56 ], [ 0, %61 ], [ %227, %222 ], [ %219, %216 ]
  %231 = add nuw nsw i64 %59, 1
  %232 = load i64, ptr %36, align 8, !tbaa !25
  %233 = icmp slt i64 %231, %232
  br i1 %233, label %56, label %234, !llvm.loop !124

234:                                              ; preds = %228
  %235 = icmp eq i32 %230, 0
  %236 = call ptr @DestroyCacheView(ptr noundef %35) #21
  %237 = call fastcc ptr @DestroyPixelThreadSet(ptr noundef nonnull %28) #20
  br i1 %235, label %238, label %243

238:                                              ; preds = %234
  %239 = call ptr @DestroyImage(ptr noundef nonnull %18) #21
  br label %243

240:                                              ; preds = %34
  %241 = call ptr @DestroyCacheView(ptr noundef %35) #21
  %242 = call fastcc ptr @DestroyPixelThreadSet(ptr noundef nonnull %28) #20
  br label %243

243:                                              ; preds = %240, %234, %238, %13, %30, %23
  %244 = phi ptr [ null, %23 ], [ null, %30 ], [ null, %13 ], [ %239, %238 ], [ %18, %234 ], [ %18, %240 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #23
  ret ptr %244
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StatisticImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @StatisticImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #20
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StatisticImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3284, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #21
  br label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !26
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !25
  %19 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %16, i64 noundef %18, i32 noundef 1, ptr noundef %5) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %220, label %21

21:                                               ; preds = %14
  %22 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %19, i32 noundef 1) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %25) #21
  %26 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #21
  br label %220

27:                                               ; preds = %21
  %28 = icmp eq i64 %3, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call i64 @GetOptimalKernelWidth2D(double noundef 0.000000e+00, double noundef 5.000000e-01) #21
  br label %31

31:                                               ; preds = %27, %29
  %32 = phi i64 [ %30, %29 ], [ %3, %27 ]
  %33 = icmp eq i64 %4, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i64 @GetOptimalKernelWidth2D(double noundef 0.000000e+00, double noundef 5.000000e-01) #21
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi i64 [ %35, %34 ], [ %4, %31 ]
  %38 = tail call fastcc ptr @AcquirePixelListThreadSet(i64 noundef %32, i64 noundef %37) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = tail call ptr @DestroyImage(ptr noundef nonnull %19) #21
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %43 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3305, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %42) #21
  br label %220

44:                                               ; preds = %36
  %45 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %5) #21
  %46 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %19, ptr noundef %5) #21
  %47 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %48 = load i64, ptr %47, align 8, !tbaa !25
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %216

50:                                               ; preds = %44
  %51 = sdiv i64 %32, -2
  %52 = lshr i64 %37, 1
  %53 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 7
  %54 = icmp sgt i64 %37, 0
  %55 = icmp sgt i64 %32, 0
  %56 = mul i64 %37, %32
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds i8, ptr %7, i64 32
  %59 = getelementptr inbounds i8, ptr %7, i64 36
  %60 = getelementptr inbounds i8, ptr %7, i64 40
  %61 = getelementptr inbounds i8, ptr %7, i64 44
  %62 = getelementptr inbounds i8, ptr %7, i64 48
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %64 = and i32 %1, 1
  %65 = icmp eq i32 %64, 0
  %66 = and i32 %1, 2
  %67 = icmp eq i32 %66, 0
  %68 = and i32 %1, 4
  %69 = icmp eq i32 %68, 0
  %70 = and i32 %1, 8
  %71 = icmp eq i32 %70, 0
  %72 = and i32 %1, 32
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %75

75:                                               ; preds = %50, %203
  %76 = phi i32 [ 1, %50 ], [ %205, %203 ]
  %77 = phi i64 [ 0, %50 ], [ %204, %203 ]
  %78 = phi i64 [ 0, %50 ], [ %206, %203 ]
  %79 = icmp eq i32 %76, 0
  br i1 %79, label %203, label %80

80:                                               ; preds = %75
  %81 = sub nsw i64 %78, %52
  %82 = load i64, ptr %15, align 8, !tbaa !26
  %83 = add i64 %82, %32
  %84 = call ptr @GetCacheViewVirtualPixels(ptr noundef %45, i64 noundef %51, i64 noundef %81, i64 noundef %83, i64 noundef %37, ptr noundef %5) #22
  %85 = load i64, ptr %53, align 8, !tbaa !26
  %86 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %46, i64 noundef 0, i64 noundef %78, i64 noundef %85, i64 noundef 1, ptr noundef %5) #22
  %87 = icmp eq ptr %84, null
  %88 = icmp eq ptr %86, null
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %203, label %90

90:                                               ; preds = %80
  %91 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %45) #21
  %92 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %46) #21
  %93 = load i64, ptr %53, align 8, !tbaa !26
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %191

95:                                               ; preds = %90
  %96 = icmp eq ptr %92, null
  br label %97

97:                                               ; preds = %95, %185
  %98 = phi ptr [ %84, %95 ], [ %186, %185 ]
  %99 = phi ptr [ %86, %95 ], [ %187, %185 ]
  %100 = phi i64 [ 0, %95 ], [ %188, %185 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #23
  %101 = getelementptr inbounds i16, ptr %91, i64 %100
  %102 = load ptr, ptr %38, align 8, !tbaa !27
  call fastcc void @ResetPixelList(ptr noundef %102) #20
  br i1 %54, label %103, label %121

103:                                              ; preds = %97, %114
  %104 = phi ptr [ %118, %114 ], [ %101, %97 ]
  %105 = phi i64 [ %119, %114 ], [ 0, %97 ]
  %106 = phi ptr [ %117, %114 ], [ %98, %97 ]
  br i1 %55, label %107, label %114

107:                                              ; preds = %103, %107
  %108 = phi i64 [ %112, %107 ], [ 0, %103 ]
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 %108
  %110 = getelementptr inbounds i16, ptr %104, i64 %108
  %111 = load ptr, ptr %38, align 8, !tbaa !27
  call fastcc void @InsertPixelList(ptr noundef %0, ptr noundef %109, ptr noundef %110, ptr noundef %111) #20
  %112 = add nuw nsw i64 %108, 1
  %113 = icmp eq i64 %112, %32
  br i1 %113, label %114, label %107, !llvm.loop !125

114:                                              ; preds = %107, %103
  %115 = load i64, ptr %15, align 8, !tbaa !26
  %116 = add i64 %115, %32
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 %116
  %118 = getelementptr inbounds i16, ptr %104, i64 %116
  %119 = add nuw nsw i64 %105, 1
  %120 = icmp eq i64 %119, %37
  br i1 %120, label %121, label %103, !llvm.loop !126

121:                                              ; preds = %114, %97
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #21
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 %57
  %123 = getelementptr inbounds i16, ptr %101, i64 %57
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %122, ptr noundef %123, ptr noundef nonnull %7) #20
  %124 = load ptr, ptr %38, align 8, !tbaa !27
  switch i32 %2, label %152 [
    i32 1, label %125
    i32 2, label %150
    i32 3, label %151
    i32 8, label %156
    i32 5, label %153
    i32 6, label %154
    i32 7, label %155
  ]

125:                                              ; preds = %121
  call fastcc void @GetMinimumPixelList(ptr noundef %124, ptr noundef nonnull %7) #20
  %126 = load float, ptr %58, align 8, !tbaa.struct !127
  %127 = load float, ptr %59, align 4, !tbaa.struct !128
  %128 = load float, ptr %60, align 8, !tbaa.struct !129
  %129 = load float, ptr %61, align 4, !tbaa.struct !130
  %130 = load float, ptr %62, align 8, !tbaa.struct !131
  %131 = load ptr, ptr %38, align 8, !tbaa !27
  call fastcc void @GetMaximumPixelList(ptr noundef %131, ptr noundef nonnull %7) #20
  %132 = load float, ptr %58, align 8, !tbaa.struct !127
  %133 = load float, ptr %59, align 4, !tbaa.struct !128
  %134 = load float, ptr %60, align 8, !tbaa.struct !129
  %135 = load float, ptr %61, align 4, !tbaa.struct !130
  %136 = load float, ptr %62, align 8, !tbaa.struct !131
  %137 = fsub float %132, %126
  %138 = call fastcc float @MagickAbsoluteValue(float noundef %137) #20
  store float %138, ptr %58, align 8, !tbaa !45
  %139 = fsub float %133, %127
  %140 = call fastcc float @MagickAbsoluteValue(float noundef %139) #20
  store float %140, ptr %59, align 4, !tbaa !47
  %141 = fsub float %134, %128
  %142 = call fastcc float @MagickAbsoluteValue(float noundef %141) #20
  store float %142, ptr %60, align 8, !tbaa !48
  %143 = fsub float %135, %129
  %144 = call fastcc float @MagickAbsoluteValue(float noundef %143) #20
  store float %144, ptr %61, align 4, !tbaa !49
  %145 = load i32, ptr %63, align 4, !tbaa !50
  %146 = icmp eq i32 %145, 12
  br i1 %146, label %147, label %157

147:                                              ; preds = %125
  %148 = fsub float %136, %130
  %149 = call fastcc float @MagickAbsoluteValue(float noundef %148) #20
  store float %149, ptr %62, align 8, !tbaa !51
  br label %157

150:                                              ; preds = %121
  call fastcc void @GetMaximumPixelList(ptr noundef %124, ptr noundef nonnull %7) #20
  br label %157

151:                                              ; preds = %121
  call fastcc void @GetMeanPixelList(ptr noundef %124, ptr noundef nonnull %7) #20
  br label %157

152:                                              ; preds = %121
  call fastcc void @GetMedianPixelList(ptr noundef %124, ptr noundef nonnull %7) #20
  br label %157

153:                                              ; preds = %121
  call fastcc void @GetMinimumPixelList(ptr noundef %124, ptr noundef nonnull %7) #20
  br label %157

154:                                              ; preds = %121
  call fastcc void @GetModePixelList(ptr noundef %124, ptr noundef nonnull %7) #20
  br label %157

155:                                              ; preds = %121
  call fastcc void @GetNonpeakPixelList(ptr noundef %124, ptr noundef nonnull %7) #20
  br label %157

156:                                              ; preds = %121
  call fastcc void @GetStandardDeviationPixelList(ptr noundef %124, ptr noundef nonnull %7) #20
  br label %157

157:                                              ; preds = %125, %147, %156, %155, %154, %153, %152, %151, %150
  br i1 %65, label %162, label %158

158:                                              ; preds = %157
  %159 = load float, ptr %58, align 8, !tbaa !45
  %160 = call fastcc zeroext i16 @ClampToQuantum(float noundef %159) #20
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  store i16 %160, ptr %161, align 2, !tbaa !28
  br label %162

162:                                              ; preds = %158, %157
  br i1 %67, label %167, label %163

163:                                              ; preds = %162
  %164 = load float, ptr %59, align 4, !tbaa !47
  %165 = call fastcc zeroext i16 @ClampToQuantum(float noundef %164) #20
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 1
  store i16 %165, ptr %166, align 2, !tbaa !29
  br label %167

167:                                              ; preds = %163, %162
  br i1 %69, label %171, label %168

168:                                              ; preds = %167
  %169 = load float, ptr %60, align 8, !tbaa !48
  %170 = call fastcc zeroext i16 @ClampToQuantum(float noundef %169) #20
  store i16 %170, ptr %99, align 2, !tbaa !30
  br label %171

171:                                              ; preds = %168, %167
  br i1 %71, label %176, label %172

172:                                              ; preds = %171
  %173 = load float, ptr %61, align 4, !tbaa !49
  %174 = call fastcc zeroext i16 @ClampToQuantum(float noundef %173) #20
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  store i16 %174, ptr %175, align 2, !tbaa !32
  br label %176

176:                                              ; preds = %172, %171
  br i1 %73, label %185, label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %63, align 4, !tbaa !50
  %179 = icmp ne i32 %178, 12
  %180 = select i1 %179, i1 true, i1 %96
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds i16, ptr %92, i64 %100
  %183 = load float, ptr %62, align 8, !tbaa !51
  %184 = call fastcc zeroext i16 @ClampToQuantum(float noundef %183) #20
  store i16 %184, ptr %182, align 2, !tbaa !33
  br label %185

185:                                              ; preds = %181, %177, %176
  %186 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 1
  %187 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #23
  %188 = add nuw nsw i64 %100, 1
  %189 = load i64, ptr %53, align 8, !tbaa !26
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %97, label %191, !llvm.loop !132

191:                                              ; preds = %185, %90
  %192 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %46, ptr noundef %5) #22
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i32
  %195 = load ptr, ptr %74, align 8, !tbaa !36
  %196 = icmp eq ptr %195, null
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = add nsw i64 %77, 1
  %199 = load i64, ptr %17, align 8, !tbaa !25
  %200 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i64 noundef %77, i64 noundef %199) #20
  %201 = icmp eq i32 %200, 0
  %202 = select i1 %201, i32 0, i32 %194
  br label %203

203:                                              ; preds = %191, %197, %80, %75
  %204 = phi i64 [ %77, %75 ], [ %77, %80 ], [ %198, %197 ], [ %77, %191 ]
  %205 = phi i32 [ 0, %75 ], [ 0, %80 ], [ %202, %197 ], [ %194, %191 ]
  %206 = add nuw nsw i64 %78, 1
  %207 = load i64, ptr %47, align 8, !tbaa !25
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %75, label %209, !llvm.loop !133

209:                                              ; preds = %203
  %210 = icmp eq i32 %205, 0
  %211 = call ptr @DestroyCacheView(ptr noundef %46) #21
  %212 = call ptr @DestroyCacheView(ptr noundef %45) #21
  %213 = call fastcc ptr @DestroyPixelListThreadSet(ptr noundef nonnull %38) #20
  br i1 %210, label %214, label %220

214:                                              ; preds = %209
  %215 = call ptr @DestroyImage(ptr noundef nonnull %19) #21
  br label %220

216:                                              ; preds = %44
  %217 = tail call ptr @DestroyCacheView(ptr noundef %46) #21
  %218 = tail call ptr @DestroyCacheView(ptr noundef %45) #21
  %219 = tail call fastcc ptr @DestroyPixelListThreadSet(ptr noundef nonnull %38) #20
  br label %220

220:                                              ; preds = %216, %209, %214, %14, %40, %24
  %221 = phi ptr [ null, %24 ], [ null, %40 ], [ null, %14 ], [ %215, %214 ], [ %19, %209 ], [ %19, %216 ]
  ret ptr %221
}

; Function Attrs: optsize
declare i64 @GetOptimalKernelWidth2D(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquirePixelListThreadSet(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %4 = tail call ptr @AcquireQuantumMemory(i64 noundef %3, i64 noundef 8) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = shl i64 %3, 3
  %8 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef %7) #21
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %13, label %20

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %3
  br i1 %12, label %20, label %13, !llvm.loop !134

13:                                               ; preds = %6, %10
  %14 = phi i64 [ %11, %10 ], [ 0, %6 ]
  %15 = tail call fastcc ptr @AcquirePixelList(i64 noundef %0, i64 noundef %1) #20
  %16 = getelementptr inbounds ptr, ptr %4, i64 %14
  store ptr %15, ptr %16, align 8, !tbaa !27
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @DestroyPixelListThreadSet(ptr noundef nonnull %4) #20
  br label %20

20:                                               ; preds = %10, %6, %2, %18
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ %4, %6 ], [ %4, %10 ]
  ret ptr %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ResetPixelList(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  br label %3

3:                                                ; preds = %1, %25
  %4 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %5 = getelementptr inbounds %struct._SkipList, ptr %2, i64 %4
  %6 = getelementptr inbounds %struct._SkipList, ptr %2, i64 %4, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = getelementptr inbounds %struct._ListNode, ptr %7, i64 65536
  store i64 0, ptr %5, align 8, !tbaa !137
  br label %9

9:                                                ; preds = %21, %3
  %10 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %11 = phi <2 x i64> [ <i64 0, i64 1>, %3 ], [ %23, %21 ]
  %12 = icmp ult <2 x i64> %11, <i64 9, i64 9>
  %13 = extractelement <2 x i1> %12, i64 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds [9 x i64], ptr %8, i64 0, i64 %10
  store i64 65536, ptr %15, align 8, !tbaa !41
  br label %16

16:                                               ; preds = %14, %9
  %17 = extractelement <2 x i1> %12, i64 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = or disjoint i64 %10, 1
  %20 = getelementptr inbounds [9 x i64], ptr %8, i64 0, i64 %19
  store i64 65536, ptr %20, align 8, !tbaa !41
  br label %21

21:                                               ; preds = %18, %16
  %22 = add i64 %10, 2
  %23 = add <2 x i64> %11, <i64 2, i64 2>
  %24 = icmp eq i64 %22, 10
  br i1 %24, label %25, label %9, !llvm.loop !138

25:                                               ; preds = %21
  %26 = add nuw nsw i64 %4, 1
  %27 = icmp eq i64 %26, 5
  br i1 %27, label %28, label %3, !llvm.loop !139

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !140
  %31 = add i64 %30, 1
  store i64 %31, ptr %29, align 8, !tbaa !140
  %32 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 1
  store i64 %30, ptr %32, align 8, !tbaa !142
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @InsertPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #15 {
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !28
  %7 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = zext i16 %6 to i64
  %10 = getelementptr inbounds %struct._ListNode, ptr %8, i64 %9, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !143
  %12 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !140
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct._ListNode, ptr %8, i64 %9, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !145
  %18 = add i64 %17, 1
  store i64 %18, ptr %16, align 8, !tbaa !145
  br label %21

19:                                               ; preds = %4
  tail call fastcc void @AddNodePixelList(ptr noundef nonnull %3, i64 noundef 0, i64 noundef %9) #20
  %20 = load i64, ptr %12, align 8, !tbaa !140
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i64 [ %20, %19 ], [ %11, %15 ]
  %23 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !29
  %25 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 1, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !135
  %27 = zext i16 %24 to i64
  %28 = getelementptr inbounds %struct._ListNode, ptr %26, i64 %27, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !143
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct._ListNode, ptr %26, i64 %27, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !145
  %34 = add i64 %33, 1
  store i64 %34, ptr %32, align 8, !tbaa !145
  br label %37

35:                                               ; preds = %21
  tail call fastcc void @AddNodePixelList(ptr noundef nonnull %3, i64 noundef 1, i64 noundef %27) #20
  %36 = load i64, ptr %12, align 8, !tbaa !140
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i64 [ %36, %35 ], [ %22, %31 ]
  %39 = load i16, ptr %1, align 2, !tbaa !30
  %40 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 2, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !135
  %42 = zext i16 %39 to i64
  %43 = getelementptr inbounds %struct._ListNode, ptr %41, i64 %42, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !143
  %45 = icmp eq i64 %44, %38
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct._ListNode, ptr %41, i64 %42, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !145
  %49 = add i64 %48, 1
  store i64 %49, ptr %47, align 8, !tbaa !145
  br label %52

50:                                               ; preds = %37
  tail call fastcc void @AddNodePixelList(ptr noundef nonnull %3, i64 noundef 2, i64 noundef %42) #20
  %51 = load i64, ptr %12, align 8, !tbaa !140
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %51, %50 ], [ %38, %46 ]
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %55 = load i16, ptr %54, align 2, !tbaa !32
  %56 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 3, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !135
  %58 = zext i16 %55 to i64
  %59 = getelementptr inbounds %struct._ListNode, ptr %57, i64 %58, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !143
  %61 = icmp eq i64 %60, %53
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct._ListNode, ptr %57, i64 %58, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !145
  %65 = add i64 %64, 1
  store i64 %65, ptr %63, align 8, !tbaa !145
  br label %67

66:                                               ; preds = %52
  tail call fastcc void @AddNodePixelList(ptr noundef nonnull %3, i64 noundef 3, i64 noundef %58) #20
  br label %67

67:                                               ; preds = %66, %62
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !50
  %70 = icmp eq i32 %69, 12
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = icmp eq ptr %2, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = load i16, ptr %2, align 2, !tbaa !33
  br label %75

75:                                               ; preds = %73, %71, %67
  %76 = phi i16 [ %55, %67 ], [ %74, %73 ], [ 0, %71 ]
  %77 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 4, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !135
  %79 = zext i16 %76 to i64
  %80 = getelementptr inbounds %struct._ListNode, ptr %78, i64 %79, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !143
  %82 = load i64, ptr %12, align 8, !tbaa !140
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct._ListNode, ptr %78, i64 %79, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !145
  %87 = add i64 %86, 1
  store i64 %87, ptr %85, align 8, !tbaa !145
  br label %89

88:                                               ; preds = %75
  tail call fastcc void @AddNodePixelList(ptr noundef nonnull %3, i64 noundef 4, i64 noundef %79) #20
  br label %89

89:                                               ; preds = %88, %84
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetMinimumPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #16 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !146
  br label %6

6:                                                ; preds = %2, %23
  %7 = phi i64 [ 0, %2 ], [ %26, %23 ]
  %8 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct._ListNode, ptr %9, i64 65536
  %11 = load i64, ptr %10, align 8, !tbaa !41
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ 65536, %6 ], [ %17, %12 ]
  %14 = phi i64 [ %11, %6 ], [ %18, %12 ]
  %15 = phi i64 [ 0, %6 ], [ %21, %12 ]
  %16 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !41
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 %14)
  %19 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %17, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !145
  %21 = add i64 %20, %15
  %22 = icmp slt i64 %21, %5
  br i1 %22, label %12, label %23, !llvm.loop !147

23:                                               ; preds = %12
  %24 = trunc i64 %18 to i16
  %25 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %7
  store i16 %24, ptr %25, align 2, !tbaa !33
  %26 = add nuw nsw i64 %7, 1
  %27 = icmp eq i64 %26, 5
  br i1 %27, label %28, label %6, !llvm.loop !148

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %30 = load <4 x i16>, ptr %3, align 8, !tbaa !33
  %31 = uitofp <4 x i16> %30 to <4 x float>
  store <4 x float> %31, ptr %29, align 8, !tbaa !42
  %32 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %33 = load i16, ptr %32, align 8, !tbaa !33
  %34 = uitofp i16 %33 to float
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %34, ptr %35, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetMaximumPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #16 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !146
  br label %6

6:                                                ; preds = %2, %23
  %7 = phi i64 [ 0, %2 ], [ %26, %23 ]
  %8 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct._ListNode, ptr %9, i64 65536
  %11 = load i64, ptr %10, align 8, !tbaa !41
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ 65536, %6 ], [ %17, %12 ]
  %14 = phi i64 [ %11, %6 ], [ %18, %12 ]
  %15 = phi i64 [ 0, %6 ], [ %21, %12 ]
  %16 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !41
  %18 = tail call i64 @llvm.umax.i64(i64 %17, i64 %14)
  %19 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %17, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !145
  %21 = add i64 %20, %15
  %22 = icmp slt i64 %21, %5
  br i1 %22, label %12, label %23, !llvm.loop !149

23:                                               ; preds = %12
  %24 = trunc i64 %18 to i16
  %25 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %7
  store i16 %24, ptr %25, align 2, !tbaa !33
  %26 = add nuw nsw i64 %7, 1
  %27 = icmp eq i64 %26, 5
  br i1 %27, label %28, label %6, !llvm.loop !150

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %30 = load <4 x i16>, ptr %3, align 8, !tbaa !33
  %31 = uitofp <4 x i16> %30 to <4 x float>
  store <4 x float> %31, ptr %29, align 8, !tbaa !42
  %32 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %33 = load i16, ptr %32, align 8, !tbaa !33
  %34 = uitofp i16 %33 to float
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %34, ptr %35, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @MagickAbsoluteValue(float noundef %0) unnamed_addr #7 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetMeanPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #16 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !146
  %6 = uitofp i64 %5 to float
  br label %7

7:                                                ; preds = %2, %24
  %8 = phi i64 [ 0, %2 ], [ %28, %24 ]
  %9 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  br label %11

11:                                               ; preds = %11, %7
  %12 = phi float [ 0.000000e+00, %7 ], [ %21, %11 ]
  %13 = phi i64 [ 65536, %7 ], [ %16, %11 ]
  %14 = phi i64 [ 0, %7 ], [ %22, %11 ]
  %15 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %13
  %16 = load i64, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %16, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !145
  %19 = uitofp i64 %18 to float
  %20 = uitofp i64 %16 to float
  %21 = tail call float @llvm.fmuladd.f32(float %19, float %20, float %12)
  %22 = add i64 %18, %14
  %23 = icmp slt i64 %22, %5
  br i1 %23, label %11, label %24, !llvm.loop !151

24:                                               ; preds = %11
  %25 = fdiv float %21, %6
  %26 = fptoui float %25 to i16
  %27 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %8
  store i16 %26, ptr %27, align 2, !tbaa !33
  %28 = add nuw nsw i64 %8, 1
  %29 = icmp eq i64 %28, 5
  br i1 %29, label %30, label %7, !llvm.loop !152

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %32 = load <4 x i16>, ptr %3, align 8, !tbaa !33
  %33 = uitofp <4 x i16> %32 to <4 x float>
  store <4 x float> %33, ptr %31, align 8, !tbaa !42
  %34 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %35 = load i16, ptr %34, align 8, !tbaa !33
  %36 = uitofp i16 %35 to float
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %36, ptr %37, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @GetMedianPixelList(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !146
  %6 = lshr i64 %5, 1
  br label %7

7:                                                ; preds = %2, %20
  %8 = phi i64 [ 0, %2 ], [ %23, %20 ]
  %9 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  br label %11

11:                                               ; preds = %11, %7
  %12 = phi i64 [ 65536, %7 ], [ %15, %11 ]
  %13 = phi i64 [ 0, %7 ], [ %18, %11 ]
  %14 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %12
  %15 = load i64, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %15, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !145
  %18 = add i64 %17, %13
  %19 = icmp sgt i64 %18, %6
  br i1 %19, label %20, label %11, !llvm.loop !153

20:                                               ; preds = %11
  %21 = trunc i64 %15 to i16
  %22 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %8
  store i16 %21, ptr %22, align 2, !tbaa !33
  %23 = add nuw nsw i64 %8, 1
  %24 = icmp eq i64 %23, 5
  br i1 %24, label %25, label %7, !llvm.loop !154

25:                                               ; preds = %20
  tail call void @GetMagickPixelPacket(ptr noundef null, ptr noundef %1) #21
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %27 = load <4 x i16>, ptr %3, align 8, !tbaa !33
  %28 = uitofp <4 x i16> %27 to <4 x float>
  store <4 x float> %28, ptr %26, align 8, !tbaa !42
  %29 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %30 = load i16, ptr %29, align 8, !tbaa !33
  %31 = uitofp i16 %30 to float
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %31, ptr %32, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetModePixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #16 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !146
  br label %6

6:                                                ; preds = %2, %26
  %7 = phi i64 [ 0, %2 ], [ %29, %26 ]
  %8 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct._ListNode, ptr %9, i64 65536, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !145
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ 65536, %6 ], [ %18, %12 ]
  %14 = phi i64 [ %11, %6 ], [ %22, %12 ]
  %15 = phi i64 [ 65536, %6 ], [ %23, %12 ]
  %16 = phi i64 [ 0, %6 ], [ %24, %12 ]
  %17 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %13
  %18 = load i64, ptr %17, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct._ListNode, ptr %9, i64 %18, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !145
  %21 = icmp ugt i64 %20, %14
  %22 = tail call i64 @llvm.umax.i64(i64 %20, i64 %14)
  %23 = select i1 %21, i64 %18, i64 %15
  %24 = add i64 %20, %16
  %25 = icmp slt i64 %24, %5
  br i1 %25, label %12, label %26, !llvm.loop !155

26:                                               ; preds = %12
  %27 = trunc i64 %23 to i16
  %28 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %7
  store i16 %27, ptr %28, align 2, !tbaa !33
  %29 = add nuw nsw i64 %7, 1
  %30 = icmp eq i64 %29, 5
  br i1 %30, label %31, label %6, !llvm.loop !156

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %33 = load <4 x i16>, ptr %3, align 8, !tbaa !33
  %34 = uitofp <4 x i16> %33 to <4 x float>
  store <4 x float> %34, ptr %32, align 8, !tbaa !42
  %35 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %36 = load i16, ptr %35, align 8, !tbaa !33
  %37 = uitofp i16 %36 to float
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %37, ptr %38, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @GetNonpeakPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #16 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %0, align 8, !tbaa !146
  %6 = lshr i64 %5, 1
  br label %7

7:                                                ; preds = %2, %23
  %8 = phi i64 [ 0, %2 ], [ %34, %23 ]
  %9 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  %11 = getelementptr inbounds %struct._ListNode, ptr %10, i64 65536
  %12 = load i64, ptr %11, align 8, !tbaa !41
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 65536, %7 ], [ %15, %13 ]
  %15 = phi i64 [ %12, %7 ], [ %18, %13 ]
  %16 = phi i64 [ 0, %7 ], [ %21, %13 ]
  %17 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %15
  %18 = load i64, ptr %17, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %15, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !145
  %21 = add i64 %20, %16
  %22 = icmp sgt i64 %21, %6
  br i1 %22, label %23, label %13, !llvm.loop !157

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
  store i16 %32, ptr %33, align 2, !tbaa !33
  %34 = add nuw nsw i64 %8, 1
  %35 = icmp eq i64 %34, 5
  br i1 %35, label %36, label %7, !llvm.loop !158

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %38 = load <4 x i16>, ptr %3, align 8, !tbaa !33
  %39 = uitofp <4 x i16> %38 to <4 x float>
  store <4 x float> %39, ptr %37, align 8, !tbaa !42
  %40 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %41 = load i16, ptr %40, align 8, !tbaa !33
  %42 = uitofp i16 %41 to float
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %42, ptr %43, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @GetStandardDeviationPixelList(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #17 {
  %3 = alloca [5 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  br label %5

5:                                                ; preds = %2, %33
  %6 = phi i64 [ 0, %2 ], [ %43, %33 ]
  %7 = getelementptr inbounds %struct._SkipList, ptr %4, i64 %6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = load i64, ptr %0, align 8, !tbaa !146
  br label %10

10:                                               ; preds = %29, %5
  %11 = phi float [ 0.000000e+00, %5 ], [ %30, %29 ]
  %12 = phi float [ 0.000000e+00, %5 ], [ %21, %29 ]
  %13 = phi i64 [ 65536, %5 ], [ %16, %29 ]
  %14 = phi i64 [ 0, %5 ], [ %31, %29 ]
  %15 = getelementptr inbounds %struct._ListNode, ptr %8, i64 %13
  %16 = load i64, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct._ListNode, ptr %8, i64 %16, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !145
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
  br i1 %28, label %29, label %23, !llvm.loop !159

29:                                               ; preds = %23, %10
  %30 = phi float [ %11, %10 ], [ %26, %23 ]
  %31 = add i64 %18, %14
  %32 = icmp slt i64 %31, %9
  br i1 %32, label %10, label %33, !llvm.loop !160

33:                                               ; preds = %29
  %34 = uitofp i64 %9 to float
  %35 = fdiv float %21, %34
  %36 = fdiv float %30, %34
  %37 = fneg float %35
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %35, float %36)
  %39 = fpext float %38 to double
  %40 = tail call double @sqrt(double noundef %39) #21
  %41 = fptoui double %40 to i16
  %42 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 %6
  store i16 %41, ptr %42, align 2, !tbaa !33
  %43 = add nuw nsw i64 %6, 1
  %44 = icmp eq i64 %43, 5
  br i1 %44, label %45, label %5, !llvm.loop !161

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %47 = load <4 x i16>, ptr %3, align 8, !tbaa !33
  %48 = uitofp <4 x i16> %47 to <4 x float>
  store <4 x float> %48, ptr %46, align 8, !tbaa !42
  %49 = getelementptr inbounds [5 x i16], ptr %3, i64 0, i64 4
  %50 = load i16, ptr %49, align 8, !tbaa !33
  %51 = uitofp i16 %50 to float
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  store float %51, ptr %52, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyPixelListThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @DestroyPixelList(ptr noundef nonnull %7) #20
  store ptr %10, ptr %6, align 8, !tbaa !27
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !162

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #21
  ret ptr %16
}

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @AcquireRandomInfo() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare double @GenerateDifferentialNoise(ptr noundef, i16 noundef zeroext, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @MagickPixelIntensity(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !163
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !45
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !48
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
declare ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquirePixelList(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call dereferenceable_or_null(104) ptr @AcquireMagickMemory(i64 noundef 104) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 104) #21
  %7 = mul i64 %1, %0
  store i64 %7, ptr %3, align 8, !tbaa !146
  br label %8

8:                                                ; preds = %5, %15
  %9 = phi i64 [ 0, %5 ], [ %17, %15 ]
  %10 = tail call dereferenceable_or_null(5767256) ptr @AcquireQuantumMemory(i64 noundef 65537, i64 noundef 88) #24
  %11 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 3, i64 %9, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !135
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @DestroyPixelList(ptr noundef nonnull %3) #20
  br label %21

15:                                               ; preds = %8
  %16 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 5767256) #21
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, 5
  br i1 %18, label %19, label %8, !llvm.loop !164

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._PixelList, ptr %3, i64 0, i32 2
  store i64 2880220587, ptr %20, align 8, !tbaa !140
  br label %21

21:                                               ; preds = %2, %19, %13
  %22 = phi ptr [ %14, %13 ], [ %3, %19 ], [ null, %2 ]
  ret ptr %22
}

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyPixelList(ptr noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %9
  %3 = phi i64 [ 0, %1 ], [ %10, %9 ]
  %4 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3, i64 %3, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !135
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %5) #21
  store ptr %8, ptr %4, align 8, !tbaa !135
  br label %9

9:                                                ; preds = %2, %7
  %10 = add nuw nsw i64 %3, 1
  %11 = icmp eq i64 %10, 5
  br i1 %11, label %12, label %2, !llvm.loop !165

12:                                               ; preds = %9
  %13 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #21
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @AddNodePixelList(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #15 {
  %4 = alloca [9 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct._SkipList, ptr %5, i64 %1
  %7 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct._SkipList, ptr %5, i64 %1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  %11 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %2, i32 2
  store i64 %8, ptr %11, align 8, !tbaa !143
  %12 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %2, i32 1
  store i64 1, ptr %12, align 8, !tbaa !145
  %13 = load i64, ptr %6, align 8, !tbaa !137
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %3, %27
  %16 = phi i64 [ %23, %27 ], [ 65536, %3 ]
  %17 = phi i64 [ %29, %27 ], [ %13, %3 ]
  %18 = getelementptr [9 x i64], ptr %10, i64 0, i64 %17
  br label %22

19:                                               ; preds = %27, %3
  %20 = getelementptr inbounds %struct._PixelList, ptr %0, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !142
  br label %31

22:                                               ; preds = %15, %22
  %23 = phi i64 [ %25, %22 ], [ %16, %15 ]
  %24 = getelementptr %struct._ListNode, ptr %18, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !41
  %26 = icmp ult i64 %25, %2
  br i1 %26, label %22, label %27, !llvm.loop !166

27:                                               ; preds = %22
  %28 = getelementptr inbounds [9 x i64], ptr %4, i64 0, i64 %17
  store i64 %23, ptr %28, align 8, !tbaa !41
  %29 = add nsw i64 %17, -1
  %30 = icmp sgt i64 %17, 0
  br i1 %30, label %15, label %19, !llvm.loop !167

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
  store i64 %35, ptr %20, align 8, !tbaa !142
  %40 = tail call i64 @llvm.umin.i64(i64 %33, i64 8)
  %41 = add i64 %13, 2
  %42 = tail call i64 @llvm.smin.i64(i64 %40, i64 %41)
  %43 = icmp sgt i64 %42, %13
  br i1 %43, label %47, label %45

44:                                               ; preds = %47
  store i64 %42, ptr %6, align 8, !tbaa !137
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %2
  br label %52

47:                                               ; preds = %39, %47
  %48 = phi i64 [ %49, %47 ], [ %13, %39 ]
  %49 = add nsw i64 %48, 1
  %50 = getelementptr inbounds [9 x i64], ptr %4, i64 0, i64 %49
  store i64 65536, ptr %50, align 8, !tbaa !41
  %51 = icmp eq i64 %49, %42
  br i1 %51, label %44, label %47, !llvm.loop !168

52:                                               ; preds = %45, %52
  %53 = phi i64 [ %60, %52 ], [ %42, %45 ]
  %54 = getelementptr inbounds [9 x i64], ptr %4, i64 0, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !41
  %56 = getelementptr inbounds %struct._ListNode, ptr %10, i64 %55
  %57 = getelementptr inbounds [9 x i64], ptr %56, i64 0, i64 %53
  %58 = load i64, ptr %57, align 8, !tbaa !41
  %59 = getelementptr inbounds [9 x i64], ptr %46, i64 0, i64 %53
  store i64 %58, ptr %59, align 8, !tbaa !41
  store i64 %2, ptr %57, align 8, !tbaa !41
  %60 = add nsw i64 %53, -1
  %61 = icmp sgt i64 %53, 0
  br i1 %61, label %52, label %62, !llvm.loop !169

62:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { hot nounwind optsize }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize allocsize(0,1) }
attributes #25 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 0, i32 2}
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
!25 = !{!7, !11, i64 48}
!26 = !{!7, !11, i64 40}
!27 = !{!12, !12, i64 0}
!28 = !{!13, !14, i64 4}
!29 = !{!13, !14, i64 2}
!30 = !{!13, !14, i64 0}
!31 = !{!7, !8, i64 32}
!32 = !{!13, !14, i64 6}
!33 = !{!14, !14, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!7, !12, i64 568}
!37 = distinct !{!37, !35}
!38 = !{i64 0, i64 4, !39, i64 4, i64 4, !39, i64 8, i64 4, !39, i64 16, i64 8, !40, i64 24, i64 8, !41, i64 32, i64 4, !42, i64 36, i64 4, !42, i64 40, i64 4, !42, i64 44, i64 4, !42, i64 48, i64 4, !42}
!39 = !{!8, !8, i64 0}
!40 = !{!15, !15, i64 0}
!41 = !{!11, !11, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !9, i64 0}
!44 = distinct !{!44, !35}
!45 = !{!46, !43, i64 32}
!46 = !{!"_MagickPixelPacket", !8, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !11, i64 24, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48}
!47 = !{!46, !43, i64 36}
!48 = !{!46, !43, i64 40}
!49 = !{!46, !43, i64 44}
!50 = !{!7, !8, i64 4}
!51 = !{!46, !43, i64 48}
!52 = distinct !{!52, !35}
!53 = distinct !{!53, !35}
!54 = distinct !{!54, !35}
!55 = distinct !{!55, !35}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, !35}
!58 = distinct !{!58, !35}
!59 = distinct !{!59, !35}
!60 = distinct !{!60, !35}
!61 = distinct !{!61, !35}
!62 = distinct !{!62, !35}
!63 = distinct !{!63, !35}
!64 = distinct !{!64, !35}
!65 = distinct !{!65, !35}
!66 = !{!7, !12, i64 576}
!67 = distinct !{!67, !35}
!68 = distinct !{!68, !35}
!69 = distinct !{!69, !35}
!70 = distinct !{!70, !35}
!71 = distinct !{!71, !35}
!72 = distinct !{!72, !35}
!73 = distinct !{!73, !35}
!74 = distinct !{!74, !35}
!75 = distinct !{!75, !35}
!76 = !{!77, !15, i64 56}
!77 = !{!"_ChannelStatistics", !11, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88}
!78 = !{!77, !15, i64 64}
!79 = !{!77, !15, i64 72}
!80 = !{!77, !11, i64 0}
!81 = distinct !{!81, !35}
!82 = distinct !{!82, !35}
!83 = !{!77, !15, i64 8}
!84 = !{!77, !15, i64 16}
!85 = !{!77, !15, i64 24}
!86 = !{!77, !15, i64 48}
!87 = !{!77, !15, i64 40}
!88 = distinct !{!88, !35}
!89 = distinct !{!89, !35}
!90 = distinct !{!90, !35}
!91 = !{!77, !15, i64 32}
!92 = !{!77, !15, i64 88}
!93 = !{!77, !15, i64 80}
!94 = distinct !{!94, !35}
!95 = distinct !{!95, !35}
!96 = distinct !{!96, !35}
!97 = distinct !{!97, !35}
!98 = !{!99, !15, i64 0}
!99 = !{!"_PointInfo", !15, i64 0, !15, i64 8}
!100 = !{!99, !15, i64 8}
!101 = distinct !{!101, !35}
!102 = distinct !{!102, !35}
!103 = !{i64 0, i64 8, !40, i64 8, i64 8, !40}
!104 = !{!105, !15, i64 272}
!105 = !{!"_ChannelMoments", !9, i64 0, !99, i64 256, !99, i64 272, !15, i64 288, !15, i64 296, !15, i64 304}
!106 = !{!105, !15, i64 280}
!107 = !{!105, !15, i64 288}
!108 = !{!105, !15, i64 296}
!109 = !{!105, !15, i64 304}
!110 = distinct !{!110, !35}
!111 = distinct !{!111, !35}
!112 = distinct !{!112, !35, !113, !114}
!113 = !{!"llvm.loop.isvectorized", i32 1}
!114 = !{!"llvm.loop.unroll.runtime.disable"}
!115 = !{!7, !11, i64 56}
!116 = distinct !{!116, !35}
!117 = distinct !{!117, !35}
!118 = distinct !{!118, !35}
!119 = distinct !{!119, !35}
!120 = distinct !{!120, !35}
!121 = distinct !{!121, !35}
!122 = distinct !{!122, !35}
!123 = distinct !{!123, !35}
!124 = distinct !{!124, !35}
!125 = distinct !{!125, !35}
!126 = distinct !{!126, !35}
!127 = !{i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 4, !42, i64 12, i64 4, !42, i64 16, i64 4, !42}
!128 = !{i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 4, !42, i64 12, i64 4, !42}
!129 = !{i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 4, !42}
!130 = !{i64 0, i64 4, !42, i64 4, i64 4, !42}
!131 = !{i64 0, i64 4, !42}
!132 = distinct !{!132, !35}
!133 = distinct !{!133, !35}
!134 = distinct !{!134, !35}
!135 = !{!136, !12, i64 8}
!136 = !{!"_SkipList", !11, i64 0, !12, i64 8}
!137 = !{!136, !11, i64 0}
!138 = distinct !{!138, !35, !113, !114}
!139 = distinct !{!139, !35}
!140 = !{!141, !11, i64 16}
!141 = !{!"_PixelList", !11, i64 0, !11, i64 8, !11, i64 16, !9, i64 24}
!142 = !{!141, !11, i64 8}
!143 = !{!144, !11, i64 80}
!144 = !{!"_ListNode", !9, i64 0, !11, i64 72, !11, i64 80}
!145 = !{!144, !11, i64 72}
!146 = !{!141, !11, i64 0}
!147 = distinct !{!147, !35}
!148 = distinct !{!148, !35}
!149 = distinct !{!149, !35}
!150 = distinct !{!150, !35}
!151 = distinct !{!151, !35}
!152 = distinct !{!152, !35}
!153 = distinct !{!153, !35}
!154 = distinct !{!154, !35}
!155 = distinct !{!155, !35}
!156 = distinct !{!156, !35}
!157 = distinct !{!157, !35}
!158 = distinct !{!158, !35}
!159 = distinct !{!159, !35}
!160 = distinct !{!160, !35}
!161 = distinct !{!161, !35}
!162 = distinct !{!162, !35}
!163 = !{!46, !8, i64 4}
!164 = distinct !{!164, !35}
!165 = distinct !{!165, !35}
!166 = distinct !{!166, !35}
!167 = distinct !{!167, !35}
!168 = distinct !{!168, !35}
!169 = distinct !{!169, !35}
