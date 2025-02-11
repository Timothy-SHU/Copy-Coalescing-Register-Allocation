; ModuleID = 'magick/transform.c'
source_filename = "magick/transform.c"
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

@.str = private unnamed_addr constant [19 x i8] c"magick/transform.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GeometryDoesNotContainImage\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_ChopImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Chop/Image\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.gomp_critical_user_MagickCore_CropImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"Crop/Image\00", align 1
@.gomp_critical_user_MagickCore_ExcerptImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"Excerpt/Image\00", align 1
@.gomp_critical_user_MagickCore_FlipImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"Flip/Image\00", align 1
@.gomp_critical_user_MagickCore_FlopImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"Flop/Image\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Roll/Image\00", align 1
@.gomp_critical_user_MagickCore_TransposeImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"Splice/Image\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Transpose/Image\00", align 1
@.gomp_critical_user_MagickCore_TransverseImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"Transverse/Image\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AutoOrientImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  switch i32 %1, label %4 [
    i32 8, label %18
    i32 7, label %16
    i32 2, label %6
    i32 3, label %8
    i32 4, label %10
    i32 5, label %12
    i32 6, label %14
  ]

4:                                                ; preds = %3
  %5 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #12
  br label %20

6:                                                ; preds = %3
  %7 = tail call ptr @FlopImage(ptr noundef %0, ptr noundef %2) #13
  br label %20

8:                                                ; preds = %3
  %9 = tail call ptr @RotateImage(ptr noundef %0, double noundef 1.800000e+02, ptr noundef %2) #12
  br label %20

10:                                               ; preds = %3
  %11 = tail call ptr @FlipImage(ptr noundef %0, ptr noundef %2) #13
  br label %20

12:                                               ; preds = %3
  %13 = tail call ptr @TransposeImage(ptr noundef %0, ptr noundef %2) #13
  br label %20

14:                                               ; preds = %3
  %15 = tail call ptr @RotateImage(ptr noundef %0, double noundef 9.000000e+01, ptr noundef %2) #12
  br label %20

16:                                               ; preds = %3
  %17 = tail call ptr @TransverseImage(ptr noundef %0, ptr noundef %2) #13
  br label %20

18:                                               ; preds = %3
  %19 = tail call ptr @RotateImage(ptr noundef %0, double noundef 2.700000e+02, ptr noundef %2) #12
  br label %20

20:                                               ; preds = %18, %16, %14, %12, %10, %8, %6, %4
  %21 = phi ptr [ %5, %4 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 4
  store i32 1, ptr %24, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %23, %20
  ret ptr %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FlopImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !25
  store ptr %1, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1386, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #12
  br label %17

17:                                               ; preds = %14, %2
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !28
  %22 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %21, i32 noundef 1, ptr noundef %1) #12
  store ptr %22, ptr %7, align 8, !tbaa !25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %76, label %24

24:                                               ; preds = %17
  store i32 1, ptr %8, align 4, !tbaa !29
  store i64 0, ptr %9, align 8, !tbaa !30
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %26 = load <2 x i64>, ptr %25, align 8
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa.struct !31
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa.struct !33
  %31 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #12
  store ptr %31, ptr %6, align 8, !tbaa !25
  %32 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %22, ptr noundef %1) #12
  store ptr %32, ptr %5, align 8, !tbaa !25
  %33 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %34 = and i64 %33, 576460752303423487
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #12
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %22) #12
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %48

44:                                               ; preds = %39, %36, %24
  %45 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %46 = icmp ult i64 %45, 2
  %47 = select i1 %46, i64 1, i64 2
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i64 [ %43, %42 ], [ %47, %44 ]
  %50 = trunc i64 %49 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %10, i32 %50)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @FlopImage.omp_outlined, ptr nonnull %7, ptr nonnull %8, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5, ptr nonnull %9)
  %51 = load ptr, ptr %5, align 8, !tbaa !25
  %52 = call ptr @DestroyCacheView(ptr noundef %51) #12
  store ptr %52, ptr %5, align 8, !tbaa !25
  %53 = load ptr, ptr %6, align 8, !tbaa !25
  %54 = call ptr @DestroyCacheView(ptr noundef %53) #12
  store ptr %54, ptr %6, align 8, !tbaa !25
  %55 = load ptr, ptr %3, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 77
  %57 = load i32, ptr %56, align 8, !tbaa !34
  %58 = load ptr, ptr %7, align 8, !tbaa !25
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 77
  store i32 %57, ptr %59, align 8, !tbaa !34
  %60 = extractelement <2 x i64> %26, i64 0
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %64 = load i64, ptr %63, align 8, !tbaa !27
  %65 = add i64 %28, %64
  %66 = sub i64 %60, %65
  br label %67

67:                                               ; preds = %62, %48
  %68 = phi i64 [ %66, %62 ], [ %28, %48 ]
  %69 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 26
  store <2 x i64> %26, ptr %69, align 8
  %70 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 26, i32 2
  store i64 %68, ptr %70, align 8, !tbaa.struct !31
  %71 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 26, i32 3
  store i64 %30, ptr %71, align 8, !tbaa.struct !33
  %72 = load i32, ptr %8, align 4, !tbaa !29
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = call ptr @DestroyImage(ptr noundef nonnull %58) #12
  br label %76

76:                                               ; preds = %67, %74, %17
  %77 = phi ptr [ null, %17 ], [ %75, %74 ], [ %58, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret ptr %77
}

; Function Attrs: optsize
declare ptr @RotateImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FlipImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !25
  store ptr %1, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1258, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #12
  br label %17

17:                                               ; preds = %14, %2
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !28
  %22 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %21, i32 noundef 1, ptr noundef %1) #12
  store ptr %22, ptr %7, align 8, !tbaa !25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %76, label %24

24:                                               ; preds = %17
  store i32 1, ptr %8, align 4, !tbaa !29
  store i64 0, ptr %9, align 8, !tbaa !30
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %26 = load i64, ptr %25, align 8, !tbaa.struct !35
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %28 = load <2 x i64>, ptr %27, align 8
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa.struct !33
  %31 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #12
  store ptr %31, ptr %6, align 8, !tbaa !25
  %32 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %22, ptr noundef %1) #12
  store ptr %32, ptr %5, align 8, !tbaa !25
  %33 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %34 = and i64 %33, 576460752303423487
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #12
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %22) #12
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %48

44:                                               ; preds = %39, %36, %24
  %45 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %46 = icmp ult i64 %45, 2
  %47 = select i1 %46, i64 1, i64 2
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i64 [ %43, %42 ], [ %47, %44 ]
  %50 = trunc i64 %49 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %10, i32 %50)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @FlipImage.omp_outlined, ptr nonnull %7, ptr nonnull %8, ptr nonnull %6, ptr nonnull %3, ptr nonnull %4, ptr nonnull %5, ptr nonnull %9)
  %51 = load ptr, ptr %5, align 8, !tbaa !25
  %52 = call ptr @DestroyCacheView(ptr noundef %51) #12
  store ptr %52, ptr %5, align 8, !tbaa !25
  %53 = load ptr, ptr %6, align 8, !tbaa !25
  %54 = call ptr @DestroyCacheView(ptr noundef %53) #12
  store ptr %54, ptr %6, align 8, !tbaa !25
  %55 = load ptr, ptr %3, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 77
  %57 = load i32, ptr %56, align 8, !tbaa !34
  %58 = load ptr, ptr %7, align 8, !tbaa !25
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 77
  store i32 %57, ptr %59, align 8, !tbaa !34
  %60 = extractelement <2 x i64> %28, i64 0
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 8
  %64 = load i64, ptr %63, align 8, !tbaa !28
  %65 = add i64 %30, %64
  %66 = sub i64 %60, %65
  br label %67

67:                                               ; preds = %62, %48
  %68 = phi i64 [ %66, %62 ], [ %30, %48 ]
  %69 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 26
  store i64 %26, ptr %69, align 8, !tbaa.struct !35
  %70 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 26, i32 1
  store <2 x i64> %28, ptr %70, align 8
  %71 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 26, i32 3
  store i64 %68, ptr %71, align 8, !tbaa.struct !33
  %72 = load i32, ptr %8, align 4, !tbaa !29
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = call ptr @DestroyImage(ptr noundef nonnull %58) #12
  br label %76

76:                                               ; preds = %67, %74, %17
  %77 = phi ptr [ null, %17 ], [ %75, %74 ], [ %58, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret ptr %77
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @TransposeImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !25
  store ptr %1, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2215, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #12
  br label %17

17:                                               ; preds = %14, %2
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !28
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !27
  %22 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %21, i32 noundef 1, ptr noundef %1) #12
  store ptr %22, ptr %7, align 8, !tbaa !25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %65, label %24

24:                                               ; preds = %17
  store i32 1, ptr %8, align 4, !tbaa !29
  store i64 0, ptr %9, align 8, !tbaa !30
  %25 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #12
  store ptr %25, ptr %5, align 8, !tbaa !25
  %26 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %22, ptr noundef %1) #12
  store ptr %26, ptr %6, align 8, !tbaa !25
  %27 = load i64, ptr %18, align 8, !tbaa !28
  %28 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %29 = shl i64 %28, 5
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #12
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %22) #12
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %43

39:                                               ; preds = %34, %31, %24
  %40 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %41 = icmp ult i64 %40, 2
  %42 = select i1 %41, i64 1, i64 2
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i64 [ %38, %37 ], [ %42, %39 ]
  %45 = trunc i64 %44 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %10, i32 %45)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @TransposeImage.omp_outlined, ptr nonnull %3, ptr nonnull %8, ptr nonnull %5, ptr nonnull %4, ptr nonnull %6, ptr nonnull %7, ptr nonnull %9)
  %46 = load ptr, ptr %6, align 8, !tbaa !25
  %47 = call ptr @DestroyCacheView(ptr noundef %46) #12
  store ptr %47, ptr %6, align 8, !tbaa !25
  %48 = load ptr, ptr %5, align 8, !tbaa !25
  %49 = call ptr @DestroyCacheView(ptr noundef %48) #12
  store ptr %49, ptr %5, align 8, !tbaa !25
  %50 = load ptr, ptr %3, align 8, !tbaa !25
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 77
  %52 = load i32, ptr %51, align 8, !tbaa !34
  %53 = load ptr, ptr %7, align 8, !tbaa !25
  %54 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 77
  store i32 %52, ptr %54, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 26
  %56 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 26, i32 2
  %57 = load <2 x i64>, ptr %55, align 8
  %58 = shufflevector <2 x i64> %57, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %58, ptr %55, align 8
  %59 = load <2 x i64>, ptr %56, align 8
  %60 = shufflevector <2 x i64> %59, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %60, ptr %56, align 8
  %61 = load i32, ptr %8, align 4, !tbaa !29
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = call ptr @DestroyImage(ptr noundef nonnull %53) #12
  br label %65

65:                                               ; preds = %43, %63, %17
  %66 = phi ptr [ null, %17 ], [ %64, %63 ], [ %53, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret ptr %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @TransverseImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !25
  store ptr %1, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2344, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #12
  br label %17

17:                                               ; preds = %14, %2
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !28
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !27
  %22 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %21, i32 noundef 1, ptr noundef %1) #12
  store ptr %22, ptr %7, align 8, !tbaa !25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %83, label %24

24:                                               ; preds = %17
  store i32 1, ptr %8, align 4, !tbaa !29
  store i64 0, ptr %9, align 8, !tbaa !30
  %25 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #12
  store ptr %25, ptr %5, align 8, !tbaa !25
  %26 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %22, ptr noundef %1) #12
  store ptr %26, ptr %6, align 8, !tbaa !25
  %27 = load i64, ptr %18, align 8, !tbaa !28
  %28 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %29 = shl i64 %28, 5
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #12
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %22) #12
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %43

39:                                               ; preds = %34, %31, %24
  %40 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %41 = icmp ult i64 %40, 2
  %42 = select i1 %41, i64 1, i64 2
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i64 [ %38, %37 ], [ %42, %39 ]
  %45 = trunc i64 %44 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %10, i32 %45)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @TransverseImage.omp_outlined, ptr nonnull %3, ptr nonnull %8, ptr nonnull %5, ptr nonnull %4, ptr nonnull %6, ptr nonnull %7, ptr nonnull %9)
  %46 = load ptr, ptr %6, align 8, !tbaa !25
  %47 = call ptr @DestroyCacheView(ptr noundef %46) #12
  store ptr %47, ptr %6, align 8, !tbaa !25
  %48 = load ptr, ptr %5, align 8, !tbaa !25
  %49 = call ptr @DestroyCacheView(ptr noundef %48) #12
  store ptr %49, ptr %5, align 8, !tbaa !25
  %50 = load ptr, ptr %3, align 8, !tbaa !25
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 77
  %52 = load i32, ptr %51, align 8, !tbaa !34
  %53 = load ptr, ptr %7, align 8, !tbaa !25
  %54 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 77
  store i32 %52, ptr %54, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 26
  %56 = load i64, ptr %55, align 8, !tbaa.struct !35
  %57 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 26, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa.struct !36
  %59 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 26, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa.struct !31
  %61 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 26, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa.struct !33
  %63 = icmp eq i64 %58, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %43
  %65 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 7
  %66 = load i64, ptr %65, align 8, !tbaa !27
  %67 = add i64 %62, %66
  %68 = sub i64 %58, %67
  br label %69

69:                                               ; preds = %64, %43
  %70 = phi i64 [ %68, %64 ], [ %62, %43 ]
  %71 = icmp eq i64 %56, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 8
  %74 = load i64, ptr %73, align 8, !tbaa !28
  %75 = add i64 %60, %74
  %76 = sub i64 %56, %75
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi i64 [ %76, %72 ], [ %60, %69 ]
  store i64 %58, ptr %55, align 8, !tbaa.struct !35
  store i64 %56, ptr %57, align 8, !tbaa.struct !36
  store i64 %70, ptr %59, align 8, !tbaa.struct !31
  store i64 %78, ptr %61, align 8, !tbaa.struct !33
  %79 = load i32, ptr %8, align 4, !tbaa !29
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call ptr @DestroyImage(ptr noundef nonnull %53) #12
  br label %83

83:                                               ; preds = %77, %81, %17
  %84 = phi ptr [ null, %17 ], [ %82, %81 ], [ %53, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  ret ptr %84
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ChopImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct._RectangleInfo, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !25
  store ptr %2, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 217, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #12
  br label %19

19:                                               ; preds = %16, %3
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !37
  %22 = load i64, ptr %1, align 8, !tbaa !38
  %23 = add nsw i64 %22, %21
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !39
  %28 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !40
  %30 = add nsw i64 %29, %27
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %34 = load i64, ptr %33, align 8, !tbaa !27
  %35 = icmp sgt i64 %21, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !28
  %39 = icmp sgt i64 %27, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32, %25, %19
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %42 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 225, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %41) #12
  br label %131

43:                                               ; preds = %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !35
  %44 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !37
  %46 = load i64, ptr %11, align 8, !tbaa !38
  %47 = add nsw i64 %46, %45
  %48 = icmp sgt i64 %47, %34
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = sub nsw i64 %34, %45
  store i64 %50, ptr %11, align 8, !tbaa !38
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi i64 [ %50, %49 ], [ %46, %43 ]
  %53 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 3
  %54 = load i64, ptr %53, align 8, !tbaa !39
  %55 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !40
  %57 = add nsw i64 %56, %54
  %58 = icmp sgt i64 %57, %38
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = sub nsw i64 %38, %54
  store i64 %60, ptr %55, align 8, !tbaa !40
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi i64 [ %60, %59 ], [ %56, %51 ]
  %63 = icmp slt i64 %45, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = add i64 %52, %45
  store i64 %65, ptr %11, align 8, !tbaa !38
  store i64 0, ptr %44, align 8, !tbaa !37
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i64 [ %65, %64 ], [ %52, %61 ]
  %68 = icmp slt i64 %54, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = add i64 %62, %54
  store i64 %70, ptr %55, align 8, !tbaa !40
  store i64 0, ptr %53, align 8, !tbaa !39
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i64 [ %70, %69 ], [ %62, %66 ]
  %73 = sub i64 %34, %67
  %74 = sub i64 %38, %72
  %75 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %73, i64 noundef %74, i32 noundef 1, ptr noundef %2) #12
  store ptr %75, ptr %8, align 8, !tbaa !25
  %76 = icmp eq ptr %75, null
  br i1 %76, label %131, label %77

77:                                               ; preds = %71
  store i32 1, ptr %9, align 4, !tbaa !29
  store i64 0, ptr %10, align 8, !tbaa !30
  %78 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #12
  store ptr %78, ptr %7, align 8, !tbaa !25
  %79 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %75, ptr noundef %2) #12
  store ptr %79, ptr %6, align 8, !tbaa !25
  %80 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %81 = and i64 %80, 576460752303423487
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #12
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %75) #12
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %95

91:                                               ; preds = %86, %83, %77
  %92 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %93 = icmp ult i64 %92, 2
  %94 = select i1 %93, i64 1, i64 2
  br label %95

95:                                               ; preds = %91, %89
  %96 = phi i64 [ %90, %89 ], [ %94, %91 ]
  %97 = trunc i64 %96 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %97)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @ChopImage.omp_outlined, ptr nonnull %11, ptr nonnull %9, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, ptr nonnull %8, ptr nonnull %10)
  %98 = call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %99 = and i64 %98, 576460752303423487
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load ptr, ptr %4, align 8, !tbaa !25
  %103 = call i32 @GetImagePixelCacheType(ptr noundef %102) #12
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %4, align 8, !tbaa !25
  %107 = call i32 @GetImagePixelCacheType(ptr noundef %106) #12
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %115

111:                                              ; preds = %105, %101, %95
  %112 = call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %113 = icmp ult i64 %112, 2
  %114 = select i1 %113, i64 1, i64 2
  br label %115

