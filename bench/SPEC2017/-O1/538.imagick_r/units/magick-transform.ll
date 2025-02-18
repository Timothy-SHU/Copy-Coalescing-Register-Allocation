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

; Function Attrs: nounwind uwtable
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
  %7 = tail call ptr @FlopImage(ptr noundef %0, ptr noundef %2)
  br label %20

8:                                                ; preds = %3
  %9 = tail call ptr @RotateImage(ptr noundef %0, double noundef 1.800000e+02, ptr noundef %2) #9
  br label %20

10:                                               ; preds = %3
  %11 = tail call ptr @FlipImage(ptr noundef %0, ptr noundef %2)
  br label %20

12:                                               ; preds = %3
  %13 = tail call ptr @TransposeImage(ptr noundef %0, ptr noundef %2)
  br label %20

14:                                               ; preds = %3
  %15 = tail call ptr @RotateImage(ptr noundef %0, double noundef 9.000000e+01, ptr noundef %2) #9
  br label %20

16:                                               ; preds = %3
  %17 = tail call ptr @TransverseImage(ptr noundef %0, ptr noundef %2)
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
  store i32 1, ptr %24, align 8, !tbaa !34
  br label %25

25:                                               ; preds = %23, %20
  ret ptr %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @FlopImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1386, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !55
  %15 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %12, i64 noundef %14, i32 noundef 1, ptr noundef %1) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %123, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %19 = load i64, ptr %18, align 8, !tbaa.struct !56
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa.struct !58
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa.struct !59
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa.struct !60
  %26 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %1) #9
  %27 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %1) #9
  %28 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !55
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %102

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %36

36:                                               ; preds = %31, %94
  %37 = phi i64 [ 0, %31 ], [ %97, %94 ]
  %38 = phi i32 [ 1, %31 ], [ %96, %94 ]
  %39 = phi i64 [ 0, %31 ], [ %95, %94 ]
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %94, label %41

41:                                               ; preds = %36
  %42 = load i64, ptr %11, align 8, !tbaa !54
  %43 = call ptr @GetCacheViewVirtualPixels(ptr noundef %26, i64 noundef 0, i64 noundef %37, i64 noundef %42, i64 noundef 1, ptr noundef %1) #10
  %44 = load i64, ptr %32, align 8, !tbaa !54
  %45 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %27, i64 noundef 0, i64 noundef %37, i64 noundef %44, i64 noundef 1, ptr noundef %1) #10
  %46 = icmp eq ptr %43, null
  %47 = icmp eq ptr %45, null
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %94, label %49

49:                                               ; preds = %41
  %50 = load i64, ptr %32, align 8, !tbaa !54
  %51 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %26) #9
  %52 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %27) #9
  %53 = load i64, ptr %32, align 8, !tbaa !54
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %45, i64 %50
  %57 = icmp ne ptr %51, null
  %58 = icmp ne ptr %52, null
  %59 = select i1 %57, i1 %58, i1 false
  br label %60

60:                                               ; preds = %55, %75
  %61 = phi ptr [ %56, %55 ], [ %64, %75 ]
  %62 = phi i64 [ 0, %55 ], [ %76, %75 ]
  %63 = phi ptr [ %43, %55 ], [ %65, %75 ]
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 -1
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 1
  %66 = load i64, ptr %63, align 2
  store i64 %66, ptr %64, align 2
  br i1 %59, label %67, label %75

67:                                               ; preds = %60
  %68 = sub nsw i64 0, %62
  %69 = getelementptr inbounds i16, ptr %51, i64 %62
  %70 = load i16, ptr %69, align 2, !tbaa !61
  %71 = load i64, ptr %32, align 8, !tbaa !54
  %72 = getelementptr inbounds i16, ptr %52, i64 %71
  %73 = getelementptr inbounds i16, ptr %72, i64 %68
  %74 = getelementptr inbounds i16, ptr %73, i64 -1
  store i16 %70, ptr %74, align 2, !tbaa !61
  br label %75

75:                                               ; preds = %60, %67
  %76 = add nuw nsw i64 %62, 1
  %77 = load i64, ptr %32, align 8, !tbaa !54
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %60, label %79, !llvm.loop !62

79:                                               ; preds = %75, %49
  %80 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %27, ptr noundef %1) #10
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load ptr, ptr %33, align 8, !tbaa !65
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %79
  %86 = add nsw i64 %39, 1
  %87 = load i64, ptr %13, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  %88 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, ptr noundef nonnull %34) #9
  %89 = load ptr, ptr %33, align 8, !tbaa !65
  %90 = load ptr, ptr %35, align 8, !tbaa !66
  %91 = call i32 %89(ptr noundef nonnull %3, i64 noundef %39, i64 noundef %87, ptr noundef %90) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 0, i32 %82
  br label %94

94:                                               ; preds = %79, %85, %41, %36
  %95 = phi i64 [ %39, %36 ], [ %39, %41 ], [ %86, %85 ], [ %39, %79 ]
  %96 = phi i32 [ 0, %36 ], [ 0, %41 ], [ %93, %85 ], [ %82, %79 ]
  %97 = add nuw nsw i64 %37, 1
  %98 = load i64, ptr %28, align 8, !tbaa !55
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %36, label %100, !llvm.loop !67

100:                                              ; preds = %94
  %101 = icmp eq i32 %96, 0
  br label %102

102:                                              ; preds = %100, %17
  %103 = phi i1 [ false, %17 ], [ %101, %100 ]
  %104 = call ptr @DestroyCacheView(ptr noundef %27) #9
  %105 = call ptr @DestroyCacheView(ptr noundef %26) #9
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %107 = load i32, ptr %106, align 8, !tbaa !68
  %108 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 77
  store i32 %107, ptr %108, align 8, !tbaa !68
  %109 = icmp eq i64 %19, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %112 = load i64, ptr %111, align 8, !tbaa !54
  %113 = add i64 %23, %112
  %114 = sub i64 %19, %113
  br label %115

115:                                              ; preds = %110, %102
  %116 = phi i64 [ %114, %110 ], [ %23, %102 ]
  %117 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26
  store i64 %19, ptr %117, align 8, !tbaa.struct !56
  %118 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 1
  store i64 %21, ptr %118, align 8, !tbaa.struct !58
  %119 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 2
  store i64 %116, ptr %119, align 8, !tbaa.struct !59
  %120 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 3
  store i64 %25, ptr %120, align 8, !tbaa.struct !60
  br i1 %103, label %121, label %123

121:                                              ; preds = %115
  %122 = call ptr @DestroyImage(ptr noundef nonnull %15) #9
  br label %123

123:                                              ; preds = %115, %121, %10
  %124 = phi ptr [ null, %10 ], [ %122, %121 ], [ %15, %115 ]
  ret ptr %124
}

declare ptr @RotateImage(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @FlipImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1258, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !55
  %15 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %12, i64 noundef %14, i32 noundef 1, ptr noundef %1) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %108, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %19 = load i64, ptr %18, align 8, !tbaa.struct !56
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa.struct !58
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa.struct !59
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa.struct !60
  %26 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %1) #9
  %27 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %1) #9
  %28 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !55
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %36

36:                                               ; preds = %31, %80
  %37 = phi i32 [ 1, %31 ], [ %82, %80 ]
  %38 = phi i64 [ 0, %31 ], [ %83, %80 ]
  %39 = phi i64 [ 0, %31 ], [ %81, %80 ]
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %36
  %42 = load i64, ptr %11, align 8, !tbaa !54
  %43 = call ptr @GetCacheViewVirtualPixels(ptr noundef %26, i64 noundef 0, i64 noundef %38, i64 noundef %42, i64 noundef 1, ptr noundef %1) #10
  %44 = load i64, ptr %28, align 8, !tbaa !55
  %45 = xor i64 %38, -1
  %46 = add i64 %44, %45
  %47 = load i64, ptr %32, align 8, !tbaa !54
  %48 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %27, i64 noundef 0, i64 noundef %46, i64 noundef %47, i64 noundef 1, ptr noundef %1) #10
  %49 = icmp eq ptr %43, null
  %50 = icmp eq ptr %48, null
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %80, label %52

52:                                               ; preds = %41
  %53 = load i64, ptr %11, align 8, !tbaa !54
  %54 = shl i64 %53, 3
  %55 = call ptr @CopyMagickMemory(ptr noundef %48, ptr noundef %43, i64 noundef %54) #9
  %56 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %26) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  %59 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %27) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i64, ptr %11, align 8, !tbaa !54
  %63 = shl i64 %62, 1
  %64 = call ptr @CopyMagickMemory(ptr noundef nonnull %59, ptr noundef nonnull %56, i64 noundef %63) #9
  br label %65

65:                                               ; preds = %58, %61, %52
  %66 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %27, ptr noundef %1) #10
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = load ptr, ptr %33, align 8, !tbaa !65
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = add nsw i64 %39, 1
  %73 = load i64, ptr %13, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  %74 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, ptr noundef nonnull %34) #9
  %75 = load ptr, ptr %33, align 8, !tbaa !65
  %76 = load ptr, ptr %35, align 8, !tbaa !66
  %77 = call i32 %75(ptr noundef nonnull %3, i64 noundef %39, i64 noundef %73, ptr noundef %76) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 0, i32 %68
  br label %80

80:                                               ; preds = %65, %71, %41, %36
  %81 = phi i64 [ %39, %36 ], [ %39, %41 ], [ %72, %71 ], [ %39, %65 ]
  %82 = phi i32 [ 0, %36 ], [ 0, %41 ], [ %79, %71 ], [ %68, %65 ]
  %83 = add nuw nsw i64 %38, 1
  %84 = load i64, ptr %28, align 8, !tbaa !55
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %36, label %86, !llvm.loop !69

86:                                               ; preds = %80
  %87 = icmp eq i32 %82, 0
  br label %88

88:                                               ; preds = %86, %17
  %89 = phi i1 [ false, %17 ], [ %87, %86 ]
  %90 = call ptr @DestroyCacheView(ptr noundef %27) #9
  %91 = call ptr @DestroyCacheView(ptr noundef %26) #9
  %92 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %93 = load i32, ptr %92, align 8, !tbaa !68
  %94 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 77
  store i32 %93, ptr %94, align 8, !tbaa !68
  %95 = icmp eq i64 %21, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %88
  %97 = load i64, ptr %28, align 8, !tbaa !55
  %98 = add i64 %25, %97
  %99 = sub i64 %21, %98
  br label %100

100:                                              ; preds = %96, %88
  %101 = phi i64 [ %99, %96 ], [ %25, %88 ]
  %102 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26
  store i64 %19, ptr %102, align 8, !tbaa.struct !56
  %103 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 1
  store i64 %21, ptr %103, align 8, !tbaa.struct !58
  %104 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 2
  store i64 %23, ptr %104, align 8, !tbaa.struct !59
  %105 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 3
  store i64 %101, ptr %105, align 8, !tbaa.struct !60
  br i1 %89, label %106, label %108

106:                                              ; preds = %100
  %107 = call ptr @DestroyImage(ptr noundef nonnull %15) #9
  br label %108

108:                                              ; preds = %100, %106, %10
  %109 = phi ptr [ null, %10 ], [ %107, %106 ], [ %15, %100 ]
  ret ptr %109
}

; Function Attrs: nounwind uwtable
define dso_local ptr @TransposeImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2215, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !54
  %15 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %12, i64 noundef %14, i32 noundef 1, ptr noundef %1) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %98, label %17

17:                                               ; preds = %10
  %18 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %1) #9
  %19 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %1) #9
  %20 = load i64, ptr %11, align 8, !tbaa !55
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %27

27:                                               ; preds = %22, %73
  %28 = phi i64 [ %20, %22 ], [ %77, %73 ]
  %29 = phi i32 [ 1, %22 ], [ %75, %73 ]
  %30 = phi i64 [ 0, %22 ], [ %76, %73 ]
  %31 = phi i64 [ 0, %22 ], [ %74, %73 ]
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %73, label %33

33:                                               ; preds = %27
  %34 = xor i64 %30, -1
  %35 = add i64 %28, %34
  %36 = load i64, ptr %13, align 8, !tbaa !54
  %37 = call ptr @GetCacheViewVirtualPixels(ptr noundef %18, i64 noundef 0, i64 noundef %35, i64 noundef %36, i64 noundef 1, ptr noundef %1) #10
  %38 = load i64, ptr %11, align 8, !tbaa !55
  %39 = add i64 %38, %34
  %40 = load i64, ptr %23, align 8, !tbaa !55
  %41 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %19, i64 noundef %39, i64 noundef 0, i64 noundef 1, i64 noundef %40, ptr noundef %1) #10
  %42 = icmp eq ptr %37, null
  %43 = icmp eq ptr %41, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %73, label %45

45:                                               ; preds = %33
  %46 = load i64, ptr %13, align 8, !tbaa !54
  %47 = shl i64 %46, 3
  %48 = call ptr @CopyMagickMemory(ptr noundef %41, ptr noundef %37, i64 noundef %47) #9
  %49 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %18) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %19) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i64, ptr %13, align 8, !tbaa !54
  %56 = shl i64 %55, 1
  %57 = call ptr @CopyMagickMemory(ptr noundef nonnull %52, ptr noundef nonnull %49, i64 noundef %56) #9
  br label %58

58:                                               ; preds = %51, %54, %45
  %59 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %19, ptr noundef %1) #10
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load ptr, ptr %24, align 8, !tbaa !65
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %58
  %65 = add nsw i64 %31, 1
  %66 = load i64, ptr %11, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  %67 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef nonnull %25) #9
  %68 = load ptr, ptr %24, align 8, !tbaa !65
  %69 = load ptr, ptr %26, align 8, !tbaa !66
  %70 = call i32 %68(ptr noundef nonnull %3, i64 noundef %31, i64 noundef %66, ptr noundef %69) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 0, i32 %61
  br label %73

73:                                               ; preds = %58, %64, %33, %27
  %74 = phi i64 [ %31, %27 ], [ %31, %33 ], [ %65, %64 ], [ %31, %58 ]
  %75 = phi i32 [ 0, %27 ], [ 0, %33 ], [ %72, %64 ], [ %61, %58 ]
  %76 = add nuw nsw i64 %30, 1
  %77 = load i64, ptr %11, align 8, !tbaa !55
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %27, label %79, !llvm.loop !70

79:                                               ; preds = %73
  %80 = icmp eq i32 %75, 0
  br label %81

