; ModuleID = 'magick/colormap.c'
source_filename = "magick/colormap.c"
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

@.str = private unnamed_addr constant [18 x i8] c"magick/colormap.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 135, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #9
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  store i64 %1, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #10
  br label %18

16:                                               ; preds = %9
  %17 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %12, i64 noundef %1, i64 noundef 8) #11
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  store ptr %19, ptr %11, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %10, align 8, !tbaa !53
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = add i64 %1, -1
  %26 = tail call i64 @llvm.umax.i64(i64 %25, i64 1)
  %27 = udiv i64 65535, %26
  br label %34

28:                                               ; preds = %18
  %29 = icmp eq ptr %0, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %31, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 146, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %32) #9
  br label %46

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %42, %34 ]
  %36 = mul i64 %27, %35
  %37 = trunc i64 %36 to i16
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %35, i32 2
  store i16 %37, ptr %38, align 2, !tbaa !55
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %35, i32 1
  store i16 %37, ptr %39, align 2, !tbaa !56
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %35
  store i16 %37, ptr %40, align 2, !tbaa !57
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %35, i32 3
  store i16 0, ptr %41, align 2, !tbaa !58
  %42 = add nuw nsw i64 %35, 1
  %43 = icmp eq i64 %42, %22
  br i1 %43, label %44, label %34, !llvm.loop !59

44:                                               ; preds = %34, %21
  %45 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 2) #9
  br label %46

46:                                               ; preds = %28, %30, %44
  %47 = phi i32 [ %45, %44 ], [ 0, %30 ], [ 0, %28 ]
  ret i32 %47
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @CycleColormapImage(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 205, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #9
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr %0, align 8, !tbaa !62
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @SetImageType(ptr noundef nonnull %0, i32 noundef 4) #9
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %16 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %15) #9
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !63
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %80

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %24

24:                                               ; preds = %20, %75
  %25 = phi i64 [ 0, %20 ], [ %77, %75 ]
  %26 = phi i32 [ 1, %20 ], [ %76, %75 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %75, label %28

28:                                               ; preds = %24
  %29 = load i64, ptr %21, align 8, !tbaa !64
  %30 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %16, i64 noundef 0, i64 noundef %25, i64 noundef %29, i64 noundef 1, ptr noundef nonnull %15) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %75, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %16) #9
  %34 = load i64, ptr %21, align 8, !tbaa !64
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, null
  %38 = load i64, ptr %22, align 8, !tbaa !53
  %39 = load ptr, ptr %23, align 8, !tbaa !54
  br label %40

40:                                               ; preds = %36, %56
  %41 = phi ptr [ %30, %36 ], [ %68, %56 ]
  %42 = phi i64 [ 0, %36 ], [ %69, %56 ]
  %43 = getelementptr inbounds i16, ptr %33, i64 %42
  br i1 %37, label %47, label %44

44:                                               ; preds = %40
  %45 = load i16, ptr %43, align 2, !tbaa !65
  %46 = zext i16 %45 to i64
  br label %47

47:                                               ; preds = %40, %44
  %48 = phi i64 [ %46, %44 ], [ 0, %40 ]
  %49 = add nsw i64 %48, %1
  %50 = urem i64 %49, %38
  %51 = icmp slt i64 %50, 0
  %52 = select i1 %51, i64 %38, i64 0
  %53 = add nsw i64 %52, %50
  br i1 %37, label %56, label %54

54:                                               ; preds = %47
  %55 = trunc i64 %53 to i16
  store i16 %55, ptr %43, align 2, !tbaa !65
  br label %56

56:                                               ; preds = %54, %47
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 %53, i32 2
  %58 = load i16, ptr %57, align 2, !tbaa !55
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 0, i32 2
  store i16 %58, ptr %59, align 2, !tbaa !55
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 %53, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !56
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 0, i32 1
  store i16 %61, ptr %62, align 2, !tbaa !56
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 %53
  %64 = load i16, ptr %63, align 2, !tbaa !57
  store i16 %64, ptr %41, align 2, !tbaa !57
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %39, i64 %53, i32 3
  %66 = load i16, ptr %65, align 2, !tbaa !58
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 0, i32 3
  store i16 %66, ptr %67, align 2, !tbaa !58
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %41, i64 1
  %69 = add nuw nsw i64 %42, 1
  %70 = icmp eq i64 %69, %34
  br i1 %70, label %71, label %40, !llvm.loop !66

71:                                               ; preds = %56, %32
  %72 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %16, ptr noundef nonnull %15) #12
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  br label %75

