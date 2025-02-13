; ModuleID = 'magick/transform.c'
source_filename = "magick/transform.c"
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

@.str = private unnamed_addr constant [19 x i8] c"magick/transform.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GeometryDoesNotContainImage\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Chop/Image\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Crop/Image\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Excerpt/Image\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Flip/Image\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Flop/Image\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Roll/Image\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Splice/Image\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Transpose/Image\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Transverse/Image\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

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
  %5 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #9
  br label %20

6:                                                ; preds = %3
  %7 = tail call ptr @FlopImage(ptr noundef %0, ptr noundef %2) #10
  br label %20

8:                                                ; preds = %3
  %9 = tail call ptr @RotateImage(ptr noundef %0, double noundef 1.800000e+02, ptr noundef %2) #9
  br label %20

10:                                               ; preds = %3
  %11 = tail call ptr @FlipImage(ptr noundef %0, ptr noundef %2) #10
  br label %20

12:                                               ; preds = %3
  %13 = tail call ptr @TransposeImage(ptr noundef %0, ptr noundef %2) #10
  br label %20

14:                                               ; preds = %3
  %15 = tail call ptr @RotateImage(ptr noundef %0, double noundef 9.000000e+01, ptr noundef %2) #9
  br label %20

16:                                               ; preds = %3
  %17 = tail call ptr @TransverseImage(ptr noundef %0, ptr noundef %2) #10
  br label %20

18:                                               ; preds = %3
  %19 = tail call ptr @RotateImage(ptr noundef %0, double noundef 2.700000e+02, ptr noundef %2) #9
  br label %20

20:                                               ; preds = %18, %16, %14, %12, %10, %8, %6, %4
  %21 = phi ptr [ %5, %4 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 4
  store i32 1, ptr %24, align 8, !tbaa !5
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
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1386, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #9
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !26
  %14 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %11, i64 noundef %13, i32 noundef 1, ptr noundef %1) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %114, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %18 = load <2 x i64>, ptr %17, align 8
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa.struct !27
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa.struct !29
  %23 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #9
  %24 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %1) #9
  %25 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !26
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %93

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %31

31:                                               ; preds = %28, %85
  %32 = phi i64 [ 0, %28 ], [ %88, %85 ]
  %33 = phi i32 [ 1, %28 ], [ %87, %85 ]
  %34 = phi i64 [ 0, %28 ], [ %86, %85 ]
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %85, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %10, align 8, !tbaa !25
  %38 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %23, i64 noundef 0, i64 noundef %32, i64 noundef %37, i64 noundef 1, ptr noundef %1) #11
  %39 = load i64, ptr %29, align 8, !tbaa !25
  %40 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %24, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %1) #11
  %41 = icmp eq ptr %38, null
  %42 = icmp eq ptr %40, null
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %85, label %44

44:                                               ; preds = %36
  %45 = load i64, ptr %29, align 8, !tbaa !25
  %46 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %23) #9
  %47 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %24) #9
  %48 = load i64, ptr %29, align 8, !tbaa !25
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %40, i64 %45
  %52 = icmp ne ptr %46, null
  %53 = icmp ne ptr %47, null
  %54 = select i1 %52, i1 %53, i1 false
  br label %55

55:                                               ; preds = %50, %70
  %56 = phi ptr [ %51, %50 ], [ %59, %70 ]
  %57 = phi i64 [ 0, %50 ], [ %71, %70 ]
  %58 = phi ptr [ %38, %50 ], [ %60, %70 ]
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 -1
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %61 = load i64, ptr %58, align 2
  store i64 %61, ptr %59, align 2
  %62 = load i64, ptr %29, align 8, !tbaa !25
  br i1 %54, label %63, label %70

63:                                               ; preds = %55
  %64 = sub nsw i64 0, %57
  %65 = getelementptr inbounds i16, ptr %46, i64 %57
  %66 = load i16, ptr %65, align 2, !tbaa !30
  %67 = getelementptr inbounds i16, ptr %47, i64 %62
  %68 = getelementptr inbounds i16, ptr %67, i64 %64
  %69 = getelementptr inbounds i16, ptr %68, i64 -1
  store i16 %66, ptr %69, align 2, !tbaa !30
  br label %70

70:                                               ; preds = %55, %63
  %71 = add nuw nsw i64 %57, 1
  %72 = icmp slt i64 %71, %62
  br i1 %72, label %55, label %73, !llvm.loop !31

73:                                               ; preds = %70, %44
  %74 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %24, ptr noundef %1) #11
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = load ptr, ptr %30, align 8, !tbaa !33
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = add nsw i64 %34, 1
  %81 = load i64, ptr %12, align 8, !tbaa !26
  %82 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef %34, i64 noundef %81) #10
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 0, i32 %76
  br label %85

85:                                               ; preds = %73, %79, %36, %31
  %86 = phi i64 [ %34, %31 ], [ %34, %36 ], [ %80, %79 ], [ %34, %73 ]
  %87 = phi i32 [ 0, %31 ], [ 0, %36 ], [ %84, %79 ], [ %76, %73 ]
  %88 = add nuw nsw i64 %32, 1
  %89 = load i64, ptr %25, align 8, !tbaa !26
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %31, label %91, !llvm.loop !34

91:                                               ; preds = %85
  %92 = icmp eq i32 %87, 0
  br label %93

93:                                               ; preds = %91, %16
  %94 = phi i1 [ false, %16 ], [ %92, %91 ]
  %95 = tail call ptr @DestroyCacheView(ptr noundef %24) #9
  %96 = tail call ptr @DestroyCacheView(ptr noundef %23) #9
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %98 = load i32, ptr %97, align 8, !tbaa !35
  %99 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 77
  store i32 %98, ptr %99, align 8, !tbaa !35
  %100 = extractelement <2 x i64> %18, i64 0
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %104 = load i64, ptr %103, align 8, !tbaa !25
  %105 = add i64 %20, %104
  %106 = sub i64 %100, %105
  br label %107

107:                                              ; preds = %102, %93
  %108 = phi i64 [ %106, %102 ], [ %20, %93 ]
  %109 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26
  store <2 x i64> %18, ptr %109, align 8
  %110 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 2
  store i64 %108, ptr %110, align 8, !tbaa.struct !27
  %111 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 3
  store i64 %22, ptr %111, align 8, !tbaa.struct !29
  br i1 %94, label %112, label %114

112:                                              ; preds = %107
  %113 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #9
  br label %114

114:                                              ; preds = %107, %112, %9
  %115 = phi ptr [ null, %9 ], [ %113, %112 ], [ %14, %107 ]
  ret ptr %115
}

; Function Attrs: optsize
declare ptr @RotateImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @FlipImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1258, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #9
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !26
  %14 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %11, i64 noundef %13, i32 noundef 1, ptr noundef %1) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %100, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %18 = load i64, ptr %17, align 8, !tbaa.struct !36
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %20 = load <2 x i64>, ptr %19, align 8
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa.struct !29
  %23 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #9
  %24 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %1) #9
  %25 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !26
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %80

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %31

31:                                               ; preds = %28, %72
  %32 = phi i32 [ 1, %28 ], [ %74, %72 ]
  %33 = phi i64 [ 0, %28 ], [ %75, %72 ]
  %34 = phi i64 [ 0, %28 ], [ %73, %72 ]
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %72, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %10, align 8, !tbaa !25
  %38 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %23, i64 noundef 0, i64 noundef %33, i64 noundef %37, i64 noundef 1, ptr noundef %1) #11
  %39 = load i64, ptr %25, align 8, !tbaa !26
  %40 = xor i64 %33, -1
  %41 = add i64 %39, %40
  %42 = load i64, ptr %29, align 8, !tbaa !25
  %43 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %24, i64 noundef 0, i64 noundef %41, i64 noundef %42, i64 noundef 1, ptr noundef %1) #11
  %44 = icmp eq ptr %38, null
  %45 = icmp eq ptr %43, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %72, label %47

47:                                               ; preds = %36
  %48 = load i64, ptr %10, align 8, !tbaa !25
  %49 = shl i64 %48, 3
  %50 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %43, ptr noundef nonnull %38, i64 noundef %49) #9
  %51 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %23) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %24) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i64, ptr %10, align 8, !tbaa !25
  %58 = shl i64 %57, 1
  %59 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %54, ptr noundef nonnull %51, i64 noundef %58) #9
  br label %60

60:                                               ; preds = %53, %56, %47
  %61 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %24, ptr noundef %1) #11
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load ptr, ptr %30, align 8, !tbaa !33
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = add nsw i64 %34, 1
  %68 = load i64, ptr %12, align 8, !tbaa !26
  %69 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i64 noundef %34, i64 noundef %68) #10
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 0, i32 %63
  br label %72

72:                                               ; preds = %60, %66, %36, %31
  %73 = phi i64 [ %34, %31 ], [ %34, %36 ], [ %67, %66 ], [ %34, %60 ]
  %74 = phi i32 [ 0, %31 ], [ 0, %36 ], [ %71, %66 ], [ %63, %60 ]
  %75 = add nuw nsw i64 %33, 1
  %76 = load i64, ptr %25, align 8, !tbaa !26
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %31, label %78, !llvm.loop !37

78:                                               ; preds = %72
  %79 = icmp eq i32 %74, 0
  br label %80

80:                                               ; preds = %78, %16
  %81 = phi i1 [ false, %16 ], [ %79, %78 ]
  %82 = tail call ptr @DestroyCacheView(ptr noundef %24) #9
  %83 = tail call ptr @DestroyCacheView(ptr noundef %23) #9
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %85 = load i32, ptr %84, align 8, !tbaa !35
  %86 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 77
  store i32 %85, ptr %86, align 8, !tbaa !35
  %87 = extractelement <2 x i64> %20, i64 0
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %80
  %90 = load i64, ptr %25, align 8, !tbaa !26
  %91 = add i64 %22, %90
  %92 = sub i64 %87, %91
  br label %93

93:                                               ; preds = %89, %80
  %94 = phi i64 [ %92, %89 ], [ %22, %80 ]
  %95 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26
  store i64 %18, ptr %95, align 8, !tbaa.struct !36
  %96 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 1
  store <2 x i64> %20, ptr %96, align 8
  %97 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 3
  store i64 %94, ptr %97, align 8, !tbaa.struct !29
  br i1 %81, label %98, label %100

98:                                               ; preds = %93
  %99 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #9
  br label %100

100:                                              ; preds = %93, %98, %9
  %101 = phi ptr [ null, %9 ], [ %99, %98 ], [ %14, %93 ]
  ret ptr %101
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @TransposeImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2215, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #9
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %11 = load i64, ptr %10, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !25
  %14 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %11, i64 noundef %13, i32 noundef 1, ptr noundef %1) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %90, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #9
  %18 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %1) #9
  %19 = load i64, ptr %10, align 8, !tbaa !26
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %24

24:                                               ; preds = %21, %67
  %25 = phi i64 [ %19, %21 ], [ %71, %67 ]
  %26 = phi i32 [ 1, %21 ], [ %69, %67 ]
  %27 = phi i64 [ 0, %21 ], [ %70, %67 ]
  %28 = phi i64 [ 0, %21 ], [ %68, %67 ]
  %29 = icmp eq i32 %26, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %24
  %31 = xor i64 %27, -1
  %32 = add i64 %25, %31
  %33 = load i64, ptr %12, align 8, !tbaa !25
  %34 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %17, i64 noundef 0, i64 noundef %32, i64 noundef %33, i64 noundef 1, ptr noundef %1) #11
  %35 = load i64, ptr %10, align 8, !tbaa !26
  %36 = add i64 %35, %31
  %37 = load i64, ptr %22, align 8, !tbaa !26
  %38 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %18, i64 noundef %36, i64 noundef 0, i64 noundef 1, i64 noundef %37, ptr noundef %1) #11
  %39 = icmp eq ptr %34, null
  %40 = icmp eq ptr %38, null
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %67, label %42

42:                                               ; preds = %30
  %43 = load i64, ptr %12, align 8, !tbaa !25
  %44 = shl i64 %43, 3
  %45 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %38, ptr noundef nonnull %34, i64 noundef %44) #9
  %46 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %17) #9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %18) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i64, ptr %12, align 8, !tbaa !25
  %53 = shl i64 %52, 1
  %54 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %49, ptr noundef nonnull %46, i64 noundef %53) #9
  br label %55