115:                                              ; preds = %111, %109
  %116 = phi i64 [ %110, %109 ], [ %114, %111 ]
  %117 = trunc i64 %116 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %117)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @ChopImage.omp_outlined.6, ptr nonnull %4, ptr nonnull %11, ptr nonnull %9, ptr nonnull %7, ptr nonnull %5, ptr nonnull %6, ptr nonnull %8, ptr nonnull %10)
  %118 = load ptr, ptr %6, align 8, !tbaa !25
  %119 = call ptr @DestroyCacheView(ptr noundef %118) #12
  store ptr %119, ptr %6, align 8, !tbaa !25
  %120 = load ptr, ptr %7, align 8, !tbaa !25
  %121 = call ptr @DestroyCacheView(ptr noundef %120) #12
  store ptr %121, ptr %7, align 8, !tbaa !25
  %122 = load ptr, ptr %4, align 8, !tbaa !25
  %123 = getelementptr inbounds %struct._Image, ptr %122, i64 0, i32 77
  %124 = load i32, ptr %123, align 8, !tbaa !34
  %125 = load ptr, ptr %8, align 8, !tbaa !25
  %126 = getelementptr inbounds %struct._Image, ptr %125, i64 0, i32 77
  store i32 %124, ptr %126, align 8, !tbaa !34
  %127 = load i32, ptr %9, align 4, !tbaa !29
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %115
  %130 = call ptr @DestroyImage(ptr noundef nonnull %125) #12
  br label %131

131:                                              ; preds = %115, %129, %71, %40
  %132 = phi ptr [ null, %40 ], [ null, %71 ], [ %130, %129 ], [ %125, %115 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret ptr %132
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ChopImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #4 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !39
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %130

19:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 0, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 %17, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  store i64 1, ptr %13, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 0, ptr %14, align 4, !tbaa !29
  %20 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %21 = load i64, ptr %12, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %12, align 8, !tbaa !32
  %23 = load i64, ptr %11, align 8, !tbaa !32
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %129, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %121
  %28 = phi i64 [ %22, %25 ], [ %127, %121 ]
  %29 = phi i64 [ %23, %25 ], [ %125, %121 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %121, label %31

31:                                               ; preds = %27, %115
  %32 = phi i64 [ %116, %115 ], [ %29, %27 ]
  %33 = load i32, ptr %3, align 4, !tbaa !29
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %115, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !25
  %37 = load ptr, ptr %5, align 8, !tbaa !25
  %38 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !27
  %40 = load ptr, ptr %6, align 8, !tbaa !25
  %41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %36, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %40) #14
  %42 = load ptr, ptr %7, align 8, !tbaa !25
  %43 = load ptr, ptr %8, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !27
  %46 = load ptr, ptr %6, align 8, !tbaa !25
  %47 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %42, i64 noundef 0, i64 noundef %32, i64 noundef %45, i64 noundef 1, ptr noundef %46) #14
  %48 = icmp eq ptr %41, null
  %49 = icmp eq ptr %47, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %114, label %51

51:                                               ; preds = %35
  %52 = load ptr, ptr %4, align 8, !tbaa !25
  %53 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #12
  %54 = load ptr, ptr %7, align 8, !tbaa !25
  %55 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %54) #12
  %56 = load ptr, ptr %5, align 8, !tbaa !25
  %57 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 7
  %58 = load i64, ptr %57, align 8, !tbaa !27
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %51
  %61 = icmp ne ptr %53, null
  br label %62

62:                                               ; preds = %60, %86
  %63 = phi ptr [ %56, %60 ], [ %87, %86 ]
  %64 = phi ptr [ %47, %60 ], [ %89, %86 ]
  %65 = phi i64 [ 0, %60 ], [ %91, %86 ]
  %66 = phi ptr [ %41, %60 ], [ %90, %86 ]
  %67 = phi ptr [ %55, %60 ], [ %88, %86 ]
  %68 = load i64, ptr %26, align 8, !tbaa !37
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = load i64, ptr %2, align 8, !tbaa !38
  %72 = add i64 %71, %68
  %73 = icmp slt i64 %65, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %70, %62
  %75 = load i64, ptr %66, align 2
  store i64 %75, ptr %64, align 2
  %76 = icmp ne ptr %67, null
  %77 = select i1 %61, i1 %76, i1 false
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = getelementptr inbounds i16, ptr %53, i64 %65
  %80 = load i16, ptr %79, align 2, !tbaa !41
  %81 = getelementptr inbounds i16, ptr %67, i64 1
  store i16 %80, ptr %67, align 2, !tbaa !41
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi ptr [ %81, %78 ], [ %67, %74 ]
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 1
  %85 = load ptr, ptr %5, align 8, !tbaa !25
  br label %86

86:                                               ; preds = %82, %70
  %87 = phi ptr [ %85, %82 ], [ %63, %70 ]
  %88 = phi ptr [ %83, %82 ], [ %67, %70 ]
  %89 = phi ptr [ %84, %82 ], [ %64, %70 ]
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %91 = add nuw nsw i64 %65, 1
  %92 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 7
  %93 = load i64, ptr %92, align 8, !tbaa !27
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %62, label %95, !llvm.loop !42

95:                                               ; preds = %86, %51
  %96 = load ptr, ptr %7, align 8, !tbaa !25
  %97 = load ptr, ptr %6, align 8, !tbaa !25
  %98 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %96, ptr noundef %97) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %101

101:                                              ; preds = %100, %95
  %102 = load ptr, ptr %5, align 8, !tbaa !25
  %103 = getelementptr inbounds %struct._Image, ptr %102, i64 0, i32 47
  %104 = load ptr, ptr %103, align 8, !tbaa !44
  %105 = icmp eq ptr %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %101
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_ChopImage.var)
  %107 = load ptr, ptr %5, align 8, !tbaa !25
  %108 = load i64, ptr %9, align 8, !tbaa !30
  %109 = add nsw i64 %108, 1
  store i64 %109, ptr %9, align 8, !tbaa !30
  %110 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 8
  %111 = load i64, ptr %110, align 8, !tbaa !28
  %112 = call fastcc i32 @SetImageProgress(ptr noundef %107, ptr noundef nonnull @.str.5, i64 noundef %108, i64 noundef %111) #13
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_ChopImage.var)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106, %35
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %115

115:                                              ; preds = %114, %101, %106, %31
  %116 = add nsw i64 %32, 1
  %117 = load i64, ptr %12, align 8, !tbaa !32
  %118 = icmp slt i64 %32, %117
  br i1 %118, label %31, label %119

119:                                              ; preds = %115
  %120 = load i64, ptr %11, align 8, !tbaa !32
  br label %121

121:                                              ; preds = %119, %27
  %122 = phi i64 [ %29, %27 ], [ %120, %119 ]
  %123 = phi i64 [ %28, %27 ], [ %117, %119 ]
  %124 = load i64, ptr %13, align 8, !tbaa !32
  %125 = add nsw i64 %124, %122
  store i64 %125, ptr %11, align 8, !tbaa !32
  %126 = add nsw i64 %124, %123
  %127 = call i64 @llvm.smin.i64(i64 %126, i64 %17)
  store i64 %127, ptr %12, align 8, !tbaa !32
  %128 = icmp sgt i64 %125, %127
  br i1 %128, label %129, label %27

129:                                              ; preds = %121, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  br label %130

130:                                              ; preds = %129, %10
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #5

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #7

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #5
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef %1, ptr noundef nonnull %10) #12
  %12 = load ptr, ptr %6, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #12
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #5
  ret i32 %17
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !46 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ChopImage.omp_outlined.6(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #4 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !40
  %22 = add i64 %19, %21
  %23 = sub i64 %17, %22
  %24 = add nsw i64 %23, -1
  %25 = icmp sgt i64 %23, 0
  br i1 %25, label %26, label %143

26:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 0, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 %24, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  store i64 1, ptr %13, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 0, ptr %14, align 4, !tbaa !29
  %27 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %27, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %28 = load i64, ptr %12, align 8
  %29 = call i64 @llvm.smin.i64(i64 %28, i64 %24)
  store i64 %29, ptr %12, align 8, !tbaa !32
  %30 = load i64, ptr %11, align 8, !tbaa !32
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %142, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  br label %34

34:                                               ; preds = %32, %134
  %35 = phi i64 [ %29, %32 ], [ %140, %134 ]
  %36 = phi i64 [ %30, %32 ], [ %138, %134 ]
  %37 = icmp sgt i64 %36, %35
  br i1 %37, label %134, label %38

38:                                               ; preds = %34, %128
  %39 = phi i64 [ %129, %128 ], [ %36, %34 ]
  %40 = load i32, ptr %4, align 4, !tbaa !29
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %128, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %5, align 8, !tbaa !25
  %44 = load i64, ptr %18, align 8, !tbaa !39
  %45 = load i64, ptr %20, align 8, !tbaa !40
  %46 = add i64 %44, %39
  %47 = add i64 %46, %45
  %48 = load ptr, ptr %2, align 8, !tbaa !25
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !27
  %51 = load ptr, ptr %6, align 8, !tbaa !25
  %52 = call ptr @GetCacheViewVirtualPixels(ptr noundef %43, i64 noundef 0, i64 noundef %47, i64 noundef %50, i64 noundef 1, ptr noundef %51) #14
  %53 = load ptr, ptr %7, align 8, !tbaa !25
  %54 = load i64, ptr %18, align 8, !tbaa !39
  %55 = add nsw i64 %54, %39
  %56 = load ptr, ptr %8, align 8, !tbaa !25
  %57 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 7
  %58 = load i64, ptr %57, align 8, !tbaa !27
  %59 = load ptr, ptr %6, align 8, !tbaa !25
  %60 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %53, i64 noundef 0, i64 noundef %55, i64 noundef %58, i64 noundef 1, ptr noundef %59) #14
  %61 = icmp eq ptr %52, null
  %62 = icmp eq ptr %60, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %127, label %64

64:                                               ; preds = %42
  %65 = load ptr, ptr %5, align 8, !tbaa !25
  %66 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %65) #12
  %67 = load ptr, ptr %7, align 8, !tbaa !25
  %68 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %67) #12
  %69 = load ptr, ptr %2, align 8, !tbaa !25
  %70 = getelementptr inbounds %struct._Image, ptr %69, i64 0, i32 7
  %71 = load i64, ptr %70, align 8, !tbaa !27
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %64
  %74 = icmp ne ptr %66, null
  br label %75

75:                                               ; preds = %73, %99
  %76 = phi ptr [ %69, %73 ], [ %100, %99 ]
  %77 = phi ptr [ %60, %73 ], [ %102, %99 ]
  %78 = phi i64 [ 0, %73 ], [ %104, %99 ]
  %79 = phi ptr [ %52, %73 ], [ %103, %99 ]
  %80 = phi ptr [ %68, %73 ], [ %101, %99 ]
  %81 = load i64, ptr %33, align 8, !tbaa !37
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = load i64, ptr %3, align 8, !tbaa !38
  %85 = add i64 %84, %81
  %86 = icmp slt i64 %78, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %83, %75
  %88 = load i64, ptr %79, align 2
  store i64 %88, ptr %77, align 2
  %89 = icmp ne ptr %80, null
  %90 = select i1 %74, i1 %89, i1 false
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds i16, ptr %66, i64 %78
  %93 = load i16, ptr %92, align 2, !tbaa !41
  %94 = getelementptr inbounds i16, ptr %80, i64 1
  store i16 %93, ptr %80, align 2, !tbaa !41
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi ptr [ %94, %91 ], [ %80, %87 ]
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1
  %98 = load ptr, ptr %2, align 8, !tbaa !25
  br label %99

99:                                               ; preds = %95, %83
  %100 = phi ptr [ %98, %95 ], [ %76, %83 ]
  %101 = phi ptr [ %96, %95 ], [ %80, %83 ]
  %102 = phi ptr [ %97, %95 ], [ %77, %83 ]
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 1
  %104 = add nuw nsw i64 %78, 1
  %105 = getelementptr inbounds %struct._Image, ptr %100, i64 0, i32 7
  %106 = load i64, ptr %105, align 8, !tbaa !27
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %75, label %108, !llvm.loop !48

108:                                              ; preds = %99, %64
  %109 = load ptr, ptr %7, align 8, !tbaa !25
  %110 = load ptr, ptr %6, align 8, !tbaa !25
  %111 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %109, ptr noundef %110) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 0, ptr %4, align 4, !tbaa !29
  br label %114

114:                                              ; preds = %113, %108
  %115 = load ptr, ptr %2, align 8, !tbaa !25
  %116 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 47
  %117 = load ptr, ptr %116, align 8, !tbaa !44
  %118 = icmp eq ptr %117, null
  br i1 %118, label %128, label %119

119:                                              ; preds = %114
  call void @__kmpc_critical(ptr nonnull @2, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_ChopImage.var)
  %120 = load ptr, ptr %2, align 8, !tbaa !25
  %121 = load i64, ptr %9, align 8, !tbaa !30
  %122 = add nsw i64 %121, 1
  store i64 %122, ptr %9, align 8, !tbaa !30
  %123 = getelementptr inbounds %struct._Image, ptr %120, i64 0, i32 8
  %124 = load i64, ptr %123, align 8, !tbaa !28
  %125 = call fastcc i32 @SetImageProgress(ptr noundef %120, ptr noundef nonnull @.str.5, i64 noundef %121, i64 noundef %124) #13
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_ChopImage.var)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119, %42
  store i32 0, ptr %4, align 4, !tbaa !29
  br label %128

128:                                              ; preds = %127, %114, %119, %38
  %129 = add nsw i64 %39, 1
  %130 = load i64, ptr %12, align 8, !tbaa !32
  %131 = icmp slt i64 %39, %130
  br i1 %131, label %38, label %132

132:                                              ; preds = %128
  %133 = load i64, ptr %11, align 8, !tbaa !32
  br label %134

134:                                              ; preds = %132, %34
  %135 = phi i64 [ %36, %34 ], [ %133, %132 ]
  %136 = phi i64 [ %35, %34 ], [ %130, %132 ]
  %137 = load i64, ptr %13, align 8, !tbaa !32
  %138 = add nsw i64 %137, %135
  store i64 %138, ptr %11, align 8, !tbaa !32
  %139 = add nsw i64 %137, %136
  %140 = call i64 @llvm.smin.i64(i64 %139, i64 %24)
  store i64 %140, ptr %12, align 8, !tbaa !32
  %141 = icmp sgt i64 %138, %140
  br i1 %141, label %142, label %34

142:                                              ; preds = %134, %26
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  br label %143

143:                                              ; preds = %142, %10
  ret void
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ConsolidateCMYKImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 432, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #12
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call ptr @NewImageList() #12
  store ptr %11, ptr %3, align 8, !tbaa !25
  %12 = tail call i64 @GetImageListLength(ptr noundef nonnull %0) #12
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %18, label %217

14:                                               ; preds = %212
  %15 = add nuw nsw i64 %20, 4
  %16 = call i64 @GetImageListLength(ptr noundef nonnull %215) #12
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %217, !llvm.loop !49

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %215, %14 ], [ %0, %10 ]
  %20 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !28
  %25 = call ptr @CloneImage(ptr noundef nonnull %19, i64 noundef %22, i64 noundef %24, i32 noundef 1, ptr noundef %1) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %217, label %27

27:                                               ; preds = %18
  %28 = call i32 @SetImageStorageClass(ptr noundef nonnull %25, i32 noundef 1) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %217, label %30

30:                                               ; preds = %27
  %31 = call i32 @SetImageColorspace(ptr noundef nonnull %25, i32 noundef 12) #12
  %32 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %19, ptr noundef %1) #12
  %33 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #12
  %34 = load i64, ptr %23, align 8, !tbaa !28
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %42

38:                                               ; preds = %67
  %39 = add nuw nsw i64 %43, 1
  %40 = load i64, ptr %23, align 8, !tbaa !28
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %70, !llvm.loop !50

42:                                               ; preds = %36, %38
  %43 = phi i64 [ 0, %36 ], [ %39, %38 ]
  %44 = load i64, ptr %21, align 8, !tbaa !27
  %45 = call ptr @GetCacheViewVirtualPixels(ptr noundef %32, i64 noundef 0, i64 noundef %43, i64 noundef %44, i64 noundef 1, ptr noundef %1) #14
  %46 = load i64, ptr %37, align 8, !tbaa !27
  %47 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %43, i64 noundef %46, i64 noundef 1, ptr noundef %1) #14
  %48 = icmp eq ptr %45, null
  %49 = icmp eq ptr %47, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %70, label %51

51:                                               ; preds = %42
  %52 = load i64, ptr %21, align 8, !tbaa !27
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %63, %54 ], [ %47, %51 ]
  %56 = phi i64 [ %64, %54 ], [ 0, %51 ]
  %57 = phi ptr [ %62, %54 ], [ %45, %51 ]
  %58 = call float @GetPixelIntensity(ptr noundef nonnull %19, ptr noundef nonnull %57) #14
  %59 = fsub float 6.553500e+04, %58
  %60 = call fastcc zeroext i16 @ClampToQuantum(float noundef %59) #13
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 2
  store i16 %60, ptr %61, align 2, !tbaa !51
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 1
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 1
  %64 = add nuw nsw i64 %56, 1
  %65 = load i64, ptr %21, align 8, !tbaa !27
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %54, label %67, !llvm.loop !52

67:                                               ; preds = %54, %51
  %68 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %33, ptr noundef %1) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %38

70:                                               ; preds = %38, %42, %67, %30
  %71 = call ptr @DestroyCacheView(ptr noundef %33) #12
  %72 = call ptr @DestroyCacheView(ptr noundef %32) #12
  %73 = call ptr @GetNextImageInList(ptr noundef nonnull %19) #12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %217, label %75

75:                                               ; preds = %70
  %76 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %73, ptr noundef %1) #12
  %77 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #12
  %78 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 8
  %79 = load i64, ptr %78, align 8, !tbaa !28
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %83 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %88

