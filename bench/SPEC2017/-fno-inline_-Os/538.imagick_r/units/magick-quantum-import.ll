; ModuleID = 'magick/quantum-import.c'
source_filename = "magick/quantum-import.c"
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
%struct._QuantumInfo = type { i64, i64, i32, double, double, double, i64, i32, i32, i32, i64, ptr, i64, i32, %struct._QuantumState, ptr, i64 }
%struct._QuantumState = type { double, i32, i64, ptr }

@.str = private unnamed_addr constant [24 x i8] c"magick/quantum-import.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ColorSeparatedImageRequired\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ColormappedImageRequired\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"InvalidColormapIndex\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @ImportQuantumPixels(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noalias noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3392, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #9
  br label %13

13:                                               ; preds = %10, %6
  %14 = icmp eq ptr %4, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call ptr @GetQuantumPixels(ptr noundef %2) #9
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %16, %15 ], [ %4, %13 ]
  %19 = icmp eq ptr %1, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = tail call i64 @GetImageExtent(ptr noundef nonnull %0) #9
  %22 = tail call ptr @GetAuthenticPixelQueue(ptr noundef nonnull %0) #9
  %23 = tail call ptr @GetAuthenticIndexQueue(ptr noundef nonnull %0) #9
  br label %28

24:                                               ; preds = %17
  %25 = tail call i64 @GetCacheViewExtent(ptr noundef nonnull %1) #9
  %26 = tail call ptr @GetCacheViewAuthenticPixelQueue(ptr noundef nonnull %1) #10
  %27 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef nonnull %1) #9
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi ptr [ %22, %20 ], [ %26, %24 ]
  %30 = phi ptr [ %23, %20 ], [ %27, %24 ]
  %31 = phi i64 [ %21, %20 ], [ %25, %24 ]
  tail call void @ResetQuantumState(ptr noundef %2) #9
  %32 = tail call i64 @GetQuantumExtent(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #9
  switch i32 %3, label %49 [
    i32 1, label %33
    i32 26, label %34
    i32 16, label %35
    i32 27, label %35
    i32 2, label %36
    i32 3, label %37
    i32 19, label %37
    i32 22, label %38
    i32 5, label %39
    i32 4, label %40
    i32 25, label %40
    i32 8, label %41
    i32 7, label %42
    i32 9, label %43
    i32 12, label %43
    i32 11, label %44
    i32 10, label %45
    i32 14, label %46
    i32 6, label %46
    i32 18, label %47
    i32 23, label %47
    i32 15, label %48
    i32 17, label %48
    i32 24, label %48
  ]

33:                                               ; preds = %28
  tail call fastcc void @ImportAlphaQuantum(ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %87

34:                                               ; preds = %28
  tail call fastcc void @ImportBGRQuantum(ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %87

35:                                               ; preds = %28, %28
  tail call fastcc void @ImportBGRAQuantum(ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %49

36:                                               ; preds = %28
  tail call fastcc void @ImportBlackQuantum(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %30, ptr noundef %5) #11
  br label %87

37:                                               ; preds = %28, %28
  tail call fastcc void @ImportBlueQuantum(ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %68

38:                                               ; preds = %28
  tail call fastcc void @ImportCbYCrYQuantum(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %87

39:                                               ; preds = %28
  tail call fastcc void @ImportCMYKQuantum(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29, ptr noundef %30, ptr noundef %5) #11
  br label %87

40:                                               ; preds = %28, %28
  tail call fastcc void @ImportCMYKAQuantum(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29, ptr noundef %30, ptr noundef %5) #11
  br label %49

41:                                               ; preds = %28
  tail call fastcc void @ImportGrayQuantum(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %87

42:                                               ; preds = %28
  tail call fastcc void @ImportGrayAlphaQuantum(ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %87

43:                                               ; preds = %28, %28
  tail call fastcc void @ImportGreenQuantum(ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %68

44:                                               ; preds = %28
  tail call fastcc void @ImportIndexQuantum(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29, ptr noundef %30, ptr noundef %5) #11
  br label %87

45:                                               ; preds = %28
  tail call fastcc void @ImportIndexAlphaQuantum(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29, ptr noundef %30, ptr noundef %5) #11
  br label %87

46:                                               ; preds = %28, %28
  tail call fastcc void @ImportRedQuantum(ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %68

47:                                               ; preds = %28, %28
  tail call fastcc void @ImportRGBQuantum(ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %49

48:                                               ; preds = %28, %28, %28
  tail call fastcc void @ImportRGBAQuantum(ptr noundef %2, i64 noundef %31, ptr noundef %18, ptr noundef %29) #11
  br label %49

49:                                               ; preds = %28, %48, %47, %40, %35
  %50 = add i32 %3, -23
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = tail call ptr @GetAuthenticPixelQueue(ptr noundef nonnull %0) #9
  br i1 %19, label %56, label %54

54:                                               ; preds = %52
  %55 = tail call ptr @GetCacheViewAuthenticPixelQueue(ptr noundef nonnull %1) #10
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi ptr [ %55, %54 ], [ %53, %52 ]
  %58 = icmp sgt i64 %31, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56, %59
  %60 = phi ptr [ %65, %59 ], [ %57, %56 ]
  %61 = phi i64 [ %66, %59 ], [ 0, %56 ]
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 1
  %63 = load <2 x i16>, ptr %62, align 2, !tbaa !53
  %64 = shufflevector <2 x i16> %63, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %64, ptr %62, align 2, !tbaa !53
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 1
  %66 = add nuw nsw i64 %61, 1
  %67 = icmp eq i64 %66, %31
  br i1 %67, label %68, label %59, !llvm.loop !54

68:                                               ; preds = %59, %56, %37, %43, %46, %49
  %69 = and i32 %3, -9
  %70 = icmp eq i32 %69, 17
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %0) #9
  br i1 %19, label %75, label %73

73:                                               ; preds = %71
  %74 = tail call ptr @GetCacheViewAuthenticPixelQueue(ptr noundef nonnull %1) #10
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %74, %73 ], [ %72, %71 ]
  %77 = icmp sgt i64 %31, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75, %78
  %79 = phi ptr [ %84, %78 ], [ %76, %75 ]
  %80 = phi i64 [ %85, %78 ], [ 0, %75 ]
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 0, i32 3
  %82 = load i16, ptr %81, align 2, !tbaa !56
  %83 = xor i16 %82, -1
  store i16 %83, ptr %81, align 2, !tbaa !56
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %79, i64 1
  %85 = add nuw nsw i64 %80, 1
  %86 = icmp eq i64 %85, %31
  br i1 %86, label %87, label %78, !llvm.loop !57

87:                                               ; preds = %78, %75, %45, %44, %42, %41, %39, %38, %36, %34, %33, %68
  %88 = getelementptr inbounds %struct._QuantumInfo, ptr %2, i64 0, i32 9
  %89 = load i32, ptr %88, align 8, !tbaa !58
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %127

91:                                               ; preds = %87
  %92 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %0) #9
  br i1 %19, label %95, label %93

93:                                               ; preds = %91
  %94 = tail call ptr @GetCacheViewAuthenticPixelQueue(ptr noundef nonnull %1) #10
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi ptr [ %94, %93 ], [ %92, %91 ]
  %97 = icmp sgt i64 %31, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %95, %98
  %99 = phi ptr [ %124, %98 ], [ %96, %95 ]
  %100 = phi i64 [ %125, %98 ], [ 0, %95 ]
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  %102 = load i16, ptr %101, align 2, !tbaa !56
  %103 = xor i16 %102, -1
  %104 = uitofp i16 %103 to double
  %105 = fmul double %104, 0x3EF0001000100010
  %106 = fptrunc double %105 to float
  %107 = fpext float %106 to double
  %108 = tail call fastcc double @PerceptibleReciprocal(double noundef %107) #11
  %109 = fptrunc double %108 to float
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %111 = load i16, ptr %110, align 2, !tbaa !61
  %112 = uitofp i16 %111 to float
  %113 = fmul float %109, %112
  %114 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %113) #11
  store i16 %114, ptr %110, align 2, !tbaa !61
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 1
  %116 = load i16, ptr %115, align 2, !tbaa !62
  %117 = uitofp i16 %116 to float
  %118 = fmul float %109, %117
  %119 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %118) #11
  store i16 %119, ptr %115, align 2, !tbaa !62
  %120 = load i16, ptr %99, align 2, !tbaa !63
  %121 = uitofp i16 %120 to float
  %122 = fmul float %109, %121
  %123 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %122) #11
  store i16 %123, ptr %99, align 2, !tbaa !63
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 1
  %125 = add nuw nsw i64 %100, 1
  %126 = icmp eq i64 %125, %31
  br i1 %126, label %127, label %98, !llvm.loop !64

127:                                              ; preds = %98, %95, %87
  ret i64 %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetQuantumPixels(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetImageExtent(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetAuthenticPixelQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetCacheViewExtent(ptr noundef) local_unnamed_addr #2

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixelQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @ResetQuantumState(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetQuantumExtent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportAlphaQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2, ptr noalias nocapture noundef writeonly %3) unnamed_addr #4 !PGOFuncName !65 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %11 = load i64, ptr %0, align 8, !tbaa !66
  %12 = add i64 %11, -8
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 61)
  switch i64 %13, label %146 [
    i64 0, label %14
    i64 1, label %33
    i64 3, label %78
    i64 7, label %122
  ]

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  %15 = icmp sgt i64 %1, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %18 = load i64, ptr %17, align 8, !tbaa !67
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %2, %16 ], [ %28, %19 ]
  %21 = phi i64 [ 0, %16 ], [ %30, %19 ]
  %22 = phi ptr [ %3, %16 ], [ %29, %19 ]
  %23 = call fastcc ptr @PushCharPixel(ptr noundef %20, ptr noundef nonnull %6) #11
  %24 = load i8, ptr %6, align 1, !tbaa !68
  %25 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %24) #11
  %26 = xor i16 %25, -1
  %27 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 0, i32 3
  store i16 %26, ptr %27, align 2, !tbaa !56
  %28 = getelementptr inbounds i8, ptr %23, i64 %18
  %29 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 1
  %30 = add nuw nsw i64 %21, 1
  %31 = icmp eq i64 %30, %1
  br i1 %31, label %32, label %19, !llvm.loop !69

32:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %166

33:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  %34 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !70
  %36 = icmp eq i32 %35, 1
  %37 = icmp sgt i64 %1, 0
  br i1 %36, label %44, label %38

38:                                               ; preds = %33
  br i1 %37, label %39, label %77

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !71
  %42 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %43 = load i64, ptr %42, align 8, !tbaa !67
  br label %65

44:                                               ; preds = %33
  br i1 %37, label %45, label %77

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !71
  %48 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %49 = load i64, ptr %48, align 8, !tbaa !67
  br label %50

50:                                               ; preds = %45, %50
  %51 = phi ptr [ %2, %45 ], [ %61, %50 ]
  %52 = phi i64 [ 0, %45 ], [ %63, %50 ]
  %53 = phi ptr [ %3, %45 ], [ %62, %50 ]
  %54 = call fastcc ptr @PushShortPixel(i32 noundef %47, ptr noundef %51, ptr noundef nonnull %7) #11
  %55 = load i16, ptr %7, align 2, !tbaa !53
  %56 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %55) #11
  %57 = fmul float %56, 6.553500e+04
  %58 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %57) #11
  %59 = xor i16 %58, -1
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 3
  store i16 %59, ptr %60, align 2, !tbaa !56
  %61 = getelementptr inbounds i8, ptr %54, i64 %49
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  %63 = add nuw nsw i64 %52, 1
  %64 = icmp eq i64 %63, %1
  br i1 %64, label %77, label %50, !llvm.loop !72

65:                                               ; preds = %39, %65
  %66 = phi ptr [ %2, %39 ], [ %73, %65 ]
  %67 = phi i64 [ 0, %39 ], [ %75, %65 ]
  %68 = phi ptr [ %3, %39 ], [ %74, %65 ]
  %69 = call fastcc ptr @PushShortPixel(i32 noundef %41, ptr noundef %66, ptr noundef nonnull %7) #11
  %70 = load i16, ptr %7, align 2, !tbaa !53
  %71 = xor i16 %70, -1
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 0, i32 3
  store i16 %71, ptr %72, align 2, !tbaa !56
  %73 = getelementptr inbounds i8, ptr %69, i64 %43
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 1
  %75 = add nuw nsw i64 %67, 1
  %76 = icmp eq i64 %75, %1
  br i1 %76, label %77, label %65, !llvm.loop !73

77:                                               ; preds = %65, %50, %38, %44
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %166

78:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %79 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !70
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = icmp sgt i64 %1, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %86 = load i32, ptr %85, align 8, !tbaa !71
  %87 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %88 = load i64, ptr %87, align 8, !tbaa !67
  br label %108

89:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %90 = icmp sgt i64 %1, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %93 = load i64, ptr %92, align 8, !tbaa !67
  br label %94

94:                                               ; preds = %91, %94
  %95 = phi ptr [ %2, %91 ], [ %103, %94 ]
  %96 = phi i64 [ 0, %91 ], [ %105, %94 ]
  %97 = phi ptr [ %3, %91 ], [ %104, %94 ]
  %98 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef %95, ptr noundef nonnull %9) #11
  %99 = load float, ptr %9, align 4, !tbaa !74
  %100 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %99) #11
  %101 = xor i16 %100, -1
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 3
  store i16 %101, ptr %102, align 2, !tbaa !56
  %103 = getelementptr inbounds i8, ptr %98, i64 %93
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 1
  %105 = add nuw nsw i64 %96, 1
  %106 = icmp eq i64 %105, %1
  br i1 %106, label %107, label %94, !llvm.loop !76

107:                                              ; preds = %94, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %121

108:                                              ; preds = %84, %108
  %109 = phi ptr [ %2, %84 ], [ %117, %108 ]
  %110 = phi i64 [ 0, %84 ], [ %119, %108 ]
  %111 = phi ptr [ %3, %84 ], [ %118, %108 ]
  %112 = call fastcc ptr @PushLongPixel(i32 noundef %86, ptr noundef %109, ptr noundef nonnull %8) #11
  %113 = load i32, ptr %8, align 4, !tbaa !77
  %114 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %113) #11
  %115 = xor i16 %114, -1
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 3
  store i16 %115, ptr %116, align 2, !tbaa !56
  %117 = getelementptr inbounds i8, ptr %112, i64 %88
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 1
  %119 = add nuw nsw i64 %110, 1
  %120 = icmp eq i64 %119, %1
  br i1 %120, label %121, label %108, !llvm.loop !78

121:                                              ; preds = %108, %82, %107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %166

122:                                              ; preds = %4
  %123 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !70
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %146

126:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %127 = icmp sgt i64 %1, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %130 = load i64, ptr %129, align 8, !tbaa !67
  br label %131

131:                                              ; preds = %128, %131
  %132 = phi ptr [ %2, %128 ], [ %141, %131 ]
  %133 = phi i64 [ 0, %128 ], [ %143, %131 ]
  %134 = phi ptr [ %3, %128 ], [ %142, %131 ]
  %135 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef %132, ptr noundef nonnull %10) #11
  %136 = load double, ptr %10, align 8, !tbaa !79
  %137 = fptrunc double %136 to float
  %138 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %137) #11
  %139 = xor i16 %138, -1
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 0, i32 3
  store i16 %139, ptr %140, align 2, !tbaa !56
  %141 = getelementptr inbounds i8, ptr %135, i64 %130
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %134, i64 1
  %143 = add nuw nsw i64 %133, 1
  %144 = icmp eq i64 %143, %1
  br i1 %144, label %145, label %131, !llvm.loop !80

145:                                              ; preds = %131, %126
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %166

146:                                              ; preds = %122, %4
  %147 = tail call fastcc i64 @GetQuantumRange(i64 noundef %11) #11
  %148 = icmp sgt i64 %1, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %151

151:                                              ; preds = %149, %151
  %152 = phi ptr [ %2, %149 ], [ %162, %151 ]
  %153 = phi i64 [ 0, %149 ], [ %164, %151 ]
  %154 = phi ptr [ %3, %149 ], [ %163, %151 ]
  %155 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %152, ptr noundef nonnull %5) #11
  %156 = load i32, ptr %5, align 4, !tbaa !77
  %157 = zext i32 %156 to i64
  %158 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %157, i64 noundef %147) #11
  %159 = xor i16 %158, -1
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %154, i64 0, i32 3
  store i16 %159, ptr %160, align 2, !tbaa !56
  %161 = load i64, ptr %150, align 8, !tbaa !67
  %162 = getelementptr inbounds i8, ptr %155, i64 %161
  %163 = getelementptr inbounds %struct._PixelPacket, ptr %154, i64 1
  %164 = add nuw nsw i64 %153, 1
  %165 = icmp eq i64 %164, %1
  br i1 %165, label %166, label %151, !llvm.loop !81

166:                                              ; preds = %151, %146, %145, %121, %77, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportBGRQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2, ptr noalias noundef writeonly %3) unnamed_addr #4 !PGOFuncName !82 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %12 = load i64, ptr %0, align 8, !tbaa !66
  switch i64 %12, label %392 [
    i64 8, label %13
    i64 10, label %39
    i64 12, label %123
    i64 16, label %245
    i64 32, label %304
    i64 64, label %360
  ]

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  %14 = icmp sgt i64 %1, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !67
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %36, %18 ]
  %20 = phi ptr [ %3, %15 ], [ %35, %18 ]
  %21 = phi ptr [ %2, %15 ], [ %34, %18 ]
  %22 = call fastcc ptr @PushCharPixel(ptr noundef %21, ptr noundef nonnull %6) #11
  %23 = load i8, ptr %6, align 1, !tbaa !68
  %24 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %23) #11
  store i16 %24, ptr %20, align 2, !tbaa !63
  %25 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %22, ptr noundef nonnull %6) #11
  %26 = load i8, ptr %6, align 1, !tbaa !68
  %27 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %26) #11
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 1
  store i16 %27, ptr %28, align 2, !tbaa !62
  %29 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %25, ptr noundef nonnull %6) #11
  %30 = load i8, ptr %6, align 1, !tbaa !68
  %31 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %30) #11
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 2
  store i16 %31, ptr %32, align 2, !tbaa !61
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 3
  store i16 0, ptr %33, align 2, !tbaa !56
  %34 = getelementptr inbounds i8, ptr %29, i64 %17
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 1
  %36 = add nuw nsw i64 %19, 1
  %37 = icmp eq i64 %36, %1
  br i1 %37, label %38, label %18, !llvm.loop !83

38:                                               ; preds = %18, %13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %416

39:                                               ; preds = %4
  %40 = tail call fastcc i64 @GetQuantumRange(i64 noundef 10) #11
  %41 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !84
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = icmp sgt i64 %1, 0
  br i1 %45, label %46, label %416

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %48 = load i32, ptr %47, align 8, !tbaa !71
  %49 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %50 = load i64, ptr %49, align 8, !tbaa !67
  br label %51

51:                                               ; preds = %46, %51
  %52 = phi i64 [ 0, %46 ], [ %72, %51 ]
  %53 = phi ptr [ %3, %46 ], [ %71, %51 ]
  %54 = phi ptr [ %2, %46 ], [ %70, %51 ]
  %55 = call fastcc ptr @PushLongPixel(i32 noundef %48, ptr noundef %54, ptr noundef nonnull %5) #11
  %56 = load i32, ptr %5, align 4, !tbaa !77
  %57 = lshr i32 %56, 22
  %58 = zext nneg i32 %57 to i64
  %59 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %58, i64 noundef %40) #11
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 2
  store i16 %59, ptr %60, align 2, !tbaa !61
  %61 = lshr i32 %56, 12
  %62 = and i32 %61, 1023
  %63 = zext nneg i32 %62 to i64
  %64 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %63, i64 noundef %40) #11
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 1
  store i16 %64, ptr %65, align 2, !tbaa !62
  %66 = lshr i32 %56, 2
  %67 = and i32 %66, 1023
  %68 = zext nneg i32 %67 to i64
  %69 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %68, i64 noundef %40) #11
  store i16 %69, ptr %53, align 2, !tbaa !63
  %70 = getelementptr inbounds i8, ptr %55, i64 %50
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  %72 = add nuw nsw i64 %52, 1
  %73 = icmp eq i64 %72, %1
  br i1 %73, label %416, label %51, !llvm.loop !85

74:                                               ; preds = %39
  %75 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !86
  %77 = icmp eq i64 %76, 32
  %78 = icmp sgt i64 %1, 0
  br i1 %77, label %80, label %79

79:                                               ; preds = %74
  br i1 %78, label %102, label %416

80:                                               ; preds = %74
  br i1 %78, label %81, label %416

81:                                               ; preds = %80, %81
  %82 = phi i64 [ %100, %81 ], [ 0, %80 ]
  %83 = phi ptr [ %99, %81 ], [ %3, %80 ]
  %84 = phi ptr [ %94, %81 ], [ %2, %80 ]
  %85 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %84, ptr noundef nonnull %5) #11
  %86 = load i32, ptr %5, align 4, !tbaa !77
  %87 = zext i32 %86 to i64
  %88 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %87, i64 noundef %40) #11
  store i16 %88, ptr %83, align 2, !tbaa !63
  %89 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %85, ptr noundef nonnull %5) #11
  %90 = load i32, ptr %5, align 4, !tbaa !77
  %91 = zext i32 %90 to i64
  %92 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %91, i64 noundef %40) #11
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 1
  store i16 %92, ptr %93, align 2, !tbaa !62
  %94 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %89, ptr noundef nonnull %5) #11
  %95 = load i32, ptr %5, align 4, !tbaa !77
  %96 = zext i32 %95 to i64
  %97 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %96, i64 noundef %40) #11
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 2
  store i16 %97, ptr %98, align 2, !tbaa !61
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %100 = add nuw nsw i64 %82, 1
  %101 = icmp eq i64 %100, %1
  br i1 %101, label %416, label %81, !llvm.loop !87

102:                                              ; preds = %79, %102
  %103 = phi i64 [ %121, %102 ], [ 0, %79 ]
  %104 = phi ptr [ %120, %102 ], [ %3, %79 ]
  %105 = phi ptr [ %115, %102 ], [ %2, %79 ]
  %106 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %105, ptr noundef nonnull %5) #11
  %107 = load i32, ptr %5, align 4, !tbaa !77
  %108 = zext i32 %107 to i64
  %109 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %108, i64 noundef %40) #11
  store i16 %109, ptr %104, align 2, !tbaa !63
  %110 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %106, ptr noundef nonnull %5) #11
  %111 = load i32, ptr %5, align 4, !tbaa !77
  %112 = zext i32 %111 to i64
  %113 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %112, i64 noundef %40) #11
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 1
  store i16 %113, ptr %114, align 2, !tbaa !62
  %115 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %110, ptr noundef nonnull %5) #11
  %116 = load i32, ptr %5, align 4, !tbaa !77
  %117 = zext i32 %116 to i64
  %118 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %117, i64 noundef %40) #11
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 2
  store i16 %118, ptr %119, align 2, !tbaa !61
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 1
  %121 = add nuw nsw i64 %103, 1
  %122 = icmp eq i64 %121, %1
  br i1 %122, label %416, label %102, !llvm.loop !88

123:                                              ; preds = %4
  %124 = tail call fastcc i64 @GetQuantumRange(i64 noundef 12) #11
  %125 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %126 = load i32, ptr %125, align 4, !tbaa !84
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %196

128:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  %129 = mul i64 %1, 3
  %130 = add i64 %129, -1
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %134 = load i32, ptr %133, align 8, !tbaa !71
  %135 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %136 = load i64, ptr %135, align 8, !tbaa !67
  br label %153

137:                                              ; preds = %184
  %138 = urem i64 %187, 3
  br label %139

139:                                              ; preds = %137, %128
  %140 = phi ptr [ %2, %128 ], [ %186, %137 ]
  %141 = phi ptr [ %3, %128 ], [ %185, %137 ]
  %142 = phi i64 [ 0, %128 ], [ %138, %137 ]
  %143 = and i64 %129, 1
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %195, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %147 = load i32, ptr %146, align 8, !tbaa !71
  %148 = call fastcc ptr @PushShortPixel(i32 noundef %147, ptr noundef %140, ptr noundef nonnull %7) #11
  %149 = load i16, ptr %7, align 2, !tbaa !53
  %150 = lshr i16 %149, 4
  %151 = zext nneg i16 %150 to i64
  %152 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %151, i64 noundef %124) #11
  switch i64 %142, label %189 [
    i64 2, label %193
    i64 1, label %191
  ]

153:                                              ; preds = %132, %184
  %154 = phi i64 [ 0, %132 ], [ %187, %184 ]
  %155 = phi ptr [ %3, %132 ], [ %185, %184 ]
  %156 = phi ptr [ %2, %132 ], [ %186, %184 ]
  %157 = call fastcc ptr @PushShortPixel(i32 noundef %134, ptr noundef %156, ptr noundef nonnull %7) #11
  %158 = urem i64 %154, 3
  %159 = load i16, ptr %7, align 2, !tbaa !53
  %160 = lshr i16 %159, 4
  %161 = zext nneg i16 %160 to i64
  %162 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %161, i64 noundef %124) #11
  switch i64 %158, label %163 [
    i64 2, label %167
    i64 1, label %165
  ]

163:                                              ; preds = %153
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 2
  store i16 %162, ptr %164, align 2, !tbaa !61
  br label %169

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 1
  store i16 %162, ptr %166, align 2, !tbaa !62
  br label %169

167:                                              ; preds = %153
  store i16 %162, ptr %155, align 2, !tbaa !63
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 1
  br label %169

169:                                              ; preds = %167, %165, %163
  %170 = phi ptr [ %155, %163 ], [ %155, %165 ], [ %168, %167 ]
  %171 = call fastcc ptr @PushShortPixel(i32 noundef %134, ptr noundef nonnull %157, ptr noundef nonnull %7) #11
  %172 = or disjoint i64 %154, 1
  %173 = urem i64 %172, 3
  %174 = load i16, ptr %7, align 2, !tbaa !53
  %175 = lshr i16 %174, 4
  %176 = zext nneg i16 %175 to i64
  %177 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %176, i64 noundef %124) #11
  switch i64 %173, label %178 [
    i64 2, label %182
    i64 1, label %180
  ]

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 2
  store i16 %177, ptr %179, align 2, !tbaa !61
  br label %184

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 1
  store i16 %177, ptr %181, align 2, !tbaa !62
  br label %184

182:                                              ; preds = %169
  store i16 %177, ptr %170, align 2, !tbaa !63
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 1
  br label %184

184:                                              ; preds = %182, %180, %178
  %185 = phi ptr [ %170, %178 ], [ %170, %180 ], [ %183, %182 ]
  %186 = getelementptr inbounds i8, ptr %171, i64 %136
  %187 = add nuw nsw i64 %154, 2
  %188 = icmp slt i64 %187, %130
  br i1 %188, label %153, label %137, !llvm.loop !89

189:                                              ; preds = %145
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %141, i64 0, i32 2
  br label %193

191:                                              ; preds = %145
  %192 = getelementptr inbounds %struct._PixelPacket, ptr %141, i64 0, i32 1
  br label %193

193:                                              ; preds = %145, %191, %189
  %194 = phi ptr [ %190, %189 ], [ %192, %191 ], [ %141, %145 ]
  store i16 %152, ptr %194, align 2, !tbaa !53
  br label %195

195:                                              ; preds = %193, %139
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %416

196:                                              ; preds = %123
  %197 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  %198 = load i64, ptr %197, align 8, !tbaa !86
  %199 = icmp eq i64 %198, 32
  %200 = icmp sgt i64 %1, 0
  br i1 %199, label %202, label %201

201:                                              ; preds = %196
  br i1 %200, label %224, label %416

202:                                              ; preds = %196
  br i1 %200, label %203, label %416

203:                                              ; preds = %202, %203
  %204 = phi i64 [ %222, %203 ], [ 0, %202 ]
  %205 = phi ptr [ %221, %203 ], [ %3, %202 ]
  %206 = phi ptr [ %216, %203 ], [ %2, %202 ]
  %207 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %206, ptr noundef nonnull %5) #11
  %208 = load i32, ptr %5, align 4, !tbaa !77
  %209 = zext i32 %208 to i64
  %210 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %209, i64 noundef %124) #11
  store i16 %210, ptr %205, align 2, !tbaa !63
  %211 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %207, ptr noundef nonnull %5) #11
  %212 = load i32, ptr %5, align 4, !tbaa !77
  %213 = zext i32 %212 to i64
  %214 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %213, i64 noundef %124) #11
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 0, i32 1
  store i16 %214, ptr %215, align 2, !tbaa !62
  %216 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %211, ptr noundef nonnull %5) #11
  %217 = load i32, ptr %5, align 4, !tbaa !77
  %218 = zext i32 %217 to i64
  %219 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %218, i64 noundef %124) #11
  %220 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 0, i32 2
  store i16 %219, ptr %220, align 2, !tbaa !61
  %221 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 1
  %222 = add nuw nsw i64 %204, 1
  %223 = icmp eq i64 %222, %1
  br i1 %223, label %416, label %203, !llvm.loop !90

224:                                              ; preds = %201, %224
  %225 = phi i64 [ %243, %224 ], [ 0, %201 ]
  %226 = phi ptr [ %242, %224 ], [ %3, %201 ]
  %227 = phi ptr [ %237, %224 ], [ %2, %201 ]
  %228 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %227, ptr noundef nonnull %5) #11
  %229 = load i32, ptr %5, align 4, !tbaa !77
  %230 = zext i32 %229 to i64
  %231 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %230, i64 noundef %124) #11
  store i16 %231, ptr %226, align 2, !tbaa !63
  %232 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %228, ptr noundef nonnull %5) #11
  %233 = load i32, ptr %5, align 4, !tbaa !77
  %234 = zext i32 %233 to i64
  %235 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %234, i64 noundef %124) #11
  %236 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 0, i32 1
  store i16 %235, ptr %236, align 2, !tbaa !62
  %237 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %232, ptr noundef nonnull %5) #11
  %238 = load i32, ptr %5, align 4, !tbaa !77
  %239 = zext i32 %238 to i64
  %240 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %239, i64 noundef %124) #11
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 0, i32 2
  store i16 %240, ptr %241, align 2, !tbaa !61
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 1
  %243 = add nuw nsw i64 %225, 1
  %244 = icmp eq i64 %243, %1
  br i1 %244, label %416, label %224, !llvm.loop !91

245:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  %246 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %247 = load i32, ptr %246, align 8, !tbaa !70
  %248 = icmp eq i32 %247, 1
  %249 = icmp sgt i64 %1, 0
  br i1 %248, label %256, label %250

250:                                              ; preds = %245
  br i1 %249, label %251, label %303

251:                                              ; preds = %250
  %252 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %253 = load i32, ptr %252, align 8, !tbaa !71
  %254 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %255 = load i64, ptr %254, align 8, !tbaa !67
  br label %287

256:                                              ; preds = %245
  br i1 %249, label %257, label %303

257:                                              ; preds = %256
  %258 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %259 = load i32, ptr %258, align 8, !tbaa !71
  %260 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %261 = load i64, ptr %260, align 8, !tbaa !67
  br label %262

262:                                              ; preds = %257, %262
  %263 = phi i64 [ 0, %257 ], [ %285, %262 ]
  %264 = phi ptr [ %3, %257 ], [ %284, %262 ]
  %265 = phi ptr [ %2, %257 ], [ %283, %262 ]
  %266 = call fastcc ptr @PushShortPixel(i32 noundef %259, ptr noundef %265, ptr noundef nonnull %8) #11
  %267 = load i16, ptr %8, align 2, !tbaa !53
  %268 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %267) #11
  %269 = fmul float %268, 6.553500e+04
  %270 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %269) #11
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %264, i64 0, i32 2
  store i16 %270, ptr %271, align 2, !tbaa !61
  %272 = call fastcc ptr @PushShortPixel(i32 noundef %259, ptr noundef nonnull %266, ptr noundef nonnull %8) #11
  %273 = load i16, ptr %8, align 2, !tbaa !53
  %274 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %273) #11
  %275 = fmul float %274, 6.553500e+04
  %276 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %275) #11
  %277 = getelementptr inbounds %struct._PixelPacket, ptr %264, i64 0, i32 1
  store i16 %276, ptr %277, align 2, !tbaa !62
  %278 = call fastcc ptr @PushShortPixel(i32 noundef %259, ptr noundef nonnull %272, ptr noundef nonnull %8) #11
  %279 = load i16, ptr %8, align 2, !tbaa !53
  %280 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %279) #11
  %281 = fmul float %280, 6.553500e+04
  %282 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %281) #11
  store i16 %282, ptr %264, align 2, !tbaa !63
  %283 = getelementptr inbounds i8, ptr %278, i64 %261
  %284 = getelementptr inbounds %struct._PixelPacket, ptr %264, i64 1
  %285 = add nuw nsw i64 %263, 1
  %286 = icmp eq i64 %285, %1
  br i1 %286, label %303, label %262, !llvm.loop !92

287:                                              ; preds = %251, %287
  %288 = phi i64 [ 0, %251 ], [ %301, %287 ]
  %289 = phi ptr [ %3, %251 ], [ %300, %287 ]
  %290 = phi ptr [ %2, %251 ], [ %299, %287 ]
  %291 = call fastcc ptr @PushShortPixel(i32 noundef %253, ptr noundef %290, ptr noundef nonnull %8) #11
  %292 = load i16, ptr %8, align 2, !tbaa !53
  store i16 %292, ptr %289, align 2, !tbaa !63
  %293 = call fastcc ptr @PushShortPixel(i32 noundef %253, ptr noundef nonnull %291, ptr noundef nonnull %8) #11
  %294 = load i16, ptr %8, align 2, !tbaa !53
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %289, i64 0, i32 1
  store i16 %294, ptr %295, align 2, !tbaa !62
  %296 = call fastcc ptr @PushShortPixel(i32 noundef %253, ptr noundef nonnull %293, ptr noundef nonnull %8) #11
  %297 = load i16, ptr %8, align 2, !tbaa !53
  %298 = getelementptr inbounds %struct._PixelPacket, ptr %289, i64 0, i32 2
  store i16 %297, ptr %298, align 2, !tbaa !61
  %299 = getelementptr inbounds i8, ptr %296, i64 %255
  %300 = getelementptr inbounds %struct._PixelPacket, ptr %289, i64 1
  %301 = add nuw nsw i64 %288, 1
  %302 = icmp eq i64 %301, %1
  br i1 %302, label %303, label %287, !llvm.loop !93

303:                                              ; preds = %287, %262, %250, %256
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  br label %416

304:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %305 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %306 = load i32, ptr %305, align 8, !tbaa !70
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %315, label %308

308:                                              ; preds = %304
  %309 = icmp sgt i64 %1, 0
  br i1 %309, label %310, label %359

310:                                              ; preds = %308
  %311 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %312 = load i32, ptr %311, align 8, !tbaa !71
  %313 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %314 = load i64, ptr %313, align 8, !tbaa !67
  br label %340

315:                                              ; preds = %304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %316 = icmp sgt i64 %1, 0
  br i1 %316, label %317, label %339

317:                                              ; preds = %315
  %318 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %319 = load i64, ptr %318, align 8, !tbaa !67
  br label %320

320:                                              ; preds = %317, %320
  %321 = phi i64 [ 0, %317 ], [ %337, %320 ]
  %322 = phi ptr [ %3, %317 ], [ %336, %320 ]
  %323 = phi ptr [ %2, %317 ], [ %335, %320 ]
  %324 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef %323, ptr noundef nonnull %10) #11
  %325 = load float, ptr %10, align 4, !tbaa !74
  %326 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %325) #11
  %327 = getelementptr inbounds %struct._PixelPacket, ptr %322, i64 0, i32 2
  store i16 %326, ptr %327, align 2, !tbaa !61
  %328 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %324, ptr noundef nonnull %10) #11
  %329 = load float, ptr %10, align 4, !tbaa !74
  %330 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %329) #11
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %322, i64 0, i32 1
  store i16 %330, ptr %331, align 2, !tbaa !62
  %332 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %328, ptr noundef nonnull %10) #11
  %333 = load float, ptr %10, align 4, !tbaa !74
  %334 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %333) #11
  store i16 %334, ptr %322, align 2, !tbaa !63
  %335 = getelementptr inbounds i8, ptr %332, i64 %319
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %322, i64 1
  %337 = add nuw nsw i64 %321, 1
  %338 = icmp eq i64 %337, %1
  br i1 %338, label %339, label %320, !llvm.loop !94

339:                                              ; preds = %320, %315
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %359

340:                                              ; preds = %310, %340
  %341 = phi i64 [ 0, %310 ], [ %357, %340 ]
  %342 = phi ptr [ %3, %310 ], [ %356, %340 ]
  %343 = phi ptr [ %2, %310 ], [ %355, %340 ]
  %344 = call fastcc ptr @PushLongPixel(i32 noundef %312, ptr noundef %343, ptr noundef nonnull %9) #11
  %345 = load i32, ptr %9, align 4, !tbaa !77
  %346 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %345) #11
  store i16 %346, ptr %342, align 2, !tbaa !63
  %347 = call fastcc ptr @PushLongPixel(i32 noundef %312, ptr noundef nonnull %344, ptr noundef nonnull %9) #11
  %348 = load i32, ptr %9, align 4, !tbaa !77
  %349 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %348) #11
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 0, i32 1
  store i16 %349, ptr %350, align 2, !tbaa !62
  %351 = call fastcc ptr @PushLongPixel(i32 noundef %312, ptr noundef nonnull %347, ptr noundef nonnull %9) #11
  %352 = load i32, ptr %9, align 4, !tbaa !77
  %353 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %352) #11
  %354 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 0, i32 2
  store i16 %353, ptr %354, align 2, !tbaa !61
  %355 = getelementptr inbounds i8, ptr %351, i64 %314
  %356 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 1
  %357 = add nuw nsw i64 %341, 1
  %358 = icmp eq i64 %357, %1
  br i1 %358, label %359, label %340, !llvm.loop !95

359:                                              ; preds = %340, %308, %339
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %416

360:                                              ; preds = %4
  %361 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %362 = load i32, ptr %361, align 8, !tbaa !70
  %363 = icmp eq i32 %362, 1
  br i1 %363, label %364, label %392

364:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  %365 = icmp sgt i64 %1, 0
  br i1 %365, label %366, label %391

366:                                              ; preds = %364
  %367 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %368 = load i64, ptr %367, align 8, !tbaa !67
  br label %369

369:                                              ; preds = %366, %369
  %370 = phi i64 [ 0, %366 ], [ %389, %369 ]
  %371 = phi ptr [ %3, %366 ], [ %388, %369 ]
  %372 = phi ptr [ %2, %366 ], [ %387, %369 ]
  %373 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef %372, ptr noundef nonnull %11) #11
  %374 = load double, ptr %11, align 8, !tbaa !79
  %375 = fptrunc double %374 to float
  %376 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %375) #11
  %377 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 0, i32 2
  store i16 %376, ptr %377, align 2, !tbaa !61
  %378 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %373, ptr noundef nonnull %11) #11
  %379 = load double, ptr %11, align 8, !tbaa !79
  %380 = fptrunc double %379 to float
  %381 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %380) #11
  %382 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 0, i32 1
  store i16 %381, ptr %382, align 2, !tbaa !62
  %383 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %378, ptr noundef nonnull %11) #11
  %384 = load double, ptr %11, align 8, !tbaa !79
  %385 = fptrunc double %384 to float
  %386 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %385) #11
  store i16 %386, ptr %371, align 2, !tbaa !63
  %387 = getelementptr inbounds i8, ptr %383, i64 %368
  %388 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 1
  %389 = add nuw nsw i64 %370, 1
  %390 = icmp eq i64 %389, %1
  br i1 %390, label %391, label %369, !llvm.loop !96

391:                                              ; preds = %369, %364
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  br label %416

392:                                              ; preds = %360, %4
  %393 = tail call fastcc i64 @GetQuantumRange(i64 noundef %12) #11
  %394 = icmp sgt i64 %1, 0
  br i1 %394, label %395, label %416

395:                                              ; preds = %392, %395
  %396 = phi i64 [ %414, %395 ], [ 0, %392 ]
  %397 = phi ptr [ %413, %395 ], [ %3, %392 ]
  %398 = phi ptr [ %408, %395 ], [ %2, %392 ]
  %399 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %398, ptr noundef nonnull %5) #11
  %400 = load i32, ptr %5, align 4, !tbaa !77
  %401 = zext i32 %400 to i64
  %402 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %401, i64 noundef %393) #11
  store i16 %402, ptr %397, align 2, !tbaa !63
  %403 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %399, ptr noundef nonnull %5) #11
  %404 = load i32, ptr %5, align 4, !tbaa !77
  %405 = zext i32 %404 to i64
  %406 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %405, i64 noundef %393) #11
  %407 = getelementptr inbounds %struct._PixelPacket, ptr %397, i64 0, i32 1
  store i16 %406, ptr %407, align 2, !tbaa !62
  %408 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %403, ptr noundef nonnull %5) #11
  %409 = load i32, ptr %5, align 4, !tbaa !77
  %410 = zext i32 %409 to i64
  %411 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %410, i64 noundef %393) #11
  %412 = getelementptr inbounds %struct._PixelPacket, ptr %397, i64 0, i32 2
  store i16 %411, ptr %412, align 2, !tbaa !61
  %413 = getelementptr inbounds %struct._PixelPacket, ptr %397, i64 1
  %414 = add nuw nsw i64 %396, 1
  %415 = icmp eq i64 %414, %1
  br i1 %415, label %416, label %395, !llvm.loop !97

416:                                              ; preds = %224, %203, %102, %81, %51, %395, %201, %202, %79, %80, %44, %392, %391, %359, %303, %195, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportBGRAQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2, ptr noalias nocapture noundef writeonly %3) unnamed_addr #4 !PGOFuncName !98 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %11 = load i64, ptr %0, align 8, !tbaa !66
  switch i64 %11, label %309 [
    i64 8, label %12
    i64 10, label %42
    i64 16, label %135
    i64 32, label %205
    i64 64, label %271
  ]

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  %13 = icmp sgt i64 %1, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %16 = load i64, ptr %15, align 8, !tbaa !67
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %39, %17 ]
  %19 = phi ptr [ %2, %14 ], [ %37, %17 ]
  %20 = phi ptr [ %3, %14 ], [ %38, %17 ]
  %21 = call fastcc ptr @PushCharPixel(ptr noundef %19, ptr noundef nonnull %6) #11
  %22 = load i8, ptr %6, align 1, !tbaa !68
  %23 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %22) #11
  store i16 %23, ptr %20, align 2, !tbaa !63
  %24 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %21, ptr noundef nonnull %6) #11
  %25 = load i8, ptr %6, align 1, !tbaa !68
  %26 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %25) #11
  %27 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 1
  store i16 %26, ptr %27, align 2, !tbaa !62
  %28 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %24, ptr noundef nonnull %6) #11
  %29 = load i8, ptr %6, align 1, !tbaa !68
  %30 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %29) #11
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 2
  store i16 %30, ptr %31, align 2, !tbaa !61
  %32 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %28, ptr noundef nonnull %6) #11
  %33 = load i8, ptr %6, align 1, !tbaa !68
  %34 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %33) #11
  %35 = xor i16 %34, -1
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 3
  store i16 %35, ptr %36, align 2, !tbaa !56
  %37 = getelementptr inbounds i8, ptr %32, i64 %16
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 1
  %39 = add nuw nsw i64 %18, 1
  %40 = icmp eq i64 %39, %1
  br i1 %40, label %41, label %17, !llvm.loop !99

41:                                               ; preds = %17, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %339

42:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !tbaa !77
  %43 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %44 = load i32, ptr %43, align 4, !tbaa !84
  %45 = icmp eq i32 %44, 0
  %46 = icmp sgt i64 %1, 0
  br i1 %45, label %48, label %47

47:                                               ; preds = %42
  br i1 %46, label %108, label %339

48:                                               ; preds = %42
  br i1 %46, label %49, label %339

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %51 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %52 = load i64, ptr %51, align 8, !tbaa !67
  br label %53

53:                                               ; preds = %49, %100
  %54 = phi i32 [ 0, %49 ], [ %88, %100 ]
  %55 = phi i32 [ 0, %49 ], [ %89, %100 ]
  %56 = phi i64 [ 0, %49 ], [ %103, %100 ]
  %57 = phi i64 [ 0, %49 ], [ %91, %100 ]
  %58 = phi i64 [ 0, %49 ], [ %106, %100 ]
  %59 = phi ptr [ %2, %49 ], [ %104, %100 ]
  %60 = phi ptr [ %3, %49 ], [ %105, %100 ]
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 3
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 1
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 2
  br label %64

64:                                               ; preds = %97, %53
  %65 = phi i32 [ %54, %53 ], [ %88, %97 ]
  %66 = phi i32 [ %55, %53 ], [ %89, %97 ]
  %67 = phi i64 [ %56, %53 ], [ %98, %97 ]
  %68 = phi i64 [ %57, %53 ], [ %91, %97 ]
  %69 = phi i64 [ 0, %53 ], [ %99, %97 ]
  %70 = phi ptr [ %59, %53 ], [ %90, %97 ]
  %71 = srem i64 %67, 3
  switch i64 %71, label %87 [
    i64 0, label %72
    i64 1, label %79
    i64 2, label %83
  ]

72:                                               ; preds = %64
  %73 = load i32, ptr %50, align 8, !tbaa !71
  %74 = call fastcc ptr @PushLongPixel(i32 noundef %73, ptr noundef %70, ptr noundef nonnull %5) #11
  %75 = load i32, ptr %5, align 4, !tbaa !77
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 65472
  %78 = zext nneg i32 %77 to i64
  br label %87

79:                                               ; preds = %64
  %80 = lshr i32 %65, 6
  %81 = and i32 %80, 65472
  %82 = zext nneg i32 %81 to i64
  br label %87

83:                                               ; preds = %64
  %84 = zext i32 %66 to i64
  %85 = shl nuw nsw i64 %84, 4
  %86 = and i64 %85, 65472
  br label %87

87:                                               ; preds = %64, %83, %79, %72
  %88 = phi i32 [ %65, %64 ], [ %65, %83 ], [ %65, %79 ], [ %75, %72 ]
  %89 = phi i32 [ %66, %64 ], [ %66, %83 ], [ %65, %79 ], [ %75, %72 ]
  %90 = phi ptr [ %70, %64 ], [ %70, %83 ], [ %70, %79 ], [ %74, %72 ]
  %91 = phi i64 [ %68, %64 ], [ %86, %83 ], [ %82, %79 ], [ %78, %72 ]
  switch i64 %69, label %97 [
    i64 0, label %94
    i64 1, label %92
    i64 2, label %93
    i64 3, label %100
  ]

92:                                               ; preds = %87
  br label %94

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %87, %92, %93
  %95 = phi ptr [ %60, %93 ], [ %62, %92 ], [ %63, %87 ]
  %96 = trunc i64 %91 to i16
  store i16 %96, ptr %95, align 2, !tbaa !53
  br label %97

97:                                               ; preds = %94, %87
  %98 = add nsw i64 %67, 1
  %99 = add nuw nsw i64 %69, 1
  br label %64

100:                                              ; preds = %87
  %101 = trunc i64 %91 to i16
  %102 = xor i16 %101, -1
  store i16 %102, ptr %61, align 2, !tbaa !56
  %103 = add i64 %56, 4
  %104 = getelementptr inbounds i8, ptr %90, i64 %52
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 1
  %106 = add nuw nsw i64 %58, 1
  %107 = icmp eq i64 %106, %1
  br i1 %107, label %339, label %53, !llvm.loop !100

108:                                              ; preds = %47, %108
  %109 = phi i64 [ %133, %108 ], [ 0, %47 ]
  %110 = phi ptr [ %126, %108 ], [ %2, %47 ]
  %111 = phi ptr [ %132, %108 ], [ %3, %47 ]
  %112 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %110, ptr noundef nonnull %5) #11
  %113 = load i32, ptr %5, align 4, !tbaa !77
  %114 = trunc i32 %113 to i16
  %115 = shl i16 %114, 6
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  store i16 %115, ptr %116, align 2, !tbaa !61
  %117 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %112, ptr noundef nonnull %5) #11
  %118 = load i32, ptr %5, align 4, !tbaa !77
  %119 = trunc i32 %118 to i16
  %120 = shl i16 %119, 6
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 1
  store i16 %120, ptr %121, align 2, !tbaa !62
  %122 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %117, ptr noundef nonnull %5) #11
  %123 = load i32, ptr %5, align 4, !tbaa !77
  %124 = trunc i32 %123 to i16
  %125 = shl i16 %124, 6
  store i16 %125, ptr %111, align 2, !tbaa !63
  %126 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %122, ptr noundef nonnull %5) #11
  %127 = load i32, ptr %5, align 4, !tbaa !77
  %128 = trunc i32 %127 to i16
  %129 = shl i16 %128, 6
  %130 = xor i16 %129, -1
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 3
  store i16 %130, ptr %131, align 2, !tbaa !56
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 1
  %133 = add nuw nsw i64 %109, 1
  %134 = icmp eq i64 %133, %1
  br i1 %134, label %339, label %108, !llvm.loop !101

135:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  %136 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !70
  %138 = icmp eq i32 %137, 1
  %139 = icmp sgt i64 %1, 0
  br i1 %138, label %146, label %140

140:                                              ; preds = %135
  br i1 %139, label %141, label %204

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %143 = load i32, ptr %142, align 8, !tbaa !71
  %144 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %145 = load i64, ptr %144, align 8, !tbaa !67
  br label %184

146:                                              ; preds = %135
  br i1 %139, label %147, label %204

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %149 = load i32, ptr %148, align 8, !tbaa !71
  %150 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %151 = load i64, ptr %150, align 8, !tbaa !67
  br label %152

152:                                              ; preds = %147, %152
  %153 = phi i64 [ 0, %147 ], [ %182, %152 ]
  %154 = phi ptr [ %2, %147 ], [ %180, %152 ]
  %155 = phi ptr [ %3, %147 ], [ %181, %152 ]
  %156 = call fastcc ptr @PushShortPixel(i32 noundef %149, ptr noundef %154, ptr noundef nonnull %7) #11
  %157 = load i16, ptr %7, align 2, !tbaa !53
  %158 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %157) #11
  %159 = fmul float %158, 6.553500e+04
  %160 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %159) #11
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 2
  store i16 %160, ptr %161, align 2, !tbaa !61
  %162 = call fastcc ptr @PushShortPixel(i32 noundef %149, ptr noundef nonnull %156, ptr noundef nonnull %7) #11
  %163 = load i16, ptr %7, align 2, !tbaa !53
  %164 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %163) #11
  %165 = fmul float %164, 6.553500e+04
  %166 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %165) #11
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 1
  store i16 %166, ptr %167, align 2, !tbaa !62
  %168 = call fastcc ptr @PushShortPixel(i32 noundef %149, ptr noundef nonnull %162, ptr noundef nonnull %7) #11
  %169 = load i16, ptr %7, align 2, !tbaa !53
  %170 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %169) #11
  %171 = fmul float %170, 6.553500e+04
  %172 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %171) #11
  store i16 %172, ptr %155, align 2, !tbaa !63
  %173 = call fastcc ptr @PushShortPixel(i32 noundef %149, ptr noundef nonnull %168, ptr noundef nonnull %7) #11
  %174 = load i16, ptr %7, align 2, !tbaa !53
  %175 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %174) #11
  %176 = fmul float %175, 6.553500e+04
  %177 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %176) #11
  %178 = xor i16 %177, -1
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 3
  store i16 %178, ptr %179, align 2, !tbaa !56
  %180 = getelementptr inbounds i8, ptr %173, i64 %151
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 1
  %182 = add nuw nsw i64 %153, 1
  %183 = icmp eq i64 %182, %1
  br i1 %183, label %204, label %152, !llvm.loop !102

184:                                              ; preds = %141, %184
  %185 = phi i64 [ 0, %141 ], [ %202, %184 ]
  %186 = phi ptr [ %2, %141 ], [ %200, %184 ]
  %187 = phi ptr [ %3, %141 ], [ %201, %184 ]
  %188 = call fastcc ptr @PushShortPixel(i32 noundef %143, ptr noundef %186, ptr noundef nonnull %7) #11
  %189 = load i16, ptr %7, align 2, !tbaa !53
  store i16 %189, ptr %187, align 2, !tbaa !63
  %190 = call fastcc ptr @PushShortPixel(i32 noundef %143, ptr noundef nonnull %188, ptr noundef nonnull %7) #11
  %191 = load i16, ptr %7, align 2, !tbaa !53
  %192 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 0, i32 1
  store i16 %191, ptr %192, align 2, !tbaa !62
  %193 = call fastcc ptr @PushShortPixel(i32 noundef %143, ptr noundef nonnull %190, ptr noundef nonnull %7) #11
  %194 = load i16, ptr %7, align 2, !tbaa !53
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 0, i32 2
  store i16 %194, ptr %195, align 2, !tbaa !61
  %196 = call fastcc ptr @PushShortPixel(i32 noundef %143, ptr noundef nonnull %193, ptr noundef nonnull %7) #11
  %197 = load i16, ptr %7, align 2, !tbaa !53
  %198 = xor i16 %197, -1
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 0, i32 3
  store i16 %198, ptr %199, align 2, !tbaa !56
  %200 = getelementptr inbounds i8, ptr %196, i64 %145
  %201 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 1
  %202 = add nuw nsw i64 %185, 1
  %203 = icmp eq i64 %202, %1
  br i1 %203, label %204, label %184, !llvm.loop !103

204:                                              ; preds = %184, %152, %140, %146
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %339

205:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %206 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %207 = load i32, ptr %206, align 8, !tbaa !70
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %216, label %209

209:                                              ; preds = %205
  %210 = icmp sgt i64 %1, 0
  br i1 %210, label %211, label %270

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %213 = load i32, ptr %212, align 8, !tbaa !71
  %214 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %215 = load i64, ptr %214, align 8, !tbaa !67
  br label %246

216:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %217 = icmp sgt i64 %1, 0
  br i1 %217, label %218, label %245

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %220 = load i64, ptr %219, align 8, !tbaa !67
  br label %221

221:                                              ; preds = %218, %221
  %222 = phi i64 [ 0, %218 ], [ %243, %221 ]
  %223 = phi ptr [ %2, %218 ], [ %241, %221 ]
  %224 = phi ptr [ %3, %218 ], [ %242, %221 ]
  %225 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef %223, ptr noundef nonnull %9) #11
  %226 = load float, ptr %9, align 4, !tbaa !74
  %227 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %226) #11
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 0, i32 2
  store i16 %227, ptr %228, align 2, !tbaa !61
  %229 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %225, ptr noundef nonnull %9) #11
  %230 = load float, ptr %9, align 4, !tbaa !74
  %231 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %230) #11
  %232 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 0, i32 1
  store i16 %231, ptr %232, align 2, !tbaa !62
  %233 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %229, ptr noundef nonnull %9) #11
  %234 = load float, ptr %9, align 4, !tbaa !74
  %235 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %234) #11
  store i16 %235, ptr %224, align 2, !tbaa !63
  %236 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %233, ptr noundef nonnull %9) #11
  %237 = load float, ptr %9, align 4, !tbaa !74
  %238 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %237) #11
  %239 = xor i16 %238, -1
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 0, i32 3
  store i16 %239, ptr %240, align 2, !tbaa !56
  %241 = getelementptr inbounds i8, ptr %236, i64 %220
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 1
  %243 = add nuw nsw i64 %222, 1
  %244 = icmp eq i64 %243, %1
  br i1 %244, label %245, label %221, !llvm.loop !104

245:                                              ; preds = %221, %216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %270

246:                                              ; preds = %211, %246
  %247 = phi i64 [ 0, %211 ], [ %268, %246 ]
  %248 = phi ptr [ %2, %211 ], [ %266, %246 ]
  %249 = phi ptr [ %3, %211 ], [ %267, %246 ]
  %250 = call fastcc ptr @PushLongPixel(i32 noundef %213, ptr noundef %248, ptr noundef nonnull %8) #11
  %251 = load i32, ptr %8, align 4, !tbaa !77
  %252 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %251) #11
  store i16 %252, ptr %249, align 2, !tbaa !63
  %253 = call fastcc ptr @PushLongPixel(i32 noundef %213, ptr noundef nonnull %250, ptr noundef nonnull %8) #11
  %254 = load i32, ptr %8, align 4, !tbaa !77
  %255 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %254) #11
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 1
  store i16 %255, ptr %256, align 2, !tbaa !62
  %257 = call fastcc ptr @PushLongPixel(i32 noundef %213, ptr noundef nonnull %253, ptr noundef nonnull %8) #11
  %258 = load i32, ptr %8, align 4, !tbaa !77
  %259 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %258) #11
  %260 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 2
  store i16 %259, ptr %260, align 2, !tbaa !61
  %261 = call fastcc ptr @PushLongPixel(i32 noundef %213, ptr noundef nonnull %257, ptr noundef nonnull %8) #11
  %262 = load i32, ptr %8, align 4, !tbaa !77
  %263 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %262) #11
  %264 = xor i16 %263, -1
  %265 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 3
  store i16 %264, ptr %265, align 2, !tbaa !56
  %266 = getelementptr inbounds i8, ptr %261, i64 %215
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 1
  %268 = add nuw nsw i64 %247, 1
  %269 = icmp eq i64 %268, %1
  br i1 %269, label %270, label %246, !llvm.loop !105

270:                                              ; preds = %246, %209, %245
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %339

271:                                              ; preds = %4
  %272 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %273 = load i32, ptr %272, align 8, !tbaa !70
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %309

275:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %276 = icmp sgt i64 %1, 0
  br i1 %276, label %277, label %308

277:                                              ; preds = %275
  %278 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %279 = load i64, ptr %278, align 8, !tbaa !67
  br label %280

280:                                              ; preds = %277, %280
  %281 = phi i64 [ 0, %277 ], [ %306, %280 ]
  %282 = phi ptr [ %2, %277 ], [ %304, %280 ]
  %283 = phi ptr [ %3, %277 ], [ %305, %280 ]
  %284 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef %282, ptr noundef nonnull %10) #11
  %285 = load double, ptr %10, align 8, !tbaa !79
  %286 = fptrunc double %285 to float
  %287 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %286) #11
  %288 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 0, i32 2
  store i16 %287, ptr %288, align 2, !tbaa !61
  %289 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %284, ptr noundef nonnull %10) #11
  %290 = load double, ptr %10, align 8, !tbaa !79
  %291 = fptrunc double %290 to float
  %292 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %291) #11
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 0, i32 1
  store i16 %292, ptr %293, align 2, !tbaa !62
  %294 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %289, ptr noundef nonnull %10) #11
  %295 = load double, ptr %10, align 8, !tbaa !79
  %296 = fptrunc double %295 to float
  %297 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %296) #11
  store i16 %297, ptr %283, align 2, !tbaa !63
  %298 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %294, ptr noundef nonnull %10) #11
  %299 = load double, ptr %10, align 8, !tbaa !79
  %300 = fptrunc double %299 to float
  %301 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %300) #11
  %302 = xor i16 %301, -1
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 0, i32 3
  store i16 %302, ptr %303, align 2, !tbaa !56
  %304 = getelementptr inbounds i8, ptr %298, i64 %279
  %305 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 1
  %306 = add nuw nsw i64 %281, 1
  %307 = icmp eq i64 %306, %1
  br i1 %307, label %308, label %280, !llvm.loop !106

308:                                              ; preds = %280, %275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %339

309:                                              ; preds = %271, %4
  %310 = tail call fastcc i64 @GetQuantumRange(i64 noundef %11) #11
  %311 = icmp sgt i64 %1, 0
  br i1 %311, label %312, label %339

312:                                              ; preds = %309, %312
  %313 = phi i64 [ %337, %312 ], [ 0, %309 ]
  %314 = phi ptr [ %330, %312 ], [ %2, %309 ]
  %315 = phi ptr [ %336, %312 ], [ %3, %309 ]
  %316 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %314, ptr noundef nonnull %5) #11
  %317 = load i32, ptr %5, align 4, !tbaa !77
  %318 = zext i32 %317 to i64
  %319 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %318, i64 noundef %310) #11
  store i16 %319, ptr %315, align 2, !tbaa !63
  %320 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %316, ptr noundef nonnull %5) #11
  %321 = load i32, ptr %5, align 4, !tbaa !77
  %322 = zext i32 %321 to i64
  %323 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %322, i64 noundef %310) #11
  %324 = getelementptr inbounds %struct._PixelPacket, ptr %315, i64 0, i32 1
  store i16 %323, ptr %324, align 2, !tbaa !62
  %325 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %320, ptr noundef nonnull %5) #11
  %326 = load i32, ptr %5, align 4, !tbaa !77
  %327 = zext i32 %326 to i64
  %328 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %327, i64 noundef %310) #11
  %329 = getelementptr inbounds %struct._PixelPacket, ptr %315, i64 0, i32 2
  store i16 %328, ptr %329, align 2, !tbaa !61
  %330 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %325, ptr noundef nonnull %5) #11
  %331 = load i32, ptr %5, align 4, !tbaa !77
  %332 = zext i32 %331 to i64
  %333 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %332, i64 noundef %310) #11
  %334 = xor i16 %333, -1
  %335 = getelementptr inbounds %struct._PixelPacket, ptr %315, i64 0, i32 3
  store i16 %334, ptr %335, align 2, !tbaa !56
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %315, i64 1
  %337 = add nuw nsw i64 %313, 1
  %338 = icmp eq i64 %337, %1
  br i1 %338, label %339, label %312, !llvm.loop !107

339:                                              ; preds = %108, %100, %312, %47, %48, %309, %308, %270, %204, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportBlackQuantum(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias noundef writeonly %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !108 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !109
  %15 = icmp eq i32 %14, 12
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 920, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #9
  br label %175

19:                                               ; preds = %6
  %20 = load i64, ptr %1, align 8, !tbaa !66
  %21 = add i64 %20, -8
  %22 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 61)
  switch i64 %22, label %155 [
    i64 0, label %23
    i64 1, label %42
    i64 3, label %87
    i64 7, label %131
  ]

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  %24 = icmp sgt i64 %2, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %23
  %26 = icmp eq ptr %4, null
  %27 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %28 = load i64, ptr %27, align 8, !tbaa !67
  br label %29

29:                                               ; preds = %25, %37
  %30 = phi ptr [ %3, %25 ], [ %38, %37 ]
  %31 = phi i64 [ 0, %25 ], [ %39, %37 ]
  %32 = call fastcc ptr @PushCharPixel(ptr noundef %30, ptr noundef nonnull %8) #11
  br i1 %26, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds i16, ptr %4, i64 %31
  %35 = load i8, ptr %8, align 1, !tbaa !68
  %36 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %35) #11
  store i16 %36, ptr %34, align 2, !tbaa !53
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds i8, ptr %32, i64 %28
  %39 = add nuw nsw i64 %31, 1
  %40 = icmp eq i64 %39, %2
  br i1 %40, label %41, label %29, !llvm.loop !110

41:                                               ; preds = %37, %23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  br label %175

42:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  %43 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !70
  %45 = icmp eq i32 %44, 1
  %46 = icmp sgt i64 %2, 0
  br i1 %45, label %54, label %47

47:                                               ; preds = %42
  br i1 %46, label %48, label %86

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !71
  %51 = icmp eq ptr %4, null
  %52 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %53 = load i64, ptr %52, align 8, !tbaa !67
  br label %75

54:                                               ; preds = %42
  br i1 %46, label %55, label %86

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %57 = load i32, ptr %56, align 8, !tbaa !71
  %58 = icmp eq ptr %4, null
  %59 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %60 = load i64, ptr %59, align 8, !tbaa !67
  br label %61

61:                                               ; preds = %55, %71
  %62 = phi ptr [ %3, %55 ], [ %72, %71 ]
  %63 = phi i64 [ 0, %55 ], [ %73, %71 ]
  %64 = call fastcc ptr @PushShortPixel(i32 noundef %57, ptr noundef %62, ptr noundef nonnull %9) #11
  br i1 %58, label %71, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds i16, ptr %4, i64 %63
  %67 = load i16, ptr %9, align 2, !tbaa !53
  %68 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %67) #11
  %69 = fmul float %68, 6.553500e+04
  %70 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %69) #11
  store i16 %70, ptr %66, align 2, !tbaa !53
  br label %71

71:                                               ; preds = %65, %61
  %72 = getelementptr inbounds i8, ptr %64, i64 %60
  %73 = add nuw nsw i64 %63, 1
  %74 = icmp eq i64 %73, %2
  br i1 %74, label %86, label %61, !llvm.loop !111

75:                                               ; preds = %48, %82
  %76 = phi ptr [ %3, %48 ], [ %83, %82 ]
  %77 = phi i64 [ 0, %48 ], [ %84, %82 ]
  %78 = call fastcc ptr @PushShortPixel(i32 noundef %50, ptr noundef %76, ptr noundef nonnull %9) #11
  br i1 %51, label %82, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds i16, ptr %4, i64 %77
  %81 = load i16, ptr %9, align 2, !tbaa !53
  store i16 %81, ptr %80, align 2, !tbaa !53
  br label %82

82:                                               ; preds = %79, %75
  %83 = getelementptr inbounds i8, ptr %78, i64 %53
  %84 = add nuw nsw i64 %77, 1
  %85 = icmp eq i64 %84, %2
  br i1 %85, label %86, label %75, !llvm.loop !112

86:                                               ; preds = %82, %71, %47, %54
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  br label %175

87:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %88 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !70
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = icmp sgt i64 %2, 0
  br i1 %92, label %93, label %130

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %95 = load i32, ptr %94, align 8, !tbaa !71
  %96 = icmp eq ptr %4, null
  %97 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %98 = load i64, ptr %97, align 8, !tbaa !67
  br label %118

99:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  %100 = icmp sgt i64 %2, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %99
  %102 = icmp eq ptr %4, null
  %103 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %104 = load i64, ptr %103, align 8, !tbaa !67
  br label %105

105:                                              ; preds = %101, %113
  %106 = phi ptr [ %3, %101 ], [ %114, %113 ]
  %107 = phi i64 [ 0, %101 ], [ %115, %113 ]
  %108 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef %106, ptr noundef nonnull %11) #11
  br i1 %102, label %113, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds i16, ptr %4, i64 %107
  %111 = load float, ptr %11, align 4, !tbaa !74
  %112 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %111) #11
  store i16 %112, ptr %110, align 2, !tbaa !53
  br label %113

113:                                              ; preds = %109, %105
  %114 = getelementptr inbounds i8, ptr %108, i64 %104
  %115 = add nuw nsw i64 %107, 1
  %116 = icmp eq i64 %115, %2
  br i1 %116, label %117, label %105, !llvm.loop !113

117:                                              ; preds = %113, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  br label %130

118:                                              ; preds = %93, %126
  %119 = phi ptr [ %3, %93 ], [ %127, %126 ]
  %120 = phi i64 [ 0, %93 ], [ %128, %126 ]
  %121 = call fastcc ptr @PushLongPixel(i32 noundef %95, ptr noundef %119, ptr noundef nonnull %10) #11
  br i1 %96, label %126, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds i16, ptr %4, i64 %120
  %124 = load i32, ptr %10, align 4, !tbaa !77
  %125 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %124) #11
  store i16 %125, ptr %123, align 2, !tbaa !53
  br label %126

126:                                              ; preds = %122, %118
  %127 = getelementptr inbounds i8, ptr %121, i64 %98
  %128 = add nuw nsw i64 %120, 1
  %129 = icmp eq i64 %128, %2
  br i1 %129, label %130, label %118, !llvm.loop !114

130:                                              ; preds = %126, %91, %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %175

131:                                              ; preds = %19
  %132 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %133 = load i32, ptr %132, align 8, !tbaa !70
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %155

135:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #12
  %136 = icmp sgt i64 %2, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %135
  %138 = icmp eq ptr %4, null
  %139 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %140 = load i64, ptr %139, align 8, !tbaa !67
  br label %141

141:                                              ; preds = %137, %150
  %142 = phi ptr [ %3, %137 ], [ %151, %150 ]
  %143 = phi i64 [ 0, %137 ], [ %152, %150 ]
  %144 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef %142, ptr noundef nonnull %12) #11
  br i1 %138, label %150, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds i16, ptr %4, i64 %143
  %147 = load double, ptr %12, align 8, !tbaa !79
  %148 = fptrunc double %147 to float
  %149 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %148) #11
  store i16 %149, ptr %146, align 2, !tbaa !53
  br label %150

150:                                              ; preds = %145, %141
  %151 = getelementptr inbounds i8, ptr %144, i64 %140
  %152 = add nuw nsw i64 %143, 1
  %153 = icmp eq i64 %152, %2
  br i1 %153, label %154, label %141, !llvm.loop !115

154:                                              ; preds = %150, %135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #12
  br label %175

155:                                              ; preds = %131, %19
  %156 = tail call fastcc i64 @GetQuantumRange(i64 noundef %20) #11
  %157 = icmp sgt i64 %2, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = icmp eq ptr %4, null
  %160 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %161

161:                                              ; preds = %158, %170
  %162 = phi ptr [ %3, %158 ], [ %172, %170 ]
  %163 = phi i64 [ 0, %158 ], [ %173, %170 ]
  %164 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %162, ptr noundef nonnull %7) #11
  br i1 %159, label %170, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds i16, ptr %4, i64 %163
  %167 = load i32, ptr %7, align 4, !tbaa !77
  %168 = zext i32 %167 to i64
  %169 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %168, i64 noundef %156) #11
  store i16 %169, ptr %166, align 2, !tbaa !53
  br label %170

170:                                              ; preds = %165, %161
  %171 = load i64, ptr %160, align 8, !tbaa !67
  %172 = getelementptr inbounds i8, ptr %164, i64 %171
  %173 = add nuw nsw i64 %163, 1
  %174 = icmp eq i64 %173, %2
  br i1 %174, label %175, label %161, !llvm.loop !116

175:                                              ; preds = %170, %155, %41, %86, %130, %154, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportBlueQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2, ptr noalias nocapture noundef writeonly %3) unnamed_addr #4 !PGOFuncName !117 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %11 = load i64, ptr %0, align 8, !tbaa !66
  %12 = add i64 %11, -8
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 61)
  switch i64 %13, label %134 [
    i64 0, label %14
    i64 1, label %31
    i64 3, label %72
    i64 7, label %112
  ]

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  %15 = icmp sgt i64 %1, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %18 = load i64, ptr %17, align 8, !tbaa !67
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %2, %16 ], [ %26, %19 ]
  %21 = phi i64 [ 0, %16 ], [ %28, %19 ]
  %22 = phi ptr [ %3, %16 ], [ %27, %19 ]
  %23 = call fastcc ptr @PushCharPixel(ptr noundef %20, ptr noundef nonnull %6) #11
  %24 = load i8, ptr %6, align 1, !tbaa !68
  %25 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %24) #11
  store i16 %25, ptr %22, align 2, !tbaa !63
  %26 = getelementptr inbounds i8, ptr %23, i64 %18
  %27 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 1
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %28, %1
  br i1 %29, label %30, label %19, !llvm.loop !118

30:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %152

31:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  %32 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !70
  %34 = icmp eq i32 %33, 1
  %35 = icmp sgt i64 %1, 0
  br i1 %34, label %42, label %36

36:                                               ; preds = %31
  br i1 %35, label %37, label %71

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %39 = load i32, ptr %38, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %41 = load i64, ptr %40, align 8, !tbaa !67
  br label %61

42:                                               ; preds = %31
  br i1 %35, label %43, label %71

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !71
  %46 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %47 = load i64, ptr %46, align 8, !tbaa !67
  br label %48

48:                                               ; preds = %43, %48
  %49 = phi ptr [ %2, %43 ], [ %57, %48 ]
  %50 = phi i64 [ 0, %43 ], [ %59, %48 ]
  %51 = phi ptr [ %3, %43 ], [ %58, %48 ]
  %52 = call fastcc ptr @PushShortPixel(i32 noundef %45, ptr noundef %49, ptr noundef nonnull %7) #11
  %53 = load i16, ptr %7, align 2, !tbaa !53
  %54 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %53) #11
  %55 = fmul float %54, 6.553500e+04
  %56 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %55) #11
  store i16 %56, ptr %51, align 2, !tbaa !63
  %57 = getelementptr inbounds i8, ptr %52, i64 %47
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %51, i64 1
  %59 = add nuw nsw i64 %50, 1
  %60 = icmp eq i64 %59, %1
  br i1 %60, label %71, label %48, !llvm.loop !119

61:                                               ; preds = %37, %61
  %62 = phi ptr [ %2, %37 ], [ %67, %61 ]
  %63 = phi i64 [ 0, %37 ], [ %69, %61 ]
  %64 = phi ptr [ %3, %37 ], [ %68, %61 ]
  %65 = call fastcc ptr @PushShortPixel(i32 noundef %39, ptr noundef %62, ptr noundef nonnull %7) #11
  %66 = load i16, ptr %7, align 2, !tbaa !53
  store i16 %66, ptr %64, align 2, !tbaa !63
  %67 = getelementptr inbounds i8, ptr %65, i64 %41
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 1
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, %1
  br i1 %70, label %71, label %61, !llvm.loop !120

71:                                               ; preds = %61, %48, %36, %42
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %152

72:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %73 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !70
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = icmp sgt i64 %1, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %80 = load i32, ptr %79, align 8, !tbaa !71
  %81 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %82 = load i64, ptr %81, align 8, !tbaa !67
  br label %100

83:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %84 = icmp sgt i64 %1, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %87 = load i64, ptr %86, align 8, !tbaa !67
  br label %88

88:                                               ; preds = %85, %88
  %89 = phi ptr [ %2, %85 ], [ %95, %88 ]
  %90 = phi i64 [ 0, %85 ], [ %97, %88 ]
  %91 = phi ptr [ %3, %85 ], [ %96, %88 ]
  %92 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef %89, ptr noundef nonnull %9) #11
  %93 = load float, ptr %9, align 4, !tbaa !74
  %94 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %93) #11
  store i16 %94, ptr %91, align 2, !tbaa !63
  %95 = getelementptr inbounds i8, ptr %92, i64 %87
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %91, i64 1
  %97 = add nuw nsw i64 %90, 1
  %98 = icmp eq i64 %97, %1
  br i1 %98, label %99, label %88, !llvm.loop !121

99:                                               ; preds = %88, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %111

100:                                              ; preds = %78, %100
  %101 = phi ptr [ %2, %78 ], [ %107, %100 ]
  %102 = phi i64 [ 0, %78 ], [ %109, %100 ]
  %103 = phi ptr [ %3, %78 ], [ %108, %100 ]
  %104 = call fastcc ptr @PushLongPixel(i32 noundef %80, ptr noundef %101, ptr noundef nonnull %8) #11
  %105 = load i32, ptr %8, align 4, !tbaa !77
  %106 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %105) #11
  store i16 %106, ptr %103, align 2, !tbaa !63
  %107 = getelementptr inbounds i8, ptr %104, i64 %82
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  %109 = add nuw nsw i64 %102, 1
  %110 = icmp eq i64 %109, %1
  br i1 %110, label %111, label %100, !llvm.loop !122

111:                                              ; preds = %100, %76, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %152

112:                                              ; preds = %4
  %113 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !70
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %117 = icmp sgt i64 %1, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %120 = load i64, ptr %119, align 8, !tbaa !67
  br label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %2, %118 ], [ %129, %121 ]
  %123 = phi i64 [ 0, %118 ], [ %131, %121 ]
  %124 = phi ptr [ %3, %118 ], [ %130, %121 ]
  %125 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef %122, ptr noundef nonnull %10) #11
  %126 = load double, ptr %10, align 8, !tbaa !79
  %127 = fptrunc double %126 to float
  %128 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %127) #11
  store i16 %128, ptr %124, align 2, !tbaa !63
  %129 = getelementptr inbounds i8, ptr %125, i64 %120
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %124, i64 1
  %131 = add nuw nsw i64 %123, 1
  %132 = icmp eq i64 %131, %1
  br i1 %132, label %133, label %121, !llvm.loop !123

133:                                              ; preds = %121, %116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %152

134:                                              ; preds = %112, %4
  %135 = tail call fastcc i64 @GetQuantumRange(i64 noundef %11) #11
  %136 = icmp sgt i64 %1, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %139

139:                                              ; preds = %137, %139
  %140 = phi ptr [ %2, %137 ], [ %148, %139 ]
  %141 = phi i64 [ 0, %137 ], [ %150, %139 ]
  %142 = phi ptr [ %3, %137 ], [ %149, %139 ]
  %143 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %140, ptr noundef nonnull %5) #11
  %144 = load i32, ptr %5, align 4, !tbaa !77
  %145 = zext i32 %144 to i64
  %146 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %145, i64 noundef %135) #11
  store i16 %146, ptr %142, align 2, !tbaa !63
  %147 = load i64, ptr %138, align 8, !tbaa !67
  %148 = getelementptr inbounds i8, ptr %143, i64 %147
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %142, i64 1
  %150 = add nuw nsw i64 %141, 1
  %151 = icmp eq i64 %150, %1
  br i1 %151, label %152, label %139, !llvm.loop !124

152:                                              ; preds = %139, %134, %133, %111, %71, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportCbYCrYQuantum(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias nocapture noundef writeonly %4) unnamed_addr #4 !PGOFuncName !125 {
  %6 = alloca i32, align 4
  %7 = alloca [4 x i16], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %8 = load i64, ptr %1, align 8, !tbaa !66
  %9 = icmp eq i64 %8, 10
  br i1 %9, label %10, label %78

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store i32 0, ptr %6, align 4, !tbaa !77
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 8
  %12 = load i32, ptr %11, align 4, !tbaa !84
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = icmp sgt i64 %2, 0
  br i1 %15, label %16, label %77

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %18 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %19 = load i64, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 2
  %21 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 3
  br label %23

22:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  br label %78

23:                                               ; preds = %16, %63
  %24 = phi i32 [ 0, %16 ], [ %55, %63 ]
  %25 = phi i32 [ 0, %16 ], [ %56, %63 ]
  %26 = phi ptr [ %3, %16 ], [ %65, %63 ]
  %27 = phi i64 [ 0, %16 ], [ %64, %63 ]
  %28 = phi i16 [ 0, %16 ], [ %57, %63 ]
  %29 = phi i64 [ 0, %16 ], [ %75, %63 ]
  %30 = phi ptr [ %4, %16 ], [ %74, %63 ]
  br label %31

31:                                               ; preds = %23, %54
  %32 = phi i32 [ %24, %23 ], [ %55, %54 ]
  %33 = phi i32 [ %25, %23 ], [ %56, %54 ]
  %34 = phi ptr [ %26, %23 ], [ %58, %54 ]
  %35 = phi i64 [ %27, %23 ], [ %60, %54 ]
  %36 = phi i16 [ %28, %23 ], [ %57, %54 ]
  %37 = phi i64 [ 0, %23 ], [ %61, %54 ]
  %38 = srem i64 %35, 3
  switch i64 %38, label %54 [
    i64 0, label %39
    i64 1, label %46
    i64 2, label %50
  ]

39:                                               ; preds = %31
  %40 = load i32, ptr %17, align 8, !tbaa !71
  %41 = call fastcc ptr @PushLongPixel(i32 noundef %40, ptr noundef %34, ptr noundef nonnull %6) #11
  %42 = load i32, ptr %6, align 4, !tbaa !77
  %43 = lshr i32 %42, 16
  %44 = trunc i32 %43 to i16
  %45 = and i16 %44, -64
  br label %54

46:                                               ; preds = %31
  %47 = lshr i32 %32, 6
  %48 = trunc i32 %47 to i16
  %49 = and i16 %48, -64
  br label %54

50:                                               ; preds = %31
  %51 = trunc i32 %33 to i16
  %52 = shl i16 %51, 4
  %53 = and i16 %52, -64
  br label %54

54:                                               ; preds = %31, %50, %46, %39
  %55 = phi i32 [ %32, %31 ], [ %32, %50 ], [ %32, %46 ], [ %42, %39 ]
  %56 = phi i32 [ %33, %31 ], [ %33, %50 ], [ %32, %46 ], [ %42, %39 ]
  %57 = phi i16 [ %36, %31 ], [ %53, %50 ], [ %49, %46 ], [ %45, %39 ]
  %58 = phi ptr [ %34, %31 ], [ %34, %50 ], [ %34, %46 ], [ %41, %39 ]
  %59 = getelementptr inbounds [4 x i16], ptr %7, i64 0, i64 %37
  store i16 %57, ptr %59, align 2, !tbaa !53
  %60 = add nsw i64 %35, 1
  %61 = add nuw nsw i64 %37, 1
  %62 = icmp eq i64 %61, 4
  br i1 %62, label %63, label %31, !llvm.loop !126

63:                                               ; preds = %54
  %64 = add nuw i64 %27, 4
  %65 = getelementptr inbounds i8, ptr %58, i64 %19
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 1
  %67 = load <2 x i16>, ptr %7, align 4, !tbaa !53
  store <2 x i16> %67, ptr %66, align 2, !tbaa !53
  %68 = load i16, ptr %20, align 4, !tbaa !53
  store i16 %68, ptr %30, align 2, !tbaa !63
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %70 = load i16, ptr %21, align 2, !tbaa !53
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1, i32 2
  store i16 %70, ptr %71, align 2, !tbaa !61
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1, i32 1
  %73 = extractelement <2 x i16> %67, i64 0
  store i16 %73, ptr %72, align 2, !tbaa !62
  store i16 %68, ptr %69, align 2, !tbaa !63
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 2
  %75 = add nuw nsw i64 %29, 2
  %76 = icmp slt i64 %75, %2
  br i1 %76, label %23, label %77, !llvm.loop !127

77:                                               ; preds = %63, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  br label %100

78:                                               ; preds = %22, %5
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %80 = load i64, ptr %79, align 8, !tbaa !128
  %81 = tail call fastcc i64 @GetQuantumRange(i64 noundef %80) #11
  %82 = icmp sgt i64 %2, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %78, %83
  %84 = phi ptr [ %92, %83 ], [ %3, %78 ]
  %85 = phi i64 [ %98, %83 ], [ 0, %78 ]
  %86 = phi ptr [ %97, %83 ], [ %4, %78 ]
  %87 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %84, ptr noundef nonnull %6) #11
  %88 = load i32, ptr %6, align 4, !tbaa !77
  %89 = zext i32 %88 to i64
  %90 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %89, i64 noundef %81) #11
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 2
  store i16 %90, ptr %91, align 2, !tbaa !61
  %92 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %87, ptr noundef nonnull %6) #11
  %93 = load i32, ptr %6, align 4, !tbaa !77
  %94 = zext i32 %93 to i64
  %95 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %94, i64 noundef %81) #11
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 1
  store i16 %95, ptr %96, align 2, !tbaa !62
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 1
  %98 = add nuw nsw i64 %85, 1
  %99 = icmp eq i64 %98, %2
  br i1 %99, label %100, label %83, !llvm.loop !129

100:                                              ; preds = %83, %78, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportCMYKQuantum(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias nocapture noundef writeonly %4, ptr noalias noundef writeonly %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !130 {
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !109
  %16 = icmp eq i32 %15, 12
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1249, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #9
  br label %274

20:                                               ; preds = %7
  %21 = load i64, ptr %1, align 8, !tbaa !66
  %22 = add i64 %21, -8
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 61)
  switch i64 %23, label %241 [
    i64 0, label %24
    i64 1, label %56
    i64 3, label %130
    i64 7, label %200
  ]

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  %25 = icmp sgt i64 %2, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %24
  %27 = icmp eq ptr %5, null
  %28 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %29 = load i64, ptr %28, align 8, !tbaa !67
  br label %30

30:                                               ; preds = %26, %50
  %31 = phi i64 [ 0, %26 ], [ %53, %50 ]
  %32 = phi ptr [ %3, %26 ], [ %51, %50 ]
  %33 = phi ptr [ %4, %26 ], [ %52, %50 ]
  %34 = call fastcc ptr @PushCharPixel(ptr noundef %32, ptr noundef nonnull %9) #11
  %35 = load i8, ptr %9, align 1, !tbaa !68
  %36 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %35) #11
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 0, i32 2
  store i16 %36, ptr %37, align 2, !tbaa !61
  %38 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %34, ptr noundef nonnull %9) #11
  %39 = load i8, ptr %9, align 1, !tbaa !68
  %40 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %39) #11
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 0, i32 1
  store i16 %40, ptr %41, align 2, !tbaa !62
  %42 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %38, ptr noundef nonnull %9) #11
  %43 = load i8, ptr %9, align 1, !tbaa !68
  %44 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %43) #11
  store i16 %44, ptr %33, align 2, !tbaa !63
  %45 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %42, ptr noundef nonnull %9) #11
  br i1 %27, label %50, label %46

46:                                               ; preds = %30
  %47 = getelementptr inbounds i16, ptr %5, i64 %31
  %48 = load i8, ptr %9, align 1, !tbaa !68
  %49 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %48) #11
  store i16 %49, ptr %47, align 2, !tbaa !53
  br label %50

50:                                               ; preds = %46, %30
  %51 = getelementptr inbounds i8, ptr %45, i64 %29
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 1
  %53 = add nuw nsw i64 %31, 1
  %54 = icmp eq i64 %53, %2
  br i1 %54, label %55, label %30, !llvm.loop !131

55:                                               ; preds = %50, %24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  br label %274

56:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  %57 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !70
  %59 = icmp eq i32 %58, 1
  %60 = icmp sgt i64 %2, 0
  br i1 %59, label %68, label %61

61:                                               ; preds = %56
  br i1 %60, label %62, label %129

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %64 = load i32, ptr %63, align 8, !tbaa !71
  %65 = icmp eq ptr %5, null
  %66 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %67 = load i64, ptr %66, align 8, !tbaa !67
  br label %108

68:                                               ; preds = %56
  br i1 %60, label %69, label %129

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %71 = load i32, ptr %70, align 8, !tbaa !71
  %72 = icmp eq ptr %5, null
  %73 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %74 = load i64, ptr %73, align 8, !tbaa !67
  br label %75

75:                                               ; preds = %69, %103
  %76 = phi i64 [ 0, %69 ], [ %106, %103 ]
  %77 = phi ptr [ %3, %69 ], [ %104, %103 ]
  %78 = phi ptr [ %4, %69 ], [ %105, %103 ]
  %79 = call fastcc ptr @PushShortPixel(i32 noundef %71, ptr noundef %77, ptr noundef nonnull %10) #11
  %80 = load i16, ptr %10, align 2, !tbaa !53
  %81 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %80) #11
  %82 = fmul float %81, 6.553500e+04
  %83 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %82) #11
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 2
  store i16 %83, ptr %84, align 2, !tbaa !61
  %85 = call fastcc ptr @PushShortPixel(i32 noundef %71, ptr noundef nonnull %79, ptr noundef nonnull %10) #11
  %86 = load i16, ptr %10, align 2, !tbaa !53
  %87 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %86) #11
  %88 = fmul float %87, 6.553500e+04
  %89 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %88) #11
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 1
  store i16 %89, ptr %90, align 2, !tbaa !62
  %91 = call fastcc ptr @PushShortPixel(i32 noundef %71, ptr noundef nonnull %85, ptr noundef nonnull %10) #11
  %92 = load i16, ptr %10, align 2, !tbaa !53
  %93 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %92) #11
  %94 = fmul float %93, 6.553500e+04
  %95 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %94) #11
  store i16 %95, ptr %78, align 2, !tbaa !63
  %96 = call fastcc ptr @PushShortPixel(i32 noundef %71, ptr noundef nonnull %91, ptr noundef nonnull %10) #11
  br i1 %72, label %103, label %97

97:                                               ; preds = %75
  %98 = getelementptr inbounds i16, ptr %5, i64 %76
  %99 = load i16, ptr %10, align 2, !tbaa !53
  %100 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %99) #11
  %101 = fmul float %100, 6.553500e+04
  %102 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %101) #11
  store i16 %102, ptr %98, align 2, !tbaa !53
  br label %103

103:                                              ; preds = %97, %75
  %104 = getelementptr inbounds i8, ptr %96, i64 %74
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %106 = add nuw nsw i64 %76, 1
  %107 = icmp eq i64 %106, %2
  br i1 %107, label %129, label %75, !llvm.loop !132

108:                                              ; preds = %62, %124
  %109 = phi i64 [ 0, %62 ], [ %127, %124 ]
  %110 = phi ptr [ %3, %62 ], [ %125, %124 ]
  %111 = phi ptr [ %4, %62 ], [ %126, %124 ]
  %112 = call fastcc ptr @PushShortPixel(i32 noundef %64, ptr noundef %110, ptr noundef nonnull %10) #11
  %113 = load i16, ptr %10, align 2, !tbaa !53
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  store i16 %113, ptr %114, align 2, !tbaa !61
  %115 = call fastcc ptr @PushShortPixel(i32 noundef %64, ptr noundef nonnull %112, ptr noundef nonnull %10) #11
  %116 = load i16, ptr %10, align 2, !tbaa !53
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 1
  store i16 %116, ptr %117, align 2, !tbaa !62
  %118 = call fastcc ptr @PushShortPixel(i32 noundef %64, ptr noundef nonnull %115, ptr noundef nonnull %10) #11
  %119 = load i16, ptr %10, align 2, !tbaa !53
  store i16 %119, ptr %111, align 2, !tbaa !63
  %120 = call fastcc ptr @PushShortPixel(i32 noundef %64, ptr noundef nonnull %118, ptr noundef nonnull %10) #11
  br i1 %65, label %124, label %121

121:                                              ; preds = %108
  %122 = getelementptr inbounds i16, ptr %5, i64 %109
  %123 = load i16, ptr %10, align 2, !tbaa !53
  store i16 %123, ptr %122, align 2, !tbaa !53
  br label %124

124:                                              ; preds = %121, %108
  %125 = getelementptr inbounds i8, ptr %120, i64 %67
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 1
  %127 = add nuw nsw i64 %109, 1
  %128 = icmp eq i64 %127, %2
  br i1 %128, label %129, label %108, !llvm.loop !133

129:                                              ; preds = %124, %103, %61, %68
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  br label %274

130:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  %131 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !70
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = icmp sgt i64 %2, 0
  br i1 %135, label %136, label %199

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %138 = load i32, ptr %137, align 8, !tbaa !71
  %139 = icmp eq ptr %5, null
  %140 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %141 = load i64, ptr %140, align 8, !tbaa !67
  br label %174

142:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  %143 = icmp sgt i64 %2, 0
  br i1 %143, label %144, label %173

144:                                              ; preds = %142
  %145 = icmp eq ptr %5, null
  %146 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %147 = load i64, ptr %146, align 8, !tbaa !67
  br label %148

148:                                              ; preds = %144, %168
  %149 = phi i64 [ 0, %144 ], [ %171, %168 ]
  %150 = phi ptr [ %3, %144 ], [ %169, %168 ]
  %151 = phi ptr [ %4, %144 ], [ %170, %168 ]
  %152 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef %150, ptr noundef nonnull %12) #11
  %153 = load float, ptr %12, align 4, !tbaa !74
  %154 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %153) #11
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 2
  store i16 %154, ptr %155, align 2, !tbaa !61
  %156 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef nonnull %152, ptr noundef nonnull %12) #11
  %157 = load float, ptr %12, align 4, !tbaa !74
  %158 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %157) #11
  %159 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 0, i32 1
  store i16 %158, ptr %159, align 2, !tbaa !62
  %160 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef nonnull %156, ptr noundef nonnull %12) #11
  %161 = load float, ptr %12, align 4, !tbaa !74
  %162 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %161) #11
  store i16 %162, ptr %151, align 2, !tbaa !63
  %163 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef nonnull %160, ptr noundef nonnull %12) #11
  br i1 %145, label %168, label %164

164:                                              ; preds = %148
  %165 = getelementptr inbounds i16, ptr %5, i64 %149
  %166 = load float, ptr %12, align 4, !tbaa !74
  %167 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %166) #11
  store i16 %167, ptr %165, align 2, !tbaa !53
  br label %168

168:                                              ; preds = %164, %148
  %169 = getelementptr inbounds i8, ptr %163, i64 %147
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %151, i64 1
  %171 = add nuw nsw i64 %149, 1
  %172 = icmp eq i64 %171, %2
  br i1 %172, label %173, label %148, !llvm.loop !134

173:                                              ; preds = %168, %142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %199

174:                                              ; preds = %136, %194
  %175 = phi i64 [ 0, %136 ], [ %197, %194 ]
  %176 = phi ptr [ %3, %136 ], [ %195, %194 ]
  %177 = phi ptr [ %4, %136 ], [ %196, %194 ]
  %178 = call fastcc ptr @PushLongPixel(i32 noundef %138, ptr noundef %176, ptr noundef nonnull %11) #11
  %179 = load i32, ptr %11, align 4, !tbaa !77
  %180 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %179) #11
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %177, i64 0, i32 2
  store i16 %180, ptr %181, align 2, !tbaa !61
  %182 = call fastcc ptr @PushLongPixel(i32 noundef %138, ptr noundef nonnull %178, ptr noundef nonnull %11) #11
  %183 = load i32, ptr %11, align 4, !tbaa !77
  %184 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %183) #11
  %185 = getelementptr inbounds %struct._PixelPacket, ptr %177, i64 0, i32 1
  store i16 %184, ptr %185, align 2, !tbaa !62
  %186 = call fastcc ptr @PushLongPixel(i32 noundef %138, ptr noundef nonnull %182, ptr noundef nonnull %11) #11
  %187 = load i32, ptr %11, align 4, !tbaa !77
  %188 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %187) #11
  store i16 %188, ptr %177, align 2, !tbaa !63
  %189 = call fastcc ptr @PushLongPixel(i32 noundef %138, ptr noundef nonnull %186, ptr noundef nonnull %11) #11
  br i1 %139, label %194, label %190

190:                                              ; preds = %174
  %191 = getelementptr inbounds i16, ptr %5, i64 %175
  %192 = load i32, ptr %11, align 4, !tbaa !77
  %193 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %192) #11
  store i16 %193, ptr %191, align 2, !tbaa !53
  br label %194

194:                                              ; preds = %190, %174
  %195 = getelementptr inbounds i8, ptr %189, i64 %141
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %177, i64 1
  %197 = add nuw nsw i64 %175, 1
  %198 = icmp eq i64 %197, %2
  br i1 %198, label %199, label %174, !llvm.loop !135

199:                                              ; preds = %194, %134, %173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  br label %274

200:                                              ; preds = %20
  %201 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %202 = load i32, ptr %201, align 8, !tbaa !70
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %241

204:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #12
  %205 = icmp sgt i64 %2, 0
  br i1 %205, label %206, label %240

206:                                              ; preds = %204
  %207 = icmp eq ptr %5, null
  %208 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %209 = load i64, ptr %208, align 8, !tbaa !67
  br label %210

210:                                              ; preds = %206, %234
  %211 = phi i64 [ 0, %206 ], [ %238, %234 ]
  %212 = phi ptr [ %3, %206 ], [ %236, %234 ]
  %213 = phi ptr [ %4, %206 ], [ %237, %234 ]
  %214 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef %212, ptr noundef nonnull %13) #11
  %215 = load double, ptr %13, align 8, !tbaa !79
  %216 = fptrunc double %215 to float
  %217 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %216) #11
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %213, i64 0, i32 2
  store i16 %217, ptr %218, align 2, !tbaa !61
  %219 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef nonnull %214, ptr noundef nonnull %13) #11
  %220 = load double, ptr %13, align 8, !tbaa !79
  %221 = fptrunc double %220 to float
  %222 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %221) #11
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %213, i64 0, i32 1
  store i16 %222, ptr %223, align 2, !tbaa !62
  %224 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef nonnull %219, ptr noundef nonnull %13) #11
  %225 = load double, ptr %13, align 8, !tbaa !79
  %226 = fptrunc double %225 to float
  %227 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %226) #11
  store i16 %227, ptr %213, align 2, !tbaa !63
  %228 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef nonnull %224, ptr noundef nonnull %13) #11
  br i1 %207, label %234, label %229

229:                                              ; preds = %210
  %230 = getelementptr inbounds i16, ptr %5, i64 %211
  %231 = load double, ptr %13, align 8, !tbaa !79
  %232 = fptrunc double %231 to float
  %233 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %232) #11
  store i16 %233, ptr %230, align 2, !tbaa !53
  br label %234

234:                                              ; preds = %229, %210
  %235 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef nonnull %228, ptr noundef nonnull %13) #11
  %236 = getelementptr inbounds i8, ptr %235, i64 %209
  %237 = getelementptr inbounds %struct._PixelPacket, ptr %213, i64 1
  %238 = add nuw nsw i64 %211, 1
  %239 = icmp eq i64 %238, %2
  br i1 %239, label %240, label %210, !llvm.loop !136

240:                                              ; preds = %234, %204
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #12
  br label %274

241:                                              ; preds = %200, %20
  %242 = tail call fastcc i64 @GetQuantumRange(i64 noundef %21) #11
  %243 = icmp sgt i64 %2, 0
  br i1 %243, label %244, label %274

244:                                              ; preds = %241
  %245 = icmp eq ptr %5, null
  br label %246

246:                                              ; preds = %244, %270
  %247 = phi i64 [ 0, %244 ], [ %272, %270 ]
  %248 = phi ptr [ %3, %244 ], [ %264, %270 ]
  %249 = phi ptr [ %4, %244 ], [ %271, %270 ]
  %250 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %248, ptr noundef nonnull %8) #11
  %251 = load i32, ptr %8, align 4, !tbaa !77
  %252 = zext i32 %251 to i64
  %253 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %252, i64 noundef %242) #11
  %254 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 2
  store i16 %253, ptr %254, align 2, !tbaa !61
  %255 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %250, ptr noundef nonnull %8) #11
  %256 = load i32, ptr %8, align 4, !tbaa !77
  %257 = zext i32 %256 to i64
  %258 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %257, i64 noundef %242) #11
  %259 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 1
  store i16 %258, ptr %259, align 2, !tbaa !62
  %260 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %255, ptr noundef nonnull %8) #11
  %261 = load i32, ptr %8, align 4, !tbaa !77
  %262 = zext i32 %261 to i64
  %263 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %262, i64 noundef %242) #11
  store i16 %263, ptr %249, align 2, !tbaa !63
  %264 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %260, ptr noundef nonnull %8) #11
  br i1 %245, label %270, label %265

265:                                              ; preds = %246
  %266 = getelementptr inbounds i16, ptr %5, i64 %247
  %267 = load i32, ptr %8, align 4, !tbaa !77
  %268 = zext i32 %267 to i64
  %269 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %268, i64 noundef %242) #11
  store i16 %269, ptr %266, align 2, !tbaa !53
  br label %270

270:                                              ; preds = %265, %246
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 1
  %272 = add nuw nsw i64 %247, 1
  %273 = icmp eq i64 %272, %2
  br i1 %273, label %274, label %246, !llvm.loop !137

274:                                              ; preds = %270, %241, %55, %129, %199, %240, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportCMYKAQuantum(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias nocapture noundef writeonly %4, ptr noalias noundef writeonly %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !138 {
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !109
  %16 = icmp eq i32 %15, 12
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1416, i32 noundef 465, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #9
  br label %314

20:                                               ; preds = %7
  %21 = load i64, ptr %1, align 8, !tbaa !66
  %22 = add i64 %21, -8
  %23 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 61)
  switch i64 %23, label %273 [
    i64 0, label %24
    i64 1, label %61
    i64 3, label %146
    i64 7, label %226
  ]

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  %25 = icmp sgt i64 %2, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %24
  %27 = icmp eq ptr %5, null
  %28 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %29 = load i64, ptr %28, align 8, !tbaa !67
  br label %30

30:                                               ; preds = %26, %50
  %31 = phi i64 [ 0, %26 ], [ %58, %50 ]
  %32 = phi ptr [ %3, %26 ], [ %56, %50 ]
  %33 = phi ptr [ %4, %26 ], [ %57, %50 ]
  %34 = call fastcc ptr @PushCharPixel(ptr noundef %32, ptr noundef nonnull %9) #11
  %35 = load i8, ptr %9, align 1, !tbaa !68
  %36 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %35) #11
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 0, i32 2
  store i16 %36, ptr %37, align 2, !tbaa !61
  %38 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %34, ptr noundef nonnull %9) #11
  %39 = load i8, ptr %9, align 1, !tbaa !68
  %40 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %39) #11
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 0, i32 1
  store i16 %40, ptr %41, align 2, !tbaa !62
  %42 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %38, ptr noundef nonnull %9) #11
  %43 = load i8, ptr %9, align 1, !tbaa !68
  %44 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %43) #11
  store i16 %44, ptr %33, align 2, !tbaa !63
  %45 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %42, ptr noundef nonnull %9) #11
  br i1 %27, label %50, label %46

46:                                               ; preds = %30
  %47 = getelementptr inbounds i16, ptr %5, i64 %31
  %48 = load i8, ptr %9, align 1, !tbaa !68
  %49 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %48) #11
  store i16 %49, ptr %47, align 2, !tbaa !53
  br label %50

50:                                               ; preds = %46, %30
  %51 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %45, ptr noundef nonnull %9) #11
  %52 = load i8, ptr %9, align 1, !tbaa !68
  %53 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %52) #11
  %54 = xor i16 %53, -1
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 0, i32 3
  store i16 %54, ptr %55, align 2, !tbaa !56
  %56 = getelementptr inbounds i8, ptr %51, i64 %29
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %33, i64 1
  %58 = add nuw nsw i64 %31, 1
  %59 = icmp eq i64 %58, %2
  br i1 %59, label %60, label %30, !llvm.loop !139

60:                                               ; preds = %50, %24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  br label %314

61:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  %62 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !70
  %64 = icmp eq i32 %63, 1
  %65 = icmp sgt i64 %2, 0
  br i1 %64, label %73, label %66

66:                                               ; preds = %61
  br i1 %65, label %67, label %145

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %69 = load i32, ptr %68, align 8, !tbaa !71
  %70 = icmp eq ptr %5, null
  %71 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %72 = load i64, ptr %71, align 8, !tbaa !67
  br label %120

73:                                               ; preds = %61
  br i1 %65, label %74, label %145

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !71
  %77 = icmp eq ptr %5, null
  %78 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %79 = load i64, ptr %78, align 8, !tbaa !67
  br label %80

80:                                               ; preds = %74, %108
  %81 = phi i64 [ 0, %74 ], [ %118, %108 ]
  %82 = phi ptr [ %3, %74 ], [ %116, %108 ]
  %83 = phi ptr [ %4, %74 ], [ %117, %108 ]
  %84 = call fastcc ptr @PushShortPixel(i32 noundef %76, ptr noundef %82, ptr noundef nonnull %10) #11
  %85 = load i16, ptr %10, align 2, !tbaa !53
  %86 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %85) #11
  %87 = fmul float %86, 6.553500e+04
  %88 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %87) #11
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 2
  store i16 %88, ptr %89, align 2, !tbaa !61
  %90 = call fastcc ptr @PushShortPixel(i32 noundef %76, ptr noundef nonnull %84, ptr noundef nonnull %10) #11
  %91 = load i16, ptr %10, align 2, !tbaa !53
  %92 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %91) #11
  %93 = fmul float %92, 6.553500e+04
  %94 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %93) #11
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 1
  store i16 %94, ptr %95, align 2, !tbaa !62
  %96 = call fastcc ptr @PushShortPixel(i32 noundef %76, ptr noundef nonnull %90, ptr noundef nonnull %10) #11
  %97 = load i16, ptr %10, align 2, !tbaa !53
  %98 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %97) #11
  %99 = fmul float %98, 6.553500e+04
  %100 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %99) #11
  store i16 %100, ptr %83, align 2, !tbaa !63
  %101 = call fastcc ptr @PushShortPixel(i32 noundef %76, ptr noundef nonnull %96, ptr noundef nonnull %10) #11
  br i1 %77, label %108, label %102

102:                                              ; preds = %80
  %103 = getelementptr inbounds i16, ptr %5, i64 %81
  %104 = load i16, ptr %10, align 2, !tbaa !53
  %105 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %104) #11
  %106 = fmul float %105, 6.553500e+04
  %107 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %106) #11
  store i16 %107, ptr %103, align 2, !tbaa !53
  br label %108

108:                                              ; preds = %102, %80
  %109 = call fastcc ptr @PushShortPixel(i32 noundef %76, ptr noundef nonnull %101, ptr noundef nonnull %10) #11
  %110 = load i16, ptr %10, align 2, !tbaa !53
  %111 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %110) #11
  %112 = fmul float %111, 6.553500e+04
  %113 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %112) #11
  %114 = xor i16 %113, -1
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 3
  store i16 %114, ptr %115, align 2, !tbaa !56
  %116 = getelementptr inbounds i8, ptr %109, i64 %79
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %118 = add nuw nsw i64 %81, 1
  %119 = icmp eq i64 %118, %2
  br i1 %119, label %145, label %80, !llvm.loop !140

120:                                              ; preds = %67, %136
  %121 = phi i64 [ 0, %67 ], [ %143, %136 ]
  %122 = phi ptr [ %3, %67 ], [ %141, %136 ]
  %123 = phi ptr [ %4, %67 ], [ %142, %136 ]
  %124 = call fastcc ptr @PushShortPixel(i32 noundef %69, ptr noundef %122, ptr noundef nonnull %10) #11
  %125 = load i16, ptr %10, align 2, !tbaa !53
  %126 = getelementptr inbounds %struct._PixelPacket, ptr %123, i64 0, i32 2
  store i16 %125, ptr %126, align 2, !tbaa !61
  %127 = call fastcc ptr @PushShortPixel(i32 noundef %69, ptr noundef nonnull %124, ptr noundef nonnull %10) #11
  %128 = load i16, ptr %10, align 2, !tbaa !53
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %123, i64 0, i32 1
  store i16 %128, ptr %129, align 2, !tbaa !62
  %130 = call fastcc ptr @PushShortPixel(i32 noundef %69, ptr noundef nonnull %127, ptr noundef nonnull %10) #11
  %131 = load i16, ptr %10, align 2, !tbaa !53
  store i16 %131, ptr %123, align 2, !tbaa !63
  %132 = call fastcc ptr @PushShortPixel(i32 noundef %69, ptr noundef nonnull %130, ptr noundef nonnull %10) #11
  br i1 %70, label %136, label %133

133:                                              ; preds = %120
  %134 = getelementptr inbounds i16, ptr %5, i64 %121
  %135 = load i16, ptr %10, align 2, !tbaa !53
  store i16 %135, ptr %134, align 2, !tbaa !53
  br label %136

136:                                              ; preds = %133, %120
  %137 = call fastcc ptr @PushShortPixel(i32 noundef %69, ptr noundef nonnull %132, ptr noundef nonnull %10) #11
  %138 = load i16, ptr %10, align 2, !tbaa !53
  %139 = xor i16 %138, -1
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %123, i64 0, i32 3
  store i16 %139, ptr %140, align 2, !tbaa !56
  %141 = getelementptr inbounds i8, ptr %137, i64 %72
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %123, i64 1
  %143 = add nuw nsw i64 %121, 1
  %144 = icmp eq i64 %143, %2
  br i1 %144, label %145, label %120, !llvm.loop !141

145:                                              ; preds = %136, %108, %66, %73
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  br label %314

146:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  %147 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !70
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = icmp sgt i64 %2, 0
  br i1 %151, label %152, label %225

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %154 = load i32, ptr %153, align 8, !tbaa !71
  %155 = icmp eq ptr %5, null
  %156 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %157 = load i64, ptr %156, align 8, !tbaa !67
  br label %195

158:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  %159 = icmp sgt i64 %2, 0
  br i1 %159, label %160, label %194

160:                                              ; preds = %158
  %161 = icmp eq ptr %5, null
  %162 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %163 = load i64, ptr %162, align 8, !tbaa !67
  br label %164

164:                                              ; preds = %160, %184
  %165 = phi i64 [ 0, %160 ], [ %192, %184 ]
  %166 = phi ptr [ %3, %160 ], [ %190, %184 ]
  %167 = phi ptr [ %4, %160 ], [ %191, %184 ]
  %168 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef %166, ptr noundef nonnull %12) #11
  %169 = load float, ptr %12, align 4, !tbaa !74
  %170 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %169) #11
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %167, i64 0, i32 2
  store i16 %170, ptr %171, align 2, !tbaa !61
  %172 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef nonnull %168, ptr noundef nonnull %12) #11
  %173 = load float, ptr %12, align 4, !tbaa !74
  %174 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %173) #11
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %167, i64 0, i32 1
  store i16 %174, ptr %175, align 2, !tbaa !62
  %176 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef nonnull %172, ptr noundef nonnull %12) #11
  %177 = load float, ptr %12, align 4, !tbaa !74
  %178 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %177) #11
  store i16 %178, ptr %167, align 2, !tbaa !63
  %179 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef nonnull %176, ptr noundef nonnull %12) #11
  br i1 %161, label %184, label %180

180:                                              ; preds = %164
  %181 = getelementptr inbounds i16, ptr %5, i64 %165
  %182 = load float, ptr %12, align 4, !tbaa !74
  %183 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %182) #11
  store i16 %183, ptr %181, align 2, !tbaa !53
  br label %184

184:                                              ; preds = %180, %164
  %185 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef nonnull %179, ptr noundef nonnull %12) #11
  %186 = load float, ptr %12, align 4, !tbaa !74
  %187 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %186) #11
  %188 = xor i16 %187, -1
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %167, i64 0, i32 3
  store i16 %188, ptr %189, align 2, !tbaa !56
  %190 = getelementptr inbounds i8, ptr %185, i64 %163
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %167, i64 1
  %192 = add nuw nsw i64 %165, 1
  %193 = icmp eq i64 %192, %2
  br i1 %193, label %194, label %164, !llvm.loop !142

194:                                              ; preds = %184, %158
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %225

195:                                              ; preds = %152, %215
  %196 = phi i64 [ 0, %152 ], [ %223, %215 ]
  %197 = phi ptr [ %3, %152 ], [ %221, %215 ]
  %198 = phi ptr [ %4, %152 ], [ %222, %215 ]
  %199 = call fastcc ptr @PushLongPixel(i32 noundef %154, ptr noundef %197, ptr noundef nonnull %11) #11
  %200 = load i32, ptr %11, align 4, !tbaa !77
  %201 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %200) #11
  %202 = getelementptr inbounds %struct._PixelPacket, ptr %198, i64 0, i32 2
  store i16 %201, ptr %202, align 2, !tbaa !61
  %203 = call fastcc ptr @PushLongPixel(i32 noundef %154, ptr noundef nonnull %199, ptr noundef nonnull %11) #11
  %204 = load i32, ptr %11, align 4, !tbaa !77
  %205 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %204) #11
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %198, i64 0, i32 1
  store i16 %205, ptr %206, align 2, !tbaa !62
  %207 = call fastcc ptr @PushLongPixel(i32 noundef %154, ptr noundef nonnull %203, ptr noundef nonnull %11) #11
  %208 = load i32, ptr %11, align 4, !tbaa !77
  %209 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %208) #11
  store i16 %209, ptr %198, align 2, !tbaa !63
  %210 = call fastcc ptr @PushLongPixel(i32 noundef %154, ptr noundef nonnull %207, ptr noundef nonnull %11) #11
  br i1 %155, label %215, label %211

211:                                              ; preds = %195
  %212 = getelementptr inbounds i16, ptr %5, i64 %196
  %213 = load i32, ptr %11, align 4, !tbaa !77
  %214 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %213) #11
  store i16 %214, ptr %212, align 2, !tbaa !53
  br label %215

215:                                              ; preds = %211, %195
  %216 = call fastcc ptr @PushLongPixel(i32 noundef %154, ptr noundef nonnull %210, ptr noundef nonnull %11) #11
  %217 = load i32, ptr %11, align 4, !tbaa !77
  %218 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %217) #11
  %219 = xor i16 %218, -1
  %220 = getelementptr inbounds %struct._PixelPacket, ptr %198, i64 0, i32 3
  store i16 %219, ptr %220, align 2, !tbaa !56
  %221 = getelementptr inbounds i8, ptr %216, i64 %157
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %198, i64 1
  %223 = add nuw nsw i64 %196, 1
  %224 = icmp eq i64 %223, %2
  br i1 %224, label %225, label %195, !llvm.loop !143

225:                                              ; preds = %215, %150, %194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  br label %314

226:                                              ; preds = %20
  %227 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %228 = load i32, ptr %227, align 8, !tbaa !70
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %273

230:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #12
  %231 = icmp sgt i64 %2, 0
  br i1 %231, label %232, label %272

232:                                              ; preds = %230
  %233 = icmp eq ptr %5, null
  %234 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %235 = load i64, ptr %234, align 8, !tbaa !67
  br label %236

236:                                              ; preds = %232, %260
  %237 = phi i64 [ 0, %232 ], [ %270, %260 ]
  %238 = phi ptr [ %3, %232 ], [ %268, %260 ]
  %239 = phi ptr [ %4, %232 ], [ %269, %260 ]
  %240 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef %238, ptr noundef nonnull %13) #11
  %241 = load double, ptr %13, align 8, !tbaa !79
  %242 = fptrunc double %241 to float
  %243 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %242) #11
  %244 = getelementptr inbounds %struct._PixelPacket, ptr %239, i64 0, i32 2
  store i16 %243, ptr %244, align 2, !tbaa !61
  %245 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef nonnull %240, ptr noundef nonnull %13) #11
  %246 = load double, ptr %13, align 8, !tbaa !79
  %247 = fptrunc double %246 to float
  %248 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %247) #11
  %249 = getelementptr inbounds %struct._PixelPacket, ptr %239, i64 0, i32 1
  store i16 %248, ptr %249, align 2, !tbaa !62
  %250 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef nonnull %245, ptr noundef nonnull %13) #11
  %251 = load double, ptr %13, align 8, !tbaa !79
  %252 = fptrunc double %251 to float
  %253 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %252) #11
  store i16 %253, ptr %239, align 2, !tbaa !63
  %254 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef nonnull %250, ptr noundef nonnull %13) #11
  br i1 %233, label %260, label %255

255:                                              ; preds = %236
  %256 = getelementptr inbounds i16, ptr %5, i64 %237
  %257 = load double, ptr %13, align 8, !tbaa !79
  %258 = fptrunc double %257 to float
  %259 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %258) #11
  store i16 %259, ptr %256, align 2, !tbaa !53
  br label %260

260:                                              ; preds = %255, %236
  %261 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef nonnull %254, ptr noundef nonnull %13) #11
  %262 = load double, ptr %13, align 8, !tbaa !79
  %263 = fptrunc double %262 to float
  %264 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %263) #11
  %265 = xor i16 %264, -1
  %266 = getelementptr inbounds %struct._PixelPacket, ptr %239, i64 0, i32 3
  store i16 %265, ptr %266, align 2, !tbaa !56
  %267 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef nonnull %261, ptr noundef nonnull %13) #11
  %268 = getelementptr inbounds i8, ptr %267, i64 %235
  %269 = getelementptr inbounds %struct._PixelPacket, ptr %239, i64 1
  %270 = add nuw nsw i64 %237, 1
  %271 = icmp eq i64 %270, %2
  br i1 %271, label %272, label %236, !llvm.loop !144

272:                                              ; preds = %260, %230
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #12
  br label %314

273:                                              ; preds = %226, %20
  %274 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %275 = load i64, ptr %274, align 8, !tbaa !128
  %276 = tail call fastcc i64 @GetQuantumRange(i64 noundef %275) #11
  %277 = icmp sgt i64 %2, 0
  br i1 %277, label %278, label %314

278:                                              ; preds = %273
  %279 = icmp eq ptr %5, null
  br label %280

280:                                              ; preds = %278, %304
  %281 = phi i64 [ 0, %278 ], [ %312, %304 ]
  %282 = phi ptr [ %3, %278 ], [ %305, %304 ]
  %283 = phi ptr [ %4, %278 ], [ %311, %304 ]
  %284 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %282, ptr noundef nonnull %8) #11
  %285 = load i32, ptr %8, align 4, !tbaa !77
  %286 = zext i32 %285 to i64
  %287 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %286, i64 noundef %276) #11
  %288 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 0, i32 2
  store i16 %287, ptr %288, align 2, !tbaa !61
  %289 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %284, ptr noundef nonnull %8) #11
  %290 = load i32, ptr %8, align 4, !tbaa !77
  %291 = zext i32 %290 to i64
  %292 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %291, i64 noundef %276) #11
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 0, i32 1
  store i16 %292, ptr %293, align 2, !tbaa !62
  %294 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %289, ptr noundef nonnull %8) #11
  %295 = load i32, ptr %8, align 4, !tbaa !77
  %296 = zext i32 %295 to i64
  %297 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %296, i64 noundef %276) #11
  store i16 %297, ptr %283, align 2, !tbaa !63
  %298 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %294, ptr noundef nonnull %8) #11
  br i1 %279, label %304, label %299

299:                                              ; preds = %280
  %300 = getelementptr inbounds i16, ptr %5, i64 %281
  %301 = load i32, ptr %8, align 4, !tbaa !77
  %302 = zext i32 %301 to i64
  %303 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %302, i64 noundef %276) #11
  store i16 %303, ptr %300, align 2, !tbaa !53
  br label %304

304:                                              ; preds = %299, %280
  %305 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %298, ptr noundef nonnull %8) #11
  %306 = load i32, ptr %8, align 4, !tbaa !77
  %307 = zext i32 %306 to i64
  %308 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %307, i64 noundef %276) #11
  %309 = xor i16 %308, -1
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 0, i32 3
  store i16 %309, ptr %310, align 2, !tbaa !56
  %311 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 1
  %312 = add nuw nsw i64 %281, 1
  %313 = icmp eq i64 %312, %2
  br i1 %313, label %314, label %280, !llvm.loop !145

314:                                              ; preds = %304, %273, %60, %145, %225, %272, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportGrayQuantum(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias noundef writeonly %4) unnamed_addr #4 !PGOFuncName !146 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %13 = load i64, ptr %1, align 8, !tbaa !66
  switch i64 %13, label %508 [
    i64 1, label %14
    i64 4, label %70
    i64 8, label %106
    i64 10, label %147
    i64 12, label %300
    i64 16, label %371
    i64 32, label %440
    i64 64, label %484
  ]

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !147
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 65535
  %19 = select i1 %17, i32 65535, i32 0
  %20 = add nsw i64 %2, -7
  %21 = icmp sgt i64 %2, 7
  br i1 %21, label %22, label %28

22:                                               ; preds = %14, %51
  %23 = phi i64 [ %53, %51 ], [ 0, %14 ]
  %24 = phi ptr [ %48, %51 ], [ %4, %14 ]
  %25 = phi ptr [ %52, %51 ], [ %3, %14 ]
  %26 = load i8, ptr %25, align 1, !tbaa !68
  %27 = zext i8 %26 to i32
  br label %36

28:                                               ; preds = %51, %14
  %29 = phi ptr [ %3, %14 ], [ %52, %51 ]
  %30 = phi ptr [ %4, %14 ], [ %48, %51 ]
  %31 = and i64 %2, 7
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %528, label %33

33:                                               ; preds = %28
  %34 = load i8, ptr %29, align 1, !tbaa !68
  %35 = zext i8 %34 to i32
  br label %55

36:                                               ; preds = %22, %36
  %37 = phi i64 [ 0, %22 ], [ %49, %36 ]
  %38 = phi ptr [ %24, %22 ], [ %48, %36 ]
  %39 = trunc i64 %37 to i32
  %40 = xor i32 %39, 7
  %41 = shl nuw nsw i32 1, %40
  %42 = and i32 %41, %27
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %18, i32 %19
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 0, i32 2
  store i16 %45, ptr %46, align 2, !tbaa !61
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 0, i32 1
  store i16 %45, ptr %47, align 2, !tbaa !62
  store i16 %45, ptr %38, align 2, !tbaa !63
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 1
  %49 = add nuw nsw i64 %37, 1
  %50 = icmp eq i64 %49, 8
  br i1 %50, label %51, label %36, !llvm.loop !148

51:                                               ; preds = %36
  %52 = getelementptr inbounds i8, ptr %25, i64 1
  %53 = add nuw nsw i64 %23, 8
  %54 = icmp slt i64 %53, %20
  br i1 %54, label %22, label %28, !llvm.loop !149

55:                                               ; preds = %33, %55
  %56 = phi i64 [ %68, %55 ], [ 0, %33 ]
  %57 = phi ptr [ %67, %55 ], [ %30, %33 ]
  %58 = trunc i64 %56 to i32
  %59 = sub nuw nsw i32 7, %58
  %60 = shl nuw nsw i32 1, %59
  %61 = and i32 %60, %35
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 %18, i32 %19
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 2
  store i16 %64, ptr %65, align 2, !tbaa !61
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 1
  store i16 %64, ptr %66, align 2, !tbaa !62
  store i16 %64, ptr %57, align 2, !tbaa !63
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 1
  %68 = add nuw nsw i64 %56, 1
  %69 = icmp eq i64 %68, %31
  br i1 %69, label %528, label %55, !llvm.loop !150

70:                                               ; preds = %5
  %71 = tail call fastcc i64 @GetQuantumRange(i64 noundef 4) #11
  %72 = add nsw i64 %2, -1
  %73 = icmp sgt i64 %2, 1
  br i1 %73, label %86, label %74

74:                                               ; preds = %86, %70
  %75 = phi ptr [ %3, %70 ], [ %102, %86 ]
  %76 = phi ptr [ %4, %70 ], [ %103, %86 ]
  %77 = and i64 %2, 1
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %528, label %79

79:                                               ; preds = %74
  %80 = load i8, ptr %75, align 1, !tbaa !68
  %81 = lshr i8 %80, 4
  %82 = zext nneg i8 %81 to i64
  %83 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %82, i64 noundef %71) #11
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 2
  store i16 %83, ptr %84, align 2, !tbaa !61
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 1
  store i16 %83, ptr %85, align 2, !tbaa !62
  store i16 %83, ptr %76, align 2, !tbaa !63
  br label %528

86:                                               ; preds = %70, %86
  %87 = phi i64 [ %104, %86 ], [ 0, %70 ]
  %88 = phi ptr [ %103, %86 ], [ %4, %70 ]
  %89 = phi ptr [ %102, %86 ], [ %3, %70 ]
  %90 = load i8, ptr %89, align 1, !tbaa !68
  %91 = lshr i8 %90, 4
  %92 = zext nneg i8 %91 to i64
  %93 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %92, i64 noundef %71) #11
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 2
  store i16 %93, ptr %94, align 2, !tbaa !61
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 0, i32 1
  store i16 %93, ptr %95, align 2, !tbaa !62
  store i16 %93, ptr %88, align 2, !tbaa !63
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 1
  %97 = and i8 %90, 15
  %98 = zext nneg i8 %97 to i64
  %99 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %98, i64 noundef %71) #11
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 1, i32 2
  store i16 %99, ptr %100, align 2, !tbaa !61
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 1, i32 1
  store i16 %99, ptr %101, align 2, !tbaa !62
  store i16 %99, ptr %96, align 2, !tbaa !63
  %102 = getelementptr inbounds i8, ptr %89, i64 1
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 2
  %104 = add nuw nsw i64 %87, 2
  %105 = icmp slt i64 %104, %72
  br i1 %105, label %86, label %74, !llvm.loop !151

106:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  %107 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  %108 = load i32, ptr %107, align 8, !tbaa !147
  %109 = icmp eq i32 %108, 0
  %110 = icmp sgt i64 %2, 0
  br i1 %109, label %115, label %111

111:                                              ; preds = %106
  br i1 %110, label %112, label %146

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %114 = load i64, ptr %113, align 8, !tbaa !67
  br label %119

115:                                              ; preds = %106
  br i1 %110, label %116, label %146

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %118 = load i64, ptr %117, align 8, !tbaa !67
  br label %133

119:                                              ; preds = %112, %119
  %120 = phi i64 [ 0, %112 ], [ %131, %119 ]
  %121 = phi ptr [ %4, %112 ], [ %130, %119 ]
  %122 = phi ptr [ %3, %112 ], [ %129, %119 ]
  %123 = call fastcc ptr @PushCharPixel(ptr noundef %122, ptr noundef nonnull %7) #11
  %124 = load i8, ptr %7, align 1, !tbaa !68
  %125 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %124) #11
  %126 = xor i16 %125, -1
  %127 = insertelement <4 x i16> <i16 poison, i16 0, i16 poison, i16 poison>, i16 %126, i64 0
  %128 = shufflevector <4 x i16> %127, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %128, ptr %121, align 2, !tbaa !53
  %129 = getelementptr inbounds i8, ptr %123, i64 %114
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %121, i64 1
  %131 = add nuw nsw i64 %120, 1
  %132 = icmp eq i64 %131, %2
  br i1 %132, label %146, label %119, !llvm.loop !152

133:                                              ; preds = %116, %133
  %134 = phi i64 [ 0, %116 ], [ %144, %133 ]
  %135 = phi ptr [ %4, %116 ], [ %143, %133 ]
  %136 = phi ptr [ %3, %116 ], [ %142, %133 ]
  %137 = call fastcc ptr @PushCharPixel(ptr noundef %136, ptr noundef nonnull %7) #11
  %138 = load i8, ptr %7, align 1, !tbaa !68
  %139 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %138) #11
  %140 = insertelement <4 x i16> <i16 poison, i16 0, i16 poison, i16 poison>, i16 %139, i64 0
  %141 = shufflevector <4 x i16> %140, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %141, ptr %135, align 2, !tbaa !53
  %142 = getelementptr inbounds i8, ptr %137, i64 %118
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %135, i64 1
  %144 = add nuw nsw i64 %134, 1
  %145 = icmp eq i64 %144, %2
  br i1 %145, label %146, label %133, !llvm.loop !153

146:                                              ; preds = %119, %133, %111, %115
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  br label %528

147:                                              ; preds = %5
  %148 = tail call fastcc i64 @GetQuantumRange(i64 noundef 10) #11
  %149 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 8
  %150 = load i32, ptr %149, align 4, !tbaa !84
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  %153 = icmp sgt i64 %2, 0
  br i1 %153, label %154, label %528

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %285

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %158 = load i32, ptr %157, align 8, !tbaa !154
  %159 = icmp eq i32 %158, 1
  %160 = add i64 %2, -2
  %161 = icmp sgt i64 %160, 0
  %162 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %163 = load i32, ptr %162, align 8, !tbaa !71
  br i1 %159, label %168, label %164

164:                                              ; preds = %156
  br i1 %161, label %165, label %257

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %167 = load i64, ptr %166, align 8, !tbaa !67
  br label %228

168:                                              ; preds = %156
  br i1 %161, label %169, label %201

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %171 = load i64, ptr %170, align 8, !tbaa !67
  br label %172

172:                                              ; preds = %169, %172
  %173 = phi i64 [ 0, %169 ], [ %199, %172 ]
  %174 = phi ptr [ %4, %169 ], [ %198, %172 ]
  %175 = phi ptr [ %3, %169 ], [ %197, %172 ]
  %176 = call fastcc ptr @PushLongPixel(i32 noundef %163, ptr noundef %175, ptr noundef nonnull %6) #11
  %177 = load i32, ptr %6, align 4, !tbaa !77
  %178 = lshr i32 %177, 22
  %179 = zext nneg i32 %178 to i64
  %180 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %179, i64 noundef %148) #11
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 0, i32 2
  store i16 %180, ptr %181, align 2, !tbaa !61
  %182 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 0, i32 1
  store i16 %180, ptr %182, align 2, !tbaa !62
  store i16 %180, ptr %174, align 2, !tbaa !63
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 1
  %184 = lshr i32 %177, 12
  %185 = and i32 %184, 1023
  %186 = zext nneg i32 %185 to i64
  %187 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %186, i64 noundef %148) #11
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 1, i32 2
  store i16 %187, ptr %188, align 2, !tbaa !61
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 1, i32 1
  store i16 %187, ptr %189, align 2, !tbaa !62
  store i16 %187, ptr %183, align 2, !tbaa !63
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 2
  %191 = lshr i32 %177, 2
  %192 = and i32 %191, 1023
  %193 = zext nneg i32 %192 to i64
  %194 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %193, i64 noundef %148) #11
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 2, i32 2
  store i16 %194, ptr %195, align 2, !tbaa !61
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 2, i32 1
  store i16 %194, ptr %196, align 2, !tbaa !62
  store i16 %194, ptr %190, align 2, !tbaa !63
  %197 = getelementptr inbounds i8, ptr %176, i64 %171
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 3
  %199 = add nuw nsw i64 %173, 3
  %200 = icmp slt i64 %199, %160
  br i1 %200, label %172, label %201, !llvm.loop !155

201:                                              ; preds = %172, %168
  %202 = phi ptr [ %3, %168 ], [ %197, %172 ]
  %203 = phi ptr [ %4, %168 ], [ %198, %172 ]
  %204 = phi i64 [ 0, %168 ], [ %199, %172 ]
  %205 = call fastcc ptr @PushLongPixel(i32 noundef %163, ptr noundef %202, ptr noundef nonnull %6) #11
  %206 = add nuw nsw i64 %204, 1
  %207 = add i64 %2, -1
  %208 = icmp slt i64 %204, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %201
  %210 = load i32, ptr %6, align 4, !tbaa !77
  %211 = lshr i32 %210, 22
  %212 = zext nneg i32 %211 to i64
  %213 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %212, i64 noundef %148) #11
  %214 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 0, i32 2
  store i16 %213, ptr %214, align 2, !tbaa !61
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 0, i32 1
  store i16 %213, ptr %215, align 2, !tbaa !62
  store i16 %213, ptr %203, align 2, !tbaa !63
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %203, i64 1
  br label %217

217:                                              ; preds = %209, %201
  %218 = phi ptr [ %216, %209 ], [ %203, %201 ]
  %219 = icmp slt i64 %206, %2
  br i1 %219, label %220, label %528

220:                                              ; preds = %217
  %221 = load i32, ptr %6, align 4, !tbaa !77
  %222 = lshr i32 %221, 12
  %223 = and i32 %222, 1023
  %224 = zext nneg i32 %223 to i64
  %225 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %224, i64 noundef %148) #11
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %218, i64 0, i32 2
  store i16 %225, ptr %226, align 2, !tbaa !61
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %218, i64 0, i32 1
  store i16 %225, ptr %227, align 2, !tbaa !62
  store i16 %225, ptr %218, align 2, !tbaa !63
  br label %528

228:                                              ; preds = %165, %228
  %229 = phi i64 [ 0, %165 ], [ %255, %228 ]
  %230 = phi ptr [ %4, %165 ], [ %254, %228 ]
  %231 = phi ptr [ %3, %165 ], [ %253, %228 ]
  %232 = call fastcc ptr @PushLongPixel(i32 noundef %163, ptr noundef %231, ptr noundef nonnull %6) #11
  %233 = load i32, ptr %6, align 4, !tbaa !77
  %234 = lshr i32 %233, 2
  %235 = and i32 %234, 1023
  %236 = zext nneg i32 %235 to i64
  %237 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %236, i64 noundef %148) #11
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 0, i32 2
  store i16 %237, ptr %238, align 2, !tbaa !61
  %239 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 0, i32 1
  store i16 %237, ptr %239, align 2, !tbaa !62
  store i16 %237, ptr %230, align 2, !tbaa !63
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 1
  %241 = lshr i32 %233, 12
  %242 = and i32 %241, 1023
  %243 = zext nneg i32 %242 to i64
  %244 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %243, i64 noundef %148) #11
  %245 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 1, i32 2
  store i16 %244, ptr %245, align 2, !tbaa !61
  %246 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 1, i32 1
  store i16 %244, ptr %246, align 2, !tbaa !62
  store i16 %244, ptr %240, align 2, !tbaa !63
  %247 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 2
  %248 = lshr i32 %233, 22
  %249 = zext nneg i32 %248 to i64
  %250 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %249, i64 noundef %148) #11
  %251 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 2, i32 2
  store i16 %250, ptr %251, align 2, !tbaa !61
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 2, i32 1
  store i16 %250, ptr %252, align 2, !tbaa !62
  store i16 %250, ptr %247, align 2, !tbaa !63
  %253 = getelementptr inbounds i8, ptr %232, i64 %167
  %254 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 3
  %255 = add nuw nsw i64 %229, 3
  %256 = icmp slt i64 %255, %160
  br i1 %256, label %228, label %257, !llvm.loop !156

257:                                              ; preds = %228, %164
  %258 = phi ptr [ %3, %164 ], [ %253, %228 ]
  %259 = phi ptr [ %4, %164 ], [ %254, %228 ]
  %260 = phi i64 [ 0, %164 ], [ %255, %228 ]
  %261 = call fastcc ptr @PushLongPixel(i32 noundef %163, ptr noundef %258, ptr noundef nonnull %6) #11
  %262 = add nuw nsw i64 %260, 1
  %263 = add i64 %2, -1
  %264 = icmp slt i64 %260, %263
  br i1 %264, label %265, label %274

265:                                              ; preds = %257
  %266 = load i32, ptr %6, align 4, !tbaa !77
  %267 = lshr i32 %266, 2
  %268 = and i32 %267, 1023
  %269 = zext nneg i32 %268 to i64
  %270 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %269, i64 noundef %148) #11
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 0, i32 2
  store i16 %270, ptr %271, align 2, !tbaa !61
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 0, i32 1
  store i16 %270, ptr %272, align 2, !tbaa !62
  store i16 %270, ptr %259, align 2, !tbaa !63
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %259, i64 1
  br label %274

274:                                              ; preds = %265, %257
  %275 = phi ptr [ %273, %265 ], [ %259, %257 ]
  %276 = icmp slt i64 %262, %2
  br i1 %276, label %277, label %528

277:                                              ; preds = %274
  %278 = load i32, ptr %6, align 4, !tbaa !77
  %279 = lshr i32 %278, 12
  %280 = and i32 %279, 1023
  %281 = zext nneg i32 %280 to i64
  %282 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %281, i64 noundef %148) #11
  %283 = getelementptr inbounds %struct._PixelPacket, ptr %275, i64 0, i32 2
  store i16 %282, ptr %283, align 2, !tbaa !61
  %284 = getelementptr inbounds %struct._PixelPacket, ptr %275, i64 0, i32 1
  store i16 %282, ptr %284, align 2, !tbaa !62
  store i16 %282, ptr %275, align 2, !tbaa !63
  br label %528

285:                                              ; preds = %154, %285
  %286 = phi i64 [ 0, %154 ], [ %298, %285 ]
  %287 = phi ptr [ %4, %154 ], [ %297, %285 ]
  %288 = phi ptr [ %3, %154 ], [ %296, %285 ]
  %289 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %288, ptr noundef nonnull %6) #11
  %290 = load i32, ptr %6, align 4, !tbaa !77
  %291 = zext i32 %290 to i64
  %292 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %291, i64 noundef %148) #11
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %287, i64 0, i32 2
  store i16 %292, ptr %293, align 2, !tbaa !61
  %294 = getelementptr inbounds %struct._PixelPacket, ptr %287, i64 0, i32 1
  store i16 %292, ptr %294, align 2, !tbaa !62
  store i16 %292, ptr %287, align 2, !tbaa !63
  %295 = load i64, ptr %155, align 8, !tbaa !67
  %296 = getelementptr inbounds i8, ptr %289, i64 %295
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %287, i64 1
  %298 = add nuw nsw i64 %286, 1
  %299 = icmp eq i64 %298, %2
  br i1 %299, label %528, label %285, !llvm.loop !157

300:                                              ; preds = %5
  %301 = tail call fastcc i64 @GetQuantumRange(i64 noundef 12) #11
  %302 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 8
  %303 = load i32, ptr %302, align 4, !tbaa !84
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %309, label %305

305:                                              ; preds = %300
  %306 = icmp sgt i64 %2, 0
  br i1 %306, label %307, label %528

307:                                              ; preds = %305
  %308 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %356

309:                                              ; preds = %300
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  %310 = add i64 %2, -1
  %311 = icmp sgt i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %314 = load i32, ptr %313, align 8, !tbaa !71
  %315 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %316 = load i64, ptr %315, align 8, !tbaa !67
  br label %332

317:                                              ; preds = %332, %309
  %318 = phi ptr [ %3, %309 ], [ %351, %332 ]
  %319 = phi ptr [ %4, %309 ], [ %352, %332 ]
  %320 = and i64 %2, 1
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %355, label %322

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %324 = load i32, ptr %323, align 8, !tbaa !71
  %325 = call fastcc ptr @PushShortPixel(i32 noundef %324, ptr noundef %318, ptr noundef nonnull %8) #11
  %326 = load i16, ptr %8, align 2, !tbaa !53
  %327 = lshr i16 %326, 4
  %328 = zext nneg i16 %327 to i64
  %329 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %328, i64 noundef %301) #11
  %330 = getelementptr inbounds %struct._PixelPacket, ptr %319, i64 0, i32 2
  store i16 %329, ptr %330, align 2, !tbaa !61
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %319, i64 0, i32 1
  store i16 %329, ptr %331, align 2, !tbaa !62
  store i16 %329, ptr %319, align 2, !tbaa !63
  br label %355

332:                                              ; preds = %312, %332
  %333 = phi i64 [ 0, %312 ], [ %353, %332 ]
  %334 = phi ptr [ %4, %312 ], [ %352, %332 ]
  %335 = phi ptr [ %3, %312 ], [ %351, %332 ]
  %336 = call fastcc ptr @PushShortPixel(i32 noundef %314, ptr noundef %335, ptr noundef nonnull %8) #11
  %337 = load i16, ptr %8, align 2, !tbaa !53
  %338 = lshr i16 %337, 4
  %339 = zext nneg i16 %338 to i64
  %340 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %339, i64 noundef %301) #11
  %341 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 0, i32 2
  store i16 %340, ptr %341, align 2, !tbaa !61
  %342 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 0, i32 1
  store i16 %340, ptr %342, align 2, !tbaa !62
  store i16 %340, ptr %334, align 2, !tbaa !63
  %343 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 1
  %344 = call fastcc ptr @PushShortPixel(i32 noundef %314, ptr noundef nonnull %336, ptr noundef nonnull %8) #11
  %345 = load i16, ptr %8, align 2, !tbaa !53
  %346 = lshr i16 %345, 4
  %347 = zext nneg i16 %346 to i64
  %348 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %347, i64 noundef %301) #11
  %349 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 1, i32 2
  store i16 %348, ptr %349, align 2, !tbaa !61
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 1, i32 1
  store i16 %348, ptr %350, align 2, !tbaa !62
  store i16 %348, ptr %343, align 2, !tbaa !63
  %351 = getelementptr inbounds i8, ptr %344, i64 %316
  %352 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 2
  %353 = add nuw nsw i64 %333, 2
  %354 = icmp slt i64 %353, %310
  br i1 %354, label %332, label %317, !llvm.loop !158

355:                                              ; preds = %322, %317
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  br label %528

356:                                              ; preds = %307, %356
  %357 = phi i64 [ 0, %307 ], [ %369, %356 ]
  %358 = phi ptr [ %4, %307 ], [ %368, %356 ]
  %359 = phi ptr [ %3, %307 ], [ %367, %356 ]
  %360 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %359, ptr noundef nonnull %6) #11
  %361 = load i32, ptr %6, align 4, !tbaa !77
  %362 = zext i32 %361 to i64
  %363 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %362, i64 noundef %301) #11
  %364 = getelementptr inbounds %struct._PixelPacket, ptr %358, i64 0, i32 2
  store i16 %363, ptr %364, align 2, !tbaa !61
  %365 = getelementptr inbounds %struct._PixelPacket, ptr %358, i64 0, i32 1
  store i16 %363, ptr %365, align 2, !tbaa !62
  store i16 %363, ptr %358, align 2, !tbaa !63
  %366 = load i64, ptr %308, align 8, !tbaa !67
  %367 = getelementptr inbounds i8, ptr %360, i64 %366
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %358, i64 1
  %369 = add nuw nsw i64 %357, 1
  %370 = icmp eq i64 %369, %2
  br i1 %370, label %528, label %356, !llvm.loop !159

371:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  %372 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  %373 = load i32, ptr %372, align 8, !tbaa !147
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %395, label %375

375:                                              ; preds = %371
  %376 = icmp sgt i64 %2, 0
  br i1 %376, label %377, label %439

377:                                              ; preds = %375
  %378 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %379 = load i32, ptr %378, align 8, !tbaa !71
  %380 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %381 = load i64, ptr %380, align 8, !tbaa !67
  br label %382

382:                                              ; preds = %377, %382
  %383 = phi i64 [ 0, %377 ], [ %393, %382 ]
  %384 = phi ptr [ %4, %377 ], [ %392, %382 ]
  %385 = phi ptr [ %3, %377 ], [ %391, %382 ]
  %386 = call fastcc ptr @PushShortPixel(i32 noundef %379, ptr noundef %385, ptr noundef nonnull %9) #11
  %387 = load i16, ptr %9, align 2, !tbaa !53
  %388 = xor i16 %387, -1
  %389 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 0, i32 2
  store i16 %388, ptr %389, align 2, !tbaa !61
  %390 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 0, i32 1
  store i16 %388, ptr %390, align 2, !tbaa !62
  store i16 %388, ptr %384, align 2, !tbaa !63
  %391 = getelementptr inbounds i8, ptr %386, i64 %381
  %392 = getelementptr inbounds %struct._PixelPacket, ptr %384, i64 1
  %393 = add nuw nsw i64 %383, 1
  %394 = icmp eq i64 %393, %2
  br i1 %394, label %439, label %382, !llvm.loop !160

395:                                              ; preds = %371
  %396 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %397 = load i32, ptr %396, align 8, !tbaa !70
  %398 = icmp eq i32 %397, 1
  %399 = icmp sgt i64 %2, 0
  br i1 %398, label %406, label %400

400:                                              ; preds = %395
  br i1 %399, label %401, label %439

401:                                              ; preds = %400
  %402 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %403 = load i32, ptr %402, align 8, !tbaa !71
  %404 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %405 = load i64, ptr %404, align 8, !tbaa !67
  br label %427

406:                                              ; preds = %395
  br i1 %399, label %407, label %439

407:                                              ; preds = %406
  %408 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %409 = load i32, ptr %408, align 8, !tbaa !71
  %410 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %411 = load i64, ptr %410, align 8, !tbaa !67
  br label %412

412:                                              ; preds = %407, %412
  %413 = phi i64 [ 0, %407 ], [ %425, %412 ]
  %414 = phi ptr [ %4, %407 ], [ %424, %412 ]
  %415 = phi ptr [ %3, %407 ], [ %423, %412 ]
  %416 = call fastcc ptr @PushShortPixel(i32 noundef %409, ptr noundef %415, ptr noundef nonnull %9) #11
  %417 = load i16, ptr %9, align 2, !tbaa !53
  %418 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %417) #11
  %419 = fmul float %418, 6.553500e+04
  %420 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %419) #11
  %421 = getelementptr inbounds %struct._PixelPacket, ptr %414, i64 0, i32 2
  store i16 %420, ptr %421, align 2, !tbaa !61
  %422 = getelementptr inbounds %struct._PixelPacket, ptr %414, i64 0, i32 1
  store i16 %420, ptr %422, align 2, !tbaa !62
  store i16 %420, ptr %414, align 2, !tbaa !63
  %423 = getelementptr inbounds i8, ptr %416, i64 %411
  %424 = getelementptr inbounds %struct._PixelPacket, ptr %414, i64 1
  %425 = add nuw nsw i64 %413, 1
  %426 = icmp eq i64 %425, %2
  br i1 %426, label %439, label %412, !llvm.loop !161

427:                                              ; preds = %401, %427
  %428 = phi i64 [ 0, %401 ], [ %437, %427 ]
  %429 = phi ptr [ %4, %401 ], [ %436, %427 ]
  %430 = phi ptr [ %3, %401 ], [ %435, %427 ]
  %431 = call fastcc ptr @PushShortPixel(i32 noundef %403, ptr noundef %430, ptr noundef nonnull %9) #11
  %432 = load i16, ptr %9, align 2, !tbaa !53
  %433 = getelementptr inbounds %struct._PixelPacket, ptr %429, i64 0, i32 2
  store i16 %432, ptr %433, align 2, !tbaa !61
  %434 = getelementptr inbounds %struct._PixelPacket, ptr %429, i64 0, i32 1
  store i16 %432, ptr %434, align 2, !tbaa !62
  store i16 %432, ptr %429, align 2, !tbaa !63
  %435 = getelementptr inbounds i8, ptr %431, i64 %405
  %436 = getelementptr inbounds %struct._PixelPacket, ptr %429, i64 1
  %437 = add nuw nsw i64 %428, 1
  %438 = icmp eq i64 %437, %2
  br i1 %438, label %439, label %427, !llvm.loop !162

439:                                              ; preds = %382, %427, %412, %375, %400, %406
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  br label %528

440:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %441 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %442 = load i32, ptr %441, align 8, !tbaa !70
  %443 = icmp eq i32 %442, 1
  br i1 %443, label %451, label %444

444:                                              ; preds = %440
  %445 = icmp sgt i64 %2, 0
  br i1 %445, label %446, label %483

446:                                              ; preds = %444
  %447 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %448 = load i32, ptr %447, align 8, !tbaa !71
  %449 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %450 = load i64, ptr %449, align 8, !tbaa !67
  br label %470

451:                                              ; preds = %440
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  %452 = icmp sgt i64 %2, 0
  br i1 %452, label %453, label %469

453:                                              ; preds = %451
  %454 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %455 = load i64, ptr %454, align 8, !tbaa !67
  br label %456

456:                                              ; preds = %453, %456
  %457 = phi i64 [ 0, %453 ], [ %467, %456 ]
  %458 = phi ptr [ %4, %453 ], [ %466, %456 ]
  %459 = phi ptr [ %3, %453 ], [ %465, %456 ]
  %460 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef %459, ptr noundef nonnull %11) #11
  %461 = load float, ptr %11, align 4, !tbaa !74
  %462 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %461) #11
  %463 = getelementptr inbounds %struct._PixelPacket, ptr %458, i64 0, i32 2
  store i16 %462, ptr %463, align 2, !tbaa !61
  %464 = getelementptr inbounds %struct._PixelPacket, ptr %458, i64 0, i32 1
  store i16 %462, ptr %464, align 2, !tbaa !62
  store i16 %462, ptr %458, align 2, !tbaa !63
  %465 = getelementptr inbounds i8, ptr %460, i64 %455
  %466 = getelementptr inbounds %struct._PixelPacket, ptr %458, i64 1
  %467 = add nuw nsw i64 %457, 1
  %468 = icmp eq i64 %467, %2
  br i1 %468, label %469, label %456, !llvm.loop !163

469:                                              ; preds = %456, %451
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  br label %483

470:                                              ; preds = %446, %470
  %471 = phi i64 [ 0, %446 ], [ %481, %470 ]
  %472 = phi ptr [ %4, %446 ], [ %480, %470 ]
  %473 = phi ptr [ %3, %446 ], [ %479, %470 ]
  %474 = call fastcc ptr @PushLongPixel(i32 noundef %448, ptr noundef %473, ptr noundef nonnull %10) #11
  %475 = load i32, ptr %10, align 4, !tbaa !77
  %476 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %475) #11
  %477 = getelementptr inbounds %struct._PixelPacket, ptr %472, i64 0, i32 2
  store i16 %476, ptr %477, align 2, !tbaa !61
  %478 = getelementptr inbounds %struct._PixelPacket, ptr %472, i64 0, i32 1
  store i16 %476, ptr %478, align 2, !tbaa !62
  store i16 %476, ptr %472, align 2, !tbaa !63
  %479 = getelementptr inbounds i8, ptr %474, i64 %450
  %480 = getelementptr inbounds %struct._PixelPacket, ptr %472, i64 1
  %481 = add nuw nsw i64 %471, 1
  %482 = icmp eq i64 %481, %2
  br i1 %482, label %483, label %470, !llvm.loop !164

483:                                              ; preds = %470, %444, %469
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %528

484:                                              ; preds = %5
  %485 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %486 = load i32, ptr %485, align 8, !tbaa !70
  %487 = icmp eq i32 %486, 1
  br i1 %487, label %488, label %508

488:                                              ; preds = %484
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #12
  %489 = icmp sgt i64 %2, 0
  br i1 %489, label %490, label %507

490:                                              ; preds = %488
  %491 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %492 = load i64, ptr %491, align 8, !tbaa !67
  br label %493

493:                                              ; preds = %490, %493
  %494 = phi i64 [ 0, %490 ], [ %505, %493 ]
  %495 = phi ptr [ %4, %490 ], [ %504, %493 ]
  %496 = phi ptr [ %3, %490 ], [ %503, %493 ]
  %497 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef %496, ptr noundef nonnull %12) #11
  %498 = load double, ptr %12, align 8, !tbaa !79
  %499 = fptrunc double %498 to float
  %500 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %499) #11
  %501 = getelementptr inbounds %struct._PixelPacket, ptr %495, i64 0, i32 2
  store i16 %500, ptr %501, align 2, !tbaa !61
  %502 = getelementptr inbounds %struct._PixelPacket, ptr %495, i64 0, i32 1
  store i16 %500, ptr %502, align 2, !tbaa !62
  store i16 %500, ptr %495, align 2, !tbaa !63
  %503 = getelementptr inbounds i8, ptr %497, i64 %492
  %504 = getelementptr inbounds %struct._PixelPacket, ptr %495, i64 1
  %505 = add nuw nsw i64 %494, 1
  %506 = icmp eq i64 %505, %2
  br i1 %506, label %507, label %493, !llvm.loop !165

507:                                              ; preds = %493, %488
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #12
  br label %528

508:                                              ; preds = %484, %5
  %509 = tail call fastcc i64 @GetQuantumRange(i64 noundef %13) #11
  %510 = icmp sgt i64 %2, 0
  br i1 %510, label %511, label %528

511:                                              ; preds = %508
  %512 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %513

513:                                              ; preds = %511, %513
  %514 = phi i64 [ 0, %511 ], [ %526, %513 ]
  %515 = phi ptr [ %4, %511 ], [ %525, %513 ]
  %516 = phi ptr [ %3, %511 ], [ %524, %513 ]
  %517 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %516, ptr noundef nonnull %6) #11
  %518 = load i32, ptr %6, align 4, !tbaa !77
  %519 = zext i32 %518 to i64
  %520 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %519, i64 noundef %509) #11
  %521 = getelementptr inbounds %struct._PixelPacket, ptr %515, i64 0, i32 2
  store i16 %520, ptr %521, align 2, !tbaa !61
  %522 = getelementptr inbounds %struct._PixelPacket, ptr %515, i64 0, i32 1
  store i16 %520, ptr %522, align 2, !tbaa !62
  store i16 %520, ptr %515, align 2, !tbaa !63
  %523 = load i64, ptr %512, align 8, !tbaa !67
  %524 = getelementptr inbounds i8, ptr %517, i64 %523
  %525 = getelementptr inbounds %struct._PixelPacket, ptr %515, i64 1
  %526 = add nuw nsw i64 %514, 1
  %527 = icmp eq i64 %526, %2
  br i1 %527, label %528, label %513, !llvm.loop !166

528:                                              ; preds = %356, %285, %55, %513, %79, %305, %152, %74, %28, %508, %274, %277, %217, %220, %507, %483, %439, %355, %146
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportGrayAlphaQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2, ptr noalias noundef writeonly %3) unnamed_addr #4 !PGOFuncName !167 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %11 = load i64, ptr %0, align 8, !tbaa !66
  switch i64 %11, label %313 [
    i64 1, label %12
    i64 4, label %77
    i64 8, label %99
    i64 10, label %123
    i64 12, label %148
    i64 16, label %173
    i64 32, label %229
    i64 64, label %283
  ]

12:                                               ; preds = %4
  %13 = icmp sgt i64 %1, 3
  br i1 %13, label %14, label %47

14:                                               ; preds = %12
  %15 = add nsw i64 %1, -3
  br label %16

16:                                               ; preds = %14, %43
  %17 = phi ptr [ %44, %43 ], [ %2, %14 ]
  %18 = phi ptr [ %40, %43 ], [ %3, %14 ]
  %19 = phi i64 [ %45, %43 ], [ %15, %14 ]
  %20 = load i8, ptr %17, align 1, !tbaa !68
  %21 = zext i8 %20 to i32
  %22 = zext i8 %20 to i64
  br label %23

23:                                               ; preds = %16, %23
  %24 = phi ptr [ %18, %16 ], [ %40, %23 ]
  %25 = phi i64 [ 0, %16 ], [ %41, %23 ]
  %26 = trunc i64 %25 to i32
  %27 = xor i32 %26, 7
  %28 = shl nuw nsw i32 1, %27
  %29 = and i32 %28, %21
  %30 = icmp eq i32 %29, 0
  %31 = sext i1 %30 to i16
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 2
  store i16 %31, ptr %32, align 2, !tbaa !61
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 1
  store i16 %31, ptr %33, align 2, !tbaa !62
  store i16 %31, ptr %24, align 2, !tbaa !63
  %34 = sub nuw nsw i64 6, %25
  %35 = shl nuw nsw i64 1, %34
  %36 = and i64 %35, %22
  %37 = icmp eq i64 %36, 0
  %38 = sext i1 %37 to i16
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 0, i32 3
  store i16 %38, ptr %39, align 2, !tbaa !56
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 1
  %41 = add nuw nsw i64 %25, 2
  %42 = icmp ult i64 %25, 6
  br i1 %42, label %23, label %43, !llvm.loop !168

43:                                               ; preds = %23
  %44 = getelementptr inbounds i8, ptr %17, i64 1
  %45 = add nsw i64 %19, -4
  %46 = icmp sgt i64 %19, 4
  br i1 %46, label %16, label %47, !llvm.loop !169

47:                                               ; preds = %43, %12
  %48 = phi ptr [ %3, %12 ], [ %40, %43 ]
  %49 = phi ptr [ %2, %12 ], [ %44, %43 ]
  %50 = and i64 %1, 3
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %339, label %52

52:                                               ; preds = %47
  %53 = sub nuw nsw i64 4, %50
  %54 = load i8, ptr %49, align 1, !tbaa !68
  %55 = zext i8 %54 to i32
  %56 = zext i8 %54 to i64
  br label %57

57:                                               ; preds = %52, %57
  %58 = phi ptr [ %74, %57 ], [ %48, %52 ]
  %59 = phi i64 [ %75, %57 ], [ 3, %52 ]
  %60 = trunc i64 %59 to i32
  %61 = sub i32 7, %60
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %55
  %64 = icmp ne i32 %63, 0
  %65 = sext i1 %64 to i16
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 2
  store i16 %65, ptr %66, align 2, !tbaa !61
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 1
  store i16 %65, ptr %67, align 2, !tbaa !62
  store i16 %65, ptr %58, align 2, !tbaa !63
  %68 = sub nuw nsw i64 6, %59
  %69 = shl nuw nsw i64 1, %68
  %70 = and i64 %69, %56
  %71 = icmp eq i64 %70, 0
  %72 = sext i1 %71 to i16
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 0, i32 3
  store i16 %72, ptr %73, align 2, !tbaa !56
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 1
  %75 = add nsw i64 %59, -2
  %76 = icmp slt i64 %75, %53
  br i1 %76, label %339, label %57, !llvm.loop !170

77:                                               ; preds = %4
  %78 = tail call fastcc i64 @GetQuantumRange(i64 noundef 4) #11
  %79 = icmp sgt i64 %1, 0
  br i1 %79, label %80, label %339

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %95, %80 ], [ %2, %77 ]
  %82 = phi ptr [ %96, %80 ], [ %3, %77 ]
  %83 = phi i64 [ %97, %80 ], [ 0, %77 ]
  %84 = load i8, ptr %81, align 1, !tbaa !68
  %85 = lshr i8 %84, 4
  %86 = zext nneg i8 %85 to i64
  %87 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %86, i64 noundef %78) #11
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 2
  store i16 %87, ptr %88, align 2, !tbaa !61
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 1
  store i16 %87, ptr %89, align 2, !tbaa !62
  store i16 %87, ptr %82, align 2, !tbaa !63
  %90 = and i8 %84, 15
  %91 = zext nneg i8 %90 to i64
  %92 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %91, i64 noundef %78) #11
  %93 = xor i16 %92, -1
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 0, i32 3
  store i16 %93, ptr %94, align 2, !tbaa !56
  %95 = getelementptr inbounds i8, ptr %81, i64 1
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %82, i64 1
  %97 = add nuw nsw i64 %83, 1
  %98 = icmp eq i64 %97, %1
  br i1 %98, label %339, label %80, !llvm.loop !171

99:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  %100 = icmp sgt i64 %1, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %103 = load i64, ptr %102, align 8, !tbaa !67
  br label %104

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %2, %101 ], [ %118, %104 ]
  %106 = phi ptr [ %3, %101 ], [ %119, %104 ]
  %107 = phi i64 [ 0, %101 ], [ %120, %104 ]
  %108 = call fastcc ptr @PushCharPixel(ptr noundef %105, ptr noundef nonnull %6) #11
  %109 = load i8, ptr %6, align 1, !tbaa !68
  %110 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %109) #11
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 2
  store i16 %110, ptr %111, align 2, !tbaa !61
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 1
  store i16 %110, ptr %112, align 2, !tbaa !62
  store i16 %110, ptr %106, align 2, !tbaa !63
  %113 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %108, ptr noundef nonnull %6) #11
  %114 = load i8, ptr %6, align 1, !tbaa !68
  %115 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %114) #11
  %116 = xor i16 %115, -1
  %117 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 0, i32 3
  store i16 %116, ptr %117, align 2, !tbaa !56
  %118 = getelementptr inbounds i8, ptr %113, i64 %103
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 1
  %120 = add nuw nsw i64 %107, 1
  %121 = icmp eq i64 %120, %1
  br i1 %121, label %122, label %104, !llvm.loop !172

122:                                              ; preds = %104, %99
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %339

123:                                              ; preds = %4
  %124 = tail call fastcc i64 @GetQuantumRange(i64 noundef 10) #11
  %125 = icmp sgt i64 %1, 0
  br i1 %125, label %126, label %339

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %128

128:                                              ; preds = %126, %128
  %129 = phi ptr [ %2, %126 ], [ %144, %128 ]
  %130 = phi ptr [ %3, %126 ], [ %145, %128 ]
  %131 = phi i64 [ 0, %126 ], [ %146, %128 ]
  %132 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %129, ptr noundef nonnull %5) #11
  %133 = load i32, ptr %5, align 4, !tbaa !77
  %134 = zext i32 %133 to i64
  %135 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %134, i64 noundef %124) #11
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 2
  store i16 %135, ptr %136, align 2, !tbaa !61
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 1
  store i16 %135, ptr %137, align 2, !tbaa !62
  store i16 %135, ptr %130, align 2, !tbaa !63
  %138 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %132, ptr noundef nonnull %5) #11
  %139 = load i32, ptr %5, align 4, !tbaa !77
  %140 = zext i32 %139 to i64
  %141 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %140, i64 noundef %124) #11
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 0, i32 3
  store i16 %141, ptr %142, align 2, !tbaa !56
  %143 = load i64, ptr %127, align 8, !tbaa !67
  %144 = getelementptr inbounds i8, ptr %138, i64 %143
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 1
  %146 = add nuw nsw i64 %131, 1
  %147 = icmp eq i64 %146, %1
  br i1 %147, label %339, label %128, !llvm.loop !173

148:                                              ; preds = %4
  %149 = tail call fastcc i64 @GetQuantumRange(i64 noundef 12) #11
  %150 = icmp sgt i64 %1, 0
  br i1 %150, label %151, label %339

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %153

153:                                              ; preds = %151, %153
  %154 = phi ptr [ %2, %151 ], [ %169, %153 ]
  %155 = phi ptr [ %3, %151 ], [ %170, %153 ]
  %156 = phi i64 [ 0, %151 ], [ %171, %153 ]
  %157 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %154, ptr noundef nonnull %5) #11
  %158 = load i32, ptr %5, align 4, !tbaa !77
  %159 = zext i32 %158 to i64
  %160 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %159, i64 noundef %149) #11
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 2
  store i16 %160, ptr %161, align 2, !tbaa !61
  %162 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 1
  store i16 %160, ptr %162, align 2, !tbaa !62
  store i16 %160, ptr %155, align 2, !tbaa !63
  %163 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %157, ptr noundef nonnull %5) #11
  %164 = load i32, ptr %5, align 4, !tbaa !77
  %165 = zext i32 %164 to i64
  %166 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %165, i64 noundef %149) #11
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 3
  store i16 %166, ptr %167, align 2, !tbaa !56
  %168 = load i64, ptr %152, align 8, !tbaa !67
  %169 = getelementptr inbounds i8, ptr %163, i64 %168
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 1
  %171 = add nuw nsw i64 %156, 1
  %172 = icmp eq i64 %171, %1
  br i1 %172, label %339, label %153, !llvm.loop !174

173:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  %174 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %175 = load i32, ptr %174, align 8, !tbaa !70
  %176 = icmp eq i32 %175, 1
  %177 = icmp sgt i64 %1, 0
  br i1 %176, label %184, label %178

178:                                              ; preds = %173
  br i1 %177, label %179, label %228

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %181 = load i32, ptr %180, align 8, !tbaa !71
  %182 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %183 = load i64, ptr %182, align 8, !tbaa !67
  br label %212

184:                                              ; preds = %173
  br i1 %177, label %185, label %228

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %187 = load i32, ptr %186, align 8, !tbaa !71
  %188 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %189 = load i64, ptr %188, align 8, !tbaa !67
  br label %190

190:                                              ; preds = %185, %190
  %191 = phi ptr [ %2, %185 ], [ %208, %190 ]
  %192 = phi ptr [ %3, %185 ], [ %209, %190 ]
  %193 = phi i64 [ 0, %185 ], [ %210, %190 ]
  %194 = call fastcc ptr @PushShortPixel(i32 noundef %187, ptr noundef %191, ptr noundef nonnull %7) #11
  %195 = load i16, ptr %7, align 2, !tbaa !53
  %196 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %195) #11
  %197 = fmul float %196, 6.553500e+04
  %198 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %197) #11
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %192, i64 0, i32 2
  store i16 %198, ptr %199, align 2, !tbaa !61
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %192, i64 0, i32 1
  store i16 %198, ptr %200, align 2, !tbaa !62
  store i16 %198, ptr %192, align 2, !tbaa !63
  %201 = call fastcc ptr @PushShortPixel(i32 noundef %187, ptr noundef nonnull %194, ptr noundef nonnull %7) #11
  %202 = load i16, ptr %7, align 2, !tbaa !53
  %203 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %202) #11
  %204 = fmul float %203, 6.553500e+04
  %205 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %204) #11
  %206 = xor i16 %205, -1
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %192, i64 0, i32 3
  store i16 %206, ptr %207, align 2, !tbaa !56
  %208 = getelementptr inbounds i8, ptr %201, i64 %189
  %209 = getelementptr inbounds %struct._PixelPacket, ptr %192, i64 1
  %210 = add nuw nsw i64 %193, 1
  %211 = icmp eq i64 %210, %1
  br i1 %211, label %228, label %190, !llvm.loop !175

212:                                              ; preds = %179, %212
  %213 = phi ptr [ %2, %179 ], [ %224, %212 ]
  %214 = phi ptr [ %3, %179 ], [ %225, %212 ]
  %215 = phi i64 [ 0, %179 ], [ %226, %212 ]
  %216 = call fastcc ptr @PushShortPixel(i32 noundef %181, ptr noundef %213, ptr noundef nonnull %7) #11
  %217 = load i16, ptr %7, align 2, !tbaa !53
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 0, i32 2
  store i16 %217, ptr %218, align 2, !tbaa !61
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 0, i32 1
  store i16 %217, ptr %219, align 2, !tbaa !62
  store i16 %217, ptr %214, align 2, !tbaa !63
  %220 = call fastcc ptr @PushShortPixel(i32 noundef %181, ptr noundef nonnull %216, ptr noundef nonnull %7) #11
  %221 = load i16, ptr %7, align 2, !tbaa !53
  %222 = xor i16 %221, -1
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 0, i32 3
  store i16 %222, ptr %223, align 2, !tbaa !56
  %224 = getelementptr inbounds i8, ptr %220, i64 %183
  %225 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 1
  %226 = add nuw nsw i64 %215, 1
  %227 = icmp eq i64 %226, %1
  br i1 %227, label %228, label %212, !llvm.loop !176

228:                                              ; preds = %212, %190, %178, %184
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %339

229:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %230 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %231 = load i32, ptr %230, align 8, !tbaa !70
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %240, label %233

233:                                              ; preds = %229
  %234 = icmp sgt i64 %1, 0
  br i1 %234, label %235, label %282

235:                                              ; preds = %233
  %236 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %237 = load i32, ptr %236, align 8, !tbaa !71
  %238 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %239 = load i64, ptr %238, align 8, !tbaa !67
  br label %264

240:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %241 = icmp sgt i64 %1, 0
  br i1 %241, label %242, label %263

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %244 = load i64, ptr %243, align 8, !tbaa !67
  br label %245

245:                                              ; preds = %242, %245
  %246 = phi ptr [ %2, %242 ], [ %259, %245 ]
  %247 = phi ptr [ %3, %242 ], [ %260, %245 ]
  %248 = phi i64 [ 0, %242 ], [ %261, %245 ]
  %249 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef %246, ptr noundef nonnull %9) #11
  %250 = load float, ptr %9, align 4, !tbaa !74
  %251 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %250) #11
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 2
  store i16 %251, ptr %252, align 2, !tbaa !61
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 1
  store i16 %251, ptr %253, align 2, !tbaa !62
  store i16 %251, ptr %247, align 2, !tbaa !63
  %254 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %249, ptr noundef nonnull %9) #11
  %255 = load float, ptr %9, align 4, !tbaa !74
  %256 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %255) #11
  %257 = xor i16 %256, -1
  %258 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 3
  store i16 %257, ptr %258, align 2, !tbaa !56
  %259 = getelementptr inbounds i8, ptr %254, i64 %244
  %260 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 1
  %261 = add nuw nsw i64 %248, 1
  %262 = icmp eq i64 %261, %1
  br i1 %262, label %263, label %245, !llvm.loop !177

263:                                              ; preds = %245, %240
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %282

264:                                              ; preds = %235, %264
  %265 = phi ptr [ %2, %235 ], [ %278, %264 ]
  %266 = phi ptr [ %3, %235 ], [ %279, %264 ]
  %267 = phi i64 [ 0, %235 ], [ %280, %264 ]
  %268 = call fastcc ptr @PushLongPixel(i32 noundef %237, ptr noundef %265, ptr noundef nonnull %8) #11
  %269 = load i32, ptr %8, align 4, !tbaa !77
  %270 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %269) #11
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %266, i64 0, i32 2
  store i16 %270, ptr %271, align 2, !tbaa !61
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %266, i64 0, i32 1
  store i16 %270, ptr %272, align 2, !tbaa !62
  store i16 %270, ptr %266, align 2, !tbaa !63
  %273 = call fastcc ptr @PushLongPixel(i32 noundef %237, ptr noundef nonnull %268, ptr noundef nonnull %8) #11
  %274 = load i32, ptr %8, align 4, !tbaa !77
  %275 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %274) #11
  %276 = xor i16 %275, -1
  %277 = getelementptr inbounds %struct._PixelPacket, ptr %266, i64 0, i32 3
  store i16 %276, ptr %277, align 2, !tbaa !56
  %278 = getelementptr inbounds i8, ptr %273, i64 %239
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %266, i64 1
  %280 = add nuw nsw i64 %267, 1
  %281 = icmp eq i64 %280, %1
  br i1 %281, label %282, label %264, !llvm.loop !178

282:                                              ; preds = %264, %233, %263
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %339

283:                                              ; preds = %4
  %284 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %285 = load i32, ptr %284, align 8, !tbaa !70
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %313

287:                                              ; preds = %283
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %288 = icmp sgt i64 %1, 0
  br i1 %288, label %289, label %312

289:                                              ; preds = %287
  %290 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %291 = load i64, ptr %290, align 8, !tbaa !67
  br label %292

292:                                              ; preds = %289, %292
  %293 = phi ptr [ %2, %289 ], [ %308, %292 ]
  %294 = phi ptr [ %3, %289 ], [ %309, %292 ]
  %295 = phi i64 [ 0, %289 ], [ %310, %292 ]
  %296 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef %293, ptr noundef nonnull %10) #11
  %297 = load double, ptr %10, align 8, !tbaa !79
  %298 = fptrunc double %297 to float
  %299 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %298) #11
  %300 = getelementptr inbounds %struct._PixelPacket, ptr %294, i64 0, i32 2
  store i16 %299, ptr %300, align 2, !tbaa !61
  %301 = getelementptr inbounds %struct._PixelPacket, ptr %294, i64 0, i32 1
  store i16 %299, ptr %301, align 2, !tbaa !62
  store i16 %299, ptr %294, align 2, !tbaa !63
  %302 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %296, ptr noundef nonnull %10) #11
  %303 = load double, ptr %10, align 8, !tbaa !79
  %304 = fptrunc double %303 to float
  %305 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %304) #11
  %306 = xor i16 %305, -1
  %307 = getelementptr inbounds %struct._PixelPacket, ptr %294, i64 0, i32 3
  store i16 %306, ptr %307, align 2, !tbaa !56
  %308 = getelementptr inbounds i8, ptr %302, i64 %291
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %294, i64 1
  %310 = add nuw nsw i64 %295, 1
  %311 = icmp eq i64 %310, %1
  br i1 %311, label %312, label %292, !llvm.loop !179

312:                                              ; preds = %292, %287
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %339

313:                                              ; preds = %283, %4
  %314 = tail call fastcc i64 @GetQuantumRange(i64 noundef %11) #11
  %315 = icmp sgt i64 %1, 0
  br i1 %315, label %316, label %339

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %318

318:                                              ; preds = %316, %318
  %319 = phi ptr [ %2, %316 ], [ %335, %318 ]
  %320 = phi ptr [ %3, %316 ], [ %336, %318 ]
  %321 = phi i64 [ 0, %316 ], [ %337, %318 ]
  %322 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %319, ptr noundef nonnull %5) #11
  %323 = load i32, ptr %5, align 4, !tbaa !77
  %324 = zext i32 %323 to i64
  %325 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %324, i64 noundef %314) #11
  %326 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 0, i32 2
  store i16 %325, ptr %326, align 2, !tbaa !61
  %327 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 0, i32 1
  store i16 %325, ptr %327, align 2, !tbaa !62
  store i16 %325, ptr %320, align 2, !tbaa !63
  %328 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %322, ptr noundef nonnull %5) #11
  %329 = load i32, ptr %5, align 4, !tbaa !77
  %330 = zext i32 %329 to i64
  %331 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %330, i64 noundef %314) #11
  %332 = xor i16 %331, -1
  %333 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 0, i32 3
  store i16 %332, ptr %333, align 2, !tbaa !56
  %334 = load i64, ptr %317, align 8, !tbaa !67
  %335 = getelementptr inbounds i8, ptr %328, i64 %334
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 1
  %337 = add nuw nsw i64 %321, 1
  %338 = icmp eq i64 %337, %1
  br i1 %338, label %339, label %318, !llvm.loop !180

339:                                              ; preds = %153, %128, %80, %57, %318, %148, %123, %77, %313, %47, %312, %282, %228, %122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportGreenQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2, ptr noalias nocapture noundef writeonly %3) unnamed_addr #4 !PGOFuncName !181 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %11 = load i64, ptr %0, align 8, !tbaa !66
  %12 = add i64 %11, -8
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 61)
  switch i64 %13, label %140 [
    i64 0, label %14
    i64 1, label %32
    i64 3, label %75
    i64 7, label %117
  ]

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  %15 = icmp sgt i64 %1, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %18 = load i64, ptr %17, align 8, !tbaa !67
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %2, %16 ], [ %27, %19 ]
  %21 = phi i64 [ 0, %16 ], [ %29, %19 ]
  %22 = phi ptr [ %3, %16 ], [ %28, %19 ]
  %23 = call fastcc ptr @PushCharPixel(ptr noundef %20, ptr noundef nonnull %6) #11
  %24 = load i8, ptr %6, align 1, !tbaa !68
  %25 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %24) #11
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 0, i32 1
  store i16 %25, ptr %26, align 2, !tbaa !62
  %27 = getelementptr inbounds i8, ptr %23, i64 %18
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 1
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, %1
  br i1 %30, label %31, label %19, !llvm.loop !182

31:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %159

32:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  %33 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !70
  %35 = icmp eq i32 %34, 1
  %36 = icmp sgt i64 %1, 0
  br i1 %35, label %43, label %37

37:                                               ; preds = %32
  br i1 %36, label %38, label %74

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %40 = load i32, ptr %39, align 8, !tbaa !71
  %41 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %42 = load i64, ptr %41, align 8, !tbaa !67
  br label %63

43:                                               ; preds = %32
  br i1 %36, label %44, label %74

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %46 = load i32, ptr %45, align 8, !tbaa !71
  %47 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %48 = load i64, ptr %47, align 8, !tbaa !67
  br label %49

49:                                               ; preds = %44, %49
  %50 = phi ptr [ %2, %44 ], [ %59, %49 ]
  %51 = phi i64 [ 0, %44 ], [ %61, %49 ]
  %52 = phi ptr [ %3, %44 ], [ %60, %49 ]
  %53 = call fastcc ptr @PushShortPixel(i32 noundef %46, ptr noundef %50, ptr noundef nonnull %7) #11
  %54 = load i16, ptr %7, align 2, !tbaa !53
  %55 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %54) #11
  %56 = fmul float %55, 6.553500e+04
  %57 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %56) #11
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %52, i64 0, i32 1
  store i16 %57, ptr %58, align 2, !tbaa !62
  %59 = getelementptr inbounds i8, ptr %53, i64 %48
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %52, i64 1
  %61 = add nuw nsw i64 %51, 1
  %62 = icmp eq i64 %61, %1
  br i1 %62, label %74, label %49, !llvm.loop !183

63:                                               ; preds = %38, %63
  %64 = phi ptr [ %2, %38 ], [ %70, %63 ]
  %65 = phi i64 [ 0, %38 ], [ %72, %63 ]
  %66 = phi ptr [ %3, %38 ], [ %71, %63 ]
  %67 = call fastcc ptr @PushShortPixel(i32 noundef %40, ptr noundef %64, ptr noundef nonnull %7) #11
  %68 = load i16, ptr %7, align 2, !tbaa !53
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 1
  store i16 %68, ptr %69, align 2, !tbaa !62
  %70 = getelementptr inbounds i8, ptr %67, i64 %42
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %72 = add nuw nsw i64 %65, 1
  %73 = icmp eq i64 %72, %1
  br i1 %73, label %74, label %63, !llvm.loop !184

74:                                               ; preds = %63, %49, %37, %43
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %159

75:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %76 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !70
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = icmp sgt i64 %1, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %83 = load i32, ptr %82, align 8, !tbaa !71
  %84 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %85 = load i64, ptr %84, align 8, !tbaa !67
  br label %104

86:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %87 = icmp sgt i64 %1, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %90 = load i64, ptr %89, align 8, !tbaa !67
  br label %91

91:                                               ; preds = %88, %91
  %92 = phi ptr [ %2, %88 ], [ %99, %91 ]
  %93 = phi i64 [ 0, %88 ], [ %101, %91 ]
  %94 = phi ptr [ %3, %88 ], [ %100, %91 ]
  %95 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef %92, ptr noundef nonnull %9) #11
  %96 = load float, ptr %9, align 4, !tbaa !74
  %97 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %96) #11
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 1
  store i16 %97, ptr %98, align 2, !tbaa !62
  %99 = getelementptr inbounds i8, ptr %95, i64 %90
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %101 = add nuw nsw i64 %93, 1
  %102 = icmp eq i64 %101, %1
  br i1 %102, label %103, label %91, !llvm.loop !185

103:                                              ; preds = %91, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %116

104:                                              ; preds = %81, %104
  %105 = phi ptr [ %2, %81 ], [ %112, %104 ]
  %106 = phi i64 [ 0, %81 ], [ %114, %104 ]
  %107 = phi ptr [ %3, %81 ], [ %113, %104 ]
  %108 = call fastcc ptr @PushLongPixel(i32 noundef %83, ptr noundef %105, ptr noundef nonnull %8) #11
  %109 = load i32, ptr %8, align 4, !tbaa !77
  %110 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %109) #11
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 1
  store i16 %110, ptr %111, align 2, !tbaa !62
  %112 = getelementptr inbounds i8, ptr %108, i64 %85
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 1
  %114 = add nuw nsw i64 %106, 1
  %115 = icmp eq i64 %114, %1
  br i1 %115, label %116, label %104, !llvm.loop !186

116:                                              ; preds = %104, %79, %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %159

117:                                              ; preds = %4
  %118 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !70
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %122 = icmp sgt i64 %1, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %125 = load i64, ptr %124, align 8, !tbaa !67
  br label %126

126:                                              ; preds = %123, %126
  %127 = phi ptr [ %2, %123 ], [ %135, %126 ]
  %128 = phi i64 [ 0, %123 ], [ %137, %126 ]
  %129 = phi ptr [ %3, %123 ], [ %136, %126 ]
  %130 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef %127, ptr noundef nonnull %10) #11
  %131 = load double, ptr %10, align 8, !tbaa !79
  %132 = fptrunc double %131 to float
  %133 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %132) #11
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 1
  store i16 %133, ptr %134, align 2, !tbaa !62
  %135 = getelementptr inbounds i8, ptr %130, i64 %125
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %137 = add nuw nsw i64 %128, 1
  %138 = icmp eq i64 %137, %1
  br i1 %138, label %139, label %126, !llvm.loop !187

139:                                              ; preds = %126, %121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %159

140:                                              ; preds = %117, %4
  %141 = tail call fastcc i64 @GetQuantumRange(i64 noundef %11) #11
  %142 = icmp sgt i64 %1, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %145

145:                                              ; preds = %143, %145
  %146 = phi ptr [ %2, %143 ], [ %155, %145 ]
  %147 = phi i64 [ 0, %143 ], [ %157, %145 ]
  %148 = phi ptr [ %3, %143 ], [ %156, %145 ]
  %149 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %146, ptr noundef nonnull %5) #11
  %150 = load i32, ptr %5, align 4, !tbaa !77
  %151 = zext i32 %150 to i64
  %152 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %151, i64 noundef %141) #11
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %148, i64 0, i32 1
  store i16 %152, ptr %153, align 2, !tbaa !62
  %154 = load i64, ptr %144, align 8, !tbaa !67
  %155 = getelementptr inbounds i8, ptr %149, i64 %154
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %148, i64 1
  %157 = add nuw nsw i64 %147, 1
  %158 = icmp eq i64 %157, %1
  br i1 %158, label %159, label %145, !llvm.loop !188

159:                                              ; preds = %145, %140, %139, %116, %74, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportIndexQuantum(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias noundef writeonly %4, ptr noalias noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !189 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %15 = load i32, ptr %0, align 8, !tbaa !190
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2310, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #9
  br label %579

20:                                               ; preds = %7
  store i32 0, ptr %8, align 4, !tbaa !77
  %21 = load i64, ptr %1, align 8, !tbaa !66
  switch i64 %21, label %529 [
    i64 1, label %28
    i64 4, label %22
    i64 8, label %237
    i64 16, label %282
    i64 32, label %381
    i64 64, label %478
  ]

22:                                               ; preds = %20
  %23 = add nsw i64 %2, -1
  %24 = icmp sgt i64 %2, 1
  br i1 %24, label %25, label %153

25:                                               ; preds = %22
  %26 = icmp eq ptr %5, null
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %162

28:                                               ; preds = %20
  %29 = add nsw i64 %2, -7
  %30 = icmp sgt i64 %2, 7
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !147
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq ptr %5, null
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %37

37:                                               ; preds = %31, %102
  %38 = phi i64 [ 0, %31 ], [ %104, %102 ]
  %39 = phi ptr [ %3, %31 ], [ %103, %102 ]
  %40 = phi ptr [ %4, %31 ], [ %99, %102 ]
  %41 = getelementptr inbounds i16, ptr %5, i64 %38
  br label %55

42:                                               ; preds = %102, %28
  %43 = phi ptr [ %4, %28 ], [ %99, %102 ]
  %44 = phi ptr [ %3, %28 ], [ %103, %102 ]
  %45 = phi i64 [ 0, %28 ], [ %104, %102 ]
  %46 = and i64 %2, 7
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %573, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !147
  %51 = icmp eq i32 %50, 0
  %52 = icmp eq ptr %5, null
  %53 = getelementptr inbounds i16, ptr %5, i64 %45
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %106

55:                                               ; preds = %37, %93
  %56 = phi i64 [ 0, %37 ], [ %100, %93 ]
  %57 = phi ptr [ %40, %37 ], [ %99, %93 ]
  br i1 %35, label %58, label %64

58:                                               ; preds = %55
  %59 = load ptr, ptr %36, align 8, !tbaa !191
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 0, i32 2
  %61 = load i16, ptr %60, align 2, !tbaa !61
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 2
  store i16 %61, ptr %62, align 2, !tbaa !61
  %63 = load <2 x i16>, ptr %59, align 2, !tbaa !53
  store <2 x i16> %63, ptr %57, align 2, !tbaa !53
  br label %93

64:                                               ; preds = %55
  %65 = trunc i64 %56 to i32
  %66 = xor i32 %65, 7
  %67 = shl nuw nsw i32 1, %66
  %68 = load i8, ptr %39, align 1, !tbaa !68
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  %72 = icmp eq i32 %70, 0
  %73 = select i1 %34, i1 %71, i1 %72
  %74 = getelementptr inbounds i16, ptr %41, i64 %56
  %75 = zext i1 %73 to i64
  %76 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %75, ptr noundef nonnull %8) #11
  store i16 %76, ptr %74, align 2, !tbaa !53
  %77 = load ptr, ptr %36, align 8, !tbaa !191
  %78 = zext i16 %76 to i64
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 %78, i32 2
  %80 = load i16, ptr %79, align 2, !tbaa !61
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 2
  store i16 %80, ptr %81, align 2, !tbaa !61
  %82 = load i16, ptr %74, align 2, !tbaa !53
  %83 = zext i16 %82 to i64
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 %83, i32 1
  %85 = load i16, ptr %84, align 2, !tbaa !62
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 1
  store i16 %85, ptr %86, align 2, !tbaa !62
  %87 = load i16, ptr %74, align 2, !tbaa !53
  %88 = zext i16 %87 to i64
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !63
  store i16 %90, ptr %57, align 2, !tbaa !63
  %91 = load i16, ptr %74, align 2, !tbaa !53
  %92 = zext i16 %91 to i64
  br label %93

93:                                               ; preds = %58, %64
  %94 = phi ptr [ %77, %64 ], [ %59, %58 ]
  %95 = phi i64 [ %92, %64 ], [ 0, %58 ]
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 %95, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !56
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 0, i32 3
  store i16 %97, ptr %98, align 2, !tbaa !56
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %57, i64 1
  %100 = add nuw nsw i64 %56, 1
  %101 = icmp eq i64 %100, 8
  br i1 %101, label %102, label %55, !llvm.loop !192

102:                                              ; preds = %93
  %103 = getelementptr inbounds i8, ptr %39, i64 1
  %104 = add nuw nsw i64 %38, 8
  %105 = icmp slt i64 %104, %29
  br i1 %105, label %37, label %42, !llvm.loop !193

106:                                              ; preds = %48, %144
  %107 = phi i64 [ 0, %48 ], [ %151, %144 ]
  %108 = phi ptr [ %43, %48 ], [ %150, %144 ]
  br i1 %52, label %109, label %115

109:                                              ; preds = %106
  %110 = load ptr, ptr %54, align 8, !tbaa !191
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %110, i64 0, i32 2
  %112 = load i16, ptr %111, align 2, !tbaa !61
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  store i16 %112, ptr %113, align 2, !tbaa !61
  %114 = load <2 x i16>, ptr %110, align 2, !tbaa !53
  store <2 x i16> %114, ptr %108, align 2, !tbaa !53
  br label %144

115:                                              ; preds = %106
  %116 = trunc i64 %107 to i32
  %117 = sub nuw nsw i32 7, %116
  %118 = shl nuw nsw i32 1, %117
  %119 = load i8, ptr %44, align 1, !tbaa !68
  %120 = zext i8 %119 to i32
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  %123 = icmp eq i32 %121, 0
  %124 = select i1 %51, i1 %122, i1 %123
  %125 = getelementptr inbounds i16, ptr %53, i64 %107
  %126 = zext i1 %124 to i64
  %127 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %126, ptr noundef nonnull %8) #11
  store i16 %127, ptr %125, align 2, !tbaa !53
  %128 = load ptr, ptr %54, align 8, !tbaa !191
  %129 = zext i16 %127 to i64
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 %129, i32 2
  %131 = load i16, ptr %130, align 2, !tbaa !61
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 2
  store i16 %131, ptr %132, align 2, !tbaa !61
  %133 = load i16, ptr %125, align 2, !tbaa !53
  %134 = zext i16 %133 to i64
  %135 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 %134, i32 1
  %136 = load i16, ptr %135, align 2, !tbaa !62
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 1
  store i16 %136, ptr %137, align 2, !tbaa !62
  %138 = load i16, ptr %125, align 2, !tbaa !53
  %139 = zext i16 %138 to i64
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 %139
  %141 = load i16, ptr %140, align 2, !tbaa !63
  store i16 %141, ptr %108, align 2, !tbaa !63
  %142 = load i16, ptr %125, align 2, !tbaa !53
  %143 = zext i16 %142 to i64
  br label %144

144:                                              ; preds = %109, %115
  %145 = phi ptr [ %128, %115 ], [ %110, %109 ]
  %146 = phi i64 [ %143, %115 ], [ 0, %109 ]
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %145, i64 %146, i32 3
  %148 = load i16, ptr %147, align 2, !tbaa !56
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 0, i32 3
  store i16 %148, ptr %149, align 2, !tbaa !56
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %108, i64 1
  %151 = add nuw nsw i64 %107, 1
  %152 = icmp eq i64 %151, %46
  br i1 %152, label %573, label %106, !llvm.loop !194

153:                                              ; preds = %182, %22
  %154 = phi ptr [ %4, %22 ], [ %206, %182 ]
  %155 = phi ptr [ %3, %22 ], [ %205, %182 ]
  %156 = phi i64 [ 0, %22 ], [ %207, %182 ]
  %157 = and i64 %2, 1
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %573, label %159

159:                                              ; preds = %153
  %160 = icmp eq ptr %5, null
  %161 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br i1 %160, label %209, label %215

162:                                              ; preds = %25, %182
  %163 = phi i64 [ 0, %25 ], [ %207, %182 ]
  %164 = phi ptr [ %3, %25 ], [ %205, %182 ]
  %165 = phi ptr [ %4, %25 ], [ %206, %182 ]
  %166 = getelementptr inbounds i16, ptr %5, i64 %163
  br i1 %26, label %167, label %172

167:                                              ; preds = %162
  %168 = load ptr, ptr %27, align 8, !tbaa !191
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %168, i64 0, i32 2
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %168, i64 0, i32 1
  %171 = load i8, ptr %164, align 1, !tbaa !68
  br label %182

172:                                              ; preds = %162
  %173 = load i8, ptr %164, align 1, !tbaa !68
  %174 = lshr i8 %173, 4
  %175 = zext nneg i8 %174 to i64
  %176 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %175, ptr noundef nonnull %8) #11
  store i16 %176, ptr %166, align 2, !tbaa !53
  %177 = load ptr, ptr %27, align 8, !tbaa !191
  %178 = zext i16 %176 to i64
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %177, i64 %178, i32 2
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %177, i64 %178, i32 1
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %177, i64 %178
  br label %182

182:                                              ; preds = %167, %172
  %183 = phi i8 [ %171, %167 ], [ %173, %172 ]
  %184 = phi ptr [ %169, %167 ], [ %179, %172 ]
  %185 = phi ptr [ %170, %167 ], [ %180, %172 ]
  %186 = phi ptr [ %168, %167 ], [ %181, %172 ]
  %187 = phi ptr [ %168, %167 ], [ %177, %172 ]
  %188 = phi i64 [ 0, %167 ], [ %178, %172 ]
  %189 = load i16, ptr %186, align 2, !tbaa !63
  %190 = load i16, ptr %185, align 2, !tbaa !62
  %191 = load i16, ptr %184, align 2, !tbaa !61
  %192 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 0, i32 2
  store i16 %191, ptr %192, align 2
  %193 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 0, i32 1
  store i16 %190, ptr %193, align 2
  store i16 %189, ptr %165, align 2
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 %188, i32 3
  %195 = load i16, ptr %194, align 2, !tbaa !56
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 0, i32 3
  store i16 %195, ptr %196, align 2, !tbaa !56
  %197 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 1
  %198 = getelementptr inbounds i16, ptr %166, i64 1
  %199 = and i8 %183, 15
  %200 = zext nneg i8 %199 to i64
  %201 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %200, ptr noundef nonnull %8) #11
  store i16 %201, ptr %198, align 2, !tbaa !53
  %202 = zext i16 %201 to i64
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 %202
  %204 = load <4 x i16>, ptr %203, align 2, !tbaa !53
  store <4 x i16> %204, ptr %197, align 2, !tbaa !53
  %205 = getelementptr inbounds i8, ptr %164, i64 1
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %165, i64 2
  %207 = add nuw nsw i64 %163, 2
  %208 = icmp slt i64 %207, %23
  br i1 %208, label %162, label %153, !llvm.loop !195

209:                                              ; preds = %159
  %210 = load ptr, ptr %161, align 8, !tbaa !191
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %210, i64 0, i32 2
  %212 = load i16, ptr %211, align 2, !tbaa !61
  %213 = getelementptr inbounds %struct._PixelPacket, ptr %154, i64 0, i32 2
  store i16 %212, ptr %213, align 2, !tbaa !61
  %214 = load <2 x i16>, ptr %210, align 2, !tbaa !53
  store <2 x i16> %214, ptr %154, align 2, !tbaa !53
  br label %231

215:                                              ; preds = %159
  %216 = getelementptr inbounds i16, ptr %5, i64 %156
  %217 = load i8, ptr %155, align 1, !tbaa !68
  %218 = lshr i8 %217, 4
  %219 = zext nneg i8 %218 to i64
  %220 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %219, ptr noundef nonnull %8) #11
  store i16 %220, ptr %216, align 2, !tbaa !53
  %221 = load ptr, ptr %161, align 8, !tbaa !191
  %222 = zext i16 %220 to i64
  %223 = getelementptr inbounds %struct._PixelPacket, ptr %221, i64 %222, i32 2
  %224 = load i16, ptr %223, align 2, !tbaa !61
  %225 = getelementptr inbounds %struct._PixelPacket, ptr %154, i64 0, i32 2
  store i16 %224, ptr %225, align 2, !tbaa !61
  %226 = load i16, ptr %216, align 2, !tbaa !53
  %227 = zext i16 %226 to i64
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %221, i64 %227
  %229 = load <2 x i16>, ptr %228, align 2, !tbaa !53
  store <2 x i16> %229, ptr %154, align 2, !tbaa !53
  %230 = zext i16 %226 to i64
  br label %231

231:                                              ; preds = %209, %215
  %232 = phi ptr [ %221, %215 ], [ %210, %209 ]
  %233 = phi i64 [ %230, %215 ], [ 0, %209 ]
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %232, i64 %233, i32 3
  %235 = load i16, ptr %234, align 2, !tbaa !56
  %236 = getelementptr inbounds %struct._PixelPacket, ptr %154, i64 0, i32 3
  store i16 %235, ptr %236, align 2, !tbaa !56
  br label %573

237:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  %238 = icmp sgt i64 %2, 0
  br i1 %238, label %239, label %281

239:                                              ; preds = %237
  %240 = icmp eq ptr %5, null
  %241 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %242 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %243 = load i64, ptr %242, align 8, !tbaa !67
  br label %244

244:                                              ; preds = %239, %263
  %245 = phi i64 [ 0, %239 ], [ %279, %263 ]
  %246 = phi ptr [ %3, %239 ], [ %277, %263 ]
  %247 = phi ptr [ %4, %239 ], [ %278, %263 ]
  %248 = call fastcc ptr @PushCharPixel(ptr noundef %246, ptr noundef nonnull %10) #11
  br i1 %240, label %249, label %253

249:                                              ; preds = %244
  %250 = load ptr, ptr %241, align 8, !tbaa !191
  %251 = getelementptr inbounds %struct._PixelPacket, ptr %250, i64 0, i32 2
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %250, i64 0, i32 1
  br label %263

253:                                              ; preds = %244
  %254 = getelementptr inbounds i16, ptr %5, i64 %245
  %255 = load i8, ptr %10, align 1, !tbaa !68
  %256 = zext i8 %255 to i64
  %257 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %256, ptr noundef nonnull %8) #11
  store i16 %257, ptr %254, align 2, !tbaa !53
  %258 = load ptr, ptr %241, align 8, !tbaa !191
  %259 = zext i16 %257 to i64
  %260 = getelementptr inbounds %struct._PixelPacket, ptr %258, i64 %259, i32 2
  %261 = getelementptr inbounds %struct._PixelPacket, ptr %258, i64 %259, i32 1
  %262 = getelementptr inbounds %struct._PixelPacket, ptr %258, i64 %259
  br label %263

263:                                              ; preds = %249, %253
  %264 = phi ptr [ %251, %249 ], [ %260, %253 ]
  %265 = phi ptr [ %252, %249 ], [ %261, %253 ]
  %266 = phi ptr [ %250, %249 ], [ %262, %253 ]
  %267 = phi ptr [ %250, %249 ], [ %258, %253 ]
  %268 = phi i64 [ 0, %249 ], [ %259, %253 ]
  %269 = load i16, ptr %266, align 2, !tbaa !63
  %270 = load i16, ptr %265, align 2, !tbaa !62
  %271 = load i16, ptr %264, align 2, !tbaa !61
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 2
  store i16 %271, ptr %272, align 2
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 1
  store i16 %270, ptr %273, align 2
  store i16 %269, ptr %247, align 2
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %267, i64 %268, i32 3
  %275 = load i16, ptr %274, align 2, !tbaa !56
  %276 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 3
  store i16 %275, ptr %276, align 2, !tbaa !56
  %277 = getelementptr inbounds i8, ptr %248, i64 %243
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 1
  %279 = add nuw nsw i64 %245, 1
  %280 = icmp eq i64 %279, %2
  br i1 %280, label %281, label %244, !llvm.loop !196

281:                                              ; preds = %263, %237
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  br label %573

282:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #12
  %283 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %284 = load i32, ptr %283, align 8, !tbaa !70
  %285 = icmp eq i32 %284, 1
  %286 = icmp sgt i64 %2, 0
  br i1 %285, label %295, label %287

287:                                              ; preds = %282
  br i1 %286, label %288, label %380

288:                                              ; preds = %287
  %289 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %290 = load i32, ptr %289, align 8, !tbaa !71
  %291 = icmp eq ptr %5, null
  %292 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %293 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %294 = load i64, ptr %293, align 8, !tbaa !67
  br label %343

295:                                              ; preds = %282
  br i1 %286, label %296, label %380

296:                                              ; preds = %295
  %297 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %298 = load i32, ptr %297, align 8, !tbaa !71
  %299 = icmp eq ptr %5, null
  %300 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %301 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %302 = load i64, ptr %301, align 8, !tbaa !67
  br label %303

303:                                              ; preds = %296, %325
  %304 = phi i64 [ 0, %296 ], [ %341, %325 ]
  %305 = phi ptr [ %3, %296 ], [ %339, %325 ]
  %306 = phi ptr [ %4, %296 ], [ %340, %325 ]
  %307 = call fastcc ptr @PushShortPixel(i32 noundef %298, ptr noundef %305, ptr noundef nonnull %11) #11
  br i1 %299, label %308, label %312

308:                                              ; preds = %303
  %309 = load ptr, ptr %300, align 8, !tbaa !191
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 0, i32 2
  %311 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 0, i32 1
  br label %325

312:                                              ; preds = %303
  %313 = getelementptr inbounds i16, ptr %5, i64 %304
  %314 = load i16, ptr %11, align 2, !tbaa !53
  %315 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %314) #11
  %316 = fmul float %315, 6.553500e+04
  %317 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %316) #11
  %318 = zext i16 %317 to i64
  %319 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %318, ptr noundef nonnull %8) #11
  store i16 %319, ptr %313, align 2, !tbaa !53
  %320 = load ptr, ptr %300, align 8, !tbaa !191
  %321 = zext i16 %319 to i64
  %322 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 %321, i32 2
  %323 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 %321, i32 1
  %324 = getelementptr inbounds %struct._PixelPacket, ptr %320, i64 %321
  br label %325

325:                                              ; preds = %308, %312
  %326 = phi ptr [ %310, %308 ], [ %322, %312 ]
  %327 = phi ptr [ %311, %308 ], [ %323, %312 ]
  %328 = phi ptr [ %309, %308 ], [ %324, %312 ]
  %329 = phi ptr [ %309, %308 ], [ %320, %312 ]
  %330 = phi i64 [ 0, %308 ], [ %321, %312 ]
  %331 = load i16, ptr %328, align 2, !tbaa !63
  %332 = load i16, ptr %327, align 2, !tbaa !62
  %333 = load i16, ptr %326, align 2, !tbaa !61
  %334 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 0, i32 2
  store i16 %333, ptr %334, align 2
  %335 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 0, i32 1
  store i16 %332, ptr %335, align 2
  store i16 %331, ptr %306, align 2
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %329, i64 %330, i32 3
  %337 = load i16, ptr %336, align 2, !tbaa !56
  %338 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 0, i32 3
  store i16 %337, ptr %338, align 2, !tbaa !56
  %339 = getelementptr inbounds i8, ptr %307, i64 %302
  %340 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 1
  %341 = add nuw nsw i64 %304, 1
  %342 = icmp eq i64 %341, %2
  br i1 %342, label %380, label %303, !llvm.loop !197

343:                                              ; preds = %288, %362
  %344 = phi i64 [ 0, %288 ], [ %378, %362 ]
  %345 = phi ptr [ %3, %288 ], [ %376, %362 ]
  %346 = phi ptr [ %4, %288 ], [ %377, %362 ]
  %347 = call fastcc ptr @PushShortPixel(i32 noundef %290, ptr noundef %345, ptr noundef nonnull %11) #11
  br i1 %291, label %348, label %352

348:                                              ; preds = %343
  %349 = load ptr, ptr %292, align 8, !tbaa !191
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %349, i64 0, i32 2
  %351 = getelementptr inbounds %struct._PixelPacket, ptr %349, i64 0, i32 1
  br label %362

352:                                              ; preds = %343
  %353 = getelementptr inbounds i16, ptr %5, i64 %344
  %354 = load i16, ptr %11, align 2, !tbaa !53
  %355 = zext i16 %354 to i64
  %356 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %355, ptr noundef nonnull %8) #11
  store i16 %356, ptr %353, align 2, !tbaa !53
  %357 = load ptr, ptr %292, align 8, !tbaa !191
  %358 = zext i16 %356 to i64
  %359 = getelementptr inbounds %struct._PixelPacket, ptr %357, i64 %358, i32 2
  %360 = getelementptr inbounds %struct._PixelPacket, ptr %357, i64 %358, i32 1
  %361 = getelementptr inbounds %struct._PixelPacket, ptr %357, i64 %358
  br label %362

362:                                              ; preds = %348, %352
  %363 = phi ptr [ %350, %348 ], [ %359, %352 ]
  %364 = phi ptr [ %351, %348 ], [ %360, %352 ]
  %365 = phi ptr [ %349, %348 ], [ %361, %352 ]
  %366 = phi ptr [ %349, %348 ], [ %357, %352 ]
  %367 = phi i64 [ 0, %348 ], [ %358, %352 ]
  %368 = load i16, ptr %365, align 2, !tbaa !63
  %369 = load i16, ptr %364, align 2, !tbaa !62
  %370 = load i16, ptr %363, align 2, !tbaa !61
  %371 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 0, i32 2
  store i16 %370, ptr %371, align 2
  %372 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 0, i32 1
  store i16 %369, ptr %372, align 2
  store i16 %368, ptr %346, align 2
  %373 = getelementptr inbounds %struct._PixelPacket, ptr %366, i64 %367, i32 3
  %374 = load i16, ptr %373, align 2, !tbaa !56
  %375 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 0, i32 3
  store i16 %374, ptr %375, align 2, !tbaa !56
  %376 = getelementptr inbounds i8, ptr %347, i64 %294
  %377 = getelementptr inbounds %struct._PixelPacket, ptr %346, i64 1
  %378 = add nuw nsw i64 %344, 1
  %379 = icmp eq i64 %378, %2
  br i1 %379, label %380, label %343, !llvm.loop !198

380:                                              ; preds = %362, %325, %287, %295
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  br label %573

381:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  %382 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %383 = load i32, ptr %382, align 8, !tbaa !70
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %394, label %385

385:                                              ; preds = %381
  %386 = icmp sgt i64 %2, 0
  br i1 %386, label %387, label %477

387:                                              ; preds = %385
  %388 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %389 = load i32, ptr %388, align 8, !tbaa !71
  %390 = icmp eq ptr %5, null
  %391 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %392 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %393 = load i64, ptr %392, align 8, !tbaa !67
  br label %440

394:                                              ; preds = %381
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  %395 = icmp sgt i64 %2, 0
  br i1 %395, label %396, label %439

396:                                              ; preds = %394
  %397 = icmp eq ptr %5, null
  %398 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %399 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %400 = load i64, ptr %399, align 8, !tbaa !67
  br label %401

401:                                              ; preds = %396, %421
  %402 = phi i64 [ 0, %396 ], [ %437, %421 ]
  %403 = phi ptr [ %3, %396 ], [ %435, %421 ]
  %404 = phi ptr [ %4, %396 ], [ %436, %421 ]
  %405 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef %403, ptr noundef nonnull %13) #11
  br i1 %397, label %406, label %410

406:                                              ; preds = %401
  %407 = load ptr, ptr %398, align 8, !tbaa !191
  %408 = getelementptr inbounds %struct._PixelPacket, ptr %407, i64 0, i32 2
  %409 = getelementptr inbounds %struct._PixelPacket, ptr %407, i64 0, i32 1
  br label %421

410:                                              ; preds = %401
  %411 = getelementptr inbounds i16, ptr %5, i64 %402
  %412 = load float, ptr %13, align 4, !tbaa !74
  %413 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %412) #11
  %414 = zext i16 %413 to i64
  %415 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %414, ptr noundef nonnull %8) #11
  store i16 %415, ptr %411, align 2, !tbaa !53
  %416 = load ptr, ptr %398, align 8, !tbaa !191
  %417 = zext i16 %415 to i64
  %418 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 %417, i32 2
  %419 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 %417, i32 1
  %420 = getelementptr inbounds %struct._PixelPacket, ptr %416, i64 %417
  br label %421

421:                                              ; preds = %406, %410
  %422 = phi ptr [ %408, %406 ], [ %418, %410 ]
  %423 = phi ptr [ %409, %406 ], [ %419, %410 ]
  %424 = phi ptr [ %407, %406 ], [ %420, %410 ]
  %425 = phi ptr [ %407, %406 ], [ %416, %410 ]
  %426 = phi i64 [ 0, %406 ], [ %417, %410 ]
  %427 = load i16, ptr %424, align 2, !tbaa !63
  %428 = load i16, ptr %423, align 2, !tbaa !62
  %429 = load i16, ptr %422, align 2, !tbaa !61
  %430 = getelementptr inbounds %struct._PixelPacket, ptr %404, i64 0, i32 2
  store i16 %429, ptr %430, align 2
  %431 = getelementptr inbounds %struct._PixelPacket, ptr %404, i64 0, i32 1
  store i16 %428, ptr %431, align 2
  store i16 %427, ptr %404, align 2
  %432 = getelementptr inbounds %struct._PixelPacket, ptr %425, i64 %426, i32 3
  %433 = load i16, ptr %432, align 2, !tbaa !56
  %434 = getelementptr inbounds %struct._PixelPacket, ptr %404, i64 0, i32 3
  store i16 %433, ptr %434, align 2, !tbaa !56
  %435 = getelementptr inbounds i8, ptr %405, i64 %400
  %436 = getelementptr inbounds %struct._PixelPacket, ptr %404, i64 1
  %437 = add nuw nsw i64 %402, 1
  %438 = icmp eq i64 %437, %2
  br i1 %438, label %439, label %401, !llvm.loop !199

439:                                              ; preds = %421, %394
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br label %477

440:                                              ; preds = %387, %459
  %441 = phi i64 [ 0, %387 ], [ %475, %459 ]
  %442 = phi ptr [ %3, %387 ], [ %473, %459 ]
  %443 = phi ptr [ %4, %387 ], [ %474, %459 ]
  %444 = call fastcc ptr @PushLongPixel(i32 noundef %389, ptr noundef %442, ptr noundef nonnull %12) #11
  br i1 %390, label %445, label %449

445:                                              ; preds = %440
  %446 = load ptr, ptr %391, align 8, !tbaa !191
  %447 = getelementptr inbounds %struct._PixelPacket, ptr %446, i64 0, i32 2
  %448 = getelementptr inbounds %struct._PixelPacket, ptr %446, i64 0, i32 1
  br label %459

449:                                              ; preds = %440
  %450 = getelementptr inbounds i16, ptr %5, i64 %441
  %451 = load i32, ptr %12, align 4, !tbaa !77
  %452 = zext i32 %451 to i64
  %453 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %452, ptr noundef nonnull %8) #11
  store i16 %453, ptr %450, align 2, !tbaa !53
  %454 = load ptr, ptr %391, align 8, !tbaa !191
  %455 = zext i16 %453 to i64
  %456 = getelementptr inbounds %struct._PixelPacket, ptr %454, i64 %455, i32 2
  %457 = getelementptr inbounds %struct._PixelPacket, ptr %454, i64 %455, i32 1
  %458 = getelementptr inbounds %struct._PixelPacket, ptr %454, i64 %455
  br label %459

459:                                              ; preds = %445, %449
  %460 = phi ptr [ %447, %445 ], [ %456, %449 ]
  %461 = phi ptr [ %448, %445 ], [ %457, %449 ]
  %462 = phi ptr [ %446, %445 ], [ %458, %449 ]
  %463 = phi ptr [ %446, %445 ], [ %454, %449 ]
  %464 = phi i64 [ 0, %445 ], [ %455, %449 ]
  %465 = load i16, ptr %462, align 2, !tbaa !63
  %466 = load i16, ptr %461, align 2, !tbaa !62
  %467 = load i16, ptr %460, align 2, !tbaa !61
  %468 = getelementptr inbounds %struct._PixelPacket, ptr %443, i64 0, i32 2
  store i16 %467, ptr %468, align 2
  %469 = getelementptr inbounds %struct._PixelPacket, ptr %443, i64 0, i32 1
  store i16 %466, ptr %469, align 2
  store i16 %465, ptr %443, align 2
  %470 = getelementptr inbounds %struct._PixelPacket, ptr %463, i64 %464, i32 3
  %471 = load i16, ptr %470, align 2, !tbaa !56
  %472 = getelementptr inbounds %struct._PixelPacket, ptr %443, i64 0, i32 3
  store i16 %471, ptr %472, align 2, !tbaa !56
  %473 = getelementptr inbounds i8, ptr %444, i64 %393
  %474 = getelementptr inbounds %struct._PixelPacket, ptr %443, i64 1
  %475 = add nuw nsw i64 %441, 1
  %476 = icmp eq i64 %475, %2
  br i1 %476, label %477, label %440, !llvm.loop !200

477:                                              ; preds = %459, %385, %439
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %573

478:                                              ; preds = %20
  %479 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %480 = load i32, ptr %479, align 8, !tbaa !70
  %481 = icmp eq i32 %480, 1
  br i1 %481, label %482, label %529

482:                                              ; preds = %478
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  %483 = icmp sgt i64 %2, 0
  br i1 %483, label %484, label %528

484:                                              ; preds = %482
  %485 = icmp eq ptr %5, null
  %486 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %487 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %488 = load i64, ptr %487, align 8, !tbaa !67
  br label %489

489:                                              ; preds = %484, %510
  %490 = phi i64 [ 0, %484 ], [ %526, %510 ]
  %491 = phi ptr [ %3, %484 ], [ %524, %510 ]
  %492 = phi ptr [ %4, %484 ], [ %525, %510 ]
  %493 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef %491, ptr noundef nonnull %14) #11
  br i1 %485, label %494, label %498

494:                                              ; preds = %489
  %495 = load ptr, ptr %486, align 8, !tbaa !191
  %496 = getelementptr inbounds %struct._PixelPacket, ptr %495, i64 0, i32 2
  %497 = getelementptr inbounds %struct._PixelPacket, ptr %495, i64 0, i32 1
  br label %510

498:                                              ; preds = %489
  %499 = getelementptr inbounds i16, ptr %5, i64 %490
  %500 = load double, ptr %14, align 8, !tbaa !79
  %501 = fptrunc double %500 to float
  %502 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %501) #11
  %503 = zext i16 %502 to i64
  %504 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %503, ptr noundef nonnull %8) #11
  store i16 %504, ptr %499, align 2, !tbaa !53
  %505 = load ptr, ptr %486, align 8, !tbaa !191
  %506 = zext i16 %504 to i64
  %507 = getelementptr inbounds %struct._PixelPacket, ptr %505, i64 %506, i32 2
  %508 = getelementptr inbounds %struct._PixelPacket, ptr %505, i64 %506, i32 1
  %509 = getelementptr inbounds %struct._PixelPacket, ptr %505, i64 %506
  br label %510

510:                                              ; preds = %494, %498
  %511 = phi ptr [ %496, %494 ], [ %507, %498 ]
  %512 = phi ptr [ %497, %494 ], [ %508, %498 ]
  %513 = phi ptr [ %495, %494 ], [ %509, %498 ]
  %514 = phi ptr [ %495, %494 ], [ %505, %498 ]
  %515 = phi i64 [ 0, %494 ], [ %506, %498 ]
  %516 = load i16, ptr %513, align 2, !tbaa !63
  %517 = load i16, ptr %512, align 2, !tbaa !62
  %518 = load i16, ptr %511, align 2, !tbaa !61
  %519 = getelementptr inbounds %struct._PixelPacket, ptr %492, i64 0, i32 2
  store i16 %518, ptr %519, align 2
  %520 = getelementptr inbounds %struct._PixelPacket, ptr %492, i64 0, i32 1
  store i16 %517, ptr %520, align 2
  store i16 %516, ptr %492, align 2
  %521 = getelementptr inbounds %struct._PixelPacket, ptr %514, i64 %515, i32 3
  %522 = load i16, ptr %521, align 2, !tbaa !56
  %523 = getelementptr inbounds %struct._PixelPacket, ptr %492, i64 0, i32 3
  store i16 %522, ptr %523, align 2, !tbaa !56
  %524 = getelementptr inbounds i8, ptr %493, i64 %488
  %525 = getelementptr inbounds %struct._PixelPacket, ptr %492, i64 1
  %526 = add nuw nsw i64 %490, 1
  %527 = icmp eq i64 %526, %2
  br i1 %527, label %528, label %489, !llvm.loop !201

528:                                              ; preds = %510, %482
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  br label %573

529:                                              ; preds = %478, %20
  %530 = icmp sgt i64 %2, 0
  br i1 %530, label %531, label %573

531:                                              ; preds = %529
  %532 = icmp eq ptr %5, null
  %533 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %534 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %535

535:                                              ; preds = %531, %554
  %536 = phi i64 [ 0, %531 ], [ %571, %554 ]
  %537 = phi ptr [ %3, %531 ], [ %569, %554 ]
  %538 = phi ptr [ %4, %531 ], [ %570, %554 ]
  %539 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %537, ptr noundef nonnull %9) #11
  br i1 %532, label %540, label %544

540:                                              ; preds = %535
  %541 = load ptr, ptr %533, align 8, !tbaa !191
  %542 = getelementptr inbounds %struct._PixelPacket, ptr %541, i64 0, i32 2
  %543 = getelementptr inbounds %struct._PixelPacket, ptr %541, i64 0, i32 1
  br label %554

544:                                              ; preds = %535
  %545 = getelementptr inbounds i16, ptr %5, i64 %536
  %546 = load i32, ptr %9, align 4, !tbaa !77
  %547 = zext i32 %546 to i64
  %548 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %547, ptr noundef nonnull %8) #11
  store i16 %548, ptr %545, align 2, !tbaa !53
  %549 = load ptr, ptr %533, align 8, !tbaa !191
  %550 = zext i16 %548 to i64
  %551 = getelementptr inbounds %struct._PixelPacket, ptr %549, i64 %550, i32 2
  %552 = getelementptr inbounds %struct._PixelPacket, ptr %549, i64 %550, i32 1
  %553 = getelementptr inbounds %struct._PixelPacket, ptr %549, i64 %550
  br label %554

554:                                              ; preds = %540, %544
  %555 = phi ptr [ %542, %540 ], [ %551, %544 ]
  %556 = phi ptr [ %543, %540 ], [ %552, %544 ]
  %557 = phi ptr [ %541, %540 ], [ %553, %544 ]
  %558 = phi ptr [ %541, %540 ], [ %549, %544 ]
  %559 = phi i64 [ 0, %540 ], [ %550, %544 ]
  %560 = load i16, ptr %557, align 2, !tbaa !63
  %561 = load i16, ptr %556, align 2, !tbaa !62
  %562 = load i16, ptr %555, align 2, !tbaa !61
  %563 = getelementptr inbounds %struct._PixelPacket, ptr %538, i64 0, i32 2
  store i16 %562, ptr %563, align 2
  %564 = getelementptr inbounds %struct._PixelPacket, ptr %538, i64 0, i32 1
  store i16 %561, ptr %564, align 2
  store i16 %560, ptr %538, align 2
  %565 = getelementptr inbounds %struct._PixelPacket, ptr %558, i64 %559, i32 3
  %566 = load i16, ptr %565, align 2, !tbaa !56
  %567 = getelementptr inbounds %struct._PixelPacket, ptr %538, i64 0, i32 3
  store i16 %566, ptr %567, align 2, !tbaa !56
  %568 = load i64, ptr %534, align 8, !tbaa !67
  %569 = getelementptr inbounds i8, ptr %539, i64 %568
  %570 = getelementptr inbounds %struct._PixelPacket, ptr %538, i64 1
  %571 = add nuw nsw i64 %536, 1
  %572 = icmp eq i64 %571, %2
  br i1 %572, label %573, label %535, !llvm.loop !202

573:                                              ; preds = %144, %554, %231, %153, %42, %529, %528, %477, %380, %281
  %574 = load i32, ptr %8, align 4, !tbaa !77
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %579, label %576

576:                                              ; preds = %573
  %577 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %578 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2492, i32 noundef 425, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %577) #9
  br label %579

579:                                              ; preds = %573, %576, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportIndexAlphaQuantum(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias noundef writeonly %4, ptr noalias noundef writeonly %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !203 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %15 = load i32, ptr %0, align 8, !tbaa !190
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2518, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #9
  br label %525

20:                                               ; preds = %7
  store i32 0, ptr %8, align 4, !tbaa !77
  %21 = load i64, ptr %1, align 8, !tbaa !66
  switch i64 %21, label %469 [
    i64 1, label %22
    i64 4, label %106
    i64 8, label %151
    i64 16, label %200
    i64 32, label %308
    i64 64, label %413
  ]

22:                                               ; preds = %20
  %23 = add nsw i64 %2, -3
  %24 = icmp sgt i64 %2, 3
  br i1 %24, label %25, label %64

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !147
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %25, %61
  %30 = phi i64 [ %23, %25 ], [ %62, %61 ]
  %31 = phi ptr [ %4, %25 ], [ %58, %61 ]
  %32 = getelementptr inbounds i16, ptr %5, i64 %30
  br label %33

33:                                               ; preds = %29, %33
  %34 = phi i64 [ 0, %29 ], [ %59, %33 ]
  %35 = phi ptr [ %31, %29 ], [ %58, %33 ]
  %36 = load i8, ptr %3, align 1, !tbaa !68
  %37 = zext i8 %36 to i32
  %38 = trunc i64 %34 to i32
  %39 = xor i32 %38, 7
  %40 = shl nuw nsw i32 1, %39
  %41 = and i32 %40, %37
  %42 = icmp ne i32 %41, 0
  %43 = icmp eq i32 %41, 0
  %44 = select i1 %28, i1 %42, i1 %43
  %45 = getelementptr inbounds i8, ptr %32, i64 %34
  %46 = zext i1 %44 to i16
  store i16 %46, ptr %45, align 2, !tbaa !53
  %47 = sext i1 %44 to i16
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 2
  store i16 %47, ptr %48, align 2, !tbaa !61
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 1
  store i16 %47, ptr %49, align 2, !tbaa !62
  store i16 %47, ptr %35, align 2, !tbaa !63
  %50 = load i8, ptr %3, align 1, !tbaa !68
  %51 = zext i8 %50 to i64
  %52 = sub nuw nsw i64 6, %34
  %53 = shl nuw nsw i64 1, %52
  %54 = and i64 %53, %51
  %55 = icmp eq i64 %54, 0
  %56 = sext i1 %55 to i16
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 3
  store i16 %56, ptr %57, align 2, !tbaa !56
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %59 = add nuw nsw i64 %34, 2
  %60 = icmp ult i64 %34, 6
  br i1 %60, label %33, label %61, !llvm.loop !204

61:                                               ; preds = %33
  %62 = add nsw i64 %30, -4
  %63 = icmp sgt i64 %30, 4
  br i1 %63, label %29, label %64, !llvm.loop !205

64:                                               ; preds = %61, %22
  %65 = phi ptr [ %4, %22 ], [ %58, %61 ]
  %66 = phi i64 [ %23, %22 ], [ %62, %61 ]
  %67 = and i64 %2, 3
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %519, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !147
  %72 = icmp eq i32 %71, 0
  %73 = icmp eq ptr %5, null
  %74 = getelementptr inbounds i16, ptr %5, i64 %66
  br label %75

75:                                               ; preds = %69, %90
  %76 = phi i64 [ 0, %69 ], [ %104, %90 ]
  %77 = phi ptr [ %65, %69 ], [ %103, %90 ]
  %78 = load i8, ptr %3, align 1, !tbaa !68
  %79 = zext i8 %78 to i32
  %80 = trunc i64 %76 to i32
  %81 = sub i32 7, %80
  %82 = shl nuw nsw i32 1, %81
  %83 = and i32 %82, %79
  %84 = icmp ne i32 %83, 0
  %85 = icmp eq i32 %83, 0
  %86 = select i1 %72, i1 %84, i1 %85
  br i1 %73, label %90, label %87

87:                                               ; preds = %75
  %88 = getelementptr inbounds i8, ptr %74, i64 %76
  %89 = zext i1 %86 to i16
  store i16 %89, ptr %88, align 2, !tbaa !53
  br label %90

90:                                               ; preds = %87, %75
  %91 = sext i1 %86 to i16
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 2
  store i16 %91, ptr %92, align 2, !tbaa !61
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 1
  store i16 %91, ptr %93, align 2, !tbaa !62
  store i16 %91, ptr %77, align 2, !tbaa !63
  %94 = load i8, ptr %3, align 1, !tbaa !68
  %95 = zext i8 %94 to i64
  %96 = sub nuw nsw i64 6, %76
  %97 = and i64 %96, 254
  %98 = shl nuw nsw i64 1, %97
  %99 = and i64 %98, %95
  %100 = icmp eq i64 %99, 0
  %101 = sext i1 %100 to i16
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 0, i32 3
  store i16 %101, ptr %102, align 2, !tbaa !56
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 1
  %104 = add nuw nsw i64 %76, 2
  %105 = icmp ult i64 %104, %67
  br i1 %105, label %75, label %519, !llvm.loop !206

106:                                              ; preds = %20
  %107 = tail call fastcc i64 @GetQuantumRange(i64 noundef 4) #11
  %108 = icmp sgt i64 %2, 0
  br i1 %108, label %109, label %525

109:                                              ; preds = %106
  %110 = icmp eq ptr %5, null
  %111 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %112

112:                                              ; preds = %109, %132
  %113 = phi i64 [ 0, %109 ], [ %149, %132 ]
  %114 = phi ptr [ %3, %109 ], [ %147, %132 ]
  %115 = phi ptr [ %4, %109 ], [ %148, %132 ]
  br i1 %110, label %116, label %121

116:                                              ; preds = %112
  %117 = load ptr, ptr %111, align 8, !tbaa !191
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 2
  %119 = getelementptr inbounds %struct._PixelPacket, ptr %117, i64 0, i32 1
  %120 = load i8, ptr %114, align 1, !tbaa !68
  br label %132

121:                                              ; preds = %112
  %122 = getelementptr inbounds i16, ptr %5, i64 %113
  %123 = load i8, ptr %114, align 1, !tbaa !68
  %124 = lshr i8 %123, 4
  %125 = zext nneg i8 %124 to i64
  %126 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %125, ptr noundef nonnull %8) #11
  store i16 %126, ptr %122, align 2, !tbaa !53
  %127 = load ptr, ptr %111, align 8, !tbaa !191
  %128 = zext i16 %126 to i64
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 %128, i32 2
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 %128, i32 1
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 %128
  br label %132

132:                                              ; preds = %116, %121
  %133 = phi i8 [ %120, %116 ], [ %123, %121 ]
  %134 = phi ptr [ %118, %116 ], [ %129, %121 ]
  %135 = phi ptr [ %119, %116 ], [ %130, %121 ]
  %136 = phi ptr [ %117, %116 ], [ %131, %121 ]
  %137 = load i16, ptr %136, align 2, !tbaa !63
  %138 = load i16, ptr %135, align 2, !tbaa !62
  %139 = load i16, ptr %134, align 2, !tbaa !61
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 2
  store i16 %139, ptr %140, align 2
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 1
  store i16 %138, ptr %141, align 2
  store i16 %137, ptr %115, align 2
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 0, i32 3
  %143 = and i8 %133, 15
  %144 = zext nneg i8 %143 to i64
  %145 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %144, i64 noundef %107) #11
  %146 = xor i16 %145, -1
  store i16 %146, ptr %142, align 2, !tbaa !56
  %147 = getelementptr inbounds i8, ptr %114, i64 1
  %148 = getelementptr inbounds %struct._PixelPacket, ptr %115, i64 1
  %149 = add nuw nsw i64 %113, 1
  %150 = icmp eq i64 %149, %2
  br i1 %150, label %519, label %112, !llvm.loop !207

151:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  %152 = icmp sgt i64 %2, 0
  br i1 %152, label %153, label %199

153:                                              ; preds = %151
  %154 = icmp eq ptr %5, null
  %155 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %156 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %157 = load i64, ptr %156, align 8, !tbaa !67
  br label %158

158:                                              ; preds = %153, %177
  %159 = phi i64 [ 0, %153 ], [ %197, %177 ]
  %160 = phi ptr [ %3, %153 ], [ %195, %177 ]
  %161 = phi ptr [ %4, %153 ], [ %196, %177 ]
  %162 = call fastcc ptr @PushCharPixel(ptr noundef %160, ptr noundef nonnull %10) #11
  br i1 %154, label %163, label %167

163:                                              ; preds = %158
  %164 = load ptr, ptr %155, align 8, !tbaa !191
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %164, i64 0, i32 2
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %164, i64 0, i32 1
  br label %177

167:                                              ; preds = %158
  %168 = getelementptr inbounds i16, ptr %5, i64 %159
  %169 = load i8, ptr %10, align 1, !tbaa !68
  %170 = zext i8 %169 to i64
  %171 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %170, ptr noundef nonnull %8) #11
  store i16 %171, ptr %168, align 2, !tbaa !53
  %172 = load ptr, ptr %155, align 8, !tbaa !191
  %173 = zext i16 %171 to i64
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 %173, i32 2
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 %173, i32 1
  %176 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 %173
  br label %177

177:                                              ; preds = %163, %167
  %178 = phi ptr [ %165, %163 ], [ %174, %167 ]
  %179 = phi ptr [ %166, %163 ], [ %175, %167 ]
  %180 = phi ptr [ %164, %163 ], [ %176, %167 ]
  %181 = phi ptr [ %164, %163 ], [ %172, %167 ]
  %182 = phi i64 [ 0, %163 ], [ %173, %167 ]
  %183 = load i16, ptr %180, align 2, !tbaa !63
  %184 = load i16, ptr %179, align 2, !tbaa !62
  %185 = load i16, ptr %178, align 2, !tbaa !61
  %186 = getelementptr inbounds %struct._PixelPacket, ptr %161, i64 0, i32 2
  store i16 %185, ptr %186, align 2
  %187 = getelementptr inbounds %struct._PixelPacket, ptr %161, i64 0, i32 1
  store i16 %184, ptr %187, align 2
  store i16 %183, ptr %161, align 2
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %181, i64 %182, i32 3
  %189 = load i16, ptr %188, align 2, !tbaa !56
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %161, i64 0, i32 3
  store i16 %189, ptr %190, align 2, !tbaa !56
  %191 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %162, ptr noundef nonnull %10) #11
  %192 = load i8, ptr %10, align 1, !tbaa !68
  %193 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %192) #11
  %194 = xor i16 %193, -1
  store i16 %194, ptr %190, align 2, !tbaa !56
  %195 = getelementptr inbounds i8, ptr %191, i64 %157
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %161, i64 1
  %197 = add nuw nsw i64 %159, 1
  %198 = icmp eq i64 %197, %2
  br i1 %198, label %199, label %158, !llvm.loop !208

199:                                              ; preds = %177, %151
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  br label %519

200:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #12
  %201 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %202 = load i32, ptr %201, align 8, !tbaa !70
  %203 = icmp eq i32 %202, 1
  %204 = icmp sgt i64 %2, 0
  br i1 %203, label %213, label %205

205:                                              ; preds = %200
  br i1 %204, label %206, label %307

206:                                              ; preds = %205
  %207 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %208 = load i32, ptr %207, align 8, !tbaa !71
  %209 = icmp eq ptr %5, null
  %210 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %211 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %212 = load i64, ptr %211, align 8, !tbaa !67
  br label %267

213:                                              ; preds = %200
  br i1 %204, label %214, label %307

214:                                              ; preds = %213
  %215 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %216 = load i32, ptr %215, align 8, !tbaa !71
  %217 = icmp eq ptr %5, null
  %218 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %219 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %220 = load i64, ptr %219, align 8, !tbaa !67
  br label %221

221:                                              ; preds = %214, %243
  %222 = phi i64 [ 0, %214 ], [ %265, %243 ]
  %223 = phi ptr [ %3, %214 ], [ %263, %243 ]
  %224 = phi ptr [ %4, %214 ], [ %264, %243 ]
  %225 = call fastcc ptr @PushShortPixel(i32 noundef %216, ptr noundef %223, ptr noundef nonnull %11) #11
  br i1 %217, label %226, label %230

226:                                              ; preds = %221
  %227 = load ptr, ptr %218, align 8, !tbaa !191
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %227, i64 0, i32 2
  %229 = getelementptr inbounds %struct._PixelPacket, ptr %227, i64 0, i32 1
  br label %243

230:                                              ; preds = %221
  %231 = getelementptr inbounds i16, ptr %5, i64 %222
  %232 = load i16, ptr %11, align 2, !tbaa !53
  %233 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %232) #11
  %234 = fmul float %233, 6.553500e+04
  %235 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %234) #11
  %236 = zext i16 %235 to i64
  %237 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %236, ptr noundef nonnull %8) #11
  store i16 %237, ptr %231, align 2, !tbaa !53
  %238 = load ptr, ptr %218, align 8, !tbaa !191
  %239 = zext i16 %237 to i64
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %238, i64 %239, i32 2
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %238, i64 %239, i32 1
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %238, i64 %239
  br label %243

243:                                              ; preds = %226, %230
  %244 = phi ptr [ %228, %226 ], [ %240, %230 ]
  %245 = phi ptr [ %229, %226 ], [ %241, %230 ]
  %246 = phi ptr [ %227, %226 ], [ %242, %230 ]
  %247 = phi ptr [ %227, %226 ], [ %238, %230 ]
  %248 = phi i64 [ 0, %226 ], [ %239, %230 ]
  %249 = load i16, ptr %246, align 2, !tbaa !63
  %250 = load i16, ptr %245, align 2, !tbaa !62
  %251 = load i16, ptr %244, align 2, !tbaa !61
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 0, i32 2
  store i16 %251, ptr %252, align 2
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 0, i32 1
  store i16 %250, ptr %253, align 2
  store i16 %249, ptr %224, align 2
  %254 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 %248, i32 3
  %255 = load i16, ptr %254, align 2, !tbaa !56
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 0, i32 3
  store i16 %255, ptr %256, align 2, !tbaa !56
  %257 = call fastcc ptr @PushShortPixel(i32 noundef %216, ptr noundef nonnull %225, ptr noundef nonnull %11) #11
  %258 = load i16, ptr %11, align 2, !tbaa !53
  %259 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %258) #11
  %260 = fmul float %259, 6.553500e+04
  %261 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %260) #11
  %262 = xor i16 %261, -1
  store i16 %262, ptr %256, align 2, !tbaa !56
  %263 = getelementptr inbounds i8, ptr %257, i64 %220
  %264 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 1
  %265 = add nuw nsw i64 %222, 1
  %266 = icmp eq i64 %265, %2
  br i1 %266, label %307, label %221, !llvm.loop !209

267:                                              ; preds = %206, %286
  %268 = phi i64 [ 0, %206 ], [ %305, %286 ]
  %269 = phi ptr [ %3, %206 ], [ %303, %286 ]
  %270 = phi ptr [ %4, %206 ], [ %304, %286 ]
  %271 = call fastcc ptr @PushShortPixel(i32 noundef %208, ptr noundef %269, ptr noundef nonnull %11) #11
  br i1 %209, label %272, label %276

272:                                              ; preds = %267
  %273 = load ptr, ptr %210, align 8, !tbaa !191
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %273, i64 0, i32 2
  %275 = getelementptr inbounds %struct._PixelPacket, ptr %273, i64 0, i32 1
  br label %286

276:                                              ; preds = %267
  %277 = getelementptr inbounds i16, ptr %5, i64 %268
  %278 = load i16, ptr %11, align 2, !tbaa !53
  %279 = zext i16 %278 to i64
  %280 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %279, ptr noundef nonnull %8) #11
  store i16 %280, ptr %277, align 2, !tbaa !53
  %281 = load ptr, ptr %210, align 8, !tbaa !191
  %282 = zext i16 %280 to i64
  %283 = getelementptr inbounds %struct._PixelPacket, ptr %281, i64 %282, i32 2
  %284 = getelementptr inbounds %struct._PixelPacket, ptr %281, i64 %282, i32 1
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %281, i64 %282
  br label %286

286:                                              ; preds = %272, %276
  %287 = phi ptr [ %274, %272 ], [ %283, %276 ]
  %288 = phi ptr [ %275, %272 ], [ %284, %276 ]
  %289 = phi ptr [ %273, %272 ], [ %285, %276 ]
  %290 = phi ptr [ %273, %272 ], [ %281, %276 ]
  %291 = phi i64 [ 0, %272 ], [ %282, %276 ]
  %292 = load i16, ptr %289, align 2, !tbaa !63
  %293 = load i16, ptr %288, align 2, !tbaa !62
  %294 = load i16, ptr %287, align 2, !tbaa !61
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %270, i64 0, i32 2
  store i16 %294, ptr %295, align 2
  %296 = getelementptr inbounds %struct._PixelPacket, ptr %270, i64 0, i32 1
  store i16 %293, ptr %296, align 2
  store i16 %292, ptr %270, align 2
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %290, i64 %291, i32 3
  %298 = load i16, ptr %297, align 2, !tbaa !56
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %270, i64 0, i32 3
  store i16 %298, ptr %299, align 2, !tbaa !56
  %300 = call fastcc ptr @PushShortPixel(i32 noundef %208, ptr noundef nonnull %271, ptr noundef nonnull %11) #11
  %301 = load i16, ptr %11, align 2, !tbaa !53
  %302 = xor i16 %301, -1
  store i16 %302, ptr %299, align 2, !tbaa !56
  %303 = getelementptr inbounds i8, ptr %300, i64 %212
  %304 = getelementptr inbounds %struct._PixelPacket, ptr %270, i64 1
  %305 = add nuw nsw i64 %268, 1
  %306 = icmp eq i64 %305, %2
  br i1 %306, label %307, label %267, !llvm.loop !210

307:                                              ; preds = %286, %243, %205, %213
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  br label %519

308:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  %309 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %310 = load i32, ptr %309, align 8, !tbaa !70
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %321, label %312

312:                                              ; preds = %308
  %313 = icmp sgt i64 %2, 0
  br i1 %313, label %314, label %412

314:                                              ; preds = %312
  %315 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  %316 = load i32, ptr %315, align 8, !tbaa !71
  %317 = icmp eq ptr %5, null
  %318 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %319 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %320 = load i64, ptr %319, align 8, !tbaa !67
  br label %371

321:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  %322 = icmp sgt i64 %2, 0
  br i1 %322, label %323, label %370

323:                                              ; preds = %321
  %324 = icmp eq ptr %5, null
  %325 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %326 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %327 = load i64, ptr %326, align 8, !tbaa !67
  br label %328

328:                                              ; preds = %323, %348
  %329 = phi i64 [ 0, %323 ], [ %368, %348 ]
  %330 = phi ptr [ %3, %323 ], [ %366, %348 ]
  %331 = phi ptr [ %4, %323 ], [ %367, %348 ]
  %332 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef %330, ptr noundef nonnull %13) #11
  br i1 %324, label %333, label %337

333:                                              ; preds = %328
  %334 = load ptr, ptr %325, align 8, !tbaa !191
  %335 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 0, i32 2
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %334, i64 0, i32 1
  br label %348

337:                                              ; preds = %328
  %338 = getelementptr inbounds i16, ptr %5, i64 %329
  %339 = load float, ptr %13, align 4, !tbaa !74
  %340 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %339) #11
  %341 = zext i16 %340 to i64
  %342 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %341, ptr noundef nonnull %8) #11
  store i16 %342, ptr %338, align 2, !tbaa !53
  %343 = load ptr, ptr %325, align 8, !tbaa !191
  %344 = zext i16 %342 to i64
  %345 = getelementptr inbounds %struct._PixelPacket, ptr %343, i64 %344, i32 2
  %346 = getelementptr inbounds %struct._PixelPacket, ptr %343, i64 %344, i32 1
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %343, i64 %344
  br label %348

348:                                              ; preds = %333, %337
  %349 = phi ptr [ %335, %333 ], [ %345, %337 ]
  %350 = phi ptr [ %336, %333 ], [ %346, %337 ]
  %351 = phi ptr [ %334, %333 ], [ %347, %337 ]
  %352 = phi ptr [ %334, %333 ], [ %343, %337 ]
  %353 = phi i64 [ 0, %333 ], [ %344, %337 ]
  %354 = load i16, ptr %351, align 2, !tbaa !63
  %355 = load i16, ptr %350, align 2, !tbaa !62
  %356 = load i16, ptr %349, align 2, !tbaa !61
  %357 = getelementptr inbounds %struct._PixelPacket, ptr %331, i64 0, i32 2
  store i16 %356, ptr %357, align 2
  %358 = getelementptr inbounds %struct._PixelPacket, ptr %331, i64 0, i32 1
  store i16 %355, ptr %358, align 2
  store i16 %354, ptr %331, align 2
  %359 = getelementptr inbounds %struct._PixelPacket, ptr %352, i64 %353, i32 3
  %360 = load i16, ptr %359, align 2, !tbaa !56
  %361 = getelementptr inbounds %struct._PixelPacket, ptr %331, i64 0, i32 3
  store i16 %360, ptr %361, align 2, !tbaa !56
  %362 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %1, ptr noundef nonnull %332, ptr noundef nonnull %13) #11
  %363 = load float, ptr %13, align 4, !tbaa !74
  %364 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %363) #11
  %365 = xor i16 %364, -1
  store i16 %365, ptr %361, align 2, !tbaa !56
  %366 = getelementptr inbounds i8, ptr %362, i64 %327
  %367 = getelementptr inbounds %struct._PixelPacket, ptr %331, i64 1
  %368 = add nuw nsw i64 %329, 1
  %369 = icmp eq i64 %368, %2
  br i1 %369, label %370, label %328, !llvm.loop !211

370:                                              ; preds = %348, %321
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br label %412

371:                                              ; preds = %314, %390
  %372 = phi i64 [ 0, %314 ], [ %410, %390 ]
  %373 = phi ptr [ %3, %314 ], [ %408, %390 ]
  %374 = phi ptr [ %4, %314 ], [ %409, %390 ]
  %375 = call fastcc ptr @PushLongPixel(i32 noundef %316, ptr noundef %373, ptr noundef nonnull %12) #11
  br i1 %317, label %376, label %380

376:                                              ; preds = %371
  %377 = load ptr, ptr %318, align 8, !tbaa !191
  %378 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 0, i32 2
  %379 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 0, i32 1
  br label %390

380:                                              ; preds = %371
  %381 = getelementptr inbounds i16, ptr %5, i64 %372
  %382 = load i32, ptr %12, align 4, !tbaa !77
  %383 = zext i32 %382 to i64
  %384 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %383, ptr noundef nonnull %8) #11
  store i16 %384, ptr %381, align 2, !tbaa !53
  %385 = load ptr, ptr %318, align 8, !tbaa !191
  %386 = zext i16 %384 to i64
  %387 = getelementptr inbounds %struct._PixelPacket, ptr %385, i64 %386, i32 2
  %388 = getelementptr inbounds %struct._PixelPacket, ptr %385, i64 %386, i32 1
  %389 = getelementptr inbounds %struct._PixelPacket, ptr %385, i64 %386
  br label %390

390:                                              ; preds = %376, %380
  %391 = phi ptr [ %378, %376 ], [ %387, %380 ]
  %392 = phi ptr [ %379, %376 ], [ %388, %380 ]
  %393 = phi ptr [ %377, %376 ], [ %389, %380 ]
  %394 = phi ptr [ %377, %376 ], [ %385, %380 ]
  %395 = phi i64 [ 0, %376 ], [ %386, %380 ]
  %396 = load i16, ptr %393, align 2, !tbaa !63
  %397 = load i16, ptr %392, align 2, !tbaa !62
  %398 = load i16, ptr %391, align 2, !tbaa !61
  %399 = getelementptr inbounds %struct._PixelPacket, ptr %374, i64 0, i32 2
  store i16 %398, ptr %399, align 2
  %400 = getelementptr inbounds %struct._PixelPacket, ptr %374, i64 0, i32 1
  store i16 %397, ptr %400, align 2
  store i16 %396, ptr %374, align 2
  %401 = getelementptr inbounds %struct._PixelPacket, ptr %394, i64 %395, i32 3
  %402 = load i16, ptr %401, align 2, !tbaa !56
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %374, i64 0, i32 3
  store i16 %402, ptr %403, align 2, !tbaa !56
  %404 = call fastcc ptr @PushLongPixel(i32 noundef %316, ptr noundef nonnull %375, ptr noundef nonnull %12) #11
  %405 = load i32, ptr %12, align 4, !tbaa !77
  %406 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %405) #11
  %407 = xor i16 %406, -1
  store i16 %407, ptr %403, align 2, !tbaa !56
  %408 = getelementptr inbounds i8, ptr %404, i64 %320
  %409 = getelementptr inbounds %struct._PixelPacket, ptr %374, i64 1
  %410 = add nuw nsw i64 %372, 1
  %411 = icmp eq i64 %410, %2
  br i1 %411, label %412, label %371, !llvm.loop !212

412:                                              ; preds = %390, %312, %370
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %519

413:                                              ; preds = %20
  %414 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %415 = load i32, ptr %414, align 8, !tbaa !70
  %416 = icmp eq i32 %415, 1
  br i1 %416, label %417, label %469

417:                                              ; preds = %413
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  %418 = icmp sgt i64 %2, 0
  br i1 %418, label %419, label %468

419:                                              ; preds = %417
  %420 = icmp eq ptr %5, null
  %421 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %422 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %423 = load i64, ptr %422, align 8, !tbaa !67
  br label %424

424:                                              ; preds = %419, %445
  %425 = phi i64 [ 0, %419 ], [ %466, %445 ]
  %426 = phi ptr [ %3, %419 ], [ %464, %445 ]
  %427 = phi ptr [ %4, %419 ], [ %465, %445 ]
  %428 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef %426, ptr noundef nonnull %14) #11
  br i1 %420, label %429, label %433

429:                                              ; preds = %424
  %430 = load ptr, ptr %421, align 8, !tbaa !191
  %431 = getelementptr inbounds %struct._PixelPacket, ptr %430, i64 0, i32 2
  %432 = getelementptr inbounds %struct._PixelPacket, ptr %430, i64 0, i32 1
  br label %445

433:                                              ; preds = %424
  %434 = getelementptr inbounds i16, ptr %5, i64 %425
  %435 = load double, ptr %14, align 8, !tbaa !79
  %436 = fptrunc double %435 to float
  %437 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %436) #11
  %438 = zext i16 %437 to i64
  %439 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %438, ptr noundef nonnull %8) #11
  store i16 %439, ptr %434, align 2, !tbaa !53
  %440 = load ptr, ptr %421, align 8, !tbaa !191
  %441 = zext i16 %439 to i64
  %442 = getelementptr inbounds %struct._PixelPacket, ptr %440, i64 %441, i32 2
  %443 = getelementptr inbounds %struct._PixelPacket, ptr %440, i64 %441, i32 1
  %444 = getelementptr inbounds %struct._PixelPacket, ptr %440, i64 %441
  br label %445

445:                                              ; preds = %429, %433
  %446 = phi ptr [ %431, %429 ], [ %442, %433 ]
  %447 = phi ptr [ %432, %429 ], [ %443, %433 ]
  %448 = phi ptr [ %430, %429 ], [ %444, %433 ]
  %449 = phi ptr [ %430, %429 ], [ %440, %433 ]
  %450 = phi i64 [ 0, %429 ], [ %441, %433 ]
  %451 = load i16, ptr %448, align 2, !tbaa !63
  %452 = load i16, ptr %447, align 2, !tbaa !62
  %453 = load i16, ptr %446, align 2, !tbaa !61
  %454 = getelementptr inbounds %struct._PixelPacket, ptr %427, i64 0, i32 2
  store i16 %453, ptr %454, align 2
  %455 = getelementptr inbounds %struct._PixelPacket, ptr %427, i64 0, i32 1
  store i16 %452, ptr %455, align 2
  store i16 %451, ptr %427, align 2
  %456 = getelementptr inbounds %struct._PixelPacket, ptr %449, i64 %450, i32 3
  %457 = load i16, ptr %456, align 2, !tbaa !56
  %458 = getelementptr inbounds %struct._PixelPacket, ptr %427, i64 0, i32 3
  store i16 %457, ptr %458, align 2, !tbaa !56
  %459 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %1, ptr noundef nonnull %428, ptr noundef nonnull %14) #11
  %460 = load double, ptr %14, align 8, !tbaa !79
  %461 = fptrunc double %460 to float
  %462 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %461) #11
  %463 = xor i16 %462, -1
  store i16 %463, ptr %458, align 2, !tbaa !56
  %464 = getelementptr inbounds i8, ptr %459, i64 %423
  %465 = getelementptr inbounds %struct._PixelPacket, ptr %427, i64 1
  %466 = add nuw nsw i64 %425, 1
  %467 = icmp eq i64 %466, %2
  br i1 %467, label %468, label %424, !llvm.loop !213

468:                                              ; preds = %445, %417
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  br label %519

469:                                              ; preds = %413, %20
  %470 = tail call fastcc i64 @GetQuantumRange(i64 noundef %21) #11
  %471 = icmp sgt i64 %2, 0
  br i1 %471, label %472, label %519

472:                                              ; preds = %469
  %473 = icmp eq ptr %5, null
  %474 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %475 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  br label %476

476:                                              ; preds = %472, %495
  %477 = phi i64 [ 0, %472 ], [ %517, %495 ]
  %478 = phi ptr [ %3, %472 ], [ %515, %495 ]
  %479 = phi ptr [ %4, %472 ], [ %516, %495 ]
  %480 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %478, ptr noundef nonnull %9) #11
  br i1 %473, label %481, label %485

481:                                              ; preds = %476
  %482 = load ptr, ptr %474, align 8, !tbaa !191
  %483 = getelementptr inbounds %struct._PixelPacket, ptr %482, i64 0, i32 2
  %484 = getelementptr inbounds %struct._PixelPacket, ptr %482, i64 0, i32 1
  br label %495

485:                                              ; preds = %476
  %486 = getelementptr inbounds i16, ptr %5, i64 %477
  %487 = load i32, ptr %9, align 4, !tbaa !77
  %488 = zext i32 %487 to i64
  %489 = call fastcc zeroext i16 @PushColormapIndex(ptr noundef nonnull %0, i64 noundef %488, ptr noundef nonnull %8) #11
  store i16 %489, ptr %486, align 2, !tbaa !53
  %490 = load ptr, ptr %474, align 8, !tbaa !191
  %491 = zext i16 %489 to i64
  %492 = getelementptr inbounds %struct._PixelPacket, ptr %490, i64 %491, i32 2
  %493 = getelementptr inbounds %struct._PixelPacket, ptr %490, i64 %491, i32 1
  %494 = getelementptr inbounds %struct._PixelPacket, ptr %490, i64 %491
  br label %495

495:                                              ; preds = %481, %485
  %496 = phi ptr [ %483, %481 ], [ %492, %485 ]
  %497 = phi ptr [ %484, %481 ], [ %493, %485 ]
  %498 = phi ptr [ %482, %481 ], [ %494, %485 ]
  %499 = phi ptr [ %482, %481 ], [ %490, %485 ]
  %500 = phi i64 [ 0, %481 ], [ %491, %485 ]
  %501 = load i16, ptr %498, align 2, !tbaa !63
  %502 = load i16, ptr %497, align 2, !tbaa !62
  %503 = load i16, ptr %496, align 2, !tbaa !61
  %504 = getelementptr inbounds %struct._PixelPacket, ptr %479, i64 0, i32 2
  store i16 %503, ptr %504, align 2
  %505 = getelementptr inbounds %struct._PixelPacket, ptr %479, i64 0, i32 1
  store i16 %502, ptr %505, align 2
  store i16 %501, ptr %479, align 2
  %506 = getelementptr inbounds %struct._PixelPacket, ptr %499, i64 %500, i32 3
  %507 = load i16, ptr %506, align 2, !tbaa !56
  %508 = getelementptr inbounds %struct._PixelPacket, ptr %479, i64 0, i32 3
  store i16 %507, ptr %508, align 2, !tbaa !56
  %509 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %1, ptr noundef %480, ptr noundef nonnull %9) #11
  %510 = load i32, ptr %9, align 4, !tbaa !77
  %511 = zext i32 %510 to i64
  %512 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %511, i64 noundef %470) #11
  %513 = xor i16 %512, -1
  store i16 %513, ptr %508, align 2, !tbaa !56
  %514 = load i64, ptr %475, align 8, !tbaa !67
  %515 = getelementptr inbounds i8, ptr %509, i64 %514
  %516 = getelementptr inbounds %struct._PixelPacket, ptr %479, i64 1
  %517 = add nuw nsw i64 %477, 1
  %518 = icmp eq i64 %517, %2
  br i1 %518, label %519, label %476, !llvm.loop !214

519:                                              ; preds = %132, %90, %495, %469, %64, %468, %412, %307, %199
  %520 = load i32, ptr %8, align 4, !tbaa !77
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %525, label %522

522:                                              ; preds = %519
  %523 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %524 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2711, i32 noundef 425, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef nonnull %523) #9
  br label %525

525:                                              ; preds = %106, %519, %522, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportRedQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2, ptr noalias nocapture noundef writeonly %3) unnamed_addr #4 !PGOFuncName !215 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %11 = load i64, ptr %0, align 8, !tbaa !66
  %12 = add i64 %11, -8
  %13 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 61)
  switch i64 %13, label %140 [
    i64 0, label %14
    i64 1, label %32
    i64 3, label %75
    i64 7, label %117
  ]

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  %15 = icmp sgt i64 %1, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %18 = load i64, ptr %17, align 8, !tbaa !67
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi ptr [ %2, %16 ], [ %27, %19 ]
  %21 = phi i64 [ 0, %16 ], [ %29, %19 ]
  %22 = phi ptr [ %3, %16 ], [ %28, %19 ]
  %23 = call fastcc ptr @PushCharPixel(ptr noundef %20, ptr noundef nonnull %6) #11
  %24 = load i8, ptr %6, align 1, !tbaa !68
  %25 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %24) #11
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 0, i32 2
  store i16 %25, ptr %26, align 2, !tbaa !61
  %27 = getelementptr inbounds i8, ptr %23, i64 %18
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %22, i64 1
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, %1
  br i1 %30, label %31, label %19, !llvm.loop !216

31:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %159

32:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  %33 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !70
  %35 = icmp eq i32 %34, 1
  %36 = icmp sgt i64 %1, 0
  br i1 %35, label %43, label %37

37:                                               ; preds = %32
  br i1 %36, label %38, label %74

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %40 = load i32, ptr %39, align 8, !tbaa !71
  %41 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %42 = load i64, ptr %41, align 8, !tbaa !67
  br label %63

43:                                               ; preds = %32
  br i1 %36, label %44, label %74

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %46 = load i32, ptr %45, align 8, !tbaa !71
  %47 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %48 = load i64, ptr %47, align 8, !tbaa !67
  br label %49

49:                                               ; preds = %44, %49
  %50 = phi ptr [ %2, %44 ], [ %59, %49 ]
  %51 = phi i64 [ 0, %44 ], [ %61, %49 ]
  %52 = phi ptr [ %3, %44 ], [ %60, %49 ]
  %53 = call fastcc ptr @PushShortPixel(i32 noundef %46, ptr noundef %50, ptr noundef nonnull %7) #11
  %54 = load i16, ptr %7, align 2, !tbaa !53
  %55 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %54) #11
  %56 = fmul float %55, 6.553500e+04
  %57 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %56) #11
  %58 = getelementptr inbounds %struct._PixelPacket, ptr %52, i64 0, i32 2
  store i16 %57, ptr %58, align 2, !tbaa !61
  %59 = getelementptr inbounds i8, ptr %53, i64 %48
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %52, i64 1
  %61 = add nuw nsw i64 %51, 1
  %62 = icmp eq i64 %61, %1
  br i1 %62, label %74, label %49, !llvm.loop !217

63:                                               ; preds = %38, %63
  %64 = phi ptr [ %2, %38 ], [ %70, %63 ]
  %65 = phi i64 [ 0, %38 ], [ %72, %63 ]
  %66 = phi ptr [ %3, %38 ], [ %71, %63 ]
  %67 = call fastcc ptr @PushShortPixel(i32 noundef %40, ptr noundef %64, ptr noundef nonnull %7) #11
  %68 = load i16, ptr %7, align 2, !tbaa !53
  %69 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 2
  store i16 %68, ptr %69, align 2, !tbaa !61
  %70 = getelementptr inbounds i8, ptr %67, i64 %42
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 1
  %72 = add nuw nsw i64 %65, 1
  %73 = icmp eq i64 %72, %1
  br i1 %73, label %74, label %63, !llvm.loop !218

74:                                               ; preds = %63, %49, %37, %43
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %159

75:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %76 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !70
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = icmp sgt i64 %1, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %83 = load i32, ptr %82, align 8, !tbaa !71
  %84 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %85 = load i64, ptr %84, align 8, !tbaa !67
  br label %104

86:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %87 = icmp sgt i64 %1, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %90 = load i64, ptr %89, align 8, !tbaa !67
  br label %91

91:                                               ; preds = %88, %91
  %92 = phi ptr [ %2, %88 ], [ %99, %91 ]
  %93 = phi i64 [ 0, %88 ], [ %101, %91 ]
  %94 = phi ptr [ %3, %88 ], [ %100, %91 ]
  %95 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef %92, ptr noundef nonnull %9) #11
  %96 = load float, ptr %9, align 4, !tbaa !74
  %97 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %96) #11
  %98 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 0, i32 2
  store i16 %97, ptr %98, align 2, !tbaa !61
  %99 = getelementptr inbounds i8, ptr %95, i64 %90
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %94, i64 1
  %101 = add nuw nsw i64 %93, 1
  %102 = icmp eq i64 %101, %1
  br i1 %102, label %103, label %91, !llvm.loop !219

103:                                              ; preds = %91, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %116

104:                                              ; preds = %81, %104
  %105 = phi ptr [ %2, %81 ], [ %112, %104 ]
  %106 = phi i64 [ 0, %81 ], [ %114, %104 ]
  %107 = phi ptr [ %3, %81 ], [ %113, %104 ]
  %108 = call fastcc ptr @PushLongPixel(i32 noundef %83, ptr noundef %105, ptr noundef nonnull %8) #11
  %109 = load i32, ptr %8, align 4, !tbaa !77
  %110 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %109) #11
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 0, i32 2
  store i16 %110, ptr %111, align 2, !tbaa !61
  %112 = getelementptr inbounds i8, ptr %108, i64 %85
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 1
  %114 = add nuw nsw i64 %106, 1
  %115 = icmp eq i64 %114, %1
  br i1 %115, label %116, label %104, !llvm.loop !220

116:                                              ; preds = %104, %79, %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %159

117:                                              ; preds = %4
  %118 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !70
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %122 = icmp sgt i64 %1, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %125 = load i64, ptr %124, align 8, !tbaa !67
  br label %126

126:                                              ; preds = %123, %126
  %127 = phi ptr [ %2, %123 ], [ %135, %126 ]
  %128 = phi i64 [ 0, %123 ], [ %137, %126 ]
  %129 = phi ptr [ %3, %123 ], [ %136, %126 ]
  %130 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef %127, ptr noundef nonnull %10) #11
  %131 = load double, ptr %10, align 8, !tbaa !79
  %132 = fptrunc double %131 to float
  %133 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %132) #11
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 2
  store i16 %133, ptr %134, align 2, !tbaa !61
  %135 = getelementptr inbounds i8, ptr %130, i64 %125
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %137 = add nuw nsw i64 %128, 1
  %138 = icmp eq i64 %137, %1
  br i1 %138, label %139, label %126, !llvm.loop !221

139:                                              ; preds = %126, %121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %159

140:                                              ; preds = %117, %4
  %141 = tail call fastcc i64 @GetQuantumRange(i64 noundef %11) #11
  %142 = icmp sgt i64 %1, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  br label %145

145:                                              ; preds = %143, %145
  %146 = phi ptr [ %2, %143 ], [ %155, %145 ]
  %147 = phi i64 [ 0, %143 ], [ %157, %145 ]
  %148 = phi ptr [ %3, %143 ], [ %156, %145 ]
  %149 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %146, ptr noundef nonnull %5) #11
  %150 = load i32, ptr %5, align 4, !tbaa !77
  %151 = zext i32 %150 to i64
  %152 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %151, i64 noundef %141) #11
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %148, i64 0, i32 2
  store i16 %152, ptr %153, align 2, !tbaa !61
  %154 = load i64, ptr %144, align 8, !tbaa !67
  %155 = getelementptr inbounds i8, ptr %149, i64 %154
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %148, i64 1
  %157 = add nuw nsw i64 %147, 1
  %158 = icmp eq i64 %157, %1
  br i1 %158, label %159, label %145, !llvm.loop !222

159:                                              ; preds = %145, %140, %139, %116, %74, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportRGBQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2, ptr noalias noundef writeonly %3) unnamed_addr #4 !PGOFuncName !223 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %12 = load i64, ptr %0, align 8, !tbaa !66
  switch i64 %12, label %392 [
    i64 8, label %13
    i64 10, label %39
    i64 12, label %123
    i64 16, label %245
    i64 32, label %304
    i64 64, label %360
  ]

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  %14 = icmp sgt i64 %1, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !67
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %36, %18 ]
  %20 = phi ptr [ %3, %15 ], [ %35, %18 ]
  %21 = phi ptr [ %2, %15 ], [ %34, %18 ]
  %22 = call fastcc ptr @PushCharPixel(ptr noundef %21, ptr noundef nonnull %6) #11
  %23 = load i8, ptr %6, align 1, !tbaa !68
  %24 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %23) #11
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 2
  store i16 %24, ptr %25, align 2, !tbaa !61
  %26 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %22, ptr noundef nonnull %6) #11
  %27 = load i8, ptr %6, align 1, !tbaa !68
  %28 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %27) #11
  %29 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 1
  store i16 %28, ptr %29, align 2, !tbaa !62
  %30 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %26, ptr noundef nonnull %6) #11
  %31 = load i8, ptr %6, align 1, !tbaa !68
  %32 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %31) #11
  store i16 %32, ptr %20, align 2, !tbaa !63
  %33 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 3
  store i16 0, ptr %33, align 2, !tbaa !56
  %34 = getelementptr inbounds i8, ptr %30, i64 %17
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 1
  %36 = add nuw nsw i64 %19, 1
  %37 = icmp eq i64 %36, %1
  br i1 %37, label %38, label %18, !llvm.loop !224

38:                                               ; preds = %18, %13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %416

39:                                               ; preds = %4
  %40 = tail call fastcc i64 @GetQuantumRange(i64 noundef 10) #11
  %41 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !84
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = icmp sgt i64 %1, 0
  br i1 %45, label %46, label %416

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %48 = load i32, ptr %47, align 8, !tbaa !71
  %49 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %50 = load i64, ptr %49, align 8, !tbaa !67
  br label %51

51:                                               ; preds = %46, %51
  %52 = phi i64 [ 0, %46 ], [ %72, %51 ]
  %53 = phi ptr [ %3, %46 ], [ %71, %51 ]
  %54 = phi ptr [ %2, %46 ], [ %70, %51 ]
  %55 = call fastcc ptr @PushLongPixel(i32 noundef %48, ptr noundef %54, ptr noundef nonnull %5) #11
  %56 = load i32, ptr %5, align 4, !tbaa !77
  %57 = lshr i32 %56, 22
  %58 = zext nneg i32 %57 to i64
  %59 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %58, i64 noundef %40) #11
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 2
  store i16 %59, ptr %60, align 2, !tbaa !61
  %61 = lshr i32 %56, 12
  %62 = and i32 %61, 1023
  %63 = zext nneg i32 %62 to i64
  %64 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %63, i64 noundef %40) #11
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 1
  store i16 %64, ptr %65, align 2, !tbaa !62
  %66 = lshr i32 %56, 2
  %67 = and i32 %66, 1023
  %68 = zext nneg i32 %67 to i64
  %69 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %68, i64 noundef %40) #11
  store i16 %69, ptr %53, align 2, !tbaa !63
  %70 = getelementptr inbounds i8, ptr %55, i64 %50
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  %72 = add nuw nsw i64 %52, 1
  %73 = icmp eq i64 %72, %1
  br i1 %73, label %416, label %51, !llvm.loop !225

74:                                               ; preds = %39
  %75 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !86
  %77 = icmp eq i64 %76, 32
  %78 = icmp sgt i64 %1, 0
  br i1 %77, label %80, label %79

79:                                               ; preds = %74
  br i1 %78, label %102, label %416

80:                                               ; preds = %74
  br i1 %78, label %81, label %416

81:                                               ; preds = %80, %81
  %82 = phi i64 [ %100, %81 ], [ 0, %80 ]
  %83 = phi ptr [ %99, %81 ], [ %3, %80 ]
  %84 = phi ptr [ %95, %81 ], [ %2, %80 ]
  %85 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %84, ptr noundef nonnull %5) #11
  %86 = load i32, ptr %5, align 4, !tbaa !77
  %87 = zext i32 %86 to i64
  %88 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %87, i64 noundef %40) #11
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 2
  store i16 %88, ptr %89, align 2, !tbaa !61
  %90 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %85, ptr noundef nonnull %5) #11
  %91 = load i32, ptr %5, align 4, !tbaa !77
  %92 = zext i32 %91 to i64
  %93 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %92, i64 noundef %40) #11
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 1
  store i16 %93, ptr %94, align 2, !tbaa !62
  %95 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %90, ptr noundef nonnull %5) #11
  %96 = load i32, ptr %5, align 4, !tbaa !77
  %97 = zext i32 %96 to i64
  %98 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %97, i64 noundef %40) #11
  store i16 %98, ptr %83, align 2, !tbaa !63
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %100 = add nuw nsw i64 %82, 1
  %101 = icmp eq i64 %100, %1
  br i1 %101, label %416, label %81, !llvm.loop !226

102:                                              ; preds = %79, %102
  %103 = phi i64 [ %121, %102 ], [ 0, %79 ]
  %104 = phi ptr [ %120, %102 ], [ %3, %79 ]
  %105 = phi ptr [ %116, %102 ], [ %2, %79 ]
  %106 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %105, ptr noundef nonnull %5) #11
  %107 = load i32, ptr %5, align 4, !tbaa !77
  %108 = zext i32 %107 to i64
  %109 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %108, i64 noundef %40) #11
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 2
  store i16 %109, ptr %110, align 2, !tbaa !61
  %111 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %106, ptr noundef nonnull %5) #11
  %112 = load i32, ptr %5, align 4, !tbaa !77
  %113 = zext i32 %112 to i64
  %114 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %113, i64 noundef %40) #11
  %115 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 0, i32 1
  store i16 %114, ptr %115, align 2, !tbaa !62
  %116 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %111, ptr noundef nonnull %5) #11
  %117 = load i32, ptr %5, align 4, !tbaa !77
  %118 = zext i32 %117 to i64
  %119 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %118, i64 noundef %40) #11
  store i16 %119, ptr %104, align 2, !tbaa !63
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %104, i64 1
  %121 = add nuw nsw i64 %103, 1
  %122 = icmp eq i64 %121, %1
  br i1 %122, label %416, label %102, !llvm.loop !227

123:                                              ; preds = %4
  %124 = tail call fastcc i64 @GetQuantumRange(i64 noundef 12) #11
  %125 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %126 = load i32, ptr %125, align 4, !tbaa !84
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %196

128:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  %129 = mul i64 %1, 3
  %130 = add i64 %129, -1
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %134 = load i32, ptr %133, align 8, !tbaa !71
  %135 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %136 = load i64, ptr %135, align 8, !tbaa !67
  br label %153

137:                                              ; preds = %184
  %138 = urem i64 %187, 3
  br label %139

139:                                              ; preds = %137, %128
  %140 = phi ptr [ %2, %128 ], [ %186, %137 ]
  %141 = phi ptr [ %3, %128 ], [ %185, %137 ]
  %142 = phi i64 [ 0, %128 ], [ %138, %137 ]
  %143 = and i64 %129, 1
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %195, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %147 = load i32, ptr %146, align 8, !tbaa !71
  %148 = call fastcc ptr @PushShortPixel(i32 noundef %147, ptr noundef %140, ptr noundef nonnull %7) #11
  %149 = load i16, ptr %7, align 2, !tbaa !53
  %150 = lshr i16 %149, 4
  %151 = zext nneg i16 %150 to i64
  %152 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %151, i64 noundef %124) #11
  switch i64 %142, label %189 [
    i64 2, label %193
    i64 1, label %191
  ]

153:                                              ; preds = %132, %184
  %154 = phi i64 [ 0, %132 ], [ %187, %184 ]
  %155 = phi ptr [ %3, %132 ], [ %185, %184 ]
  %156 = phi ptr [ %2, %132 ], [ %186, %184 ]
  %157 = call fastcc ptr @PushShortPixel(i32 noundef %134, ptr noundef %156, ptr noundef nonnull %7) #11
  %158 = urem i64 %154, 3
  %159 = load i16, ptr %7, align 2, !tbaa !53
  %160 = lshr i16 %159, 4
  %161 = zext nneg i16 %160 to i64
  %162 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %161, i64 noundef %124) #11
  switch i64 %158, label %163 [
    i64 2, label %167
    i64 1, label %165
  ]

163:                                              ; preds = %153
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 2
  store i16 %162, ptr %164, align 2, !tbaa !61
  br label %169

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 1
  store i16 %162, ptr %166, align 2, !tbaa !62
  br label %169

167:                                              ; preds = %153
  store i16 %162, ptr %155, align 2, !tbaa !63
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 1
  br label %169

169:                                              ; preds = %167, %165, %163
  %170 = phi ptr [ %155, %163 ], [ %155, %165 ], [ %168, %167 ]
  %171 = call fastcc ptr @PushShortPixel(i32 noundef %134, ptr noundef nonnull %157, ptr noundef nonnull %7) #11
  %172 = or disjoint i64 %154, 1
  %173 = urem i64 %172, 3
  %174 = load i16, ptr %7, align 2, !tbaa !53
  %175 = lshr i16 %174, 4
  %176 = zext nneg i16 %175 to i64
  %177 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %176, i64 noundef %124) #11
  switch i64 %173, label %178 [
    i64 2, label %182
    i64 1, label %180
  ]

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 2
  store i16 %177, ptr %179, align 2, !tbaa !61
  br label %184

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 0, i32 1
  store i16 %177, ptr %181, align 2, !tbaa !62
  br label %184

182:                                              ; preds = %169
  store i16 %177, ptr %170, align 2, !tbaa !63
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %170, i64 1
  br label %184

184:                                              ; preds = %182, %180, %178
  %185 = phi ptr [ %170, %178 ], [ %170, %180 ], [ %183, %182 ]
  %186 = getelementptr inbounds i8, ptr %171, i64 %136
  %187 = add nuw nsw i64 %154, 2
  %188 = icmp slt i64 %187, %130
  br i1 %188, label %153, label %137, !llvm.loop !228

189:                                              ; preds = %145
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %141, i64 0, i32 2
  br label %193

191:                                              ; preds = %145
  %192 = getelementptr inbounds %struct._PixelPacket, ptr %141, i64 0, i32 1
  br label %193

193:                                              ; preds = %145, %191, %189
  %194 = phi ptr [ %190, %189 ], [ %192, %191 ], [ %141, %145 ]
  store i16 %152, ptr %194, align 2, !tbaa !53
  br label %195

195:                                              ; preds = %193, %139
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %416

196:                                              ; preds = %123
  %197 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  %198 = load i64, ptr %197, align 8, !tbaa !86
  %199 = icmp eq i64 %198, 32
  %200 = icmp sgt i64 %1, 0
  br i1 %199, label %202, label %201

201:                                              ; preds = %196
  br i1 %200, label %224, label %416

202:                                              ; preds = %196
  br i1 %200, label %203, label %416

203:                                              ; preds = %202, %203
  %204 = phi i64 [ %222, %203 ], [ 0, %202 ]
  %205 = phi ptr [ %221, %203 ], [ %3, %202 ]
  %206 = phi ptr [ %217, %203 ], [ %2, %202 ]
  %207 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %206, ptr noundef nonnull %5) #11
  %208 = load i32, ptr %5, align 4, !tbaa !77
  %209 = zext i32 %208 to i64
  %210 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %209, i64 noundef %124) #11
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 0, i32 2
  store i16 %210, ptr %211, align 2, !tbaa !61
  %212 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %207, ptr noundef nonnull %5) #11
  %213 = load i32, ptr %5, align 4, !tbaa !77
  %214 = zext i32 %213 to i64
  %215 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %214, i64 noundef %124) #11
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 0, i32 1
  store i16 %215, ptr %216, align 2, !tbaa !62
  %217 = call fastcc ptr @PushQuantumLongPixel(ptr noundef nonnull %0, ptr noundef %212, ptr noundef nonnull %5) #11
  %218 = load i32, ptr %5, align 4, !tbaa !77
  %219 = zext i32 %218 to i64
  %220 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %219, i64 noundef %124) #11
  store i16 %220, ptr %205, align 2, !tbaa !63
  %221 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 1
  %222 = add nuw nsw i64 %204, 1
  %223 = icmp eq i64 %222, %1
  br i1 %223, label %416, label %203, !llvm.loop !229

224:                                              ; preds = %201, %224
  %225 = phi i64 [ %243, %224 ], [ 0, %201 ]
  %226 = phi ptr [ %242, %224 ], [ %3, %201 ]
  %227 = phi ptr [ %238, %224 ], [ %2, %201 ]
  %228 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %227, ptr noundef nonnull %5) #11
  %229 = load i32, ptr %5, align 4, !tbaa !77
  %230 = zext i32 %229 to i64
  %231 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %230, i64 noundef %124) #11
  %232 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 0, i32 2
  store i16 %231, ptr %232, align 2, !tbaa !61
  %233 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %228, ptr noundef nonnull %5) #11
  %234 = load i32, ptr %5, align 4, !tbaa !77
  %235 = zext i32 %234 to i64
  %236 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %235, i64 noundef %124) #11
  %237 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 0, i32 1
  store i16 %236, ptr %237, align 2, !tbaa !62
  %238 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %233, ptr noundef nonnull %5) #11
  %239 = load i32, ptr %5, align 4, !tbaa !77
  %240 = zext i32 %239 to i64
  %241 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %240, i64 noundef %124) #11
  store i16 %241, ptr %226, align 2, !tbaa !63
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 1
  %243 = add nuw nsw i64 %225, 1
  %244 = icmp eq i64 %243, %1
  br i1 %244, label %416, label %224, !llvm.loop !230

245:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  %246 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %247 = load i32, ptr %246, align 8, !tbaa !70
  %248 = icmp eq i32 %247, 1
  %249 = icmp sgt i64 %1, 0
  br i1 %248, label %256, label %250

250:                                              ; preds = %245
  br i1 %249, label %251, label %303

251:                                              ; preds = %250
  %252 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %253 = load i32, ptr %252, align 8, !tbaa !71
  %254 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %255 = load i64, ptr %254, align 8, !tbaa !67
  br label %287

256:                                              ; preds = %245
  br i1 %249, label %257, label %303

257:                                              ; preds = %256
  %258 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %259 = load i32, ptr %258, align 8, !tbaa !71
  %260 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %261 = load i64, ptr %260, align 8, !tbaa !67
  br label %262

262:                                              ; preds = %257, %262
  %263 = phi i64 [ 0, %257 ], [ %285, %262 ]
  %264 = phi ptr [ %3, %257 ], [ %284, %262 ]
  %265 = phi ptr [ %2, %257 ], [ %283, %262 ]
  %266 = call fastcc ptr @PushShortPixel(i32 noundef %259, ptr noundef %265, ptr noundef nonnull %8) #11
  %267 = load i16, ptr %8, align 2, !tbaa !53
  %268 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %267) #11
  %269 = fmul float %268, 6.553500e+04
  %270 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %269) #11
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %264, i64 0, i32 2
  store i16 %270, ptr %271, align 2, !tbaa !61
  %272 = call fastcc ptr @PushShortPixel(i32 noundef %259, ptr noundef nonnull %266, ptr noundef nonnull %8) #11
  %273 = load i16, ptr %8, align 2, !tbaa !53
  %274 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %273) #11
  %275 = fmul float %274, 6.553500e+04
  %276 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %275) #11
  %277 = getelementptr inbounds %struct._PixelPacket, ptr %264, i64 0, i32 1
  store i16 %276, ptr %277, align 2, !tbaa !62
  %278 = call fastcc ptr @PushShortPixel(i32 noundef %259, ptr noundef nonnull %272, ptr noundef nonnull %8) #11
  %279 = load i16, ptr %8, align 2, !tbaa !53
  %280 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %279) #11
  %281 = fmul float %280, 6.553500e+04
  %282 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %281) #11
  store i16 %282, ptr %264, align 2, !tbaa !63
  %283 = getelementptr inbounds i8, ptr %278, i64 %261
  %284 = getelementptr inbounds %struct._PixelPacket, ptr %264, i64 1
  %285 = add nuw nsw i64 %263, 1
  %286 = icmp eq i64 %285, %1
  br i1 %286, label %303, label %262, !llvm.loop !231

287:                                              ; preds = %251, %287
  %288 = phi i64 [ 0, %251 ], [ %301, %287 ]
  %289 = phi ptr [ %3, %251 ], [ %300, %287 ]
  %290 = phi ptr [ %2, %251 ], [ %299, %287 ]
  %291 = call fastcc ptr @PushShortPixel(i32 noundef %253, ptr noundef %290, ptr noundef nonnull %8) #11
  %292 = load i16, ptr %8, align 2, !tbaa !53
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %289, i64 0, i32 2
  store i16 %292, ptr %293, align 2, !tbaa !61
  %294 = call fastcc ptr @PushShortPixel(i32 noundef %253, ptr noundef nonnull %291, ptr noundef nonnull %8) #11
  %295 = load i16, ptr %8, align 2, !tbaa !53
  %296 = getelementptr inbounds %struct._PixelPacket, ptr %289, i64 0, i32 1
  store i16 %295, ptr %296, align 2, !tbaa !62
  %297 = call fastcc ptr @PushShortPixel(i32 noundef %253, ptr noundef nonnull %294, ptr noundef nonnull %8) #11
  %298 = load i16, ptr %8, align 2, !tbaa !53
  store i16 %298, ptr %289, align 2, !tbaa !63
  %299 = getelementptr inbounds i8, ptr %297, i64 %255
  %300 = getelementptr inbounds %struct._PixelPacket, ptr %289, i64 1
  %301 = add nuw nsw i64 %288, 1
  %302 = icmp eq i64 %301, %1
  br i1 %302, label %303, label %287, !llvm.loop !232

303:                                              ; preds = %287, %262, %250, %256
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  br label %416

304:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %305 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %306 = load i32, ptr %305, align 8, !tbaa !70
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %315, label %308

308:                                              ; preds = %304
  %309 = icmp sgt i64 %1, 0
  br i1 %309, label %310, label %359

310:                                              ; preds = %308
  %311 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %312 = load i32, ptr %311, align 8, !tbaa !71
  %313 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %314 = load i64, ptr %313, align 8, !tbaa !67
  br label %340

315:                                              ; preds = %304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  %316 = icmp sgt i64 %1, 0
  br i1 %316, label %317, label %339

317:                                              ; preds = %315
  %318 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %319 = load i64, ptr %318, align 8, !tbaa !67
  br label %320

320:                                              ; preds = %317, %320
  %321 = phi i64 [ 0, %317 ], [ %337, %320 ]
  %322 = phi ptr [ %3, %317 ], [ %336, %320 ]
  %323 = phi ptr [ %2, %317 ], [ %335, %320 ]
  %324 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef %323, ptr noundef nonnull %10) #11
  %325 = load float, ptr %10, align 4, !tbaa !74
  %326 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %325) #11
  %327 = getelementptr inbounds %struct._PixelPacket, ptr %322, i64 0, i32 2
  store i16 %326, ptr %327, align 2, !tbaa !61
  %328 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %324, ptr noundef nonnull %10) #11
  %329 = load float, ptr %10, align 4, !tbaa !74
  %330 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %329) #11
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %322, i64 0, i32 1
  store i16 %330, ptr %331, align 2, !tbaa !62
  %332 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %328, ptr noundef nonnull %10) #11
  %333 = load float, ptr %10, align 4, !tbaa !74
  %334 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %333) #11
  store i16 %334, ptr %322, align 2, !tbaa !63
  %335 = getelementptr inbounds i8, ptr %332, i64 %319
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %322, i64 1
  %337 = add nuw nsw i64 %321, 1
  %338 = icmp eq i64 %337, %1
  br i1 %338, label %339, label %320, !llvm.loop !233

339:                                              ; preds = %320, %315
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %359

340:                                              ; preds = %310, %340
  %341 = phi i64 [ 0, %310 ], [ %357, %340 ]
  %342 = phi ptr [ %3, %310 ], [ %356, %340 ]
  %343 = phi ptr [ %2, %310 ], [ %355, %340 ]
  %344 = call fastcc ptr @PushLongPixel(i32 noundef %312, ptr noundef %343, ptr noundef nonnull %9) #11
  %345 = load i32, ptr %9, align 4, !tbaa !77
  %346 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %345) #11
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 0, i32 2
  store i16 %346, ptr %347, align 2, !tbaa !61
  %348 = call fastcc ptr @PushLongPixel(i32 noundef %312, ptr noundef nonnull %344, ptr noundef nonnull %9) #11
  %349 = load i32, ptr %9, align 4, !tbaa !77
  %350 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %349) #11
  %351 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 0, i32 1
  store i16 %350, ptr %351, align 2, !tbaa !62
  %352 = call fastcc ptr @PushLongPixel(i32 noundef %312, ptr noundef nonnull %348, ptr noundef nonnull %9) #11
  %353 = load i32, ptr %9, align 4, !tbaa !77
  %354 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %353) #11
  store i16 %354, ptr %342, align 2, !tbaa !63
  %355 = getelementptr inbounds i8, ptr %352, i64 %314
  %356 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 1
  %357 = add nuw nsw i64 %341, 1
  %358 = icmp eq i64 %357, %1
  br i1 %358, label %359, label %340, !llvm.loop !234

359:                                              ; preds = %340, %308, %339
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %416

360:                                              ; preds = %4
  %361 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %362 = load i32, ptr %361, align 8, !tbaa !70
  %363 = icmp eq i32 %362, 1
  br i1 %363, label %364, label %392

364:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  %365 = icmp sgt i64 %1, 0
  br i1 %365, label %366, label %391

366:                                              ; preds = %364
  %367 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %368 = load i64, ptr %367, align 8, !tbaa !67
  br label %369

369:                                              ; preds = %366, %369
  %370 = phi i64 [ 0, %366 ], [ %389, %369 ]
  %371 = phi ptr [ %3, %366 ], [ %388, %369 ]
  %372 = phi ptr [ %2, %366 ], [ %387, %369 ]
  %373 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef %372, ptr noundef nonnull %11) #11
  %374 = load double, ptr %11, align 8, !tbaa !79
  %375 = fptrunc double %374 to float
  %376 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %375) #11
  %377 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 0, i32 2
  store i16 %376, ptr %377, align 2, !tbaa !61
  %378 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %373, ptr noundef nonnull %11) #11
  %379 = load double, ptr %11, align 8, !tbaa !79
  %380 = fptrunc double %379 to float
  %381 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %380) #11
  %382 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 0, i32 1
  store i16 %381, ptr %382, align 2, !tbaa !62
  %383 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %378, ptr noundef nonnull %11) #11
  %384 = load double, ptr %11, align 8, !tbaa !79
  %385 = fptrunc double %384 to float
  %386 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %385) #11
  store i16 %386, ptr %371, align 2, !tbaa !63
  %387 = getelementptr inbounds i8, ptr %383, i64 %368
  %388 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 1
  %389 = add nuw nsw i64 %370, 1
  %390 = icmp eq i64 %389, %1
  br i1 %390, label %391, label %369, !llvm.loop !235

391:                                              ; preds = %369, %364
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  br label %416

392:                                              ; preds = %360, %4
  %393 = tail call fastcc i64 @GetQuantumRange(i64 noundef %12) #11
  %394 = icmp sgt i64 %1, 0
  br i1 %394, label %395, label %416

395:                                              ; preds = %392, %395
  %396 = phi i64 [ %414, %395 ], [ 0, %392 ]
  %397 = phi ptr [ %413, %395 ], [ %3, %392 ]
  %398 = phi ptr [ %409, %395 ], [ %2, %392 ]
  %399 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %398, ptr noundef nonnull %5) #11
  %400 = load i32, ptr %5, align 4, !tbaa !77
  %401 = zext i32 %400 to i64
  %402 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %401, i64 noundef %393) #11
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %397, i64 0, i32 2
  store i16 %402, ptr %403, align 2, !tbaa !61
  %404 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %399, ptr noundef nonnull %5) #11
  %405 = load i32, ptr %5, align 4, !tbaa !77
  %406 = zext i32 %405 to i64
  %407 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %406, i64 noundef %393) #11
  %408 = getelementptr inbounds %struct._PixelPacket, ptr %397, i64 0, i32 1
  store i16 %407, ptr %408, align 2, !tbaa !62
  %409 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %404, ptr noundef nonnull %5) #11
  %410 = load i32, ptr %5, align 4, !tbaa !77
  %411 = zext i32 %410 to i64
  %412 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %411, i64 noundef %393) #11
  store i16 %412, ptr %397, align 2, !tbaa !63
  %413 = getelementptr inbounds %struct._PixelPacket, ptr %397, i64 1
  %414 = add nuw nsw i64 %396, 1
  %415 = icmp eq i64 %414, %1
  br i1 %415, label %416, label %395, !llvm.loop !236

416:                                              ; preds = %224, %203, %102, %81, %51, %395, %201, %202, %79, %80, %44, %392, %391, %359, %303, %195, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ImportRGBAQuantum(ptr nocapture noundef %0, i64 noundef %1, ptr noalias noundef %2, ptr noalias nocapture noundef writeonly %3) unnamed_addr #4 !PGOFuncName !237 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %11 = load i64, ptr %0, align 8, !tbaa !66
  switch i64 %11, label %309 [
    i64 8, label %12
    i64 10, label %42
    i64 16, label %135
    i64 32, label %205
    i64 64, label %271
  ]

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  %13 = icmp sgt i64 %1, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %16 = load i64, ptr %15, align 8, !tbaa !67
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %39, %17 ]
  %19 = phi ptr [ %2, %14 ], [ %37, %17 ]
  %20 = phi ptr [ %3, %14 ], [ %38, %17 ]
  %21 = call fastcc ptr @PushCharPixel(ptr noundef %19, ptr noundef nonnull %6) #11
  %22 = load i8, ptr %6, align 1, !tbaa !68
  %23 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %22) #11
  %24 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 2
  store i16 %23, ptr %24, align 2, !tbaa !61
  %25 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %21, ptr noundef nonnull %6) #11
  %26 = load i8, ptr %6, align 1, !tbaa !68
  %27 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %26) #11
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 1
  store i16 %27, ptr %28, align 2, !tbaa !62
  %29 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %25, ptr noundef nonnull %6) #11
  %30 = load i8, ptr %6, align 1, !tbaa !68
  %31 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %30) #11
  store i16 %31, ptr %20, align 2, !tbaa !63
  %32 = call fastcc ptr @PushCharPixel(ptr noundef nonnull %29, ptr noundef nonnull %6) #11
  %33 = load i8, ptr %6, align 1, !tbaa !68
  %34 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %33) #11
  %35 = xor i16 %34, -1
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 0, i32 3
  store i16 %35, ptr %36, align 2, !tbaa !56
  %37 = getelementptr inbounds i8, ptr %32, i64 %16
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %20, i64 1
  %39 = add nuw nsw i64 %18, 1
  %40 = icmp eq i64 %39, %1
  br i1 %40, label %41, label %17, !llvm.loop !238

41:                                               ; preds = %17, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  br label %339

42:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !tbaa !77
  %43 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  %44 = load i32, ptr %43, align 4, !tbaa !84
  %45 = icmp eq i32 %44, 0
  %46 = icmp sgt i64 %1, 0
  br i1 %45, label %48, label %47

47:                                               ; preds = %42
  br i1 %46, label %108, label %339

48:                                               ; preds = %42
  br i1 %46, label %49, label %339

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %51 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %52 = load i64, ptr %51, align 8, !tbaa !67
  br label %53

53:                                               ; preds = %49, %100
  %54 = phi i32 [ 0, %49 ], [ %88, %100 ]
  %55 = phi i32 [ 0, %49 ], [ %89, %100 ]
  %56 = phi i64 [ 0, %49 ], [ %103, %100 ]
  %57 = phi i64 [ 0, %49 ], [ %91, %100 ]
  %58 = phi i64 [ 0, %49 ], [ %106, %100 ]
  %59 = phi ptr [ %2, %49 ], [ %104, %100 ]
  %60 = phi ptr [ %3, %49 ], [ %105, %100 ]
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 3
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 1
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 0, i32 2
  br label %64

64:                                               ; preds = %97, %53
  %65 = phi i32 [ %54, %53 ], [ %88, %97 ]
  %66 = phi i32 [ %55, %53 ], [ %89, %97 ]
  %67 = phi i64 [ %56, %53 ], [ %98, %97 ]
  %68 = phi i64 [ %57, %53 ], [ %91, %97 ]
  %69 = phi i64 [ 0, %53 ], [ %99, %97 ]
  %70 = phi ptr [ %59, %53 ], [ %90, %97 ]
  %71 = srem i64 %67, 3
  switch i64 %71, label %87 [
    i64 0, label %72
    i64 1, label %79
    i64 2, label %83
  ]

72:                                               ; preds = %64
  %73 = load i32, ptr %50, align 8, !tbaa !71
  %74 = call fastcc ptr @PushLongPixel(i32 noundef %73, ptr noundef %70, ptr noundef nonnull %5) #11
  %75 = load i32, ptr %5, align 4, !tbaa !77
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 65472
  %78 = zext nneg i32 %77 to i64
  br label %87

79:                                               ; preds = %64
  %80 = lshr i32 %65, 6
  %81 = and i32 %80, 65472
  %82 = zext nneg i32 %81 to i64
  br label %87

83:                                               ; preds = %64
  %84 = zext i32 %66 to i64
  %85 = shl nuw nsw i64 %84, 4
  %86 = and i64 %85, 65472
  br label %87

87:                                               ; preds = %64, %83, %79, %72
  %88 = phi i32 [ %65, %64 ], [ %65, %83 ], [ %65, %79 ], [ %75, %72 ]
  %89 = phi i32 [ %66, %64 ], [ %66, %83 ], [ %65, %79 ], [ %75, %72 ]
  %90 = phi ptr [ %70, %64 ], [ %70, %83 ], [ %70, %79 ], [ %74, %72 ]
  %91 = phi i64 [ %68, %64 ], [ %86, %83 ], [ %82, %79 ], [ %78, %72 ]
  switch i64 %69, label %97 [
    i64 0, label %94
    i64 1, label %92
    i64 2, label %93
    i64 3, label %100
  ]

92:                                               ; preds = %87
  br label %94

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %87, %92, %93
  %95 = phi ptr [ %60, %93 ], [ %62, %92 ], [ %63, %87 ]
  %96 = trunc i64 %91 to i16
  store i16 %96, ptr %95, align 2, !tbaa !53
  br label %97

97:                                               ; preds = %94, %87
  %98 = add nsw i64 %67, 1
  %99 = add nuw nsw i64 %69, 1
  br label %64

100:                                              ; preds = %87
  %101 = trunc i64 %91 to i16
  %102 = xor i16 %101, -1
  store i16 %102, ptr %61, align 2, !tbaa !56
  %103 = add i64 %56, 4
  %104 = getelementptr inbounds i8, ptr %90, i64 %52
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 1
  %106 = add nuw nsw i64 %58, 1
  %107 = icmp eq i64 %106, %1
  br i1 %107, label %339, label %53, !llvm.loop !239

108:                                              ; preds = %47, %108
  %109 = phi i64 [ %133, %108 ], [ 0, %47 ]
  %110 = phi ptr [ %126, %108 ], [ %2, %47 ]
  %111 = phi ptr [ %132, %108 ], [ %3, %47 ]
  %112 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %110, ptr noundef nonnull %5) #11
  %113 = load i32, ptr %5, align 4, !tbaa !77
  %114 = trunc i32 %113 to i16
  %115 = shl i16 %114, 6
  %116 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 2
  store i16 %115, ptr %116, align 2, !tbaa !61
  %117 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %112, ptr noundef nonnull %5) #11
  %118 = load i32, ptr %5, align 4, !tbaa !77
  %119 = trunc i32 %118 to i16
  %120 = shl i16 %119, 6
  %121 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 1
  store i16 %120, ptr %121, align 2, !tbaa !62
  %122 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %117, ptr noundef nonnull %5) #11
  %123 = load i32, ptr %5, align 4, !tbaa !77
  %124 = trunc i32 %123 to i16
  %125 = shl i16 %124, 6
  store i16 %125, ptr %111, align 2, !tbaa !63
  %126 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %122, ptr noundef nonnull %5) #11
  %127 = load i32, ptr %5, align 4, !tbaa !77
  %128 = trunc i32 %127 to i16
  %129 = shl i16 %128, 6
  %130 = xor i16 %129, -1
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 0, i32 3
  store i16 %130, ptr %131, align 2, !tbaa !56
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %111, i64 1
  %133 = add nuw nsw i64 %109, 1
  %134 = icmp eq i64 %133, %1
  br i1 %134, label %339, label %108, !llvm.loop !240

135:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  %136 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !70
  %138 = icmp eq i32 %137, 1
  %139 = icmp sgt i64 %1, 0
  br i1 %138, label %146, label %140

140:                                              ; preds = %135
  br i1 %139, label %141, label %204

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %143 = load i32, ptr %142, align 8, !tbaa !71
  %144 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %145 = load i64, ptr %144, align 8, !tbaa !67
  br label %184

146:                                              ; preds = %135
  br i1 %139, label %147, label %204

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %149 = load i32, ptr %148, align 8, !tbaa !71
  %150 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %151 = load i64, ptr %150, align 8, !tbaa !67
  br label %152

152:                                              ; preds = %147, %152
  %153 = phi i64 [ 0, %147 ], [ %182, %152 ]
  %154 = phi ptr [ %2, %147 ], [ %180, %152 ]
  %155 = phi ptr [ %3, %147 ], [ %181, %152 ]
  %156 = call fastcc ptr @PushShortPixel(i32 noundef %149, ptr noundef %154, ptr noundef nonnull %7) #11
  %157 = load i16, ptr %7, align 2, !tbaa !53
  %158 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %157) #11
  %159 = fmul float %158, 6.553500e+04
  %160 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %159) #11
  %161 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 2
  store i16 %160, ptr %161, align 2, !tbaa !61
  %162 = call fastcc ptr @PushShortPixel(i32 noundef %149, ptr noundef nonnull %156, ptr noundef nonnull %7) #11
  %163 = load i16, ptr %7, align 2, !tbaa !53
  %164 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %163) #11
  %165 = fmul float %164, 6.553500e+04
  %166 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %165) #11
  %167 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 1
  store i16 %166, ptr %167, align 2, !tbaa !62
  %168 = call fastcc ptr @PushShortPixel(i32 noundef %149, ptr noundef nonnull %162, ptr noundef nonnull %7) #11
  %169 = load i16, ptr %7, align 2, !tbaa !53
  %170 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %169) #11
  %171 = fmul float %170, 6.553500e+04
  %172 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %171) #11
  store i16 %172, ptr %155, align 2, !tbaa !63
  %173 = call fastcc ptr @PushShortPixel(i32 noundef %149, ptr noundef nonnull %168, ptr noundef nonnull %7) #11
  %174 = load i16, ptr %7, align 2, !tbaa !53
  %175 = tail call fastcc float @HalfToSinglePrecision(i16 noundef zeroext %174) #11
  %176 = fmul float %175, 6.553500e+04
  %177 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %176) #11
  %178 = xor i16 %177, -1
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 0, i32 3
  store i16 %178, ptr %179, align 2, !tbaa !56
  %180 = getelementptr inbounds i8, ptr %173, i64 %151
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %155, i64 1
  %182 = add nuw nsw i64 %153, 1
  %183 = icmp eq i64 %182, %1
  br i1 %183, label %204, label %152, !llvm.loop !241

184:                                              ; preds = %141, %184
  %185 = phi i64 [ 0, %141 ], [ %202, %184 ]
  %186 = phi ptr [ %2, %141 ], [ %200, %184 ]
  %187 = phi ptr [ %3, %141 ], [ %201, %184 ]
  %188 = call fastcc ptr @PushShortPixel(i32 noundef %143, ptr noundef %186, ptr noundef nonnull %7) #11
  %189 = load i16, ptr %7, align 2, !tbaa !53
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 0, i32 2
  store i16 %189, ptr %190, align 2, !tbaa !61
  %191 = call fastcc ptr @PushShortPixel(i32 noundef %143, ptr noundef nonnull %188, ptr noundef nonnull %7) #11
  %192 = load i16, ptr %7, align 2, !tbaa !53
  %193 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 0, i32 1
  store i16 %192, ptr %193, align 2, !tbaa !62
  %194 = call fastcc ptr @PushShortPixel(i32 noundef %143, ptr noundef nonnull %191, ptr noundef nonnull %7) #11
  %195 = load i16, ptr %7, align 2, !tbaa !53
  store i16 %195, ptr %187, align 2, !tbaa !63
  %196 = call fastcc ptr @PushShortPixel(i32 noundef %143, ptr noundef nonnull %194, ptr noundef nonnull %7) #11
  %197 = load i16, ptr %7, align 2, !tbaa !53
  %198 = xor i16 %197, -1
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 0, i32 3
  store i16 %198, ptr %199, align 2, !tbaa !56
  %200 = getelementptr inbounds i8, ptr %196, i64 %145
  %201 = getelementptr inbounds %struct._PixelPacket, ptr %187, i64 1
  %202 = add nuw nsw i64 %185, 1
  %203 = icmp eq i64 %202, %1
  br i1 %203, label %204, label %184, !llvm.loop !242

204:                                              ; preds = %184, %152, %140, %146
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  br label %339

205:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %206 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %207 = load i32, ptr %206, align 8, !tbaa !70
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %216, label %209

209:                                              ; preds = %205
  %210 = icmp sgt i64 %1, 0
  br i1 %210, label %211, label %270

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %213 = load i32, ptr %212, align 8, !tbaa !71
  %214 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %215 = load i64, ptr %214, align 8, !tbaa !67
  br label %246

216:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %217 = icmp sgt i64 %1, 0
  br i1 %217, label %218, label %245

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %220 = load i64, ptr %219, align 8, !tbaa !67
  br label %221

221:                                              ; preds = %218, %221
  %222 = phi i64 [ 0, %218 ], [ %243, %221 ]
  %223 = phi ptr [ %2, %218 ], [ %241, %221 ]
  %224 = phi ptr [ %3, %218 ], [ %242, %221 ]
  %225 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef %223, ptr noundef nonnull %9) #11
  %226 = load float, ptr %9, align 4, !tbaa !74
  %227 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %226) #11
  %228 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 0, i32 2
  store i16 %227, ptr %228, align 2, !tbaa !61
  %229 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %225, ptr noundef nonnull %9) #11
  %230 = load float, ptr %9, align 4, !tbaa !74
  %231 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %230) #11
  %232 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 0, i32 1
  store i16 %231, ptr %232, align 2, !tbaa !62
  %233 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %229, ptr noundef nonnull %9) #11
  %234 = load float, ptr %9, align 4, !tbaa !74
  %235 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %234) #11
  store i16 %235, ptr %224, align 2, !tbaa !63
  %236 = call fastcc ptr @PushFloatPixel(ptr noundef nonnull %0, ptr noundef nonnull %233, ptr noundef nonnull %9) #11
  %237 = load float, ptr %9, align 4, !tbaa !74
  %238 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %237) #11
  %239 = xor i16 %238, -1
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 0, i32 3
  store i16 %239, ptr %240, align 2, !tbaa !56
  %241 = getelementptr inbounds i8, ptr %236, i64 %220
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %224, i64 1
  %243 = add nuw nsw i64 %222, 1
  %244 = icmp eq i64 %243, %1
  br i1 %244, label %245, label %221, !llvm.loop !243

245:                                              ; preds = %221, %216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %270

246:                                              ; preds = %211, %246
  %247 = phi i64 [ 0, %211 ], [ %268, %246 ]
  %248 = phi ptr [ %2, %211 ], [ %266, %246 ]
  %249 = phi ptr [ %3, %211 ], [ %267, %246 ]
  %250 = call fastcc ptr @PushLongPixel(i32 noundef %213, ptr noundef %248, ptr noundef nonnull %8) #11
  %251 = load i32, ptr %8, align 4, !tbaa !77
  %252 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %251) #11
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 2
  store i16 %252, ptr %253, align 2, !tbaa !61
  %254 = call fastcc ptr @PushLongPixel(i32 noundef %213, ptr noundef nonnull %250, ptr noundef nonnull %8) #11
  %255 = load i32, ptr %8, align 4, !tbaa !77
  %256 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %255) #11
  %257 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 1
  store i16 %256, ptr %257, align 2, !tbaa !62
  %258 = call fastcc ptr @PushLongPixel(i32 noundef %213, ptr noundef nonnull %254, ptr noundef nonnull %8) #11
  %259 = load i32, ptr %8, align 4, !tbaa !77
  %260 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %259) #11
  store i16 %260, ptr %249, align 2, !tbaa !63
  %261 = call fastcc ptr @PushLongPixel(i32 noundef %213, ptr noundef nonnull %258, ptr noundef nonnull %8) #11
  %262 = load i32, ptr %8, align 4, !tbaa !77
  %263 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %262) #11
  %264 = xor i16 %263, -1
  %265 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 0, i32 3
  store i16 %264, ptr %265, align 2, !tbaa !56
  %266 = getelementptr inbounds i8, ptr %261, i64 %215
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %249, i64 1
  %268 = add nuw nsw i64 %247, 1
  %269 = icmp eq i64 %268, %1
  br i1 %269, label %270, label %246, !llvm.loop !244

270:                                              ; preds = %246, %209, %245
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %339

271:                                              ; preds = %4
  %272 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %273 = load i32, ptr %272, align 8, !tbaa !70
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %309

275:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  %276 = icmp sgt i64 %1, 0
  br i1 %276, label %277, label %308

277:                                              ; preds = %275
  %278 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 6
  %279 = load i64, ptr %278, align 8, !tbaa !67
  br label %280

280:                                              ; preds = %277, %280
  %281 = phi i64 [ 0, %277 ], [ %306, %280 ]
  %282 = phi ptr [ %2, %277 ], [ %304, %280 ]
  %283 = phi ptr [ %3, %277 ], [ %305, %280 ]
  %284 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef %282, ptr noundef nonnull %10) #11
  %285 = load double, ptr %10, align 8, !tbaa !79
  %286 = fptrunc double %285 to float
  %287 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %286) #11
  %288 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 0, i32 2
  store i16 %287, ptr %288, align 2, !tbaa !61
  %289 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %284, ptr noundef nonnull %10) #11
  %290 = load double, ptr %10, align 8, !tbaa !79
  %291 = fptrunc double %290 to float
  %292 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %291) #11
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 0, i32 1
  store i16 %292, ptr %293, align 2, !tbaa !62
  %294 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %289, ptr noundef nonnull %10) #11
  %295 = load double, ptr %10, align 8, !tbaa !79
  %296 = fptrunc double %295 to float
  %297 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %296) #11
  store i16 %297, ptr %283, align 2, !tbaa !63
  %298 = call fastcc ptr @PushDoublePixel(ptr noundef nonnull %0, ptr noundef nonnull %294, ptr noundef nonnull %10) #11
  %299 = load double, ptr %10, align 8, !tbaa !79
  %300 = fptrunc double %299 to float
  %301 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %300) #11
  %302 = xor i16 %301, -1
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 0, i32 3
  store i16 %302, ptr %303, align 2, !tbaa !56
  %304 = getelementptr inbounds i8, ptr %298, i64 %279
  %305 = getelementptr inbounds %struct._PixelPacket, ptr %283, i64 1
  %306 = add nuw nsw i64 %281, 1
  %307 = icmp eq i64 %306, %1
  br i1 %307, label %308, label %280, !llvm.loop !245

308:                                              ; preds = %280, %275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  br label %339

309:                                              ; preds = %271, %4
  %310 = tail call fastcc i64 @GetQuantumRange(i64 noundef %11) #11
  %311 = icmp sgt i64 %1, 0
  br i1 %311, label %312, label %339

312:                                              ; preds = %309, %312
  %313 = phi i64 [ %337, %312 ], [ 0, %309 ]
  %314 = phi ptr [ %330, %312 ], [ %2, %309 ]
  %315 = phi ptr [ %336, %312 ], [ %3, %309 ]
  %316 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %314, ptr noundef nonnull %5) #11
  %317 = load i32, ptr %5, align 4, !tbaa !77
  %318 = zext i32 %317 to i64
  %319 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %318, i64 noundef %310) #11
  %320 = getelementptr inbounds %struct._PixelPacket, ptr %315, i64 0, i32 2
  store i16 %319, ptr %320, align 2, !tbaa !61
  %321 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %316, ptr noundef nonnull %5) #11
  %322 = load i32, ptr %5, align 4, !tbaa !77
  %323 = zext i32 %322 to i64
  %324 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %323, i64 noundef %310) #11
  %325 = getelementptr inbounds %struct._PixelPacket, ptr %315, i64 0, i32 1
  store i16 %324, ptr %325, align 2, !tbaa !62
  %326 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %321, ptr noundef nonnull %5) #11
  %327 = load i32, ptr %5, align 4, !tbaa !77
  %328 = zext i32 %327 to i64
  %329 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %328, i64 noundef %310) #11
  store i16 %329, ptr %315, align 2, !tbaa !63
  %330 = call fastcc ptr @PushQuantumPixel(ptr noundef nonnull %0, ptr noundef %326, ptr noundef nonnull %5) #11
  %331 = load i32, ptr %5, align 4, !tbaa !77
  %332 = zext i32 %331 to i64
  %333 = tail call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %332, i64 noundef %310) #11
  %334 = xor i16 %333, -1
  %335 = getelementptr inbounds %struct._PixelPacket, ptr %315, i64 0, i32 3
  store i16 %334, ptr %335, align 2, !tbaa !56
  %336 = getelementptr inbounds %struct._PixelPacket, ptr %315, i64 1
  %337 = add nuw nsw i64 %313, 1
  %338 = icmp eq i64 %337, %1
  br i1 %338, label %339, label %312, !llvm.loop !246

339:                                              ; preds = %108, %100, %312, %47, %48, %309, %308, %270, %204, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #5 !PGOFuncName !247 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #5 !PGOFuncName !248 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @PushCharPixel(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 !PGOFuncName !249 {
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %0, align 1, !tbaa !68
  store i8 %4, ptr %1, align 1, !tbaa !68
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %0) unnamed_addr #5 !PGOFuncName !250 {
  %2 = zext i8 %0 to i16
  %3 = mul nuw i16 %2, 257
  ret i16 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @PushShortPixel(i32 noundef %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !PGOFuncName !251 {
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = load i16, ptr %1, align 1
  br label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !68
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = load i8, ptr %8, align 1, !tbaa !68
  %13 = zext i8 %12 to i16
  %14 = or disjoint i16 %11, %13
  br label %15

15:                                               ; preds = %7, %5
  %16 = phi i16 [ %14, %7 ], [ %6, %5 ]
  %17 = getelementptr inbounds i8, ptr %1, i64 2
  store i16 %16, ptr %2, align 2, !tbaa !53
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @HalfToSinglePrecision(i16 noundef zeroext %0) unnamed_addr #5 !PGOFuncName !252 {
  %2 = zext i16 %0 to i32
  %3 = lshr i32 %2, 15
  %4 = lshr i32 %2, 10
  %5 = and i32 %4, 31
  %6 = and i32 %2, 1023
  switch i32 %5, label %30 [
    i32 0, label %7
    i32 31, label %23
  ]

7:                                                ; preds = %1
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 true), !range !253
  %11 = xor i32 %10, 31
  %12 = sub nuw nsw i32 9, %11
  %13 = shl nuw nsw i32 %6, %12
  %14 = shl nuw i32 %3, 31
  %15 = shl nuw nsw i32 %10, 23
  %16 = sub nuw nsw i32 1124073472, %15
  %17 = shl i32 %13, 14
  %18 = and i32 %17, -8404992
  %19 = or i32 %18, %14
  %20 = or i32 %19, %16
  br label %37

21:                                               ; preds = %7
  %22 = shl nuw i32 %3, 31
  br label %37

23:                                               ; preds = %1
  %24 = shl nuw i32 %3, 31
  %25 = or disjoint i32 %24, 2139095040
  %26 = icmp eq i32 %6, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = shl nuw nsw i32 %6, 13
  %29 = or disjoint i32 %25, %28
  br label %37

30:                                               ; preds = %1
  %31 = shl nuw nsw i32 %6, 13
  %32 = shl nuw i32 %3, 31
  %33 = shl nuw nsw i32 %5, 23
  %34 = add nuw nsw i32 %33, 939524096
  %35 = or disjoint i32 %34, %32
  %36 = or disjoint i32 %35, %31
  br label %37

37:                                               ; preds = %30, %27, %23, %21, %9
  %38 = phi i32 [ %22, %21 ], [ %20, %9 ], [ %29, %27 ], [ %25, %23 ], [ %36, %30 ]
  %39 = bitcast i32 %38 to float
  ret float %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @PushFloatPixel(ptr nocapture noundef readonly %0, ptr noalias noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !PGOFuncName !254 {
  %4 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !71
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 1
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds i8, ptr %1, i64 2
  %11 = getelementptr inbounds i8, ptr %1, i64 3
  %12 = load i8, ptr %10, align 1, !tbaa !68
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %14, %9
  %16 = load i8, ptr %11, align 1, !tbaa !68
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = or disjoint i32 %15, %18
  br label %38

20:                                               ; preds = %3
  %21 = getelementptr inbounds i8, ptr %1, i64 1
  %22 = load i8, ptr %1, align 1, !tbaa !68
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = load i8, ptr %21, align 1, !tbaa !68
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = or disjoint i32 %28, %24
  %30 = getelementptr inbounds i8, ptr %1, i64 3
  %31 = load i8, ptr %25, align 1, !tbaa !68
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or disjoint i32 %29, %33
  %35 = load i8, ptr %30, align 1, !tbaa !68
  %36 = zext i8 %35 to i32
  %37 = or disjoint i32 %34, %36
  br label %38

38:                                               ; preds = %20, %7
  %39 = phi i32 [ %37, %20 ], [ %19, %7 ]
  %40 = bitcast i32 %39 to float
  %41 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 3
  %42 = load double, ptr %41, align 8, !tbaa !255
  %43 = fpext float %40 to double
  %44 = fsub double %43, %42
  %45 = fptrunc double %44 to float
  %46 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 5
  %47 = load double, ptr %46, align 8, !tbaa !256
  %48 = fpext float %45 to double
  %49 = fmul double %47, %48
  %50 = getelementptr inbounds i8, ptr %1, i64 4
  %51 = fptrunc double %49 to float
  store float %51, ptr %2, align 4, !tbaa !74
  ret ptr %50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @PushLongPixel(i32 noundef %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !PGOFuncName !257 {
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 1
  br label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %1, i64 1
  %9 = load i8, ptr %1, align 1, !tbaa !68
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = getelementptr inbounds i8, ptr %1, i64 2
  %13 = load i8, ptr %8, align 1, !tbaa !68
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %15, %11
  %17 = getelementptr inbounds i8, ptr %1, i64 3
  %18 = load i8, ptr %12, align 1, !tbaa !68
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or disjoint i32 %16, %20
  %22 = load i8, ptr %17, align 1, !tbaa !68
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %21, %23
  br label %25

25:                                               ; preds = %7, %5
  %26 = phi i32 [ %24, %7 ], [ %6, %5 ]
  %27 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 %26, ptr %2, align 4, !tbaa !77
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %0) unnamed_addr #5 !PGOFuncName !258 {
  %2 = zext i32 %0 to i64
  %3 = add nuw nsw i64 %2, 32768
  %4 = udiv i64 %3, 65537
  %5 = trunc i64 %4 to i16
  ret i16 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @PushDoublePixel(ptr nocapture noundef readonly %0, ptr noalias noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !PGOFuncName !259 {
  %4 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !71
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 4
  %11 = getelementptr inbounds i8, ptr %1, i64 5
  %12 = load i8, ptr %10, align 1, !tbaa !68
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 32
  %15 = getelementptr inbounds i8, ptr %1, i64 6
  %16 = load i8, ptr %11, align 1, !tbaa !68
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 40
  %19 = or disjoint i64 %14, %9
  %20 = getelementptr inbounds i8, ptr %1, i64 7
  %21 = load i8, ptr %15, align 1, !tbaa !68
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 48
  %24 = load i8, ptr %20, align 1, !tbaa !68
  %25 = zext i8 %24 to i64
  %26 = shl nuw i64 %25, 56
  %27 = or disjoint i64 %19, %18
  %28 = or disjoint i64 %27, %23
  %29 = or disjoint i64 %28, %26
  br label %68

30:                                               ; preds = %3
  %31 = getelementptr inbounds i8, ptr %1, i64 1
  %32 = load i8, ptr %1, align 1, !tbaa !68
  %33 = zext i8 %32 to i64
  %34 = shl nuw i64 %33, 56
  %35 = getelementptr inbounds i8, ptr %1, i64 2
  %36 = load i8, ptr %31, align 1, !tbaa !68
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 48
  %39 = or disjoint i64 %38, %34
  %40 = getelementptr inbounds i8, ptr %1, i64 3
  %41 = load i8, ptr %35, align 1, !tbaa !68
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 40
  %44 = or disjoint i64 %39, %43
  %45 = getelementptr inbounds i8, ptr %1, i64 4
  %46 = load i8, ptr %40, align 1, !tbaa !68
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 32
  %49 = or disjoint i64 %44, %48
  %50 = getelementptr inbounds i8, ptr %1, i64 5
  %51 = load i8, ptr %45, align 1, !tbaa !68
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 24
  %54 = or disjoint i64 %49, %53
  %55 = getelementptr inbounds i8, ptr %1, i64 6
  %56 = load i8, ptr %50, align 1, !tbaa !68
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 16
  %59 = getelementptr inbounds i8, ptr %1, i64 7
  %60 = load i8, ptr %55, align 1, !tbaa !68
  %61 = zext i8 %60 to i64
  %62 = shl nuw nsw i64 %61, 8
  %63 = or disjoint i64 %54, %58
  %64 = load i8, ptr %59, align 1, !tbaa !68
  %65 = zext i8 %64 to i64
  %66 = or i64 %63, %62
  %67 = or i64 %66, %65
  br label %68

68:                                               ; preds = %30, %7
  %69 = phi i64 [ %67, %30 ], [ %29, %7 ]
  %70 = bitcast i64 %69 to double
  store i64 %69, ptr %2, align 8, !tbaa !79
  %71 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 3
  %72 = load double, ptr %71, align 8, !tbaa !255
  %73 = fsub double %70, %72
  store double %73, ptr %2, align 8, !tbaa !79
  %74 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 5
  %75 = load double, ptr %74, align 8, !tbaa !256
  %76 = fmul double %75, %73
  %77 = getelementptr inbounds i8, ptr %1, i64 8
  store double %76, ptr %2, align 8, !tbaa !79
  ret ptr %77
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @GetQuantumRange(i64 noundef %0) unnamed_addr #5 !PGOFuncName !260 {
  %2 = add i64 %0, -1
  %3 = shl i64 2, %2
  %4 = add i64 %3, -1
  ret i64 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @PushQuantumPixel(ptr nocapture noundef %0, ptr noalias noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #7 !PGOFuncName !261 {
  store i32 0, ptr %2, align 4, !tbaa !77
  %4 = load i64, ptr %0, align 8, !tbaa !66
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 2
  %8 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 1
  %9 = load i64, ptr %7, align 8, !tbaa !262
  br label %10

10:                                               ; preds = %6, %23
  %11 = phi i32 [ 0, %6 ], [ %39, %23 ]
  %12 = phi i64 [ %9, %6 ], [ %30, %23 ]
  %13 = phi i64 [ %4, %6 ], [ %29, %23 ]
  %14 = phi ptr [ %1, %6 ], [ %27, %23 ]
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %8, align 8, !tbaa !263
  br label %23

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %14, i64 1
  %20 = load i8, ptr %14, align 1, !tbaa !68
  %21 = zext i8 %20 to i32
  store i32 %21, ptr %8, align 8, !tbaa !263
  %22 = load i32, ptr %2, align 4, !tbaa !77
  br label %23

23:                                               ; preds = %16, %18
  %24 = phi i32 [ %21, %18 ], [ %17, %16 ]
  %25 = phi i32 [ %22, %18 ], [ %11, %16 ]
  %26 = phi i64 [ 8, %18 ], [ %12, %16 ]
  %27 = phi ptr [ %19, %18 ], [ %14, %16 ]
  %28 = tail call i64 @llvm.umin.i64(i64 %13, i64 %26)
  %29 = sub nsw i64 %13, %28
  %30 = sub i64 %26, %28
  store i64 %30, ptr %7, align 8, !tbaa !262
  %31 = trunc i64 %28 to i32
  %32 = shl i32 %25, %31
  %33 = trunc i64 %30 to i32
  %34 = lshr i32 %24, %33
  %35 = shl nsw i64 -1, %28
  %36 = trunc i64 %35 to i32
  %37 = xor i32 %36, -1
  %38 = and i32 %34, %37
  %39 = or i32 %38, %32
  store i32 %39, ptr %2, align 4, !tbaa !77
  %40 = icmp sgt i64 %29, 0
  br i1 %40, label %10, label %41, !llvm.loop !264

41:                                               ; preds = %23, %3
  %42 = phi ptr [ %1, %3 ], [ %27, %23 ]
  ret ptr %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %0, i64 noundef %1) unnamed_addr #5 !PGOFuncName !265 {
  %3 = uitofp i64 %0 to float
  %4 = fmul float %3, 6.553500e+04
  %5 = uitofp i64 %1 to float
  %6 = fdiv float %4, %5
  %7 = fpext float %6 to double
  %8 = fadd double %7, 5.000000e-01
  %9 = fptoui double %8 to i16
  ret i16 %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @PushQuantumLongPixel(ptr nocapture noundef %0, ptr noalias noundef %1, ptr nocapture noundef %2) unnamed_addr #4 !PGOFuncName !266 {
  store i32 0, ptr %2, align 4, !tbaa !77
  %4 = load i64, ptr %0, align 8, !tbaa !66
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %45

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 2
  %8 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %9 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 1
  %10 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 3
  %11 = load i64, ptr %7, align 8, !tbaa !262
  br label %12

12:                                               ; preds = %6, %24
  %13 = phi i32 [ 0, %6 ], [ %41, %24 ]
  %14 = phi i64 [ %4, %6 ], [ %26, %24 ]
  %15 = phi i64 [ %11, %6 ], [ %43, %24 ]
  %16 = phi i64 [ %4, %6 ], [ %42, %24 ]
  %17 = phi ptr [ %1, %6 ], [ %28, %24 ]
  %18 = icmp eq i64 %15, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32, ptr %8, align 8, !tbaa !71
  %21 = tail call fastcc ptr @PushLongPixel(i32 noundef %20, ptr noundef %17, ptr noundef nonnull %9) #11
  %22 = load i64, ptr %0, align 8, !tbaa !66
  %23 = load i32, ptr %2, align 4, !tbaa !77
  br label %24

24:                                               ; preds = %19, %12
  %25 = phi i32 [ %23, %19 ], [ %13, %12 ]
  %26 = phi i64 [ %22, %19 ], [ %14, %12 ]
  %27 = phi i64 [ 32, %19 ], [ %15, %12 ]
  %28 = phi ptr [ %21, %19 ], [ %17, %12 ]
  %29 = tail call i64 @llvm.umin.i64(i64 %16, i64 %27)
  %30 = load i32, ptr %9, align 8, !tbaa !263
  %31 = trunc i64 %27 to i32
  %32 = sub i32 32, %31
  %33 = lshr i32 %30, %32
  %34 = load ptr, ptr %10, align 8, !tbaa !267
  %35 = getelementptr inbounds i32, ptr %34, i64 %29
  %36 = load i32, ptr %35, align 4, !tbaa !77
  %37 = and i32 %33, %36
  %38 = sub i64 %26, %16
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %37, %39
  %41 = or i32 %40, %25
  store i32 %41, ptr %2, align 4, !tbaa !77
  %42 = sub nsw i64 %16, %29
  %43 = sub i64 %27, %29
  store i64 %43, ptr %7, align 8, !tbaa !262
  %44 = icmp sgt i64 %42, 0
  br i1 %44, label %12, label %45, !llvm.loop !268

45:                                               ; preds = %24, %3
  %46 = phi ptr [ %1, %3 ], [ %28, %24 ]
  ret ptr %46
}

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i16 @PushColormapIndex(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !PGOFuncName !269 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %5 = load i64, ptr %4, align 8, !tbaa !270
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = trunc i64 %1 to i16
  br label %10

9:                                                ; preds = %3
  store i32 1, ptr %2, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i16 [ %8, %7 ], [ 0, %9 ]
  ret i16 %11
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { hot nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

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
!53 = !{!42, !42, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!41, !42, i64 6}
!57 = distinct !{!57, !55}
!58 = !{!59, !36, i64 64}
!59 = !{!"_QuantumInfo", !39, i64 0, !39, i64 8, !36, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !39, i64 48, !36, i64 56, !36, i64 60, !36, i64 64, !39, i64 72, !40, i64 80, !39, i64 88, !36, i64 96, !60, i64 104, !40, i64 136, !39, i64 144}
!60 = !{!"_QuantumState", !43, i64 0, !36, i64 8, !39, i64 16, !40, i64 24}
!61 = !{!41, !42, i64 4}
!62 = !{!41, !42, i64 2}
!63 = !{!41, !42, i64 0}
!64 = distinct !{!64, !55}
!65 = !{!"quantum-import.c:ImportAlphaQuantum"}
!66 = !{!59, !39, i64 0}
!67 = !{!59, !39, i64 48}
!68 = !{!37, !37, i64 0}
!69 = distinct !{!69, !55}
!70 = !{!59, !36, i64 16}
!71 = !{!59, !36, i64 96}
!72 = distinct !{!72, !55}
!73 = distinct !{!73, !55}
!74 = !{!75, !75, i64 0}
!75 = !{!"float", !37, i64 0}
!76 = distinct !{!76, !55}
!77 = !{!36, !36, i64 0}
!78 = distinct !{!78, !55}
!79 = !{!43, !43, i64 0}
!80 = distinct !{!80, !55}
!81 = distinct !{!81, !55}
!82 = !{!"quantum-import.c:ImportBGRQuantum"}
!83 = distinct !{!83, !55}
!84 = !{!59, !36, i64 60}
!85 = distinct !{!85, !55}
!86 = !{!59, !39, i64 8}
!87 = distinct !{!87, !55}
!88 = distinct !{!88, !55}
!89 = distinct !{!89, !55}
!90 = distinct !{!90, !55}
!91 = distinct !{!91, !55}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
!94 = distinct !{!94, !55}
!95 = distinct !{!95, !55}
!96 = distinct !{!96, !55}
!97 = distinct !{!97, !55}
!98 = !{!"quantum-import.c:ImportBGRAQuantum"}
!99 = distinct !{!99, !55}
!100 = distinct !{!100, !55}
!101 = distinct !{!101, !55}
!102 = distinct !{!102, !55}
!103 = distinct !{!103, !55}
!104 = distinct !{!104, !55}
!105 = distinct !{!105, !55}
!106 = distinct !{!106, !55}
!107 = distinct !{!107, !55}
!108 = !{!"quantum-import.c:ImportBlackQuantum"}
!109 = !{!35, !36, i64 4}
!110 = distinct !{!110, !55}
!111 = distinct !{!111, !55}
!112 = distinct !{!112, !55}
!113 = distinct !{!113, !55}
!114 = distinct !{!114, !55}
!115 = distinct !{!115, !55}
!116 = distinct !{!116, !55}
!117 = !{!"quantum-import.c:ImportBlueQuantum"}
!118 = distinct !{!118, !55}
!119 = distinct !{!119, !55}
!120 = distinct !{!120, !55}
!121 = distinct !{!121, !55}
!122 = distinct !{!122, !55}
!123 = distinct !{!123, !55}
!124 = distinct !{!124, !55}
!125 = !{!"quantum-import.c:ImportCbYCrYQuantum"}
!126 = distinct !{!126, !55}
!127 = distinct !{!127, !55}
!128 = !{!35, !39, i64 56}
!129 = distinct !{!129, !55}
!130 = !{!"quantum-import.c:ImportCMYKQuantum"}
!131 = distinct !{!131, !55}
!132 = distinct !{!132, !55}
!133 = distinct !{!133, !55}
!134 = distinct !{!134, !55}
!135 = distinct !{!135, !55}
!136 = distinct !{!136, !55}
!137 = distinct !{!137, !55}
!138 = !{!"quantum-import.c:ImportCMYKAQuantum"}
!139 = distinct !{!139, !55}
!140 = distinct !{!140, !55}
!141 = distinct !{!141, !55}
!142 = distinct !{!142, !55}
!143 = distinct !{!143, !55}
!144 = distinct !{!144, !55}
!145 = distinct !{!145, !55}
!146 = !{!"quantum-import.c:ImportGrayQuantum"}
!147 = !{!59, !36, i64 56}
!148 = distinct !{!148, !55}
!149 = distinct !{!149, !55}
!150 = distinct !{!150, !55}
!151 = distinct !{!151, !55}
!152 = distinct !{!152, !55}
!153 = distinct !{!153, !55}
!154 = !{!35, !36, i64 408}
!155 = distinct !{!155, !55}
!156 = distinct !{!156, !55}
!157 = distinct !{!157, !55}
!158 = distinct !{!158, !55}
!159 = distinct !{!159, !55}
!160 = distinct !{!160, !55}
!161 = distinct !{!161, !55}
!162 = distinct !{!162, !55}
!163 = distinct !{!163, !55}
!164 = distinct !{!164, !55}
!165 = distinct !{!165, !55}
!166 = distinct !{!166, !55}
!167 = !{!"quantum-import.c:ImportGrayAlphaQuantum"}
!168 = distinct !{!168, !55}
!169 = distinct !{!169, !55}
!170 = distinct !{!170, !55}
!171 = distinct !{!171, !55}
!172 = distinct !{!172, !55}
!173 = distinct !{!173, !55}
!174 = distinct !{!174, !55}
!175 = distinct !{!175, !55}
!176 = distinct !{!176, !55}
!177 = distinct !{!177, !55}
!178 = distinct !{!178, !55}
!179 = distinct !{!179, !55}
!180 = distinct !{!180, !55}
!181 = !{!"quantum-import.c:ImportGreenQuantum"}
!182 = distinct !{!182, !55}
!183 = distinct !{!183, !55}
!184 = distinct !{!184, !55}
!185 = distinct !{!185, !55}
!186 = distinct !{!186, !55}
!187 = distinct !{!187, !55}
!188 = distinct !{!188, !55}
!189 = !{!"quantum-import.c:ImportIndexQuantum"}
!190 = !{!35, !36, i64 0}
!191 = !{!35, !40, i64 72}
!192 = distinct !{!192, !55}
!193 = distinct !{!193, !55}
!194 = distinct !{!194, !55}
!195 = distinct !{!195, !55}
!196 = distinct !{!196, !55}
!197 = distinct !{!197, !55}
!198 = distinct !{!198, !55}
!199 = distinct !{!199, !55}
!200 = distinct !{!200, !55}
!201 = distinct !{!201, !55}
!202 = distinct !{!202, !55}
!203 = !{!"quantum-import.c:ImportIndexAlphaQuantum"}
!204 = distinct !{!204, !55}
!205 = distinct !{!205, !55}
!206 = distinct !{!206, !55}
!207 = distinct !{!207, !55}
!208 = distinct !{!208, !55}
!209 = distinct !{!209, !55}
!210 = distinct !{!210, !55}
!211 = distinct !{!211, !55}
!212 = distinct !{!212, !55}
!213 = distinct !{!213, !55}
!214 = distinct !{!214, !55}
!215 = !{!"quantum-import.c:ImportRedQuantum"}
!216 = distinct !{!216, !55}
!217 = distinct !{!217, !55}
!218 = distinct !{!218, !55}
!219 = distinct !{!219, !55}
!220 = distinct !{!220, !55}
!221 = distinct !{!221, !55}
!222 = distinct !{!222, !55}
!223 = !{!"quantum-import.c:ImportRGBQuantum"}
!224 = distinct !{!224, !55}
!225 = distinct !{!225, !55}
!226 = distinct !{!226, !55}
!227 = distinct !{!227, !55}
!228 = distinct !{!228, !55}
!229 = distinct !{!229, !55}
!230 = distinct !{!230, !55}
!231 = distinct !{!231, !55}
!232 = distinct !{!232, !55}
!233 = distinct !{!233, !55}
!234 = distinct !{!234, !55}
!235 = distinct !{!235, !55}
!236 = distinct !{!236, !55}
!237 = !{!"quantum-import.c:ImportRGBAQuantum"}
!238 = distinct !{!238, !55}
!239 = distinct !{!239, !55}
!240 = distinct !{!240, !55}
!241 = distinct !{!241, !55}
!242 = distinct !{!242, !55}
!243 = distinct !{!243, !55}
!244 = distinct !{!244, !55}
!245 = distinct !{!245, !55}
!246 = distinct !{!246, !55}
!247 = !{!"quantum-import.c:PerceptibleReciprocal"}
!248 = !{!"quantum-import.c:ClampToQuantum"}
!249 = !{!"quantum-import.c:PushCharPixel"}
!250 = !{!"quantum-import.c:ScaleCharToQuantum"}
!251 = !{!"quantum-import.c:PushShortPixel"}
!252 = !{!"quantum-import.c:HalfToSinglePrecision"}
!253 = !{i32 22, i32 33}
!254 = !{!"quantum-import.c:PushFloatPixel"}
!255 = !{!59, !43, i64 24}
!256 = !{!59, !43, i64 40}
!257 = !{!"quantum-import.c:PushLongPixel"}
!258 = !{!"quantum-import.c:ScaleLongToQuantum"}
!259 = !{!"quantum-import.c:PushDoublePixel"}
!260 = !{!"quantum-import.c:GetQuantumRange"}
!261 = !{!"quantum-import.c:PushQuantumPixel"}
!262 = !{!59, !39, i64 120}
!263 = !{!59, !36, i64 112}
!264 = distinct !{!264, !55}
!265 = !{!"quantum-import.c:ScaleAnyToQuantum"}
!266 = !{!"quantum-import.c:PushQuantumLongPixel"}
!267 = !{!59, !40, i64 128}
!268 = distinct !{!268, !55}
!269 = !{!"quantum-import.c:PushColormapIndex"}
!270 = !{!35, !39, i64 64}