75:                                               ; preds = %28, %24, %71
  %76 = phi i32 [ %74, %71 ], [ 0, %24 ], [ 0, %28 ]
  %77 = add nuw nsw i64 %25, 1
  %78 = load i64, ptr %17, align 8, !tbaa !63
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %24, label %80, !llvm.loop !67

80:                                               ; preds = %75, %14
  %81 = phi i32 [ 1, %14 ], [ %76, %75 ]
  %82 = tail call ptr @DestroyCacheView(ptr noundef %16) #9
  ret i32 %81
}

declare i32 @SetImageType(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @SortColormapByIntensity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 324, ptr noundef nonnull @.str.5) #9
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, ptr %0, align 8, !tbaa !62
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %115

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = tail call ptr @AcquireQuantumMemory(i64 noundef %12, i64 noundef 2) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load i64, ptr %11, align 8, !tbaa !53
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  br label %25

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %24 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 335, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %23) #9
  br label %115

25:                                               ; preds = %18, %25
  %26 = phi i64 [ 0, %18 ], [ %29, %25 ]
  %27 = trunc i64 %26 to i16
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 %26, i32 3
  store i16 %27, ptr %28, align 2, !tbaa !58
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp eq i64 %29, %16
  br i1 %30, label %31, label %25, !llvm.loop !68

31:                                               ; preds = %25, %15
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  tail call void @qsort(ptr noundef %33, i64 noundef %16, i64 noundef 8, ptr noundef nonnull @IntensityCompare) #9
  %34 = load i64, ptr %11, align 8, !tbaa !53
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 8, !tbaa !54
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ 0, %36 ], [ %45, %38 ]
  %40 = trunc i64 %39 to i16
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %39, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !58
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds i16, ptr %13, i64 %43
  store i16 %40, ptr %44, align 2, !tbaa !65
  %45 = add nuw nsw i64 %39, 1
  %46 = icmp eq i64 %45, %34
  br i1 %46, label %47, label %38, !llvm.loop !69

47:                                               ; preds = %38, %31
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %49 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %48) #9
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !63
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %111

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %59

55:                                               ; preds = %107
  %56 = add nuw nsw i64 %60, 1
  %57 = load i64, ptr %50, align 8, !tbaa !63
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %111, !llvm.loop !70

59:                                               ; preds = %53, %55
  %60 = phi i64 [ 0, %53 ], [ %56, %55 ]
  %61 = phi i32 [ 1, %53 ], [ %108, %55 ]
  %62 = load i64, ptr %54, align 8, !tbaa !64
  %63 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %49, i64 noundef 0, i64 noundef %60, i64 noundef %62, i64 noundef 1, ptr noundef nonnull %48) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %107, label %65

65:                                               ; preds = %59
  %66 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %49) #9
  %67 = load i64, ptr %54, align 8, !tbaa !64
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %65
  %70 = icmp eq ptr %66, null
  %71 = load ptr, ptr %32, align 8, !tbaa !54
  br label %72

72:                                               ; preds = %69, %84
  %73 = phi ptr [ %63, %69 ], [ %97, %84 ]
  %74 = phi i64 [ 0, %69 ], [ %98, %84 ]
  %75 = getelementptr inbounds i16, ptr %66, i64 %74
  br i1 %70, label %79, label %76

76:                                               ; preds = %72
  %77 = load i16, ptr %75, align 2, !tbaa !65
  %78 = zext i16 %77 to i64
  br label %79

79:                                               ; preds = %72, %76
  %80 = phi i64 [ %78, %76 ], [ 0, %72 ]
  %81 = getelementptr inbounds i16, ptr %13, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !65
  br i1 %70, label %84, label %83

83:                                               ; preds = %79
  store i16 %82, ptr %75, align 2, !tbaa !65
  br label %84

84:                                               ; preds = %83, %79
  %85 = zext i16 %82 to i64
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 %85, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !55
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 2
  store i16 %87, ptr %88, align 2, !tbaa !55
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 %85, i32 1
  %90 = load i16, ptr %89, align 2, !tbaa !56
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 1
  store i16 %90, ptr %91, align 2, !tbaa !56
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 %85
  %93 = load i16, ptr %92, align 2, !tbaa !57
  store i16 %93, ptr %73, align 2, !tbaa !57
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 %85, i32 3
  %95 = load i16, ptr %94, align 2, !tbaa !58
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  store i16 %95, ptr %96, align 2, !tbaa !58
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %98 = add nuw nsw i64 %74, 1
  %99 = icmp eq i64 %98, %67
  br i1 %99, label %100, label %72, !llvm.loop !71