55:                                               ; preds = %48, %51, %42
  %56 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %18, ptr noundef %1) #11
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load ptr, ptr %23, align 8, !tbaa !33
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = add nsw i64 %28, 1
  %63 = load i64, ptr %10, align 8, !tbaa !26
  %64 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i64 noundef %28, i64 noundef %63) #10
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 0, i32 %58
  br label %67

67:                                               ; preds = %55, %61, %30, %24
  %68 = phi i64 [ %28, %24 ], [ %28, %30 ], [ %62, %61 ], [ %28, %55 ]
  %69 = phi i32 [ 0, %24 ], [ 0, %30 ], [ %66, %61 ], [ %58, %55 ]
  %70 = add nuw nsw i64 %27, 1
  %71 = load i64, ptr %10, align 8, !tbaa !26
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %24, label %73, !llvm.loop !38

73:                                               ; preds = %67
  %74 = icmp eq i32 %69, 0
  br label %75

75:                                               ; preds = %73, %16
  %76 = phi i1 [ false, %16 ], [ %74, %73 ]
  %77 = tail call ptr @DestroyCacheView(ptr noundef %18) #9
  %78 = tail call ptr @DestroyCacheView(ptr noundef %17) #9
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %80 = load i32, ptr %79, align 8, !tbaa !35
  %81 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 77
  store i32 %80, ptr %81, align 8, !tbaa !35
  %82 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26
  %83 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 2
  %84 = load <2 x i64>, ptr %82, align 8
  %85 = shufflevector <2 x i64> %84, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %85, ptr %82, align 8
  %86 = load <2 x i64>, ptr %83, align 8
  %87 = shufflevector <2 x i64> %86, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %87, ptr %83, align 8
  br i1 %76, label %88, label %90

88:                                               ; preds = %75
  %89 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #9
  br label %90

90:                                               ; preds = %75, %88, %9
  %91 = phi ptr [ null, %9 ], [ %89, %88 ], [ %14, %75 ]
  ret ptr %91
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @TransverseImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2344, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #9
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %11 = load i64, ptr %10, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !25
  %14 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %11, i64 noundef %13, i32 noundef 1, ptr noundef %1) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %128, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #9
  %18 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %1) #9
  %19 = load i64, ptr %10, align 8, !tbaa !26
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %95

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %24

24:                                               ; preds = %21, %87
  %25 = phi i64 [ 0, %21 ], [ %90, %87 ]
  %26 = phi i64 [ 0, %21 ], [ %89, %87 ]
  %27 = phi i32 [ 1, %21 ], [ %88, %87 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %87, label %29

29:                                               ; preds = %24
  %30 = load i64, ptr %12, align 8, !tbaa !25
  %31 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %17, i64 noundef 0, i64 noundef %25, i64 noundef %30, i64 noundef 1, ptr noundef %1) #11
  %32 = load i64, ptr %10, align 8, !tbaa !26
  %33 = xor i64 %25, -1
  %34 = add i64 %32, %33
  %35 = load i64, ptr %22, align 8, !tbaa !26
  %36 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %18, i64 noundef %34, i64 noundef 0, i64 noundef 1, i64 noundef %35, ptr noundef %1) #11
  %37 = icmp eq ptr %31, null
  %38 = icmp eq ptr %36, null
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %87, label %40

40:                                               ; preds = %29
  %41 = load i64, ptr %12, align 8, !tbaa !25
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %41
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %49, %45 ], [ %44, %43 ]
  %47 = phi i64 [ %52, %45 ], [ 0, %43 ]
  %48 = phi ptr [ %50, %45 ], [ %31, %43 ]
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 -1
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 1
  %51 = load i64, ptr %48, align 2
  store i64 %51, ptr %49, align 2
  %52 = add nuw nsw i64 %47, 1
  %53 = load i64, ptr %12, align 8, !tbaa !25
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %45, label %55, !llvm.loop !39

55:                                               ; preds = %45, %40
  %56 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %17) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %75, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %18) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %75, label %61

61:                                               ; preds = %58
  %62 = load i64, ptr %12, align 8, !tbaa !25
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = getelementptr inbounds i16, ptr %59, i64 %62
  %66 = getelementptr i16, ptr %65, i64 -1
  br label %67

67:                                               ; preds = %64, %67
  %68 = phi i64 [ 0, %64 ], [ %73, %67 ]
  %69 = sub nsw i64 0, %68
  %70 = getelementptr inbounds i16, ptr %56, i64 %68
  %71 = load i16, ptr %70, align 2, !tbaa !30
  %72 = getelementptr i16, ptr %66, i64 %69
  store i16 %71, ptr %72, align 2, !tbaa !30
  %73 = add nuw nsw i64 %68, 1
  %74 = icmp eq i64 %73, %62
  br i1 %74, label %75, label %67, !llvm.loop !40

75:                                               ; preds = %67, %61, %58, %55
  %76 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %18, ptr noundef %1) #11
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = load ptr, ptr %23, align 8, !tbaa !33
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = add nsw i64 %26, 1
  %83 = load i64, ptr %10, align 8, !tbaa !26
  %84 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i64 noundef %26, i64 noundef %83) #10
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 0, i32 %78
  br label %87

87:                                               ; preds = %75, %81, %29, %24
  %88 = phi i32 [ 0, %24 ], [ 0, %29 ], [ %86, %81 ], [ %78, %75 ]
  %89 = phi i64 [ %26, %24 ], [ %26, %29 ], [ %82, %81 ], [ %26, %75 ]
  %90 = add nuw nsw i64 %25, 1
  %91 = load i64, ptr %10, align 8, !tbaa !26
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %24, label %93, !llvm.loop !41

93:                                               ; preds = %87
  %94 = icmp eq i32 %88, 0
  br label %95

95:                                               ; preds = %93, %16
  %96 = phi i1 [ false, %16 ], [ %94, %93 ]
  %97 = tail call ptr @DestroyCacheView(ptr noundef %18) #9
  %98 = tail call ptr @DestroyCacheView(ptr noundef %17) #9
  %99 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %100 = load i32, ptr %99, align 8, !tbaa !35
  %101 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 77
  store i32 %100, ptr %101, align 8, !tbaa !35
  %102 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26
  %103 = load i64, ptr %102, align 8, !tbaa.struct !36
  %104 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa.struct !42
  %106 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 2
  %107 = load i64, ptr %106, align 8, !tbaa.struct !27
  %108 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 26, i32 3
  %109 = load i64, ptr %108, align 8, !tbaa.struct !29
  %110 = icmp eq i64 %105, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %95
  %112 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %113 = load i64, ptr %112, align 8, !tbaa !25
  %114 = add i64 %109, %113
  %115 = sub i64 %105, %114
  br label %116

116:                                              ; preds = %111, %95
  %117 = phi i64 [ %115, %111 ], [ %109, %95 ]
  %118 = icmp eq i64 %103, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %121 = load i64, ptr %120, align 8, !tbaa !26
  %122 = add i64 %107, %121
  %123 = sub i64 %103, %122
  br label %124

124:                                              ; preds = %119, %116
  %125 = phi i64 [ %123, %119 ], [ %107, %116 ]
  store i64 %105, ptr %102, align 8, !tbaa.struct !36
  store i64 %103, ptr %104, align 8, !tbaa.struct !42
  store i64 %117, ptr %106, align 8, !tbaa.struct !27
  store i64 %125, ptr %108, align 8, !tbaa.struct !29
  br i1 %96, label %126, label %128

126:                                              ; preds = %124
  %127 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #9
  br label %128

128:                                              ; preds = %124, %126, %9
  %129 = phi ptr [ null, %9 ], [ %127, %126 ], [ %14, %124 ]
  ret ptr %129
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ChopImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 217, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = load i64, ptr %1, align 8
  %14 = add nsw i64 %13, %12
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = add nsw i64 %20, %18
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !25
  %26 = icmp sgt i64 %12, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !26
  %30 = icmp sgt i64 %18, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23, %16, %10
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 225, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %32) #9
  br label %214

34:                                               ; preds = %27
  %35 = icmp sgt i64 %14, %25
  %36 = sub nsw i64 %25, %12
  %37 = select i1 %35, i64 %36, i64 %13
  %38 = icmp sgt i64 %21, %29
  %39 = sub nsw i64 %29, %18
  %40 = select i1 %38, i64 %39, i64 %20
  %41 = tail call i64 @llvm.smax.i64(i64 %12, i64 0)
  %42 = tail call i64 @llvm.smin.i64(i64 %12, i64 0)
  %43 = add i64 %37, %42
  %44 = tail call i64 @llvm.smax.i64(i64 %18, i64 0)
  %45 = tail call i64 @llvm.smin.i64(i64 %18, i64 0)
  %46 = add i64 %40, %45
  %47 = sub i64 %25, %43
  %48 = sub i64 %29, %46
  %49 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %47, i64 noundef %48, i32 noundef 1, ptr noundef %2) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %214, label %51

51:                                               ; preds = %34
  %52 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #9
  %53 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %49, ptr noundef %2) #9
  %54 = icmp sgt i64 %18, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 7
  %57 = add i64 %43, %41
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %70

59:                                               ; preds = %130, %51
  %60 = phi i32 [ 1, %51 ], [ %131, %130 ]
  %61 = phi i64 [ 0, %51 ], [ %132, %130 ]
  %62 = add i64 %46, %44
  %63 = load i64, ptr %28, align 8, !tbaa !26
  %64 = sub i64 %63, %62
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %204

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 7
  %68 = add i64 %43, %41
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %135

70:                                               ; preds = %55, %130
  %71 = phi i64 [ 0, %55 ], [ %133, %130 ]
  %72 = phi i64 [ 0, %55 ], [ %132, %130 ]
  %73 = phi i32 [ 1, %55 ], [ %131, %130 ]
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %130, label %75

75:                                               ; preds = %70
  %76 = load i64, ptr %24, align 8, !tbaa !25
  %77 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %52, i64 noundef 0, i64 noundef %71, i64 noundef %76, i64 noundef 1, ptr noundef %2) #11
  %78 = load i64, ptr %56, align 8, !tbaa !25
  %79 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %53, i64 noundef 0, i64 noundef %71, i64 noundef %78, i64 noundef 1, ptr noundef %2) #11
  %80 = icmp eq ptr %77, null
  %81 = icmp eq ptr %79, null
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %130, label %83

83:                                               ; preds = %75
  %84 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #9
  %85 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %53) #9
  %86 = load i64, ptr %24, align 8, !tbaa !25
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %83
  %89 = icmp ne ptr %84, null
  br label %90

90:                                               ; preds = %88, %111
  %91 = phi i64 [ %86, %88 ], [ %112, %111 ]
  %92 = phi ptr [ %79, %88 ], [ %114, %111 ]
  %93 = phi i64 [ 0, %88 ], [ %116, %111 ]
  %94 = phi ptr [ %85, %88 ], [ %113, %111 ]
  %95 = phi ptr [ %77, %88 ], [ %115, %111 ]
  %96 = icmp sle i64 %12, %93
  %97 = icmp slt i64 %93, %57
  %98 = and i1 %96, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %90
  %100 = load i64, ptr %95, align 2
  store i64 %100, ptr %92, align 2
  %101 = icmp ne ptr %94, null
  %102 = select i1 %89, i1 %101, i1 false
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = getelementptr inbounds i16, ptr %84, i64 %93
  %105 = load i16, ptr %104, align 2, !tbaa !30
  %106 = getelementptr inbounds i16, ptr %94, i64 1
  store i16 %105, ptr %94, align 2, !tbaa !30
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi ptr [ %106, %103 ], [ %94, %99 ]
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 1
  %110 = load i64, ptr %24, align 8, !tbaa !25
  br label %111

111:                                              ; preds = %90, %107
  %112 = phi i64 [ %110, %107 ], [ %91, %90 ]
  %113 = phi ptr [ %108, %107 ], [ %94, %90 ]
  %114 = phi ptr [ %109, %107 ], [ %92, %90 ]
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 1
  %116 = add nuw nsw i64 %93, 1
  %117 = icmp slt i64 %116, %112
  br i1 %117, label %90, label %118, !llvm.loop !43

