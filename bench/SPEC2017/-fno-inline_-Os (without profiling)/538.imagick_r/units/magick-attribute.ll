; ModuleID = 'magick/attribute.c'
source_filename = "magick/attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._RectangleInfo = type { i64, i64, i64, i64 }
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
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._QuantizeInfo = type { i64, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"magick/attribute.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GeometryDoesNotContainImage\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dither\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetImageBoundingBox(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._RectangleInfo) align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x %struct._MagickPixelPacket], align 16
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #14
  br label %13

13:                                               ; preds = %10, %3
  %14 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %16 = load i64, ptr %15, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 2
  store i64 %16, ptr %17, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !26
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !27
  call void @GetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %4) #14
  %21 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %1, ptr noundef %2) #14
  %22 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %2) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = call ptr @DestroyCacheView(ptr noundef %21) #14
  br label %131

26:                                               ; preds = %13
  %27 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #14
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %22, ptr noundef %27, ptr noundef nonnull %4) #16
  %28 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 1
  call void @GetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %28) #14
  %29 = load i64, ptr %15, align 8, !tbaa !24
  %30 = add nsw i64 %29, -1
  %31 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef %30, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %2) #15
  %32 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #14
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef %31, ptr noundef %32, ptr noundef nonnull %28) #16
  %33 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %4, i64 0, i64 2
  call void @GetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %33) #14
  %34 = load i64, ptr %18, align 8, !tbaa !26
  %35 = add nsw i64 %34, -1
  %36 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef 0, i64 noundef %35, i64 noundef 1, i64 noundef 1, ptr noundef %2) #15
  %37 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #14
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef %36, ptr noundef %37, ptr noundef nonnull %33) #16
  call void @GetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %5) #14
  %38 = load i64, ptr %18, align 8, !tbaa !26
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %114

40:                                               ; preds = %26, %105
  %41 = phi i64 [ %111, %105 ], [ 0, %26 ]
  %42 = phi i32 [ %110, %105 ], [ 1, %26 ]
  %43 = phi i64 [ %109, %105 ], [ 0, %26 ]
  %44 = phi i64 [ %108, %105 ], [ 0, %26 ]
  %45 = phi i64 [ %107, %105 ], [ %16, %26 ]
  %46 = phi i64 [ %106, %105 ], [ %19, %26 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  %47 = icmp eq i32 %42, 0
  br i1 %47, label %105, label %48

48:                                               ; preds = %40
  %49 = load i64, ptr %15, align 8, !tbaa !24
  %50 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef 0, i64 noundef %41, i64 noundef %49, i64 noundef 1, ptr noundef %2) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %105, label %52

52:                                               ; preds = %48
  %53 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !28
  %54 = load i64, ptr %15, align 8, !tbaa !24
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %96

56:                                               ; preds = %52, %90
  %57 = phi i64 [ %93, %90 ], [ 0, %52 ]
  %58 = phi ptr [ %92, %90 ], [ %50, %52 ]
  %59 = phi i64 [ %77, %90 ], [ %43, %52 ]
  %60 = phi i64 [ %91, %90 ], [ %44, %52 ]
  %61 = phi i64 [ %70, %90 ], [ %45, %52 ]
  %62 = phi i64 [ %84, %90 ], [ %46, %52 ]
  %63 = getelementptr inbounds i16, ptr %53, i64 %57
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %58, ptr noundef %63, ptr noundef nonnull %6) #16
  %64 = icmp slt i64 %57, %61
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %4) #14
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i64 %57, i64 %61
  br label %69

69:                                               ; preds = %65, %56
  %70 = phi i64 [ %61, %56 ], [ %68, %65 ]
  %71 = icmp sgt i64 %57, %59
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %28) #14
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i64 %57, i64 %59
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i64 [ %59, %69 ], [ %75, %72 ]
  %78 = icmp slt i64 %41, %62
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %4) #14
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i64 %41, i64 %62
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i64 [ %62, %76 ], [ %82, %79 ]
  %85 = icmp sgt i64 %41, %60
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %6, ptr noundef nonnull %33) #14
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i64 %41, i64 %60
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i64 [ %60, %83 ], [ %89, %86 ]
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %93 = add nuw nsw i64 %57, 1
  %94 = load i64, ptr %15, align 8, !tbaa !24
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %56, label %96, !llvm.loop !34

96:                                               ; preds = %90, %52
  %97 = phi i64 [ %46, %52 ], [ %84, %90 ]
  %98 = phi i64 [ %45, %52 ], [ %70, %90 ]
  %99 = phi i64 [ %44, %52 ], [ %91, %90 ]
  %100 = phi i64 [ %43, %52 ], [ %77, %90 ]
  %101 = call i64 @llvm.smin.i64(i64 %98, i64 %45)
  %102 = call i64 @llvm.smin.i64(i64 %97, i64 %46)
  %103 = call i64 @llvm.umax.i64(i64 %100, i64 %43)
  %104 = call i64 @llvm.umax.i64(i64 %99, i64 %44)
  br label %105

105:                                              ; preds = %96, %48, %40
  %106 = phi i64 [ %46, %40 ], [ %46, %48 ], [ %102, %96 ]
  %107 = phi i64 [ %45, %40 ], [ %45, %48 ], [ %101, %96 ]
  %108 = phi i64 [ %44, %40 ], [ %44, %48 ], [ %104, %96 ]
  %109 = phi i64 [ %43, %40 ], [ %43, %48 ], [ %103, %96 ]
  %110 = phi i32 [ 0, %40 ], [ 0, %48 ], [ 1, %96 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #13
  %111 = add nuw nsw i64 %41, 1
  %112 = load i64, ptr %18, align 8, !tbaa !26
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %40, label %114, !llvm.loop !36

114:                                              ; preds = %105, %26
  %115 = phi i64 [ %19, %26 ], [ %106, %105 ]
  %116 = phi i64 [ %16, %26 ], [ %107, %105 ]
  %117 = phi i64 [ 0, %26 ], [ %108, %105 ]
  %118 = phi i64 [ 0, %26 ], [ %109, %105 ]
  store i64 %118, ptr %0, align 8
  store i64 %117, ptr %14, align 8
  store i64 %116, ptr %17, align 8
  store i64 %115, ptr %20, align 8
  %119 = call ptr @DestroyCacheView(ptr noundef %21) #14
  %120 = icmp eq i64 %118, 0
  %121 = icmp eq i64 %117, 0
  %122 = select i1 %120, i1 true, i1 %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %125 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 245, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %124) #14
  br label %131