81:                                               ; preds = %79, %17
  %82 = phi i1 [ false, %17 ], [ %80, %79 ]
  %83 = call ptr @DestroyCacheView(ptr noundef %19) #9
  %84 = call ptr @DestroyCacheView(ptr noundef %18) #9
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %86 = load i32, ptr %85, align 8, !tbaa !68
  %87 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 77
  store i32 %86, ptr %87, align 8, !tbaa !68
  %88 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26
  %89 = load i64, ptr %88, align 8, !tbaa.struct !56
  %90 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa.struct !58
  %92 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa.struct !59
  %94 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 3
  %95 = load i64, ptr %94, align 8, !tbaa.struct !60
  store i64 %91, ptr %88, align 8, !tbaa.struct !56
  store i64 %89, ptr %90, align 8, !tbaa.struct !58
  store i64 %95, ptr %92, align 8, !tbaa.struct !59
  store i64 %93, ptr %94, align 8, !tbaa.struct !60
  br i1 %82, label %96, label %98

96:                                               ; preds = %81
  %97 = call ptr @DestroyImage(ptr noundef nonnull %15) #9
  br label %98

98:                                               ; preds = %81, %96, %10
  %99 = phi ptr [ null, %10 ], [ %97, %96 ], [ %15, %81 ]
  ret ptr %99
}

; Function Attrs: nounwind uwtable
define dso_local ptr @TransverseImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2344, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !54
  %15 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %12, i64 noundef %14, i32 noundef 1, ptr noundef %1) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %134, label %17

17:                                               ; preds = %10
  %18 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %1) #9
  %19 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %1) #9
  %20 = load i64, ptr %11, align 8, !tbaa !55
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %101

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %27

27:                                               ; preds = %22, %93
  %28 = phi i64 [ 0, %22 ], [ %96, %93 ]
  %29 = phi i64 [ 0, %22 ], [ %95, %93 ]
  %30 = phi i32 [ 1, %22 ], [ %94, %93 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %93, label %32

32:                                               ; preds = %27
  %33 = load i64, ptr %13, align 8, !tbaa !54
  %34 = call ptr @GetCacheViewVirtualPixels(ptr noundef %18, i64 noundef 0, i64 noundef %28, i64 noundef %33, i64 noundef 1, ptr noundef %1) #10
  %35 = load i64, ptr %11, align 8, !tbaa !55
  %36 = xor i64 %28, -1
  %37 = add i64 %35, %36
  %38 = load i64, ptr %23, align 8, !tbaa !55
  %39 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %19, i64 noundef %37, i64 noundef 0, i64 noundef 1, i64 noundef %38, ptr noundef %1) #10
  %40 = icmp eq ptr %34, null
  %41 = icmp eq ptr %39, null
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %93, label %43

43:                                               ; preds = %32
  %44 = load i64, ptr %13, align 8, !tbaa !54
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 %44
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi ptr [ %52, %48 ], [ %47, %46 ]
  %50 = phi i64 [ %55, %48 ], [ 0, %46 ]
  %51 = phi ptr [ %53, %48 ], [ %34, %46 ]
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 -1
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 1
  %54 = load i64, ptr %51, align 2
  store i64 %54, ptr %52, align 2
  %55 = add nuw nsw i64 %50, 1
  %56 = load i64, ptr %13, align 8, !tbaa !54
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %48, label %58, !llvm.loop !71

58:                                               ; preds = %48, %43
  %59 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %18) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %78, label %61

61:                                               ; preds = %58
  %62 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %19) #9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %61
  %65 = load i64, ptr %13, align 8, !tbaa !54
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = getelementptr inbounds i16, ptr %62, i64 %65
  %69 = getelementptr i16, ptr %68, i64 -1
  br label %70

70:                                               ; preds = %67, %70
  %71 = phi i64 [ 0, %67 ], [ %76, %70 ]
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i16, ptr %59, i64 %71
  %74 = load i16, ptr %73, align 2, !tbaa !61
  %75 = getelementptr i16, ptr %69, i64 %72
  store i16 %74, ptr %75, align 2, !tbaa !61
  %76 = add nuw nsw i64 %71, 1
  %77 = icmp eq i64 %76, %65
  br i1 %77, label %78, label %70, !llvm.loop !72

78:                                               ; preds = %70, %64, %61, %58
  %79 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %19, ptr noundef %1) #10
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load ptr, ptr %24, align 8, !tbaa !65
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %84

84:                                               ; preds = %78
  %85 = add nsw i64 %29, 1
  %86 = load i64, ptr %11, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #9
  %87 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef nonnull %25) #9
  %88 = load ptr, ptr %24, align 8, !tbaa !65
  %89 = load ptr, ptr %26, align 8, !tbaa !66
  %90 = call i32 %88(ptr noundef nonnull %3, i64 noundef %29, i64 noundef %86, ptr noundef %89) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #9
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 0, i32 %81
  br label %93

93:                                               ; preds = %78, %84, %32, %27
  %94 = phi i32 [ 0, %27 ], [ 0, %32 ], [ %92, %84 ], [ %81, %78 ]
  %95 = phi i64 [ %29, %27 ], [ %29, %32 ], [ %85, %84 ], [ %29, %78 ]
  %96 = add nuw nsw i64 %28, 1
  %97 = load i64, ptr %11, align 8, !tbaa !55
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %27, label %99, !llvm.loop !73

99:                                               ; preds = %93
  %100 = icmp eq i32 %94, 0
  br label %101

101:                                              ; preds = %99, %17
  %102 = phi i1 [ false, %17 ], [ %100, %99 ]
  %103 = call ptr @DestroyCacheView(ptr noundef %19) #9
  %104 = call ptr @DestroyCacheView(ptr noundef %18) #9
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %106 = load i32, ptr %105, align 8, !tbaa !68
  %107 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 77
  store i32 %106, ptr %107, align 8, !tbaa !68
  %108 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26
  %109 = load i64, ptr %108, align 8, !tbaa.struct !56
  %110 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa.struct !58
  %112 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 2
  %113 = load i64, ptr %112, align 8, !tbaa.struct !59
  %114 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 26, i32 3
  %115 = load i64, ptr %114, align 8, !tbaa.struct !60
  %116 = icmp eq i64 %111, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %101
  %118 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %119 = load i64, ptr %118, align 8, !tbaa !54
  %120 = add i64 %115, %119
  %121 = sub i64 %111, %120
  br label %122

122:                                              ; preds = %117, %101
  %123 = phi i64 [ %121, %117 ], [ %115, %101 ]
  %124 = icmp eq i64 %109, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %127 = load i64, ptr %126, align 8, !tbaa !55
  %128 = add i64 %113, %127
  %129 = sub i64 %109, %128
  br label %130

130:                                              ; preds = %125, %122
  %131 = phi i64 [ %129, %125 ], [ %113, %122 ]
  store i64 %111, ptr %108, align 8, !tbaa.struct !56
  store i64 %109, ptr %110, align 8, !tbaa.struct !58
  store i64 %123, ptr %112, align 8, !tbaa.struct !59
  store i64 %131, ptr %114, align 8, !tbaa.struct !60
  br i1 %102, label %132, label %134

132:                                              ; preds = %130
  %133 = call ptr @DestroyImage(ptr noundef nonnull %15) #9
  br label %134

134:                                              ; preds = %130, %132, %10
  %135 = phi ptr [ null, %10 ], [ %133, %132 ], [ %15, %130 ]
  ret ptr %135
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ChopImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 217, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #9
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = load i64, ptr %1, align 8
  %16 = add nsw i64 %15, %14
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = add nsw i64 %22, %20
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %27 = load i64, ptr %26, align 8, !tbaa !54
  %28 = icmp sgt i64 %14, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !55
  %32 = icmp sgt i64 %20, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25, %18, %12
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 225, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %34) #9
  br label %222

36:                                               ; preds = %29
  %37 = icmp sgt i64 %16, %27
  %38 = sub nsw i64 %27, %14
  %39 = select i1 %37, i64 %38, i64 %15
  %40 = icmp sgt i64 %23, %31
  %41 = sub nsw i64 %31, %20
  %42 = select i1 %40, i64 %41, i64 %22
  %43 = tail call i64 @llvm.smax.i64(i64 %14, i64 0)
  %44 = tail call i64 @llvm.smin.i64(i64 %14, i64 0)
  %45 = add i64 %39, %44
  %46 = tail call i64 @llvm.smax.i64(i64 %20, i64 0)
  %47 = tail call i64 @llvm.smin.i64(i64 %20, i64 0)
  %48 = add i64 %42, %47
  %49 = sub i64 %27, %45
  %50 = sub i64 %31, %48
  %51 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %49, i64 noundef %50, i32 noundef 1, ptr noundef %2) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %222, label %53

53:                                               ; preds = %36
  %54 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #9
  %55 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %51, ptr noundef %2) #9
  %56 = icmp sgt i64 %20, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 7
  %59 = add i64 %45, %43
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %76

63:                                               ; preds = %137, %53
  %64 = phi i32 [ 1, %53 ], [ %138, %137 ]
  %65 = phi i64 [ 0, %53 ], [ %139, %137 ]
  %66 = add i64 %48, %46
  %67 = load i64, ptr %30, align 8, !tbaa !55
  %68 = sub i64 %67, %66
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %212

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 7
  %72 = add i64 %45, %43
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %142

76:                                               ; preds = %57, %137
  %77 = phi i64 [ 0, %57 ], [ %140, %137 ]
  %78 = phi i64 [ 0, %57 ], [ %139, %137 ]
  %79 = phi i32 [ 1, %57 ], [ %138, %137 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %137, label %81

81:                                               ; preds = %76
  %82 = load i64, ptr %26, align 8, !tbaa !54
  %83 = call ptr @GetCacheViewVirtualPixels(ptr noundef %54, i64 noundef 0, i64 noundef %77, i64 noundef %82, i64 noundef 1, ptr noundef %2) #10
  %84 = load i64, ptr %58, align 8, !tbaa !54
  %85 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %55, i64 noundef 0, i64 noundef %77, i64 noundef %84, i64 noundef 1, ptr noundef %2) #10
  %86 = icmp eq ptr %83, null
  %87 = icmp eq ptr %85, null
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %137, label %89

89:                                               ; preds = %81
  %90 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %54) #9
  %91 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %55) #9
  %92 = load i64, ptr %26, align 8, !tbaa !54
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  %95 = icmp ne ptr %90, null
  br label %96

96:                                               ; preds = %94, %115
  %97 = phi ptr [ %85, %94 ], [ %117, %115 ]
  %98 = phi i64 [ 0, %94 ], [ %119, %115 ]
  %99 = phi ptr [ %91, %94 ], [ %116, %115 ]
  %100 = phi ptr [ %83, %94 ], [ %118, %115 ]
  %101 = icmp sle i64 %14, %98
  %102 = icmp slt i64 %98, %59
  %103 = and i1 %101, %102
  br i1 %103, label %115, label %104

104:                                              ; preds = %96
  %105 = load i64, ptr %100, align 2
  store i64 %105, ptr %97, align 2
  %106 = icmp ne ptr %99, null
  %107 = select i1 %95, i1 %106, i1 false
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds i16, ptr %90, i64 %98
  %110 = load i16, ptr %109, align 2, !tbaa !61
  %111 = getelementptr inbounds i16, ptr %99, i64 1
  store i16 %110, ptr %99, align 2, !tbaa !61
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi ptr [ %111, %108 ], [ %99, %104 ]
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 1
  br label %115

115:                                              ; preds = %96, %112
  %116 = phi ptr [ %113, %112 ], [ %99, %96 ]
  %117 = phi ptr [ %114, %112 ], [ %97, %96 ]
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 1
  %119 = add nuw nsw i64 %98, 1
  %120 = load i64, ptr %26, align 8, !tbaa !54
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %96, label %122, !llvm.loop !74

122:                                              ; preds = %115, %89
  %123 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %55, ptr noundef %2) #10
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = load ptr, ptr %60, align 8, !tbaa !65
  %127 = icmp eq ptr %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %122
  %129 = add nsw i64 %78, 1
  %130 = load i64, ptr %30, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  %131 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull %61) #9
  %132 = load ptr, ptr %60, align 8, !tbaa !65
  %133 = load ptr, ptr %62, align 8, !tbaa !66
  %134 = call i32 %132(ptr noundef nonnull %5, i64 noundef %78, i64 noundef %130, ptr noundef %133) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, i32 0, i32 %125
  br label %137

137:                                              ; preds = %122, %128, %81, %76
  %138 = phi i32 [ 0, %76 ], [ 0, %81 ], [ %136, %128 ], [ %125, %122 ]
  %139 = phi i64 [ %78, %76 ], [ %78, %81 ], [ %129, %128 ], [ %78, %122 ]
  %140 = add nuw nsw i64 %77, 1
  %141 = icmp eq i64 %140, %20
  br i1 %141, label %63, label %76, !llvm.loop !75

142:                                              ; preds = %70, %205
  %143 = phi i64 [ 0, %70 ], [ %208, %205 ]
  %144 = phi i64 [ %65, %70 ], [ %207, %205 ]
  %145 = phi i32 [ %64, %70 ], [ %206, %205 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %205, label %147

147:                                              ; preds = %142
  %148 = add i64 %143, %66
  %149 = load i64, ptr %26, align 8, !tbaa !54
  %150 = call ptr @GetCacheViewVirtualPixels(ptr noundef %54, i64 noundef 0, i64 noundef %148, i64 noundef %149, i64 noundef 1, ptr noundef %2) #10
  %151 = add nuw nsw i64 %143, %46
  %152 = load i64, ptr %71, align 8, !tbaa !54
  %153 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %55, i64 noundef 0, i64 noundef %151, i64 noundef %152, i64 noundef 1, ptr noundef %2) #10
  %154 = icmp eq ptr %150, null
  %155 = icmp eq ptr %153, null
  %156 = select i1 %154, i1 true, i1 %155
  br i1 %156, label %205, label %157

157:                                              ; preds = %147
  %158 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %54) #9
  %159 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %55) #9
  %160 = load i64, ptr %26, align 8, !tbaa !54
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %190

162:                                              ; preds = %157
  %163 = icmp ne ptr %158, null
  br label %164

164:                                              ; preds = %162, %183
  %165 = phi ptr [ %153, %162 ], [ %185, %183 ]
  %166 = phi i64 [ 0, %162 ], [ %187, %183 ]
  %167 = phi ptr [ %159, %162 ], [ %184, %183 ]
  %168 = phi ptr [ %150, %162 ], [ %186, %183 ]
  %169 = icmp sle i64 %14, %166
  %170 = icmp slt i64 %166, %72
  %171 = and i1 %169, %170
  br i1 %171, label %183, label %172