118:                                              ; preds = %111, %83
  %119 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %53, ptr noundef %2) #11
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = load ptr, ptr %58, align 8, !tbaa !33
  %123 = icmp eq ptr %122, null
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = add nsw i64 %72, 1
  %126 = load i64, ptr %28, align 8, !tbaa !26
  %127 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %72, i64 noundef %126) #10
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, i32 0, i32 %121
  br label %130

130:                                              ; preds = %118, %124, %75, %70
  %131 = phi i32 [ 0, %70 ], [ 0, %75 ], [ %129, %124 ], [ %121, %118 ]
  %132 = phi i64 [ %72, %70 ], [ %72, %75 ], [ %125, %124 ], [ %72, %118 ]
  %133 = add nuw nsw i64 %71, 1
  %134 = icmp eq i64 %133, %18
  br i1 %134, label %59, label %70, !llvm.loop !44

135:                                              ; preds = %66, %197
  %136 = phi i64 [ 0, %66 ], [ %200, %197 ]
  %137 = phi i64 [ %61, %66 ], [ %199, %197 ]
  %138 = phi i32 [ %60, %66 ], [ %198, %197 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %197, label %140

140:                                              ; preds = %135
  %141 = add i64 %136, %62
  %142 = load i64, ptr %24, align 8, !tbaa !25
  %143 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %52, i64 noundef 0, i64 noundef %141, i64 noundef %142, i64 noundef 1, ptr noundef %2) #11
  %144 = add nuw nsw i64 %136, %44
  %145 = load i64, ptr %67, align 8, !tbaa !25
  %146 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %53, i64 noundef 0, i64 noundef %144, i64 noundef %145, i64 noundef 1, ptr noundef %2) #11
  %147 = icmp eq ptr %143, null
  %148 = icmp eq ptr %146, null
  %149 = select i1 %147, i1 true, i1 %148
  br i1 %149, label %197, label %150

150:                                              ; preds = %140
  %151 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %52) #9
  %152 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %53) #9
  %153 = load i64, ptr %24, align 8, !tbaa !25
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %185

155:                                              ; preds = %150
  %156 = icmp ne ptr %151, null
  br label %157

157:                                              ; preds = %155, %178
  %158 = phi i64 [ %153, %155 ], [ %179, %178 ]
  %159 = phi ptr [ %146, %155 ], [ %181, %178 ]
  %160 = phi i64 [ 0, %155 ], [ %183, %178 ]
  %161 = phi ptr [ %152, %155 ], [ %180, %178 ]
  %162 = phi ptr [ %143, %155 ], [ %182, %178 ]
  %163 = icmp sle i64 %12, %160
  %164 = icmp slt i64 %160, %68
  %165 = and i1 %163, %164
  br i1 %165, label %178, label %166

166:                                              ; preds = %157
  %167 = load i64, ptr %162, align 2
  store i64 %167, ptr %159, align 2
  %168 = icmp ne ptr %161, null
  %169 = select i1 %156, i1 %168, i1 false
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = getelementptr inbounds i16, ptr %151, i64 %160
  %172 = load i16, ptr %171, align 2, !tbaa !30
  %173 = getelementptr inbounds i16, ptr %161, i64 1
  store i16 %172, ptr %161, align 2, !tbaa !30
  br label %174

174:                                              ; preds = %170, %166
  %175 = phi ptr [ %173, %170 ], [ %161, %166 ]
  %176 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 1
  %177 = load i64, ptr %24, align 8, !tbaa !25
  br label %178

178:                                              ; preds = %157, %174
  %179 = phi i64 [ %177, %174 ], [ %158, %157 ]
  %180 = phi ptr [ %175, %174 ], [ %161, %157 ]
  %181 = phi ptr [ %176, %174 ], [ %159, %157 ]
  %182 = getelementptr inbounds %struct._PixelPacket, ptr %162, i64 1
  %183 = add nuw nsw i64 %160, 1
  %184 = icmp slt i64 %183, %179
  br i1 %184, label %157, label %185, !llvm.loop !45

185:                                              ; preds = %178, %150
  %186 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %53, ptr noundef %2) #11
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = load ptr, ptr %69, align 8, !tbaa !33
  %190 = icmp eq ptr %189, null
  br i1 %190, label %197, label %191

191:                                              ; preds = %185
  %192 = add nsw i64 %137, 1
  %193 = load i64, ptr %28, align 8, !tbaa !26
  %194 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %137, i64 noundef %193) #10
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %195, i32 0, i32 %188
  br label %197

197:                                              ; preds = %185, %191, %140, %135
  %198 = phi i32 [ 0, %135 ], [ 0, %140 ], [ %196, %191 ], [ %188, %185 ]
  %199 = phi i64 [ %137, %135 ], [ %137, %140 ], [ %192, %191 ], [ %137, %185 ]
  %200 = add nuw nsw i64 %136, 1
  %201 = load i64, ptr %28, align 8, !tbaa !26
  %202 = sub i64 %201, %62
  %203 = icmp slt i64 %200, %202
  br i1 %203, label %135, label %204, !llvm.loop !46

204:                                              ; preds = %197, %59
  %205 = phi i32 [ %60, %59 ], [ %198, %197 ]
  %206 = tail call ptr @DestroyCacheView(ptr noundef %53) #9
  %207 = tail call ptr @DestroyCacheView(ptr noundef %52) #9
  %208 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %209 = load i32, ptr %208, align 8, !tbaa !35
  %210 = getelementptr inbounds %struct._Image, ptr %49, i64 0, i32 77
  store i32 %209, ptr %210, align 8, !tbaa !35
  %211 = icmp eq i32 %205, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %204
  %213 = tail call ptr @DestroyImage(ptr noundef nonnull %49) #9
  br label %214

214:                                              ; preds = %204, %212, %34, %31
  %215 = phi ptr [ null, %31 ], [ null, %34 ], [ %213, %212 ], [ %49, %204 ]
  ret ptr %215
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

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef %1, ptr noundef nonnull %10) #9
  %12 = load ptr, ptr %6, align 8, !tbaa !33
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #9
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #12
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ConsolidateCMYKImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 432, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call ptr @NewImageList() #9
  store ptr %11, ptr %3, align 8, !tbaa !48
  %12 = tail call i64 @GetImageListLength(ptr noundef nonnull %0) #9
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %18, label %217

14:                                               ; preds = %212
  %15 = add nuw nsw i64 %20, 4
  %16 = call i64 @GetImageListLength(ptr noundef nonnull %215) #9
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %217, !llvm.loop !49

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %215, %14 ], [ %0, %10 ]
  %20 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !26
  %25 = call ptr @CloneImage(ptr noundef nonnull %19, i64 noundef %22, i64 noundef %24, i32 noundef 1, ptr noundef %1) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %217, label %27

27:                                               ; preds = %18
  %28 = call i32 @SetImageStorageClass(ptr noundef nonnull %25, i32 noundef 1) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %217, label %30

30:                                               ; preds = %27
  %31 = call i32 @SetImageColorspace(ptr noundef nonnull %25, i32 noundef 12) #9
  %32 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %19, ptr noundef %1) #9
  %33 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #9
  %34 = load i64, ptr %23, align 8, !tbaa !26
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %42

38:                                               ; preds = %67
  %39 = add nuw nsw i64 %43, 1
  %40 = load i64, ptr %23, align 8, !tbaa !26
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %70, !llvm.loop !50

42:                                               ; preds = %36, %38
  %43 = phi i64 [ 0, %36 ], [ %39, %38 ]
  %44 = load i64, ptr %21, align 8, !tbaa !25
  %45 = call ptr @GetCacheViewVirtualPixels(ptr noundef %32, i64 noundef 0, i64 noundef %43, i64 noundef %44, i64 noundef 1, ptr noundef %1) #11
  %46 = load i64, ptr %37, align 8, !tbaa !25
  %47 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %43, i64 noundef %46, i64 noundef 1, ptr noundef %1) #11
  %48 = icmp eq ptr %45, null
  %49 = icmp eq ptr %47, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %70, label %51

51:                                               ; preds = %42
  %52 = load i64, ptr %21, align 8, !tbaa !25
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %63, %54 ], [ %47, %51 ]
  %56 = phi i64 [ %64, %54 ], [ 0, %51 ]
  %57 = phi ptr [ %62, %54 ], [ %45, %51 ]
  %58 = call float @GetPixelIntensity(ptr noundef nonnull %19, ptr noundef nonnull %57) #11
  %59 = fsub float 6.553500e+04, %58
  %60 = call fastcc zeroext i16 @ClampToQuantum(float noundef %59) #10
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 2
  store i16 %60, ptr %61, align 2, !tbaa !51
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 1
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 1
  %64 = add nuw nsw i64 %56, 1
  %65 = load i64, ptr %21, align 8, !tbaa !25
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %54, label %67, !llvm.loop !52

67:                                               ; preds = %54, %51
  %68 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %33, ptr noundef %1) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %38

70:                                               ; preds = %38, %42, %67, %30
  %71 = call ptr @DestroyCacheView(ptr noundef %33) #9
  %72 = call ptr @DestroyCacheView(ptr noundef %32) #9
  %73 = call ptr @GetNextImageInList(ptr noundef nonnull %19) #9
  %74 = icmp eq ptr %73, null
  br i1 %74, label %217, label %75

75:                                               ; preds = %70
  %76 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %73, ptr noundef %1) #9
  %77 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #9
  %78 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 8
  %79 = load i64, ptr %78, align 8, !tbaa !26
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 7
  %83 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %88

84:                                               ; preds = %113
  %85 = add nuw nsw i64 %89, 1
  %86 = load i64, ptr %78, align 8, !tbaa !26
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %116, !llvm.loop !53

88:                                               ; preds = %81, %84
  %89 = phi i64 [ 0, %81 ], [ %85, %84 ]
  %90 = load i64, ptr %82, align 8, !tbaa !25
  %91 = call ptr @GetCacheViewVirtualPixels(ptr noundef %76, i64 noundef 0, i64 noundef %89, i64 noundef %90, i64 noundef 1, ptr noundef %1) #11
  %92 = load i64, ptr %83, align 8, !tbaa !25
  %93 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %77, i64 noundef 0, i64 noundef %89, i64 noundef %92, i64 noundef 1, ptr noundef %1) #11
  %94 = icmp eq ptr %91, null
  %95 = icmp eq ptr %93, null
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %116, label %97

97:                                               ; preds = %88
  %98 = load i64, ptr %82, align 8, !tbaa !25
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97, %100
  %101 = phi ptr [ %109, %100 ], [ %93, %97 ]
  %102 = phi i64 [ %110, %100 ], [ 0, %97 ]
  %103 = phi ptr [ %108, %100 ], [ %91, %97 ]
  %104 = call float @GetPixelIntensity(ptr noundef nonnull %73, ptr noundef nonnull %103) #11
  %105 = fsub float 6.553500e+04, %104
  %106 = call fastcc zeroext i16 @ClampToQuantum(float noundef %105) #10
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 0, i32 1
  store i16 %106, ptr %107, align 2, !tbaa !54
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 1
  %110 = add nuw nsw i64 %102, 1
  %111 = load i64, ptr %82, align 8, !tbaa !25
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %100, label %113, !llvm.loop !55

113:                                              ; preds = %100, %97
  %114 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %77, ptr noundef %1) #11
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %84

116:                                              ; preds = %84, %88, %113, %75
  %117 = call ptr @DestroyCacheView(ptr noundef %77) #9
  %118 = call ptr @DestroyCacheView(ptr noundef %76) #9
  %119 = call ptr @GetNextImageInList(ptr noundef nonnull %73) #9
  %120 = icmp eq ptr %119, null
  br i1 %120, label %217, label %121

121:                                              ; preds = %116
  %122 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %119, ptr noundef %1) #9
  %123 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #9
  %124 = getelementptr inbounds %struct._Image, ptr %119, i64 0, i32 8
  %125 = load i64, ptr %124, align 8, !tbaa !26
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct._Image, ptr %119, i64 0, i32 7
  %129 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %134

130:                                              ; preds = %158
  %131 = add nuw nsw i64 %135, 1
  %132 = load i64, ptr %124, align 8, !tbaa !26
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %161, !llvm.loop !56

