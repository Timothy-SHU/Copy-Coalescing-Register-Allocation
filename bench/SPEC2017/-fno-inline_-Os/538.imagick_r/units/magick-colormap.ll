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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AcquireImageColormap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 135, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  store i64 %1, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 8) #11
  br label %18

16:                                               ; preds = %9
  %17 = tail call ptr @ResizeQuantumMemory(ptr noundef nonnull %12, i64 noundef %1, i64 noundef 8) #12
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  store ptr %19, ptr %11, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %10, align 8, !tbaa !53
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = add i64 %1, -1
  %26 = tail call fastcc i64 @MagickMax(i64 noundef %25) #13
  %27 = udiv i64 65535, %26
  br label %32

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 146, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %30) #10
  br label %43

32:                                               ; preds = %24, %32
  %33 = phi i64 [ 0, %24 ], [ %39, %32 ]
  %34 = mul i64 %27, %33
  %35 = trunc i64 %34 to i16
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %33
  %37 = insertelement <4 x i16> <i16 poison, i16 0, i16 poison, i16 poison>, i16 %35, i64 0
  %38 = shufflevector <4 x i16> %37, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %38, ptr %36, align 2, !tbaa !55
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %22
  br i1 %40, label %41, label %32, !llvm.loop !56

41:                                               ; preds = %32, %21
  %42 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 2) #10
  br label %43

43:                                               ; preds = %28, %41
  %44 = phi i32 [ %42, %41 ], [ 0, %28 ]
  ret i32 %44
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(1,2)
declare ptr @ResizeQuantumMemory(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @MagickMax(i64 noundef %0) unnamed_addr #4 !PGOFuncName !58 {
  %2 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  ret i64 %2
}

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CycleColormapImage(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 205, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = load i32, ptr %0, align 8, !tbaa !59
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @SetImageType(ptr noundef nonnull %0, i32 noundef 4) #10
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %16 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %15) #10
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !60
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %24

24:                                               ; preds = %20, %70
  %25 = phi i64 [ 0, %20 ], [ %72, %70 ]
  %26 = phi i32 [ 1, %20 ], [ %71, %70 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %70, label %28

28:                                               ; preds = %24
  %29 = load i64, ptr %21, align 8, !tbaa !61
  %30 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %16, i64 noundef 0, i64 noundef %25, i64 noundef %29, i64 noundef 1, ptr noundef nonnull %15) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %70, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %16) #10
  %34 = load i64, ptr %21, align 8, !tbaa !61
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, null
  %38 = load ptr, ptr %23, align 8, !tbaa !54
  br label %39

39:                                               ; preds = %36, %59
  %40 = phi ptr [ %30, %36 ], [ %63, %59 ]
  %41 = phi i64 [ 0, %36 ], [ %64, %59 ]
  br i1 %37, label %42, label %48

42:                                               ; preds = %39
  %43 = load i64, ptr %22, align 8, !tbaa !53
  %44 = urem i64 %1, %43
  %45 = icmp slt i64 %44, 0
  %46 = select i1 %45, i64 %43, i64 0
  %47 = add nsw i64 %46, %44
  br label %59

48:                                               ; preds = %39
  %49 = getelementptr inbounds i16, ptr %33, i64 %41
  %50 = load i16, ptr %49, align 2, !tbaa !55
  %51 = zext i16 %50 to i64
  %52 = add nsw i64 %51, %1
  %53 = load i64, ptr %22, align 8, !tbaa !53
  %54 = urem i64 %52, %53
  %55 = icmp slt i64 %54, 0
  %56 = select i1 %55, i64 %53, i64 0
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i16
  store i16 %58, ptr %49, align 2, !tbaa !55
  br label %59

59:                                               ; preds = %42, %48
  %60 = phi i64 [ %47, %42 ], [ %57, %48 ]
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 %60
  %62 = load <4 x i16>, ptr %61, align 2, !tbaa !55
  store <4 x i16> %62, ptr %40, align 2, !tbaa !55
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %40, i64 1
  %64 = add nuw nsw i64 %41, 1
  %65 = icmp eq i64 %64, %34
  br i1 %65, label %66, label %39, !llvm.loop !62

66:                                               ; preds = %59, %32
  %67 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %16, ptr noundef nonnull %15) #14
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  br label %70

70:                                               ; preds = %28, %24, %66
  %71 = phi i32 [ %69, %66 ], [ 0, %24 ], [ 0, %28 ]
  %72 = add nuw nsw i64 %25, 1
  %73 = load i64, ptr %17, align 8, !tbaa !60
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %24, label %75, !llvm.loop !63

75:                                               ; preds = %70, %14
  %76 = phi i32 [ 1, %14 ], [ %71, %70 ]
  %77 = tail call ptr @DestroyCacheView(ptr noundef %16) #10
  ret i32 %76
}