172:                                              ; preds = %164
  %173 = load i64, ptr %168, align 2
  store i64 %173, ptr %165, align 2
  %174 = icmp ne ptr %167, null
  %175 = select i1 %163, i1 %174, i1 false
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = getelementptr inbounds i16, ptr %158, i64 %166
  %178 = load i16, ptr %177, align 2, !tbaa !61
  %179 = getelementptr inbounds i16, ptr %167, i64 1
  store i16 %178, ptr %167, align 2, !tbaa !61
  br label %180

180:                                              ; preds = %176, %172
  %181 = phi ptr [ %179, %176 ], [ %167, %172 ]
  %182 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 1
  br label %183

183:                                              ; preds = %164, %180
  %184 = phi ptr [ %181, %180 ], [ %167, %164 ]
  %185 = phi ptr [ %182, %180 ], [ %165, %164 ]
  %186 = getelementptr inbounds %struct._PixelPacket, ptr %168, i64 1
  %187 = add nuw nsw i64 %166, 1
  %188 = load i64, ptr %26, align 8, !tbaa !54
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %164, label %190, !llvm.loop !76

190:                                              ; preds = %183, %157
  %191 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %55, ptr noundef %2) #10
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = load ptr, ptr %73, align 8, !tbaa !65
  %195 = icmp eq ptr %194, null
  br i1 %195, label %205, label %196

196:                                              ; preds = %190
  %197 = add nsw i64 %144, 1
  %198 = load i64, ptr %30, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  %199 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull %74) #9
  %200 = load ptr, ptr %73, align 8, !tbaa !65
  %201 = load ptr, ptr %75, align 8, !tbaa !66
  %202 = call i32 %200(ptr noundef nonnull %4, i64 noundef %144, i64 noundef %198, ptr noundef %201) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %203, i32 0, i32 %193
  br label %205

205:                                              ; preds = %190, %196, %147, %142
  %206 = phi i32 [ 0, %142 ], [ 0, %147 ], [ %204, %196 ], [ %193, %190 ]
  %207 = phi i64 [ %144, %142 ], [ %144, %147 ], [ %197, %196 ], [ %144, %190 ]
  %208 = add nuw nsw i64 %143, 1
  %209 = load i64, ptr %30, align 8, !tbaa !55
  %210 = sub i64 %209, %66
  %211 = icmp slt i64 %208, %210
  br i1 %211, label %142, label %212, !llvm.loop !77

212:                                              ; preds = %205, %63
  %213 = phi i32 [ %64, %63 ], [ %206, %205 ]
  %214 = call ptr @DestroyCacheView(ptr noundef %55) #9
  %215 = call ptr @DestroyCacheView(ptr noundef %54) #9
  %216 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %217 = load i32, ptr %216, align 8, !tbaa !68
  %218 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 77
  store i32 %217, ptr %218, align 8, !tbaa !68
  %219 = icmp eq i32 %213, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %212
  %221 = call ptr @DestroyImage(ptr noundef nonnull %51) #9
  br label %222

222:                                              ; preds = %212, %220, %36, %33
  %223 = phi ptr [ null, %33 ], [ null, %36 ], [ %221, %220 ], [ %51, %212 ]
  ret ptr %223
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ConsolidateCMYKImages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 432, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = tail call ptr @NewImageList() #9
  store ptr %11, ptr %3, align 8, !tbaa !78
  %12 = tail call i64 @GetImageListLength(ptr noundef %0) #9
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %18, label %259

14:                                               ; preds = %254
  %15 = add nuw nsw i64 %20, 4
  %16 = call i64 @GetImageListLength(ptr noundef nonnull %257) #9
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %259, !llvm.loop !79

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %257, %14 ], [ %0, %10 ]
  %20 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !55
  %25 = call ptr @CloneImage(ptr noundef %19, i64 noundef %22, i64 noundef %24, i32 noundef 1, ptr noundef %1) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %259, label %27

27:                                               ; preds = %18
  %28 = call i32 @SetImageStorageClass(ptr noundef nonnull %25, i32 noundef 1) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %259, label %30

30:                                               ; preds = %27
  %31 = call i32 @SetImageColorspace(ptr noundef nonnull %25, i32 noundef 12) #9
  %32 = call ptr @AcquireVirtualCacheView(ptr noundef %19, ptr noundef %1) #9
  %33 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #9
  %34 = load i64, ptr %23, align 8, !tbaa !55
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %42

38:                                               ; preds = %78
  %39 = add nuw nsw i64 %43, 1
  %40 = load i64, ptr %23, align 8, !tbaa !55
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %81, !llvm.loop !80

42:                                               ; preds = %36, %38
  %43 = phi i64 [ 0, %36 ], [ %39, %38 ]
  %44 = load i64, ptr %21, align 8, !tbaa !54
  %45 = call ptr @GetCacheViewVirtualPixels(ptr noundef %32, i64 noundef 0, i64 noundef %43, i64 noundef %44, i64 noundef 1, ptr noundef %1) #10
  %46 = load i64, ptr %37, align 8, !tbaa !54
  %47 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %43, i64 noundef %46, i64 noundef 1, ptr noundef %1) #10
  %48 = icmp eq ptr %45, null
  %49 = icmp eq ptr %47, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %78, label %51

51:                                               ; preds = %42
  %52 = load i64, ptr %21, align 8, !tbaa !54
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51, %66
  %55 = phi ptr [ %70, %66 ], [ %47, %51 ]
  %56 = phi i64 [ %71, %66 ], [ 0, %51 ]
  %57 = phi ptr [ %69, %66 ], [ %45, %51 ]
  %58 = call float @GetPixelIntensity(ptr noundef %19, ptr noundef %57) #10
  %59 = fsub float 6.553500e+04, %58
  %60 = fcmp ugt float %59, 0.000000e+00
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = fcmp ult float %59, 6.553500e+04
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = fadd float %59, 5.000000e-01
  %65 = fptoui float %64 to i16
  br label %66

66:                                               ; preds = %54, %61, %63
  %67 = phi i16 [ %65, %63 ], [ 0, %54 ], [ -1, %61 ]
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 0, i32 2
  store i16 %67, ptr %68, align 2, !tbaa !81
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 1
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %55, i64 1
  %71 = add nuw nsw i64 %56, 1
  %72 = load i64, ptr %21, align 8, !tbaa !54
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %54, label %74, !llvm.loop !82

74:                                               ; preds = %66, %51
  %75 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %33, ptr noundef %1) #10
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i32 5, i32 0
  br label %78

78:                                               ; preds = %74, %42
  %79 = phi i32 [ 5, %42 ], [ %77, %74 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %38, label %81

81:                                               ; preds = %38, %78, %30
  %82 = call ptr @DestroyCacheView(ptr noundef %33) #9
  %83 = call ptr @DestroyCacheView(ptr noundef %32) #9
  %84 = call ptr @GetNextImageInList(ptr noundef %19) #9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %259, label %86

86:                                               ; preds = %81
  %87 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %84, ptr noundef %1) #9
  %88 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #9
  %89 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 8
  %90 = load i64, ptr %89, align 8, !tbaa !55
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %138

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 7
  %94 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %99

95:                                               ; preds = %135
  %96 = add nuw nsw i64 %100, 1
  %97 = load i64, ptr %89, align 8, !tbaa !55
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %138, !llvm.loop !83

99:                                               ; preds = %92, %95
  %100 = phi i64 [ 0, %92 ], [ %96, %95 ]
  %101 = load i64, ptr %93, align 8, !tbaa !54
  %102 = call ptr @GetCacheViewVirtualPixels(ptr noundef %87, i64 noundef 0, i64 noundef %100, i64 noundef %101, i64 noundef 1, ptr noundef %1) #10
  %103 = load i64, ptr %94, align 8, !tbaa !54
  %104 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %88, i64 noundef 0, i64 noundef %100, i64 noundef %103, i64 noundef 1, ptr noundef %1) #10
  %105 = icmp eq ptr %102, null
  %106 = icmp eq ptr %104, null
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %135, label %108

108:                                              ; preds = %99
  %109 = load i64, ptr %93, align 8, !tbaa !54
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %108, %123
  %112 = phi ptr [ %127, %123 ], [ %104, %108 ]
  %113 = phi i64 [ %128, %123 ], [ 0, %108 ]
  %114 = phi ptr [ %126, %123 ], [ %102, %108 ]
  %115 = call float @GetPixelIntensity(ptr noundef nonnull %84, ptr noundef %114) #10
  %116 = fsub float 6.553500e+04, %115
  %117 = fcmp ugt float %116, 0.000000e+00
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = fcmp ult float %116, 6.553500e+04
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = fadd float %116, 5.000000e-01
  %122 = fptoui float %121 to i16
  br label %123

123:                                              ; preds = %111, %118, %120
  %124 = phi i16 [ %122, %120 ], [ 0, %111 ], [ -1, %118 ]
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 0, i32 1
  store i16 %124, ptr %125, align 2, !tbaa !84
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %114, i64 1
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 1
  %128 = add nuw nsw i64 %113, 1
  %129 = load i64, ptr %93, align 8, !tbaa !54
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %111, label %131, !llvm.loop !85

131:                                              ; preds = %123, %108
  %132 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %88, ptr noundef %1) #10
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 11, i32 0
  br label %135

135:                                              ; preds = %131, %99
  %136 = phi i32 [ 11, %99 ], [ %134, %131 ]
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %95, label %138

138:                                              ; preds = %95, %135, %86
  %139 = call ptr @DestroyCacheView(ptr noundef %88) #9
  %140 = call ptr @DestroyCacheView(ptr noundef %87) #9
  %141 = call ptr @GetNextImageInList(ptr noundef nonnull %84) #9
  %142 = icmp eq ptr %141, null
  br i1 %142, label %259, label %143

143:                                              ; preds = %138
  %144 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %141, ptr noundef %1) #9
  %145 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #9
  %146 = getelementptr inbounds %struct._Image, ptr %141, i64 0, i32 8
  %147 = load i64, ptr %146, align 8, !tbaa !55
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %194

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct._Image, ptr %141, i64 0, i32 7
  %151 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %156

152:                                              ; preds = %191
  %153 = add nuw nsw i64 %157, 1
  %154 = load i64, ptr %146, align 8, !tbaa !55
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %194, !llvm.loop !86

156:                                              ; preds = %149, %152
  %157 = phi i64 [ 0, %149 ], [ %153, %152 ]
  %158 = load i64, ptr %150, align 8, !tbaa !54
  %159 = call ptr @GetCacheViewVirtualPixels(ptr noundef %144, i64 noundef 0, i64 noundef %157, i64 noundef %158, i64 noundef 1, ptr noundef %1) #10
  %160 = load i64, ptr %151, align 8, !tbaa !54
  %161 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %145, i64 noundef 0, i64 noundef %157, i64 noundef %160, i64 noundef 1, ptr noundef %1) #10
  %162 = icmp eq ptr %159, null
  %163 = icmp eq ptr %161, null
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %191, label %165

165:                                              ; preds = %156
  %166 = load i64, ptr %150, align 8, !tbaa !54
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %165, %180
  %169 = phi ptr [ %183, %180 ], [ %161, %165 ]
  %170 = phi i64 [ %184, %180 ], [ 0, %165 ]
  %171 = phi ptr [ %182, %180 ], [ %159, %165 ]
  %172 = call float @GetPixelIntensity(ptr noundef nonnull %141, ptr noundef %171) #10
  %173 = fsub float 6.553500e+04, %172
  %174 = fcmp ugt float %173, 0.000000e+00
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = fcmp ult float %173, 6.553500e+04
  br i1 %176, label %177, label %180

177:                                              ; preds = %175
  %178 = fadd float %173, 5.000000e-01
  %179 = fptoui float %178 to i16
  br label %180

180:                                              ; preds = %168, %175, %177
  %181 = phi i16 [ %179, %177 ], [ 0, %168 ], [ -1, %175 ]
  store i16 %181, ptr %169, align 2, !tbaa !87
  %182 = getelementptr inbounds %struct._PixelPacket, ptr %171, i64 1
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %169, i64 1
  %184 = add nuw nsw i64 %170, 1
  %185 = load i64, ptr %150, align 8, !tbaa !54
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %168, label %187, !llvm.loop !88

187:                                              ; preds = %180, %165
  %188 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %145, ptr noundef %1) #10
  %189 = icmp eq i32 %188, 0
  %190 = select i1 %189, i32 17, i32 0
  br label %191

191:                                              ; preds = %187, %156
  %192 = phi i32 [ 17, %156 ], [ %190, %187 ]
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %152, label %194

194:                                              ; preds = %152, %191, %143
  %195 = call ptr @DestroyCacheView(ptr noundef %145) #9
  %196 = call ptr @DestroyCacheView(ptr noundef %144) #9
  %197 = call ptr @GetNextImageInList(ptr noundef nonnull %141) #9
  %198 = icmp eq ptr %197, null
  br i1 %198, label %259, label %199

199:                                              ; preds = %194
  %200 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %197, ptr noundef %1) #9
  %201 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %25, ptr noundef %1) #9
  %202 = getelementptr inbounds %struct._Image, ptr %197, i64 0, i32 8
  %203 = load i64, ptr %202, align 8, !tbaa !55
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %254

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct._Image, ptr %197, i64 0, i32 7
  %207 = getelementptr inbounds %struct._Image, ptr %25, i64 0, i32 7
  br label %212

208:                                              ; preds = %251
  %209 = add nuw nsw i64 %213, 1
  %210 = load i64, ptr %202, align 8, !tbaa !55
  %211 = icmp slt i64 %209, %210
  br i1 %211, label %212, label %254, !llvm.loop !89

212:                                              ; preds = %205, %208
  %213 = phi i64 [ 0, %205 ], [ %209, %208 ]
  %214 = load i64, ptr %206, align 8, !tbaa !54
  %215 = call ptr @GetCacheViewVirtualPixels(ptr noundef %200, i64 noundef 0, i64 noundef %213, i64 noundef %214, i64 noundef 1, ptr noundef %1) #10
  %216 = load i64, ptr %207, align 8, !tbaa !54
  %217 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %201, i64 noundef 0, i64 noundef %213, i64 noundef %216, i64 noundef 1, ptr noundef %1) #10
  %218 = icmp eq ptr %215, null
  %219 = icmp eq ptr %217, null
  %220 = select i1 %218, i1 true, i1 %219
  br i1 %220, label %251, label %221

221:                                              ; preds = %212
  %222 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %201) #9
  %223 = load i64, ptr %206, align 8, !tbaa !54
  %224 = icmp sgt i64 %223, 0
  br i1 %224, label %225, label %247