126:                                              ; preds = %114
  %127 = add i64 %118, 1
  %128 = sub i64 %127, %116
  store i64 %128, ptr %0, align 8, !tbaa !37
  %129 = add i64 %117, 1
  %130 = sub i64 %129, %115
  store i64 %130, ptr %14, align 8, !tbaa !38
  br label %131

131:                                              ; preds = %123, %126, %24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !39
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !40
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !39
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !41
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageDepth(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @GetImageChannelDepth(ptr noundef %0, i32 noundef 47, ptr noundef %1) #16
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageChannelDepth(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca %struct._ExceptionInfo, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 315, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  br label %12

12:                                               ; preds = %9, %3
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #14
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %13, i64 noundef 8) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = icmp sgt i64 %13, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %16
  %19 = add nuw i64 %13, 1
  %20 = and i64 %19, -2
  %21 = add nsw i64 %13, -1
  %22 = insertelement <2 x i64> poison, i64 %21, i64 0
  %23 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %24

24:                                               ; preds = %36, %18
  %25 = phi i64 [ 0, %18 ], [ %37, %36 ]
  %26 = phi <2 x i64> [ <i64 0, i64 1>, %18 ], [ %38, %36 ]
  %27 = icmp ule <2 x i64> %26, %23
  %28 = extractelement <2 x i1> %27, i64 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds i64, ptr %14, i64 %25
  store i64 1, ptr %30, align 8, !tbaa !31
  br label %31

31:                                               ; preds = %29, %24
  %32 = extractelement <2 x i1> %27, i64 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %25, 1
  %35 = getelementptr inbounds i64, ptr %14, i64 %34
  store i64 1, ptr %35, align 8, !tbaa !31
  br label %36

36:                                               ; preds = %33, %31
  %37 = add i64 %25, 2
  %38 = add <2 x i64> %26, <i64 2, i64 2>
  %39 = icmp eq i64 %37, %20
  br i1 %39, label %47, label %24, !llvm.loop !43

40:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #13
  call void @GetExceptionInfo(ptr noundef nonnull %4) #14
  %41 = tail call ptr @__errno_location() #18
  %42 = load i32, ptr %41, align 4, !tbaa !29
  %43 = call ptr @GetExceptionMessage(i32 noundef %42) #14
  %44 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 320, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %43) #14
  %45 = call ptr @DestroyString(ptr noundef %43) #14
  call void @CatchException(ptr noundef nonnull %4) #14
  %46 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #19
  unreachable

47:                                               ; preds = %36, %16
  %48 = load i32, ptr %0, align 8, !tbaa !46
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %121

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !47
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %121

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %56 = load i64, ptr %55, align 8, !tbaa !48
  %57 = icmp sgt i64 %56, 0
  %58 = load i64, ptr %14, align 8, !tbaa !31
  br i1 %57, label %59, label %110

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %61 = and i32 %1, 1
  %62 = icmp eq i32 %61, 0
  %63 = and i32 %1, 2
  %64 = icmp eq i32 %63, 0
  %65 = and i32 %1, 4
  %66 = icmp eq i32 %65, 0
  br label %67

67:                                               ; preds = %59, %104
  %68 = phi i64 [ %58, %59 ], [ %105, %104 ]
  %69 = phi i64 [ %56, %59 ], [ %106, %104 ]
  %70 = phi i64 [ %58, %59 ], [ %107, %104 ]
  %71 = phi i64 [ 0, %59 ], [ %108, %104 ]
  %72 = icmp ult i64 %70, 16
  br i1 %72, label %73, label %104

73:                                               ; preds = %67, %97
  %74 = phi i64 [ %98, %97 ], [ %68, %67 ]
  %75 = phi i64 [ %98, %97 ], [ %70, %67 ]
  %76 = tail call fastcc i64 @GetQuantumRange(i64 noundef %75) #16
  br i1 %62, label %83, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %60, align 8, !tbaa !49
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 %71, i32 2
  %80 = load i16, ptr %79, align 2, !tbaa !50
  %81 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %80, i64 noundef %76) #16, !range !51
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %73, %77
  br i1 %64, label %90, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %60, align 8, !tbaa !49
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %85, i64 %71, i32 1
  %87 = load i16, ptr %86, align 2, !tbaa !52
  %88 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %87, i64 noundef %76) #16, !range !51
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %83, %84
  br i1 %66, label %100, label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %60, align 8, !tbaa !49
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 %71
  %94 = load i16, ptr %93, align 2, !tbaa !53
  %95 = tail call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %94, i64 noundef %76) #16, !range !51
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91, %77, %84
  %98 = add i64 %75, 1
  store i64 %98, ptr %14, align 8, !tbaa !31
  %99 = icmp eq i64 %98, 16
  br i1 %99, label %100, label %73

100:                                              ; preds = %90, %91, %97
  %101 = phi i64 [ %74, %90 ], [ %74, %91 ], [ 16, %97 ]
  %102 = phi i64 [ %75, %90 ], [ %75, %91 ], [ 16, %97 ]
  %103 = load i64, ptr %55, align 8, !tbaa !48
  br label %104

104:                                              ; preds = %100, %67
  %105 = phi i64 [ %101, %100 ], [ %68, %67 ]
  %106 = phi i64 [ %103, %100 ], [ %69, %67 ]
  %107 = phi i64 [ %102, %100 ], [ %70, %67 ]
  %108 = add nuw nsw i64 %71, 1
  %109 = icmp slt i64 %108, %106
  br i1 %109, label %67, label %110, !llvm.loop !54

110:                                              ; preds = %104, %54
  %111 = phi i64 [ %58, %54 ], [ %105, %104 ]
  %112 = icmp sgt i64 %13, 1
  br i1 %112, label %113, label %277

113:                                              ; preds = %110, %113
  %114 = phi i64 [ %119, %113 ], [ 1, %110 ]
  %115 = phi i64 [ %118, %113 ], [ %111, %110 ]
  %116 = getelementptr inbounds i64, ptr %14, i64 %114
  %117 = load i64, ptr %116, align 8, !tbaa !31
  %118 = tail call i64 @llvm.umax.i64(i64 %115, i64 %117)
  %119 = add nuw nsw i64 %114, 1
  %120 = icmp eq i64 %119, %13
  br i1 %120, label %277, label %113, !llvm.loop !55

