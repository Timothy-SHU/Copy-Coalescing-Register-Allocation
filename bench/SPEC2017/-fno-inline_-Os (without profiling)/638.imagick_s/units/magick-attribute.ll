; ModuleID = 'magick/attribute.c'
source_filename = "magick/attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_GetImageBoundingBox.var = common global [8 x i32] zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"GeometryDoesNotContainImage\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"dither\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetImageBoundingBox(ptr dead_on_unwind noalias writable sret(%struct._RectangleInfo) align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x %struct._MagickPixelPacket], align 16
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %4, align 8, !tbaa !6
  store ptr %2, ptr %5, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #6
  %11 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 150, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #18
  br label %17

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %0, i64 0, i32 2
  %20 = load <2 x i64>, ptr %18, align 8, !tbaa !26
  store <2 x i64> %20, ptr %19, align 8, !tbaa !26
  call void @GetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %8) #18
  %21 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %1, ptr noundef %2) #18
  store ptr %21, ptr %6, align 8, !tbaa !6
  %22 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %2) #19
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call ptr @DestroyCacheView(ptr noundef %21) #18
  br label %75

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %28 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #18
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %22, ptr noundef %28, ptr noundef nonnull %8) #20
  %29 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1
  call void @GetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %29) #18
  %30 = load i64, ptr %18, align 8, !tbaa !27
  %31 = add nsw i64 %30, -1
  %32 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef %31, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %2) #19
  %33 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #18
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef %32, ptr noundef %33, ptr noundef nonnull %29) #20
  %34 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2
  call void @GetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %34) #18
  %35 = load i64, ptr %27, align 8, !tbaa !28
  %36 = add nsw i64 %35, -1
  %37 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef 0, i64 noundef %36, i64 noundef 1, i64 noundef 1, ptr noundef %2) #19
  %38 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #18
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef %37, ptr noundef %38, ptr noundef nonnull %34) #20
  store i32 1, ptr %7, align 4, !tbaa !29
  call void @GetMagickPixelPacket(ptr noundef nonnull %1, ptr noundef nonnull %9) #18
  %39 = load i64, ptr %27, align 8, !tbaa !28
  %40 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %41 = shl i64 %40, 5
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %26
  %44 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %1) #18
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %1) #18
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %55

51:                                               ; preds = %46, %43, %26
  %52 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %53 = icmp ult i64 %52, 2
  %54 = select i1 %53, i64 1, i64 2
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi i64 [ %50, %49 ], [ %54, %51 ]
  %57 = trunc i64 %56 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %10, i32 %57)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @GetImageBoundingBox.omp_outlined, ptr nonnull %4, ptr nonnull %7, ptr nonnull %0, ptr nonnull %6, ptr nonnull %5, ptr nonnull %9, ptr nonnull %8)
  %58 = load ptr, ptr %6, align 8, !tbaa !6
  %59 = call ptr @DestroyCacheView(ptr noundef %58) #18
  store ptr %59, ptr %6, align 8, !tbaa !6
  %60 = load <2 x i64>, ptr %0, align 8
  %61 = extractelement <2 x i64> %60, i64 0
  %62 = icmp eq i64 %61, 0
  %63 = extractelement <2 x i64> %60, i64 1
  %64 = icmp eq i64 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load ptr, ptr %5, align 8, !tbaa !6
  %68 = load ptr, ptr %4, align 8, !tbaa !6
  %69 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 53
  %70 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %67, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 245, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %69) #18
  br label %75

71:                                               ; preds = %55
  %72 = add <2 x i64> %60, <i64 1, i64 1>
  %73 = load <2 x i64>, ptr %19, align 8, !tbaa !26
  %74 = sub <2 x i64> %72, %73
  store <2 x i64> %74, ptr %0, align 8, !tbaa !26
  br label %75

75:                                               ; preds = %66, %71, %24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
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
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !30
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !31
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !33
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !30
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetImageBoundingBox.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull align 8 dereferenceable(32) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(168) %8) #5 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._MagickPixelPacket, align 8
  %15 = load ptr, ptr %2, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !28
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %139

20:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store i64 0, ptr %10, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  store i64 %18, ptr %11, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  store i64 1, ptr %12, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  store i32 0, ptr %13, align 4, !tbaa !29
  %21 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %22 = load i64, ptr %11, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %11, align 8, !tbaa !26
  %24 = load i64, ptr %10, align 8, !tbaa !26
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %138, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr %4, i64 8
  %28 = getelementptr inbounds i8, ptr %4, i64 16
  %29 = getelementptr inbounds i8, ptr %4, i64 24
  %30 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1
  %31 = getelementptr inbounds [3 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2
  br label %32

32:                                               ; preds = %26, %130
  %33 = phi i64 [ %23, %26 ], [ %136, %130 ]
  %34 = phi i64 [ %24, %26 ], [ %134, %130 ]
  %35 = icmp sgt i64 %34, %33
  br i1 %35, label %130, label %36

36:                                               ; preds = %32, %124
  %37 = phi i64 [ %125, %124 ], [ %34, %32 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #6
  %38 = load i32, ptr %3, align 4, !tbaa !29
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %124, label %40

40:                                               ; preds = %36
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_GetImageBoundingBox.var)
  %41 = load i64, ptr %4, align 8, !tbaa.struct !36
  %42 = load i64, ptr %27, align 8, !tbaa.struct !37
  %43 = load i64, ptr %28, align 8, !tbaa.struct !38
  %44 = load i64, ptr %29, align 8, !tbaa.struct !39
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_GetImageBoundingBox.var)
  %45 = load ptr, ptr %5, align 8, !tbaa !6
  %46 = load ptr, ptr %2, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !27
  %49 = load ptr, ptr %6, align 8, !tbaa !6
  %50 = call ptr @GetCacheViewVirtualPixels(ptr noundef %45, i64 noundef 0, i64 noundef %37, i64 noundef %48, i64 noundef 1, ptr noundef %49) #19
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %124

53:                                               ; preds = %40
  %54 = load ptr, ptr %5, align 8, !tbaa !6
  %55 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %54) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !40
  %56 = load ptr, ptr %2, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 7
  %58 = load i64, ptr %57, align 8, !tbaa !27
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %53, %95
  %61 = phi ptr [ %99, %95 ], [ %56, %53 ]
  %62 = phi i64 [ %98, %95 ], [ 0, %53 ]
  %63 = phi ptr [ %97, %95 ], [ %50, %53 ]
  %64 = phi i64 [ %82, %95 ], [ %41, %53 ]
  %65 = phi i64 [ %96, %95 ], [ %42, %53 ]
  %66 = phi i64 [ %75, %95 ], [ %43, %53 ]
  %67 = phi i64 [ %89, %95 ], [ %44, %53 ]
  %68 = getelementptr inbounds i16, ptr %55, i64 %62
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %61, ptr noundef nonnull %63, ptr noundef %68, ptr noundef nonnull %14) #20
  %69 = icmp slt i64 %62, %66
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %14, ptr noundef nonnull %8) #18
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i64 %62, i64 %66
  br label %74

74:                                               ; preds = %70, %60
  %75 = phi i64 [ %66, %60 ], [ %73, %70 ]
  %76 = icmp sgt i64 %62, %64
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %14, ptr noundef nonnull %30) #18
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i64 %62, i64 %64
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i64 [ %64, %74 ], [ %80, %77 ]
  %83 = icmp slt i64 %37, %67
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %14, ptr noundef nonnull %8) #18
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i64 %37, i64 %67
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i64 [ %67, %81 ], [ %87, %84 ]
  %90 = icmp sgt i64 %37, %65
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %14, ptr noundef nonnull %31) #18
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i64 %37, i64 %65
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i64 [ %65, %88 ], [ %94, %91 ]
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 1
  %98 = add nuw nsw i64 %62, 1
  %99 = load ptr, ptr %2, align 8, !tbaa !6
  %100 = getelementptr inbounds %struct._Image, ptr %99, i64 0, i32 7
  %101 = load i64, ptr %100, align 8, !tbaa !27
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %60, label %103, !llvm.loop !42