225:                                              ; preds = %221
  %226 = icmp eq ptr %222, null
  br label %227

227:                                              ; preds = %225, %242
  %228 = phi i64 [ 0, %225 ], [ %244, %242 ]
  %229 = phi ptr [ %215, %225 ], [ %243, %242 ]
  br i1 %226, label %242, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds i16, ptr %222, i64 %228
  %232 = call float @GetPixelIntensity(ptr noundef nonnull %197, ptr noundef %229) #10
  %233 = fsub float 6.553500e+04, %232
  %234 = fcmp ugt float %233, 0.000000e+00
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = fcmp ult float %233, 6.553500e+04
  br i1 %236, label %237, label %240

237:                                              ; preds = %235
  %238 = fadd float %233, 5.000000e-01
  %239 = fptoui float %238 to i16
  br label %240

240:                                              ; preds = %230, %235, %237
  %241 = phi i16 [ %239, %237 ], [ 0, %230 ], [ -1, %235 ]
  store i16 %241, ptr %231, align 2, !tbaa !61
  br label %242

242:                                              ; preds = %240, %227
  %243 = getelementptr inbounds %struct._PixelPacket, ptr %229, i64 1
  %244 = add nuw nsw i64 %228, 1
  %245 = load i64, ptr %206, align 8, !tbaa !54
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %227, label %247, !llvm.loop !90

247:                                              ; preds = %242, %221
  %248 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %201, ptr noundef %1) #10
  %249 = icmp eq i32 %248, 0
  %250 = select i1 %249, i32 23, i32 0
  br label %251

251:                                              ; preds = %247, %212
  %252 = phi i32 [ 23, %212 ], [ %250, %247 ]
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %208, label %254

254:                                              ; preds = %208, %251, %199
  %255 = call ptr @DestroyCacheView(ptr noundef %201) #9
  %256 = call ptr @DestroyCacheView(ptr noundef %200) #9
  call void @AppendImageToList(ptr noundef nonnull %3, ptr noundef nonnull %25) #9
  %257 = call ptr @GetNextImageInList(ptr noundef nonnull %197) #9
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %14

259:                                              ; preds = %14, %18, %27, %81, %138, %194, %254, %10
  %260 = load ptr, ptr %3, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret ptr %260
}

declare ptr @NewImageList() local_unnamed_addr #2

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @AppendImageToList(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CropImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 643, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #9
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %13 = load i64, ptr %12, align 8, !tbaa.struct !56
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa.struct !58
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa.struct !59
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa.struct !60
  %20 = icmp eq i64 %13, 0
  %21 = icmp eq i64 %15, 0
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !55
  br label %28

28:                                               ; preds = %11, %23
  %29 = phi i64 [ %27, %23 ], [ %15, %11 ]
  %30 = phi i64 [ %25, %23 ], [ %13, %11 ]
  %31 = load i64, ptr %1, align 8
  %32 = getelementptr inbounds i8, ptr %1, i64 8
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds i8, ptr %1, i64 16
  %35 = load i64, ptr %34, align 8, !tbaa.struct !59
  %36 = getelementptr inbounds i8, ptr %1, i64 24
  %37 = load i64, ptr %36, align 8, !tbaa.struct !60
  %38 = icmp eq i64 %31, 0
  %39 = select i1 %38, i64 %30, i64 %31
  %40 = icmp eq i64 %33, 0
  %41 = select i1 %40, i64 %29, i64 %33
  %42 = sub nsw i64 %17, %35
  %43 = icmp slt i64 %42, %39
  br i1 %43, label %44, label %57

44:                                               ; preds = %28
  %45 = sub nsw i64 %19, %37
  %46 = icmp slt i64 %45, %41
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = sub nsw i64 %35, %17
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !54
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = sub nsw i64 %37, %19
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %55 = load i64, ptr %54, align 8, !tbaa !55
  %56 = icmp sgt i64 %53, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %52, %47, %44, %28
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %59 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 666, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %58) #9
  %60 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 1, i64 noundef 1, i32 noundef 1, ptr noundef %2) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %202, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 12, i32 3
  store i16 -1, ptr %63, align 2, !tbaa !91
  %64 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %60) #9
  %65 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 26
  store i64 %30, ptr %65, align 8, !tbaa.struct !56
  %66 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 26, i32 1
  store i64 %29, ptr %66, align 8, !tbaa.struct !58
  %67 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 26, i32 2
  store i64 %17, ptr %67, align 8, !tbaa.struct !59
  %68 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 26, i32 3
  store i64 %19, ptr %68, align 8, !tbaa.struct !60
  %69 = getelementptr inbounds %struct._Image, ptr %60, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 -1, i64 16, i1 false)
  %70 = load i32, ptr %69, align 4, !tbaa !92
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %202

72:                                               ; preds = %62
  store i32 1, ptr %69, align 4, !tbaa !92
  br label %202

73:                                               ; preds = %52
  %74 = icmp slt i64 %35, 0
  %75 = icmp sgt i64 %17, -1
  %76 = select i1 %74, i1 %75, i1 false
  %77 = tail call i64 @llvm.smax.i64(i64 %48, i64 0)
  %78 = select i1 %76, i64 0, i64 %77
  %79 = sub i64 0, %42
  %80 = select i1 %76, i64 %48, i64 %79
  %81 = add i64 %80, %39
  %82 = icmp slt i64 %37, 0
  %83 = icmp sgt i64 %19, -1
  %84 = select i1 %82, i1 %83, i1 false
  %85 = tail call i64 @llvm.smax.i64(i64 %53, i64 0)
  %86 = select i1 %84, i64 0, i64 %85
  %87 = sub i64 0, %45
  %88 = select i1 %84, i64 %53, i64 %87
  %89 = add i64 %88, %41
  %90 = add nsw i64 %81, %78
  %91 = icmp sgt i64 %90, %50
  %92 = sub i64 %50, %78
  %93 = select i1 %91, i64 %92, i64 %81
  %94 = tail call i64 @llvm.umin.i64(i64 %93, i64 %31)
  %95 = select i1 %38, i64 %93, i64 %94
  %96 = add nsw i64 %89, %86
  %97 = icmp sgt i64 %96, %55
  %98 = sub i64 %55, %86
  %99 = select i1 %97, i64 %98, i64 %89
  %100 = tail call i64 @llvm.umin.i64(i64 %99, i64 %33)
  %101 = select i1 %40, i64 %99, i64 %100
  %102 = add nsw i64 %78, %17
  %103 = add nsw i64 %86, %19
  %104 = icmp eq i64 %95, 0
  %105 = icmp eq i64 %101, 0
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %73
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %109 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 716, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %108) #9
  br label %202

110:                                              ; preds = %73
  %111 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %95, i64 noundef %101, i32 noundef 1, ptr noundef %2) #9
  %112 = icmp eq ptr %111, null
  br i1 %112, label %202, label %113

113:                                              ; preds = %110
  %114 = load i64, ptr %12, align 8, !tbaa !93
  %115 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 26
  store i64 %114, ptr %115, align 8, !tbaa !93
  %116 = load i64, ptr %14, align 8, !tbaa !94
  %117 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 26, i32 1
  store i64 %116, ptr %117, align 8, !tbaa !94
  %118 = add i64 %102, %30
  %119 = load i64, ptr %12, align 8, !tbaa !93
  %120 = icmp sgt i64 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %113
  %122 = add i64 %103, %29
  %123 = load i64, ptr %14, align 8, !tbaa !94
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121, %113
  store i64 %30, ptr %115, align 8, !tbaa !93
  store i64 %29, ptr %117, align 8, !tbaa !94
  br label %126

126:                                              ; preds = %125, %121
  %127 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 26, i32 2
  store i64 %102, ptr %127, align 8, !tbaa !95
  %128 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 26, i32 3
  store i64 %103, ptr %128, align 8, !tbaa !96
  %129 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #9
  %130 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %111, ptr noundef %2) #9
  %131 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 8
  %132 = load i64, ptr %131, align 8, !tbaa !55
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %196

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 7
  %136 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %137 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %138 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %139

139:                                              ; preds = %134, %181
  %140 = phi i32 [ 1, %134 ], [ %183, %181 ]
  %141 = phi i64 [ 0, %134 ], [ %184, %181 ]
  %142 = phi i64 [ 0, %134 ], [ %182, %181 ]
  %143 = icmp eq i32 %140, 0
  br i1 %143, label %181, label %144

144:                                              ; preds = %139
  %145 = add nuw nsw i64 %141, %86
  %146 = load i64, ptr %135, align 8, !tbaa !54
  %147 = call ptr @GetCacheViewVirtualPixels(ptr noundef %129, i64 noundef %78, i64 noundef %145, i64 noundef %146, i64 noundef 1, ptr noundef %2) #10
  %148 = load i64, ptr %135, align 8, !tbaa !54
  %149 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %130, i64 noundef 0, i64 noundef %141, i64 noundef %148, i64 noundef 1, ptr noundef %2) #10
  %150 = icmp eq ptr %147, null
  %151 = icmp eq ptr %149, null
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %181, label %153

153:                                              ; preds = %144
  %154 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %129) #9
  %155 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %130) #9
  %156 = load i64, ptr %135, align 8, !tbaa !54
  %157 = shl i64 %156, 3
  %158 = call ptr @CopyMagickMemory(ptr noundef %149, ptr noundef %147, i64 noundef %157) #9
  %159 = icmp ne ptr %154, null
  %160 = icmp ne ptr %155, null
  %161 = select i1 %159, i1 %160, i1 false
  br i1 %161, label %162, label %166

162:                                              ; preds = %153
  %163 = load i64, ptr %135, align 8, !tbaa !54
  %164 = shl i64 %163, 1
  %165 = call ptr @CopyMagickMemory(ptr noundef nonnull %155, ptr noundef nonnull %154, i64 noundef %164) #9
  br label %166

166:                                              ; preds = %162, %153
  %167 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %130, ptr noundef %2) #10
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = load ptr, ptr %136, align 8, !tbaa !65
  %171 = icmp eq ptr %170, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %166
  %173 = add nsw i64 %142, 1
  %174 = load i64, ptr %54, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  %175 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.6, ptr noundef nonnull %137) #9
  %176 = load ptr, ptr %136, align 8, !tbaa !65
  %177 = load ptr, ptr %138, align 8, !tbaa !66
  %178 = call i32 %176(ptr noundef nonnull %4, i64 noundef %142, i64 noundef %174, ptr noundef %177) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %179, i32 0, i32 %169
  br label %181

181:                                              ; preds = %166, %172, %144, %139
  %182 = phi i64 [ %142, %139 ], [ %142, %144 ], [ %173, %172 ], [ %142, %166 ]
  %183 = phi i32 [ 0, %139 ], [ 0, %144 ], [ %180, %172 ], [ %169, %166 ]
  %184 = add nuw nsw i64 %141, 1
  %185 = load i64, ptr %131, align 8, !tbaa !55
  %186 = icmp slt i64 %184, %185
  br i1 %186, label %139, label %187, !llvm.loop !97

187:                                              ; preds = %181
  %188 = icmp eq i32 %183, 0
  %189 = call ptr @DestroyCacheView(ptr noundef %130) #9
  %190 = call ptr @DestroyCacheView(ptr noundef %129) #9
  %191 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %192 = load i32, ptr %191, align 8, !tbaa !68
  %193 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 77
  store i32 %192, ptr %193, align 8, !tbaa !68
  br i1 %188, label %194, label %202

194:                                              ; preds = %187
  %195 = call ptr @DestroyImage(ptr noundef nonnull %111) #9
  br label %202

196:                                              ; preds = %126
  %197 = tail call ptr @DestroyCacheView(ptr noundef %130) #9
  %198 = tail call ptr @DestroyCacheView(ptr noundef %129) #9
  %199 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %200 = load i32, ptr %199, align 8, !tbaa !68
  %201 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 77
  store i32 %200, ptr %201, align 8, !tbaa !68
  br label %202

202:                                              ; preds = %196, %187, %194, %110, %62, %72, %57, %107
  %203 = phi ptr [ null, %107 ], [ null, %57 ], [ %60, %72 ], [ %60, %62 ], [ null, %110 ], [ %195, %194 ], [ %111, %187 ], [ %111, %196 ]
  ret ptr %203
}