84:                                               ; preds = %113
  %85 = add nuw nsw i64 %89, 1
  %86 = load i64, ptr %78, align 8, !tbaa !28
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %116, !llvm.loop !53

88:                                               ; preds = %81, %84
  %89 = phi i64 [ 0, %81 ], [ %85, %84 ]
  %90 = load i64, ptr %82, align 8, !tbaa !27
  %91 = call ptr @GetCacheViewVirtualPixels(ptr noundef %76, i64 noundef 0, i64 noundef %89, i64 noundef %90, i64 noundef 1, ptr noundef %1) #14
  %92 = load i64, ptr %83, align 8, !tbaa !27
  %93 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %77, i64 noundef 0, i64 noundef %89, i64 noundef %92, i64 noundef 1, ptr noundef %1) #14
  %94 = icmp eq ptr %91, null
  %95 = icmp eq ptr %93, null
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %116, label %97

97:                                               ; preds = %88
  %98 = load i64, ptr %82, align 8, !tbaa !27
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97, %100
  %101 = phi ptr [ %109, %100 ], [ %93, %97 ]
  %102 = phi i64 [ %110, %100 ], [ 0, %97 ]
  %103 = phi ptr [ %108, %100 ], [ %91, %97 ]
  %104 = call float @GetPixelIntensity(ptr noundef nonnull %73, ptr noundef nonnull %103) #14
  %105 = fsub float 6.553500e+04, %104
  %106 = call fastcc zeroext i16 @ClampToQuantum(float noundef %105) #13
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 1
  store i16 %106, ptr %107, align 2, !tbaa !54
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 1
  %110 = add nuw nsw i64 %102, 1
  %111 = load i64, ptr %82, align 8, !tbaa !27
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %100, label %113, !llvm.loop !55

113:                                              ; preds = %100, %97
  %114 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %77, ptr noundef %1) #14
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %84

116:                                              ; preds = %84, %88, %113, %75
  %117 = call ptr @DestroyCacheView(ptr noundef %77) #12
  %118 = call ptr @DestroyCacheView(ptr noundef %76) #12
  %119 = call ptr @GetNextImageInList(ptr noundef nonnull %73) #12
  %120 = icmp eq ptr %119, null
  br i1 %120, label %217, label %121

121:                                              ; preds = %116
  %122 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %119, ptr noundef %1) #12
  %123 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #12
  %124 = getelementptr inbounds %struct._Image, ptr %119, i64 0, i32 8
  %125 = load i64, ptr %124, align 8, !tbaa !28
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct._Image, ptr %119, i64 0, i32 7
  %129 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %134

130:                                              ; preds = %158
  %131 = add nuw nsw i64 %135, 1
  %132 = load i64, ptr %124, align 8, !tbaa !28
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %161, !llvm.loop !56

134:                                              ; preds = %127, %130
  %135 = phi i64 [ 0, %127 ], [ %131, %130 ]
  %136 = load i64, ptr %128, align 8, !tbaa !27
  %137 = call ptr @GetCacheViewVirtualPixels(ptr noundef %122, i64 noundef 0, i64 noundef %135, i64 noundef %136, i64 noundef 1, ptr noundef %1) #14
  %138 = load i64, ptr %129, align 8, !tbaa !27
  %139 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %123, i64 noundef 0, i64 noundef %135, i64 noundef %138, i64 noundef 1, ptr noundef %1) #14
  %140 = icmp eq ptr %137, null
  %141 = icmp eq ptr %139, null
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %161, label %143

143:                                              ; preds = %134
  %144 = load i64, ptr %128, align 8, !tbaa !27
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %143, %146
  %147 = phi ptr [ %154, %146 ], [ %139, %143 ]
  %148 = phi i64 [ %155, %146 ], [ 0, %143 ]
  %149 = phi ptr [ %153, %146 ], [ %137, %143 ]
  %150 = call float @GetPixelIntensity(ptr noundef nonnull %119, ptr noundef nonnull %149) #14
  %151 = fsub float 6.553500e+04, %150
  %152 = call fastcc zeroext i16 @ClampToQuantum(float noundef %151) #13
  store i16 %152, ptr %147, align 2, !tbaa !57
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 1
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %147, i64 1
  %155 = add nuw nsw i64 %148, 1
  %156 = load i64, ptr %128, align 8, !tbaa !27
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %146, label %158, !llvm.loop !58

158:                                              ; preds = %146, %143
  %159 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %123, ptr noundef %1) #14
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %130

161:                                              ; preds = %130, %134, %158, %121
  %162 = call ptr @DestroyCacheView(ptr noundef %123) #12
  %163 = call ptr @DestroyCacheView(ptr noundef %122) #12
  %164 = call ptr @GetNextImageInList(ptr noundef nonnull %119) #12
  %165 = icmp eq ptr %164, null
  br i1 %165, label %217, label %166

166:                                              ; preds = %161
  %167 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %164, ptr noundef %1) #12
  %168 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #12
  %169 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 8
  %170 = load i64, ptr %169, align 8, !tbaa !28
  %171 = icmp sgt i64 %170, 0
  br i1 %171, label %172, label %212

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 7
  %174 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %179

175:                                              ; preds = %209
  %176 = add nuw nsw i64 %180, 1
  %177 = load i64, ptr %169, align 8, !tbaa !28
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %212, !llvm.loop !59

179:                                              ; preds = %172, %175
  %180 = phi i64 [ 0, %172 ], [ %176, %175 ]
  %181 = load i64, ptr %173, align 8, !tbaa !27
  %182 = call ptr @GetCacheViewVirtualPixels(ptr noundef %167, i64 noundef 0, i64 noundef %180, i64 noundef %181, i64 noundef 1, ptr noundef %1) #14
  %183 = load i64, ptr %174, align 8, !tbaa !27
  %184 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %168, i64 noundef 0, i64 noundef %180, i64 noundef %183, i64 noundef 1, ptr noundef %1) #14
  %185 = icmp eq ptr %182, null
  %186 = icmp eq ptr %184, null
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %212, label %188

188:                                              ; preds = %179
  %189 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %168) #12
  %190 = load i64, ptr %173, align 8, !tbaa !27
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %209

192:                                              ; preds = %188
  %193 = icmp eq ptr %189, null
  br label %194

194:                                              ; preds = %192, %204
  %195 = phi i64 [ %190, %192 ], [ %205, %204 ]
  %196 = phi i64 [ 0, %192 ], [ %207, %204 ]
  %197 = phi ptr [ %182, %192 ], [ %206, %204 ]
  br i1 %193, label %204, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds i16, ptr %189, i64 %196
  %200 = call float @GetPixelIntensity(ptr noundef nonnull %164, ptr noundef nonnull %197) #14
  %201 = fsub float 6.553500e+04, %200
  %202 = call fastcc zeroext i16 @ClampToQuantum(float noundef %201) #13
  store i16 %202, ptr %199, align 2, !tbaa !41
  %203 = load i64, ptr %173, align 8, !tbaa !27
  br label %204

204:                                              ; preds = %198, %194
  %205 = phi i64 [ %203, %198 ], [ %195, %194 ]
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 1
  %207 = add nuw nsw i64 %196, 1
  %208 = icmp slt i64 %207, %205
  br i1 %208, label %194, label %209, !llvm.loop !60

209:                                              ; preds = %204, %188
  %210 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %168, ptr noundef %1) #14
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %175

212:                                              ; preds = %175, %179, %209, %166
  %213 = call ptr @DestroyCacheView(ptr noundef %168) #12
  %214 = call ptr @DestroyCacheView(ptr noundef %167) #12
  call void @AppendImageToList(ptr noundef nonnull %3, ptr noundef nonnull %25) #12
  %215 = call ptr @GetNextImageInList(ptr noundef nonnull %164) #12
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %14

217:                                              ; preds = %14, %18, %27, %70, %116, %161, %212, %10
  %218 = load ptr, ptr %3, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret ptr %218
}

; Function Attrs: optsize
declare ptr @NewImageList() local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CropImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct._RectangleInfo, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !25
  store ptr %2, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #12
  br label %19

19:                                               ; preds = %16, %3
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %21 = load i64, ptr %20, align 8, !tbaa.struct !35
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa.struct !36
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa.struct !31
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa.struct !33
  %28 = icmp eq i64 %21, 0
  %29 = icmp eq i64 %23, 0
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %33 = load i64, ptr %32, align 8, !tbaa !27
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !28
  br label %36

36:                                               ; preds = %19, %31
  %37 = phi i64 [ %35, %31 ], [ %23, %19 ]
  %38 = phi i64 [ %33, %31 ], [ %21, %19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !35
  %39 = load i64, ptr %11, align 8, !tbaa !38
  %40 = icmp eq i64 %39, 0
  %41 = select i1 %40, i64 %38, i64 %39
  %42 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !40
  %44 = icmp eq i64 %43, 0
  %45 = select i1 %44, i64 %37, i64 %43
  %46 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !37
  %48 = sub nsw i64 %25, %47
  %49 = icmp slt i64 %48, %41
  br i1 %49, label %50, label %65

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 3
  %52 = load i64, ptr %51, align 8, !tbaa !39
  %53 = sub nsw i64 %27, %52
  %54 = icmp slt i64 %53, %45
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = sub nsw i64 %47, %25
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %58 = load i64, ptr %57, align 8, !tbaa !27
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = sub nsw i64 %52, %27
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %63 = load i64, ptr %62, align 8, !tbaa !28
  %64 = icmp sgt i64 %61, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %60, %55, %50, %36
  %66 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %67 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 666, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %66) #12
  %68 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 1, i32 noundef 1, ptr noundef %2) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %188, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 12, i32 3
  store i16 -1, ptr %71, align 2, !tbaa !61
  %72 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %68) #12
  %73 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 26
  store i64 %38, ptr %73, align 8, !tbaa.struct !35
  %74 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 26, i32 1
  store i64 %37, ptr %74, align 8, !tbaa.struct !36
  %75 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 26, i32 2
  %76 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 -1, i64 16, i1 false)
  %77 = load i32, ptr %76, align 4, !tbaa !62
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %188

79:                                               ; preds = %70
  store i32 1, ptr %76, align 4, !tbaa !62
  br label %188

80:                                               ; preds = %60
  %81 = icmp slt i64 %47, 0
  %82 = icmp sgt i64 %25, -1
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = add i64 %41, %56
  br label %89

86:                                               ; preds = %80
  %87 = sub i64 %41, %48
  %88 = tail call i64 @llvm.smax.i64(i64 %56, i64 0)
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi i64 [ %85, %84 ], [ %87, %86 ]
  %91 = phi i64 [ 0, %84 ], [ %88, %86 ]
  store i64 %90, ptr %11, align 8
  store i64 %91, ptr %46, align 8
  %92 = icmp slt i64 %52, 0
  %93 = icmp sgt i64 %27, -1
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = add i64 %45, %61
  br label %100

97:                                               ; preds = %89
  %98 = add i64 %61, %45
  %99 = tail call i64 @llvm.smax.i64(i64 %61, i64 0)
  br label %100

100:                                              ; preds = %97, %95
  %101 = phi i64 [ %96, %95 ], [ %98, %97 ]
  %102 = phi i64 [ 0, %95 ], [ %99, %97 ]
  store i64 %101, ptr %42, align 8
  store i64 %102, ptr %51, align 8
  %103 = add nsw i64 %90, %91
  %104 = icmp sgt i64 %103, %58
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = sub i64 %58, %91
  store i64 %106, ptr %11, align 8, !tbaa !38
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi i64 [ %106, %105 ], [ %90, %100 ]
  %109 = load i64, ptr %1, align 8, !tbaa !38
  %110 = icmp ne i64 %109, 0
  %111 = icmp ugt i64 %108, %109
  %112 = and i1 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i64 %109, ptr %11, align 8, !tbaa !38
  br label %114

114:                                              ; preds = %113, %107
  %115 = phi i64 [ %109, %113 ], [ %108, %107 ]
  %116 = add nsw i64 %101, %102
  %117 = icmp sgt i64 %116, %63
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = sub i64 %63, %102
  store i64 %119, ptr %42, align 8, !tbaa !40
  br label %120

120:                                              ; preds = %118, %114
  %121 = phi i64 [ %119, %118 ], [ %101, %114 ]
  %122 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !40
  %124 = icmp ne i64 %123, 0
  %125 = icmp ugt i64 %121, %123
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i64 %123, ptr %42, align 8, !tbaa !40
  br label %128

128:                                              ; preds = %127, %120
  %129 = phi i64 [ %123, %127 ], [ %121, %120 ]
  %130 = add nsw i64 %91, %25
  %131 = add nsw i64 %102, %27
  %132 = icmp eq i64 %115, 0
  %133 = icmp eq i64 %129, 0
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %137 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 716, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %136) #12
  br label %188

138:                                              ; preds = %128
  %139 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %115, i64 noundef %129, i32 noundef 1, ptr noundef %2) #12
  store ptr %139, ptr %8, align 8, !tbaa !25
  %140 = icmp eq ptr %139, null
  br i1 %140, label %188, label %141

141:                                              ; preds = %138
  %142 = load i64, ptr %20, align 8, !tbaa !63
  %143 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 26
  store i64 %142, ptr %143, align 8, !tbaa !63
  %144 = load i64, ptr %22, align 8, !tbaa !64
  %145 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 26, i32 1
  store i64 %144, ptr %145, align 8, !tbaa !64
  %146 = add i64 %130, %38
  %147 = icmp sgt i64 %146, %142
  %148 = add i64 %131, %37
  %149 = icmp sgt i64 %148, %144
  %150 = select i1 %147, i1 true, i1 %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  store i64 %38, ptr %143, align 8, !tbaa !63
  store i64 %37, ptr %145, align 8, !tbaa !64
  br label %152

152:                                              ; preds = %141, %151
  %153 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 26, i32 2
  store i64 %130, ptr %153, align 8, !tbaa !65
  %154 = getelementptr inbounds %struct._Image, ptr %139, i64 0, i32 26, i32 3
  store i64 %131, ptr %154, align 8, !tbaa !66
  store i32 1, ptr %9, align 4, !tbaa !29
  store i64 0, ptr %10, align 8, !tbaa !30
  %155 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #12
  store ptr %155, ptr %7, align 8, !tbaa !25
  %156 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %139, ptr noundef %2) #12
  store ptr %156, ptr %6, align 8, !tbaa !25
  %157 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %158 = and i64 %157, 576460752303423487
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %152
  %161 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #12
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %139) #12
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %172

168:                                              ; preds = %163, %160, %152
  %169 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %170 = icmp ult i64 %169, 2
  %171 = select i1 %170, i64 1, i64 2
  br label %172

172:                                              ; preds = %168, %166
  %173 = phi i64 [ %167, %166 ], [ %171, %168 ]
  %174 = trunc i64 %173 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %174)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @CropImage.omp_outlined, ptr nonnull %8, ptr nonnull %9, ptr nonnull %7, ptr nonnull %11, ptr nonnull %5, ptr nonnull %6, ptr nonnull %4, ptr nonnull %10)
  %175 = load ptr, ptr %6, align 8, !tbaa !25
  %176 = call ptr @DestroyCacheView(ptr noundef %175) #12
  store ptr %176, ptr %6, align 8, !tbaa !25
  %177 = load ptr, ptr %7, align 8, !tbaa !25
  %178 = call ptr @DestroyCacheView(ptr noundef %177) #12
  store ptr %178, ptr %7, align 8, !tbaa !25
  %179 = load ptr, ptr %4, align 8, !tbaa !25
  %180 = getelementptr inbounds %struct._Image, ptr %179, i64 0, i32 77
  %181 = load i32, ptr %180, align 8, !tbaa !34
  %182 = load ptr, ptr %8, align 8, !tbaa !25
  %183 = getelementptr inbounds %struct._Image, ptr %182, i64 0, i32 77
  store i32 %181, ptr %183, align 8, !tbaa !34
  %184 = load i32, ptr %9, align 4, !tbaa !29
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %172
  %187 = call ptr @DestroyImage(ptr noundef nonnull %182) #12
  br label %188

188:                                              ; preds = %172, %186, %70, %79, %138, %65, %135
  %189 = phi ptr [ null, %135 ], [ null, %65 ], [ null, %138 ], [ %68, %79 ], [ %68, %70 ], [ %187, %186 ], [ %182, %172 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret ptr %189
}

; Function Attrs: optsize
declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @CropImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #4 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !28
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %110

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 0, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 %18, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  store i64 1, ptr %13, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 0, ptr %14, align 4, !tbaa !29
  %21 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !32
  %24 = load i64, ptr %11, align 8, !tbaa !32
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %109, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %28 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  br label %29

29:                                               ; preds = %26, %101
  %30 = phi i64 [ %23, %26 ], [ %107, %101 ]
  %31 = phi i64 [ %24, %26 ], [ %105, %101 ]
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %101, label %33

33:                                               ; preds = %29, %95
  %34 = phi i64 [ %96, %95 ], [ %31, %29 ]
  %35 = load i32, ptr %3, align 4, !tbaa !29
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %95, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 8, !tbaa !25
  %39 = load i64, ptr %27, align 8, !tbaa !37
  %40 = load i64, ptr %28, align 8, !tbaa !39
  %41 = add nsw i64 %40, %34
  %42 = load ptr, ptr %2, align 8, !tbaa !25
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !27
  %45 = load ptr, ptr %6, align 8, !tbaa !25
  %46 = call ptr @GetCacheViewVirtualPixels(ptr noundef %38, i64 noundef %39, i64 noundef %41, i64 noundef %44, i64 noundef 1, ptr noundef %45) #14
  %47 = load ptr, ptr %7, align 8, !tbaa !25
  %48 = load ptr, ptr %2, align 8, !tbaa !25
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !27
  %51 = load ptr, ptr %6, align 8, !tbaa !25
  %52 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %47, i64 noundef 0, i64 noundef %34, i64 noundef %50, i64 noundef 1, ptr noundef %51) #14
  %53 = icmp eq ptr %46, null
  %54 = icmp eq ptr %52, null
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %94, label %56