134:                                              ; preds = %127, %130
  %135 = phi i64 [ 0, %127 ], [ %131, %130 ]
  %136 = load i64, ptr %128, align 8, !tbaa !25
  %137 = call ptr @GetCacheViewVirtualPixels(ptr noundef %122, i64 noundef 0, i64 noundef %135, i64 noundef %136, i64 noundef 1, ptr noundef %1) #11
  %138 = load i64, ptr %129, align 8, !tbaa !25
  %139 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %123, i64 noundef 0, i64 noundef %135, i64 noundef %138, i64 noundef 1, ptr noundef %1) #11
  %140 = icmp eq ptr %137, null
  %141 = icmp eq ptr %139, null
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %161, label %143

143:                                              ; preds = %134
  %144 = load i64, ptr %128, align 8, !tbaa !25
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %143, %146
  %147 = phi ptr [ %154, %146 ], [ %139, %143 ]
  %148 = phi i64 [ %155, %146 ], [ 0, %143 ]
  %149 = phi ptr [ %153, %146 ], [ %137, %143 ]
  %150 = call float @GetPixelIntensity(ptr noundef nonnull %119, ptr noundef nonnull %149) #11
  %151 = fsub float 6.553500e+04, %150
  %152 = call fastcc zeroext i16 @ClampToQuantum(float noundef %151) #10
  store i16 %152, ptr %147, align 2, !tbaa !57
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %149, i64 1
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %147, i64 1
  %155 = add nuw nsw i64 %148, 1
  %156 = load i64, ptr %128, align 8, !tbaa !25
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %146, label %158, !llvm.loop !58

158:                                              ; preds = %146, %143
  %159 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %123, ptr noundef %1) #11
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %130

161:                                              ; preds = %130, %134, %158, %121
  %162 = call ptr @DestroyCacheView(ptr noundef %123) #9
  %163 = call ptr @DestroyCacheView(ptr noundef %122) #9
  %164 = call ptr @GetNextImageInList(ptr noundef nonnull %119) #9
  %165 = icmp eq ptr %164, null
  br i1 %165, label %217, label %166

166:                                              ; preds = %161
  %167 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %164, ptr noundef %1) #9
  %168 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #9
  %169 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 8
  %170 = load i64, ptr %169, align 8, !tbaa !26
  %171 = icmp sgt i64 %170, 0
  br i1 %171, label %172, label %212

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct._Image, ptr %164, i64 0, i32 7
  %174 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %179

175:                                              ; preds = %209
  %176 = add nuw nsw i64 %180, 1
  %177 = load i64, ptr %169, align 8, !tbaa !26
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %212, !llvm.loop !59

179:                                              ; preds = %172, %175
  %180 = phi i64 [ 0, %172 ], [ %176, %175 ]
  %181 = load i64, ptr %173, align 8, !tbaa !25
  %182 = call ptr @GetCacheViewVirtualPixels(ptr noundef %167, i64 noundef 0, i64 noundef %180, i64 noundef %181, i64 noundef 1, ptr noundef %1) #11
  %183 = load i64, ptr %174, align 8, !tbaa !25
  %184 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %168, i64 noundef 0, i64 noundef %180, i64 noundef %183, i64 noundef 1, ptr noundef %1) #11
  %185 = icmp eq ptr %182, null
  %186 = icmp eq ptr %184, null
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %212, label %188

188:                                              ; preds = %179
  %189 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %168) #9
  %190 = load i64, ptr %173, align 8, !tbaa !25
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
  %200 = call float @GetPixelIntensity(ptr noundef nonnull %164, ptr noundef nonnull %197) #11
  %201 = fsub float 6.553500e+04, %200
  %202 = call fastcc zeroext i16 @ClampToQuantum(float noundef %201) #10
  store i16 %202, ptr %199, align 2, !tbaa !30
  %203 = load i64, ptr %173, align 8, !tbaa !25
  br label %204

204:                                              ; preds = %198, %194
  %205 = phi i64 [ %203, %198 ], [ %195, %194 ]
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %197, i64 1
  %207 = add nuw nsw i64 %196, 1
  %208 = icmp slt i64 %207, %205
  br i1 %208, label %194, label %209, !llvm.loop !60

209:                                              ; preds = %204, %188
  %210 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %168, ptr noundef %1) #11
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %175

212:                                              ; preds = %175, %179, %209, %166
  %213 = call ptr @DestroyCacheView(ptr noundef %168) #9
  %214 = call ptr @DestroyCacheView(ptr noundef %167) #9
  call void @AppendImageToList(ptr noundef nonnull %3, ptr noundef nonnull %25) #9
  %215 = call ptr @GetNextImageInList(ptr noundef nonnull %164) #9
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %14

217:                                              ; preds = %14, %18, %27, %70, %116, %161, %212, %10
  %218 = load ptr, ptr %3, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
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
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #5 {
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
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CropImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %12 = load i64, ptr %11, align 8, !tbaa.struct !36
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa.struct !42
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa.struct !27
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa.struct !29
  %19 = icmp eq i64 %12, 0
  %20 = icmp eq i64 %14, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %24 = load i64, ptr %23, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !26
  br label %27

27:                                               ; preds = %10, %22
  %28 = phi i64 [ %26, %22 ], [ %14, %10 ]
  %29 = phi i64 [ %24, %22 ], [ %12, %10 ]
  %30 = load i64, ptr %1, align 8
  %31 = getelementptr inbounds i8, ptr %1, i64 8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds i8, ptr %1, i64 16
  %34 = load i64, ptr %33, align 8, !tbaa.struct !27
  %35 = getelementptr inbounds i8, ptr %1, i64 24
  %36 = load i64, ptr %35, align 8, !tbaa.struct !29
  %37 = icmp eq i64 %30, 0
  %38 = select i1 %37, i64 %29, i64 %30
  %39 = icmp eq i64 %32, 0
  %40 = select i1 %39, i64 %28, i64 %32
  %41 = sub nsw i64 %16, %34
  %42 = icmp slt i64 %41, %38
  br i1 %42, label %43, label %56

43:                                               ; preds = %27
  %44 = sub nsw i64 %18, %36
  %45 = icmp slt i64 %44, %40
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = sub nsw i64 %34, %16
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !25
  %50 = icmp sgt i64 %47, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = sub nsw i64 %36, %18
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !26
  %55 = icmp sgt i64 %52, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %51, %46, %43, %27
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %58 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 666, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %57) #9
  %59 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 1, i32 noundef 1, ptr noundef %2) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %193, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 12, i32 3
  store i16 -1, ptr %62, align 2, !tbaa !61
  %63 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %59) #9
  %64 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 26
  store i64 %29, ptr %64, align 8, !tbaa.struct !36
  %65 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 26, i32 1
  store i64 %28, ptr %65, align 8, !tbaa.struct !42
  %66 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 26, i32 2
  %67 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, i8 -1, i64 16, i1 false)
  %68 = load i32, ptr %67, align 4, !tbaa !62
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %193

70:                                               ; preds = %61
  store i32 1, ptr %67, align 4, !tbaa !62
  br label %193

71:                                               ; preds = %51
  %72 = icmp slt i64 %34, 0
  %73 = icmp sgt i64 %16, -1
  %74 = select i1 %72, i1 %73, i1 false
  %75 = tail call i64 @llvm.smax.i64(i64 %47, i64 0)
  %76 = select i1 %74, i64 0, i64 %75
  %77 = sub i64 0, %41
  %78 = select i1 %74, i64 %47, i64 %77
  %79 = add i64 %78, %38
  %80 = icmp slt i64 %36, 0
  %81 = icmp sgt i64 %18, -1
  %82 = select i1 %80, i1 %81, i1 false
  %83 = tail call i64 @llvm.smax.i64(i64 %52, i64 0)
  %84 = select i1 %82, i64 0, i64 %83
  %85 = sub i64 0, %44
  %86 = select i1 %82, i64 %52, i64 %85
  %87 = add i64 %86, %40
  %88 = add nsw i64 %79, %76
  %89 = icmp sgt i64 %88, %49
  %90 = sub i64 %49, %76
  %91 = select i1 %89, i64 %90, i64 %79
  %92 = tail call i64 @llvm.umin.i64(i64 %91, i64 %30)
  %93 = select i1 %37, i64 %91, i64 %92
  %94 = add nsw i64 %87, %84
  %95 = icmp sgt i64 %94, %54
  %96 = sub i64 %54, %84
  %97 = select i1 %95, i64 %96, i64 %87
  %98 = tail call i64 @llvm.umin.i64(i64 %97, i64 %32)
  %99 = select i1 %39, i64 %97, i64 %98
  %100 = add nsw i64 %76, %16
  %101 = add nsw i64 %84, %18
  %102 = icmp eq i64 %93, 0
  %103 = icmp eq i64 %99, 0
  %104 = select i1 %102, i1 true, i1 %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %71
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %107 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 716, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %106) #9
  br label %193

108:                                              ; preds = %71
  %109 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %93, i64 noundef %99, i32 noundef 1, ptr noundef %2) #9
  %110 = icmp eq ptr %109, null
  br i1 %110, label %193, label %111

111:                                              ; preds = %108
  %112 = load i64, ptr %11, align 8, !tbaa !63
  %113 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 26
  store i64 %112, ptr %113, align 8, !tbaa !63
  %114 = load i64, ptr %13, align 8, !tbaa !64
  %115 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 26, i32 1
  store i64 %114, ptr %115, align 8, !tbaa !64
  %116 = add i64 %100, %29
  %117 = icmp sgt i64 %116, %112
  %118 = add i64 %101, %28
  %119 = icmp sgt i64 %118, %114
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  store i64 %29, ptr %113, align 8, !tbaa !63
  store i64 %28, ptr %115, align 8, !tbaa !64
  br label %122

122:                                              ; preds = %111, %121
  %123 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 26, i32 2
  store i64 %100, ptr %123, align 8, !tbaa !65
  %124 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 26, i32 3
  store i64 %101, ptr %124, align 8, !tbaa !66
  %125 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #9
  %126 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %109, ptr noundef %2) #9
  %127 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 8
  %128 = load i64, ptr %127, align 8, !tbaa !26
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %187

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 7
  %132 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %133

133:                                              ; preds = %130, %172
  %134 = phi i32 [ 1, %130 ], [ %174, %172 ]
  %135 = phi i64 [ 0, %130 ], [ %175, %172 ]
  %136 = phi i64 [ 0, %130 ], [ %173, %172 ]
  %137 = icmp eq i32 %134, 0
  br i1 %137, label %172, label %138

138:                                              ; preds = %133
  %139 = add nuw nsw i64 %135, %84
  %140 = load i64, ptr %131, align 8, !tbaa !25
  %141 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %125, i64 noundef %76, i64 noundef %139, i64 noundef %140, i64 noundef 1, ptr noundef %2) #11
  %142 = load i64, ptr %131, align 8, !tbaa !25
  %143 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %126, i64 noundef 0, i64 noundef %135, i64 noundef %142, i64 noundef 1, ptr noundef %2) #11
  %144 = icmp eq ptr %141, null
  %145 = icmp eq ptr %143, null
  %146 = select i1 %144, i1 true, i1 %145
  br i1 %146, label %172, label %147

147:                                              ; preds = %138
  %148 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %125) #9
  %149 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %126) #9
  %150 = load i64, ptr %131, align 8, !tbaa !25
  %151 = shl i64 %150, 3
  %152 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %143, ptr noundef nonnull %141, i64 noundef %151) #9
  %153 = icmp ne ptr %148, null
  %154 = icmp ne ptr %149, null
  %155 = select i1 %153, i1 %154, i1 false
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load i64, ptr %131, align 8, !tbaa !25
  %158 = shl i64 %157, 1
  %159 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %149, ptr noundef nonnull %148, i64 noundef %158) #9
  br label %160

160:                                              ; preds = %156, %147
  %161 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %126, ptr noundef %2) #11
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = load ptr, ptr %132, align 8, !tbaa !33
  %165 = icmp eq ptr %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = add nsw i64 %136, 1
  %168 = load i64, ptr %53, align 8, !tbaa !26
  %169 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef %136, i64 noundef %168) #10
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 0, i32 %163
  br label %172