declare i32 @SetImageBackgroundColor(ptr noundef) local_unnamed_addr #2

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CropImageToTiles(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 856, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #9
  br label %13

13:                                               ; preds = %10, %3
  %14 = tail call ptr @NewImageList() #9
  store ptr %14, ptr %4, align 8, !tbaa !78
  %15 = tail call ptr @NewImageList() #9
  %16 = call i32 @ParseGravityGeometry(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2) #9
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %208, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !55
  %24 = load i64, ptr %5, align 8, !tbaa !98
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i64 1, ptr %5, align 8, !tbaa !98
  br label %27

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !99
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i64 1, ptr %28, align 8, !tbaa !99
  br label %32

32:                                               ; preds = %31, %27
  %33 = and i32 %16, 8192
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !100
  %37 = call i64 @llvm.abs.i64(i64 %36, i1 true)
  %38 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !101
  %40 = call i64 @llvm.abs.i64(i64 %39, i1 true)
  %41 = sub nsw i64 0, %40
  %42 = select i1 %34, i64 %41, i64 %40
  %43 = add i64 %23, %42
  %44 = sub nsw i64 0, %37
  %45 = select i1 %34, i64 %44, i64 %37
  %46 = add i64 %21, %45
  %47 = uitofp i64 %46 to double
  %48 = load i64, ptr %5, align 8, !tbaa !98
  %49 = uitofp i64 %48 to double
  %50 = fdiv double %47, %49
  %51 = uitofp i64 %43 to double
  %52 = load i64, ptr %28, align 8, !tbaa !99
  %53 = uitofp i64 %52 to double
  %54 = fdiv double %51, %53
  %55 = fcmp olt double %50, 1.000000e+00
  %56 = select i1 %55, double 1.000000e+00, double %50
  %57 = fcmp olt double %54, 1.000000e+00
  %58 = select i1 %57, double 1.000000e+00, double %54
  %59 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %60 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  %61 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %62 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %63 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  %64 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %65 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 3
  %66 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 1
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %68 = icmp eq i64 %46, 0
  %69 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %70 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  %71 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %72 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  %73 = getelementptr inbounds %struct._RectangleInfo, ptr %6, i64 0, i32 2
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  br label %75

75:                                               ; preds = %203, %32
  %76 = phi ptr [ %15, %32 ], [ %204, %203 ]
  %77 = phi double [ 0.000000e+00, %32 ], [ %80, %203 ]
  %78 = fcmp olt double %77, %51
  br i1 %78, label %79, label %206

79:                                               ; preds = %75
  %80 = fadd double %58, %77
  br i1 %34, label %81, label %107

81:                                               ; preds = %79
  %82 = load i64, ptr %62, align 8
  %83 = call i64 @llvm.smin.i64(i64 %82, i64 0)
  %84 = sitofp i64 %83 to double
  %85 = fsub double %77, %84
  %86 = fptrunc double %85 to float
  %87 = fpext float %86 to double
  %88 = call double @llvm.floor.f64(double %87)
  %89 = fsub double %87, %88
  %90 = call double @llvm.ceil.f64(double %87)
  %91 = fsub double %90, %87
  %92 = fcmp olt double %89, %91
  %93 = select i1 %92, double %88, double %90
  %94 = fptosi double %93 to i64
  store i64 %94, ptr %63, align 8, !tbaa !101
  %95 = call i64 @llvm.smax.i64(i64 %82, i64 0)
  %96 = sitofp i64 %95 to double
  %97 = fadd double %80, %96
  %98 = fptrunc double %97 to float
  %99 = fpext float %98 to double
  %100 = call double @llvm.floor.f64(double %99)
  %101 = fsub double %99, %100
  %102 = call double @llvm.ceil.f64(double %99)
  %103 = fsub double %102, %99
  %104 = fcmp olt double %101, %103
  %105 = select i1 %104, double %100, double %102
  %106 = fptoui double %105 to i64
  store i64 %106, ptr %64, align 8, !tbaa !99
  br label %133

107:                                              ; preds = %79
  %108 = load i64, ptr %59, align 8
  %109 = call i64 @llvm.smax.i64(i64 %108, i64 0)
  %110 = sitofp i64 %109 to double
  %111 = fsub double %77, %110
  %112 = fptrunc double %111 to float
  %113 = fpext float %112 to double
  %114 = call double @llvm.floor.f64(double %113)
  %115 = fsub double %113, %114
  %116 = call double @llvm.ceil.f64(double %113)
  %117 = fsub double %116, %113
  %118 = fcmp olt double %115, %117
  %119 = select i1 %118, double %114, double %116
  %120 = fptosi double %119 to i64
  store i64 %120, ptr %60, align 8, !tbaa !101
  %121 = call i64 @llvm.smin.i64(i64 %108, i64 0)
  %122 = sitofp i64 %121 to double
  %123 = fadd double %80, %122
  %124 = fptrunc double %123 to float
  %125 = fpext float %124 to double
  %126 = call double @llvm.floor.f64(double %125)
  %127 = fsub double %125, %126
  %128 = call double @llvm.ceil.f64(double %125)
  %129 = fsub double %128, %125
  %130 = fcmp olt double %127, %129
  %131 = select i1 %130, double %126, double %128
  %132 = fptoui double %131 to i64
  store i64 %132, ptr %61, align 8, !tbaa !99
  br label %133

133:                                              ; preds = %107, %81
  %134 = phi i64 [ %106, %81 ], [ %132, %107 ]
  %135 = phi i64 [ %94, %81 ], [ %120, %107 ]
  %136 = sub i64 %134, %135
  store i64 %136, ptr %66, align 8, !tbaa !99
  %137 = load i64, ptr %67, align 8, !tbaa !96
  %138 = add nsw i64 %137, %135
  store i64 %138, ptr %65, align 8, !tbaa !101
  br i1 %68, label %203, label %139

139:                                              ; preds = %133, %201
  %140 = phi double [ %141, %201 ], [ 0.000000e+00, %133 ]
  %141 = fadd double %56, %140
  br i1 %34, label %142, label %167

142:                                              ; preds = %139
  %143 = load i64, ptr %71, align 8
  %144 = call i64 @llvm.smin.i64(i64 %143, i64 0)
  %145 = sitofp i64 %144 to double
  %146 = fsub double %140, %145
  %147 = fptrunc double %146 to float
  %148 = fpext float %147 to double
  %149 = call double @llvm.floor.f64(double %148)
  %150 = fsub double %148, %149
  %151 = call double @llvm.ceil.f64(double %148)
  %152 = fsub double %151, %148
  %153 = fcmp olt double %150, %152
  %154 = select i1 %153, double %149, double %151
  %155 = fptosi double %154 to i64
  store i64 %155, ptr %72, align 8, !tbaa !100
  %156 = call i64 @llvm.smax.i64(i64 %143, i64 0)
  %157 = sitofp i64 %156 to double
  %158 = fadd double %141, %157
  %159 = fptrunc double %158 to float
  %160 = fpext float %159 to double
  %161 = call double @llvm.floor.f64(double %160)
  %162 = fsub double %160, %161
  %163 = call double @llvm.ceil.f64(double %160)
  %164 = fsub double %163, %160
  %165 = fcmp olt double %162, %164
  %166 = select i1 %165, double %161, double %163
  br label %192

167:                                              ; preds = %139
  %168 = load i64, ptr %69, align 8
  %169 = call i64 @llvm.smax.i64(i64 %168, i64 0)
  %170 = sitofp i64 %169 to double
  %171 = fsub double %140, %170
  %172 = fptrunc double %171 to float
  %173 = fpext float %172 to double
  %174 = call double @llvm.floor.f64(double %173)
  %175 = fsub double %173, %174
  %176 = call double @llvm.ceil.f64(double %173)
  %177 = fsub double %176, %173
  %178 = fcmp olt double %175, %177
  %179 = select i1 %178, double %174, double %176
  %180 = fptosi double %179 to i64
  store i64 %180, ptr %70, align 8, !tbaa !100
  %181 = call i64 @llvm.smin.i64(i64 %168, i64 0)
  %182 = sitofp i64 %181 to double
  %183 = fadd double %141, %182
  %184 = fptrunc double %183 to float
  %185 = fpext float %184 to double
  %186 = call double @llvm.floor.f64(double %185)
  %187 = fsub double %185, %186
  %188 = call double @llvm.ceil.f64(double %185)
  %189 = fsub double %188, %185
  %190 = fcmp olt double %187, %189
  %191 = select i1 %190, double %186, double %188
  br label %192

192:                                              ; preds = %167, %142
  %193 = phi i64 [ %180, %167 ], [ %155, %142 ]
  %194 = phi double [ %191, %167 ], [ %166, %142 ]
  %195 = fptoui double %194 to i64
  %196 = sub i64 %195, %193
  store i64 %196, ptr %6, align 8, !tbaa !98
  %197 = load i64, ptr %74, align 8, !tbaa !95
  %198 = add nsw i64 %197, %193
  store i64 %198, ptr %73, align 8, !tbaa !100
  %199 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2)
  %200 = icmp eq ptr %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %192
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %199) #9
  %202 = fcmp olt double %141, %47
  br i1 %202, label %139, label %203, !llvm.loop !102

203:                                              ; preds = %201, %192, %133
  %204 = phi ptr [ %76, %133 ], [ %199, %201 ], [ null, %192 ]
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %75, !llvm.loop !103

206:                                              ; preds = %203, %75
  call void @ClearMagickException(ptr noundef %2) #9
  %207 = load ptr, ptr %4, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  br label %290

208:                                              ; preds = %13
  %209 = load i64, ptr %5, align 8, !tbaa !98
  %210 = icmp ne i64 %209, 0
  %211 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  %212 = load i64, ptr %211, align 8
  %213 = icmp ne i64 %212, 0
  %214 = select i1 %210, i1 true, i1 %213
  %215 = and i32 %16, 3
  %216 = icmp eq i32 %215, 0
  %217 = and i1 %216, %214
  br i1 %217, label %239, label %218

218:                                              ; preds = %208
  %219 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2)
  store ptr %219, ptr %4, align 8, !tbaa !78
  %220 = icmp eq ptr %219, null
  %221 = and i32 %16, 8192
  %222 = icmp eq i32 %221, 0
  %223 = or i1 %222, %220
  br i1 %223, label %290, label %224

224:                                              ; preds = %218
  %225 = load i64, ptr %5, align 8, !tbaa !98
  %226 = getelementptr inbounds %struct._Image, ptr %219, i64 0, i32 26
  store i64 %225, ptr %226, align 8, !tbaa !93
  %227 = load i64, ptr %211, align 8, !tbaa !99
  %228 = getelementptr inbounds %struct._Image, ptr %219, i64 0, i32 26, i32 1
  store i64 %227, ptr %228, align 8, !tbaa !94
  %229 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %230 = load i64, ptr %229, align 8, !tbaa !100
  %231 = getelementptr inbounds %struct._Image, ptr %219, i64 0, i32 26, i32 2
  %232 = load i64, ptr %231, align 8, !tbaa !95
  %233 = sub nsw i64 %232, %230
  store i64 %233, ptr %231, align 8, !tbaa !95
  %234 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  %235 = load i64, ptr %234, align 8, !tbaa !101
  %236 = getelementptr inbounds %struct._Image, ptr %219, i64 0, i32 26, i32 3
  %237 = load i64, ptr %236, align 8, !tbaa !96
  %238 = sub nsw i64 %237, %235
  store i64 %238, ptr %236, align 8, !tbaa !96
  br label %290

239:                                              ; preds = %208
  %240 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %241 = load i64, ptr %240, align 8, !tbaa !54
  %242 = icmp ugt i64 %241, %209
  br i1 %242, label %247, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %245 = load i64, ptr %244, align 8, !tbaa !55
  %246 = icmp ugt i64 %245, %212
  br i1 %246, label %247, label %288

247:                                              ; preds = %243, %239
  %248 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %249 = load i64, ptr %248, align 8, !tbaa.struct !56
  %250 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa.struct !58
  %252 = icmp eq i64 %249, 0
  %253 = select i1 %252, i64 %241, i64 %249
  %254 = icmp eq i64 %251, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %257 = load i64, ptr %256, align 8, !tbaa !55
  br label %258

258:                                              ; preds = %255, %247
  %259 = phi i64 [ %257, %255 ], [ %251, %247 ]
  %260 = icmp eq i64 %209, 0
  %261 = select i1 %260, i64 %253, i64 %209
  %262 = icmp eq i64 %212, 0
  %263 = select i1 %262, i64 %259, i64 %212
  %264 = call ptr @NewImageList() #9
  %265 = icmp sgt i64 %259, 0
  br i1 %265, label %266, label %286

266:                                              ; preds = %258
  %267 = icmp sgt i64 %253, 0
  %268 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  %269 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 3
  br label %270

270:                                              ; preds = %280, %266
  %271 = phi i64 [ 0, %266 ], [ %283, %280 ]
  %272 = phi ptr [ %264, %266 ], [ %281, %280 ]
  br i1 %267, label %273, label %280

273:                                              ; preds = %270, %277
  %274 = phi i64 [ %278, %277 ], [ 0, %270 ]
  store i64 %261, ptr %5, align 8, !tbaa !98
  store i64 %263, ptr %211, align 8, !tbaa !99
  store i64 %274, ptr %268, align 8, !tbaa !100
  store i64 %271, ptr %269, align 8, !tbaa !101
  %275 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2)
  %276 = icmp eq ptr %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %273
  call void @AppendImageToList(ptr noundef nonnull %4, ptr noundef nonnull %275) #9
  %278 = add nsw i64 %274, %261
  %279 = icmp slt i64 %278, %253
  br i1 %279, label %273, label %280, !llvm.loop !104

280:                                              ; preds = %277, %273, %270
  %281 = phi ptr [ %272, %270 ], [ %275, %277 ], [ null, %273 ]
  %282 = icmp ne ptr %281, null
  %283 = add nsw i64 %271, %263
  %284 = icmp slt i64 %283, %259
  %285 = select i1 %282, i1 %284, i1 false
  br i1 %285, label %270, label %286, !llvm.loop !105

286:                                              ; preds = %280, %258
  %287 = load ptr, ptr %4, align 8, !tbaa !78
  br label %290

288:                                              ; preds = %243
  %289 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #9
  br label %290

290:                                              ; preds = %218, %224, %288, %286, %206
  %291 = phi ptr [ %207, %206 ], [ %287, %286 ], [ %289, %288 ], [ %219, %224 ], [ %219, %218 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret ptr %291
}

declare i32 @ParseGravityGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ClearMagickException(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ExcerptImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1069, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #9
  br label %11

11:                                               ; preds = %8, %3
  %12 = load i64, ptr %1, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !99
  %15 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %12, i64 noundef %14, i32 noundef 1, ptr noundef %2) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %96, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #9
  %19 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %15, ptr noundef %2) #9
  %20 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !55
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %90

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %26 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 7
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %31

31:                                               ; preds = %23, %75
  %32 = phi i32 [ 1, %23 ], [ %77, %75 ]
  %33 = phi i64 [ 0, %23 ], [ %78, %75 ]
  %34 = phi i64 [ 0, %23 ], [ %76, %75 ]
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %75, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %24, align 8, !tbaa !100
  %38 = load i64, ptr %25, align 8, !tbaa !101
  %39 = add nsw i64 %38, %33
  %40 = load i64, ptr %1, align 8, !tbaa !98
  %41 = call ptr @GetCacheViewVirtualPixels(ptr noundef %18, i64 noundef %37, i64 noundef %39, i64 noundef %40, i64 noundef 1, ptr noundef %2) #10
  %42 = load i64, ptr %26, align 8, !tbaa !54
  %43 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %19, i64 noundef 0, i64 noundef %33, i64 noundef %42, i64 noundef 1, ptr noundef %2) #10
  %44 = icmp eq ptr %41, null
  %45 = icmp eq ptr %43, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %75, label %47

47:                                               ; preds = %36
  %48 = load i64, ptr %26, align 8, !tbaa !54
  %49 = shl i64 %48, 3
  %50 = call ptr @CopyMagickMemory(ptr noundef %43, ptr noundef %41, i64 noundef %49) #9
  %51 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %18) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %19) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i64, ptr %26, align 8, !tbaa !54
  %58 = shl i64 %57, 1
  %59 = call ptr @CopyMagickMemory(ptr noundef nonnull %54, ptr noundef nonnull %51, i64 noundef %58) #9
  br label %60