56:                                               ; preds = %37
  %57 = load ptr, ptr %4, align 8, !tbaa !25
  %58 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %57) #12
  %59 = load ptr, ptr %7, align 8, !tbaa !25
  %60 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %59) #12
  %61 = load ptr, ptr %2, align 8, !tbaa !25
  %62 = getelementptr inbounds %struct._Image, ptr %61, i64 0, i32 7
  %63 = load i64, ptr %62, align 8, !tbaa !27
  %64 = shl i64 %63, 3
  %65 = call ptr @CopyMagickMemory(ptr noundef nonnull %52, ptr noundef nonnull %46, i64 noundef %64) #12
  %66 = icmp ne ptr %58, null
  %67 = icmp ne ptr %60, null
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %75

69:                                               ; preds = %56
  %70 = load ptr, ptr %2, align 8, !tbaa !25
  %71 = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 7
  %72 = load i64, ptr %71, align 8, !tbaa !27
  %73 = shl i64 %72, 1
  %74 = call ptr @CopyMagickMemory(ptr noundef nonnull %60, ptr noundef nonnull %58, i64 noundef %73) #12
  br label %75

75:                                               ; preds = %69, %56
  %76 = load ptr, ptr %7, align 8, !tbaa !25
  %77 = load ptr, ptr %6, align 8, !tbaa !25
  %78 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %76, ptr noundef %77) #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %81

81:                                               ; preds = %80, %75
  %82 = load ptr, ptr %8, align 8, !tbaa !25
  %83 = getelementptr inbounds %struct._Image, ptr %82, i64 0, i32 47
  %84 = load ptr, ptr %83, align 8, !tbaa !44
  %85 = icmp eq ptr %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_CropImage.var)
  %87 = load ptr, ptr %8, align 8, !tbaa !25
  %88 = load i64, ptr %9, align 8, !tbaa !30
  %89 = add nsw i64 %88, 1
  store i64 %89, ptr %9, align 8, !tbaa !30
  %90 = getelementptr inbounds %struct._Image, ptr %87, i64 0, i32 8
  %91 = load i64, ptr %90, align 8, !tbaa !28
  %92 = call fastcc i32 @SetImageProgress(ptr noundef %87, ptr noundef nonnull @.str.8, i64 noundef %88, i64 noundef %91) #13
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_CropImage.var)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86, %37
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %95

95:                                               ; preds = %94, %81, %86, %33
  %96 = add nsw i64 %34, 1
  %97 = load i64, ptr %12, align 8, !tbaa !32
  %98 = icmp slt i64 %34, %97
  br i1 %98, label %33, label %99

99:                                               ; preds = %95
  %100 = load i64, ptr %11, align 8, !tbaa !32
  br label %101

101:                                              ; preds = %99, %29
  %102 = phi i64 [ %31, %29 ], [ %100, %99 ]
  %103 = phi i64 [ %30, %29 ], [ %97, %99 ]
  %104 = load i64, ptr %13, align 8, !tbaa !32
  %105 = add nsw i64 %104, %102
  store i64 %105, ptr %11, align 8, !tbaa !32
  %106 = add nsw i64 %104, %103
  %107 = call i64 @llvm.smin.i64(i64 %106, i64 %18)
  store i64 %107, ptr %12, align 8, !tbaa !32
  %108 = icmp sgt i64 %105, %107
  br i1 %108, label %109, label %29

109:                                              ; preds = %101, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  br label %110

110:                                              ; preds = %109, %10
  ret void
}

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CropImageToTiles(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._RectangleInfo, align 16
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #5
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !26
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 856, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #12
  br label %13

13:                                               ; preds = %10, %3
  %14 = tail call ptr @NewImageList() #12
  store ptr %14, ptr %4, align 8, !tbaa !25
  %15 = tail call ptr @NewImageList() #12
  %16 = call i32 @ParseGravityGeometry(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2) #12
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %144, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #5
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load <2 x i64>, ptr %20, align 8, !tbaa !32
  %22 = load i64, ptr %5, align 16, !tbaa !38
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i64 1, ptr %5, align 16, !tbaa !38
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i64 [ 1, %24 ], [ %22, %19 ]
  %27 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !40
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i64 1, ptr %27, align 8, !tbaa !40
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i64 [ 1, %30 ], [ %28, %25 ]
  %33 = and i32 %16, 8192
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %36 = insertelement <2 x i64> poison, i64 %26, i64 0
  %37 = insertelement <2 x i64> %36, i64 %32, i64 1
  %38 = uitofp <2 x i64> %37 to <2 x double>
  %39 = load <2 x i64>, ptr %35, align 16, !tbaa !32
  %40 = call <2 x i64> @llvm.abs.v2i64(<2 x i64> %39, i1 true)
  %41 = sub nsw <2 x i64> zeroinitializer, %40
  %42 = insertelement <2 x i1> poison, i1 %34, i64 0
  %43 = shufflevector <2 x i1> %42, <2 x i1> poison, <2 x i32> zeroinitializer
  %44 = select <2 x i1> %43, <2 x i64> %41, <2 x i64> %40
  %45 = add <2 x i64> %21, %44
  %46 = uitofp <2 x i64> %45 to <2 x double>
  %47 = fdiv <2 x double> %46, %38
  %48 = fcmp olt <2 x double> %47, <double 1.000000e+00, double 1.000000e+00>
  %49 = extractelement <2 x i1> %48, i64 0
  %50 = extractelement <2 x double> %47, i64 0
  %51 = select i1 %49, double 1.000000e+00, double %50
  %52 = extractelement <2 x i1> %48, i64 1
  %53 = extractelement <2 x double> %47, i64 1
  %54 = select i1 %52, double 1.000000e+00, double %53
  %55 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %56 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  %57 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %59 = extractelement <2 x i64> %45, i64 0
  %60 = icmp eq i64 %59, 0
  %61 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %62 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %64 = extractelement <2 x double> %46, i64 1
  %65 = extractelement <2 x double> %46, i64 0
  br label %66

66:                                               ; preds = %139, %31
  %67 = phi ptr [ %15, %31 ], [ %140, %139 ]
  %68 = phi double [ 0.000000e+00, %31 ], [ %72, %139 ]
  %69 = fcmp olt double %68, %64
  br i1 %69, label %70, label %142

70:                                               ; preds = %66
  %71 = load i64, ptr %55, align 8
  %72 = fadd double %54, %68
  br i1 %34, label %73, label %81

73:                                               ; preds = %70
  %74 = call i64 @llvm.smin.i64(i64 %71, i64 0)
  %75 = sitofp i64 %74 to double
  %76 = fsub double %68, %75
  %77 = fptrunc double %76 to float
  %78 = fpext float %77 to double
  %79 = call fastcc double @MagickRound(double noundef %78) #13
  %80 = call i64 @llvm.smax.i64(i64 %71, i64 0)
  br label %89

81:                                               ; preds = %70
  %82 = call i64 @llvm.smax.i64(i64 %71, i64 0)
  %83 = sitofp i64 %82 to double
  %84 = fsub double %68, %83
  %85 = fptrunc double %84 to float
  %86 = fpext float %85 to double
  %87 = call fastcc double @MagickRound(double noundef %86) #13
  %88 = call i64 @llvm.smin.i64(i64 %71, i64 0)
  br label %89

89:                                               ; preds = %81, %73
  %90 = phi i64 [ %88, %81 ], [ %80, %73 ]
  %91 = phi double [ %87, %81 ], [ %79, %73 ]
  %92 = fptosi double %91 to i64
  %93 = sitofp i64 %90 to double
  %94 = fadd double %72, %93
  %95 = fptrunc double %94 to float
  %96 = fpext float %95 to double
  %97 = call fastcc double @MagickRound(double noundef %96) #13
  %98 = fptoui double %97 to i64
  %99 = sub i64 %98, %92
  store i64 %99, ptr %57, align 8, !tbaa !40
  %100 = load i64, ptr %58, align 8, !tbaa !66
  %101 = add nsw i64 %100, %92
  store i64 %101, ptr %56, align 8, !tbaa !39
  br i1 %60, label %139, label %102

102:                                              ; preds = %89, %137
  %103 = phi double [ %105, %137 ], [ 0.000000e+00, %89 ]
  %104 = load i64, ptr %61, align 16
  %105 = fadd double %51, %103
  br i1 %34, label %106, label %114

106:                                              ; preds = %102
  %107 = call i64 @llvm.smin.i64(i64 %104, i64 0)
  %108 = sitofp i64 %107 to double
  %109 = fsub double %103, %108
  %110 = fptrunc double %109 to float
  %111 = fpext float %110 to double
  %112 = call fastcc double @MagickRound(double noundef %111) #13
  %113 = call i64 @llvm.smax.i64(i64 %104, i64 0)
  br label %122

114:                                              ; preds = %102
  %115 = call i64 @llvm.smax.i64(i64 %104, i64 0)
  %116 = sitofp i64 %115 to double
  %117 = fsub double %103, %116
  %118 = fptrunc double %117 to float
  %119 = fpext float %118 to double
  %120 = call fastcc double @MagickRound(double noundef %119) #13
  %121 = call i64 @llvm.smin.i64(i64 %104, i64 0)
  br label %122

122:                                              ; preds = %114, %106
  %123 = phi i64 [ %121, %114 ], [ %113, %106 ]
  %124 = phi double [ %120, %114 ], [ %112, %106 ]
  %125 = fptosi double %124 to i64
  %126 = sitofp i64 %123 to double
  %127 = fadd double %105, %126
  %128 = fptrunc double %127 to float
  %129 = fpext float %128 to double
  %130 = call fastcc double @MagickRound(double noundef %129) #13
  %131 = fptoui double %130 to i64
  %132 = sub i64 %131, %125
  store i64 %132, ptr %6, align 8, !tbaa !38
  %133 = load i64, ptr %63, align 8, !tbaa !65
  %134 = add nsw i64 %133, %125
  store i64 %134, ptr %62, align 8, !tbaa !37
  %135 = call ptr @CropImage(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %2) #13
  %136 = icmp eq ptr %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %122
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %135) #12
  %138 = fcmp olt double %105, %65
  br i1 %138, label %102, label %139, !llvm.loop !67

139:                                              ; preds = %137, %89
  %140 = phi ptr [ %67, %89 ], [ %135, %137 ]
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %66, !llvm.loop !68

142:                                              ; preds = %139, %66, %122
  call void @ClearMagickException(ptr noundef %2) #12
  %143 = load ptr, ptr %4, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #5
  br label %217

144:                                              ; preds = %13
  %145 = load i64, ptr %5, align 16, !tbaa !38
  %146 = icmp ne i64 %145, 0
  %147 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  %148 = load i64, ptr %147, align 8
  %149 = icmp ne i64 %148, 0
  %150 = select i1 %146, i1 true, i1 %149
  %151 = and i32 %16, 3
  %152 = icmp eq i32 %151, 0
  %153 = and i1 %152, %150
  br i1 %153, label %168, label %154

154:                                              ; preds = %144
  %155 = call ptr @CropImage(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %2) #13
  %156 = icmp eq ptr %155, null
  %157 = and i32 %16, 8192
  %158 = icmp eq i32 %157, 0
  %159 = or i1 %158, %156
  br i1 %159, label %217, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct._Image, ptr %155, i64 0, i32 26
  %162 = load <2 x i64>, ptr %5, align 16, !tbaa !32
  store <2 x i64> %162, ptr %161, align 8, !tbaa !32
  %163 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %164 = getelementptr inbounds %struct._Image, ptr %155, i64 0, i32 26, i32 2
  %165 = load <2 x i64>, ptr %163, align 16, !tbaa !32
  %166 = load <2 x i64>, ptr %164, align 8, !tbaa !32
  %167 = sub nsw <2 x i64> %166, %165
  store <2 x i64> %167, ptr %164, align 8, !tbaa !32
  br label %217

168:                                              ; preds = %144
  %169 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %170 = load i64, ptr %169, align 8, !tbaa !27
  %171 = icmp ugt i64 %170, %145
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %174 = load i64, ptr %173, align 8, !tbaa !28
  %175 = icmp ugt i64 %174, %148
  br i1 %175, label %176, label %215

176:                                              ; preds = %172, %168
  %177 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %178 = load i64, ptr %177, align 8, !tbaa.struct !35
  %179 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %180 = load i64, ptr %179, align 8, !tbaa.struct !36
  %181 = icmp eq i64 %178, 0
  %182 = select i1 %181, i64 %170, i64 %178
  %183 = icmp eq i64 %180, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %186 = load i64, ptr %185, align 8, !tbaa !28
  br label %187

187:                                              ; preds = %184, %176
  %188 = phi i64 [ %186, %184 ], [ %180, %176 ]
  %189 = select i1 %146, i64 %145, i64 %182
  %190 = select i1 %149, i64 %148, i64 %188
  %191 = call ptr @NewImageList() #12
  %192 = icmp sgt i64 %188, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %187
  %194 = icmp sgt i64 %182, 0
  %195 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %196 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  br label %201

197:                                              ; preds = %208, %211
  %198 = phi ptr [ %203, %211 ], [ %206, %208 ]
  %199 = add nsw i64 %202, %190
  %200 = icmp slt i64 %199, %188
  br i1 %200, label %201, label %213, !llvm.loop !69

201:                                              ; preds = %193, %197
  %202 = phi i64 [ 0, %193 ], [ %199, %197 ]
  %203 = phi ptr [ %191, %193 ], [ %198, %197 ]
  br i1 %194, label %204, label %211

204:                                              ; preds = %201, %208
  %205 = phi i64 [ %209, %208 ], [ 0, %201 ]
  store i64 %189, ptr %5, align 16, !tbaa !38
  store i64 %190, ptr %147, align 8, !tbaa !40
  store i64 %205, ptr %195, align 16, !tbaa !37
  store i64 %202, ptr %196, align 8, !tbaa !39
  %206 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2) #13
  %207 = icmp eq ptr %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %204
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %206) #12
  %209 = add nsw i64 %205, %189
  %210 = icmp slt i64 %209, %182
  br i1 %210, label %204, label %197, !llvm.loop !70

211:                                              ; preds = %201
  %212 = icmp eq ptr %203, null
  br i1 %212, label %213, label %197

213:                                              ; preds = %197, %211, %204, %187
  %214 = load ptr, ptr %4, align 8, !tbaa !25
  br label %217

215:                                              ; preds = %172
  %216 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #12
  br label %217

217:                                              ; preds = %154, %160, %215, %213, %142
  %218 = phi ptr [ %143, %142 ], [ %214, %213 ], [ %216, %215 ], [ %155, %160 ], [ %155, %154 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret ptr %218
}

; Function Attrs: optsize
declare i32 @ParseGravityGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickRound(double noundef %0) unnamed_addr #8 {
  %2 = tail call double @llvm.floor.f64(double %0)
  %3 = fsub double %0, %2
  %4 = tail call double @llvm.ceil.f64(double %0)
  %5 = fsub double %4, %0
  %6 = fcmp olt double %3, %5
  %7 = select i1 %6, double %2, double %4
  ret double %7
}

; Function Attrs: optsize
declare void @ClearMagickException(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ExcerptImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !25
  store ptr %1, ptr %5, align 8, !tbaa !25
  store ptr %2, ptr %6, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1069, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #12
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i64, ptr %1, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !40
  %23 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %20, i64 noundef %22, i32 noundef 1, ptr noundef %2) #12
  store ptr %23, ptr %9, align 8, !tbaa !25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %61, label %25

25:                                               ; preds = %19
  store i32 1, ptr %10, align 4, !tbaa !29
  store i64 0, ptr %11, align 8, !tbaa !30
  %26 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #12
  store ptr %26, ptr %8, align 8, !tbaa !25
  %27 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %23, ptr noundef %2) #12
  store ptr %27, ptr %7, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !28
  %30 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %31 = shl i64 %30, 5
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #12
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %23) #12
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %45

41:                                               ; preds = %36, %33, %25
  %42 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %43 = icmp ult i64 %42, 2
  %44 = select i1 %43, i64 1, i64 2
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i64 [ %40, %39 ], [ %44, %41 ]
  %47 = trunc i64 %46 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %47)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @ExcerptImage.omp_outlined, ptr nonnull %9, ptr nonnull %10, ptr nonnull %8, ptr nonnull %5, ptr nonnull %6, ptr nonnull %7, ptr nonnull %4, ptr nonnull %11)
  %48 = load ptr, ptr %7, align 8, !tbaa !25
  %49 = call ptr @DestroyCacheView(ptr noundef %48) #12
  store ptr %49, ptr %7, align 8, !tbaa !25
  %50 = load ptr, ptr %8, align 8, !tbaa !25
  %51 = call ptr @DestroyCacheView(ptr noundef %50) #12
  store ptr %51, ptr %8, align 8, !tbaa !25
  %52 = load ptr, ptr %4, align 8, !tbaa !25
  %53 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 77
  %54 = load i32, ptr %53, align 8, !tbaa !34
  %55 = load ptr, ptr %9, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 77
  store i32 %54, ptr %56, align 8, !tbaa !34
  %57 = load i32, ptr %10, align 4, !tbaa !29
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = call ptr @DestroyImage(ptr noundef nonnull %55) #12
  br label %61