172:                                              ; preds = %160, %166, %138, %133
  %173 = phi i64 [ %136, %133 ], [ %136, %138 ], [ %167, %166 ], [ %136, %160 ]
  %174 = phi i32 [ 0, %133 ], [ 0, %138 ], [ %171, %166 ], [ %163, %160 ]
  %175 = add nuw nsw i64 %135, 1
  %176 = load i64, ptr %127, align 8, !tbaa !26
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %133, label %178, !llvm.loop !67

178:                                              ; preds = %172
  %179 = icmp eq i32 %174, 0
  %180 = tail call ptr @DestroyCacheView(ptr noundef %126) #9
  %181 = tail call ptr @DestroyCacheView(ptr noundef %125) #9
  %182 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %183 = load i32, ptr %182, align 8, !tbaa !35
  %184 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 77
  store i32 %183, ptr %184, align 8, !tbaa !35
  br i1 %179, label %185, label %193

185:                                              ; preds = %178
  %186 = tail call ptr @DestroyImage(ptr noundef nonnull %109) #9
  br label %193

187:                                              ; preds = %122
  %188 = tail call ptr @DestroyCacheView(ptr noundef %126) #9
  %189 = tail call ptr @DestroyCacheView(ptr noundef %125) #9
  %190 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %191 = load i32, ptr %190, align 8, !tbaa !35
  %192 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 77
  store i32 %191, ptr %192, align 8, !tbaa !35
  br label %193

193:                                              ; preds = %187, %178, %185, %108, %61, %70, %56, %105
  %194 = phi ptr [ null, %105 ], [ null, %56 ], [ %59, %70 ], [ %59, %61 ], [ null, %108 ], [ %186, %185 ], [ %109, %178 ], [ %109, %187 ]
  ret ptr %194
}

; Function Attrs: optsize
declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CropImageToTiles(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._RectangleInfo, align 16
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 856, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #9
  br label %13

13:                                               ; preds = %10, %3
  %14 = tail call ptr @NewImageList() #9
  store ptr %14, ptr %4, align 8, !tbaa !48
  %15 = tail call ptr @NewImageList() #9
  %16 = call i32 @ParseGravityGeometry(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2) #9
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %144, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #12
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load <2 x i64>, ptr %20, align 8, !tbaa !28
  %22 = load i64, ptr %5, align 16, !tbaa !68
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i64 1, ptr %5, align 16, !tbaa !68
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i64 [ 1, %24 ], [ %22, %19 ]
  %27 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !69
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i64 1, ptr %27, align 8, !tbaa !69
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i64 [ 1, %30 ], [ %28, %25 ]
  %33 = and i32 %16, 8192
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %36 = insertelement <2 x i64> poison, i64 %26, i64 0
  %37 = insertelement <2 x i64> %36, i64 %32, i64 1
  %38 = uitofp <2 x i64> %37 to <2 x double>
  %39 = load <2 x i64>, ptr %35, align 16, !tbaa !28
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
  %79 = call fastcc double @MagickRound(double noundef %78) #10
  %80 = call i64 @llvm.smax.i64(i64 %71, i64 0)
  br label %89

81:                                               ; preds = %70
  %82 = call i64 @llvm.smax.i64(i64 %71, i64 0)
  %83 = sitofp i64 %82 to double
  %84 = fsub double %68, %83
  %85 = fptrunc double %84 to float
  %86 = fpext float %85 to double
  %87 = call fastcc double @MagickRound(double noundef %86) #10
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
  %97 = call fastcc double @MagickRound(double noundef %96) #10
  %98 = fptoui double %97 to i64
  %99 = sub i64 %98, %92
  store i64 %99, ptr %57, align 8, !tbaa !69
  %100 = load i64, ptr %58, align 8, !tbaa !66
  %101 = add nsw i64 %100, %92
  store i64 %101, ptr %56, align 8, !tbaa !70
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
  %112 = call fastcc double @MagickRound(double noundef %111) #10
  %113 = call i64 @llvm.smax.i64(i64 %104, i64 0)
  br label %122

114:                                              ; preds = %102
  %115 = call i64 @llvm.smax.i64(i64 %104, i64 0)
  %116 = sitofp i64 %115 to double
  %117 = fsub double %103, %116
  %118 = fptrunc double %117 to float
  %119 = fpext float %118 to double
  %120 = call fastcc double @MagickRound(double noundef %119) #10
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
  %130 = call fastcc double @MagickRound(double noundef %129) #10
  %131 = fptoui double %130 to i64
  %132 = sub i64 %131, %125
  store i64 %132, ptr %6, align 8, !tbaa !68
  %133 = load i64, ptr %63, align 8, !tbaa !65
  %134 = add nsw i64 %133, %125
  store i64 %134, ptr %62, align 8, !tbaa !71
  %135 = call ptr @CropImage(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %2) #10
  %136 = icmp eq ptr %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %122
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %135) #9
  %138 = fcmp olt double %105, %65
  br i1 %138, label %102, label %139, !llvm.loop !72

139:                                              ; preds = %137, %89
  %140 = phi ptr [ %67, %89 ], [ %135, %137 ]
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %66, !llvm.loop !73

142:                                              ; preds = %139, %66, %122
  call void @ClearMagickException(ptr noundef %2) #9
  %143 = load ptr, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #12
  br label %217

144:                                              ; preds = %13
  %145 = load i64, ptr %5, align 16, !tbaa !68
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
  %155 = call ptr @CropImage(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %2) #10
  %156 = icmp eq ptr %155, null
  %157 = and i32 %16, 8192
  %158 = icmp eq i32 %157, 0
  %159 = or i1 %158, %156
  br i1 %159, label %217, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct._Image, ptr %155, i64 0, i32 26
  %162 = load <2 x i64>, ptr %5, align 16, !tbaa !28
  store <2 x i64> %162, ptr %161, align 8, !tbaa !28
  %163 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %164 = getelementptr inbounds %struct._Image, ptr %155, i64 0, i32 26, i32 2
  %165 = load <2 x i64>, ptr %163, align 16, !tbaa !28
  %166 = load <2 x i64>, ptr %164, align 8, !tbaa !28
  %167 = sub nsw <2 x i64> %166, %165
  store <2 x i64> %167, ptr %164, align 8, !tbaa !28
  br label %217

168:                                              ; preds = %144
  %169 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %170 = load i64, ptr %169, align 8, !tbaa !25
  %171 = icmp ugt i64 %170, %145
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %174 = load i64, ptr %173, align 8, !tbaa !26
  %175 = icmp ugt i64 %174, %148
  br i1 %175, label %176, label %215

176:                                              ; preds = %172, %168
  %177 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %178 = load i64, ptr %177, align 8, !tbaa.struct !36
  %179 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %180 = load i64, ptr %179, align 8, !tbaa.struct !42
  %181 = icmp eq i64 %178, 0
  %182 = select i1 %181, i64 %170, i64 %178
  %183 = icmp eq i64 %180, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %186 = load i64, ptr %185, align 8, !tbaa !26
  br label %187

187:                                              ; preds = %184, %176
  %188 = phi i64 [ %186, %184 ], [ %180, %176 ]
  %189 = select i1 %146, i64 %145, i64 %182
  %190 = select i1 %149, i64 %148, i64 %188
  %191 = call ptr @NewImageList() #9
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
  br i1 %200, label %201, label %213, !llvm.loop !74

201:                                              ; preds = %193, %197
  %202 = phi i64 [ 0, %193 ], [ %199, %197 ]
  %203 = phi ptr [ %191, %193 ], [ %198, %197 ]
  br i1 %194, label %204, label %211

204:                                              ; preds = %201, %208
  %205 = phi i64 [ %209, %208 ], [ 0, %201 ]
  store i64 %189, ptr %5, align 16, !tbaa !68
  store i64 %190, ptr %147, align 8, !tbaa !69
  store i64 %205, ptr %195, align 16, !tbaa !71
  store i64 %202, ptr %196, align 8, !tbaa !70
  %206 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2) #10
  %207 = icmp eq ptr %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %204
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %206) #9
  %209 = add nsw i64 %205, %189
  %210 = icmp slt i64 %209, %182
  br i1 %210, label %204, label %197, !llvm.loop !75

211:                                              ; preds = %201
  %212 = icmp eq ptr %203, null
  br i1 %212, label %213, label %197

213:                                              ; preds = %197, %211, %204, %187
  %214 = load ptr, ptr %4, align 8, !tbaa !48
  br label %217

215:                                              ; preds = %172
  %216 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #9
  br label %217

217:                                              ; preds = %154, %160, %215, %213, %142
  %218 = phi ptr [ %143, %142 ], [ %214, %213 ], [ %216, %215 ], [ %155, %160 ], [ %155, %154 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %218
}

; Function Attrs: optsize
declare i32 @ParseGravityGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickRound(double noundef %0) unnamed_addr #5 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ExcerptImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1069, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i64, ptr %1, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !69
  %14 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %11, i64 noundef %13, i32 noundef 1, ptr noundef %2) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %90, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #9
  %18 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %14, ptr noundef %2) #9
  %19 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !26
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %84

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %24 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %25 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 7
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  br label %28

28:                                               ; preds = %22, %69
  %29 = phi i32 [ 1, %22 ], [ %71, %69 ]
  %30 = phi i64 [ 0, %22 ], [ %72, %69 ]
  %31 = phi i64 [ 0, %22 ], [ %70, %69 ]
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %28
  %34 = load i64, ptr %23, align 8, !tbaa !71
  %35 = load i64, ptr %24, align 8, !tbaa !70
  %36 = add nsw i64 %35, %30
  %37 = load i64, ptr %1, align 8, !tbaa !68
  %38 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %17, i64 noundef %34, i64 noundef %36, i64 noundef %37, i64 noundef 1, ptr noundef %2) #11
  %39 = load i64, ptr %25, align 8, !tbaa !25
  %40 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %18, i64 noundef 0, i64 noundef %30, i64 noundef %39, i64 noundef 1, ptr noundef %2) #11
  %41 = icmp eq ptr %38, null
  %42 = icmp eq ptr %40, null
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %69, label %44

44:                                               ; preds = %33
  %45 = load i64, ptr %25, align 8, !tbaa !25
  %46 = shl i64 %45, 3
  %47 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %40, ptr noundef nonnull %38, i64 noundef %46) #9
  %48 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %17) #9
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %18) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i64, ptr %25, align 8, !tbaa !25
  %55 = shl i64 %54, 1
  %56 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %51, ptr noundef nonnull %48, i64 noundef %55) #9
  br label %57

57:                                               ; preds = %50, %53, %44
  %58 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %18, ptr noundef %2) #11
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load ptr, ptr %26, align 8, !tbaa !33
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = add nsw i64 %31, 1
  %65 = load i64, ptr %27, align 8, !tbaa !26
  %66 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %31, i64 noundef %65) #10
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 %60
  br label %69

69:                                               ; preds = %57, %63, %33, %28
  %70 = phi i64 [ %31, %28 ], [ %31, %33 ], [ %64, %63 ], [ %31, %57 ]
  %71 = phi i32 [ 0, %28 ], [ 0, %33 ], [ %68, %63 ], [ %60, %57 ]
  %72 = add nuw nsw i64 %30, 1
  %73 = load i64, ptr %19, align 8, !tbaa !26
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %28, label %75, !llvm.loop !76

75:                                               ; preds = %69
  %76 = icmp eq i32 %71, 0
  %77 = tail call ptr @DestroyCacheView(ptr noundef %18) #9
  %78 = tail call ptr @DestroyCacheView(ptr noundef %17) #9
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %80 = load i32, ptr %79, align 8, !tbaa !35
  %81 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 77
  store i32 %80, ptr %81, align 8, !tbaa !35
  br i1 %76, label %82, label %90

82:                                               ; preds = %75
  %83 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #9
  br label %90

84:                                               ; preds = %16
  %85 = tail call ptr @DestroyCacheView(ptr noundef %18) #9
  %86 = tail call ptr @DestroyCacheView(ptr noundef %17) #9
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %88 = load i32, ptr %87, align 8, !tbaa !35
  %89 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 77
  store i32 %88, ptr %89, align 8, !tbaa !35
  br label %90