100:                                              ; preds = %84, %65
  %101 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %49, ptr noundef nonnull %48) #12
  %102 = icmp ne i32 %101, 0
  %103 = icmp ne i32 %61, 0
  %104 = select i1 %102, i1 %103, i1 false
  %105 = zext i1 %104 to i32
  %106 = select i1 %104, i32 0, i32 8
  br label %107

107:                                              ; preds = %100, %59
  %108 = phi i32 [ 0, %59 ], [ %105, %100 ]
  %109 = phi i32 [ 10, %59 ], [ %106, %100 ]
  %110 = icmp eq i32 %109, 8
  br i1 %110, label %111, label %55

111:                                              ; preds = %55, %107, %47
  %112 = phi i32 [ 1, %47 ], [ %108, %107 ], [ %108, %55 ]
  %113 = tail call ptr @DestroyCacheView(ptr noundef %49) #9
  %114 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %13) #9
  br label %115

115:                                              ; preds = %7, %111, %21
  %116 = phi i32 [ 0, %21 ], [ %112, %111 ], [ 1, %7 ]
  ret i32 %116
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !55
  %5 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !56
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i16, ptr %1, align 2, !tbaa !57
  %10 = icmp eq i16 %6, %9
  br i1 %10, label %26, label %11

11:                                               ; preds = %8, %2
  %12 = uitofp i16 %4 to double
  %13 = uitofp i16 %6 to double
  %14 = fmul double %13, 0x3FE6E29307AF20EA
  %15 = tail call double @llvm.fmuladd.f64(double %12, double 2.126560e-01, double %14)
  %16 = load i16, ptr %1, align 2, !tbaa !57
  %17 = uitofp i16 %16 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 7.218600e-02, double %15)
  %19 = fptrunc double %18 to float
  %20 = fcmp ugt float %19, 0.000000e+00
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = fcmp ult float %19, 6.553500e+04
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = fadd float %19, 5.000000e-01
  %25 = fptoui float %24 to i16
  br label %26

26:                                               ; preds = %8, %11, %21, %23
  %27 = phi i16 [ %4, %8 ], [ %25, %23 ], [ 0, %11 ], [ -1, %21 ]
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %29 = load i16, ptr %28, align 2, !tbaa !55
  %30 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !56
  %32 = icmp eq i16 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i16, ptr %0, align 2, !tbaa !57
  %35 = icmp eq i16 %31, %34
  br i1 %35, label %51, label %36

36:                                               ; preds = %33, %26
  %37 = uitofp i16 %29 to double
  %38 = uitofp i16 %31 to double
  %39 = fmul double %38, 0x3FE6E29307AF20EA
  %40 = tail call double @llvm.fmuladd.f64(double %37, double 2.126560e-01, double %39)
  %41 = load i16, ptr %0, align 2, !tbaa !57
  %42 = uitofp i16 %41 to double
  %43 = tail call double @llvm.fmuladd.f64(double %42, double 7.218600e-02, double %40)
  %44 = fptrunc double %43 to float
  %45 = fcmp ugt float %44, 0.000000e+00
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = fcmp ult float %44, 6.553500e+04
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = fadd float %44, 5.000000e-01
  %50 = fptoui float %49 to i16
  br label %51

51:                                               ; preds = %33, %36, %46, %48
  %52 = phi i16 [ %29, %33 ], [ %50, %48 ], [ 0, %36 ], [ -1, %46 ]
  %53 = zext i16 %27 to i32
  %54 = zext i16 %52 to i32
  %55 = sub nsw i32 %53, %54
  ret i32 %55
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind allocsize(1,2) }
attributes #12 = { hot nounwind }

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
!34 = !{!35, !36, i64 12976}
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
!53 = !{!35, !39, i64 64}
!54 = !{!35, !40, i64 72}
!55 = !{!41, !42, i64 4}
!56 = !{!41, !42, i64 2}
!57 = !{!41, !42, i64 0}
!58 = !{!41, !42, i64 6}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!35, !36, i64 0}
!63 = !{!35, !39, i64 48}
!64 = !{!35, !39, i64 40}
!65 = !{!42, !42, i64 0}
!66 = distinct !{!66, !60, !61}
!67 = distinct !{!67, !60, !61}
!68 = distinct !{!68, !60, !61}
!69 = distinct !{!69, !60, !61}
!70 = distinct !{!70, !60, !61}
!71 = distinct !{!71, !60, !61}