103:                                              ; preds = %95, %53
  %104 = phi i64 [ %44, %53 ], [ %89, %95 ]
  %105 = phi i64 [ %43, %53 ], [ %75, %95 ]
  %106 = phi i64 [ %42, %53 ], [ %96, %95 ]
  %107 = phi i64 [ %41, %53 ], [ %82, %95 ]
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_GetImageBoundingBox.var)
  %108 = load i64, ptr %28, align 8, !tbaa !44
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i64 %105, ptr %28, align 8, !tbaa !44
  br label %111

111:                                              ; preds = %110, %103
  %112 = load i64, ptr %29, align 8, !tbaa !45
  %113 = icmp slt i64 %104, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i64 %104, ptr %29, align 8, !tbaa !45
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i64, ptr %4, align 8, !tbaa !46
  %117 = icmp ugt i64 %107, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i64 %107, ptr %4, align 8, !tbaa !46
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i64, ptr %27, align 8, !tbaa !47
  %121 = icmp ugt i64 %106, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i64 %106, ptr %27, align 8, !tbaa !47
  br label %123

123:                                              ; preds = %122, %119
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_GetImageBoundingBox.var)
  br label %124

124:                                              ; preds = %36, %123, %52
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #6
  %125 = add nsw i64 %37, 1
  %126 = load i64, ptr %11, align 8, !tbaa !26
  %127 = icmp slt i64 %37, %126
  br i1 %127, label %36, label %128

128:                                              ; preds = %124
  %129 = load i64, ptr %10, align 8, !tbaa !26
  br label %130

130:                                              ; preds = %128, %32
  %131 = phi i64 [ %34, %32 ], [ %129, %128 ]
  %132 = phi i64 [ %33, %32 ], [ %126, %128 ]
  %133 = load i64, ptr %12, align 8, !tbaa !26
  %134 = add nsw i64 %133, %131
  store i64 %134, ptr %10, align 8, !tbaa !26
  %135 = add nsw i64 %133, %132
  %136 = call i64 @llvm.smin.i64(i64 %135, i64 %18)
  store i64 %136, ptr %11, align 8, !tbaa !26
  %137 = icmp sgt i64 %134, %136
  br i1 %137, label %138, label %32

138:                                              ; preds = %130, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  br label %139

139:                                              ; preds = %138, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #7

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare i32 @IsMagickColorSimilar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !48 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageDepth(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @GetImageChannelDepth(ptr noundef %0, i32 noundef 47, ptr noundef %1) #20
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @GetImageChannelDepth(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca %struct._ExceptionInfo, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct._ExceptionInfo, align 8
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !6
  store i32 %1, ptr %5, align 4, !tbaa !29
  store ptr %2, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %15 = load i32, ptr %14, align 8, !tbaa !10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 315, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #18
  br label %20

20:                                               ; preds = %17, %3
  %21 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %22 = tail call ptr @AcquireQuantumMemory(i64 noundef %21, i64 noundef 8) #21
  store ptr %22, ptr %9, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #6
  call void @GetExceptionInfo(ptr noundef nonnull %10) #18
  %25 = tail call ptr @__errno_location() #22
  %26 = load i32, ptr %25, align 4, !tbaa !29
  %27 = call ptr @GetExceptionMessage(i32 noundef %26) #18
  %28 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 320, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %27) #18
  %29 = call ptr @DestroyString(ptr noundef %27) #18
  call void @CatchException(ptr noundef nonnull %10) #18
  %30 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %10) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #23
  unreachable

31:                                               ; preds = %20
  store i32 1, ptr %8, align 4, !tbaa !29
  %32 = icmp sgt i64 %21, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %31
  %34 = add nuw i64 %21, 1
  %35 = and i64 %34, -2
  %36 = add nsw i64 %21, -1
  %37 = insertelement <2 x i64> poison, i64 %36, i64 0
  %38 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %39

39:                                               ; preds = %51, %33
  %40 = phi i64 [ 0, %33 ], [ %52, %51 ]
  %41 = phi <2 x i64> [ <i64 0, i64 1>, %33 ], [ %53, %51 ]
  %42 = icmp ule <2 x i64> %41, %38
  %43 = extractelement <2 x i1> %42, i64 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = getelementptr inbounds i64, ptr %22, i64 %40
  store i64 1, ptr %45, align 8, !tbaa !26
  br label %46

46:                                               ; preds = %44, %39
  %47 = extractelement <2 x i1> %42, i64 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = or disjoint i64 %40, 1
  %50 = getelementptr inbounds i64, ptr %22, i64 %49
  store i64 1, ptr %50, align 8, !tbaa !26
  br label %51

51:                                               ; preds = %48, %46
  %52 = add i64 %40, 2
  %53 = add <2 x i64> %41, <i64 2, i64 2>
  %54 = icmp eq i64 %52, %35
  br i1 %54, label %55, label %39, !llvm.loop !50

55:                                               ; preds = %51, %31
  %56 = load i32, ptr %0, align 8, !tbaa !53
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %95

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %60 = load i32, ptr %59, align 8, !tbaa !54
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  %63 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %64 = and i64 %63, 576460752303423487
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %78

74:                                               ; preds = %69, %66, %62
  %75 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %76 = icmp ult i64 %75, 2
  %77 = select i1 %76, i64 1, i64 2
  br label %78

78:                                               ; preds = %74, %72
  %79 = phi i64 [ %73, %72 ], [ %77, %74 ]
  %80 = trunc i64 %79 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %80)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @GetImageChannelDepth.omp_outlined, ptr nonnull %4, ptr nonnull %9, ptr nonnull %5)
  %81 = load ptr, ptr %9, align 8, !tbaa !6
  %82 = load i64, ptr %81, align 8, !tbaa !26
  %83 = icmp sgt i64 %21, 1
  br i1 %83, label %84, label %92

84:                                               ; preds = %78, %84
  %85 = phi i64 [ %90, %84 ], [ 1, %78 ]
  %86 = phi i64 [ %89, %84 ], [ %82, %78 ]
  %87 = getelementptr inbounds i64, ptr %81, i64 %85
  %88 = load i64, ptr %87, align 8, !tbaa !26
  %89 = call i64 @llvm.umax.i64(i64 %86, i64 %88)
  %90 = add nuw nsw i64 %85, 1
  %91 = icmp eq i64 %90, %21
  br i1 %91, label %92, label %84, !llvm.loop !55

92:                                               ; preds = %84, %78
  %93 = phi i64 [ %82, %78 ], [ %89, %84 ]
  %94 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %81) #18
  br label %165

95:                                               ; preds = %58, %55
  %96 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #18
  store ptr %96, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  %97 = tail call dereferenceable_or_null(524288) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #21
  store ptr %97, ptr %11, align 8, !tbaa !6
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #6
  call void @GetExceptionInfo(ptr noundef nonnull %12) #18
  %100 = tail call ptr @__errno_location() #22
  %101 = load i32, ptr %100, align 4, !tbaa !29
  %102 = call ptr @GetExceptionMessage(i32 noundef %101) #18
  %103 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 380, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %102) #18
  %104 = call ptr @DestroyString(ptr noundef %102) #18
  call void @CatchException(ptr noundef nonnull %12) #18
  %105 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %12) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #23
  unreachable

106:                                              ; preds = %95, %119
  %107 = phi i64 [ %123, %119 ], [ 0, %95 ]
  %108 = trunc i64 %107 to i16
  br label %109

109:                                              ; preds = %106, %116
  %110 = phi i64 [ 1, %106 ], [ %117, %116 ]
  %111 = tail call fastcc i64 @GetQuantumRange(i64 noundef %110) #20
  %112 = tail call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %108, i64 noundef %111) #20
  %113 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %112, i64 noundef %111) #20
  %114 = zext i16 %113 to i64
  %115 = icmp eq i64 %107, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = add nuw nsw i64 %110, 1
  %118 = icmp eq i64 %117, 16
  br i1 %118, label %119, label %109, !llvm.loop !56

119:                                              ; preds = %109, %116
  %120 = phi i64 [ %110, %109 ], [ 16, %116 ]
  %121 = and i64 %120, 4294967295
  %122 = getelementptr inbounds i64, ptr %97, i64 %107
  store i64 %121, ptr %122, align 8, !tbaa !26
  %123 = add nuw nsw i64 %107, 1
  %124 = icmp eq i64 %123, 65536
  br i1 %124, label %125, label %106, !llvm.loop !57

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %127 = load i64, ptr %126, align 8, !tbaa !28
  %128 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %129 = shl i64 %128, 5
  %130 = icmp ugt i64 %127, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %133 = icmp eq i32 %132, 3
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %143