121:                                              ; preds = %50, %47
  %122 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #14
  %123 = tail call dereferenceable_or_null(524288) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #17
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #13
  call void @GetExceptionInfo(ptr noundef nonnull %5) #14
  %126 = tail call ptr @__errno_location() #18
  %127 = load i32, ptr %126, align 4, !tbaa !29
  %128 = call ptr @GetExceptionMessage(i32 noundef %127) #14
  %129 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 380, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %128) #14
  %130 = call ptr @DestroyString(ptr noundef %128) #14
  call void @CatchException(ptr noundef nonnull %5) #14
  %131 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %5) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #19
  unreachable

132:                                              ; preds = %121, %163
  %133 = phi i64 [ %167, %163 ], [ 0, %121 ]
  %134 = trunc i64 %133 to i16
  br label %153

135:                                              ; preds = %163
  %136 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %137 = load i64, ptr %136, align 8, !tbaa !26
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %262

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %141 = and i32 %1, 1
  %142 = icmp eq i32 %141, 0
  %143 = and i32 %1, 2
  %144 = icmp eq i32 %143, 0
  %145 = and i32 %1, 4
  %146 = icmp eq i32 %145, 0
  %147 = and i32 %1, 8
  %148 = icmp eq i32 %147, 0
  %149 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %150 = and i32 %1, 32
  %151 = icmp eq i32 %150, 0
  %152 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %169

153:                                              ; preds = %132, %160
  %154 = phi i64 [ 1, %132 ], [ %161, %160 ]
  %155 = tail call fastcc i64 @GetQuantumRange(i64 noundef %154) #16
  %156 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %134, i64 noundef %155) #16
  %157 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %156, i64 noundef %155) #16
  %158 = zext i16 %157 to i64
  %159 = icmp eq i64 %133, %158
  br i1 %159, label %163, label %160

160:                                              ; preds = %153
  %161 = add nuw nsw i64 %154, 1
  %162 = icmp eq i64 %161, 16
  br i1 %162, label %163, label %153, !llvm.loop !56

163:                                              ; preds = %153, %160
  %164 = phi i64 [ %154, %153 ], [ 16, %160 ]
  %165 = and i64 %164, 4294967295
  %166 = getelementptr inbounds i64, ptr %123, i64 %133
  store i64 %165, ptr %166, align 8, !tbaa !31
  %167 = add nuw nsw i64 %133, 1
  %168 = icmp eq i64 %167, 65536
  br i1 %168, label %135, label %132, !llvm.loop !57

169:                                              ; preds = %139, %257
  %170 = phi i32 [ 1, %139 ], [ %258, %257 ]
  %171 = phi i64 [ 0, %139 ], [ %259, %257 ]
  %172 = icmp eq i32 %170, 0
  br i1 %172, label %257, label %173

173:                                              ; preds = %169
  %174 = load i64, ptr %140, align 8, !tbaa !24
  %175 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %122, i64 noundef 0, i64 noundef %171, i64 noundef %174, i64 noundef 1, ptr noundef %2) #15
  %176 = icmp eq ptr %175, null
  br i1 %176, label %257, label %177

177:                                              ; preds = %173
  %178 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %122) #14
  %179 = load i64, ptr %140, align 8, !tbaa !24
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %181, label %253

181:                                              ; preds = %177
  %182 = icmp eq ptr %178, null
  br label %183

183:                                              ; preds = %181, %248
  %184 = phi i64 [ 0, %181 ], [ %250, %248 ]
  %185 = phi ptr [ %175, %181 ], [ %249, %248 ]
  br i1 %142, label %196, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 0, i32 2
  %188 = load i16, ptr %187, align 2, !tbaa !50
  %189 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %188) #16, !range !58
  %190 = zext nneg i32 %189 to i64
  %191 = getelementptr inbounds i64, ptr %123, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !31
  %193 = load i64, ptr %14, align 8, !tbaa !31
  %194 = icmp ugt i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  store i64 %192, ptr %14, align 8, !tbaa !31
  br label %196

196:                                              ; preds = %186, %195, %183
  br i1 %144, label %207, label %197

197:                                              ; preds = %196
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 0, i32 1
  %199 = load i16, ptr %198, align 2, !tbaa !52
  %200 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %199) #16, !range !58
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds i64, ptr %123, i64 %201
  %203 = load i64, ptr %202, align 8, !tbaa !31
  %204 = load i64, ptr %14, align 8, !tbaa !31
  %205 = icmp ugt i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %197
  store i64 %203, ptr %14, align 8, !tbaa !31
  br label %207

207:                                              ; preds = %197, %206, %196
  br i1 %146, label %217, label %208

208:                                              ; preds = %207
  %209 = load i16, ptr %185, align 2, !tbaa !53
  %210 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %209) #16, !range !58
  %211 = zext nneg i32 %210 to i64
  %212 = getelementptr inbounds i64, ptr %123, i64 %211
  %213 = load i64, ptr %212, align 8, !tbaa !31
  %214 = load i64, ptr %14, align 8, !tbaa !31
  %215 = icmp ugt i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  store i64 %213, ptr %14, align 8, !tbaa !31
  br label %217

217:                                              ; preds = %208, %216, %207
  br i1 %148, label %231, label %218

218:                                              ; preds = %217
  %219 = load i32, ptr %149, align 8, !tbaa !47
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %231, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 0, i32 3
  %223 = load i16, ptr %222, align 2, !tbaa !59
  %224 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %223) #16, !range !58
  %225 = zext nneg i32 %224 to i64
  %226 = getelementptr inbounds i64, ptr %123, i64 %225
  %227 = load i64, ptr %226, align 8, !tbaa !31
  %228 = load i64, ptr %14, align 8, !tbaa !31
  %229 = icmp ugt i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  store i64 %227, ptr %14, align 8, !tbaa !31
  br label %231

231:                                              ; preds = %221, %230, %218, %217
  br i1 %151, label %248, label %232

232:                                              ; preds = %231
  %233 = load i32, ptr %152, align 4, !tbaa !40
  %234 = icmp eq i32 %233, 12
  br i1 %234, label %235, label %248

235:                                              ; preds = %232
  br i1 %182, label %239, label %236

236:                                              ; preds = %235
  %237 = getelementptr inbounds i16, ptr %178, i64 %184
  %238 = load i16, ptr %237, align 2, !tbaa !39
  br label %239