61:                                               ; preds = %45, %59, %19
  %62 = phi ptr [ null, %19 ], [ %60, %59 ], [ %55, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  ret ptr %62
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ExcerptImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #4 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !28
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %108

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 0, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 %18, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  store i64 1, ptr %13, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 0, ptr %14, align 4, !tbaa !29
  %21 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !32
  %24 = load i64, ptr %11, align 8, !tbaa !32
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %107, label %26

26:                                               ; preds = %20, %99
  %27 = phi i64 [ %105, %99 ], [ %23, %20 ]
  %28 = phi i64 [ %103, %99 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %99, label %30

30:                                               ; preds = %26, %93
  %31 = phi i64 [ %94, %93 ], [ %28, %26 ]
  %32 = load i32, ptr %3, align 4, !tbaa !29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %93, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !25
  %36 = load ptr, ptr %5, align 8, !tbaa !25
  %37 = getelementptr inbounds %struct._RectangleInfo, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !37
  %39 = getelementptr inbounds %struct._RectangleInfo, ptr %36, i64 0, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !39
  %41 = add nsw i64 %40, %31
  %42 = load i64, ptr %36, align 8, !tbaa !38
  %43 = load ptr, ptr %6, align 8, !tbaa !25
  %44 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef %38, i64 noundef %41, i64 noundef %42, i64 noundef 1, ptr noundef %43) #14
  %45 = load ptr, ptr %7, align 8, !tbaa !25
  %46 = load ptr, ptr %2, align 8, !tbaa !25
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !27
  %49 = load ptr, ptr %6, align 8, !tbaa !25
  %50 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %45, i64 noundef 0, i64 noundef %31, i64 noundef %48, i64 noundef 1, ptr noundef %49) #14
  %51 = icmp eq ptr %44, null
  %52 = icmp eq ptr %50, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %92, label %54

54:                                               ; preds = %34
  %55 = load ptr, ptr %2, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !27
  %58 = shl i64 %57, 3
  %59 = call ptr @CopyMagickMemory(ptr noundef nonnull %50, ptr noundef nonnull %44, i64 noundef %58) #12
  %60 = load ptr, ptr %4, align 8, !tbaa !25
  %61 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %60) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %54
  %64 = load ptr, ptr %7, align 8, !tbaa !25
  %65 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %64) #12
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %2, align 8, !tbaa !25
  %69 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 7
  %70 = load i64, ptr %69, align 8, !tbaa !27
  %71 = shl i64 %70, 1
  %72 = call ptr @CopyMagickMemory(ptr noundef nonnull %65, ptr noundef nonnull %61, i64 noundef %71) #12
  br label %73

73:                                               ; preds = %63, %67, %54
  %74 = load ptr, ptr %7, align 8, !tbaa !25
  %75 = load ptr, ptr %6, align 8, !tbaa !25
  %76 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %74, ptr noundef %75) #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %79

79:                                               ; preds = %78, %73
  %80 = load ptr, ptr %8, align 8, !tbaa !25
  %81 = getelementptr inbounds %struct._Image, ptr %80, i64 0, i32 47
  %82 = load ptr, ptr %81, align 8, !tbaa !44
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %84

84:                                               ; preds = %79
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_ExcerptImage.var)
  %85 = load ptr, ptr %8, align 8, !tbaa !25
  %86 = load i64, ptr %9, align 8, !tbaa !30
  %87 = add nsw i64 %86, 1
  store i64 %87, ptr %9, align 8, !tbaa !30
  %88 = getelementptr inbounds %struct._Image, ptr %85, i64 0, i32 8
  %89 = load i64, ptr %88, align 8, !tbaa !28
  %90 = call fastcc i32 @SetImageProgress(ptr noundef %85, ptr noundef nonnull @.str.9, i64 noundef %86, i64 noundef %89) #13
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_ExcerptImage.var)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84, %34
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %93

93:                                               ; preds = %92, %79, %84, %30
  %94 = add nsw i64 %31, 1
  %95 = load i64, ptr %12, align 8, !tbaa !32
  %96 = icmp slt i64 %31, %95
  br i1 %96, label %30, label %97

97:                                               ; preds = %93
  %98 = load i64, ptr %11, align 8, !tbaa !32
  br label %99

99:                                               ; preds = %97, %26
  %100 = phi i64 [ %28, %26 ], [ %98, %97 ]
  %101 = phi i64 [ %27, %26 ], [ %95, %97 ]
  %102 = load i64, ptr %13, align 8, !tbaa !32
  %103 = add nsw i64 %102, %100
  store i64 %103, ptr %11, align 8, !tbaa !32
  %104 = add nsw i64 %102, %101
  %105 = call i64 @llvm.smin.i64(i64 %104, i64 %18)
  store i64 %105, ptr %12, align 8, !tbaa !32
  %106 = icmp sgt i64 %103, %105
  br i1 %106, label %107, label %26

107:                                              ; preds = %99, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  br label %108

108:                                              ; preds = %107, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ExtentImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1185, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #12
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i64, ptr %1, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !40
  %14 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %11, i64 noundef %13, i32 noundef 1, ptr noundef %2) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %14, i32 noundef 1) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %20) #12
  %21 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #12
  br label %39

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 12, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !61
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 6
  store i32 1, ptr %27, align 8, !tbaa !71
  br label %28

28:                                               ; preds = %26, %22
  %29 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %14) #12
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %31 = load i32, ptr %30, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !37
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !39
  %37 = sub nsw i64 0, %36
  %38 = tail call i32 @CompositeImage(ptr noundef nonnull %14, i32 noundef %31, ptr noundef nonnull %0, i64 noundef %34, i64 noundef %37) #12
  br label %39

39:                                               ; preds = %10, %28, %19
  %40 = phi ptr [ null, %19 ], [ %14, %28 ], [ null, %10 ]
  ret ptr %40
}

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @FlipImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #4 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !28
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %107

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  store i64 0, ptr %10, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 %17, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 1, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  store i32 0, ptr %13, align 4, !tbaa !29
  %20 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !32
  %23 = load i64, ptr %10, align 8, !tbaa !32
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %106, label %25

25:                                               ; preds = %19, %98
  %26 = phi i64 [ %104, %98 ], [ %22, %19 ]
  %27 = phi i64 [ %102, %98 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %98, label %29

29:                                               ; preds = %25, %92
  %30 = phi i64 [ %93, %92 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %92, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !25
  %35 = load ptr, ptr %5, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !27
  %38 = load ptr, ptr %6, align 8, !tbaa !25
  %39 = call ptr @GetCacheViewVirtualPixels(ptr noundef %34, i64 noundef 0, i64 noundef %30, i64 noundef %37, i64 noundef 1, ptr noundef %38) #14
  %40 = load ptr, ptr %7, align 8, !tbaa !25
  %41 = load ptr, ptr %2, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !28
  %44 = xor i64 %30, -1
  %45 = add i64 %43, %44
  %46 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !27
  %48 = load ptr, ptr %6, align 8, !tbaa !25
  %49 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %45, i64 noundef %47, i64 noundef 1, ptr noundef %48) #14
  %50 = icmp eq ptr %39, null
  %51 = icmp eq ptr %49, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %91, label %53

53:                                               ; preds = %33
  %54 = load ptr, ptr %5, align 8, !tbaa !25
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !27
  %57 = shl i64 %56, 3
  %58 = call ptr @CopyMagickMemory(ptr noundef nonnull %49, ptr noundef nonnull %39, i64 noundef %57) #12
  %59 = load ptr, ptr %4, align 8, !tbaa !25
  %60 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %59) #12
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %53
  %63 = load ptr, ptr %7, align 8, !tbaa !25
  %64 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %63) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %5, align 8, !tbaa !25
  %68 = getelementptr inbounds %struct._Image, ptr %67, i64 0, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !27
  %70 = shl i64 %69, 1
  %71 = call ptr @CopyMagickMemory(ptr noundef nonnull %64, ptr noundef nonnull %60, i64 noundef %70) #12
  br label %72

72:                                               ; preds = %62, %66, %53
  %73 = load ptr, ptr %7, align 8, !tbaa !25
  %74 = load ptr, ptr %6, align 8, !tbaa !25
  %75 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %73, ptr noundef %74) #14
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %78

78:                                               ; preds = %77, %72
  %79 = load ptr, ptr %5, align 8, !tbaa !25
  %80 = getelementptr inbounds %struct._Image, ptr %79, i64 0, i32 47
  %81 = load ptr, ptr %80, align 8, !tbaa !44
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %78
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_FlipImage.var)
  %84 = load ptr, ptr %5, align 8, !tbaa !25
  %85 = load i64, ptr %8, align 8, !tbaa !30
  %86 = add nsw i64 %85, 1
  store i64 %86, ptr %8, align 8, !tbaa !30
  %87 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 8
  %88 = load i64, ptr %87, align 8, !tbaa !28
  %89 = call fastcc i32 @SetImageProgress(ptr noundef %84, ptr noundef nonnull @.str.10, i64 noundef %85, i64 noundef %88) #13
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_FlipImage.var)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83, %33
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %92

92:                                               ; preds = %91, %78, %83, %29
  %93 = add nsw i64 %30, 1
  %94 = load i64, ptr %11, align 8, !tbaa !32
  %95 = icmp slt i64 %30, %94
  br i1 %95, label %29, label %96

96:                                               ; preds = %92
  %97 = load i64, ptr %10, align 8, !tbaa !32
  br label %98

98:                                               ; preds = %96, %25
  %99 = phi i64 [ %27, %25 ], [ %97, %96 ]
  %100 = phi i64 [ %26, %25 ], [ %94, %96 ]
  %101 = load i64, ptr %12, align 8, !tbaa !32
  %102 = add nsw i64 %101, %99
  store i64 %102, ptr %10, align 8, !tbaa !32
  %103 = add nsw i64 %101, %100
  %104 = call i64 @llvm.smin.i64(i64 %103, i64 %17)
  store i64 %104, ptr %11, align 8, !tbaa !32
  %105 = icmp sgt i64 %102, %104
  br i1 %105, label %106, label %25

106:                                              ; preds = %98, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br label %107

107:                                              ; preds = %106, %9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @FlopImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #4 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !28
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %125

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  store i64 0, ptr %10, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 %17, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 1, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  store i32 0, ptr %13, align 4, !tbaa !29
  %20 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !32
  %23 = load i64, ptr %10, align 8, !tbaa !32
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %124, label %25

25:                                               ; preds = %19, %116
  %26 = phi i64 [ %122, %116 ], [ %22, %19 ]
  %27 = phi i64 [ %120, %116 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %116, label %29

29:                                               ; preds = %25, %110
  %30 = phi i64 [ %111, %110 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %110, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !25
  %35 = load ptr, ptr %5, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !27
  %38 = load ptr, ptr %6, align 8, !tbaa !25
  %39 = call ptr @GetCacheViewVirtualPixels(ptr noundef %34, i64 noundef 0, i64 noundef %30, i64 noundef %37, i64 noundef 1, ptr noundef %38) #14
  %40 = load ptr, ptr %7, align 8, !tbaa !25
  %41 = load ptr, ptr %2, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !27
  %44 = load ptr, ptr %6, align 8, !tbaa !25
  %45 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %30, i64 noundef %43, i64 noundef 1, ptr noundef %44) #14
  %46 = icmp eq ptr %39, null
  %47 = icmp eq ptr %45, null
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %109, label %49

49:                                               ; preds = %33
  %50 = load ptr, ptr %2, align 8, !tbaa !25
  %51 = getelementptr inbounds %struct._Image, ptr %50, i64 0, i32 7
  %52 = load i64, ptr %51, align 8, !tbaa !27
  %53 = load ptr, ptr %4, align 8, !tbaa !25
  %54 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %53) #12
  %55 = load ptr, ptr %7, align 8, !tbaa !25
  %56 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %55) #12
  %57 = load ptr, ptr %2, align 8, !tbaa !25
  %58 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !27
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 %52
  %63 = icmp ne ptr %54, null
  %64 = icmp ne ptr %56, null
  %65 = select i1 %63, i1 %64, i1 false
  br label %66

66:                                               ; preds = %61, %86
  %67 = phi ptr [ %62, %61 ], [ %70, %86 ]
  %68 = phi i64 [ 0, %61 ], [ %88, %86 ]
  %69 = phi ptr [ %39, %61 ], [ %71, %86 ]
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %67, i64 -1
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 1
  %72 = load i64, ptr %69, align 2
  store i64 %72, ptr %70, align 2
  %73 = load ptr, ptr %2, align 8, !tbaa !25
  br i1 %65, label %77, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %76 = load i64, ptr %75, align 8, !tbaa !27
  br label %86

77:                                               ; preds = %66
  %78 = sub nsw i64 0, %68
  %79 = getelementptr inbounds i16, ptr %54, i64 %68
  %80 = load i16, ptr %79, align 2, !tbaa !41
  %81 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %82 = load i64, ptr %81, align 8, !tbaa !27
  %83 = getelementptr inbounds i16, ptr %56, i64 %82
  %84 = getelementptr inbounds i16, ptr %83, i64 %78
  %85 = getelementptr inbounds i16, ptr %84, i64 -1
  store i16 %80, ptr %85, align 2, !tbaa !41
  br label %86

86:                                               ; preds = %74, %77
  %87 = phi i64 [ %76, %74 ], [ %82, %77 ]
  %88 = add nuw nsw i64 %68, 1
  %89 = icmp slt i64 %88, %87
  br i1 %89, label %66, label %90, !llvm.loop !73

90:                                               ; preds = %86, %49
  %91 = load ptr, ptr %7, align 8, !tbaa !25
  %92 = load ptr, ptr %6, align 8, !tbaa !25
  %93 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %91, ptr noundef %92) #14
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %96

96:                                               ; preds = %95, %90
  %97 = load ptr, ptr %5, align 8, !tbaa !25
  %98 = getelementptr inbounds %struct._Image, ptr %97, i64 0, i32 47
  %99 = load ptr, ptr %98, align 8, !tbaa !44
  %100 = icmp eq ptr %99, null
  br i1 %100, label %110, label %101

101:                                              ; preds = %96
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_FlopImage.var)
  %102 = load ptr, ptr %5, align 8, !tbaa !25
  %103 = load i64, ptr %8, align 8, !tbaa !30
  %104 = add nsw i64 %103, 1
  store i64 %104, ptr %8, align 8, !tbaa !30
  %105 = getelementptr inbounds %struct._Image, ptr %102, i64 0, i32 8
  %106 = load i64, ptr %105, align 8, !tbaa !28
  %107 = call fastcc i32 @SetImageProgress(ptr noundef %102, ptr noundef nonnull @.str.11, i64 noundef %103, i64 noundef %106) #13
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_FlopImage.var)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101, %33
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %110

110:                                              ; preds = %109, %96, %101, %29
  %111 = add nsw i64 %30, 1
  %112 = load i64, ptr %11, align 8, !tbaa !32
  %113 = icmp slt i64 %30, %112
  br i1 %113, label %29, label %114

114:                                              ; preds = %110
  %115 = load i64, ptr %10, align 8, !tbaa !32
  br label %116

116:                                              ; preds = %114, %25
  %117 = phi i64 [ %27, %25 ], [ %115, %114 ]
  %118 = phi i64 [ %26, %25 ], [ %112, %114 ]
  %119 = load i64, ptr %12, align 8, !tbaa !32
  %120 = add nsw i64 %119, %117
  store i64 %120, ptr %10, align 8, !tbaa !32
  %121 = add nsw i64 %119, %118
  %122 = call i64 @llvm.smin.i64(i64 %121, i64 %17)
  store i64 %122, ptr %11, align 8, !tbaa !32
  %123 = icmp sgt i64 %120, %122
  br i1 %123, label %124, label %25

124:                                              ; preds = %116, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br label %125

125:                                              ; preds = %124, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RollImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1589, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !28
  %16 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %13, i64 noundef %15, i32 noundef 1, ptr noundef %3) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %76, label %18

18:                                               ; preds = %11
  %19 = icmp slt i64 %1, 0
  %20 = load i64, ptr %12, align 8, !tbaa !27
  br i1 %19, label %21, label %25

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %23, %21 ], [ %1, %18 ]
  %23 = add nsw i64 %20, %22
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %21, label %25, !llvm.loop !74

25:                                               ; preds = %21, %18
  %26 = phi i64 [ %1, %18 ], [ %23, %21 ]
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ %30, %27 ], [ %26, %25 ]
  %29 = icmp slt i64 %28, %20
  %30 = sub nsw i64 %28, %20
  br i1 %29, label %31, label %27, !llvm.loop !75

31:                                               ; preds = %27
  %32 = icmp slt i64 %2, 0
  %33 = load i64, ptr %14, align 8, !tbaa !28
  br i1 %32, label %34, label %38

34:                                               ; preds = %31, %34
  %35 = phi i64 [ %36, %34 ], [ %2, %31 ]
  %36 = add nsw i64 %33, %35
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %34, label %38, !llvm.loop !76

38:                                               ; preds = %34, %31
  %39 = phi i64 [ %2, %31 ], [ %36, %34 ]
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ %43, %40 ], [ %39, %38 ]
  %42 = icmp slt i64 %41, %33
  %43 = sub nsw i64 %41, %33
  br i1 %42, label %44, label %40, !llvm.loop !77