139:                                              ; preds = %134, %131, %125
  %140 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %141 = icmp ult i64 %140, 2
  %142 = select i1 %141, i64 1, i64 2
  br label %143

143:                                              ; preds = %139, %137
  %144 = phi i64 [ %138, %137 ], [ %142, %139 ]
  %145 = trunc i64 %144 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %145)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @GetImageChannelDepth.omp_outlined.6, ptr nonnull %4, ptr nonnull %8, ptr nonnull %7, ptr nonnull %6, ptr nonnull %5, ptr nonnull %11, ptr nonnull %9)
  %146 = load ptr, ptr %7, align 8, !tbaa !6
  %147 = call ptr @DestroyCacheView(ptr noundef %146) #18
  store ptr %147, ptr %7, align 8, !tbaa !6
  %148 = load ptr, ptr %9, align 8, !tbaa !6
  %149 = load i64, ptr %148, align 8, !tbaa !26
  %150 = icmp sgt i64 %21, 1
  br i1 %150, label %151, label %159

151:                                              ; preds = %143, %151
  %152 = phi i64 [ %157, %151 ], [ 1, %143 ]
  %153 = phi i64 [ %156, %151 ], [ %149, %143 ]
  %154 = getelementptr inbounds i64, ptr %148, i64 %152
  %155 = load i64, ptr %154, align 8, !tbaa !26
  %156 = call i64 @llvm.umax.i64(i64 %153, i64 %155)
  %157 = add nuw nsw i64 %152, 1
  %158 = icmp eq i64 %157, %21
  br i1 %158, label %159, label %151, !llvm.loop !58

159:                                              ; preds = %151, %143
  %160 = phi i64 [ %149, %143 ], [ %156, %151 ]
  %161 = load ptr, ptr %11, align 8, !tbaa !6
  %162 = call ptr @RelinquishMagickMemory(ptr noundef %161) #18
  store ptr %162, ptr %11, align 8, !tbaa !6
  %163 = load ptr, ptr %9, align 8, !tbaa !6
  %164 = call ptr @RelinquishMagickMemory(ptr noundef %163) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  br label %165

165:                                              ; preds = %159, %92
  %166 = phi i64 [ %93, %92 ], [ %160, %159 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  ret i64 %166
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetImageChannelDepth.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %4) #5 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %2, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !59
  %13 = add nsw i64 %12, -1
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store i64 0, ptr %6, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store i64 %13, ptr %7, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  store i64 1, ptr %8, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 0, ptr %9, align 4, !tbaa !29
  %16 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %16, i32 33, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %8, i64 1, i64 4)
  %17 = load i64, ptr %7, align 8
  %18 = call i64 @llvm.smin.i64(i64 %17, i64 %13)
  store i64 %18, ptr %7, align 8, !tbaa !26
  %19 = load i64, ptr %6, align 8, !tbaa !26
  %20 = icmp sgt i64 %19, %18
  br i1 %20, label %83, label %21

21:                                               ; preds = %15, %75
  %22 = phi i64 [ %81, %75 ], [ %18, %15 ]
  %23 = phi i64 [ %79, %75 ], [ %19, %15 ]
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %75, label %25

25:                                               ; preds = %21, %69
  %26 = phi i64 [ %70, %69 ], [ %23, %21 ]
  %27 = call fastcc i32 @GetOpenMPThreadId() #20
  %28 = load ptr, ptr %3, align 8, !tbaa !6
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i64, ptr %28, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !26
  %32 = icmp ult i64 %31, 16
  br i1 %32, label %33, label %69

33:                                               ; preds = %25
  %34 = load i32, ptr %4, align 4, !tbaa !29
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 11
  %39 = and i32 %34, 2
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %34, 4
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %33, %66
  %44 = phi i64 [ %31, %33 ], [ %67, %66 ]
  %45 = call fastcc i64 @GetQuantumRange(i64 noundef %44) #20
  br i1 %36, label %52, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %38, align 8, !tbaa !60
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %47, i64 %26, i32 2
  %49 = load i16, ptr %48, align 2, !tbaa !61
  %50 = call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %49, i64 noundef %45) #20, !range !62
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %43, %46
  br i1 %40, label %59, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %38, align 8, !tbaa !60
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 %26, i32 1
  %56 = load i16, ptr %55, align 2, !tbaa !63
  %57 = call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %56, i64 noundef %45) #20, !range !62
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52, %53
  br i1 %42, label %69, label %60

60:                                               ; preds = %59
  %61 = load ptr, ptr %38, align 8, !tbaa !60
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 %26
  %63 = load i16, ptr %62, align 2, !tbaa !64
  %64 = call fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %63, i64 noundef %45) #20, !range !62
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60, %46, %53
  %67 = add i64 %44, 1
  store i64 %67, ptr %30, align 8, !tbaa !26
  %68 = icmp eq i64 %67, 16
  br i1 %68, label %69, label %43

69:                                               ; preds = %66, %60, %59, %25
  %70 = add nsw i64 %26, 1
  %71 = load i64, ptr %7, align 8, !tbaa !26
  %72 = icmp slt i64 %26, %71
  br i1 %72, label %25, label %73

73:                                               ; preds = %69
  %74 = load i64, ptr %6, align 8, !tbaa !26
  br label %75

75:                                               ; preds = %73, %21
  %76 = phi i64 [ %23, %21 ], [ %74, %73 ]
  %77 = phi i64 [ %22, %21 ], [ %71, %73 ]
  %78 = load i64, ptr %8, align 8, !tbaa !26
  %79 = add nsw i64 %78, %76
  store i64 %79, ptr %6, align 8, !tbaa !26
  %80 = add nsw i64 %78, %77
  %81 = call i64 @llvm.smin.i64(i64 %80, i64 %13)
  store i64 %81, ptr %7, align 8, !tbaa !26
  %82 = icmp sgt i64 %79, %81
  br i1 %82, label %83, label %21

83:                                               ; preds = %75, %15
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  br label %84

84:                                               ; preds = %83, %5
  ret void
}

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #12 {
  %1 = tail call i32 @omp_get_thread_num() #20
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @GetQuantumRange(i64 noundef %0) unnamed_addr #13 {
  %2 = add nsw i64 %0, -1
  %3 = shl i64 2, %2
  %4 = add i64 %3, -1
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @IsPixelAtDepth(i16 noundef zeroext %0, i64 noundef %1) unnamed_addr #13 {
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
define internal fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %0, i64 noundef %1) unnamed_addr #13 {
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
define internal fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %0, i64 noundef %1) unnamed_addr #13 {
  %3 = uitofp i64 %1 to float
  %4 = uitofp i16 %0 to float
  %5 = fmul float %4, %3
  %6 = fdiv float %5, 6.553500e+04
  %7 = fpext float %6 to double
  %8 = fadd double %7, 5.000000e-01
  %9 = fptoui double %8 to i64
  ret i64 %9
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GetImageChannelDepth.omp_outlined.6(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8) #5 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !28
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %161

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store i64 0, ptr %10, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  store i64 %17, ptr %11, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6
  store i64 1, ptr %12, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  store i32 0, ptr %13, align 4, !tbaa !29
  %20 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !26
  %23 = load i64, ptr %10, align 8, !tbaa !26
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %160, label %25

25:                                               ; preds = %19, %152
  %26 = phi i64 [ %158, %152 ], [ %22, %19 ]
  %27 = phi i64 [ %156, %152 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %152, label %29

29:                                               ; preds = %25, %146
  %30 = phi i64 [ %147, %146 ], [ %27, %25 ]
  %31 = call fastcc i32 @GetOpenMPThreadId() #20
  %32 = load i32, ptr %3, align 4, !tbaa !29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %146, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 8, !tbaa !6
  %36 = load ptr, ptr %2, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !27
  %39 = load ptr, ptr %5, align 8, !tbaa !6
  %40 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef 0, i64 noundef %30, i64 noundef %38, i64 noundef 1, ptr noundef %39) #19
  %41 = icmp eq ptr %40, null
  br i1 %41, label %146, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr %4, align 8, !tbaa !6
  %44 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %43) #18
  %45 = load ptr, ptr %2, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !27
  %48 = icmp sgt i64 %47, 0
  %49 = load ptr, ptr %8, align 8
  br i1 %48, label %52, label %50