; Function Attrs: optsize
declare i32 @SetImageType(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SortColormapByIntensity(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 324, ptr noundef nonnull @.str.5) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, ptr %0, align 8, !tbaa !59
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %153

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = tail call ptr @AcquireQuantumMemory(i64 noundef %12, i64 noundef 2) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %80, label %15

15:                                               ; preds = %10
  %16 = load i64, ptr %11, align 8, !tbaa !53
  %17 = icmp sgt i64 %16, 0
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  br i1 %17, label %20, label %84

20:                                               ; preds = %15
  %21 = add nuw i64 %16, 7
  %22 = and i64 %21, -8
  %23 = add nsw i64 %16, -1
  %24 = insertelement <8 x i64> poison, i64 %23, i64 0
  %25 = shufflevector <8 x i64> %24, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %26

26:                                               ; preds = %76, %20
  %27 = phi i64 [ 0, %20 ], [ %77, %76 ]
  %28 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %20 ], [ %78, %76 ]
  %29 = trunc i64 %27 to i16
  %30 = icmp ule <8 x i64> %28, %25
  %31 = extractelement <8 x i1> %30, i64 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %27, i32 3
  store i16 %29, ptr %33, align 2, !tbaa !64
  br label %34

34:                                               ; preds = %32, %26
  %35 = extractelement <8 x i1> %30, i64 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = or disjoint i64 %27, 1
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %37, i32 3
  %39 = or disjoint i16 %29, 1
  store i16 %39, ptr %38, align 2, !tbaa !64
  br label %40

40:                                               ; preds = %36, %34
  %41 = extractelement <8 x i1> %30, i64 2
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = or disjoint i64 %27, 2
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %43, i32 3
  %45 = or disjoint i16 %29, 2
  store i16 %45, ptr %44, align 2, !tbaa !64
  br label %46

46:                                               ; preds = %42, %40
  %47 = extractelement <8 x i1> %30, i64 3
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = or disjoint i64 %27, 3
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %49, i32 3
  %51 = or disjoint i16 %29, 3
  store i16 %51, ptr %50, align 2, !tbaa !64
  br label %52

52:                                               ; preds = %48, %46
  %53 = extractelement <8 x i1> %30, i64 4
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = or disjoint i64 %27, 4
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %55, i32 3
  %57 = or disjoint i16 %29, 4
  store i16 %57, ptr %56, align 2, !tbaa !64
  br label %58

58:                                               ; preds = %54, %52
  %59 = extractelement <8 x i1> %30, i64 5
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %61 = or disjoint i64 %27, 5
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %61, i32 3
  %63 = or disjoint i16 %29, 5
  store i16 %63, ptr %62, align 2, !tbaa !64
  br label %64

64:                                               ; preds = %60, %58
  %65 = extractelement <8 x i1> %30, i64 6
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = or disjoint i64 %27, 6
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %67, i32 3
  %69 = or disjoint i16 %29, 6
  store i16 %69, ptr %68, align 2, !tbaa !64
  br label %70

70:                                               ; preds = %66, %64
  %71 = extractelement <8 x i1> %30, i64 7
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = or disjoint i64 %27, 7
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %19, i64 %73, i32 3
  %75 = or disjoint i16 %29, 7
  store i16 %75, ptr %74, align 2, !tbaa !64
  br label %76

76:                                               ; preds = %72, %70
  %77 = add i64 %27, 8
  %78 = add <8 x i64> %28, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %79 = icmp eq i64 %77, %22
  br i1 %79, label %84, label %26, !llvm.loop !65

80:                                               ; preds = %10
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %83 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %81, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 335, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %82) #10
  br label %153

84:                                               ; preds = %76, %15
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  tail call void @qsort(ptr noundef %19, i64 noundef %16, i64 noundef 8, ptr noundef nonnull @IntensityCompare) #10
  %86 = load i64, ptr %11, align 8, !tbaa !53
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load ptr, ptr %85, align 8, !tbaa !54
  br label %90

90:                                               ; preds = %88, %90
  %91 = phi i64 [ 0, %88 ], [ %97, %90 ]
  %92 = trunc i64 %91 to i16
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 %91, i32 3
  %94 = load i16, ptr %93, align 2, !tbaa !64
  %95 = zext i16 %94 to i64
  %96 = getelementptr inbounds i16, ptr %13, i64 %95
  store i16 %92, ptr %96, align 2, !tbaa !55
  %97 = add nuw nsw i64 %91, 1
  %98 = icmp eq i64 %97, %86
  br i1 %98, label %99, label %90, !llvm.loop !68

99:                                               ; preds = %90, %84
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %101 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %100) #10
  %102 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %103 = load i64, ptr %102, align 8, !tbaa !60
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %149

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  br label %107