239:                                              ; preds = %235, %236
  %240 = phi i16 [ %238, %236 ], [ 0, %235 ]
  %241 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %240) #16, !range !58
  %242 = zext nneg i32 %241 to i64
  %243 = getelementptr inbounds i64, ptr %123, i64 %242
  %244 = load i64, ptr %243, align 8, !tbaa !31
  %245 = load i64, ptr %14, align 8, !tbaa !31
  %246 = icmp ugt i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  store i64 %244, ptr %14, align 8, !tbaa !31
  br label %248

248:                                              ; preds = %239, %247, %232, %231
  %249 = getelementptr inbounds %struct._PixelPacket, ptr %185, i64 1
  %250 = add nuw nsw i64 %184, 1
  %251 = load i64, ptr %140, align 8, !tbaa !24
  %252 = icmp slt i64 %250, %251
  br i1 %252, label %183, label %253, !llvm.loop !60

253:                                              ; preds = %248, %177
  %254 = load i64, ptr %14, align 8, !tbaa !31
  %255 = icmp ne i64 %254, 16
  %256 = zext i1 %255 to i32
  br label %257

257:                                              ; preds = %173, %169, %253
  %258 = phi i32 [ %256, %253 ], [ 0, %169 ], [ 1, %173 ]
  %259 = add nuw nsw i64 %171, 1
  %260 = load i64, ptr %136, align 8, !tbaa !26
  %261 = icmp slt i64 %259, %260
  br i1 %261, label %169, label %262, !llvm.loop !61

262:                                              ; preds = %257, %135
  %263 = tail call ptr @DestroyCacheView(ptr noundef %122) #14
  %264 = load i64, ptr %14, align 8, !tbaa !31
  %265 = icmp sgt i64 %13, 1
  br i1 %265, label %266, label %274

266:                                              ; preds = %262, %266
  %267 = phi i64 [ %272, %266 ], [ 1, %262 ]
  %268 = phi i64 [ %271, %266 ], [ %264, %262 ]
  %269 = getelementptr inbounds i64, ptr %14, i64 %267
  %270 = load i64, ptr %269, align 8, !tbaa !31
  %271 = tail call i64 @llvm.umax.i64(i64 %268, i64 %270)
  %272 = add nuw nsw i64 %267, 1
  %273 = icmp eq i64 %272, %13
  br i1 %273, label %274, label %266, !llvm.loop !62

274:                                              ; preds = %266, %262
  %275 = phi i64 [ %264, %262 ], [ %271, %266 ]
  %276 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %123) #14
  br label %277

277:                                              ; preds = %113, %110, %274
  %278 = phi i64 [ %275, %274 ], [ %111, %110 ], [ %118, %113 ]
  %279 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #14
  ret i64 %278
}

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @GetQuantumRange(i64 noundef %0) unnamed_addr #9 {
  %2 = add nsw i64 %0, -1
  %3 = shl i64 2, %2
  %4 = add i64 %3, -1
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %0, i64 noundef %1) unnamed_addr #9 {
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

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %0, i64 noundef %1) unnamed_addr #9 {
  %3 = uitofp i64 %0 to float
  %4 = fmul float %3, 6.553500e+04
  %5 = uitofp i64 %1 to float
  %6 = fdiv float %4, %5
  %7 = fpext float %6 to double
  %8 = fadd double %7, 5.000000e-01
  %9 = fptoui double %8 to i16
  ret i16 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %0, i64 noundef %1) unnamed_addr #9 {
  %3 = uitofp i64 %1 to float
  %4 = uitofp i16 %0 to float
  %5 = fmul float %4, %3
  %6 = fdiv float %5, 6.553500e+04
  %7 = fpext float %6 to double
  %8 = fadd double %7, 5.000000e-01
  %9 = fptoui double %8 to i64
  ret i64 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @ScaleQuantumToMap(i16 noundef zeroext %0) unnamed_addr #9 {
  %2 = zext i16 %0 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetImageQuantumDepth(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %4 = load i64, ptr %3, align 8, !tbaa !63
  %5 = icmp ult i64 %4, 9
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = icmp ult i64 %4, 17
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = icmp ult i64 %4, 33
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @llvm.umax.i64(i64 %4, i64 64)
  br label %12

12:                                               ; preds = %8, %6, %2, %10
  %13 = phi i64 [ %11, %10 ], [ 8, %2 ], [ 16, %6 ], [ 32, %8 ]
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = uitofp i64 %13 to double
  %17 = tail call fastcc double @MagickMin(double noundef %16) #16
  %18 = fptoui double %17 to i64
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i64 [ %18, %15 ], [ %13, %12 ]
  ret i64 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0) unnamed_addr #9 {
  %2 = fcmp olt double %0, 1.600000e+01
  %3 = select i1 %2, double %0, double 1.600000e+01
  ret double %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageType(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #14
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !40
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 8, i32 9
  br label %39

18:                                               ; preds = %9
  %19 = tail call i32 @IsMonochromeImage(ptr noundef nonnull %0, ptr noundef %1) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef %1) #16, !range !51
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !47
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 2, i32 3
  br label %39

29:                                               ; preds = %21
  %30 = tail call i32 @IsPaletteImage(ptr noundef nonnull %0, ptr noundef %1) #14
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !47
  %34 = icmp eq i32 %33, 0
  br i1 %31, label %37, label %35

35:                                               ; preds = %29
  %36 = select i1 %34, i32 4, i32 5
  br label %39

37:                                               ; preds = %29
  %38 = select i1 %34, i32 6, i32 7
  br label %39

39:                                               ; preds = %37, %35, %24, %18, %13
  %40 = phi i32 [ %17, %13 ], [ 1, %18 ], [ %28, %24 ], [ %36, %35 ], [ %38, %37 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsMonochromeImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 807, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #14
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %11 = load i32, ptr %10, align 8, !tbaa !64
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %58, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !40
  %16 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %15) #16, !range !51
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %15) #16, !range !51
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %18, %13
  %22 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #14
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !26
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !24
  br label %29

29:                                               ; preds = %26, %46
  %30 = phi i64 [ %28, %26 ], [ %35, %46 ]
  %31 = phi i64 [ 0, %26 ], [ %47, %46 ]
  %32 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %22, i64 noundef 0, i64 noundef %31, i64 noundef %30, i64 noundef 1, ptr noundef %1) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = load i64, ptr %27, align 8, !tbaa !24
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34, %42
  %38 = phi ptr [ %43, %42 ], [ %32, %34 ]
  %39 = phi i64 [ %44, %42 ], [ 0, %34 ]
  %40 = tail call fastcc i32 @IsMonochromePixel(ptr noundef nonnull %38) #16, !range !51
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 1
  %44 = add nuw nsw i64 %39, 1
  %45 = icmp eq i64 %44, %35
  br i1 %45, label %46, label %37, !llvm.loop !65