44:                                               ; preds = %40
  %45 = sub nsw i64 %20, %28
  %46 = sub nsw i64 %33, %41
  %47 = tail call fastcc i32 @CopyImageRegion(ptr noundef nonnull %16, ptr noundef nonnull %0, i64 noundef %28, i64 noundef %41, i64 noundef %45, i64 noundef %46, i64 noundef 0, i64 noundef 0, ptr noundef %3) #13
  %48 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i64 noundef 0, i64 noundef 3) #13
  %49 = load i64, ptr %12, align 8, !tbaa !27
  %50 = sub i64 %49, %28
  %51 = load i64, ptr %14, align 8, !tbaa !28
  %52 = sub nsw i64 %51, %41
  %53 = tail call fastcc i32 @CopyImageRegion(ptr noundef nonnull %16, ptr noundef nonnull %0, i64 noundef %50, i64 noundef %41, i64 noundef 0, i64 noundef %52, i64 noundef %28, i64 noundef 0, ptr noundef %3) #13
  %54 = and i32 %53, %47
  %55 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i64 noundef 1, i64 noundef 3) #13
  %56 = load i64, ptr %14, align 8, !tbaa !28
  %57 = sub i64 %56, %41
  %58 = load i64, ptr %12, align 8, !tbaa !27
  %59 = sub nsw i64 %58, %28
  %60 = tail call fastcc i32 @CopyImageRegion(ptr noundef nonnull %16, ptr noundef nonnull %0, i64 noundef %28, i64 noundef %57, i64 noundef %59, i64 noundef 0, i64 noundef 0, i64 noundef %41, ptr noundef %3) #13
  %61 = and i32 %54, %60
  %62 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i64 noundef 2, i64 noundef 3) #13
  %63 = load i64, ptr %12, align 8, !tbaa !27
  %64 = sub i64 %63, %28
  %65 = load i64, ptr %14, align 8, !tbaa !28
  %66 = sub i64 %65, %41
  %67 = tail call fastcc i32 @CopyImageRegion(ptr noundef nonnull %16, ptr noundef nonnull %0, i64 noundef %64, i64 noundef %66, i64 noundef 0, i64 noundef 0, i64 noundef %28, i64 noundef %41, ptr noundef %3) #13
  %68 = and i32 %61, %67
  %69 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i64 noundef 3, i64 noundef 3) #13
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %71 = load i32, ptr %70, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 77
  store i32 %71, ptr %72, align 8, !tbaa !34
  %73 = icmp eq i32 %68, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %44
  %75 = tail call ptr @DestroyImage(ptr noundef nonnull %16) #12
  br label %76

76:                                               ; preds = %44, %74, %11
  %77 = phi ptr [ null, %11 ], [ %75, %74 ], [ %16, %44 ]
  ret ptr %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @CopyImageRegion(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i64 %2, ptr %10, align 8, !tbaa !32
  store i64 %3, ptr %11, align 8, !tbaa !32
  store i64 %4, ptr %12, align 8, !tbaa !32
  store i64 %5, ptr %13, align 8, !tbaa !32
  store i64 %6, ptr %14, align 8, !tbaa !32
  store i64 %7, ptr %15, align 8, !tbaa !32
  store ptr %8, ptr %16, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #5
  %21 = icmp eq i64 %2, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %9
  store i32 1, ptr %19, align 4, !tbaa !29
  %23 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %8) #12
  store ptr %23, ptr %17, align 8, !tbaa !25
  %24 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %8) #12
  store ptr %24, ptr %18, align 8, !tbaa !25
  %25 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %26 = shl i64 %25, 5
  %27 = icmp ult i64 %26, %3
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = tail call i32 @GetImagePixelCacheType(ptr noundef %1) #12
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @GetImagePixelCacheType(ptr noundef %0) #12
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %40

36:                                               ; preds = %31, %28, %22
  %37 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %38 = icmp ult i64 %37, 2
  %39 = select i1 %38, i64 1, i64 2
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i64 [ %35, %34 ], [ %39, %36 ]
  %42 = trunc i64 %41 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %20, i32 %42)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @CopyImageRegion.omp_outlined, ptr nonnull %11, ptr nonnull %19, ptr nonnull %17, ptr nonnull %12, ptr nonnull %13, ptr nonnull %10, ptr nonnull %16, ptr nonnull %18, ptr nonnull %14, ptr nonnull %15)
  %43 = load ptr, ptr %18, align 8, !tbaa !25
  %44 = call ptr @DestroyCacheView(ptr noundef %43) #12
  store ptr %44, ptr %18, align 8, !tbaa !25
  %45 = load ptr, ptr %17, align 8, !tbaa !25
  %46 = call ptr @DestroyCacheView(ptr noundef %45) #12
  %47 = load i32, ptr %19, align 4, !tbaa !29
  br label %48

48:                                               ; preds = %9, %40
  %49 = phi i32 [ %47, %40 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #5
  ret i32 %49
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @CopyImageRegion.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11) #4 {
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = load i64, ptr %2, align 8, !tbaa !32
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %88

20:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  store i64 0, ptr %13, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #5
  store i64 %18, ptr %14, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #5
  store i64 1, ptr %15, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #5
  store i32 0, ptr %16, align 4, !tbaa !29
  %21 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %16, ptr nonnull %13, ptr nonnull %14, ptr nonnull %15, i64 1, i64 4)
  %22 = load i64, ptr %14, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %14, align 8, !tbaa !32
  %24 = load i64, ptr %13, align 8, !tbaa !32
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %87, label %26

26:                                               ; preds = %20, %79
  %27 = phi i64 [ %85, %79 ], [ %23, %20 ]
  %28 = phi i64 [ %83, %79 ], [ %24, %20 ]
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %79, label %30

30:                                               ; preds = %26, %73
  %31 = phi i64 [ %74, %73 ], [ %28, %26 ]
  %32 = load i32, ptr %3, align 4, !tbaa !29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %4, align 8, !tbaa !25
  %36 = load i64, ptr %5, align 8, !tbaa !32
  %37 = load i64, ptr %6, align 8, !tbaa !32
  %38 = add nsw i64 %37, %31
  %39 = load i64, ptr %7, align 8, !tbaa !32
  %40 = load ptr, ptr %8, align 8, !tbaa !25
  %41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %35, i64 noundef %36, i64 noundef %38, i64 noundef %39, i64 noundef 1, ptr noundef %40) #14
  %42 = load ptr, ptr %9, align 8, !tbaa !25
  %43 = load i64, ptr %10, align 8, !tbaa !32
  %44 = load i64, ptr %11, align 8, !tbaa !32
  %45 = add nsw i64 %44, %31
  %46 = load i64, ptr %7, align 8, !tbaa !32
  %47 = load ptr, ptr %8, align 8, !tbaa !25
  %48 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %42, i64 noundef %43, i64 noundef %45, i64 noundef %46, i64 noundef 1, ptr noundef %47) #14
  %49 = icmp eq ptr %41, null
  %50 = icmp eq ptr %48, null
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %72, label %52

52:                                               ; preds = %34
  %53 = load ptr, ptr %4, align 8, !tbaa !25
  %54 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %53) #12
  %55 = load i64, ptr %7, align 8, !tbaa !32
  %56 = shl i64 %55, 3
  %57 = call ptr @CopyMagickMemory(ptr noundef nonnull %48, ptr noundef nonnull %41, i64 noundef %56) #12
  %58 = icmp eq ptr %54, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr %9, align 8, !tbaa !25
  %61 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %60) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, ptr %7, align 8, !tbaa !32
  %65 = shl i64 %64, 1
  %66 = call ptr @CopyMagickMemory(ptr noundef nonnull %61, ptr noundef nonnull %54, i64 noundef %65) #12
  br label %67

67:                                               ; preds = %59, %63, %52
  %68 = load ptr, ptr %9, align 8, !tbaa !25
  %69 = load ptr, ptr %8, align 8, !tbaa !25
  %70 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %68, ptr noundef %69) #14
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %34
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %73

73:                                               ; preds = %72, %67, %30
  %74 = add nsw i64 %31, 1
  %75 = load i64, ptr %14, align 8, !tbaa !32
  %76 = icmp slt i64 %31, %75
  br i1 %76, label %30, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %13, align 8, !tbaa !32
  br label %79

79:                                               ; preds = %77, %26
  %80 = phi i64 [ %28, %26 ], [ %78, %77 ]
  %81 = phi i64 [ %27, %26 ], [ %75, %77 ]
  %82 = load i64, ptr %15, align 8, !tbaa !32
  %83 = add nsw i64 %82, %80
  store i64 %83, ptr %13, align 8, !tbaa !32
  %84 = add nsw i64 %82, %81
  %85 = call i64 @llvm.smin.i64(i64 %84, i64 %18)
  store i64 %85, ptr %14, align 8, !tbaa !32
  %86 = icmp sgt i64 %83, %85
  br i1 %86, label %87, label %26

87:                                               ; preds = %79, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  br label %88

88:                                               ; preds = %87, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShaveImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1674, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #12
  br label %11

11:                                               ; preds = %8, %3
  %12 = load i64, ptr %1, align 8, !tbaa !38
  %13 = shl i64 %12, 1
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !27
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !40
  %20 = shl i64 %19, 1
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !28
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %17, %11
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1677, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %25) #12
  br label %48

27:                                               ; preds = %17
  call void @SetGeometry(ptr noundef nonnull %0, ptr noundef nonnull %4) #12
  %28 = load <2 x i64>, ptr %1, align 8, !tbaa !32
  %29 = shl <2 x i64> %28, <i64 1, i64 1>
  %30 = load <2 x i64>, ptr %4, align 16, !tbaa !32
  %31 = sub <2 x i64> %30, %29
  store <2 x i64> %31, ptr %4, align 16, !tbaa !32
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %33 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 2
  %34 = load <2 x i64>, ptr %32, align 8, !tbaa !32
  %35 = add nsw <2 x i64> %34, %28
  store <2 x i64> %35, ptr %33, align 16, !tbaa !32
  %36 = call ptr @CropImage(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %2) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 26
  %40 = load <2 x i64>, ptr %1, align 8, !tbaa !32
  %41 = shl <2 x i64> %40, <i64 1, i64 1>
  %42 = load <2 x i64>, ptr %39, align 8, !tbaa !32
  %43 = sub <2 x i64> %42, %41
  store <2 x i64> %43, ptr %39, align 8, !tbaa !32
  %44 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 26, i32 2
  %45 = load <2 x i64>, ptr %1, align 8, !tbaa !32
  %46 = load <2 x i64>, ptr %44, align 8, !tbaa !32
  %47 = sub nsw <2 x i64> %46, %45
  store <2 x i64> %47, ptr %44, align 8, !tbaa !32
  br label %48

48:                                               ; preds = %27, %38, %24
  %49 = phi ptr [ null, %24 ], [ %36, %38 ], [ null, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  ret ptr %49
}

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SpliceImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct._RectangleInfo, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !25
  store ptr %2, ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1752, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #12
  br label %19

19:                                               ; preds = %16, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !35
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !27
  %22 = load i64, ptr %11, align 8, !tbaa !38
  %23 = add i64 %22, %21
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !28
  %26 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !40
  %28 = add i64 %27, %25
  %29 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %23, i64 noundef %28, i32 noundef 1, ptr noundef %2) #12
  store ptr %29, ptr %8, align 8, !tbaa !25
  %30 = icmp eq ptr %29, null
  br i1 %30, label %130, label %31

31:                                               ; preds = %19
  %32 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %29, i32 noundef 1) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %35) #12
  %36 = tail call ptr @DestroyImage(ptr noundef nonnull %29) #12
  br label %130

37:                                               ; preds = %31
  %38 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %29) #12
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  %40 = load i32, ptr %39, align 4, !tbaa !78
  switch i32 %40, label %80 [
    i32 9, label %70
    i32 8, label %64
    i32 2, label %41
    i32 3, label %44
    i32 4, label %46
    i32 10, label %49
    i32 5, label %49
    i32 6, label %56
    i32 7, label %62
  ]

41:                                               ; preds = %37
  %42 = sdiv i64 %22, 2
  %43 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  br label %75

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  br label %75

46:                                               ; preds = %37
  %47 = sdiv i64 %22, 2
  %48 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 3
  br label %75

49:                                               ; preds = %37, %37
  %50 = sdiv i64 %22, 2
  %51 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !37
  %53 = add nsw i64 %52, %50
  store i64 %53, ptr %51, align 8, !tbaa !37
  %54 = sdiv i64 %27, 2
  %55 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 3
  br label %75

56:                                               ; preds = %37
  %57 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !37
  %59 = add nsw i64 %58, %22
  store i64 %59, ptr %57, align 8, !tbaa !37
  %60 = sdiv i64 %27, 2
  %61 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 3
  br label %75

62:                                               ; preds = %37
  %63 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 3
  br label %75

64:                                               ; preds = %37
  %65 = sdiv i64 %22, 2
  %66 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !37
  %68 = add nsw i64 %67, %65
  store i64 %68, ptr %66, align 8, !tbaa !37
  %69 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 3
  br label %75

70:                                               ; preds = %37
  %71 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !37
  %73 = add nsw i64 %72, %22
  store i64 %73, ptr %71, align 8, !tbaa !37
  %74 = getelementptr inbounds %struct._RectangleInfo, ptr %11, i64 0, i32 3
  br label %75

75:                                               ; preds = %41, %44, %46, %49, %56, %62, %64, %70
  %76 = phi ptr [ %74, %70 ], [ %69, %64 ], [ %63, %62 ], [ %61, %56 ], [ %55, %49 ], [ %48, %46 ], [ %45, %44 ], [ %43, %41 ]
  %77 = phi i64 [ %27, %70 ], [ %27, %64 ], [ %27, %62 ], [ %60, %56 ], [ %54, %49 ], [ %47, %46 ], [ %22, %44 ], [ %42, %41 ]
  %78 = load i64, ptr %76, align 8, !tbaa !32
  %79 = add nsw i64 %78, %77
  store i64 %79, ptr %76, align 8, !tbaa !32
  br label %80

80:                                               ; preds = %75, %37
  store i32 1, ptr %9, align 4, !tbaa !29
  store i64 0, ptr %10, align 8, !tbaa !30
  %81 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #12
  store ptr %81, ptr %6, align 8, !tbaa !25
  %82 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %29, ptr noundef %2) #12
  store ptr %82, ptr %7, align 8, !tbaa !25
  %83 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %84 = and i64 %83, 576460752303423487
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #12
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %29) #12
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %98

94:                                               ; preds = %89, %86, %80
  %95 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %96 = icmp ult i64 %95, 2
  %97 = select i1 %96, i64 1, i64 2
  br label %98

98:                                               ; preds = %94, %92
  %99 = phi i64 [ %93, %92 ], [ %97, %94 ]
  %100 = trunc i64 %99 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %100)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @SpliceImage.omp_outlined, ptr nonnull %11, ptr nonnull %9, ptr nonnull %6, ptr nonnull %4, ptr nonnull %5, ptr nonnull %7, ptr nonnull %8, ptr nonnull %10)
  %101 = call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %102 = and i64 %101, 576460752303423487
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = load ptr, ptr %4, align 8, !tbaa !25
  %106 = call i32 @GetImagePixelCacheType(ptr noundef %105) #12
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %8, align 8, !tbaa !25
  %110 = call i32 @GetImagePixelCacheType(ptr noundef %109) #12
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  br label %118

114:                                              ; preds = %108, %104, %98
  %115 = call i64 @GetMagickResourceLimit(i32 noundef 6) #12
  %116 = icmp ult i64 %115, 2
  %117 = select i1 %116, i64 1, i64 2
  br label %118

118:                                              ; preds = %114, %112
  %119 = phi i64 [ %113, %112 ], [ %117, %114 ]
  %120 = trunc i64 %119 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %120)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @SpliceImage.omp_outlined.14, ptr nonnull %11, ptr nonnull %8, ptr nonnull %9, ptr nonnull %6, ptr nonnull %4, ptr nonnull %5, ptr nonnull %7, ptr nonnull %10)
  %121 = load ptr, ptr %7, align 8, !tbaa !25
  %122 = call ptr @DestroyCacheView(ptr noundef %121) #12
  store ptr %122, ptr %7, align 8, !tbaa !25
  %123 = load ptr, ptr %6, align 8, !tbaa !25
  %124 = call ptr @DestroyCacheView(ptr noundef %123) #12
  store ptr %124, ptr %6, align 8, !tbaa !25
  %125 = load i32, ptr %9, align 4, !tbaa !29
  %126 = icmp eq i32 %125, 0
  %127 = load ptr, ptr %8, align 8, !tbaa !25
  br i1 %126, label %128, label %130

128:                                              ; preds = %118
  %129 = call ptr @DestroyImage(ptr noundef %127) #12
  br label %130

130:                                              ; preds = %118, %128, %19, %34
  %131 = phi ptr [ null, %34 ], [ null, %19 ], [ %129, %128 ], [ %127, %118 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  ret ptr %131
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SpliceImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #4 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !39
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %185

19:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 0, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 %17, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  store i64 1, ptr %13, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 0, ptr %14, align 4, !tbaa !29
  %20 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %21 = load i64, ptr %12, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %12, align 8, !tbaa !32
  %23 = load i64, ptr %11, align 8, !tbaa !32
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %184, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %176
  %28 = phi i64 [ %22, %25 ], [ %182, %176 ]
  %29 = phi i64 [ %23, %25 ], [ %180, %176 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %176, label %31

31:                                               ; preds = %27, %170
  %32 = phi i64 [ %171, %170 ], [ %29, %27 ]
  %33 = load i32, ptr %3, align 4, !tbaa !29
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %170, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !25
  %37 = load ptr, ptr %5, align 8, !tbaa !25
  %38 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !27
  %40 = load ptr, ptr %6, align 8, !tbaa !25
  %41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %36, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %40) #14
  %42 = load ptr, ptr %7, align 8, !tbaa !25
  %43 = load ptr, ptr %8, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !27
  %46 = load ptr, ptr %6, align 8, !tbaa !25
  %47 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %42, i64 noundef 0, i64 noundef %32, i64 noundef %45, i64 noundef 1, ptr noundef %46) #14
  %48 = icmp eq ptr %41, null
  %49 = icmp eq ptr %47, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %169, label %51

51:                                               ; preds = %35
  %52 = load ptr, ptr %4, align 8, !tbaa !25
  %53 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #12
  %54 = load ptr, ptr %7, align 8, !tbaa !25
  %55 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %54) #12
  %56 = load i64, ptr %26, align 8, !tbaa !37
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load ptr, ptr %5, align 8, !tbaa !25
  %60 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !71
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !79
  %65 = icmp eq i32 %64, 12
  %66 = icmp eq ptr %55, null
  br label %79