50:                                               ; preds = %42
  %51 = sext i32 %31 to i64
  br label %140

52:                                               ; preds = %42
  %53 = load i32, ptr %6, align 4, !tbaa !29
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  %56 = load ptr, ptr %7, align 8
  %57 = sext i32 %31 to i64
  %58 = getelementptr inbounds i64, ptr %49, i64 %57
  %59 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 6
  %60 = insertelement <4 x i32> poison, i32 %53, i64 0
  %61 = shufflevector <4 x i32> %60, <4 x i32> poison, <4 x i32> zeroinitializer
  %62 = and <4 x i32> %61, <i32 32, i32 8, i32 4, i32 2>
  %63 = icmp eq <4 x i32> %62, zeroinitializer
  %64 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 1
  %65 = icmp eq ptr %44, null
  %66 = extractelement <4 x i1> %63, i64 0
  %67 = extractelement <4 x i1> %63, i64 1
  %68 = extractelement <4 x i1> %63, i64 2
  %69 = extractelement <4 x i1> %63, i64 3
  br label %70

70:                                               ; preds = %52, %135
  %71 = phi i64 [ 0, %52 ], [ %137, %135 ]
  %72 = phi ptr [ %40, %52 ], [ %136, %135 ]
  br i1 %55, label %83, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 2
  %75 = load i16, ptr %74, align 2, !tbaa !61
  %76 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %75) #20, !range !65
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds i64, ptr %56, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !26
  %80 = load i64, ptr %58, align 8, !tbaa !26
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i64 %79, ptr %58, align 8, !tbaa !26
  br label %83

83:                                               ; preds = %73, %82, %70
  br i1 %69, label %94, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 1
  %86 = load i16, ptr %85, align 2, !tbaa !63
  %87 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %86) #20, !range !65
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds i64, ptr %56, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !26
  %91 = load i64, ptr %58, align 8, !tbaa !26
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i64 %90, ptr %58, align 8, !tbaa !26
  br label %94

94:                                               ; preds = %84, %93, %83
  br i1 %68, label %104, label %95

95:                                               ; preds = %94
  %96 = load i16, ptr %72, align 2, !tbaa !64
  %97 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %96) #20, !range !65
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds i64, ptr %56, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !26
  %101 = load i64, ptr %58, align 8, !tbaa !26
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i64 %100, ptr %58, align 8, !tbaa !26
  br label %104

104:                                              ; preds = %95, %103, %94
  br i1 %67, label %118, label %105

105:                                              ; preds = %104
  %106 = load i32, ptr %59, align 8, !tbaa !54
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 3
  %110 = load i16, ptr %109, align 2, !tbaa !66
  %111 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %110) #20, !range !65
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds i64, ptr %56, i64 %112
  %114 = load i64, ptr %113, align 8, !tbaa !26
  %115 = load i64, ptr %58, align 8, !tbaa !26
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i64 %114, ptr %58, align 8, !tbaa !26
  br label %118

118:                                              ; preds = %108, %117, %105, %104
  br i1 %66, label %135, label %119

119:                                              ; preds = %118
  %120 = load i32, ptr %64, align 4, !tbaa !33
  %121 = icmp eq i32 %120, 12
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  br i1 %65, label %126, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds i16, ptr %44, i64 %71
  %125 = load i16, ptr %124, align 2, !tbaa !30
  br label %126

126:                                              ; preds = %122, %123
  %127 = phi i16 [ %125, %123 ], [ 0, %122 ]
  %128 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %127) #20, !range !65
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds i64, ptr %56, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !26
  %132 = load i64, ptr %58, align 8, !tbaa !26
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  store i64 %131, ptr %58, align 8, !tbaa !26
  br label %135

135:                                              ; preds = %126, %134, %119, %118
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1
  %137 = add nuw nsw i64 %71, 1
  %138 = load i64, ptr %46, align 8, !tbaa !27
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %70, label %140, !llvm.loop !67

140:                                              ; preds = %135, %50
  %141 = phi i64 [ %51, %50 ], [ %57, %135 ]
  %142 = getelementptr inbounds i64, ptr %49, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !26
  %144 = icmp eq i64 %143, 16
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %146

146:                                              ; preds = %140, %145, %34, %29
  %147 = add nsw i64 %30, 1
  %148 = load i64, ptr %11, align 8, !tbaa !26
  %149 = icmp slt i64 %30, %148
  br i1 %149, label %29, label %150

150:                                              ; preds = %146
  %151 = load i64, ptr %10, align 8, !tbaa !26
  br label %152

152:                                              ; preds = %150, %25
  %153 = phi i64 [ %27, %25 ], [ %151, %150 ]
  %154 = phi i64 [ %26, %25 ], [ %148, %150 ]
  %155 = load i64, ptr %12, align 8, !tbaa !26
  %156 = add nsw i64 %155, %153
  store i64 %156, ptr %10, align 8, !tbaa !26
  %157 = add nsw i64 %155, %154
  %158 = call i64 @llvm.smin.i64(i64 %157, i64 %17)
  store i64 %158, ptr %11, align 8, !tbaa !26
  %159 = icmp sgt i64 %156, %158
  br i1 %159, label %160, label %25

160:                                              ; preds = %152, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  br label %161

161:                                              ; preds = %160, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @ScaleQuantumToMap(i16 noundef zeroext %0) unnamed_addr #13 {
  %2 = zext i16 %0 to i32
  ret i32 %2
}

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetImageQuantumDepth(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %4 = load i64, ptr %3, align 8, !tbaa !68
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
  %17 = tail call fastcc double @MagickMin(double noundef %16) #20
  %18 = fptoui double %17 to i64
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i64 [ %18, %15 ], [ %13, %12 ]
  ret i64 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0) unnamed_addr #13 {
  %2 = fcmp olt double %0, 1.600000e+01
  %3 = select i1 %2, double %0, double 1.600000e+01
  ret double %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetImageType(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !33
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !54
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 8, i32 9
  br label %39

18:                                               ; preds = %9
  %19 = tail call i32 @IsMonochromeImage(ptr noundef nonnull %0, ptr noundef %1) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef %1) #20, !range !62
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !54
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 2, i32 3
  br label %39

29:                                               ; preds = %21
  %30 = tail call i32 @IsPaletteImage(ptr noundef nonnull %0, ptr noundef %1) #18
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !54
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
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 807, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %11 = load i32, ptr %10, align 8, !tbaa !69
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %58, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !33
  %16 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %15) #20, !range !62
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %15) #20, !range !62
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %18, %13
  %22 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #18
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !28
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !27
  br label %29

29:                                               ; preds = %26, %46
  %30 = phi i64 [ %28, %26 ], [ %35, %46 ]
  %31 = phi i64 [ 0, %26 ], [ %47, %46 ]
  %32 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %22, i64 noundef 0, i64 noundef %31, i64 noundef %30, i64 noundef 1, ptr noundef %1) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = load i64, ptr %27, align 8, !tbaa !27
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34, %42
  %38 = phi ptr [ %43, %42 ], [ %32, %34 ]
  %39 = phi i64 [ %44, %42 ], [ 0, %34 ]
  %40 = tail call fastcc i32 @IsMonochromePixel(ptr noundef nonnull %38) #20, !range !62
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 1
  %44 = add nuw nsw i64 %39, 1
  %45 = icmp eq i64 %44, %35
  br i1 %45, label %46, label %37, !llvm.loop !70

46:                                               ; preds = %42, %34
  %47 = add nuw nsw i64 %31, 1
  %48 = load i64, ptr %23, align 8, !tbaa !28
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %29, label %52, !llvm.loop !71

50:                                               ; preds = %37
  %51 = tail call ptr @DestroyCacheView(ptr noundef %22) #18
  br label %58

52:                                               ; preds = %29, %46, %21
  %53 = tail call ptr @DestroyCacheView(ptr noundef %22) #18
  store i32 2, ptr %14, align 4, !tbaa !33
  %54 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef %1) #18
  %55 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef %1) #18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 1, ptr %10, align 8, !tbaa !69
  br label %58