46:                                               ; preds = %42, %34
  %47 = add nuw nsw i64 %31, 1
  %48 = load i64, ptr %23, align 8, !tbaa !26
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %29, label %52, !llvm.loop !66

50:                                               ; preds = %37
  %51 = tail call ptr @DestroyCacheView(ptr noundef %22) #14
  br label %58

52:                                               ; preds = %29, %46, %21
  %53 = tail call ptr @DestroyCacheView(ptr noundef %22) #14
  store i32 2, ptr %14, align 4, !tbaa !40
  %54 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef %1) #14
  %55 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef %1) #14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 1, ptr %10, align 8, !tbaa !64
  br label %58

58:                                               ; preds = %52, %18, %9, %57, %50
  %59 = phi i32 [ 0, %50 ], [ 1, %57 ], [ 1, %9 ], [ 0, %18 ], [ %54, %52 ]
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @IsGrayImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 716, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #14
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %11 = load i32, ptr %10, align 8, !tbaa !64
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %75, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !40
  %17 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %16) #16, !range !51
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %16) #16, !range !51
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %75, label %22

22:                                               ; preds = %19, %14
  %23 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #14
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !26
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !24
  br label %30

30:                                               ; preds = %27, %56
  %31 = phi i64 [ %29, %27 ], [ %37, %56 ]
  %32 = phi i64 [ 0, %27 ], [ %58, %56 ]
  %33 = phi i32 [ 1, %27 ], [ %57, %56 ]
  %34 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %23, i64 noundef 0, i64 noundef %32, i64 noundef %31, i64 noundef 1, ptr noundef %1) #15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %30
  %37 = load i64, ptr %28, align 8, !tbaa !24
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36, %51
  %40 = phi i64 [ %54, %51 ], [ 0, %36 ]
  %41 = phi ptr [ %53, %51 ], [ %34, %36 ]
  %42 = phi i32 [ %52, %51 ], [ %33, %36 ]
  %43 = tail call fastcc i32 @IsGrayPixel(ptr noundef nonnull %41) #16, !range !51
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %39
  %46 = icmp eq i32 %42, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = tail call fastcc i32 @IsMonochromePixel(ptr noundef nonnull %41) #16, !range !51
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 2, i32 1
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i32 [ 2, %45 ], [ %50, %47 ]
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 1
  %54 = add nuw nsw i64 %40, 1
  %55 = icmp eq i64 %54, %37
  br i1 %55, label %56, label %39, !llvm.loop !67

56:                                               ; preds = %51, %36
  %57 = phi i32 [ %33, %36 ], [ %52, %51 ]
  %58 = add nuw nsw i64 %32, 1
  %59 = load i64, ptr %24, align 8, !tbaa !26
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %30, label %63, !llvm.loop !68

61:                                               ; preds = %39
  %62 = tail call ptr @DestroyCacheView(ptr noundef %23) #14
  br label %75

63:                                               ; preds = %56, %30, %22
  %64 = phi i32 [ 1, %22 ], [ %33, %30 ], [ %57, %56 ]
  %65 = tail call ptr @DestroyCacheView(ptr noundef %23) #14
  store i32 2, ptr %15, align 4, !tbaa !40
  %66 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef %1) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  store i32 %64, ptr %10, align 8, !tbaa !64
  %69 = icmp eq i32 %64, 2
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !47
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 3, ptr %10, align 8, !tbaa !64
  br label %75

75:                                               ; preds = %61, %9, %68, %70, %74, %63, %19
  %76 = phi i32 [ 1, %9 ], [ 0, %19 ], [ 0, %61 ], [ 0, %63 ], [ 1, %74 ], [ 1, %70 ], [ 1, %68 ]
  ret i32 %76
}

; Function Attrs: optsize
declare i32 @IsPaletteImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #9 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IssRGBCompatibleColorspace(i32 noundef %0) unnamed_addr #9 {
  switch i32 %0, label %2 [
    i32 29, label %4
    i32 13, label %4
    i32 3, label %4
    i32 1, label %4
  ]

2:                                                ; preds = %1
  %3 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %0) #16, !range !51
  br label %4

4:                                                ; preds = %2, %1, %1, %1, %1
  %5 = phi i32 [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ %3, %2 ]
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsGrayPixel(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !50
  %4 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !52
  %6 = icmp eq i16 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i16, ptr %0, align 2, !tbaa !53
  %9 = icmp eq i16 %3, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %1
  br label %11

11:                                               ; preds = %7, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %7 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsMonochromePixel(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !50
  switch i16 %3, label %11 [
    i16 0, label %4
    i16 -1, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !52
  %7 = icmp eq i16 %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i16, ptr %0, align 2, !tbaa !53
  %10 = icmp eq i16 %3, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %1, %8, %4
  br label %12

12:                                               ; preds = %8, %11
  %13 = phi i32 [ 0, %11 ], [ 1, %8 ]
  ret i32 %13
}

; Function Attrs: optsize
declare hidden i32 @SyncImagePixelCache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsOpaqueImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 890, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #14
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !47
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #14
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !26
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !24
  br label %21

21:                                               ; preds = %18, %39
  %22 = phi i64 [ %20, %18 ], [ %27, %39 ]
  %23 = phi i64 [ 0, %18 ], [ %40, %39 ]
  %24 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %14, i64 noundef 0, i64 noundef %23, i64 noundef %22, i64 noundef 1, ptr noundef %1) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = load i64, ptr %19, align 8, !tbaa !24
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26, %35
  %30 = phi i64 [ %37, %35 ], [ 0, %26 ]
  %31 = phi ptr [ %36, %35 ], [ %24, %26 ]
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %31, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !59
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %31, i64 1
  %37 = add nuw nsw i64 %30, 1
  %38 = icmp eq i64 %37, %27
  br i1 %38, label %39, label %29, !llvm.loop !69

39:                                               ; preds = %35, %26
  %40 = add nuw nsw i64 %23, 1
  %41 = load i64, ptr %15, align 8, !tbaa !26
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %21, label %43, !llvm.loop !70

43:                                               ; preds = %39, %21, %29, %13
  %44 = phi i64 [ 0, %13 ], [ %23, %29 ], [ %40, %39 ], [ %23, %21 ]
  %45 = tail call ptr @DestroyCacheView(ptr noundef %14) #14
  %46 = load i64, ptr %15, align 8, !tbaa !26
  %47 = icmp sge i64 %44, %46
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %9, %43
  %50 = phi i32 [ %48, %43 ], [ 1, %9 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetImageDepth(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @SetImageChannelDepth(ptr noundef %0, i32 noundef 47, i64 noundef %1) #16, !range !51
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetImageChannelDepth(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 980, ptr noundef nonnull @.str.6) #14
  br label %10

10:                                               ; preds = %8, %3
  %11 = icmp ugt i64 %2, 15
  br i1 %11, label %172, label %12

12:                                               ; preds = %10
  %13 = tail call fastcc i64 @GetQuantumRange(i64 noundef %2) #16
  %14 = load i32, ptr %0, align 8, !tbaa !46
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %18 = load i64, ptr %17, align 8, !tbaa !48
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  %21 = and i32 %1, 1
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %24 = and i32 %1, 2
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %1, 4
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %1, 8
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %20, %67
  %31 = phi i64 [ 0, %20 ], [ %68, %67 ]
  br i1 %22, label %40, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %23, align 8, !tbaa !49
  %34 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 %31, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !50
  %36 = uitofp i16 %35 to float
  %37 = tail call fastcc zeroext i16 @ClampPixel(float noundef %36) #16
  %38 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %37, i64 noundef %13) #16
  %39 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %38, i64 noundef %13) #16
  store i16 %39, ptr %34, align 2, !tbaa !50
  br label %40

40:                                               ; preds = %32, %30
  br i1 %25, label %49, label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr %23, align 8, !tbaa !49
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 %31, i32 1
  %44 = load i16, ptr %43, align 2, !tbaa !52
  %45 = uitofp i16 %44 to float
  %46 = tail call fastcc zeroext i16 @ClampPixel(float noundef %45) #16
  %47 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %46, i64 noundef %13) #16
  %48 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %47, i64 noundef %13) #16
  store i16 %48, ptr %43, align 2, !tbaa !52
  br label %49