67:                                               ; preds = %101, %51
  %68 = phi ptr [ %53, %51 ], [ %102, %101 ]
  %69 = phi ptr [ %41, %51 ], [ %103, %101 ]
  %70 = phi i64 [ 0, %51 ], [ %56, %101 ]
  %71 = phi ptr [ %47, %51 ], [ %104, %101 ]
  %72 = load i64, ptr %2, align 8, !tbaa !38
  %73 = add i64 %72, %56
  %74 = call i64 @llvm.smax.i64(i64 %70, i64 %73)
  %75 = load ptr, ptr %8, align 8, !tbaa !25
  %76 = getelementptr inbounds %struct._Image, ptr %75, i64 0, i32 7
  %77 = load i64, ptr %76, align 8, !tbaa !27
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %107, label %149

79:                                               ; preds = %58, %101
  %80 = phi ptr [ %47, %58 ], [ %104, %101 ]
  %81 = phi i64 [ 0, %58 ], [ %105, %101 ]
  %82 = phi ptr [ %41, %58 ], [ %103, %101 ]
  %83 = phi ptr [ %53, %58 ], [ %102, %101 ]
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 2
  %85 = load i16, ptr %84, align 2, !tbaa !51
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 2
  store i16 %85, ptr %86, align 2, !tbaa !51
  %87 = load <2 x i16>, ptr %82, align 2, !tbaa !41
  store <2 x i16> %87, ptr %80, align 2, !tbaa !41
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  store i16 0, ptr %88, align 2, !tbaa !80
  br i1 %62, label %92, label %89

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 3
  %91 = load i16, ptr %90, align 2, !tbaa !80
  store i16 %91, ptr %88, align 2, !tbaa !80
  br label %92

92:                                               ; preds = %89, %79
  br i1 %65, label %93, label %101

93:                                               ; preds = %92
  %94 = getelementptr inbounds i16, ptr %55, i64 %81
  br i1 %66, label %101, label %95

95:                                               ; preds = %93
  %96 = icmp eq ptr %83, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %95
  %98 = load i16, ptr %83, align 2, !tbaa !41
  br label %99

99:                                               ; preds = %95, %97
  %100 = phi i16 [ %98, %97 ], [ 0, %95 ]
  store i16 %100, ptr %94, align 2, !tbaa !41
  br label %101

101:                                              ; preds = %93, %99, %92
  %102 = getelementptr inbounds i16, ptr %83, i64 1
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 1
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 1
  %105 = add nuw nsw i64 %81, 1
  %106 = icmp eq i64 %105, %56
  br i1 %106, label %67, label %79, !llvm.loop !81

107:                                              ; preds = %67
  %108 = icmp slt i64 %70, %73
  %109 = sub i64 %73, %70
  %110 = shl i64 %109, 3
  %111 = select i1 %108, i64 %110, i64 0
  %112 = getelementptr i8, ptr %71, i64 %111
  %113 = load ptr, ptr %5, align 8, !tbaa !25
  %114 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 6
  %115 = load i32, ptr %114, align 8, !tbaa !71
  %116 = icmp eq i32 %115, 0
  %117 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !79
  %119 = icmp eq i32 %118, 12
  %120 = icmp eq ptr %55, null
  br label %121

121:                                              ; preds = %107, %143
  %122 = phi ptr [ %112, %107 ], [ %146, %143 ]
  %123 = phi i64 [ %74, %107 ], [ %147, %143 ]
  %124 = phi ptr [ %69, %107 ], [ %145, %143 ]
  %125 = phi ptr [ %68, %107 ], [ %144, %143 ]
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 0, i32 2
  %127 = load i16, ptr %126, align 2, !tbaa !51
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 2
  store i16 %127, ptr %128, align 2, !tbaa !51
  %129 = load <2 x i16>, ptr %124, align 2, !tbaa !41
  store <2 x i16> %129, ptr %122, align 2, !tbaa !41
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 0, i32 3
  store i16 0, ptr %130, align 2, !tbaa !80
  br i1 %116, label %134, label %131

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 0, i32 3
  %133 = load i16, ptr %132, align 2, !tbaa !80
  store i16 %133, ptr %130, align 2, !tbaa !80
  br label %134

134:                                              ; preds = %131, %121
  br i1 %119, label %135, label %143

135:                                              ; preds = %134
  %136 = getelementptr inbounds i16, ptr %55, i64 %123
  br i1 %120, label %143, label %137

137:                                              ; preds = %135
  %138 = icmp eq ptr %125, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %137
  %140 = load i16, ptr %125, align 2, !tbaa !41
  br label %141

141:                                              ; preds = %137, %139
  %142 = phi i16 [ %140, %139 ], [ 0, %137 ]
  store i16 %142, ptr %136, align 2, !tbaa !41
  br label %143

143:                                              ; preds = %135, %141, %134
  %144 = getelementptr inbounds i16, ptr %125, i64 1
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 1
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 1
  %147 = add nuw nsw i64 %123, 1
  %148 = icmp eq i64 %147, %77
  br i1 %148, label %149, label %121, !llvm.loop !82

149:                                              ; preds = %143, %67
  %150 = load ptr, ptr %7, align 8, !tbaa !25
  %151 = load ptr, ptr %6, align 8, !tbaa !25
  %152 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %150, ptr noundef %151) #14
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %155

155:                                              ; preds = %154, %149
  %156 = load ptr, ptr %5, align 8, !tbaa !25
  %157 = getelementptr inbounds %struct._Image, ptr %156, i64 0, i32 47
  %158 = load ptr, ptr %157, align 8, !tbaa !44
  %159 = icmp eq ptr %158, null
  br i1 %159, label %170, label %160

160:                                              ; preds = %155
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_TransposeImage.var)
  %161 = load ptr, ptr %5, align 8, !tbaa !25
  %162 = load i64, ptr %9, align 8, !tbaa !30
  %163 = add nsw i64 %162, 1
  store i64 %163, ptr %9, align 8, !tbaa !30
  %164 = load ptr, ptr %8, align 8, !tbaa !25
  %165 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 8
  %166 = load i64, ptr %165, align 8, !tbaa !28
  %167 = call fastcc i32 @SetImageProgress(ptr noundef %161, ptr noundef nonnull @.str.13, i64 noundef %162, i64 noundef %166) #13
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_TransposeImage.var)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %160, %35
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %170

170:                                              ; preds = %169, %155, %160, %31
  %171 = add nsw i64 %32, 1
  %172 = load i64, ptr %12, align 8, !tbaa !32
  %173 = icmp slt i64 %32, %172
  br i1 %173, label %31, label %174

174:                                              ; preds = %170
  %175 = load i64, ptr %11, align 8, !tbaa !32
  br label %176

176:                                              ; preds = %174, %27
  %177 = phi i64 [ %29, %27 ], [ %175, %174 ]
  %178 = phi i64 [ %28, %27 ], [ %172, %174 ]
  %179 = load i64, ptr %13, align 8, !tbaa !32
  %180 = add nsw i64 %179, %177
  store i64 %180, ptr %11, align 8, !tbaa !32
  %181 = add nsw i64 %179, %178
  %182 = call i64 @llvm.smin.i64(i64 %181, i64 %17)
  store i64 %182, ptr %12, align 8, !tbaa !32
  %183 = icmp sgt i64 %180, %182
  br i1 %183, label %184, label %27

184:                                              ; preds = %176, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  br label %185

185:                                              ; preds = %184, %10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SpliceImage.omp_outlined.14(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #4 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !40
  %19 = add i64 %18, %16
  %20 = load ptr, ptr %3, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !28
  %23 = xor i64 %19, -1
  %24 = add i64 %22, %23
  %25 = icmp slt i64 %19, %22
  br i1 %25, label %26, label %204

26:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 0, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 %24, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #5
  store i64 1, ptr %13, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #5
  store i32 0, ptr %14, align 4, !tbaa !29
  %27 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8u(ptr nonnull @1, i32 %27, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %28 = load i64, ptr %12, align 8
  %29 = call i64 @llvm.umin.i64(i64 %28, i64 %24)
  store i64 %29, ptr %12, align 8, !tbaa !32
  %30 = load i64, ptr %11, align 8, !tbaa !32
  %31 = add i64 %29, 1
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %203

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  br label %35

35:                                               ; preds = %33, %194
  %36 = phi i64 [ %29, %33 ], [ %200, %194 ]
  %37 = phi i64 [ %30, %33 ], [ %198, %194 ]
  %38 = icmp ugt i64 %37, %36
  br i1 %38, label %194, label %39

39:                                               ; preds = %35, %187
  %40 = phi i64 [ %188, %187 ], [ %37, %35 ]
  %41 = add i64 %40, %19
  %42 = load i32, ptr %4, align 4, !tbaa !29
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %187, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %5, align 8, !tbaa !25
  %46 = load i64, ptr %17, align 8, !tbaa !40
  %47 = sub nsw i64 %41, %46
  %48 = load ptr, ptr %6, align 8, !tbaa !25
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !27
  %51 = load ptr, ptr %7, align 8, !tbaa !25
  %52 = call ptr @GetCacheViewVirtualPixels(ptr noundef %45, i64 noundef 0, i64 noundef %47, i64 noundef %50, i64 noundef 1, ptr noundef %51) #14
  %53 = icmp slt i64 %41, 0
  br i1 %53, label %187, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr %3, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 8
  %57 = load i64, ptr %56, align 8, !tbaa !28
  %58 = icmp slt i64 %41, %57
  br i1 %58, label %59, label %187

59:                                               ; preds = %54
  %60 = load ptr, ptr %8, align 8, !tbaa !25
  %61 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %62 = load i64, ptr %61, align 8, !tbaa !27
  %63 = load ptr, ptr %7, align 8, !tbaa !25
  %64 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %60, i64 noundef 0, i64 noundef %41, i64 noundef %62, i64 noundef 1, ptr noundef %63) #14
  %65 = icmp eq ptr %52, null
  %66 = icmp eq ptr %64, null
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %186, label %68

68:                                               ; preds = %59
  %69 = load ptr, ptr %5, align 8, !tbaa !25
  %70 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %69) #12
  %71 = load ptr, ptr %8, align 8, !tbaa !25
  %72 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %71) #12
  %73 = load i64, ptr %34, align 8, !tbaa !37
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load ptr, ptr %6, align 8, !tbaa !25
  %77 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !71
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !79
  %82 = icmp eq i32 %81, 12
  %83 = icmp eq ptr %72, null
  br label %96

84:                                               ; preds = %118, %68
  %85 = phi ptr [ %70, %68 ], [ %119, %118 ]
  %86 = phi ptr [ %52, %68 ], [ %120, %118 ]
  %87 = phi i64 [ 0, %68 ], [ %73, %118 ]
  %88 = phi ptr [ %64, %68 ], [ %121, %118 ]
  %89 = load i64, ptr %2, align 8, !tbaa !38
  %90 = add i64 %89, %73
  %91 = call i64 @llvm.smax.i64(i64 %87, i64 %90)
  %92 = load ptr, ptr %3, align 8, !tbaa !25
  %93 = getelementptr inbounds %struct._Image, ptr %92, i64 0, i32 7
  %94 = load i64, ptr %93, align 8, !tbaa !27
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %124, label %166

96:                                               ; preds = %75, %118
  %97 = phi ptr [ %64, %75 ], [ %121, %118 ]
  %98 = phi i64 [ 0, %75 ], [ %122, %118 ]
  %99 = phi ptr [ %52, %75 ], [ %120, %118 ]
  %100 = phi ptr [ %70, %75 ], [ %119, %118 ]
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %102 = load i16, ptr %101, align 2, !tbaa !51
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  store i16 %102, ptr %103, align 2, !tbaa !51
  %104 = load <2 x i16>, ptr %99, align 2, !tbaa !41
  store <2 x i16> %104, ptr %97, align 2, !tbaa !41
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 3
  store i16 0, ptr %105, align 2, !tbaa !80
  br i1 %79, label %109, label %106

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !80
  store i16 %108, ptr %105, align 2, !tbaa !80
  br label %109

109:                                              ; preds = %106, %96
  br i1 %82, label %110, label %118

110:                                              ; preds = %109
  %111 = getelementptr inbounds i16, ptr %72, i64 %98
  br i1 %83, label %118, label %112

112:                                              ; preds = %110
  %113 = icmp eq ptr %100, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %112
  %115 = load i16, ptr %100, align 2, !tbaa !41
  br label %116

116:                                              ; preds = %112, %114
  %117 = phi i16 [ %115, %114 ], [ 0, %112 ]
  store i16 %117, ptr %111, align 2, !tbaa !41
  br label %118

118:                                              ; preds = %110, %116, %109
  %119 = getelementptr inbounds i16, ptr %100, i64 1
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 1
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 1
  %122 = add nuw nsw i64 %98, 1
  %123 = icmp eq i64 %122, %73
  br i1 %123, label %84, label %96, !llvm.loop !83

124:                                              ; preds = %84
  %125 = icmp slt i64 %87, %90
  %126 = sub i64 %90, %87
  %127 = shl i64 %126, 3
  %128 = select i1 %125, i64 %127, i64 0
  %129 = getelementptr i8, ptr %88, i64 %128
  %130 = load ptr, ptr %6, align 8, !tbaa !25
  %131 = getelementptr inbounds %struct._Image, ptr %130, i64 0, i32 6
  %132 = load i32, ptr %131, align 8, !tbaa !71
  %133 = icmp eq i32 %132, 0
  %134 = getelementptr inbounds %struct._Image, ptr %130, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !79
  %136 = icmp eq i32 %135, 12
  %137 = icmp eq ptr %72, null
  br label %138

138:                                              ; preds = %124, %160
  %139 = phi ptr [ %129, %124 ], [ %163, %160 ]
  %140 = phi i64 [ %91, %124 ], [ %164, %160 ]
  %141 = phi ptr [ %86, %124 ], [ %162, %160 ]
  %142 = phi ptr [ %85, %124 ], [ %161, %160 ]
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %141, i64 0, i32 2
  %144 = load i16, ptr %143, align 2, !tbaa !51
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 0, i32 2
  store i16 %144, ptr %145, align 2, !tbaa !51
  %146 = load <2 x i16>, ptr %141, align 2, !tbaa !41
  store <2 x i16> %146, ptr %139, align 2, !tbaa !41
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 0, i32 3
  store i16 0, ptr %147, align 2, !tbaa !80
  br i1 %133, label %151, label %148

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %141, i64 0, i32 3
  %150 = load i16, ptr %149, align 2, !tbaa !80
  store i16 %150, ptr %147, align 2, !tbaa !80
  br label %151

151:                                              ; preds = %148, %138
  br i1 %136, label %152, label %160

152:                                              ; preds = %151
  %153 = getelementptr inbounds i16, ptr %72, i64 %140
  br i1 %137, label %160, label %154

154:                                              ; preds = %152
  %155 = icmp eq ptr %142, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %154
  %157 = load i16, ptr %142, align 2, !tbaa !41
  br label %158

158:                                              ; preds = %154, %156
  %159 = phi i16 [ %157, %156 ], [ 0, %154 ]
  store i16 %159, ptr %153, align 2, !tbaa !41
  br label %160

160:                                              ; preds = %152, %158, %151
  %161 = getelementptr inbounds i16, ptr %142, i64 1
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %141, i64 1
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %139, i64 1
  %164 = add nuw nsw i64 %140, 1
  %165 = icmp eq i64 %164, %94
  br i1 %165, label %166, label %138, !llvm.loop !84

166:                                              ; preds = %160, %84
  %167 = load ptr, ptr %8, align 8, !tbaa !25
  %168 = load ptr, ptr %7, align 8, !tbaa !25
  %169 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %167, ptr noundef %168) #14
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 0, ptr %4, align 4, !tbaa !29
  br label %172

172:                                              ; preds = %171, %166
  %173 = load ptr, ptr %6, align 8, !tbaa !25
  %174 = getelementptr inbounds %struct._Image, ptr %173, i64 0, i32 47
  %175 = load ptr, ptr %174, align 8, !tbaa !44
  %176 = icmp eq ptr %175, null
  br i1 %176, label %187, label %177

177:                                              ; preds = %172
  call void @__kmpc_critical(ptr nonnull @2, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_TransposeImage.var)
  %178 = load ptr, ptr %6, align 8, !tbaa !25
  %179 = load i64, ptr %9, align 8, !tbaa !30
  %180 = add nsw i64 %179, 1
  store i64 %180, ptr %9, align 8, !tbaa !30
  %181 = load ptr, ptr %3, align 8, !tbaa !25
  %182 = getelementptr inbounds %struct._Image, ptr %181, i64 0, i32 8
  %183 = load i64, ptr %182, align 8, !tbaa !28
  %184 = call fastcc i32 @SetImageProgress(ptr noundef %178, ptr noundef nonnull @.str.13, i64 noundef %179, i64 noundef %183) #13
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_TransposeImage.var)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %177, %59
  store i32 0, ptr %4, align 4, !tbaa !29
  br label %187

187:                                              ; preds = %186, %172, %177, %44, %54, %39
  %188 = add nuw i64 %40, 1
  %189 = load i64, ptr %12, align 8, !tbaa !32
  %190 = add i64 %189, 1
  %191 = icmp ult i64 %188, %190
  br i1 %191, label %39, label %192

192:                                              ; preds = %187
  %193 = load i64, ptr %11, align 8, !tbaa !32
  br label %194

194:                                              ; preds = %192, %35
  %195 = phi i64 [ %37, %35 ], [ %193, %192 ]
  %196 = phi i64 [ %36, %35 ], [ %189, %192 ]
  %197 = load i64, ptr %13, align 8, !tbaa !32
  %198 = add i64 %197, %195
  store i64 %198, ptr %11, align 8, !tbaa !32
  %199 = add i64 %197, %196
  %200 = call i64 @llvm.umin.i64(i64 %199, i64 %24)
  store i64 %200, ptr %12, align 8, !tbaa !32
  %201 = add i64 %200, 1
  %202 = icmp ult i64 %198, %201
  br i1 %202, label %35, label %203

203:                                              ; preds = %194, %26
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  br label %204