107:                                              ; preds = %105, %144
  %108 = phi i64 [ 0, %105 ], [ %146, %144 ]
  %109 = phi i32 [ 1, %105 ], [ %145, %144 ]
  %110 = load i64, ptr %106, align 8, !tbaa !61
  %111 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %101, i64 noundef 0, i64 noundef %108, i64 noundef %110, i64 noundef 1, ptr noundef nonnull %100) #14
  %112 = icmp eq ptr %111, null
  br i1 %112, label %144, label %113

113:                                              ; preds = %107
  %114 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %101) #10
  %115 = load i64, ptr %106, align 8, !tbaa !61
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %113
  %118 = icmp eq ptr %114, null
  %119 = load ptr, ptr %85, align 8, !tbaa !54
  br label %120

120:                                              ; preds = %117, %131
  %121 = phi ptr [ %111, %117 ], [ %136, %131 ]
  %122 = phi i64 [ 0, %117 ], [ %137, %131 ]
  br i1 %118, label %123, label %125

123:                                              ; preds = %120
  %124 = load i16, ptr %13, align 2, !tbaa !55
  br label %131

125:                                              ; preds = %120
  %126 = getelementptr inbounds i16, ptr %114, i64 %122
  %127 = load i16, ptr %126, align 2, !tbaa !55
  %128 = zext i16 %127 to i64
  %129 = getelementptr inbounds i16, ptr %13, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !55
  store i16 %130, ptr %126, align 2, !tbaa !55
  br label %131

131:                                              ; preds = %123, %125
  %132 = phi i16 [ %124, %123 ], [ %130, %125 ]
  %133 = zext i16 %132 to i64
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 %133
  %135 = load <4 x i16>, ptr %134, align 2, !tbaa !55
  store <4 x i16> %135, ptr %121, align 2, !tbaa !55
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %121, i64 1
  %137 = add nuw nsw i64 %122, 1
  %138 = icmp eq i64 %137, %115
  br i1 %138, label %139, label %120, !llvm.loop !69

139:                                              ; preds = %131, %113
  %140 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %101, ptr noundef nonnull %100) #14
  %141 = icmp ne i32 %140, 0
  %142 = icmp ne i32 %109, 0
  %143 = and i1 %142, %141
  br i1 %143, label %144, label %149

144:                                              ; preds = %107, %139
  %145 = phi i32 [ 1, %139 ], [ 0, %107 ]
  %146 = add nuw nsw i64 %108, 1
  %147 = load i64, ptr %102, align 8, !tbaa !60
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %107, label %149, !llvm.loop !70

149:                                              ; preds = %144, %139, %99
  %150 = phi i32 [ 1, %99 ], [ 0, %139 ], [ %145, %144 ]
  %151 = tail call ptr @DestroyCacheView(ptr noundef %101) #10
  %152 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %13) #10
  br label %153

153:                                              ; preds = %7, %149, %80
  %154 = phi i32 [ 0, %80 ], [ %150, %149 ], [ 1, %7 ]
  ret i32 %154
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @IntensityCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !71 {
  %3 = tail call fastcc zeroext i16 @PixelPacketIntensity(ptr noundef %1) #13
  %4 = zext i16 %3 to i32
  %5 = tail call fastcc zeroext i16 @PixelPacketIntensity(ptr noundef %0) #13
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @PixelPacketIntensity(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !72 {
  %2 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !73
  %4 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = icmp eq i16 %3, %5
  %7 = load i16, ptr %0, align 2, !tbaa !75
  %8 = icmp eq i16 %3, %7
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = uitofp i16 %3 to double
  %12 = uitofp i16 %5 to double
  %13 = fmul double %12, 0x3FE6E29307AF20EA
  %14 = tail call double @llvm.fmuladd.f64(double %11, double 2.126560e-01, double %13)
  %15 = uitofp i16 %7 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 7.218600e-02, double %14)
  %17 = fptrunc double %16 to float
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #13
  br label %19

19:                                               ; preds = %1, %10
  %20 = phi i16 [ %18, %10 ], [ %3, %1 ]
  ret i16 %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #4 !PGOFuncName !76 {
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize allocsize(0,1) }
attributes #12 = { nounwind optsize allocsize(1,2) }
attributes #13 = { optsize }
attributes #14 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!55 = !{!42, !42, i64 0}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"colormap.c:MagickMax"}
!59 = !{!35, !36, i64 0}
!60 = !{!35, !39, i64 48}
!61 = !{!35, !39, i64 40}
!62 = distinct !{!62, !57}
!63 = distinct !{!63, !57}
!64 = !{!41, !42, i64 6}
!65 = distinct !{!65, !57, !66, !67}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = distinct !{!68, !57}
!69 = distinct !{!69, !57}
!70 = distinct !{!70, !57}
!71 = !{!"colormap.c:IntensityCompare"}
!72 = !{!"colormap.c:PixelPacketIntensity"}
!73 = !{!41, !42, i64 4}
!74 = !{!41, !42, i64 2}
!75 = !{!41, !42, i64 0}
!76 = !{!"colormap.c:ClampToQuantum"}