49:                                               ; preds = %41, %40
  br i1 %27, label %58, label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %23, align 8, !tbaa !49
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 %31
  %53 = load i16, ptr %52, align 2, !tbaa !53
  %54 = uitofp i16 %53 to float
  %55 = tail call fastcc zeroext i16 @ClampPixel(float noundef %54) #16
  %56 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %55, i64 noundef %13) #16
  %57 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %56, i64 noundef %13) #16
  store i16 %57, ptr %52, align 2, !tbaa !53
  br label %58

58:                                               ; preds = %50, %49
  br i1 %29, label %67, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr %23, align 8, !tbaa !49
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 %31, i32 3
  %62 = load i16, ptr %61, align 2, !tbaa !59
  %63 = uitofp i16 %62 to float
  %64 = tail call fastcc zeroext i16 @ClampPixel(float noundef %63) #16
  %65 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %64, i64 noundef %13) #16
  %66 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %65, i64 noundef %13) #16
  store i16 %66, ptr %61, align 2, !tbaa !59
  br label %67

67:                                               ; preds = %58, %59
  %68 = add nuw nsw i64 %31, 1
  %69 = icmp eq i64 %68, %18
  br i1 %69, label %70, label %30, !llvm.loop !71

70:                                               ; preds = %67, %16, %12
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %72 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %71) #14
  %73 = tail call dereferenceable_or_null(131072) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 2) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #13
  call void @GetExceptionInfo(ptr noundef nonnull %4) #14
  %76 = tail call ptr @__errno_location() #18
  %77 = load i32, ptr %76, align 4, !tbaa !29
  %78 = call ptr @GetExceptionMessage(i32 noundef %77) #14
  %79 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1032, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %78) #14
  %80 = call ptr @DestroyString(ptr noundef %78) #14
  call void @CatchException(ptr noundef nonnull %4) #14
  %81 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #19
  unreachable

82:                                               ; preds = %97
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %84 = load i64, ptr %83, align 8, !tbaa !26
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %169

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %88 = and i32 %1, 1
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %1, 2
  %91 = icmp eq i32 %90, 0
  %92 = and i32 %1, 4
  %93 = icmp eq i32 %92, 0
  %94 = and i32 %1, 8
  %95 = icmp eq i32 %94, 0
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  br label %105

97:                                               ; preds = %70, %97
  %98 = phi i64 [ %103, %97 ], [ 0, %70 ]
  %99 = trunc i64 %98 to i16
  %100 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %99, i64 noundef %13) #16
  %101 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %100, i64 noundef %13) #16
  %102 = getelementptr inbounds i16, ptr %73, i64 %98
  store i16 %101, ptr %102, align 2, !tbaa !39
  %103 = add nuw nsw i64 %98, 1
  %104 = icmp eq i64 %103, 65536
  br i1 %104, label %82, label %97, !llvm.loop !72

105:                                              ; preds = %86, %160
  %106 = phi i64 [ 0, %86 ], [ %162, %160 ]
  %107 = phi i32 [ 1, %86 ], [ %161, %160 ]
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %160, label %109

109:                                              ; preds = %105
  %110 = load i64, ptr %87, align 8, !tbaa !24
  %111 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %72, i64 noundef 0, i64 noundef %106, i64 noundef %110, i64 noundef 1, ptr noundef nonnull %71) #15
  %112 = icmp eq ptr %111, null
  br i1 %112, label %160, label %113

113:                                              ; preds = %109
  %114 = load i64, ptr %87, align 8, !tbaa !24
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %156

116:                                              ; preds = %113, %152
  %117 = phi ptr [ %153, %152 ], [ %111, %113 ]
  %118 = phi i64 [ %154, %152 ], [ 0, %113 ]
  br i1 %89, label %126, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %121 = load i16, ptr %120, align 2, !tbaa !50
  %122 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %121) #16, !range !58
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds i16, ptr %73, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !39
  store i16 %125, ptr %120, align 2, !tbaa !50
  br label %126

126:                                              ; preds = %119, %116
  br i1 %91, label %134, label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  %129 = load i16, ptr %128, align 2, !tbaa !52
  %130 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %129) #16, !range !58
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds i16, ptr %73, i64 %131
  %133 = load i16, ptr %132, align 2, !tbaa !39
  store i16 %133, ptr %128, align 2, !tbaa !52
  br label %134

134:                                              ; preds = %127, %126
  br i1 %93, label %141, label %135