58:                                               ; preds = %52, %18, %9, %57, %50
  %59 = phi i32 [ 0, %50 ], [ 1, %57 ], [ 1, %9 ], [ 0, %18 ], [ %54, %52 ]
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @IsGrayImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 716, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %11 = load i32, ptr %10, align 8, !tbaa !69
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %75, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !33
  %17 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %16) #20, !range !62
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %16) #20, !range !62
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %75, label %22

22:                                               ; preds = %19, %14
  %23 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #18
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !28
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !27
  br label %30

30:                                               ; preds = %27, %56
  %31 = phi i64 [ %29, %27 ], [ %37, %56 ]
  %32 = phi i64 [ 0, %27 ], [ %58, %56 ]
  %33 = phi i32 [ 1, %27 ], [ %57, %56 ]
  %34 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %23, i64 noundef 0, i64 noundef %32, i64 noundef %31, i64 noundef 1, ptr noundef %1) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %30
  %37 = load i64, ptr %28, align 8, !tbaa !27
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36, %51
  %40 = phi i64 [ %54, %51 ], [ 0, %36 ]
  %41 = phi ptr [ %53, %51 ], [ %34, %36 ]
  %42 = phi i32 [ %52, %51 ], [ %33, %36 ]
  %43 = tail call fastcc i32 @IsGrayPixel(ptr noundef nonnull %41) #20, !range !62
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %39
  %46 = icmp eq i32 %42, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = tail call fastcc i32 @IsMonochromePixel(ptr noundef nonnull %41) #20, !range !62
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 2, i32 1
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i32 [ 2, %45 ], [ %50, %47 ]
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 1
  %54 = add nuw nsw i64 %40, 1
  %55 = icmp eq i64 %54, %37
  br i1 %55, label %56, label %39, !llvm.loop !72

56:                                               ; preds = %51, %36
  %57 = phi i32 [ %33, %36 ], [ %52, %51 ]
  %58 = add nuw nsw i64 %32, 1
  %59 = load i64, ptr %24, align 8, !tbaa !28
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %30, label %63, !llvm.loop !73

61:                                               ; preds = %39
  %62 = tail call ptr @DestroyCacheView(ptr noundef %23) #18
  br label %75

63:                                               ; preds = %56, %30, %22
  %64 = phi i32 [ 1, %22 ], [ %33, %30 ], [ %57, %56 ]
  %65 = tail call ptr @DestroyCacheView(ptr noundef %23) #18
  store i32 2, ptr %15, align 4, !tbaa !33
  %66 = tail call i32 @SyncImagePixelCache(ptr noundef nonnull %0, ptr noundef %1) #18
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  store i32 %64, ptr %10, align 8, !tbaa !69
  %69 = icmp eq i32 %64, 2
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !54
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 3, ptr %10, align 8, !tbaa !69
  br label %75

75:                                               ; preds = %61, %9, %68, %70, %74, %63, %19
  %76 = phi i32 [ 1, %9 ], [ 0, %19 ], [ 0, %61 ], [ 0, %63 ], [ 1, %74 ], [ 1, %70 ], [ 1, %68 ]
  ret i32 %76
}

; Function Attrs: optsize
declare i32 @IsPaletteImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #13 {
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
define internal fastcc noundef i32 @IssRGBCompatibleColorspace(i32 noundef %0) unnamed_addr #13 {
  switch i32 %0, label %2 [
    i32 29, label %4
    i32 13, label %4
    i32 3, label %4
    i32 1, label %4
  ]

2:                                                ; preds = %1
  %3 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %0) #20, !range !62
  br label %4

4:                                                ; preds = %2, %1, %1, %1, %1
  %5 = phi i32 [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ %3, %2 ]
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsGrayPixel(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !61
  %4 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !63
  %6 = icmp eq i16 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i16, ptr %0, align 2, !tbaa !64
  %9 = icmp eq i16 %3, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %1
  br label %11

11:                                               ; preds = %7, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %7 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsMonochromePixel(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !61
  switch i16 %3, label %11 [
    i16 0, label %4
    i16 -1, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !63
  %7 = icmp eq i16 %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i16, ptr %0, align 2, !tbaa !64
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
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 890, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !54
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #18
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !28
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !27
  br label %21

21:                                               ; preds = %18, %39
  %22 = phi i64 [ %20, %18 ], [ %27, %39 ]
  %23 = phi i64 [ 0, %18 ], [ %40, %39 ]
  %24 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %14, i64 noundef 0, i64 noundef %23, i64 noundef %22, i64 noundef 1, ptr noundef %1) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = load i64, ptr %19, align 8, !tbaa !27
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26, %35
  %30 = phi i64 [ %37, %35 ], [ 0, %26 ]
  %31 = phi ptr [ %36, %35 ], [ %24, %26 ]
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %31, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !66
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %31, i64 1
  %37 = add nuw nsw i64 %30, 1
  %38 = icmp eq i64 %37, %27
  br i1 %38, label %39, label %29, !llvm.loop !74

39:                                               ; preds = %35, %26
  %40 = add nuw nsw i64 %23, 1
  %41 = load i64, ptr %15, align 8, !tbaa !28
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %21, label %43, !llvm.loop !75

43:                                               ; preds = %39, %21, %29, %13
  %44 = phi i64 [ 0, %13 ], [ %23, %29 ], [ %40, %39 ], [ %23, %21 ]
  %45 = tail call ptr @DestroyCacheView(ptr noundef %14) #18
  %46 = load i64, ptr %15, align 8, !tbaa !28
  %47 = icmp sge i64 %44, %46
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %9, %43
  %50 = phi i32 [ %48, %43 ], [ 1, %9 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageDepth(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @SetImageChannelDepth(ptr noundef %0, i32 noundef 47, i64 noundef %1) #20
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SetImageChannelDepth(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct._ExceptionInfo, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !6
  store i32 %1, ptr %5, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 980, ptr noundef nonnull @.str.7) #18
  br label %18

18:                                               ; preds = %16, %3
  %19 = icmp ugt i64 %2, 15
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  store i64 %2, ptr %21, align 8, !tbaa !68
  br label %103

22:                                               ; preds = %18
  %23 = tail call fastcc i64 @GetQuantumRange(i64 noundef %2) #20
  store i64 %23, ptr %9, align 8, !tbaa !76
  %24 = load i32, ptr %0, align 8, !tbaa !53
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %28 = and i64 %27, 576460752303423487
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %42

38:                                               ; preds = %33, %30, %26
  %39 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %40 = icmp ult i64 %39, 2
  %41 = select i1 %40, i64 1, i64 2
  br label %42

42:                                               ; preds = %38, %36
  %43 = phi i64 [ %37, %36 ], [ %41, %38 ]
  %44 = trunc i64 %43 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %44)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @SetImageChannelDepth.omp_outlined, ptr nonnull %4, ptr nonnull %5, ptr nonnull %9)
  %45 = load ptr, ptr %4, align 8, !tbaa !6
  br label %46

46:                                               ; preds = %42, %22
  %47 = phi ptr [ %45, %42 ], [ %0, %22 ]
  store i32 1, ptr %8, align 4, !tbaa !29
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 58
  store ptr %48, ptr %7, align 8, !tbaa !6
  %49 = call ptr @AcquireAuthenticCacheView(ptr noundef %47, ptr noundef nonnull %48) #18
  store ptr %49, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  %50 = call dereferenceable_or_null(131072) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 2) #21
  store ptr %50, ptr %10, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load i64, ptr %9, align 8, !tbaa !76
  br label %61

54:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #6
  call void @GetExceptionInfo(ptr noundef nonnull %11) #18
  %55 = tail call ptr @__errno_location() #22
  %56 = load i32, ptr %55, align 4, !tbaa !29
  %57 = call ptr @GetExceptionMessage(i32 noundef %56) #18
  %58 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1032, i32 noundef 700, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %57) #18
  %59 = call ptr @DestroyString(ptr noundef %57) #18
  call void @CatchException(ptr noundef nonnull %11) #18
  %60 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %11) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #23
  unreachable