60:                                               ; preds = %53, %56, %47
  %61 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %19, ptr noundef %2) #10
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load ptr, ptr %27, align 8, !tbaa !65
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %60
  %67 = add nsw i64 %34, 1
  %68 = load i64, ptr %28, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  %69 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, ptr noundef nonnull %29) #9
  %70 = load ptr, ptr %27, align 8, !tbaa !65
  %71 = load ptr, ptr %30, align 8, !tbaa !66
  %72 = call i32 %70(ptr noundef nonnull %4, i64 noundef %34, i64 noundef %68, ptr noundef %71) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 0, i32 %63
  br label %75

75:                                               ; preds = %60, %66, %36, %31
  %76 = phi i64 [ %34, %31 ], [ %34, %36 ], [ %67, %66 ], [ %34, %60 ]
  %77 = phi i32 [ 0, %31 ], [ 0, %36 ], [ %74, %66 ], [ %63, %60 ]
  %78 = add nuw nsw i64 %33, 1
  %79 = load i64, ptr %20, align 8, !tbaa !55
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %31, label %81, !llvm.loop !106

81:                                               ; preds = %75
  %82 = icmp eq i32 %77, 0
  %83 = call ptr @DestroyCacheView(ptr noundef %19) #9
  %84 = call ptr @DestroyCacheView(ptr noundef %18) #9
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %86 = load i32, ptr %85, align 8, !tbaa !68
  %87 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 77
  store i32 %86, ptr %87, align 8, !tbaa !68
  br i1 %82, label %88, label %96

88:                                               ; preds = %81
  %89 = call ptr @DestroyImage(ptr noundef nonnull %15) #9
  br label %96

90:                                               ; preds = %17
  %91 = tail call ptr @DestroyCacheView(ptr noundef %19) #9
  %92 = tail call ptr @DestroyCacheView(ptr noundef %18) #9
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %94 = load i32, ptr %93, align 8, !tbaa !68
  %95 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 77
  store i32 %94, ptr %95, align 8, !tbaa !68
  br label %96

96:                                               ; preds = %90, %81, %88, %11
  %97 = phi ptr [ null, %11 ], [ %89, %88 ], [ %15, %81 ], [ %15, %90 ]
  ret ptr %97
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ExtentImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1185, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i64, ptr %1, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !99
  %14 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %11, i64 noundef %13, i32 noundef 1, ptr noundef %2) #9
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
  %24 = load i16, ptr %23, align 2, !tbaa !91
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 6
  store i32 1, ptr %27, align 8, !tbaa !107
  br label %28

28:                                               ; preds = %26, %22
  %29 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %14) #9
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %31 = load i32, ptr %30, align 8, !tbaa !108
  %32 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !100
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !101
  %37 = sub nsw i64 0, %36
  %38 = tail call i32 @CompositeImage(ptr noundef nonnull %14, i32 noundef %31, ptr noundef %0, i64 noundef %34, i64 noundef %37) #9
  br label %39

39:                                               ; preds = %10, %28, %19
  %40 = phi ptr [ null, %19 ], [ %14, %28 ], [ null, %10 ]
  ret ptr %40
}

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RollImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !53
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1589, ptr noundef nonnull @.str.2, ptr noundef nonnull %13) #9
  br label %15

15:                                               ; preds = %12, %4
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !55
  %20 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %17, i64 noundef %19, i32 noundef 1, ptr noundef %3) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %121, label %22

22:                                               ; preds = %15
  %23 = icmp slt i64 %1, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = load i64, ptr %16, align 8, !tbaa !54
  br label %29

26:                                               ; preds = %29, %22
  %27 = phi i64 [ %1, %22 ], [ %31, %29 ]
  %28 = load i64, ptr %16, align 8, !tbaa !54
  br label %33

29:                                               ; preds = %24, %29
  %30 = phi i64 [ %1, %24 ], [ %31, %29 ]
  %31 = add nsw i64 %25, %30
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %29, label %26, !llvm.loop !109

33:                                               ; preds = %33, %26
  %34 = phi i64 [ %36, %33 ], [ %27, %26 ]
  %35 = icmp slt i64 %34, %28
  %36 = sub nsw i64 %34, %28
  br i1 %35, label %37, label %33, !llvm.loop !110

37:                                               ; preds = %33
  %38 = icmp slt i64 %2, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = load i64, ptr %18, align 8, !tbaa !55
  br label %44

41:                                               ; preds = %44, %37
  %42 = phi i64 [ %2, %37 ], [ %46, %44 ]
  %43 = load i64, ptr %18, align 8, !tbaa !55
  br label %48

44:                                               ; preds = %39, %44
  %45 = phi i64 [ %2, %39 ], [ %46, %44 ]
  %46 = add nsw i64 %40, %45
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %44, label %41, !llvm.loop !111

48:                                               ; preds = %48, %41
  %49 = phi i64 [ %51, %48 ], [ %42, %41 ]
  %50 = icmp slt i64 %49, %43
  %51 = sub nsw i64 %49, %43
  br i1 %50, label %52, label %48, !llvm.loop !112

52:                                               ; preds = %48
  %53 = sub nsw i64 %28, %34
  %54 = sub nsw i64 %43, %49
  %55 = tail call fastcc i32 @CopyImageRegion(ptr noundef nonnull %20, ptr noundef %0, i64 noundef %34, i64 noundef %49, i64 noundef %53, i64 noundef %54, i64 noundef 0, i64 noundef 0, ptr noundef %3), !range !113
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #9
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %57 = load ptr, ptr %56, align 8, !tbaa !65
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %61 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, ptr noundef nonnull %60) #9
  %62 = load ptr, ptr %56, align 8, !tbaa !65
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %64 = load ptr, ptr %63, align 8, !tbaa !66
  %65 = call i32 %62(ptr noundef nonnull %8, i64 noundef 0, i64 noundef 3, ptr noundef %64) #9
  br label %66

66:                                               ; preds = %52, %59
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #9
  %67 = load i64, ptr %16, align 8, !tbaa !54
  %68 = sub i64 %67, %34
  %69 = load i64, ptr %18, align 8, !tbaa !55
  %70 = sub nsw i64 %69, %49
  %71 = call fastcc i32 @CopyImageRegion(ptr noundef nonnull %20, ptr noundef %0, i64 noundef %68, i64 noundef %49, i64 noundef 0, i64 noundef %70, i64 noundef %34, i64 noundef 0, ptr noundef %3), !range !113
  %72 = and i32 %71, %55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #9
  %73 = load ptr, ptr %56, align 8, !tbaa !65
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %77 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, ptr noundef nonnull %76) #9
  %78 = load ptr, ptr %56, align 8, !tbaa !65
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %80 = load ptr, ptr %79, align 8, !tbaa !66
  %81 = call i32 %78(ptr noundef nonnull %7, i64 noundef 1, i64 noundef 3, ptr noundef %80) #9
  br label %82

82:                                               ; preds = %66, %75
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #9
  %83 = load i64, ptr %18, align 8, !tbaa !55
  %84 = sub i64 %83, %49
  %85 = load i64, ptr %16, align 8, !tbaa !54
  %86 = sub nsw i64 %85, %34
  %87 = call fastcc i32 @CopyImageRegion(ptr noundef nonnull %20, ptr noundef %0, i64 noundef %34, i64 noundef %84, i64 noundef %86, i64 noundef 0, i64 noundef 0, i64 noundef %49, ptr noundef %3), !range !113
  %88 = and i32 %72, %87
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #9
  %89 = load ptr, ptr %56, align 8, !tbaa !65
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %93 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, ptr noundef nonnull %92) #9
  %94 = load ptr, ptr %56, align 8, !tbaa !65
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %96 = load ptr, ptr %95, align 8, !tbaa !66
  %97 = call i32 %94(ptr noundef nonnull %6, i64 noundef 2, i64 noundef 3, ptr noundef %96) #9
  br label %98

98:                                               ; preds = %82, %91
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #9
  %99 = load i64, ptr %16, align 8, !tbaa !54
  %100 = sub i64 %99, %34
  %101 = load i64, ptr %18, align 8, !tbaa !55
  %102 = sub i64 %101, %49
  %103 = call fastcc i32 @CopyImageRegion(ptr noundef nonnull %20, ptr noundef %0, i64 noundef %100, i64 noundef %102, i64 noundef 0, i64 noundef 0, i64 noundef %34, i64 noundef %49, ptr noundef %3), !range !113
  %104 = and i32 %88, %103
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  %105 = load ptr, ptr %56, align 8, !tbaa !65
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %109 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, ptr noundef nonnull %108) #9
  %110 = load ptr, ptr %56, align 8, !tbaa !65
  %111 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %112 = load ptr, ptr %111, align 8, !tbaa !66
  %113 = call i32 %110(ptr noundef nonnull %5, i64 noundef 3, i64 noundef 3, ptr noundef %112) #9
  br label %114

114:                                              ; preds = %98, %107
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  %115 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %116 = load i32, ptr %115, align 8, !tbaa !68
  %117 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 77
  store i32 %116, ptr %117, align 8, !tbaa !68
  %118 = icmp eq i32 %104, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call ptr @DestroyImage(ptr noundef nonnull %20) #9
  br label %121

121:                                              ; preds = %114, %119, %15
  %122 = phi ptr [ null, %15 ], [ %120, %119 ], [ %20, %114 ]
  ret ptr %122
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @CopyImageRegion(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8) unnamed_addr #5 {
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
  %24 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %12, i64 noundef %4, i64 noundef %23, i64 noundef %2, i64 noundef 1, ptr noundef %8) #10
  %25 = add nsw i64 %20, %7
  %26 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %13, i64 noundef %6, i64 noundef %25, i64 noundef %2, i64 noundef 1, ptr noundef %8) #10
  %27 = icmp eq ptr %24, null
  %28 = icmp eq ptr %26, null
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %22
  %31 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %12) #9
  %32 = tail call ptr @CopyMagickMemory(ptr noundef %26, ptr noundef %24, i64 noundef %16) #9
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
  %40 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %13, ptr noundef %8) #10
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %22, %18, %39
  %44 = phi i32 [ %42, %39 ], [ 0, %18 ], [ 0, %22 ]
  %45 = add nuw nsw i64 %20, 1
  %46 = icmp eq i64 %45, %3
  br i1 %46, label %47, label %18, !llvm.loop !114

47:                                               ; preds = %43, %11
  %48 = phi i32 [ 1, %11 ], [ %44, %43 ]
  %49 = tail call ptr @DestroyCacheView(ptr noundef %13) #9
  %50 = tail call ptr @DestroyCacheView(ptr noundef %12) #9
  br label %51

51:                                               ; preds = %9, %47
  %52 = phi i32 [ %48, %47 ], [ 1, %9 ]
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ShaveImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1674, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #9
  br label %11

11:                                               ; preds = %8, %3
  %12 = load i64, ptr %1, align 8, !tbaa !98
  %13 = shl i64 %12, 1
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !54
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !99
  %20 = shl i64 %19, 1
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !55
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %17, %11
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1677, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %25) #9
  br label %66

27:                                               ; preds = %17
  call void @SetGeometry(ptr noundef %0, ptr noundef nonnull %4) #9
  %28 = load i64, ptr %1, align 8, !tbaa !98
  %29 = shl i64 %28, 1
  %30 = load i64, ptr %4, align 8, !tbaa !98
  %31 = sub i64 %30, %29
  store i64 %31, ptr %4, align 8, !tbaa !98
  %32 = load i64, ptr %18, align 8, !tbaa !99
  %33 = shl i64 %32, 1
  %34 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !99
  %36 = sub i64 %35, %33
  store i64 %36, ptr %34, align 8, !tbaa !99
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !95
  %39 = add nsw i64 %38, %28
  %40 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 2
  store i64 %39, ptr %40, align 8, !tbaa !100
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %42 = load i64, ptr %41, align 8, !tbaa !96
  %43 = add nsw i64 %42, %32
  %44 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 3
  store i64 %43, ptr %44, align 8, !tbaa !101
  %45 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %66, label %47

47:                                               ; preds = %27
  %48 = load i64, ptr %1, align 8, !tbaa !98
  %49 = shl i64 %48, 1
  %50 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 26
  %51 = load i64, ptr %50, align 8, !tbaa !93
  %52 = sub i64 %51, %49
  store i64 %52, ptr %50, align 8, !tbaa !93
  %53 = load i64, ptr %18, align 8, !tbaa !99
  %54 = shl i64 %53, 1
  %55 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 26, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !94
  %57 = sub i64 %56, %54
  store i64 %57, ptr %55, align 8, !tbaa !94
  %58 = load i64, ptr %1, align 8, !tbaa !98
  %59 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 26, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !95
  %61 = sub nsw i64 %60, %58
  store i64 %61, ptr %59, align 8, !tbaa !95
  %62 = load i64, ptr %18, align 8, !tbaa !99
  %63 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 26, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !96
  %65 = sub nsw i64 %64, %62
  store i64 %65, ptr %63, align 8, !tbaa !96
  br label %66

66:                                               ; preds = %27, %47, %24
  %67 = phi ptr [ null, %24 ], [ %45, %47 ], [ null, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret ptr %67
}

declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @SpliceImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1752, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #9
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i64, ptr %1, align 8, !tbaa.struct !56
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa.struct !58
  %16 = getelementptr inbounds i8, ptr %1, i64 16
  %17 = load i64, ptr %16, align 8, !tbaa.struct !59
  %18 = getelementptr inbounds i8, ptr %1, i64 24
  %19 = load i64, ptr %18, align 8, !tbaa.struct !60
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !54
  %22 = add i64 %21, %13
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !55
  %25 = add i64 %24, %15
  %26 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %22, i64 noundef %25, i32 noundef 1, ptr noundef %2) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %362, label %28

28:                                               ; preds = %12
  %29 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %26, i32 noundef 1) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 58
  tail call void @InheritException(ptr noundef %2, ptr noundef nonnull %32) #9
  %33 = tail call ptr @DestroyImage(ptr noundef nonnull %26) #9
  br label %362

34:                                               ; preds = %28
  %35 = tail call i32 @SetImageBackgroundColor(ptr noundef nonnull %26) #9
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  %37 = load i32, ptr %36, align 4, !tbaa !115
  switch i32 %37, label %64 [
    i32 9, label %61
    i32 8, label %57
    i32 2, label %38
    i32 3, label %41
    i32 4, label %43
    i32 10, label %46
    i32 5, label %46
    i32 6, label %51
    i32 7, label %55
  ]

38:                                               ; preds = %34
  %39 = sdiv i64 %13, 2
  %40 = add nsw i64 %17, %39
  br label %64

41:                                               ; preds = %34
  %42 = add nsw i64 %17, %13
  br label %64

43:                                               ; preds = %34
  %44 = sdiv i64 %13, 2
  %45 = add nsw i64 %19, %44
  br label %64