90:                                               ; preds = %84, %75, %82, %10
  %91 = phi ptr [ null, %10 ], [ %83, %82 ], [ %14, %75 ], [ %14, %84 ]
  ret ptr %91
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ExtentImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1185, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i64, ptr %1, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !69
  %14 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %11, i64 noundef %13, i32 noundef 1, ptr noundef %2) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %14, i32 noundef 1) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %20) #9
  %21 = tail call ptr @DestroyImage(ptr noundef nonnull %14) #9
  br label %39

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 12, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !61
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 6
  store i32 1, ptr %27, align 8, !tbaa !77
  br label %28

28:                                               ; preds = %26, %22
  %29 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %14) #9
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %31 = load i32, ptr %30, align 8, !tbaa !78
  %32 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !71
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !70
  %37 = sub nsw i64 0, %36
  %38 = tail call i32 @CompositeImage(ptr noundef nonnull %14, i32 noundef %31, ptr noundef nonnull %0, i64 noundef %34, i64 noundef %37) #9
  br label %39

39:                                               ; preds = %10, %28, %19
  %40 = phi ptr [ null, %19 ], [ %14, %28 ], [ null, %10 ]
  ret ptr %40
}

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RollImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1589, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #9
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !26
  %16 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %13, i64 noundef %15, i32 noundef 1, ptr noundef %3) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %76, label %18

18:                                               ; preds = %11
  %19 = icmp slt i64 %1, 0
  %20 = load i64, ptr %12, align 8, !tbaa !25
  br i1 %19, label %21, label %25

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %23, %21 ], [ %1, %18 ]
  %23 = add nsw i64 %20, %22
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %21, label %25, !llvm.loop !79

25:                                               ; preds = %21, %18
  %26 = phi i64 [ %1, %18 ], [ %23, %21 ]
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ %30, %27 ], [ %26, %25 ]
  %29 = icmp slt i64 %28, %20
  %30 = sub nsw i64 %28, %20
  br i1 %29, label %31, label %27, !llvm.loop !80

31:                                               ; preds = %27
  %32 = icmp slt i64 %2, 0
  %33 = load i64, ptr %14, align 8, !tbaa !26
  br i1 %32, label %34, label %38

34:                                               ; preds = %31, %34
  %35 = phi i64 [ %36, %34 ], [ %2, %31 ]
  %36 = add nsw i64 %33, %35
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %34, label %38, !llvm.loop !81

38:                                               ; preds = %34, %31
  %39 = phi i64 [ %2, %31 ], [ %36, %34 ]
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ %43, %40 ], [ %39, %38 ]
  %42 = icmp slt i64 %41, %33
  %43 = sub nsw i64 %41, %33
  br i1 %42, label %44, label %40, !llvm.loop !82

44:                                               ; preds = %40
  %45 = sub nsw i64 %20, %28
  %46 = sub nsw i64 %33, %41
  %47 = tail call fastcc i32 @CopyImageRegion(ptr noundef nonnull %16, ptr noundef nonnull %0, i64 noundef %28, i64 noundef %41, i64 noundef %45, i64 noundef %46, i64 noundef 0, i64 noundef 0, ptr noundef %3) #10, !range !83
  %48 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 3) #10
  %49 = load i64, ptr %12, align 8, !tbaa !25
  %50 = sub i64 %49, %28
  %51 = load i64, ptr %14, align 8, !tbaa !26
  %52 = sub nsw i64 %51, %41
  %53 = tail call fastcc i32 @CopyImageRegion(ptr noundef nonnull %16, ptr noundef nonnull %0, i64 noundef %50, i64 noundef %41, i64 noundef 0, i64 noundef %52, i64 noundef %28, i64 noundef 0, ptr noundef %3) #10, !range !83
  %54 = and i32 %53, %47
  %55 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i64 noundef 1, i64 noundef 3) #10
  %56 = load i64, ptr %14, align 8, !tbaa !26
  %57 = sub i64 %56, %41
  %58 = load i64, ptr %12, align 8, !tbaa !25
  %59 = sub nsw i64 %58, %28
  %60 = tail call fastcc i32 @CopyImageRegion(ptr noundef nonnull %16, ptr noundef nonnull %0, i64 noundef %28, i64 noundef %57, i64 noundef %59, i64 noundef 0, i64 noundef 0, i64 noundef %41, ptr noundef %3) #10, !range !83
  %61 = and i32 %54, %60
  %62 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i64 noundef 2, i64 noundef 3) #10
  %63 = load i64, ptr %12, align 8, !tbaa !25
  %64 = sub i64 %63, %28
  %65 = load i64, ptr %14, align 8, !tbaa !26
  %66 = sub i64 %65, %41
  %67 = tail call fastcc i32 @CopyImageRegion(ptr noundef nonnull %16, ptr noundef nonnull %0, i64 noundef %64, i64 noundef %66, i64 noundef 0, i64 noundef 0, i64 noundef %28, i64 noundef %41, ptr noundef %3) #10, !range !83
  %68 = and i32 %61, %67
  %69 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i64 noundef 3, i64 noundef 3) #10
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %71 = load i32, ptr %70, align 8, !tbaa !35
  %72 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 77
  store i32 %71, ptr %72, align 8, !tbaa !35
  %73 = icmp eq i32 %68, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %44
  %75 = tail call ptr @DestroyImage(ptr noundef nonnull %16) #9
  br label %76

76:                                               ; preds = %44, %74, %11
  %77 = phi ptr [ null, %11 ], [ %75, %74 ], [ %16, %44 ]
  ret ptr %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @CopyImageRegion(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = icmp eq i64 %2, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %9
  %12 = tail call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %8) #9
  %13 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef %8) #9
  %14 = icmp sgt i64 %3, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = shl i64 %2, 3
  %17 = shl i64 %2, 1
  br label %18

18:                                               ; preds = %15, %43
  %19 = phi i32 [ 1, %15 ], [ %44, %43 ]
  %20 = phi i64 [ 0, %15 ], [ %45, %43 ]
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %18
  %23 = add nsw i64 %20, %5
  %24 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %12, i64 noundef %4, i64 noundef %23, i64 noundef %2, i64 noundef 1, ptr noundef %8) #11
  %25 = add nsw i64 %20, %7
  %26 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %13, i64 noundef %6, i64 noundef %25, i64 noundef %2, i64 noundef 1, ptr noundef %8) #11
  %27 = icmp eq ptr %24, null
  %28 = icmp eq ptr %26, null
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %22
  %31 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %12) #9
  %32 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %26, ptr noundef nonnull %24, i64 noundef %16) #9
  %33 = icmp eq ptr %31, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %13) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @CopyMagickMemory(ptr noundef nonnull %35, ptr noundef nonnull %31, i64 noundef %17) #9
  br label %39

39:                                               ; preds = %34, %37, %30
  %40 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %13, ptr noundef %8) #11
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %22, %18, %39
  %44 = phi i32 [ %42, %39 ], [ 0, %18 ], [ 0, %22 ]
  %45 = add nuw nsw i64 %20, 1
  %46 = icmp eq i64 %45, %3
  br i1 %46, label %47, label %18, !llvm.loop !84

47:                                               ; preds = %43, %11
  %48 = phi i32 [ 1, %11 ], [ %44, %43 ]
  %49 = tail call ptr @DestroyCacheView(ptr noundef %13) #9
  %50 = tail call ptr @DestroyCacheView(ptr noundef %12) #9
  br label %51

51:                                               ; preds = %9, %47
  %52 = phi i32 [ %48, %47 ], [ 1, %9 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ShaveImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1674, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #9
  br label %11

11:                                               ; preds = %8, %3
  %12 = load i64, ptr %1, align 8, !tbaa !68
  %13 = shl i64 %12, 1
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !25
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !69
  %20 = shl i64 %19, 1
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !26
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %17, %11
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1677, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %25) #9
  br label %48

27:                                               ; preds = %17
  call void @SetGeometry(ptr noundef nonnull %0, ptr noundef nonnull %4) #9
  %28 = load <2 x i64>, ptr %1, align 8, !tbaa !28
  %29 = shl <2 x i64> %28, <i64 1, i64 1>
  %30 = load <2 x i64>, ptr %4, align 16, !tbaa !28
  %31 = sub <2 x i64> %30, %29
  store <2 x i64> %31, ptr %4, align 16, !tbaa !28
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %33 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 2
  %34 = load <2 x i64>, ptr %32, align 8, !tbaa !28
  %35 = add nsw <2 x i64> %34, %28
  store <2 x i64> %35, ptr %33, align 16, !tbaa !28
  %36 = call ptr @CropImage(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %2) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 26
  %40 = load <2 x i64>, ptr %1, align 8, !tbaa !28
  %41 = shl <2 x i64> %40, <i64 1, i64 1>
  %42 = load <2 x i64>, ptr %39, align 8, !tbaa !28
  %43 = sub <2 x i64> %42, %41
  store <2 x i64> %43, ptr %39, align 8, !tbaa !28
  %44 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 26, i32 2
  %45 = load <2 x i64>, ptr %1, align 8, !tbaa !28
  %46 = load <2 x i64>, ptr %44, align 8, !tbaa !28
  %47 = sub nsw <2 x i64> %46, %45
  store <2 x i64> %47, ptr %44, align 8, !tbaa !28
  br label %48

48:                                               ; preds = %27, %38, %24
  %49 = phi ptr [ null, %24 ], [ %36, %38 ], [ null, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  ret ptr %49
}

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SpliceImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1752, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i64, ptr %1, align 8, !tbaa.struct !36
  %12 = getelementptr inbounds i8, ptr %1, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa.struct !42
  %14 = getelementptr inbounds i8, ptr %1, i64 16
  %15 = load i64, ptr %14, align 8, !tbaa.struct !27
  %16 = getelementptr inbounds i8, ptr %1, i64 24
  %17 = load i64, ptr %16, align 8, !tbaa.struct !29
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !25
  %20 = add i64 %19, %11
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !26
  %23 = add i64 %22, %13
  %24 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %20, i64 noundef %23, i32 noundef 1, ptr noundef %2) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %334, label %26

26:                                               ; preds = %10
  %27 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %24, i32 noundef 1) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %30) #9
  %31 = tail call ptr @DestroyImage(ptr noundef nonnull %24) #9
  br label %334

32:                                               ; preds = %26
  %33 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %24) #9
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  %35 = load i32, ptr %34, align 4, !tbaa !85
  switch i32 %35, label %62 [
    i32 9, label %59
    i32 8, label %55
    i32 2, label %36
    i32 3, label %39
    i32 4, label %41
    i32 10, label %44
    i32 5, label %44
    i32 6, label %49
    i32 7, label %53
  ]

36:                                               ; preds = %32
  %37 = sdiv i64 %11, 2
  %38 = add nsw i64 %15, %37
  br label %62

39:                                               ; preds = %32
  %40 = add nsw i64 %15, %11
  br label %62

41:                                               ; preds = %32
  %42 = sdiv i64 %11, 2
  %43 = add nsw i64 %17, %42
  br label %62

44:                                               ; preds = %32, %32
  %45 = sdiv i64 %11, 2
  %46 = add nsw i64 %15, %45
  %47 = sdiv i64 %13, 2
  %48 = add nsw i64 %17, %47
  br label %62

49:                                               ; preds = %32
  %50 = add nsw i64 %15, %11
  %51 = sdiv i64 %13, 2
  %52 = add nsw i64 %17, %51
  br label %62

53:                                               ; preds = %32
  %54 = add nsw i64 %17, %13
  br label %62

55:                                               ; preds = %32
  %56 = sdiv i64 %11, 2
  %57 = add nsw i64 %15, %56
  %58 = add nsw i64 %17, %13
  br label %62

59:                                               ; preds = %32
  %60 = add nsw i64 %15, %11
  %61 = add nsw i64 %17, %13
  br label %62

62:                                               ; preds = %32, %59, %55, %53, %49, %44, %41, %39, %36
  %63 = phi i64 [ %17, %32 ], [ %54, %53 ], [ %52, %49 ], [ %48, %44 ], [ %43, %41 ], [ %17, %39 ], [ %17, %36 ], [ %58, %55 ], [ %61, %59 ]
  %64 = phi i64 [ %15, %32 ], [ %15, %53 ], [ %50, %49 ], [ %46, %44 ], [ %15, %41 ], [ %40, %39 ], [ %38, %36 ], [ %57, %55 ], [ %60, %59 ]
  %65 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %2) #9
  %66 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %24, ptr noundef %2) #9
  %67 = icmp sgt i64 %63, 0
  br i1 %67, label %68, label %191

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 7
  %70 = icmp sgt i64 %64, 0
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %73 = add i64 %64, %11
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %75 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 8
  %76 = tail call i64 @llvm.smax.i64(i64 %64, i64 0)
  %77 = sub i64 %73, %76
  %78 = shl i64 %77, 3
  br label %79