61:                                               ; preds = %52, %61
  %62 = phi i64 [ 0, %52 ], [ %67, %61 ]
  %63 = trunc i64 %62 to i16
  %64 = call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %63, i64 noundef %53) #20
  %65 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %64, i64 noundef %53) #20
  %66 = getelementptr inbounds i16, ptr %50, i64 %62
  store i16 %65, ptr %66, align 2, !tbaa !30
  %67 = add nuw nsw i64 %62, 1
  %68 = icmp eq i64 %67, 65536
  br i1 %68, label %69, label %61, !llvm.loop !77

69:                                               ; preds = %61
  %70 = load ptr, ptr %4, align 8, !tbaa !6
  %71 = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 8
  %72 = load i64, ptr %71, align 8, !tbaa !28
  %73 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %74 = shl i64 %73, 5
  %75 = icmp ugt i64 %72, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = load ptr, ptr %4, align 8, !tbaa !6
  %78 = call i32 @GetImagePixelCacheType(ptr noundef %77) #18
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %4, align 8, !tbaa !6
  %82 = call i32 @GetImagePixelCacheType(ptr noundef %81) #18
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %90

86:                                               ; preds = %80, %76, %69
  %87 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %88 = icmp ult i64 %87, 2
  %89 = select i1 %88, i64 1, i64 2
  br label %90

90:                                               ; preds = %86, %84
  %91 = phi i64 [ %85, %84 ], [ %89, %86 ]
  %92 = trunc i64 %91 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %92)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @SetImageChannelDepth.omp_outlined.8, ptr nonnull %4, ptr nonnull %8, ptr nonnull %6, ptr nonnull %7, ptr nonnull %5, ptr nonnull %10)
  %93 = load ptr, ptr %6, align 8, !tbaa !6
  %94 = call ptr @DestroyCacheView(ptr noundef %93) #18
  store ptr %94, ptr %6, align 8, !tbaa !6
  %95 = load ptr, ptr %10, align 8, !tbaa !6
  %96 = call ptr @RelinquishMagickMemory(ptr noundef %95) #18
  %97 = load i32, ptr %8, align 4, !tbaa !29
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = load ptr, ptr %4, align 8, !tbaa !6
  %101 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 9
  store i64 %2, ptr %101, align 8, !tbaa !68
  br label %102

102:                                              ; preds = %99, %90
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  br label %103

103:                                              ; preds = %102, %20
  %104 = phi i32 [ 1, %20 ], [ %97, %102 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  ret i32 %104
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SetImageChannelDepth.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4) #5 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %2, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct._Image, ptr %10, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !59
  %13 = add nsw i64 %12, -1
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %85

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  store i64 0, ptr %6, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  store i64 %13, ptr %7, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6
  store i64 1, ptr %8, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 0, ptr %9, align 4, !tbaa !29
  %16 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %16, i32 33, ptr nonnull %9, ptr nonnull %6, ptr nonnull %7, ptr nonnull %8, i64 1, i64 4)
  %17 = load i64, ptr %6, align 8, !tbaa !26
  %18 = load i64, ptr %7, align 8
  %19 = call i64 @llvm.smin.i64(i64 %18, i64 %13)
  store i64 %19, ptr %7, align 8, !tbaa !26
  %20 = icmp sgt i64 %17, %19
  br i1 %20, label %84, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %3, align 4, !tbaa !29
  %23 = insertelement <4 x i32> poison, i32 %22, i64 0
  %24 = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> zeroinitializer
  %25 = and <4 x i32> %24, <i32 8, i32 4, i32 2, i32 1>
  %26 = icmp eq <4 x i32> %25, zeroinitializer
  %27 = load i64, ptr %8, align 8, !tbaa !26
  %28 = extractelement <4 x i1> %26, i64 0
  %29 = extractelement <4 x i1> %26, i64 1
  %30 = extractelement <4 x i1> %26, i64 2
  %31 = extractelement <4 x i1> %26, i64 3
  br label %32

32:                                               ; preds = %21, %78
  %33 = phi i64 [ %19, %21 ], [ %81, %78 ]
  %34 = phi i64 [ %17, %21 ], [ %79, %78 ]
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 11
  %37 = load i64, ptr %4, align 8
  br label %38

38:                                               ; preds = %32, %75
  %39 = phi i64 [ %34, %32 ], [ %76, %75 ]
  br i1 %31, label %48, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %36, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 %39, i32 2
  %43 = load i16, ptr %42, align 2, !tbaa !61
  %44 = uitofp i16 %43 to float
  %45 = call fastcc zeroext i16 @ClampPixel(float noundef %44) #20
  %46 = call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %45, i64 noundef %37) #20
  %47 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %46, i64 noundef %37) #20
  store i16 %47, ptr %42, align 2, !tbaa !61
  br label %48

48:                                               ; preds = %40, %38
  br i1 %30, label %57, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %36, align 8, !tbaa !60
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %39, i32 1
  %52 = load i16, ptr %51, align 2, !tbaa !63
  %53 = uitofp i16 %52 to float
  %54 = call fastcc zeroext i16 @ClampPixel(float noundef %53) #20
  %55 = call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %54, i64 noundef %37) #20
  %56 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %55, i64 noundef %37) #20
  store i16 %56, ptr %51, align 2, !tbaa !63
  br label %57

57:                                               ; preds = %49, %48
  br i1 %29, label %66, label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr %36, align 8, !tbaa !60
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 %39
  %61 = load i16, ptr %60, align 2, !tbaa !64
  %62 = uitofp i16 %61 to float
  %63 = call fastcc zeroext i16 @ClampPixel(float noundef %62) #20
  %64 = call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %63, i64 noundef %37) #20
  %65 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %64, i64 noundef %37) #20
  store i16 %65, ptr %60, align 2, !tbaa !64
  br label %66

66:                                               ; preds = %58, %57
  br i1 %28, label %75, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %36, align 8, !tbaa !60
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %39, i32 3
  %70 = load i16, ptr %69, align 2, !tbaa !66
  %71 = uitofp i16 %70 to float
  %72 = call fastcc zeroext i16 @ClampPixel(float noundef %71) #20
  %73 = call fastcc i64 @ScaleQuantumToAny(i16 noundef zeroext %72, i64 noundef %37) #20
  %74 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %73, i64 noundef %37) #20
  store i16 %74, ptr %69, align 2, !tbaa !66
  br label %75

75:                                               ; preds = %67, %66
  %76 = add nsw i64 %39, 1
  %77 = icmp slt i64 %39, %33
  br i1 %77, label %38, label %78

78:                                               ; preds = %75
  %79 = add nsw i64 %27, %34
  %80 = add nsw i64 %27, %33
  %81 = call i64 @llvm.smin.i64(i64 %80, i64 %13)
  %82 = icmp sgt i64 %79, %81
  br i1 %82, label %83, label %32

83:                                               ; preds = %78
  store i64 %81, ptr %7, align 8, !tbaa !26
  store i64 %79, ptr %6, align 8, !tbaa !26
  br label %84

84:                                               ; preds = %83, %15
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  br label %85

85:                                               ; preds = %84, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampPixel(float noundef %0) unnamed_addr #13 {
  %2 = fptoui float %0 to i16
  ret i16 %2
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SetImageChannelDepth.omp_outlined.8(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7) #5 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !28
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %118

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  store i64 0, ptr %9, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #6
  store i64 %16, ptr %10, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #6
  store i64 1, ptr %11, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 0, ptr %12, align 4, !tbaa !29
  %19 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %10, align 8, !tbaa !26
  %22 = load i64, ptr %9, align 8, !tbaa !26
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %117, label %24

24:                                               ; preds = %18, %109
  %25 = phi i64 [ %115, %109 ], [ %21, %18 ]
  %26 = phi i64 [ %113, %109 ], [ %22, %18 ]
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %109, label %28

28:                                               ; preds = %24, %103
  %29 = phi i64 [ %104, %103 ], [ %26, %24 ]
  %30 = load i32, ptr %3, align 4, !tbaa !29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %103, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !6
  %34 = load ptr, ptr %2, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !27
  %37 = load ptr, ptr %5, align 8, !tbaa !6
  %38 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %29, i64 noundef %36, i64 noundef 1, ptr noundef %37) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %102, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %2, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !27
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %40
  %46 = load i32, ptr %6, align 4, !tbaa !29
  %47 = load ptr, ptr %7, align 8
  %48 = insertelement <4 x i32> poison, i32 %46, i64 0
  %49 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> zeroinitializer
  %50 = and <4 x i32> %49, <i32 8, i32 4, i32 2, i32 1>
  %51 = icmp eq <4 x i32> %50, zeroinitializer
  %52 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 6
  %53 = extractelement <4 x i1> %51, i64 0
  %54 = extractelement <4 x i1> %51, i64 1
  %55 = extractelement <4 x i1> %51, i64 2
  %56 = extractelement <4 x i1> %51, i64 3
  br label %57