46:                                               ; preds = %34, %34
  %47 = sdiv i64 %13, 2
  %48 = add nsw i64 %17, %47
  %49 = sdiv i64 %15, 2
  %50 = add nsw i64 %19, %49
  br label %64

51:                                               ; preds = %34
  %52 = add nsw i64 %17, %13
  %53 = sdiv i64 %15, 2
  %54 = add nsw i64 %19, %53
  br label %64

55:                                               ; preds = %34
  %56 = add nsw i64 %19, %15
  br label %64

57:                                               ; preds = %34
  %58 = sdiv i64 %13, 2
  %59 = add nsw i64 %17, %58
  %60 = add nsw i64 %19, %15
  br label %64

61:                                               ; preds = %34
  %62 = add nsw i64 %17, %13
  %63 = add nsw i64 %19, %15
  br label %64

64:                                               ; preds = %34, %61, %57, %55, %51, %46, %43, %41, %38
  %65 = phi i64 [ %19, %34 ], [ %56, %55 ], [ %54, %51 ], [ %50, %46 ], [ %45, %43 ], [ %19, %41 ], [ %19, %38 ], [ %60, %57 ], [ %63, %61 ]
  %66 = phi i64 [ %17, %34 ], [ %17, %55 ], [ %52, %51 ], [ %48, %46 ], [ %17, %43 ], [ %42, %41 ], [ %40, %38 ], [ %59, %57 ], [ %62, %61 ]
  %67 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %2) #9
  %68 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %26, ptr noundef %2) #9
  %69 = icmp sgt i64 %65, 0
  br i1 %69, label %70, label %206

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 7
  %72 = icmp sgt i64 %66, 0
  %73 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %75 = add i64 %66, %13
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %78 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %79 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 8
  %80 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %82 = tail call i64 @llvm.smax.i64(i64 %66, i64 0)
  %83 = sub i64 %75, %82
  %84 = shl i64 %83, 3
  br label %85

85:                                               ; preds = %70, %201
  %86 = phi i64 [ 0, %70 ], [ %204, %201 ]
  %87 = phi i32 [ 1, %70 ], [ %203, %201 ]
  %88 = phi i64 [ 0, %70 ], [ %202, %201 ]
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %201, label %90

90:                                               ; preds = %85
  %91 = load i64, ptr %20, align 8, !tbaa !54
  %92 = call ptr @GetCacheViewVirtualPixels(ptr noundef %67, i64 noundef 0, i64 noundef %86, i64 noundef %91, i64 noundef 1, ptr noundef %2) #10
  %93 = load i64, ptr %71, align 8, !tbaa !54
  %94 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %68, i64 noundef 0, i64 noundef %86, i64 noundef %93, i64 noundef 1, ptr noundef %2) #10
  %95 = icmp eq ptr %92, null
  %96 = icmp eq ptr %94, null
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %201, label %98

98:                                               ; preds = %90
  %99 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %67) #9
  %100 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %68) #9
  br i1 %72, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, ptr %73, align 8, !tbaa !107
  %103 = icmp eq i32 %102, 0
  %104 = load i32, ptr %74, align 4, !tbaa !116
  %105 = icmp eq i32 %104, 12
  %106 = icmp eq ptr %100, null
  br label %115

107:                                              ; preds = %140, %98
  %108 = phi ptr [ %92, %98 ], [ %142, %140 ]
  %109 = phi ptr [ %99, %98 ], [ %141, %140 ]
  %110 = phi i64 [ 0, %98 ], [ %66, %140 ]
  %111 = phi ptr [ %94, %98 ], [ %143, %140 ]
  %112 = call i64 @llvm.smax.i64(i64 %110, i64 %75)
  %113 = load i64, ptr %71, align 8, !tbaa !54
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %146, label %186

115:                                              ; preds = %101, %140
  %116 = phi ptr [ %94, %101 ], [ %143, %140 ]
  %117 = phi i64 [ 0, %101 ], [ %144, %140 ]
  %118 = phi ptr [ %99, %101 ], [ %141, %140 ]
  %119 = phi ptr [ %92, %101 ], [ %142, %140 ]
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 0, i32 2
  %121 = load i16, ptr %120, align 2, !tbaa !81
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 2
  store i16 %121, ptr %122, align 2, !tbaa !81
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 0, i32 1
  %124 = load i16, ptr %123, align 2, !tbaa !84
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 1
  store i16 %124, ptr %125, align 2, !tbaa !84
  %126 = load i16, ptr %119, align 2, !tbaa !87
  store i16 %126, ptr %116, align 2, !tbaa !87
  %127 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 0, i32 3
  store i16 0, ptr %127, align 2, !tbaa !117
  br i1 %103, label %131, label %128

128:                                              ; preds = %115
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 0, i32 3
  %130 = load i16, ptr %129, align 2, !tbaa !117
  store i16 %130, ptr %127, align 2, !tbaa !117
  br label %131

131:                                              ; preds = %128, %115
  br i1 %105, label %132, label %140

132:                                              ; preds = %131
  %133 = getelementptr inbounds i16, ptr %100, i64 %117
  br i1 %106, label %140, label %134

134:                                              ; preds = %132
  %135 = icmp eq ptr %118, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %134
  %137 = load i16, ptr %118, align 2, !tbaa !61
  br label %138

138:                                              ; preds = %134, %136
  %139 = phi i16 [ %137, %136 ], [ 0, %134 ]
  store i16 %139, ptr %133, align 2, !tbaa !61
  br label %140

140:                                              ; preds = %132, %138, %131
  %141 = getelementptr inbounds i16, ptr %118, i64 1
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 1
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %116, i64 1
  %144 = add nuw nsw i64 %117, 1
  %145 = icmp eq i64 %144, %66
  br i1 %145, label %107, label %115, !llvm.loop !118

146:                                              ; preds = %107
  %147 = icmp slt i64 %110, %75
  %148 = select i1 %147, i64 %84, i64 0
  %149 = getelementptr i8, ptr %111, i64 %148
  %150 = load i32, ptr %76, align 8, !tbaa !107
  %151 = icmp eq i32 %150, 0
  %152 = load i32, ptr %77, align 4, !tbaa !116
  %153 = icmp eq i32 %152, 12
  %154 = icmp eq ptr %100, null
  br label %155

155:                                              ; preds = %146, %180
  %156 = phi ptr [ %149, %146 ], [ %183, %180 ]
  %157 = phi i64 [ %112, %146 ], [ %184, %180 ]
  %158 = phi ptr [ %109, %146 ], [ %181, %180 ]
  %159 = phi ptr [ %108, %146 ], [ %182, %180 ]
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 0, i32 2
  %161 = load i16, ptr %160, align 2, !tbaa !81
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 0, i32 2
  store i16 %161, ptr %162, align 2, !tbaa !81
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 0, i32 1
  %164 = load i16, ptr %163, align 2, !tbaa !84
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 0, i32 1
  store i16 %164, ptr %165, align 2, !tbaa !84
  %166 = load i16, ptr %159, align 2, !tbaa !87
  store i16 %166, ptr %156, align 2, !tbaa !87
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 0, i32 3
  store i16 0, ptr %167, align 2, !tbaa !117
  br i1 %151, label %171, label %168

168:                                              ; preds = %155
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 0, i32 3
  %170 = load i16, ptr %169, align 2, !tbaa !117
  store i16 %170, ptr %167, align 2, !tbaa !117
  br label %171

171:                                              ; preds = %168, %155
  br i1 %153, label %172, label %180

172:                                              ; preds = %171
  %173 = getelementptr inbounds i16, ptr %100, i64 %157
  br i1 %154, label %180, label %174

174:                                              ; preds = %172
  %175 = icmp eq ptr %158, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %174
  %177 = load i16, ptr %158, align 2, !tbaa !61
  br label %178

178:                                              ; preds = %174, %176
  %179 = phi i16 [ %177, %176 ], [ 0, %174 ]
  store i16 %179, ptr %173, align 2, !tbaa !61
  br label %180

180:                                              ; preds = %172, %178, %171
  %181 = getelementptr inbounds i16, ptr %158, i64 1
  %182 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 1
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %156, i64 1
  %184 = add nuw nsw i64 %157, 1
  %185 = icmp eq i64 %184, %113
  br i1 %185, label %186, label %155, !llvm.loop !119

186:                                              ; preds = %180, %107
  %187 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %68, ptr noundef %2) #10
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = load ptr, ptr %78, align 8, !tbaa !65
  %191 = icmp eq ptr %190, null
  br i1 %191, label %201, label %192

192:                                              ; preds = %186
  %193 = add nsw i64 %88, 1
  %194 = load i64, ptr %79, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #9
  %195 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, ptr noundef nonnull %80) #9
  %196 = load ptr, ptr %78, align 8, !tbaa !65
  %197 = load ptr, ptr %81, align 8, !tbaa !66
  %198 = call i32 %196(ptr noundef nonnull %5, i64 noundef %88, i64 noundef %194, ptr noundef %197) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #9
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, i32 0, i32 %189
  br label %201

201:                                              ; preds = %186, %192, %90, %85
  %202 = phi i64 [ %88, %85 ], [ %88, %90 ], [ %193, %192 ], [ %88, %186 ]
  %203 = phi i32 [ 0, %85 ], [ 0, %90 ], [ %200, %192 ], [ %189, %186 ]
  %204 = add nuw nsw i64 %86, 1
  %205 = icmp eq i64 %204, %65
  br i1 %205, label %206, label %85, !llvm.loop !120

206:                                              ; preds = %201, %64
  %207 = phi i64 [ 0, %64 ], [ %202, %201 ]
  %208 = phi i32 [ 1, %64 ], [ %203, %201 ]
  %209 = add i64 %65, %15
  %210 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 8
  %211 = load i64, ptr %210, align 8, !tbaa !55
  %212 = icmp slt i64 %209, %211
  br i1 %212, label %213, label %355

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct._Image, ptr %26, i64 0, i32 7
  %215 = icmp sgt i64 %66, 0
  %216 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %217 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %218 = add i64 %66, %13
  %219 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %220 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %221 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %222 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %223 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %224 = call i64 @llvm.smax.i64(i64 %66, i64 0)
  %225 = sub i64 %218, %224
  %226 = shl i64 %225, 3
  br label %227

227:                                              ; preds = %213, %349
  %228 = phi i64 [ %209, %213 ], [ %352, %349 ]
  %229 = phi i32 [ %208, %213 ], [ %351, %349 ]
  %230 = phi i64 [ %207, %213 ], [ %350, %349 ]
  %231 = icmp eq i32 %229, 0
  br i1 %231, label %349, label %232

232:                                              ; preds = %227
  %233 = sub nsw i64 %228, %15
  %234 = load i64, ptr %20, align 8, !tbaa !54
  %235 = call ptr @GetCacheViewVirtualPixels(ptr noundef %67, i64 noundef 0, i64 noundef %233, i64 noundef %234, i64 noundef 1, ptr noundef %2) #10
  %236 = icmp slt i64 %228, 0
  br i1 %236, label %349, label %237

237:                                              ; preds = %232
  %238 = load i64, ptr %210, align 8, !tbaa !55
  %239 = icmp slt i64 %228, %238
  br i1 %239, label %240, label %349

240:                                              ; preds = %237
  %241 = load i64, ptr %214, align 8, !tbaa !54
  %242 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %68, i64 noundef 0, i64 noundef %228, i64 noundef %241, i64 noundef 1, ptr noundef %2) #10
  %243 = icmp eq ptr %235, null
  %244 = icmp eq ptr %242, null
  %245 = select i1 %243, i1 true, i1 %244
  br i1 %245, label %349, label %246

246:                                              ; preds = %240
  %247 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %67) #9
  %248 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %68) #9
  br i1 %215, label %249, label %255

249:                                              ; preds = %246
  %250 = load i32, ptr %216, align 8, !tbaa !107
  %251 = icmp eq i32 %250, 0
  %252 = load i32, ptr %217, align 4, !tbaa !116
  %253 = icmp eq i32 %252, 12
  %254 = icmp eq ptr %248, null
  br label %263

255:                                              ; preds = %288, %246
  %256 = phi ptr [ %235, %246 ], [ %290, %288 ]
  %257 = phi ptr [ %247, %246 ], [ %289, %288 ]
  %258 = phi i64 [ 0, %246 ], [ %66, %288 ]
  %259 = phi ptr [ %242, %246 ], [ %291, %288 ]
  %260 = call i64 @llvm.smax.i64(i64 %258, i64 %218)
  %261 = load i64, ptr %214, align 8, !tbaa !54
  %262 = icmp slt i64 %260, %261
  br i1 %262, label %294, label %334

263:                                              ; preds = %249, %288
  %264 = phi ptr [ %242, %249 ], [ %291, %288 ]
  %265 = phi i64 [ 0, %249 ], [ %292, %288 ]
  %266 = phi ptr [ %247, %249 ], [ %289, %288 ]
  %267 = phi ptr [ %235, %249 ], [ %290, %288 ]
  %268 = getelementptr inbounds %struct._PixelPacket, ptr %267, i64 0, i32 2
  %269 = load i16, ptr %268, align 2, !tbaa !81
  %270 = getelementptr inbounds %struct._PixelPacket, ptr %264, i64 0, i32 2
  store i16 %269, ptr %270, align 2, !tbaa !81
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %267, i64 0, i32 1
  %272 = load i16, ptr %271, align 2, !tbaa !84
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %264, i64 0, i32 1
  store i16 %272, ptr %273, align 2, !tbaa !84
  %274 = load i16, ptr %267, align 2, !tbaa !87
  store i16 %274, ptr %264, align 2, !tbaa !87
  %275 = getelementptr inbounds %struct._PixelPacket, ptr %264, i64 0, i32 3
  store i16 0, ptr %275, align 2, !tbaa !117
  br i1 %251, label %279, label %276

276:                                              ; preds = %263
  %277 = getelementptr inbounds %struct._PixelPacket, ptr %267, i64 0, i32 3
  %278 = load i16, ptr %277, align 2, !tbaa !117
  store i16 %278, ptr %275, align 2, !tbaa !117
  br label %279

279:                                              ; preds = %276, %263
  br i1 %253, label %280, label %288

280:                                              ; preds = %279
  %281 = getelementptr inbounds i16, ptr %248, i64 %265
  br i1 %254, label %288, label %282

282:                                              ; preds = %280
  %283 = icmp eq ptr %266, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %282
  %285 = load i16, ptr %266, align 2, !tbaa !61
  br label %286