204:                                              ; preds = %203, %10
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8u(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @TransformImage(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #5
  %5 = load ptr, ptr %0, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2058, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #12
  %12 = load ptr, ptr %0, align 8, !tbaa !25
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ %12, %9 ], [ %5, %3 ]
  %15 = icmp eq ptr %1, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  %18 = tail call ptr @CropImageToTiles(ptr noundef %14, ptr noundef nonnull %1, ptr noundef nonnull %17) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 58
  %23 = tail call ptr @CloneImage(ptr noundef %21, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %22) #12
  br label %27

24:                                               ; preds = %16
  %25 = tail call ptr @DestroyImage(ptr noundef %14) #12
  %26 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %18) #12
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %23, %20 ], [ %26, %24 ]
  store ptr %28, ptr %0, align 8, !tbaa !25
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi ptr [ %28, %27 ], [ %14, %13 ]
  %31 = icmp eq ptr %2, null
  br i1 %31, label %60, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 58
  %34 = call i32 @ParseRegionGeometry(ptr noundef %30, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %33) #12
  %35 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !27
  %37 = load i64, ptr %4, align 8, !tbaa !38
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !40
  br label %48

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 8
  %44 = load i64, ptr %43, align 8, !tbaa !28
  %45 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !40
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %39, %42
  %49 = phi i64 [ %41, %39 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 32
  %51 = load i32, ptr %50, align 8, !tbaa !85
  %52 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 30
  %53 = load double, ptr %52, align 8, !tbaa !86
  %54 = load ptr, ptr %0, align 8, !tbaa !25
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 58
  %56 = call ptr @ResizeImage(ptr noundef nonnull %30, i64 noundef %37, i64 noundef %49, i32 noundef %51, double noundef %53, ptr noundef nonnull %55) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  %59 = call ptr @DestroyImage(ptr noundef nonnull %30) #12
  store ptr %56, ptr %0, align 8, !tbaa !25
  br label %60

60:                                               ; preds = %48, %42, %29, %58
  %61 = phi i32 [ 1, %58 ], [ 1, %29 ], [ 1, %42 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #5
  ret i32 %61
}

; Function Attrs: optsize
declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @TransformImages(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = load ptr, ptr %0, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !26
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2146, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !25
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi ptr [ %13, %10 ], [ %6, %3 ]
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  %17 = tail call ptr @ImageListToArray(ptr noundef %15, ptr noundef nonnull %16) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @NewImageList() #12
  store ptr %20, ptr %5, align 8, !tbaa !25
  %21 = load ptr, ptr %17, align 8, !tbaa !25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %32, %23 ], [ %21, %19 ]
  %25 = phi i64 [ %30, %23 ], [ 0, %19 ]
  %26 = phi i32 [ %28, %23 ], [ 1, %19 ]
  store ptr %24, ptr %4, align 8, !tbaa !25
  %27 = call i32 @TransformImage(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #13, !range !87
  %28 = and i32 %27, %26
  %29 = load ptr, ptr %4, align 8, !tbaa !25
  call void @AppendImageToList(ptr noundef nonnull %5, ptr noundef %29) #12
  %30 = add nuw nsw i64 %25, 1
  %31 = getelementptr inbounds ptr, ptr %17, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %23, !llvm.loop !88

34:                                               ; preds = %23
  %35 = load ptr, ptr %5, align 8, !tbaa !25
  br label %36

36:                                               ; preds = %34, %19
  %37 = phi ptr [ %20, %19 ], [ %35, %34 ]
  %38 = phi i32 [ 1, %19 ], [ %28, %34 ]
  store ptr %37, ptr %0, align 8, !tbaa !25
  %39 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %17) #12
  br label %40

40:                                               ; preds = %14, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %41
}

; Function Attrs: optsize
declare ptr @ImageListToArray(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @TransposeImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #4 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !28
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %111

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  store i64 0, ptr %10, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 %17, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 1, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  store i32 0, ptr %13, align 4, !tbaa !29
  %20 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !32
  %23 = load i64, ptr %10, align 8, !tbaa !32
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %110, label %25

25:                                               ; preds = %19, %102
  %26 = phi i64 [ %108, %102 ], [ %22, %19 ]
  %27 = phi i64 [ %106, %102 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %102, label %29

29:                                               ; preds = %25, %96
  %30 = phi i64 [ %97, %96 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %96, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !25
  %35 = load ptr, ptr %2, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 8
  %37 = load i64, ptr %36, align 8, !tbaa !28
  %38 = xor i64 %30, -1
  %39 = add i64 %37, %38
  %40 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !27
  %42 = load ptr, ptr %5, align 8, !tbaa !25
  %43 = call ptr @GetCacheViewVirtualPixels(ptr noundef %34, i64 noundef 0, i64 noundef %39, i64 noundef %41, i64 noundef 1, ptr noundef %42) #14
  %44 = load ptr, ptr %6, align 8, !tbaa !25
  %45 = load ptr, ptr %2, align 8, !tbaa !25
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !28
  %48 = add i64 %47, %38
  %49 = load ptr, ptr %7, align 8, !tbaa !25
  %50 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !28
  %52 = load ptr, ptr %5, align 8, !tbaa !25
  %53 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %44, i64 noundef %48, i64 noundef 0, i64 noundef 1, i64 noundef %51, ptr noundef %52) #14
  %54 = icmp eq ptr %43, null
  %55 = icmp eq ptr %53, null
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %95, label %57

57:                                               ; preds = %33
  %58 = load ptr, ptr %2, align 8, !tbaa !25
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !27
  %61 = shl i64 %60, 3
  %62 = call ptr @CopyMagickMemory(ptr noundef nonnull %53, ptr noundef nonnull %43, i64 noundef %61) #12
  %63 = load ptr, ptr %4, align 8, !tbaa !25
  %64 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %63) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %57
  %67 = load ptr, ptr %6, align 8, !tbaa !25
  %68 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %67) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %2, align 8, !tbaa !25
  %72 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  %73 = load i64, ptr %72, align 8, !tbaa !27
  %74 = shl i64 %73, 1
  %75 = call ptr @CopyMagickMemory(ptr noundef nonnull %68, ptr noundef nonnull %64, i64 noundef %74) #12
  br label %76

76:                                               ; preds = %66, %70, %57
  %77 = load ptr, ptr %6, align 8, !tbaa !25
  %78 = load ptr, ptr %5, align 8, !tbaa !25
  %79 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %77, ptr noundef %78) #14
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %82

82:                                               ; preds = %81, %76
  %83 = load ptr, ptr %2, align 8, !tbaa !25
  %84 = getelementptr inbounds %struct._Image, ptr %83, i64 0, i32 47
  %85 = load ptr, ptr %84, align 8, !tbaa !44
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %82
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_TransposeImage.var)
  %88 = load ptr, ptr %2, align 8, !tbaa !25
  %89 = load i64, ptr %8, align 8, !tbaa !30
  %90 = add nsw i64 %89, 1
  store i64 %90, ptr %8, align 8, !tbaa !30
  %91 = getelementptr inbounds %struct._Image, ptr %88, i64 0, i32 8
  %92 = load i64, ptr %91, align 8, !tbaa !28
  %93 = call fastcc i32 @SetImageProgress(ptr noundef %88, ptr noundef nonnull @.str.15, i64 noundef %89, i64 noundef %92) #13
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_TransposeImage.var)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87, %33
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %96

96:                                               ; preds = %95, %82, %87, %29
  %97 = add nsw i64 %30, 1
  %98 = load i64, ptr %11, align 8, !tbaa !32
  %99 = icmp slt i64 %30, %98
  br i1 %99, label %29, label %100

100:                                              ; preds = %96
  %101 = load i64, ptr %10, align 8, !tbaa !32
  br label %102

102:                                              ; preds = %100, %25
  %103 = phi i64 [ %27, %25 ], [ %101, %100 ]
  %104 = phi i64 [ %26, %25 ], [ %98, %100 ]
  %105 = load i64, ptr %12, align 8, !tbaa !32
  %106 = add nsw i64 %105, %103
  store i64 %106, ptr %10, align 8, !tbaa !32
  %107 = add nsw i64 %105, %104
  %108 = call i64 @llvm.smin.i64(i64 %107, i64 %17)
  store i64 %108, ptr %11, align 8, !tbaa !32
  %109 = icmp sgt i64 %106, %108
  br i1 %109, label %110, label %25

110:                                              ; preds = %102, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br label %111

111:                                              ; preds = %110, %9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @TransverseImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #4 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !28
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %132

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  store i64 0, ptr %10, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #5
  store i64 %17, ptr %11, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  store i64 1, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  store i32 0, ptr %13, align 4, !tbaa !29
  %20 = load i32, ptr %0, align 4, !tbaa !29
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !32
  %23 = load i64, ptr %10, align 8, !tbaa !32
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %131, label %25

25:                                               ; preds = %19, %123
  %26 = phi i64 [ %129, %123 ], [ %22, %19 ]
  %27 = phi i64 [ %127, %123 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %123, label %29

29:                                               ; preds = %25, %117
  %30 = phi i64 [ %118, %117 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %117, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !25
  %35 = load ptr, ptr %2, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !27
  %38 = load ptr, ptr %5, align 8, !tbaa !25
  %39 = call ptr @GetCacheViewVirtualPixels(ptr noundef %34, i64 noundef 0, i64 noundef %30, i64 noundef %37, i64 noundef 1, ptr noundef %38) #14
  %40 = load ptr, ptr %6, align 8, !tbaa !25
  %41 = load ptr, ptr %2, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !28
  %44 = xor i64 %30, -1
  %45 = add i64 %43, %44
  %46 = load ptr, ptr %7, align 8, !tbaa !25
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 8
  %48 = load i64, ptr %47, align 8, !tbaa !28
  %49 = load ptr, ptr %5, align 8, !tbaa !25
  %50 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %40, i64 noundef %45, i64 noundef 0, i64 noundef 1, i64 noundef %48, ptr noundef %49) #14
  %51 = icmp eq ptr %39, null
  %52 = icmp eq ptr %50, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %116, label %54

54:                                               ; preds = %33
  %55 = load ptr, ptr %2, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !27
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %57
  br label %61

61:                                               ; preds = %59, %61
  %62 = phi ptr [ %65, %61 ], [ %60, %59 ]
  %63 = phi i64 [ %68, %61 ], [ 0, %59 ]
  %64 = phi ptr [ %66, %61 ], [ %39, %59 ]
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 -1
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 1
  %67 = load i64, ptr %64, align 2
  store i64 %67, ptr %65, align 2
  %68 = add nuw nsw i64 %63, 1
  %69 = load ptr, ptr %2, align 8, !tbaa !25
  %70 = getelementptr inbounds %struct._Image, ptr %69, i64 0, i32 7
  %71 = load i64, ptr %70, align 8, !tbaa !27
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %61, label %73, !llvm.loop !89

73:                                               ; preds = %61, %54
  %74 = load ptr, ptr %4, align 8, !tbaa !25
  %75 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %74) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %97, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %6, align 8, !tbaa !25
  %79 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %78) #12
  %80 = icmp eq ptr %79, null
  br i1 %80, label %97, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %2, align 8, !tbaa !25
  %83 = getelementptr inbounds %struct._Image, ptr %82, i64 0, i32 7
  %84 = load i64, ptr %83, align 8, !tbaa !27
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = getelementptr inbounds i16, ptr %79, i64 %84
  %88 = getelementptr i16, ptr %87, i64 -1
  br label %89

89:                                               ; preds = %86, %89
  %90 = phi i64 [ 0, %86 ], [ %95, %89 ]
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds i16, ptr %75, i64 %90
  %93 = load i16, ptr %92, align 2, !tbaa !41
  %94 = getelementptr i16, ptr %88, i64 %91
  store i16 %93, ptr %94, align 2, !tbaa !41
  %95 = add nuw nsw i64 %90, 1
  %96 = icmp eq i64 %95, %84
  br i1 %96, label %97, label %89, !llvm.loop !90

97:                                               ; preds = %89, %81, %77, %73
  %98 = load ptr, ptr %6, align 8, !tbaa !25
  %99 = load ptr, ptr %5, align 8, !tbaa !25
  %100 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %98, ptr noundef %99) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %103

103:                                              ; preds = %102, %97
  %104 = load ptr, ptr %2, align 8, !tbaa !25
  %105 = getelementptr inbounds %struct._Image, ptr %104, i64 0, i32 47
  %106 = load ptr, ptr %105, align 8, !tbaa !44
  %107 = icmp eq ptr %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %103
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_TransverseImage.var)
  %109 = load ptr, ptr %2, align 8, !tbaa !25
  %110 = load i64, ptr %8, align 8, !tbaa !30
  %111 = add nsw i64 %110, 1
  store i64 %111, ptr %8, align 8, !tbaa !30
  %112 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 8
  %113 = load i64, ptr %112, align 8, !tbaa !28
  %114 = call fastcc i32 @SetImageProgress(ptr noundef %109, ptr noundef nonnull @.str.16, i64 noundef %110, i64 noundef %113) #13
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_TransverseImage.var)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108, %33
  store i32 0, ptr %3, align 4, !tbaa !29
  br label %117

117:                                              ; preds = %116, %103, %108, %29
  %118 = add nsw i64 %30, 1
  %119 = load i64, ptr %11, align 8, !tbaa !32
  %120 = icmp slt i64 %30, %119
  br i1 %120, label %29, label %121

121:                                              ; preds = %117
  %122 = load i64, ptr %10, align 8, !tbaa !32
  br label %123

123:                                              ; preds = %121, %25
  %124 = phi i64 [ %27, %25 ], [ %122, %121 ]
  %125 = phi i64 [ %26, %25 ], [ %119, %121 ]
  %126 = load i64, ptr %12, align 8, !tbaa !32
  %127 = add nsw i64 %126, %124
  store i64 %127, ptr %10, align 8, !tbaa !32
  %128 = add nsw i64 %126, %125
  %129 = call i64 @llvm.smin.i64(i64 %128, i64 %17)
  store i64 %129, ptr %11, align 8, !tbaa !32
  %130 = icmp sgt i64 %127, %129
  br i1 %130, label %131, label %25

131:                                              ; preds = %123, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  br label %132

132:                                              ; preds = %131, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @TrimImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2469, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #12
  br label %10

10:                                               ; preds = %7, %2
  call void @GetImageBoundingBox(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %3, ptr noundef nonnull %0, ptr noundef %1) #12
  %11 = load i64, ptr %3, align 8, !tbaa !38
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = select i1 %12, i1 true, i1 %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 1, i32 noundef 1, ptr noundef %1) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 12, i32 3
  store i16 -1, ptr %21, align 2, !tbaa !61
  %22 = call i32 @SetImageBackgroundColor(ptr noundef nonnull %18) #12
  %23 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 26
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 16, i1 false), !tbaa.struct !35
  %25 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 26, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 -1, i64 16, i1 false)
  br label %33

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %28 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %29 = load <2 x i64>, ptr %27, align 8, !tbaa !32
  %30 = load <2 x i64>, ptr %28, align 8, !tbaa !32
  %31 = add nsw <2 x i64> %30, %29
  store <2 x i64> %31, ptr %28, align 8, !tbaa !32
  %32 = call ptr @CropImage(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1) #13
  br label %33

33:                                               ; preds = %20, %17, %26
  %34 = phi ptr [ %32, %26 ], [ %18, %20 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #5
  ret ptr %34
}

; Function Attrs: optsize
declare void @GetImageBoundingBox(ptr dead_on_unwind writable sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { convergent nounwind }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 24}
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
!26 = !{!7, !8, i64 12976}
!27 = !{!7, !11, i64 40}
!28 = !{!7, !11, i64 48}
!29 = !{!8, !8, i64 0}
!30 = !{!24, !24, i64 0}
!31 = !{i64 0, i64 8, !32, i64 8, i64 8, !32}
!32 = !{!11, !11, i64 0}
!33 = !{i64 0, i64 8, !32}
!34 = !{!7, !8, i64 13184}
!35 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32, i64 24, i64 8, !32}
!36 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32}
!37 = !{!18, !11, i64 16}
!38 = !{!18, !11, i64 0}
!39 = !{!18, !11, i64 24}
!40 = !{!18, !11, i64 8}
!41 = !{!14, !14, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!7, !12, i64 568}
!45 = !{!7, !12, i64 576}
!46 = !{!47}
!47 = !{i64 2, i64 -1, i64 -1, i1 true}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !43}
!50 = distinct !{!50, !43}
!51 = !{!13, !14, i64 4}
!52 = distinct !{!52, !43}
!53 = distinct !{!53, !43}
!54 = !{!13, !14, i64 2}
!55 = distinct !{!55, !43}
!56 = distinct !{!56, !43}
!57 = !{!13, !14, i64 0}
!58 = distinct !{!58, !43}
!59 = distinct !{!59, !43}
!60 = distinct !{!60, !43}
!61 = !{!7, !14, i64 86}
!62 = !{!7, !8, i64 420}
!63 = !{!7, !11, i64 280}
!64 = !{!7, !11, i64 288}
!65 = !{!7, !11, i64 296}
!66 = !{!7, !11, i64 304}
!67 = distinct !{!67, !43}
!68 = distinct !{!68, !43}
!69 = distinct !{!69, !43}
!70 = distinct !{!70, !43}
!71 = !{!7, !8, i64 32}
!72 = !{!7, !8, i64 416}
!73 = distinct !{!73, !43}
!74 = distinct !{!74, !43}
!75 = distinct !{!75, !43}
!76 = distinct !{!76, !43}
!77 = distinct !{!77, !43}
!78 = !{!7, !8, i64 412}
!79 = !{!7, !8, i64 4}
!80 = !{!13, !14, i64 6}
!81 = distinct !{!81, !43}
!82 = distinct !{!82, !43}
!83 = distinct !{!83, !43}
!84 = distinct !{!84, !43}
!85 = !{!7, !8, i64 400}
!86 = !{!7, !15, i64 384}
!87 = !{i32 0, i32 2}
!88 = distinct !{!88, !43}
!89 = distinct !{!89, !43}
!90 = distinct !{!90, !43}