57:                                               ; preds = %45, %93
  %58 = phi ptr [ %38, %45 ], [ %94, %93 ]
  %59 = phi i64 [ 0, %45 ], [ %95, %93 ]
  br i1 %56, label %67, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 2
  %62 = load i16, ptr %61, align 2, !tbaa !61
  %63 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %62) #20, !range !65
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds i16, ptr %47, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !30
  store i16 %66, ptr %61, align 2, !tbaa !61
  br label %67

67:                                               ; preds = %60, %57
  br i1 %55, label %75, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 1
  %70 = load i16, ptr %69, align 2, !tbaa !63
  %71 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %70) #20, !range !65
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds i16, ptr %47, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !30
  store i16 %74, ptr %69, align 2, !tbaa !63
  br label %75

75:                                               ; preds = %68, %67
  br i1 %54, label %82, label %76

76:                                               ; preds = %75
  %77 = load i16, ptr %58, align 2, !tbaa !64
  %78 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %77) #20, !range !65
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds i16, ptr %47, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !30
  store i16 %81, ptr %58, align 2, !tbaa !64
  br label %82

82:                                               ; preds = %76, %75
  br i1 %53, label %93, label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %52, align 8, !tbaa !54
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  %88 = load i16, ptr %87, align 2, !tbaa !66
  %89 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %88) #20, !range !65
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds i16, ptr %47, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !30
  store i16 %92, ptr %87, align 2, !tbaa !66
  br label %93

93:                                               ; preds = %86, %83, %82
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %95 = add nuw nsw i64 %59, 1
  %96 = icmp eq i64 %95, %43
  br i1 %96, label %97, label %57, !llvm.loop !78

97:                                               ; preds = %93, %40
  %98 = load ptr, ptr %4, align 8, !tbaa !6
  %99 = load ptr, ptr %5, align 8, !tbaa !6
  %100 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %98, ptr noundef %99) #19
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %32
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %103

103:                                              ; preds = %102, %97, %28
  %104 = add nsw i64 %29, 1
  %105 = load i64, ptr %10, align 8, !tbaa !26
  %106 = icmp slt i64 %29, %105
  br i1 %106, label %28, label %107

107:                                              ; preds = %103
  %108 = load i64, ptr %9, align 8, !tbaa !26
  br label %109

109:                                              ; preds = %107, %24
  %110 = phi i64 [ %26, %24 ], [ %108, %107 ]
  %111 = phi i64 [ %25, %24 ], [ %105, %107 ]
  %112 = load i64, ptr %11, align 8, !tbaa !26
  %113 = add nsw i64 %112, %110
  store i64 %113, ptr %9, align 8, !tbaa !26
  %114 = add nsw i64 %112, %111
  %115 = call i64 @llvm.smin.i64(i64 %114, i64 %16)
  store i64 %115, ptr %10, align 8, !tbaa !26
  %116 = icmp sgt i64 %113, %115
  br i1 %116, label %117, label %24

117:                                              ; preds = %109, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  br label %118

118:                                              ; preds = %117, %8
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetImageType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1178, ptr noundef nonnull @.str.7) #18
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call ptr @AcquireImageInfo() #18
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 78
  %11 = load i32, ptr %10, align 4, !tbaa !79
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %9, i64 0, i32 27
  store i32 %11, ptr %12, align 8, !tbaa !80
  %13 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @SetImageOption(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, ptr noundef nonnull %13) #18
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
  %19 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %9) #18
  br label %203

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %22 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef nonnull %21) #20, !range !62
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #18
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ 1, %20 ]
  %28 = tail call i32 @NormalizeImage(ptr noundef nonnull %0) #18
  %29 = tail call i32 @IsMonochromeImage(ptr noundef nonnull %0, ptr noundef nonnull %21) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %9) #18
  store i64 2, ptr %32, align 8, !tbaa !82
  %33 = getelementptr inbounds %struct._QuantizeInfo, ptr %32, i64 0, i32 3
  store i32 2, ptr %33, align 4, !tbaa !84
  %34 = tail call i32 @QuantizeImage(ptr noundef nonnull %32, ptr noundef nonnull %0) #18
  %35 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %32) #18
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i32 [ %34, %31 ], [ %27, %26 ]
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %38, align 8, !tbaa !54
  br label %199

39:                                               ; preds = %17
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %41 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef nonnull %40) #20, !range !62
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #18
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %44, %43 ], [ 1, %39 ]
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %47, align 8, !tbaa !54
  br label %199

48:                                               ; preds = %17
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %50 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef nonnull %49) #20, !range !62
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #18
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %53, %52 ], [ 1, %48 ]
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %199

59:                                               ; preds = %54
  %60 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #18
  br label %199

61:                                               ; preds = %17
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !33
  %64 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %63) #20, !range !62
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %67, %66 ], [ 1, %61 ]
  %70 = load i32, ptr %0, align 8, !tbaa !53
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %74 = load i64, ptr %73, align 8, !tbaa !59
  %75 = icmp ugt i64 %74, 256
  br i1 %75, label %76, label %80

76:                                               ; preds = %72, %68
  %77 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %9) #18
  store i64 256, ptr %77, align 8, !tbaa !82
  %78 = tail call i32 @QuantizeImage(ptr noundef nonnull %77, ptr noundef nonnull %0) #18
  %79 = tail call ptr @DestroyQuantizeInfo(ptr noundef nonnull %77) #18
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i32 [ %78, %76 ], [ %69, %72 ]
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %82, align 8, !tbaa !54
  br label %199

83:                                               ; preds = %17
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !33
  %86 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %85) #20, !range !62
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %90

90:                                               ; preds = %88, %83
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !54
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #18
  br label %96

96:                                               ; preds = %94, %90
  %97 = tail call i32 @BilevelImageChannel(ptr noundef nonnull %0, i32 noundef 8, double noundef 3.276750e+04) #18
  %98 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %9) #18
  %99 = tail call i32 @QuantizeImage(ptr noundef %98, ptr noundef nonnull %0) #18
  %100 = tail call ptr @DestroyQuantizeInfo(ptr noundef %98) #18
  br label %199

101:                                              ; preds = %17
  %102 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !33
  %104 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %103) #20, !range !62
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %108

108:                                              ; preds = %106, %101
  %109 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %110 = load i32, ptr %109, align 8, !tbaa !54
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #18
  br label %114

114:                                              ; preds = %112, %108
  %115 = tail call ptr @AcquireQuantizeInfo(ptr noundef nonnull %9) #18
  %116 = getelementptr inbounds %struct._QuantizeInfo, ptr %115, i64 0, i32 3
  store i32 3, ptr %116, align 4, !tbaa !84
  %117 = tail call i32 @QuantizeImage(ptr noundef %115, ptr noundef nonnull %0) #18
  %118 = tail call ptr @DestroyQuantizeInfo(ptr noundef %115) #18
  br label %199

119:                                              ; preds = %17
  %120 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !33
  %122 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %121) #20, !range !62
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %126

126:                                              ; preds = %124, %119
  %127 = phi i32 [ %125, %124 ], [ 1, %119 ]
  %128 = load i32, ptr %0, align 8, !tbaa !53
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #18
  br label %132

132:                                              ; preds = %130, %126
  %133 = phi i32 [ %131, %130 ], [ %127, %126 ]
  %134 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %134, align 8, !tbaa !54
  br label %199

135:                                              ; preds = %17
  %136 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !33
  %138 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %137) #20, !range !62
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %142

142:                                              ; preds = %140, %135
  %143 = phi i32 [ %141, %140 ], [ 1, %135 ]
  %144 = load i32, ptr %0, align 8, !tbaa !53
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #18
  br label %148

148:                                              ; preds = %146, %142
  %149 = phi i32 [ %147, %146 ], [ %143, %142 ]
  %150 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %151 = load i32, ptr %150, align 8, !tbaa !54
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %199