286:                                              ; preds = %282, %284
  %287 = phi i16 [ %285, %284 ], [ 0, %282 ]
  store i16 %287, ptr %281, align 2, !tbaa !61
  br label %288

288:                                              ; preds = %280, %286, %279
  %289 = getelementptr inbounds i16, ptr %266, i64 1
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %267, i64 1
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %264, i64 1
  %292 = add nuw nsw i64 %265, 1
  %293 = icmp eq i64 %292, %66
  br i1 %293, label %255, label %263, !llvm.loop !121

294:                                              ; preds = %255
  %295 = icmp slt i64 %258, %218
  %296 = select i1 %295, i64 %226, i64 0
  %297 = getelementptr i8, ptr %259, i64 %296
  %298 = load i32, ptr %219, align 8, !tbaa !107
  %299 = icmp eq i32 %298, 0
  %300 = load i32, ptr %220, align 4, !tbaa !116
  %301 = icmp eq i32 %300, 12
  %302 = icmp eq ptr %248, null
  br label %303

303:                                              ; preds = %294, %328
  %304 = phi ptr [ %297, %294 ], [ %331, %328 ]
  %305 = phi i64 [ %260, %294 ], [ %332, %328 ]
  %306 = phi ptr [ %257, %294 ], [ %329, %328 ]
  %307 = phi ptr [ %256, %294 ], [ %330, %328 ]
  %308 = getelementptr inbounds %struct._PixelPacket, ptr %307, i64 0, i32 2
  %309 = load i16, ptr %308, align 2, !tbaa !81
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %304, i64 0, i32 2
  store i16 %309, ptr %310, align 2, !tbaa !81
  %311 = getelementptr inbounds %struct._PixelPacket, ptr %307, i64 0, i32 1
  %312 = load i16, ptr %311, align 2, !tbaa !84
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %304, i64 0, i32 1
  store i16 %312, ptr %313, align 2, !tbaa !84
  %314 = load i16, ptr %307, align 2, !tbaa !87
  store i16 %314, ptr %304, align 2, !tbaa !87
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %304, i64 0, i32 3
  store i16 0, ptr %315, align 2, !tbaa !117
  br i1 %299, label %319, label %316

316:                                              ; preds = %303
  %317 = getelementptr inbounds %struct._PixelPacket, ptr %307, i64 0, i32 3
  %318 = load i16, ptr %317, align 2, !tbaa !117
  store i16 %318, ptr %315, align 2, !tbaa !117
  br label %319

319:                                              ; preds = %316, %303
  br i1 %301, label %320, label %328

320:                                              ; preds = %319
  %321 = getelementptr inbounds i16, ptr %248, i64 %305
  br i1 %302, label %328, label %322

322:                                              ; preds = %320
  %323 = icmp eq ptr %306, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %322
  %325 = load i16, ptr %306, align 2, !tbaa !61
  br label %326

326:                                              ; preds = %322, %324
  %327 = phi i16 [ %325, %324 ], [ 0, %322 ]
  store i16 %327, ptr %321, align 2, !tbaa !61
  br label %328

328:                                              ; preds = %320, %326, %319
  %329 = getelementptr inbounds i16, ptr %306, i64 1
  %330 = getelementptr inbounds %struct._PixelPacket, ptr %307, i64 1
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %304, i64 1
  %332 = add nuw nsw i64 %305, 1
  %333 = icmp eq i64 %332, %261
  br i1 %333, label %334, label %303, !llvm.loop !122

334:                                              ; preds = %328, %255
  %335 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %68, ptr noundef %2) #10
  %336 = icmp ne i32 %335, 0
  %337 = zext i1 %336 to i32
  %338 = load ptr, ptr %221, align 8, !tbaa !65
  %339 = icmp eq ptr %338, null
  br i1 %339, label %349, label %340

340:                                              ; preds = %334
  %341 = add nsw i64 %230, 1
  %342 = load i64, ptr %210, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #9
  %343 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, ptr noundef nonnull %222) #9
  %344 = load ptr, ptr %221, align 8, !tbaa !65
  %345 = load ptr, ptr %223, align 8, !tbaa !66
  %346 = call i32 %344(ptr noundef nonnull %4, i64 noundef %230, i64 noundef %342, ptr noundef %345) #9
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #9
  %347 = icmp eq i32 %346, 0
  %348 = select i1 %347, i32 0, i32 %337
  br label %349

349:                                              ; preds = %334, %340, %240, %232, %237, %227
  %350 = phi i64 [ %230, %227 ], [ %230, %237 ], [ %230, %232 ], [ %230, %240 ], [ %341, %340 ], [ %230, %334 ]
  %351 = phi i32 [ 0, %227 ], [ 1, %237 ], [ 1, %232 ], [ 0, %240 ], [ %348, %340 ], [ %337, %334 ]
  %352 = add nsw i64 %228, 1
  %353 = load i64, ptr %210, align 8, !tbaa !55
  %354 = icmp slt i64 %352, %353
  br i1 %354, label %227, label %355, !llvm.loop !123

355:                                              ; preds = %349, %206
  %356 = phi i32 [ %208, %206 ], [ %351, %349 ]
  %357 = call ptr @DestroyCacheView(ptr noundef %68) #9
  %358 = call ptr @DestroyCacheView(ptr noundef %67) #9
  %359 = icmp eq i32 %356, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = call ptr @DestroyImage(ptr noundef nonnull %26) #9
  br label %362

362:                                              ; preds = %355, %360, %12, %31
  %363 = phi ptr [ null, %31 ], [ null, %12 ], [ %361, %360 ], [ %26, %355 ]
  ret ptr %363
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @TransformImage(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  %5 = load ptr, ptr %0, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._Image, ptr %5, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2058, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #9
  br label %12

12:                                               ; preds = %9, %3
  %13 = load ptr, ptr %0, align 8, !tbaa !78
  %14 = icmp eq ptr %1, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 58
  %17 = tail call ptr @CropImageToTiles(ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !78
  %21 = getelementptr inbounds %struct._Image, ptr %20, i64 0, i32 58
  %22 = tail call ptr @CloneImage(ptr noundef %20, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %21) #9
  br label %26

23:                                               ; preds = %15
  %24 = tail call ptr @DestroyImage(ptr noundef %13) #9
  %25 = tail call ptr @GetFirstImageInList(ptr noundef nonnull %17) #9
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %22, %19 ], [ %25, %23 ]
  store ptr %27, ptr %0, align 8, !tbaa !78
  br label %28

28:                                               ; preds = %26, %12
  %29 = phi ptr [ %27, %26 ], [ %13, %12 ]
  %30 = icmp eq ptr %2, null
  br i1 %30, label %58, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %0, align 8, !tbaa !78
  %33 = getelementptr inbounds %struct._Image, ptr %32, i64 0, i32 58
  %34 = call i32 @ParseRegionGeometry(ptr noundef %29, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %33) #9
  %35 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !54
  %37 = load i64, ptr %4, align 8, !tbaa !98
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !55
  %42 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !99
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %39, %31
  %46 = getelementptr inbounds %struct._RectangleInfo, ptr %4, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !99
  %48 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 32
  %49 = load i32, ptr %48, align 8, !tbaa !124
  %50 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 30
  %51 = load double, ptr %50, align 8, !tbaa !125
  %52 = load ptr, ptr %0, align 8, !tbaa !78
  %53 = getelementptr inbounds %struct._Image, ptr %52, i64 0, i32 58
  %54 = call ptr @ResizeImage(ptr noundef %29, i64 noundef %37, i64 noundef %47, i32 noundef %49, double noundef %51, ptr noundef nonnull %53) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  %57 = call ptr @DestroyImage(ptr noundef %29) #9
  store ptr %54, ptr %0, align 8, !tbaa !78
  br label %58

58:                                               ; preds = %45, %39, %28, %56
  %59 = phi i32 [ 1, %56 ], [ 1, %28 ], [ 1, %39 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret i32 %59
}

declare ptr @GetFirstImageInList(ptr noundef) local_unnamed_addr #2

declare i32 @ParseRegionGeometry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @TransformImages(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %6 = load ptr, ptr %0, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2146, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #9
  br label %13

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %0, align 8, !tbaa !78
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 58
  %16 = tail call ptr @ImageListToArray(ptr noundef %14, ptr noundef nonnull %15) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @NewImageList() #9
  store ptr %19, ptr %5, align 8, !tbaa !78
  %20 = load ptr, ptr %16, align 8, !tbaa !78
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %31, %22 ], [ %20, %18 ]
  %24 = phi i64 [ %29, %22 ], [ 0, %18 ]
  %25 = phi i32 [ %27, %22 ], [ 1, %18 ]
  store ptr %23, ptr %4, align 8, !tbaa !78
  %26 = call i32 @TransformImage(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2), !range !113
  %27 = and i32 %26, %25
  %28 = load ptr, ptr %4, align 8, !tbaa !78
  call void @AppendImageToList(ptr noundef nonnull %5, ptr noundef %28) #9
  %29 = add nuw nsw i64 %24, 1
  %30 = getelementptr inbounds ptr, ptr %16, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !78
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %22, !llvm.loop !126

33:                                               ; preds = %22, %18
  %34 = phi i32 [ 1, %18 ], [ %27, %22 ]
  %35 = load ptr, ptr %5, align 8, !tbaa !78
  store ptr %35, ptr %0, align 8, !tbaa !78
  %36 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %16) #9
  br label %37

37:                                               ; preds = %13, %33
  %38 = phi i32 [ %34, %33 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %38
}

declare ptr @ImageListToArray(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @TrimImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2469, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #9
  br label %10

10:                                               ; preds = %7, %2
  call void @GetImageBoundingBox(ptr dead_on_unwind nonnull writable sret(%struct._RectangleInfo) align 8 %3, ptr noundef %0, ptr noundef %1) #9
  %11 = load i64, ptr %3, align 8, !tbaa !98
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = select i1 %12, i1 true, i1 %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = call ptr @CloneImage(ptr noundef %0, i64 noundef 1, i64 noundef 1, i32 noundef 1, ptr noundef %1) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 12, i32 3
  store i16 -1, ptr %21, align 2, !tbaa !91
  %22 = call i32 @SetImageBackgroundColor(ptr noundef nonnull %18) #9
  %23 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 26
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 32, i1 false), !tbaa.struct !56
  %25 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 26, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 -1, i64 16, i1 false)
  br label %38

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !100
  %31 = add nsw i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !100
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !96
  %34 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !101
  %36 = add nsw i64 %35, %33
  store i64 %36, ptr %34, align 8, !tbaa !101
  %37 = call ptr @CropImage(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1)
  br label %38

38:                                               ; preds = %20, %17, %26
  %39 = phi ptr [ %37, %26 ], [ %18, %20 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret ptr %39
}

declare void @GetImageBoundingBox(ptr dead_on_unwind writable sret(%struct._RectangleInfo) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { hot nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 24}
!35 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !43, i64 104, !44, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !43, i64 264, !43, i64 272, !46, i64 280, !46, i64 312, !46, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !47, i64 480, !48, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !50, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !51, i64 13000, !51, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !41, i64 13120, !40, i64 13128, !46, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !52, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"_PixelPacket", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!"_ChromaticityInfo", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72}
!45 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!47 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!48 = !{!"_TimerInfo", !49, i64 0, !49, i64 24, !36, i64 48, !39, i64 56}
!49 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!50 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!51 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!52 = !{!"long long", !37, i64 0}
!53 = !{!35, !36, i64 12976}
!54 = !{!35, !39, i64 40}
!55 = !{!35, !39, i64 48}
!56 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !57, i64 24, i64 8, !57}
!57 = !{!39, !39, i64 0}
!58 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !57}
!59 = !{i64 0, i64 8, !57, i64 8, i64 8, !57}
!60 = !{i64 0, i64 8, !57}
!61 = !{!42, !42, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!35, !40, i64 568}
!66 = !{!35, !40, i64 576}
!67 = distinct !{!67, !63, !64}
!68 = !{!35, !36, i64 13184}
!69 = distinct !{!69, !63, !64}
!70 = distinct !{!70, !63, !64}
!71 = distinct !{!71, !63, !64}
!72 = distinct !{!72, !63, !64}
!73 = distinct !{!73, !63, !64}
!74 = distinct !{!74, !63, !64}
!75 = distinct !{!75, !63, !64}
!76 = distinct !{!76, !63, !64}
!77 = distinct !{!77, !63, !64}
!78 = !{!40, !40, i64 0}
!79 = distinct !{!79, !63, !64}
!80 = distinct !{!80, !63, !64}
!81 = !{!41, !42, i64 4}
!82 = distinct !{!82, !63, !64}
!83 = distinct !{!83, !63, !64}
!84 = !{!41, !42, i64 2}
!85 = distinct !{!85, !63, !64}
!86 = distinct !{!86, !63, !64}
!87 = !{!41, !42, i64 0}
!88 = distinct !{!88, !63, !64}
!89 = distinct !{!89, !63, !64}
!90 = distinct !{!90, !63, !64}
!91 = !{!35, !42, i64 86}
!92 = !{!35, !36, i64 420}
!93 = !{!35, !39, i64 280}
!94 = !{!35, !39, i64 288}
!95 = !{!35, !39, i64 296}
!96 = !{!35, !39, i64 304}
!97 = distinct !{!97, !63, !64}
!98 = !{!46, !39, i64 0}
!99 = !{!46, !39, i64 8}
!100 = !{!46, !39, i64 16}
!101 = !{!46, !39, i64 24}
!102 = distinct !{!102, !63, !64}
!103 = distinct !{!103, !63, !64}
!104 = distinct !{!104, !63, !64}
!105 = distinct !{!105, !63, !64}
!106 = distinct !{!106, !63, !64}
!107 = !{!35, !36, i64 32}
!108 = !{!35, !36, i64 416}
!109 = distinct !{!109, !63, !64}
!110 = distinct !{!110, !63, !64}
!111 = distinct !{!111, !63, !64}
!112 = distinct !{!112, !63, !64}
!113 = !{i32 0, i32 2}
!114 = distinct !{!114, !63, !64}
!115 = !{!35, !36, i64 412}
!116 = !{!35, !36, i64 4}
!117 = !{!41, !42, i64 6}
!118 = distinct !{!118, !63, !64}
!119 = distinct !{!119, !63, !64}
!120 = distinct !{!120, !63, !64}
!121 = distinct !{!121, !63, !64}
!122 = distinct !{!122, !63, !64}
!123 = distinct !{!123, !63, !64}
!124 = !{!35, !36, i64 400}
!125 = !{!35, !43, i64 384}
!126 = distinct !{!126, !63, !64}
