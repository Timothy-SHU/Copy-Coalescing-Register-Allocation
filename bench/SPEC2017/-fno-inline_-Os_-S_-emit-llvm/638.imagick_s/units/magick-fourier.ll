; ModuleID = 'magick/fourier.c'
source_filename = "magick/fourier.c"
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

@.str = private unnamed_addr constant [17 x i8] c"magick/fourier.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ImageSequenceRequired\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"complex:snr\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_ComplexImages.var = common global [8 x i32] zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"Complex/Image\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"`%s' (FFTW)\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ComplexImages(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca double, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !6
  store i32 %1, ptr %5, align 4, !tbaa !10
  store ptr %2, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %19 = load i32, ptr %18, align 8, !tbaa !12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %23 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 173, ptr noundef nonnull @.str.2, ptr noundef nonnull %22) #11
  br label %24

24:                                               ; preds = %21, %3
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %26 = load ptr, ptr %25, align 8, !tbaa !27
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %30 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 178, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %29) #11
  br label %114

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %33 = load i64, ptr %32, align 8, !tbaa !28
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !29
  %36 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %33, i64 noundef %35, i32 noundef 1, ptr noundef %2) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %114, label %38

38:                                               ; preds = %31
  store i32 1, ptr %36, align 8, !tbaa !30
  %39 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 9
  store i64 32, ptr %39, align 8, !tbaa !31
  %40 = tail call ptr @NewImageList() #11
  store ptr %40, ptr %14, align 8, !tbaa !6
  call void @AppendImageToList(ptr noundef nonnull %14, ptr noundef nonnull %36) #11
  %41 = load i64, ptr %32, align 8, !tbaa !28
  %42 = load i64, ptr %34, align 8, !tbaa !29
  %43 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %41, i64 noundef %42, i32 noundef 1, ptr noundef %2) #11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load ptr, ptr %14, align 8, !tbaa !6
  %47 = call ptr @DestroyImageList(ptr noundef %46) #11
  br label %114

48:                                               ; preds = %38
  store i32 1, ptr %43, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 9
  store i64 32, ptr %49, align 8, !tbaa !31
  call void @AppendImageToList(ptr noundef nonnull %14, ptr noundef nonnull %43) #11
  %50 = call ptr @GetImageArtifact(ptr noundef nonnull %43, ptr noundef nonnull @.str.5) #11
  store double 0.000000e+00, ptr %13, align 8, !tbaa !32
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = call fastcc double @StringToDouble(ptr noundef nonnull %50) #12
  store double %53, ptr %13, align 8, !tbaa !32
  br label %54

54:                                               ; preds = %52, %48
  %55 = load ptr, ptr %25, align 8, !tbaa !27
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 69
  %57 = load ptr, ptr %56, align 8, !tbaa !27
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 69
  %61 = load ptr, ptr %60, align 8, !tbaa !27
  %62 = icmp eq ptr %61, null
  %63 = select i1 %62, ptr %0, ptr %57
  %64 = select i1 %62, ptr %55, ptr %61
  br label %65

65:                                               ; preds = %59, %54
  %66 = phi ptr [ %0, %54 ], [ %63, %59 ]
  %67 = phi ptr [ %55, %54 ], [ %64, %59 ]
  %68 = load ptr, ptr %14, align 8, !tbaa !6
  %69 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 69
  %70 = load ptr, ptr %69, align 8, !tbaa !27
  %71 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #11
  store ptr %71, ptr %8, align 8, !tbaa !6
  %72 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %55, ptr noundef %2) #11
  store ptr %72, ptr %7, align 8, !tbaa !6
  %73 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %66, ptr noundef %2) #11
  store ptr %73, ptr %10, align 8, !tbaa !6
  %74 = call ptr @AcquireVirtualCacheView(ptr noundef %67, ptr noundef %2) #11
  store ptr %74, ptr %9, align 8, !tbaa !6
  %75 = call ptr @AcquireAuthenticCacheView(ptr noundef %68, ptr noundef %2) #11
  store ptr %75, ptr %12, align 8, !tbaa !6
  %76 = call ptr @AcquireAuthenticCacheView(ptr noundef %70, ptr noundef %2) #11
  store ptr %76, ptr %11, align 8, !tbaa !6
  store i32 1, ptr %15, align 4, !tbaa !10
  store i64 0, ptr %16, align 8, !tbaa !33
  %77 = load i64, ptr %34, align 8, !tbaa !29
  %78 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %79 = shl i64 %78, 5
  %80 = icmp ugt i64 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %65
  %82 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #11
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %14, align 8, !tbaa !6
  %86 = call i32 @GetImagePixelCacheType(ptr noundef %85) #11
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  br label %94

90:                                               ; preds = %84, %81, %65
  %91 = call i64 @GetMagickResourceLimit(i32 noundef 6) #11
  %92 = icmp ult i64 %91, 2
  %93 = select i1 %92, i64 1, i64 2
  br label %94

94:                                               ; preds = %90, %88
  %95 = phi i64 [ %89, %88 ], [ %93, %90 ]
  %96 = trunc i64 %95 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %17, i32 %96)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @ComplexImages.omp_outlined, ptr nonnull %4, ptr nonnull %15, ptr nonnull %8, ptr nonnull %6, ptr nonnull %7, ptr nonnull %10, ptr nonnull %9, ptr nonnull %12, ptr nonnull %11, ptr nonnull %5, ptr nonnull %13, ptr nonnull %16)
  %97 = load ptr, ptr %12, align 8, !tbaa !6
  %98 = call ptr @DestroyCacheView(ptr noundef %97) #11
  store ptr %98, ptr %12, align 8, !tbaa !6
  %99 = load ptr, ptr %11, align 8, !tbaa !6
  %100 = call ptr @DestroyCacheView(ptr noundef %99) #11
  store ptr %100, ptr %11, align 8, !tbaa !6
  %101 = load ptr, ptr %10, align 8, !tbaa !6
  %102 = call ptr @DestroyCacheView(ptr noundef %101) #11
  store ptr %102, ptr %10, align 8, !tbaa !6
  %103 = load ptr, ptr %9, align 8, !tbaa !6
  %104 = call ptr @DestroyCacheView(ptr noundef %103) #11
  store ptr %104, ptr %9, align 8, !tbaa !6
  %105 = load ptr, ptr %8, align 8, !tbaa !6
  %106 = call ptr @DestroyCacheView(ptr noundef %105) #11
  store ptr %106, ptr %8, align 8, !tbaa !6
  %107 = load ptr, ptr %7, align 8, !tbaa !6
  %108 = call ptr @DestroyCacheView(ptr noundef %107) #11
  store ptr %108, ptr %7, align 8, !tbaa !6
  %109 = load i32, ptr %15, align 4, !tbaa !10
  %110 = icmp eq i32 %109, 0
  %111 = load ptr, ptr %14, align 8, !tbaa !6
  br i1 %110, label %112, label %114

112:                                              ; preds = %94
  %113 = call ptr @DestroyImageList(ptr noundef %111) #11
  br label %114

114:                                              ; preds = %94, %112, %31, %45, %28
  %115 = phi ptr [ null, %28 ], [ %47, %45 ], [ null, %31 ], [ %113, %112 ], [ %111, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4
  ret ptr %115
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #11
  ret double %2
}

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ComplexImages.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull align 8 dereferenceable(8) %13) #3 {
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = load ptr, ptr %2, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !29
  %22 = add nsw i64 %21, -1
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %693

24:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #4
  store i64 0, ptr %15, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #4
  store i64 %22, ptr %16, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #4
  store i64 1, ptr %17, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #4
  store i32 0, ptr %18, align 4, !tbaa !10
  %25 = load i32, ptr %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %18, ptr nonnull %15, ptr nonnull %16, ptr nonnull %17, i64 1, i64 4)
  %26 = load i64, ptr %16, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %16, align 8, !tbaa !34
  %28 = load i64, ptr %15, align 8, !tbaa !34
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %692, label %30

30:                                               ; preds = %24, %684
  %31 = phi i64 [ %690, %684 ], [ %27, %24 ]
  %32 = phi i64 [ %688, %684 ], [ %28, %24 ]
  %33 = icmp sgt i64 %32, %31
  br i1 %33, label %684, label %34

34:                                               ; preds = %30, %678
  %35 = phi i64 [ %679, %678 ], [ %32, %30 ]
  %36 = load i32, ptr %3, align 4, !tbaa !10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %678, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %4, align 8, !tbaa !6
  %40 = load ptr, ptr %2, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !28
  %43 = load ptr, ptr %5, align 8, !tbaa !6
  %44 = call ptr @GetCacheViewVirtualPixels(ptr noundef %39, i64 noundef 0, i64 noundef %35, i64 noundef %42, i64 noundef 1, ptr noundef %43) #13
  %45 = load ptr, ptr %6, align 8, !tbaa !6
  %46 = load ptr, ptr %2, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !28
  %49 = load ptr, ptr %5, align 8, !tbaa !6
  %50 = call ptr @GetCacheViewVirtualPixels(ptr noundef %45, i64 noundef 0, i64 noundef %35, i64 noundef %48, i64 noundef 1, ptr noundef %49) #13
  %51 = load ptr, ptr %7, align 8, !tbaa !6
  %52 = load ptr, ptr %2, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 7
  %54 = load i64, ptr %53, align 8, !tbaa !28
  %55 = load ptr, ptr %5, align 8, !tbaa !6
  %56 = call ptr @GetCacheViewVirtualPixels(ptr noundef %51, i64 noundef 0, i64 noundef %35, i64 noundef %54, i64 noundef 1, ptr noundef %55) #13
  %57 = load ptr, ptr %8, align 8, !tbaa !6
  %58 = load ptr, ptr %2, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !28
  %61 = load ptr, ptr %5, align 8, !tbaa !6
  %62 = call ptr @GetCacheViewVirtualPixels(ptr noundef %57, i64 noundef 0, i64 noundef %35, i64 noundef %60, i64 noundef 1, ptr noundef %61) #13
  %63 = load ptr, ptr %9, align 8, !tbaa !6
  %64 = load ptr, ptr %2, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct._Image, ptr %64, i64 0, i32 7
  %66 = load i64, ptr %65, align 8, !tbaa !28
  %67 = load ptr, ptr %5, align 8, !tbaa !6
  %68 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %63, i64 noundef 0, i64 noundef %35, i64 noundef %66, i64 noundef 1, ptr noundef %67) #13
  %69 = freeze ptr %68
  %70 = load ptr, ptr %10, align 8, !tbaa !6
  %71 = load ptr, ptr %2, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  %73 = load i64, ptr %72, align 8, !tbaa !28
  %74 = load ptr, ptr %5, align 8, !tbaa !6
  %75 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %70, i64 noundef 0, i64 noundef %35, i64 noundef %73, i64 noundef 1, ptr noundef %74) #13
  %76 = insertelement <4 x ptr> poison, ptr %50, i64 0
  %77 = insertelement <4 x ptr> %76, ptr %44, i64 1
  %78 = insertelement <4 x ptr> %77, ptr %56, i64 2
  %79 = insertelement <4 x ptr> %78, ptr %62, i64 3
  %80 = freeze <4 x ptr> %79
  %81 = icmp eq <4 x ptr> %80, zeroinitializer
  %82 = icmp eq ptr %69, null
  %83 = icmp eq ptr %75, null
  %84 = bitcast <4 x i1> %81 to i4
  %85 = icmp ne i4 %84, 0
  %86 = or i1 %85, %82
  %87 = select i1 %86, i1 true, i1 %83
  br i1 %87, label %677, label %88

88:                                               ; preds = %38
  %89 = load ptr, ptr %2, align 8, !tbaa !6
  %90 = getelementptr inbounds %struct._Image, ptr %89, i64 0, i32 7
  %91 = load i64, ptr %90, align 8, !tbaa !28
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %652

93:                                               ; preds = %88, %640
  %94 = phi ptr [ %648, %640 ], [ %89, %88 ]
  %95 = phi i64 [ %647, %640 ], [ 0, %88 ]
  %96 = phi ptr [ %645, %640 ], [ %69, %88 ]
  %97 = phi ptr [ %646, %640 ], [ %75, %88 ]
  %98 = phi ptr [ %643, %640 ], [ %56, %88 ]
  %99 = phi ptr [ %644, %640 ], [ %62, %88 ]
  %100 = phi ptr [ %641, %640 ], [ %44, %88 ]
  %101 = phi ptr [ %642, %640 ], [ %50, %88 ]
  %102 = load i32, ptr %11, align 4, !tbaa !10
  switch i32 %102, label %137 [
    i32 1, label %103
    i32 7, label %603
    i32 3, label %158
    i32 4, label %325
    i32 5, label %414
    i32 6, label %514
  ]

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %105 = load i16, ptr %104, align 2, !tbaa !35
  %106 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 2
  %107 = load i16, ptr %106, align 2, !tbaa !35
  %108 = add i16 %107, %105
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  store i16 %108, ptr %109, align 2, !tbaa !35
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 2
  %111 = load i16, ptr %110, align 2, !tbaa !35
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %113 = load i16, ptr %112, align 2, !tbaa !35
  %114 = add i16 %113, %111
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %114, ptr %115, align 2, !tbaa !35
  %116 = load <2 x i16>, ptr %100, align 2, !tbaa !36
  %117 = load <2 x i16>, ptr %98, align 2, !tbaa !36
  %118 = add <2 x i16> %117, %116
  store <2 x i16> %118, ptr %96, align 2, !tbaa !36
  %119 = load <2 x i16>, ptr %101, align 2, !tbaa !36
  %120 = load <2 x i16>, ptr %99, align 2, !tbaa !36
  %121 = add <2 x i16> %120, %119
  store <2 x i16> %121, ptr %97, align 2, !tbaa !36
  %122 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 6
  %123 = load i32, ptr %122, align 8, !tbaa !37
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %640, label %125

125:                                              ; preds = %103
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %127 = load i16, ptr %126, align 2, !tbaa !38
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 3
  %129 = load i16, ptr %128, align 2, !tbaa !38
  %130 = add i16 %129, %127
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  store i16 %130, ptr %131, align 2, !tbaa !38
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 3
  %133 = load i16, ptr %132, align 2, !tbaa !38
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  %135 = load i16, ptr %134, align 2, !tbaa !38
  %136 = add i16 %135, %133
  br label %637

137:                                              ; preds = %93
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %139 = load i16, ptr %138, align 2, !tbaa !35
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  store i16 %139, ptr %140, align 2, !tbaa !35
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %142 = load i16, ptr %141, align 2, !tbaa !35
  %143 = sub i16 0, %142
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %143, ptr %144, align 2, !tbaa !35
  %145 = load <2 x i16>, ptr %100, align 2, !tbaa !36
  store <2 x i16> %145, ptr %96, align 2, !tbaa !36
  %146 = load <2 x i16>, ptr %99, align 2, !tbaa !36
  %147 = sub <2 x i16> zeroinitializer, %146
  store <2 x i16> %147, ptr %97, align 2, !tbaa !36
  %148 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 6
  %149 = load i32, ptr %148, align 8, !tbaa !37
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %640, label %151

151:                                              ; preds = %137
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %153 = load i16, ptr %152, align 2, !tbaa !38
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  store i16 %153, ptr %154, align 2, !tbaa !38
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  %156 = load i16, ptr %155, align 2, !tbaa !38
  %157 = sub i16 0, %156
  br label %637

158:                                              ; preds = %93
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 2
  %160 = load i16, ptr %159, align 2, !tbaa !35
  %161 = zext i16 %160 to i32
  %162 = mul nuw nsw i32 %161, %161
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %164 = load i16, ptr %163, align 2, !tbaa !35
  %165 = zext i16 %164 to i32
  %166 = mul nuw nsw i32 %165, %165
  %167 = add nuw nsw i32 %166, %162
  %168 = sitofp i32 %167 to double
  %169 = load double, ptr %12, align 8, !tbaa !32
  %170 = fadd double %169, %168
  %171 = fcmp olt double %170, 0.000000e+00
  %172 = select i1 %171, double 0.000000e+00, double %170
  %173 = call fastcc double @PerceptibleReciprocal(double noundef %172) #12
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %175 = load i16, ptr %174, align 2, !tbaa !35
  %176 = zext i16 %175 to i32
  %177 = mul nuw nsw i32 %176, %161
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 2
  %179 = load i16, ptr %178, align 2, !tbaa !35
  %180 = zext i16 %179 to i32
  %181 = mul nuw nsw i32 %180, %165
  %182 = add nuw nsw i32 %181, %177
  %183 = sitofp i32 %182 to double
  %184 = fmul double %173, %183
  %185 = fptoui double %184 to i16
  %186 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  store i16 %185, ptr %186, align 2, !tbaa !35
  %187 = load i16, ptr %178, align 2, !tbaa !35
  %188 = zext i16 %187 to i32
  %189 = load i16, ptr %159, align 2, !tbaa !35
  %190 = zext i16 %189 to i32
  %191 = mul nuw nsw i32 %190, %188
  %192 = load i16, ptr %174, align 2, !tbaa !35
  %193 = zext i16 %192 to i32
  %194 = load i16, ptr %163, align 2, !tbaa !35
  %195 = zext i16 %194 to i32
  %196 = mul nuw nsw i32 %195, %193
  %197 = sub nsw i32 %191, %196
  %198 = sitofp i32 %197 to double
  %199 = fmul double %173, %198
  %200 = fptoui double %199 to i16
  %201 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %200, ptr %201, align 2, !tbaa !35
  %202 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 1
  %203 = load i16, ptr %202, align 2, !tbaa !39
  %204 = zext i16 %203 to i32
  %205 = mul nuw nsw i32 %204, %204
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 1
  %207 = load i16, ptr %206, align 2, !tbaa !39
  %208 = zext i16 %207 to i32
  %209 = mul nuw nsw i32 %208, %208
  %210 = add nuw nsw i32 %209, %205
  %211 = sitofp i32 %210 to double
  %212 = fadd double %169, %211
  %213 = fcmp olt double %212, 0.000000e+00
  %214 = select i1 %213, double 0.000000e+00, double %212
  %215 = call fastcc double @PerceptibleReciprocal(double noundef %214) #12
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  %217 = load i16, ptr %216, align 2, !tbaa !39
  %218 = zext i16 %217 to i32
  %219 = mul nuw nsw i32 %218, %204
  %220 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 1
  %221 = load i16, ptr %220, align 2, !tbaa !39
  %222 = zext i16 %221 to i32
  %223 = mul nuw nsw i32 %222, %208
  %224 = add nuw nsw i32 %223, %219
  %225 = sitofp i32 %224 to double
  %226 = fmul double %215, %225
  %227 = fptoui double %226 to i16
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 1
  store i16 %227, ptr %228, align 2, !tbaa !39
  %229 = load i16, ptr %220, align 2, !tbaa !39
  %230 = zext i16 %229 to i32
  %231 = load i16, ptr %202, align 2, !tbaa !39
  %232 = zext i16 %231 to i32
  %233 = mul nuw nsw i32 %232, %230
  %234 = load i16, ptr %216, align 2, !tbaa !39
  %235 = zext i16 %234 to i32
  %236 = load i16, ptr %206, align 2, !tbaa !39
  %237 = zext i16 %236 to i32
  %238 = mul nuw nsw i32 %237, %235
  %239 = sub nsw i32 %233, %238
  %240 = sitofp i32 %239 to double
  %241 = fmul double %215, %240
  %242 = fptoui double %241 to i16
  %243 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 1
  store i16 %242, ptr %243, align 2, !tbaa !39
  %244 = load i16, ptr %98, align 2, !tbaa !40
  %245 = zext i16 %244 to i32
  %246 = mul nuw nsw i32 %245, %245
  %247 = load i16, ptr %99, align 2, !tbaa !40
  %248 = zext i16 %247 to i32
  %249 = mul nuw nsw i32 %248, %248
  %250 = add nuw nsw i32 %249, %246
  %251 = sitofp i32 %250 to double
  %252 = fadd double %169, %251
  %253 = fcmp olt double %252, 0.000000e+00
  %254 = select i1 %253, double 0.000000e+00, double %252
  %255 = call fastcc double @PerceptibleReciprocal(double noundef %254) #12
  %256 = load i16, ptr %100, align 2, !tbaa !40
  %257 = zext i16 %256 to i32
  %258 = mul nuw nsw i32 %257, %245
  %259 = load i16, ptr %101, align 2, !tbaa !40
  %260 = zext i16 %259 to i32
  %261 = mul nuw nsw i32 %260, %248
  %262 = add nuw nsw i32 %261, %258
  %263 = sitofp i32 %262 to double
  %264 = fmul double %255, %263
  %265 = fptoui double %264 to i16
  store i16 %265, ptr %96, align 2, !tbaa !40
  %266 = load i16, ptr %101, align 2, !tbaa !40
  %267 = zext i16 %266 to i32
  %268 = load i16, ptr %98, align 2, !tbaa !40
  %269 = zext i16 %268 to i32
  %270 = mul nuw nsw i32 %269, %267
  %271 = load i16, ptr %100, align 2, !tbaa !40
  %272 = zext i16 %271 to i32
  %273 = load i16, ptr %99, align 2, !tbaa !40
  %274 = zext i16 %273 to i32
  %275 = mul nuw nsw i32 %274, %272
  %276 = sub nsw i32 %270, %275
  %277 = sitofp i32 %276 to double
  %278 = fmul double %255, %277
  %279 = fptoui double %278 to i16
  store i16 %279, ptr %97, align 2, !tbaa !40
  %280 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 6
  %281 = load i32, ptr %280, align 8, !tbaa !37
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %640, label %283

283:                                              ; preds = %158
  %284 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 3
  %285 = load i16, ptr %284, align 2, !tbaa !38
  %286 = zext i16 %285 to i32
  %287 = mul nuw nsw i32 %286, %286
  %288 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  %289 = load i16, ptr %288, align 2, !tbaa !38
  %290 = zext i16 %289 to i32
  %291 = mul nuw nsw i32 %290, %290
  %292 = add nuw nsw i32 %291, %287
  %293 = sitofp i32 %292 to double
  %294 = fadd double %169, %293
  %295 = fcmp olt double %294, 0.000000e+00
  %296 = select i1 %295, double 0.000000e+00, double %294
  %297 = call fastcc double @PerceptibleReciprocal(double noundef %296) #12
  %298 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %299 = load i16, ptr %298, align 2, !tbaa !38
  %300 = zext i16 %299 to i32
  %301 = mul nuw nsw i32 %300, %286
  %302 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 3
  %303 = load i16, ptr %302, align 2, !tbaa !38
  %304 = zext i16 %303 to i32
  %305 = mul nuw nsw i32 %304, %290
  %306 = add nuw nsw i32 %305, %301
  %307 = sitofp i32 %306 to double
  %308 = fmul double %297, %307
  %309 = fptoui double %308 to i16
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  store i16 %309, ptr %310, align 2, !tbaa !38
  %311 = load i16, ptr %302, align 2, !tbaa !38
  %312 = zext i16 %311 to i32
  %313 = load i16, ptr %284, align 2, !tbaa !38
  %314 = zext i16 %313 to i32
  %315 = mul nuw nsw i32 %314, %312
  %316 = load i16, ptr %298, align 2, !tbaa !38
  %317 = zext i16 %316 to i32
  %318 = load i16, ptr %288, align 2, !tbaa !38
  %319 = zext i16 %318 to i32
  %320 = mul nuw nsw i32 %319, %317
  %321 = sub nsw i32 %315, %320
  %322 = sitofp i32 %321 to double
  %323 = fmul double %297, %322
  %324 = fptoui double %323 to i16
  br label %637

325:                                              ; preds = %93
  %326 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %327 = load i16, ptr %326, align 2, !tbaa !35
  %328 = zext i16 %327 to i32
  %329 = mul nuw nsw i32 %328, %328
  %330 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 2
  %331 = load i16, ptr %330, align 2, !tbaa !35
  %332 = zext i16 %331 to i32
  %333 = mul nuw nsw i32 %332, %332
  %334 = add nuw nsw i32 %333, %329
  %335 = sitofp i32 %334 to double
  %336 = call double @sqrt(double noundef %335) #11
  %337 = fptoui double %336 to i16
  %338 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  store i16 %337, ptr %338, align 2, !tbaa !35
  %339 = load i16, ptr %330, align 2, !tbaa !35
  %340 = uitofp i16 %339 to double
  %341 = load i16, ptr %326, align 2, !tbaa !35
  %342 = uitofp i16 %341 to double
  %343 = call double @atan2(double noundef %340, double noundef %342) #11
  %344 = fdiv double %343, 0x401921FB54442D18
  %345 = fadd double %344, 5.000000e-01
  %346 = fptoui double %345 to i16
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %346, ptr %347, align 2, !tbaa !35
  %348 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  %349 = load i16, ptr %348, align 2, !tbaa !39
  %350 = zext i16 %349 to i32
  %351 = mul nuw nsw i32 %350, %350
  %352 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 1
  %353 = load i16, ptr %352, align 2, !tbaa !39
  %354 = zext i16 %353 to i32
  %355 = mul nuw nsw i32 %354, %354
  %356 = add nuw nsw i32 %355, %351
  %357 = sitofp i32 %356 to double
  %358 = call double @sqrt(double noundef %357) #11
  %359 = fptoui double %358 to i16
  %360 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 1
  store i16 %359, ptr %360, align 2, !tbaa !39
  %361 = load i16, ptr %352, align 2, !tbaa !39
  %362 = uitofp i16 %361 to double
  %363 = load i16, ptr %348, align 2, !tbaa !39
  %364 = uitofp i16 %363 to double
  %365 = call double @atan2(double noundef %362, double noundef %364) #11
  %366 = fdiv double %365, 0x401921FB54442D18
  %367 = fadd double %366, 5.000000e-01
  %368 = fptoui double %367 to i16
  %369 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 1
  store i16 %368, ptr %369, align 2, !tbaa !39
  %370 = load i16, ptr %100, align 2, !tbaa !40
  %371 = zext i16 %370 to i32
  %372 = mul nuw nsw i32 %371, %371
  %373 = load i16, ptr %101, align 2, !tbaa !40
  %374 = zext i16 %373 to i32
  %375 = mul nuw nsw i32 %374, %374
  %376 = add nuw nsw i32 %375, %372
  %377 = sitofp i32 %376 to double
  %378 = call double @sqrt(double noundef %377) #11
  %379 = fptoui double %378 to i16
  store i16 %379, ptr %96, align 2, !tbaa !40
  %380 = load i16, ptr %101, align 2, !tbaa !40
  %381 = uitofp i16 %380 to double
  %382 = load i16, ptr %100, align 2, !tbaa !40
  %383 = uitofp i16 %382 to double
  %384 = call double @atan2(double noundef %381, double noundef %383) #11
  %385 = fdiv double %384, 0x401921FB54442D18
  %386 = fadd double %385, 5.000000e-01
  %387 = fptoui double %386 to i16
  store i16 %387, ptr %97, align 2, !tbaa !40
  %388 = load ptr, ptr %2, align 8, !tbaa !6
  %389 = getelementptr inbounds %struct._Image, ptr %388, i64 0, i32 6
  %390 = load i32, ptr %389, align 8, !tbaa !37
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %640, label %392

392:                                              ; preds = %325
  %393 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %394 = load i16, ptr %393, align 2, !tbaa !38
  %395 = zext i16 %394 to i32
  %396 = mul nuw nsw i32 %395, %395
  %397 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 3
  %398 = load i16, ptr %397, align 2, !tbaa !38
  %399 = zext i16 %398 to i32
  %400 = mul nuw nsw i32 %399, %399
  %401 = add nuw nsw i32 %400, %396
  %402 = sitofp i32 %401 to double
  %403 = call double @sqrt(double noundef %402) #11
  %404 = fptoui double %403 to i16
  %405 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  store i16 %404, ptr %405, align 2, !tbaa !38
  %406 = load i16, ptr %397, align 2, !tbaa !38
  %407 = uitofp i16 %406 to double
  %408 = load i16, ptr %393, align 2, !tbaa !38
  %409 = uitofp i16 %408 to double
  %410 = call double @atan2(double noundef %407, double noundef %409) #11
  %411 = fdiv double %410, 0x401921FB54442D18
  %412 = fadd double %411, 5.000000e-01
  %413 = fptoui double %412 to i16
  br label %637

414:                                              ; preds = %93
  %415 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %416 = load i16, ptr %415, align 2, !tbaa !35
  %417 = zext i16 %416 to i32
  %418 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 2
  %419 = load i16, ptr %418, align 2, !tbaa !35
  %420 = zext i16 %419 to i32
  %421 = mul nuw nsw i32 %420, %417
  %422 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 2
  %423 = load i16, ptr %422, align 2, !tbaa !35
  %424 = zext i16 %423 to i32
  %425 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %426 = load i16, ptr %425, align 2, !tbaa !35
  %427 = zext i16 %426 to i32
  %428 = mul nuw nsw i32 %427, %424
  %429 = sub nsw i32 %421, %428
  %430 = sitofp i32 %429 to double
  %431 = fmul double %430, 0x3EF0001000100010
  %432 = fptoui double %431 to i16
  %433 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  store i16 %432, ptr %433, align 2, !tbaa !35
  %434 = load i16, ptr %422, align 2, !tbaa !35
  %435 = zext i16 %434 to i32
  %436 = load i16, ptr %418, align 2, !tbaa !35
  %437 = zext i16 %436 to i32
  %438 = mul nuw nsw i32 %437, %435
  %439 = load i16, ptr %415, align 2, !tbaa !35
  %440 = zext i16 %439 to i32
  %441 = load i16, ptr %425, align 2, !tbaa !35
  %442 = zext i16 %441 to i32
  %443 = mul nuw nsw i32 %442, %440
  %444 = add nuw nsw i32 %443, %438
  %445 = sitofp i32 %444 to double
  %446 = fmul double %445, 0x3EF0001000100010
  %447 = fptoui double %446 to i16
  %448 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %447, ptr %448, align 2, !tbaa !35
  %449 = load <2 x i16>, ptr %100, align 2, !tbaa !36
  %450 = zext <2 x i16> %449 to <2 x i32>
  %451 = load <2 x i16>, ptr %98, align 2, !tbaa !36
  %452 = zext <2 x i16> %451 to <2 x i32>
  %453 = mul nuw nsw <2 x i32> %452, %450
  %454 = load <2 x i16>, ptr %101, align 2, !tbaa !36
  %455 = zext <2 x i16> %454 to <2 x i32>
  %456 = load <2 x i16>, ptr %99, align 2, !tbaa !36
  %457 = zext <2 x i16> %456 to <2 x i32>
  %458 = mul nuw nsw <2 x i32> %457, %455
  %459 = sub nsw <2 x i32> %453, %458
  %460 = sitofp <2 x i32> %459 to <2 x double>
  %461 = fmul <2 x double> %460, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %462 = fptoui <2 x double> %461 to <2 x i16>
  store <2 x i16> %462, ptr %96, align 2, !tbaa !36
  %463 = load <2 x i16>, ptr %101, align 2, !tbaa !36
  %464 = zext <2 x i16> %463 to <2 x i32>
  %465 = load <2 x i16>, ptr %98, align 2, !tbaa !36
  %466 = zext <2 x i16> %465 to <2 x i32>
  %467 = mul nuw nsw <2 x i32> %466, %464
  %468 = load <2 x i16>, ptr %100, align 2, !tbaa !36
  %469 = zext <2 x i16> %468 to <2 x i32>
  %470 = load <2 x i16>, ptr %99, align 2, !tbaa !36
  %471 = zext <2 x i16> %470 to <2 x i32>
  %472 = mul nuw nsw <2 x i32> %471, %469
  %473 = add nuw nsw <2 x i32> %472, %467
  %474 = sitofp <2 x i32> %473 to <2 x double>
  %475 = fmul <2 x double> %474, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %476 = fptoui <2 x double> %475 to <2 x i16>
  store <2 x i16> %476, ptr %97, align 2, !tbaa !36
  %477 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 6
  %478 = load i32, ptr %477, align 8, !tbaa !37
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %640, label %480

480:                                              ; preds = %414
  %481 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %482 = load i16, ptr %481, align 2, !tbaa !38
  %483 = zext i16 %482 to i32
  %484 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 3
  %485 = load i16, ptr %484, align 2, !tbaa !38
  %486 = zext i16 %485 to i32
  %487 = mul nuw nsw i32 %486, %483
  %488 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 3
  %489 = load i16, ptr %488, align 2, !tbaa !38
  %490 = zext i16 %489 to i32
  %491 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  %492 = load i16, ptr %491, align 2, !tbaa !38
  %493 = zext i16 %492 to i32
  %494 = mul nuw nsw i32 %493, %490
  %495 = sub nsw i32 %487, %494
  %496 = sitofp i32 %495 to double
  %497 = fmul double %496, 0x3EF0001000100010
  %498 = fptoui double %497 to i16
  %499 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  store i16 %498, ptr %499, align 2, !tbaa !38
  %500 = load i16, ptr %488, align 2, !tbaa !38
  %501 = zext i16 %500 to i32
  %502 = load i16, ptr %484, align 2, !tbaa !38
  %503 = zext i16 %502 to i32
  %504 = mul nuw nsw i32 %503, %501
  %505 = load i16, ptr %481, align 2, !tbaa !38
  %506 = zext i16 %505 to i32
  %507 = load i16, ptr %491, align 2, !tbaa !38
  %508 = zext i16 %507 to i32
  %509 = mul nuw nsw i32 %508, %506
  %510 = add nuw nsw i32 %509, %504
  %511 = sitofp i32 %510 to double
  %512 = fmul double %511, 0x3EF0001000100010
  %513 = fptoui double %512 to i16
  br label %637

514:                                              ; preds = %93
  %515 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %516 = load i16, ptr %515, align 2, !tbaa !35
  %517 = uitofp i16 %516 to double
  %518 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 2
  %519 = load i16, ptr %518, align 2, !tbaa !35
  %520 = uitofp i16 %519 to double
  %521 = fadd double %520, -5.000000e-01
  %522 = fmul double %521, 0x401921FB54442D18
  %523 = call double @cos(double noundef %522) #11
  %524 = fmul double %523, %517
  %525 = fptoui double %524 to i16
  %526 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  store i16 %525, ptr %526, align 2, !tbaa !35
  %527 = load i16, ptr %515, align 2, !tbaa !35
  %528 = uitofp i16 %527 to double
  %529 = load i16, ptr %518, align 2, !tbaa !35
  %530 = uitofp i16 %529 to double
  %531 = fadd double %530, -5.000000e-01
  %532 = fmul double %531, 0x401921FB54442D18
  %533 = call double @sin(double noundef %532) #11
  %534 = fmul double %533, %528
  %535 = fptoui double %534 to i16
  %536 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %535, ptr %536, align 2, !tbaa !35
  %537 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  %538 = load i16, ptr %537, align 2, !tbaa !39
  %539 = uitofp i16 %538 to double
  %540 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 1
  %541 = load i16, ptr %540, align 2, !tbaa !39
  %542 = uitofp i16 %541 to double
  %543 = fadd double %542, -5.000000e-01
  %544 = fmul double %543, 0x401921FB54442D18
  %545 = call double @cos(double noundef %544) #11
  %546 = fmul double %545, %539
  %547 = fptoui double %546 to i16
  %548 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 1
  store i16 %547, ptr %548, align 2, !tbaa !39
  %549 = load i16, ptr %537, align 2, !tbaa !39
  %550 = uitofp i16 %549 to double
  %551 = load i16, ptr %540, align 2, !tbaa !39
  %552 = uitofp i16 %551 to double
  %553 = fadd double %552, -5.000000e-01
  %554 = fmul double %553, 0x401921FB54442D18
  %555 = call double @sin(double noundef %554) #11
  %556 = fmul double %555, %550
  %557 = fptoui double %556 to i16
  %558 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 1
  store i16 %557, ptr %558, align 2, !tbaa !39
  %559 = load i16, ptr %100, align 2, !tbaa !40
  %560 = uitofp i16 %559 to double
  %561 = load i16, ptr %101, align 2, !tbaa !40
  %562 = uitofp i16 %561 to double
  %563 = fadd double %562, -5.000000e-01
  %564 = fmul double %563, 0x401921FB54442D18
  %565 = call double @cos(double noundef %564) #11
  %566 = fmul double %565, %560
  %567 = fptoui double %566 to i16
  store i16 %567, ptr %96, align 2, !tbaa !40
  %568 = load i16, ptr %100, align 2, !tbaa !40
  %569 = uitofp i16 %568 to double
  %570 = load i16, ptr %101, align 2, !tbaa !40
  %571 = uitofp i16 %570 to double
  %572 = fadd double %571, -5.000000e-01
  %573 = fmul double %572, 0x401921FB54442D18
  %574 = call double @sin(double noundef %573) #11
  %575 = fmul double %574, %569
  %576 = fptoui double %575 to i16
  store i16 %576, ptr %97, align 2, !tbaa !40
  %577 = load ptr, ptr %2, align 8, !tbaa !6
  %578 = getelementptr inbounds %struct._Image, ptr %577, i64 0, i32 6
  %579 = load i32, ptr %578, align 8, !tbaa !37
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %640, label %581

581:                                              ; preds = %514
  %582 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %583 = load i16, ptr %582, align 2, !tbaa !38
  %584 = uitofp i16 %583 to double
  %585 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 3
  %586 = load i16, ptr %585, align 2, !tbaa !38
  %587 = uitofp i16 %586 to double
  %588 = fadd double %587, -5.000000e-01
  %589 = fmul double %588, 0x401921FB54442D18
  %590 = call double @cos(double noundef %589) #11
  %591 = fmul double %590, %584
  %592 = fptoui double %591 to i16
  %593 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  store i16 %592, ptr %593, align 2, !tbaa !38
  %594 = load i16, ptr %582, align 2, !tbaa !38
  %595 = uitofp i16 %594 to double
  %596 = load i16, ptr %585, align 2, !tbaa !38
  %597 = uitofp i16 %596 to double
  %598 = fadd double %597, -5.000000e-01
  %599 = fmul double %598, 0x401921FB54442D18
  %600 = call double @sin(double noundef %599) #11
  %601 = fmul double %600, %595
  %602 = fptoui double %601 to i16
  br label %637

603:                                              ; preds = %93
  %604 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %605 = load i16, ptr %604, align 2, !tbaa !35
  %606 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 2
  %607 = load i16, ptr %606, align 2, !tbaa !35
  %608 = sub i16 %605, %607
  %609 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  store i16 %608, ptr %609, align 2, !tbaa !35
  %610 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 2
  %611 = load i16, ptr %610, align 2, !tbaa !35
  %612 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %613 = load i16, ptr %612, align 2, !tbaa !35
  %614 = sub i16 %611, %613
  %615 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %614, ptr %615, align 2, !tbaa !35
  %616 = load <2 x i16>, ptr %100, align 2, !tbaa !36
  %617 = load <2 x i16>, ptr %98, align 2, !tbaa !36
  %618 = sub <2 x i16> %616, %617
  store <2 x i16> %618, ptr %96, align 2, !tbaa !36
  %619 = load <2 x i16>, ptr %101, align 2, !tbaa !36
  %620 = load <2 x i16>, ptr %99, align 2, !tbaa !36
  %621 = sub <2 x i16> %619, %620
  store <2 x i16> %621, ptr %97, align 2, !tbaa !36
  %622 = getelementptr inbounds %struct._Image, ptr %94, i64 0, i32 6
  %623 = load i32, ptr %622, align 8, !tbaa !37
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %640, label %625

625:                                              ; preds = %603
  %626 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %627 = load i16, ptr %626, align 2, !tbaa !38
  %628 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 0, i32 3
  %629 = load i16, ptr %628, align 2, !tbaa !38
  %630 = sub i16 %627, %629
  %631 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 3
  store i16 %630, ptr %631, align 2, !tbaa !38
  %632 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 3
  %633 = load i16, ptr %632, align 2, !tbaa !38
  %634 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  %635 = load i16, ptr %634, align 2, !tbaa !38
  %636 = sub i16 %633, %635
  br label %637

637:                                              ; preds = %125, %151, %392, %480, %581, %625, %283
  %638 = phi i16 [ %324, %283 ], [ %636, %625 ], [ %602, %581 ], [ %513, %480 ], [ %413, %392 ], [ %157, %151 ], [ %136, %125 ]
  %639 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 3
  store i16 %638, ptr %639, align 2, !tbaa !38
  br label %640

640:                                              ; preds = %637, %158, %603, %514, %414, %325, %137, %103
  %641 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 1
  %642 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 1
  %643 = getelementptr inbounds %struct._PixelPacket, ptr %98, i64 1
  %644 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 1
  %645 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 1
  %646 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 1
  %647 = add nuw nsw i64 %95, 1
  %648 = load ptr, ptr %2, align 8, !tbaa !6
  %649 = getelementptr inbounds %struct._Image, ptr %648, i64 0, i32 7
  %650 = load i64, ptr %649, align 8, !tbaa !28
  %651 = icmp slt i64 %647, %650
  br i1 %651, label %93, label %652, !llvm.loop !41

652:                                              ; preds = %640, %88
  %653 = load ptr, ptr %10, align 8, !tbaa !6
  %654 = load ptr, ptr %5, align 8, !tbaa !6
  %655 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %653, ptr noundef %654) #13
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %658

657:                                              ; preds = %652
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %658

658:                                              ; preds = %657, %652
  %659 = load ptr, ptr %9, align 8, !tbaa !6
  %660 = load ptr, ptr %5, align 8, !tbaa !6
  %661 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %659, ptr noundef %660) #13
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %664

663:                                              ; preds = %658
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %664

664:                                              ; preds = %663, %658
  %665 = load ptr, ptr %2, align 8, !tbaa !6
  %666 = getelementptr inbounds %struct._Image, ptr %665, i64 0, i32 47
  %667 = load ptr, ptr %666, align 8, !tbaa !43
  %668 = icmp eq ptr %667, null
  br i1 %668, label %678, label %669

669:                                              ; preds = %664
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_ComplexImages.var)
  %670 = load ptr, ptr %2, align 8, !tbaa !6
  %671 = load i64, ptr %13, align 8, !tbaa !33
  %672 = add nsw i64 %671, 1
  store i64 %672, ptr %13, align 8, !tbaa !33
  %673 = getelementptr inbounds %struct._Image, ptr %670, i64 0, i32 8
  %674 = load i64, ptr %673, align 8, !tbaa !29
  %675 = call fastcc i32 @SetImageProgress(ptr noundef %670, i64 noundef %671, i64 noundef %674) #12
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_ComplexImages.var)
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %678

677:                                              ; preds = %669, %38
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %678

678:                                              ; preds = %677, %664, %669, %34
  %679 = add nsw i64 %35, 1
  %680 = load i64, ptr %16, align 8, !tbaa !34
  %681 = icmp slt i64 %35, %680
  br i1 %681, label %34, label %682

682:                                              ; preds = %678
  %683 = load i64, ptr %15, align 8, !tbaa !34
  br label %684

684:                                              ; preds = %682, %30
  %685 = phi i64 [ %32, %30 ], [ %683, %682 ]
  %686 = phi i64 [ %31, %30 ], [ %680, %682 ]
  %687 = load i64, ptr %17, align 8, !tbaa !34
  %688 = add nsw i64 %687, %685
  store i64 %688, ptr %15, align 8, !tbaa !34
  %689 = add nsw i64 %687, %686
  %690 = call i64 @llvm.smin.i64(i64 %689, i64 %22)
  store i64 %690, ptr %16, align 8, !tbaa !34
  %691 = icmp sgt i64 %688, %690
  br i1 %691, label %692, label %30

692:                                              ; preds = %684, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #4
  br label %693

693:                                              ; preds = %692, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #6 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #8

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #8

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #11
  %11 = load ptr, ptr %5, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #11
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #4
  ret i32 %16
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
declare !callback !45 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ForwardFourierTransformImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @NewImageList() #11
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1014, i32 noundef 320, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #11
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @InverseFourierTransformImage(ptr noundef %0, ptr noundef readnone %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1626, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #11
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp eq ptr %1, null
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  br i1 %12, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1630, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #11
  br label %18

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1637, i32 noundef 320, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull %13) #11
  br label %18

18:                                               ; preds = %16, %14
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { convergent nounwind }
attributes #9 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { hot nounwind optsize }

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
!27 = !{!13, !7, i64 13104}
!28 = !{!13, !14, i64 40}
!29 = !{!13, !14, i64 48}
!30 = !{!13, !11, i64 0}
!31 = !{!13, !14, i64 56}
!32 = !{!17, !17, i64 0}
!33 = !{!26, !26, i64 0}
!34 = !{!14, !14, i64 0}
!35 = !{!15, !16, i64 4}
!36 = !{!16, !16, i64 0}
!37 = !{!13, !11, i64 32}
!38 = !{!15, !16, i64 6}
!39 = !{!15, !16, i64 2}
!40 = !{!15, !16, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!13, !7, i64 568}
!44 = !{!13, !7, i64 576}
!45 = !{!46}
!46 = !{i64 2, i64 -1, i64 -1, i1 true}