79:                                               ; preds = %68, %186
  %80 = phi i64 [ 0, %68 ], [ %189, %186 ]
  %81 = phi i32 [ 1, %68 ], [ %188, %186 ]
  %82 = phi i64 [ 0, %68 ], [ %187, %186 ]
  %83 = icmp eq i32 %81, 0
  br i1 %83, label %186, label %84

84:                                               ; preds = %79
  %85 = load i64, ptr %18, align 8, !tbaa !25
  %86 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %65, i64 noundef 0, i64 noundef %80, i64 noundef %85, i64 noundef 1, ptr noundef %2) #11
  %87 = load i64, ptr %69, align 8, !tbaa !25
  %88 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %66, i64 noundef 0, i64 noundef %80, i64 noundef %87, i64 noundef 1, ptr noundef %2) #11
  %89 = icmp eq ptr %86, null
  %90 = icmp eq ptr %88, null
  %91 = select i1 %89, i1 true, i1 %90
  br i1 %91, label %186, label %92

92:                                               ; preds = %84
  %93 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %65) #9
  %94 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %66) #9
  br i1 %70, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, ptr %71, align 8, !tbaa !77
  %97 = icmp eq i32 %96, 0
  %98 = load i32, ptr %72, align 4, !tbaa !86
  %99 = icmp eq i32 %98, 12
  %100 = icmp eq ptr %94, null
  br label %109

101:                                              ; preds = %131, %92
  %102 = phi ptr [ %86, %92 ], [ %133, %131 ]
  %103 = phi ptr [ %93, %92 ], [ %132, %131 ]
  %104 = phi i64 [ 0, %92 ], [ %64, %131 ]
  %105 = phi ptr [ %88, %92 ], [ %134, %131 ]
  %106 = tail call i64 @llvm.smax.i64(i64 %104, i64 %73)
  %107 = load i64, ptr %69, align 8, !tbaa !25
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %137, label %174

109:                                              ; preds = %95, %131
  %110 = phi ptr [ %88, %95 ], [ %134, %131 ]
  %111 = phi i64 [ 0, %95 ], [ %135, %131 ]
  %112 = phi ptr [ %93, %95 ], [ %132, %131 ]
  %113 = phi ptr [ %86, %95 ], [ %133, %131 ]
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 2
  %115 = load i16, ptr %114, align 2, !tbaa !51
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 2
  store i16 %115, ptr %116, align 2, !tbaa !51
  %117 = load <2 x i16>, ptr %113, align 2, !tbaa !30
  store <2 x i16> %117, ptr %110, align 2, !tbaa !30
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 3
  store i16 0, ptr %118, align 2, !tbaa !87
  br i1 %97, label %122, label %119

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 0, i32 3
  %121 = load i16, ptr %120, align 2, !tbaa !87
  store i16 %121, ptr %118, align 2, !tbaa !87
  br label %122

122:                                              ; preds = %119, %109
  br i1 %99, label %123, label %131

123:                                              ; preds = %122
  %124 = getelementptr inbounds i16, ptr %94, i64 %111
  br i1 %100, label %131, label %125

125:                                              ; preds = %123
  %126 = icmp eq ptr %112, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %125
  %128 = load i16, ptr %112, align 2, !tbaa !30
  br label %129

129:                                              ; preds = %125, %127
  %130 = phi i16 [ %128, %127 ], [ 0, %125 ]
  store i16 %130, ptr %124, align 2, !tbaa !30
  br label %131

131:                                              ; preds = %123, %129, %122
  %132 = getelementptr inbounds i16, ptr %112, i64 1
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %113, i64 1
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 1
  %135 = add nuw nsw i64 %111, 1
  %136 = icmp eq i64 %135, %64
  br i1 %136, label %101, label %109, !llvm.loop !88

137:                                              ; preds = %101
  %138 = icmp slt i64 %104, %73
  %139 = select i1 %138, i64 %78, i64 0
  %140 = getelementptr i8, ptr %105, i64 %139
  %141 = load i32, ptr %71, align 8, !tbaa !77
  %142 = icmp eq i32 %141, 0
  %143 = load i32, ptr %72, align 4, !tbaa !86
  %144 = icmp eq i32 %143, 12
  %145 = icmp eq ptr %94, null
  br label %146

146:                                              ; preds = %137, %168
  %147 = phi ptr [ %140, %137 ], [ %171, %168 ]
  %148 = phi i64 [ %106, %137 ], [ %172, %168 ]
  %149 = phi ptr [ %103, %137 ], [ %169, %168 ]
  %150 = phi ptr [ %102, %137 ], [ %170, %168 ]
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %150, i64 0, i32 2
  %152 = load i16, ptr %151, align 2, !tbaa !51
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %147, i64 0, i32 2
  store i16 %152, ptr %153, align 2, !tbaa !51
  %154 = load <2 x i16>, ptr %150, align 2, !tbaa !30
  store <2 x i16> %154, ptr %147, align 2, !tbaa !30
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %147, i64 0, i32 3
  store i16 0, ptr %155, align 2, !tbaa !87
  br i1 %142, label %159, label %156

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct._PixelPacket, ptr %150, i64 0, i32 3
  %158 = load i16, ptr %157, align 2, !tbaa !87
  store i16 %158, ptr %155, align 2, !tbaa !87
  br label %159

159:                                              ; preds = %156, %146
  br i1 %144, label %160, label %168

160:                                              ; preds = %159
  %161 = getelementptr inbounds i16, ptr %94, i64 %148
  br i1 %145, label %168, label %162

162:                                              ; preds = %160
  %163 = icmp eq ptr %149, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %162
  %165 = load i16, ptr %149, align 2, !tbaa !30
  br label %166

166:                                              ; preds = %162, %164
  %167 = phi i16 [ %165, %164 ], [ 0, %162 ]
  store i16 %167, ptr %161, align 2, !tbaa !30
  br label %168

168:                                              ; preds = %160, %166, %159
  %169 = getelementptr inbounds i16, ptr %149, i64 1
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %150, i64 1
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %147, i64 1
  %172 = add nuw nsw i64 %148, 1
  %173 = icmp eq i64 %172, %107
  br i1 %173, label %174, label %146, !llvm.loop !89

174:                                              ; preds = %168, %101
  %175 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %66, ptr noundef %2) #11
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = load ptr, ptr %74, align 8, !tbaa !33
  %179 = icmp eq ptr %178, null
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = add nsw i64 %82, 1
  %182 = load i64, ptr %75, align 8, !tbaa !26
  %183 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %82, i64 noundef %182) #10
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, i32 0, i32 %177
  br label %186

186:                                              ; preds = %174, %180, %84, %79
  %187 = phi i64 [ %82, %79 ], [ %82, %84 ], [ %181, %180 ], [ %82, %174 ]
  %188 = phi i32 [ 0, %79 ], [ 0, %84 ], [ %185, %180 ], [ %177, %174 ]
  %189 = add nuw nsw i64 %80, 1
  %190 = icmp eq i64 %189, %63
  br i1 %190, label %191, label %79, !llvm.loop !90

191:                                              ; preds = %186, %62
  %192 = phi i64 [ 0, %62 ], [ %187, %186 ]
  %193 = phi i32 [ 1, %62 ], [ %188, %186 ]
  %194 = add i64 %63, %13
  %195 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 8
  %196 = load i64, ptr %195, align 8, !tbaa !26
  %197 = icmp slt i64 %194, %196
  br i1 %197, label %198, label %327

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct._Image, ptr %24, i64 0, i32 7
  %200 = icmp sgt i64 %64, 0
  %201 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %202 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %203 = add i64 %64, %11
  %204 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %205 = tail call i64 @llvm.smax.i64(i64 %64, i64 0)
  %206 = sub i64 %203, %205
  %207 = shl i64 %206, 3
  br label %208

208:                                              ; preds = %198, %321
  %209 = phi i64 [ %194, %198 ], [ %324, %321 ]
  %210 = phi i32 [ %193, %198 ], [ %323, %321 ]
  %211 = phi i64 [ %192, %198 ], [ %322, %321 ]
  %212 = icmp eq i32 %210, 0
  br i1 %212, label %321, label %213

213:                                              ; preds = %208
  %214 = sub nsw i64 %209, %13
  %215 = load i64, ptr %18, align 8, !tbaa !25
  %216 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %65, i64 noundef 0, i64 noundef %214, i64 noundef %215, i64 noundef 1, ptr noundef %2) #11
  %217 = icmp slt i64 %209, 0
  br i1 %217, label %321, label %218

218:                                              ; preds = %213
  %219 = load i64, ptr %195, align 8, !tbaa !26
  %220 = icmp slt i64 %209, %219
  br i1 %220, label %221, label %321

221:                                              ; preds = %218
  %222 = load i64, ptr %199, align 8, !tbaa !25
  %223 = tail call ptr @QueueCacheViewAuthenticPixels(ptr noundef %66, i64 noundef 0, i64 noundef %209, i64 noundef %222, i64 noundef 1, ptr noundef %2) #11
  %224 = icmp eq ptr %216, null
  %225 = icmp eq ptr %223, null
  %226 = select i1 %224, i1 true, i1 %225
  br i1 %226, label %321, label %227

227:                                              ; preds = %221
  %228 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %65) #9
  %229 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %66) #9
  br i1 %200, label %230, label %236

230:                                              ; preds = %227
  %231 = load i32, ptr %201, align 8, !tbaa !77
  %232 = icmp eq i32 %231, 0
  %233 = load i32, ptr %202, align 4, !tbaa !86
  %234 = icmp eq i32 %233, 12
  %235 = icmp eq ptr %229, null
  br label %244

236:                                              ; preds = %266, %227
  %237 = phi ptr [ %216, %227 ], [ %268, %266 ]
  %238 = phi ptr [ %228, %227 ], [ %267, %266 ]
  %239 = phi i64 [ 0, %227 ], [ %64, %266 ]
  %240 = phi ptr [ %223, %227 ], [ %269, %266 ]
  %241 = tail call i64 @llvm.smax.i64(i64 %239, i64 %203)
  %242 = load i64, ptr %199, align 8, !tbaa !25
  %243 = icmp slt i64 %241, %242
  br i1 %243, label %272, label %309

244:                                              ; preds = %230, %266
  %245 = phi ptr [ %223, %230 ], [ %269, %266 ]
  %246 = phi i64 [ 0, %230 ], [ %270, %266 ]
  %247 = phi ptr [ %228, %230 ], [ %267, %266 ]
  %248 = phi ptr [ %216, %230 ], [ %268, %266 ]
  %249 = getelementptr inbounds %struct._PixelPacket, ptr %248, i64 0, i32 2
  %250 = load i16, ptr %249, align 2, !tbaa !51
  %251 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 2
  store i16 %250, ptr %251, align 2, !tbaa !51
  %252 = load <2 x i16>, ptr %248, align 2, !tbaa !30
  store <2 x i16> %252, ptr %245, align 2, !tbaa !30
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 3
  store i16 0, ptr %253, align 2, !tbaa !87
  br i1 %232, label %257, label %254

254:                                              ; preds = %244
  %255 = getelementptr inbounds %struct._PixelPacket, ptr %248, i64 0, i32 3
  %256 = load i16, ptr %255, align 2, !tbaa !87
  store i16 %256, ptr %253, align 2, !tbaa !87
  br label %257

257:                                              ; preds = %254, %244
  br i1 %234, label %258, label %266

258:                                              ; preds = %257
  %259 = getelementptr inbounds i16, ptr %229, i64 %246
  br i1 %235, label %266, label %260

260:                                              ; preds = %258
  %261 = icmp eq ptr %247, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %260
  %263 = load i16, ptr %247, align 2, !tbaa !30
  br label %264

264:                                              ; preds = %260, %262
  %265 = phi i16 [ %263, %262 ], [ 0, %260 ]
  store i16 %265, ptr %259, align 2, !tbaa !30
  br label %266