135:                                              ; preds = %134
  %136 = load i16, ptr %117, align 2, !tbaa !53
  %137 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %136) #16, !range !58
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds i16, ptr %73, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !39
  store i16 %140, ptr %117, align 2, !tbaa !53
  br label %141

141:                                              ; preds = %135, %134
  br i1 %95, label %152, label %142

142:                                              ; preds = %141
  %143 = load i32, ptr %96, align 8, !tbaa !47
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 3
  %147 = load i16, ptr %146, align 2, !tbaa !59
  %148 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %147) #16, !range !58
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds i16, ptr %73, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !39
  store i16 %151, ptr %146, align 2, !tbaa !59
  br label %152

152:                                              ; preds = %145, %142, %141
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 1
  %154 = add nuw nsw i64 %118, 1
  %155 = icmp eq i64 %154, %114
  br i1 %155, label %156, label %116, !llvm.loop !73

156:                                              ; preds = %152, %113
  %157 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %72, ptr noundef nonnull %71) #15
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i32
  br label %160

160:                                              ; preds = %156, %109, %105
  %161 = phi i32 [ 0, %105 ], [ 0, %109 ], [ %159, %156 ]
  %162 = add nuw nsw i64 %106, 1
  %163 = load i64, ptr %83, align 8, !tbaa !26
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %105, label %165, !llvm.loop !74

165:                                              ; preds = %160
  %166 = icmp eq i32 %161, 0
  %167 = tail call ptr @DestroyCacheView(ptr noundef %72) #14
  %168 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %73) #14
  br i1 %166, label %174, label %172

169:                                              ; preds = %82
  %170 = tail call ptr @DestroyCacheView(ptr noundef %72) #14
  %171 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %73) #14
  br label %172

172:                                              ; preds = %165, %169, %10
  %173 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  store i64 %2, ptr %173, align 8, !tbaa !63
  br label %174

174:                                              ; preds = %172, %165
  %175 = phi i32 [ 0, %165 ], [ 1, %172 ]
  ret i32 %175
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampPixel(float noundef %0) unnamed_addr #9 {
  %2 = fptoui float %0 to i16
  ret i16 %2
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetImageType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1178, ptr noundef nonnull @.str.6) #14
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call ptr @AcquireImageInfo() #14
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 78
  %11 = load i32, ptr %10, align 4, !tbaa !75
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %9, i64 0, i32 27
  store i32 %11, ptr %12, align 8, !tbaa !76
  %13 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @SetImageOption(ptr noundef nonnull %9, ptr noundef nonnull @.str.7, ptr noundef nonnull %13) #14
  br label %17

17:                                               ; preds = %15, %8
  switch i32 %1, label %18 [
    i32 1, label %20
    i32 2, label %39
    i32 3, label %48
    i32 4, label %61
    i32 11, label %83
    i32 5, label %101
    i32 6, label %119
    i32 7, label %135
    i32 8, label %155
    i32 9, label %175
  ]

18:                                               ; preds = %17
  %19 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %9) #14
  br label %203

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %22 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef nonnull %21) #16, !range !51
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #14
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ 1, %20 ]
  %28 = tail call i32 @NormalizeImage(ptr noundef nonnull %0) #14
  %29 = tail call i32 @IsMonochromeImage(ptr noundef nonnull %0, ptr noundef nonnull %21) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %9) #14
  store i64 2, ptr %32, align 8, !tbaa !78
  %33 = getelementptr inbounds %struct._QuantizeInfo, ptr %32, i64 0, i32 3
  store i32 2, ptr %33, align 4, !tbaa !80
  %34 = tail call i32 @QuantizeImage(ptr noundef nonnull %32, ptr noundef nonnull %0) #14
  %35 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %32) #14
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i32 [ %34, %31 ], [ %27, %26 ]
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %38, align 8, !tbaa !47
  br label %199

39:                                               ; preds = %17
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %41 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef nonnull %40) #16, !range !51
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #14
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %44, %43 ], [ 1, %39 ]
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %47, align 8, !tbaa !47
  br label %199

48:                                               ; preds = %17
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %50 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef nonnull %49) #16, !range !51
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #14
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %53, %52 ], [ 1, %48 ]
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !47
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %199

59:                                               ; preds = %54
  %60 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #14
  br label %199

61:                                               ; preds = %17
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !40
  %64 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %63) #16, !range !51
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #14
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %67, %66 ], [ 1, %61 ]
  %70 = load i32, ptr %0, align 8, !tbaa !46
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %74 = load i64, ptr %73, align 8, !tbaa !48
  %75 = icmp ugt i64 %74, 256
  br i1 %75, label %76, label %80

76:                                               ; preds = %72, %68
  %77 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %9) #14
  store i64 256, ptr %77, align 8, !tbaa !78
  %78 = tail call i32 @QuantizeImage(ptr noundef nonnull %77, ptr noundef nonnull %0) #14
  %79 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %77) #14
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i32 [ %78, %76 ], [ %69, %72 ]
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %82, align 8, !tbaa !47
  br label %199

83:                                               ; preds = %17
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !40
  %86 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %85) #16, !range !51
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #14
  br label %90

90:                                               ; preds = %88, %83
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !47
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #14
  br label %96

96:                                               ; preds = %94, %90
  %97 = tail call i32 @BilevelImageChannel(ptr noundef nonnull %0, i32 noundef 8, double noundef 3.276750e+04) #14
  %98 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %9) #14
  %99 = tail call i32 @QuantizeImage(ptr noundef %98, ptr noundef nonnull %0) #14
  %100 = tail call ptr @DestroyQuantizeInfo(ptr noundef %98) #14
  br label %199

101:                                              ; preds = %17
  %102 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !40
  %104 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %103) #16, !range !51
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #14
  br label %108

108:                                              ; preds = %106, %101
  %109 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %110 = load i32, ptr %109, align 8, !tbaa !47
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #14
  br label %114

114:                                              ; preds = %112, %108
  %115 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %9) #14
  %116 = getelementptr inbounds %struct._QuantizeInfo, ptr %115, i64 0, i32 3
  store i32 3, ptr %116, align 4, !tbaa !80
  %117 = tail call i32 @QuantizeImage(ptr noundef %115, ptr noundef nonnull %0) #14
  %118 = tail call ptr @DestroyQuantizeInfo(ptr noundef %115) #14
  br label %199

119:                                              ; preds = %17
  %120 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !40
  %122 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %121) #16, !range !51
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #14
  br label %126