153:                                              ; preds = %148
  %154 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #18
  br label %199

155:                                              ; preds = %17
  %156 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !33
  %158 = icmp eq i32 %157, 12
  br i1 %158, label %166, label %159

159:                                              ; preds = %155
  %160 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %157) #20, !range !62
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %164

164:                                              ; preds = %162, %159
  %165 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 12) #18
  br label %166

166:                                              ; preds = %164, %155
  %167 = phi i32 [ %165, %164 ], [ 1, %155 ]
  %168 = load i32, ptr %0, align 8, !tbaa !53
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #18
  br label %172

172:                                              ; preds = %170, %166
  %173 = phi i32 [ %171, %170 ], [ %167, %166 ]
  %174 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  store i32 0, ptr %174, align 8, !tbaa !54
  br label %199

175:                                              ; preds = %17
  %176 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !33
  %178 = icmp eq i32 %177, 12
  br i1 %178, label %186, label %179

179:                                              ; preds = %175
  %180 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %177) #20, !range !62
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %184

184:                                              ; preds = %182, %179
  %185 = tail call i32 @TransformImageColorspace(ptr noundef nonnull %0, i32 noundef 12) #18
  br label %186

186:                                              ; preds = %184, %175
  %187 = phi i32 [ %185, %184 ], [ 1, %175 ]
  %188 = load i32, ptr %0, align 8, !tbaa !53
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %192, label %190

190:                                              ; preds = %186
  %191 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #18
  br label %192

192:                                              ; preds = %190, %186
  %193 = phi i32 [ %191, %190 ], [ %187, %186 ]
  %194 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %195 = load i32, ptr %194, align 8, !tbaa !54
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #18
  br label %199

199:                                              ; preds = %192, %197, %148, %153, %54, %59, %172, %132, %114, %96, %80, %45, %36
  %200 = phi i32 [ %193, %197 ], [ %193, %192 ], [ %173, %172 ], [ %149, %153 ], [ %149, %148 ], [ %133, %132 ], [ %117, %114 ], [ %99, %96 ], [ %81, %80 ], [ %55, %59 ], [ %55, %54 ], [ %46, %45 ], [ %37, %36 ]
  %201 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %9) #18
  %202 = icmp eq i32 %200, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %18, %199
  %204 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 %1, ptr %204, align 8, !tbaa !69
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
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { convergent nounwind }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind optsize }
attributes #19 = { hot nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize allocsize(0,1) }
attributes #22 = { nounwind optsize willreturn memory(none) }
attributes #23 = { noreturn nounwind optsize }

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
!10 = !{!11, !12, i64 12976}
!11 = !{!"_Image", !12, i64 0, !12, i64 4, !12, i64 8, !13, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !7, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !16, i64 104, !17, i64 112, !12, i64 208, !7, i64 216, !12, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !13, i64 256, !16, i64 264, !16, i64 272, !19, i64 280, !19, i64 312, !19, i64 344, !16, i64 376, !16, i64 384, !16, i64 392, !12, i64 400, !12, i64 404, !12, i64 408, !12, i64 412, !12, i64 416, !12, i64 420, !7, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !20, i64 480, !21, i64 504, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !13, i64 12904, !13, i64 12912, !23, i64 12920, !12, i64 12976, !13, i64 12984, !7, i64 12992, !24, i64 13000, !24, i64 13032, !7, i64 13064, !13, i64 13072, !13, i64 13080, !7, i64 13088, !7, i64 13096, !7, i64 13104, !12, i64 13112, !12, i64 13116, !14, i64 13120, !7, i64 13128, !19, i64 13136, !7, i64 13168, !7, i64 13176, !12, i64 13184, !12, i64 13188, !25, i64 13192, !12, i64 13200, !13, i64 13208, !13, i64 13216, !12, i64 13224, !13, i64 13232}
!12 = !{!"int", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"_PixelPacket", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!15 = !{!"short", !8, i64 0}
!16 = !{!"double", !8, i64 0}
!17 = !{!"_ChromaticityInfo", !18, i64 0, !18, i64 24, !18, i64 48, !18, i64 72}
!18 = !{!"_PrimaryInfo", !16, i64 0, !16, i64 8, !16, i64 16}
!19 = !{!"_RectangleInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!20 = !{!"_ErrorInfo", !16, i64 0, !16, i64 8, !16, i64 16}
!21 = !{!"_TimerInfo", !22, i64 0, !22, i64 24, !12, i64 48, !13, i64 56}
!22 = !{!"_Timer", !16, i64 0, !16, i64 8, !16, i64 16}
!23 = !{!"_ExceptionInfo", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !7, i64 40, !13, i64 48}
!24 = !{!"_ProfileInfo", !7, i64 0, !13, i64 8, !7, i64 16, !13, i64 24}
!25 = !{!"long long", !8, i64 0}
!26 = !{!13, !13, i64 0}
!27 = !{!11, !13, i64 40}
!28 = !{!11, !13, i64 48}
!29 = !{!12, !12, i64 0}
!30 = !{!15, !15, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !8, i64 0}
!33 = !{!11, !12, i64 4}
!34 = !{!35, !32, i64 48}
!35 = !{!"_MagickPixelPacket", !12, i64 0, !12, i64 4, !12, i64 8, !16, i64 16, !13, i64 24, !32, i64 32, !32, i64 36, !32, i64 40, !32, i64 44, !32, i64 48}
!36 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 8, !26, i64 24, i64 8, !26}
!37 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 8, !26}
!38 = !{i64 0, i64 8, !26, i64 8, i64 8, !26}
!39 = !{i64 0, i64 8, !26}
!40 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 16, i64 8, !41, i64 24, i64 8, !26, i64 32, i64 4, !31, i64 36, i64 4, !31, i64 40, i64 4, !31, i64 44, i64 4, !31, i64 48, i64 4, !31}
!41 = !{!16, !16, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!19, !13, i64 16}
!45 = !{!19, !13, i64 24}
!46 = !{!19, !13, i64 0}
!47 = !{!19, !13, i64 8}
!48 = !{!49}
!49 = !{i64 2, i64 -1, i64 -1, i1 true}
!50 = distinct !{!50, !43, !51, !52}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = !{!11, !12, i64 0}
!54 = !{!11, !12, i64 32}
!55 = distinct !{!55, !43}
!56 = distinct !{!56, !43}
!57 = distinct !{!57, !43}
!58 = distinct !{!58, !43}
!59 = !{!11, !13, i64 64}
!60 = !{!11, !7, i64 72}
!61 = !{!14, !15, i64 4}
!62 = !{i32 0, i32 2}
!63 = !{!14, !15, i64 2}
!64 = !{!14, !15, i64 0}
!65 = !{i32 0, i32 65536}
!66 = !{!14, !15, i64 6}
!67 = distinct !{!67, !43}
!68 = !{!11, !13, i64 56}
!69 = !{!11, !12, i64 13184}
!70 = distinct !{!70, !43}
!71 = distinct !{!71, !43}
!72 = distinct !{!72, !43}
!73 = distinct !{!73, !43}
!74 = distinct !{!74, !43}
!75 = distinct !{!75, !43}
!76 = !{!25, !25, i64 0}
!77 = distinct !{!77, !43}
!78 = distinct !{!78, !43}
!79 = !{!11, !12, i64 13188}
!80 = !{!81, !12, i64 184}
!81 = !{!"_ImageInfo", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !13, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !16, i64 144, !16, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !12, i64 184, !12, i64 188, !13, i64 192, !12, i64 200, !12, i64 204, !12, i64 208, !13, i64 216, !12, i64 224, !12, i64 228, !7, i64 232, !7, i64 240, !12, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !13, i64 320, !8, i64 328, !8, i64 4424, !8, i64 8520, !8, i64 12616, !12, i64 16712, !7, i64 16720, !13, i64 16728, !13, i64 16736, !14, i64 16744, !13, i64 16752, !12, i64 16760, !14, i64 16764, !7, i64 16776, !12, i64 16784}
!82 = !{!83, !13, i64 0}
!83 = !{!"_QuantizeInfo", !13, i64 0, !13, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !13, i64 32, !12, i64 40}
!84 = !{!83, !12, i64 20}