266:                                              ; preds = %258, %264, %257
  %267 = getelementptr inbounds i16, ptr %247, i64 1
  %268 = getelementptr inbounds %struct._PixelPacket, ptr %248, i64 1
  %269 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 1
  %270 = add nuw nsw i64 %246, 1
  %271 = icmp eq i64 %270, %64
  br i1 %271, label %236, label %244, !llvm.loop !91

272:                                              ; preds = %236
  %273 = icmp slt i64 %239, %203
  %274 = select i1 %273, i64 %207, i64 0
  %275 = getelementptr i8, ptr %240, i64 %274
  %276 = load i32, ptr %201, align 8, !tbaa !77
  %277 = icmp eq i32 %276, 0
  %278 = load i32, ptr %202, align 4, !tbaa !86
  %279 = icmp eq i32 %278, 12
  %280 = icmp eq ptr %229, null
  br label %281

281:                                              ; preds = %272, %303
  %282 = phi ptr [ %275, %272 ], [ %306, %303 ]
  %283 = phi i64 [ %241, %272 ], [ %307, %303 ]
  %284 = phi ptr [ %238, %272 ], [ %304, %303 ]
  %285 = phi ptr [ %237, %272 ], [ %305, %303 ]
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %285, i64 0, i32 2
  %287 = load i16, ptr %286, align 2, !tbaa !51
  %288 = getelementptr inbounds %struct._PixelPacket, ptr %282, i64 0, i32 2
  store i16 %287, ptr %288, align 2, !tbaa !51
  %289 = load <2 x i16>, ptr %285, align 2, !tbaa !30
  store <2 x i16> %289, ptr %282, align 2, !tbaa !30
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %282, i64 0, i32 3
  store i16 0, ptr %290, align 2, !tbaa !87
  br i1 %277, label %294, label %291

291:                                              ; preds = %281
  %292 = getelementptr inbounds %struct._PixelPacket, ptr %285, i64 0, i32 3
  %293 = load i16, ptr %292, align 2, !tbaa !87
  store i16 %293, ptr %290, align 2, !tbaa !87
  br label %294

294:                                              ; preds = %291, %281
  br i1 %279, label %295, label %303

295:                                              ; preds = %294
  %296 = getelementptr inbounds i16, ptr %229, i64 %283
  br i1 %280, label %303, label %297

297:                                              ; preds = %295
  %298 = icmp eq ptr %284, null
  br i1 %298, label %301, label %299

299:                                              ; preds = %297
  %300 = load i16, ptr %284, align 2, !tbaa !30
  br label %301

301:                                              ; preds = %297, %299
  %302 = phi i16 [ %300, %299 ], [ 0, %297 ]
  store i16 %302, ptr %296, align 2, !tbaa !30
  br label %303

303:                                              ; preds = %295, %301, %294
  %304 = getelementptr inbounds i16, ptr %284, i64 1
  %305 = getelementptr inbounds %struct._PixelPacket, ptr %285, i64 1
  %306 = getelementptr inbounds %struct._PixelPacket, ptr %282, i64 1
  %307 = add nuw nsw i64 %283, 1
  %308 = icmp eq i64 %307, %242
  br i1 %308, label %309, label %281, !llvm.loop !92

309:                                              ; preds = %303, %236
  %310 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %66, ptr noundef %2) #11
  %311 = icmp ne i32 %310, 0
  %312 = zext i1 %311 to i32
  %313 = load ptr, ptr %204, align 8, !tbaa !33
  %314 = icmp eq ptr %313, null
  br i1 %314, label %321, label %315

315:                                              ; preds = %309
  %316 = add nsw i64 %211, 1
  %317 = load i64, ptr %195, align 8, !tbaa !26
  %318 = tail call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i64 noundef %211, i64 noundef %317) #10
  %319 = icmp eq i32 %318, 0
  %320 = select i1 %319, i32 0, i32 %312
  br label %321

321:                                              ; preds = %309, %315, %221, %213, %218, %208
  %322 = phi i64 [ %211, %208 ], [ %211, %218 ], [ %211, %213 ], [ %211, %221 ], [ %316, %315 ], [ %211, %309 ]
  %323 = phi i32 [ 0, %208 ], [ 1, %218 ], [ 1, %213 ], [ 0, %221 ], [ %320, %315 ], [ %312, %309 ]
  %324 = add nsw i64 %209, 1
  %325 = load i64, ptr %195, align 8, !tbaa !26
  %326 = icmp slt i64 %324, %325
  br i1 %326, label %208, label %327, !llvm.loop !93

327:                                              ; preds = %321, %191
  %328 = phi i32 [ %193, %191 ], [ %323, %321 ]
  %329 = tail call ptr @DestroyCacheView(ptr noundef %66) #9
  %330 = tail call ptr @DestroyCacheView(ptr noundef %65) #9
  %331 = icmp eq i32 %328, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %327
  %333 = tail call ptr @DestroyImage(ptr noundef nonnull %24) #9
  br label %334

334:                                              ; preds = %327, %332, %10, %29
  %335 = phi ptr [ null, %29 ], [ null, %10 ], [ %333, %332 ], [ %24, %327 ]
  ret ptr %335
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @TransformImage(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2058, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !48
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ %12, %9 ], [ %5, %3 ]
  %15 = icmp eq ptr %1, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  %18 = tail call ptr @CropImageToTiles(ptr noundef %14, ptr noundef nonnull %1, ptr noundef nonnull %17) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 58
  %23 = tail call ptr @CloneImage(ptr noundef %21, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %22) #9
  br label %27

24:                                               ; preds = %16
  %25 = tail call ptr @DestroyImage(ptr noundef %14) #9
  %26 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %18) #9
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %23, %20 ], [ %26, %24 ]
  store ptr %28, ptr %0, align 8, !tbaa !48
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi ptr [ %28, %27 ], [ %14, %13 ]
  %31 = icmp eq ptr %2, null
  br i1 %31, label %60, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 58
  %34 = call i32 @ParseRegionGeometry(ptr noundef %30, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %33) #9
  %35 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !25
  %37 = load i64, ptr %4, align 8, !tbaa !68
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !69
  br label %48

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 8
  %44 = load i64, ptr %43, align 8, !tbaa !26
  %45 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !69
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %39, %42
  %49 = phi i64 [ %41, %39 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 32
  %51 = load i32, ptr %50, align 8, !tbaa !94
  %52 = getelementptr inbounds %struct._Image, ptr %30, i64 0, i32 30
  %53 = load double, ptr %52, align 8, !tbaa !95
  %54 = load ptr, ptr %0, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 58
  %56 = call ptr @ResizeImage(ptr noundef nonnull %30, i64 noundef %37, i64 noundef %49, i32 noundef %51, double noundef %53, ptr noundef nonnull %55) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  %59 = call ptr @DestroyImage(ptr noundef nonnull %30) #9
  store ptr %56, ptr %0, align 8, !tbaa !48
  br label %60

60:                                               ; preds = %48, %42, %29, %58
  %61 = phi i32 [ 1, %58 ], [ 1, %29 ], [ 1, %42 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2146, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #9
  %13 = load ptr, ptr %0, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi ptr [ %13, %10 ], [ %6, %3 ]
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 58
  %17 = tail call ptr @ImageListToArray(ptr noundef %15, ptr noundef nonnull %16) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @NewImageList() #9
  store ptr %20, ptr %5, align 8, !tbaa !48
  %21 = load ptr, ptr %17, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %32, %23 ], [ %21, %19 ]
  %25 = phi i64 [ %30, %23 ], [ 0, %19 ]
  %26 = phi i32 [ %28, %23 ], [ 1, %19 ]
  store ptr %24, ptr %4, align 8, !tbaa !48
  %27 = call i32 @TransformImage(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #10, !range !83
  %28 = and i32 %27, %26
  %29 = load ptr, ptr %4, align 8, !tbaa !48
  call void @AppendImageToList(ptr noundef nonnull %5, ptr noundef %29) #9
  %30 = add nuw nsw i64 %25, 1
  %31 = getelementptr inbounds ptr, ptr %17, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %23, !llvm.loop !96

34:                                               ; preds = %23
  %35 = load ptr, ptr %5, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %34, %19
  %37 = phi ptr [ %20, %19 ], [ %35, %34 ]
  %38 = phi i32 [ 1, %19 ], [ %28, %34 ]
  store ptr %37, ptr %0, align 8, !tbaa !48
  %39 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %17) #9
  br label %40

40:                                               ; preds = %14, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %41
}

; Function Attrs: optsize
declare ptr @ImageListToArray(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @TrimImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2469, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  call void @GetImageBoundingBox(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %3, ptr noundef nonnull %0, ptr noundef %1) #9
  %11 = load i64, ptr %3, align 8, !tbaa !68
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = select i1 %12, i1 true, i1 %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 1, i32 noundef 1, ptr noundef %1) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 12, i32 3
  store i16 -1, ptr %21, align 2, !tbaa !61
  %22 = call i32 @SetImageBackgroundColor(ptr noundef nonnull %18) #9
  %23 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 26
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 16, i1 false), !tbaa.struct !36
  %25 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 26, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 -1, i64 16, i1 false)
  br label %33

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %28 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %29 = load <2 x i64>, ptr %27, align 8, !tbaa !28
  %30 = load <2 x i64>, ptr %28, align 8, !tbaa !28
  %31 = add nsw <2 x i64> %30, %29
  store <2 x i64> %31, ptr %28, align 8, !tbaa !28
  %32 = call ptr @CropImage(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %1) #10
  br label %33

33:                                               ; preds = %20, %17, %26
  %34 = phi ptr [ %32, %26 ], [ %18, %20 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  ret ptr %34
}

; Function Attrs: optsize
declare void @GetImageBoundingBox(ptr dead_on_unwind writable sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { hot nounwind optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 24}
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
!24 = !{!6, !7, i64 12976}
!25 = !{!6, !10, i64 40}
!26 = !{!6, !10, i64 48}
!27 = !{i64 0, i64 8, !28, i64 8, i64 8, !28}
!28 = !{!10, !10, i64 0}
!29 = !{i64 0, i64 8, !28}
!30 = !{!13, !13, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!6, !11, i64 568}
!34 = distinct !{!34, !32}
!35 = !{!6, !7, i64 13184}
!36 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28}
!37 = distinct !{!37, !32}
!38 = distinct !{!38, !32}
!39 = distinct !{!39, !32}
!40 = distinct !{!40, !32}
!41 = distinct !{!41, !32}
!42 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !32}
!46 = distinct !{!46, !32}
!47 = !{!6, !11, i64 576}
!48 = !{!11, !11, i64 0}
!49 = distinct !{!49, !32}
!50 = distinct !{!50, !32}
!51 = !{!12, !13, i64 4}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !32}
!54 = !{!12, !13, i64 2}
!55 = distinct !{!55, !32}
!56 = distinct !{!56, !32}
!57 = !{!12, !13, i64 0}
!58 = distinct !{!58, !32}
!59 = distinct !{!59, !32}
!60 = distinct !{!60, !32}
!61 = !{!6, !13, i64 86}
!62 = !{!6, !7, i64 420}
!63 = !{!6, !10, i64 280}
!64 = !{!6, !10, i64 288}
!65 = !{!6, !10, i64 296}
!66 = !{!6, !10, i64 304}
!67 = distinct !{!67, !32}
!68 = !{!17, !10, i64 0}
!69 = !{!17, !10, i64 8}
!70 = !{!17, !10, i64 24}
!71 = !{!17, !10, i64 16}
!72 = distinct !{!72, !32}
!73 = distinct !{!73, !32}
!74 = distinct !{!74, !32}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !32}
!77 = !{!6, !7, i64 32}
!78 = !{!6, !7, i64 416}
!79 = distinct !{!79, !32}
!80 = distinct !{!80, !32}
!81 = distinct !{!81, !32}
!82 = distinct !{!82, !32}
!83 = !{i32 0, i32 2}
!84 = distinct !{!84, !32}
!85 = !{!6, !7, i64 412}
!86 = !{!6, !7, i64 4}
!87 = !{!12, !13, i64 6}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !32}
!91 = distinct !{!91, !32}
!92 = distinct !{!92, !32}
!93 = distinct !{!93, !32}
!94 = !{!6, !7, i64 400}
!95 = !{!6, !14, i64 384}
!96 = distinct !{!96, !32}