126:                                              ; preds = %124, %119
  %127 = phi i32 [ %125, %124 ], [ 1, %119 ]
  %128 = load i32, ptr %0, align 8, !tbaa !46
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #14
  br label %132

132:                                              ; preds = %130, %126
  %133 = phi i32 [ %131, %130 ], [ %127, %126 ]
  %134 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %134, align 8, !tbaa !47
  br label %199

135:                                              ; preds = %17
  %136 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !40
  %138 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %137) #16, !range !51
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #14
  br label %142

142:                                              ; preds = %140, %135
  %143 = phi i32 [ %141, %140 ], [ 1, %135 ]
  %144 = load i32, ptr %0, align 8, !tbaa !46
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #14
  br label %148

148:                                              ; preds = %146, %142
  %149 = phi i32 [ %147, %146 ], [ %143, %142 ]
  %150 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %151 = load i32, ptr %150, align 8, !tbaa !47
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %199

153:                                              ; preds = %148
  %154 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #14
  br label %199

155:                                              ; preds = %17
  %156 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !40
  %158 = icmp eq i32 %157, 12
  br i1 %158, label %166, label %159

159:                                              ; preds = %155
  %160 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %157) #16, !range !51
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #14
  br label %164

164:                                              ; preds = %162, %159
  %165 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 12) #14
  br label %166

166:                                              ; preds = %164, %155
  %167 = phi i32 [ %165, %164 ], [ 1, %155 ]
  %168 = load i32, ptr %0, align 8, !tbaa !46
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #14
  br label %172

172:                                              ; preds = %170, %166
  %173 = phi i32 [ %171, %170 ], [ %167, %166 ]
  %174 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %174, align 8, !tbaa !47
  br label %199

175:                                              ; preds = %17
  %176 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !40
  %178 = icmp eq i32 %177, 12
  br i1 %178, label %186, label %179

179:                                              ; preds = %175
  %180 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %177) #16, !range !51
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #14
  br label %184

184:                                              ; preds = %182, %179
  %185 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 12) #14
  br label %186

186:                                              ; preds = %184, %175
  %187 = phi i32 [ %185, %184 ], [ 1, %175 ]
  %188 = load i32, ptr %0, align 8, !tbaa !46
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %192, label %190

190:                                              ; preds = %186
  %191 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #14
  br label %192

192:                                              ; preds = %190, %186
  %193 = phi i32 [ %191, %190 ], [ %187, %186 ]
  %194 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %195 = load i32, ptr %194, align 8, !tbaa !47
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #14
  br label %199

199:                                              ; preds = %192, %197, %148, %153, %54, %59, %172, %132, %114, %96, %80, %45, %36
  %200 = phi i32 [ %193, %197 ], [ %193, %192 ], [ %173, %172 ], [ %149, %153 ], [ %149, %148 ], [ %133, %132 ], [ %117, %114 ], [ %99, %96 ], [ %81, %80 ], [ %55, %59 ], [ %55, %54 ], [ %46, %45 ], [ %37, %36 ]
  %201 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %9) #14
  %202 = icmp eq i32 %200, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %18, %199
  %204 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 %1, ptr %204, align 8, !tbaa !64
  br label %205

205:                                              ; preds = %199, %203
  %206 = phi i32 [ 1, %203 ], [ 0, %199 ]
  ret i32 %206
}

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageOption(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @TransformImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @NormalizeImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireQuantizeInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @QuantizeImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyQuantizeInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BilevelImageChannel(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { hot nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize allocsize(0,1) }
attributes #18 = { nounwind optsize willreturn memory(none) }
attributes #19 = { noreturn nounwind optsize }

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
!25 = !{!17, !10, i64 16}
!26 = !{!6, !10, i64 48}
!27 = !{!17, !10, i64 24}
!28 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 16, i64 8, !30, i64 24, i64 8, !31, i64 32, i64 4, !32, i64 36, i64 4, !32, i64 40, i64 4, !32, i64 44, i64 4, !32, i64 48, i64 4, !32}
!29 = !{!7, !7, i64 0}
!30 = !{!14, !14, i64 0}
!31 = !{!10, !10, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !8, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = !{!17, !10, i64 0}
!38 = !{!17, !10, i64 8}
!39 = !{!13, !13, i64 0}
!40 = !{!6, !7, i64 4}
!41 = !{!42, !33, i64 48}
!42 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !33, i64 32, !33, i64 36, !33, i64 40, !33, i64 44, !33, i64 48}
!43 = distinct !{!43, !35, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!6, !7, i64 0}
!47 = !{!6, !7, i64 32}
!48 = !{!6, !10, i64 64}
!49 = !{!6, !11, i64 72}
!50 = !{!12, !13, i64 4}
!51 = !{i32 0, i32 2}
!52 = !{!12, !13, i64 2}
!53 = !{!12, !13, i64 0}
!54 = distinct !{!54, !35}
!55 = distinct !{!55, !35}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, !35}
!58 = !{i32 0, i32 65536}
!59 = !{!12, !13, i64 6}
!60 = distinct !{!60, !35}
!61 = distinct !{!61, !35}
!62 = distinct !{!62, !35}
!63 = !{!6, !10, i64 56}
!64 = !{!6, !7, i64 13184}
!65 = distinct !{!65, !35}
!66 = distinct !{!66, !35}
!67 = distinct !{!67, !35}
!68 = distinct !{!68, !35}
!69 = distinct !{!69, !35}
!70 = distinct !{!70, !35}
!71 = distinct !{!71, !35}
!72 = distinct !{!72, !35}
!73 = distinct !{!73, !35}
!74 = distinct !{!74, !35}
!75 = !{!6, !7, i64 13188}
!76 = !{!77, !7, i64 184}
!77 = !{!"_ImageInfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !14, i64 144, !14, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !7, i64 184, !7, i64 188, !10, i64 192, !7, i64 200, !7, i64 204, !7, i64 208, !10, i64 216, !7, i64 224, !7, i64 228, !11, i64 232, !11, i64 240, !7, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !10, i64 320, !8, i64 328, !8, i64 4424, !8, i64 8520, !8, i64 12616, !7, i64 16712, !11, i64 16720, !10, i64 16728, !10, i64 16736, !12, i64 16744, !10, i64 16752, !7, i64 16760, !12, i64 16764, !11, i64 16776, !7, i64 16784}
!78 = !{!79, !10, i64 0}
!79 = !{!"_QuantizeInfo", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !10, i64 32, !7, i64 40}
!80 = !{!79, !7, i64 20}
