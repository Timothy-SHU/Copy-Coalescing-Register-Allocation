; ModuleID = 'magick/quantum.c'
source_filename = "magick/quantum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._QuantumInfo = type { i64, i64, i32, double, double, double, i64, i32, i32, i32, i64, ptr, i64, i32, %struct._QuantumState, ptr, i64 }
%struct._QuantumState = type { double, i32, i64, ptr }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }

@.str = private unnamed_addr constant [17 x i8] c"magick/quantum.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"quantum:format\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"quantum:minimum\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"quantum:maximum\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"quantum:scale\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"quantum:polarity\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"min-is-white\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ResetQuantumState.mask = internal constant [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AcquireQuantumInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call dereferenceable_or_null(152) ptr @AcquireMagickMemory(i64 noundef 152) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @GetExceptionInfo(ptr noundef nonnull %3) #14
  %7 = tail call ptr @__errno_location() #15
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #14
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 125, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %9) #14
  %11 = call ptr @DestroyString(ptr noundef %9) #14
  call void @CatchException(ptr noundef nonnull %3) #14
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._QuantumInfo, ptr %4, i64 0, i32 16
  store i64 2880220587, ptr %14, align 8, !tbaa !38
  tail call void @GetQuantumInfo(ptr noundef %0, ptr noundef nonnull %4) #17
  %15 = icmp eq ptr %1, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 9
  %18 = load i64, ptr %17, align 8, !tbaa !44
  %19 = tail call i32 @SetQuantumDepth(ptr noundef nonnull %1, ptr noundef nonnull %4, i64 noundef %18) #17, !range !57
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 34
  %21 = load i32, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct._QuantumInfo, ptr %4, i64 0, i32 13
  store i32 %21, ptr %22, align 8, !tbaa !59
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %4) #17
  br label %26

26:                                               ; preds = %16, %24, %13
  %27 = phi ptr [ %4, %13 ], [ %25, %24 ], [ %4, %16 ]
  ret ptr %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetQuantumInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %1, i32 noundef 0, i64 noundef 152) #14
  %4 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 1
  store i64 8, ptr %4, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 4
  %6 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 5
  store <2 x double> <double 1.000000e+00, double 6.553500e+04>, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 8
  store i32 1, ptr %7, align 4, !tbaa !62
  %8 = tail call ptr @AllocateSemaphoreInfo() #14
  %9 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 15
  store ptr %8, ptr %9, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 16
  store i64 2880220587, ptr %10, align 8, !tbaa !38
  %11 = icmp eq ptr %0, null
  br i1 %11, label %64, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call i64 @ParseCommandOption(i32 noundef 57, i32 noundef 0, ptr noundef nonnull %13) #14
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %15, %12
  %20 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc double @StringToDouble(ptr noundef nonnull %20) #17
  %24 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 3
  store double %23, ptr %24, align 8, !tbaa !65
  br label %25

25:                                               ; preds = %22, %19
  %26 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load double, ptr %5, align 8, !tbaa !66
  br label %32

30:                                               ; preds = %25
  %31 = tail call fastcc double @StringToDouble(ptr noundef nonnull %26) #17
  store double %31, ptr %5, align 8, !tbaa !66
  br label %32

32:                                               ; preds = %28, %30
  %33 = phi double [ %29, %28 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 3
  %35 = load double, ptr %34, align 8, !tbaa !65
  %36 = fcmp oeq double %35, 0.000000e+00
  %37 = fcmp oeq double %33, 0.000000e+00
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store double 0.000000e+00, ptr %6, align 8, !tbaa !67
  br label %47

40:                                               ; preds = %32
  %41 = fcmp oeq double %35, %33
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = fdiv double 6.553500e+04, %35
  store double %43, ptr %6, align 8, !tbaa !67
  store double 0.000000e+00, ptr %34, align 8, !tbaa !65
  br label %47

44:                                               ; preds = %40
  %45 = fsub double %33, %35
  %46 = fdiv double 6.553500e+04, %45
  store double %46, ptr %6, align 8, !tbaa !67
  br label %47

47:                                               ; preds = %42, %44, %39
  %48 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call fastcc double @StringToDouble(ptr noundef nonnull %48) #17
  store double %51, ptr %6, align 8, !tbaa !67
  br label %52

52:                                               ; preds = %50, %47
  %53 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @LocaleCompare(ptr noundef nonnull %53, ptr noundef nonnull @.str.9) #14
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  store i32 %58, ptr %59, align 8, !tbaa !68
  br label %60

60:                                               ; preds = %55, %52
  %61 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  %62 = load i32, ptr %61, align 4, !tbaa !69
  %63 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  store i32 %62, ptr %63, align 8, !tbaa !59
  tail call void @ResetQuantumState(ptr noundef nonnull %1) #17
  br label %64

64:                                               ; preds = %2, %60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetQuantumDepth(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !71
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 665, ptr noundef nonnull @.str.10, ptr noundef nonnull %8) #14
  br label %10

10:                                               ; preds = %7, %3
  store i64 %2, ptr %1, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !64
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = icmp ugt i64 %2, 32
  %16 = icmp ugt i64 %2, 16
  %17 = select i1 %16, i64 32, i64 16
  %18 = select i1 %15, i64 64, i64 %17
  store i64 %18, ptr %1, align 8, !tbaa !72
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i64 [ %2, %10 ], [ %18, %14 ]
  %21 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  tail call fastcc void @DestroyQuantumPixels(ptr noundef nonnull %1) #17
  %25 = load i64, ptr %1, align 8, !tbaa !72
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i64 [ %25, %24 ], [ %20, %19 ]
  %28 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %29 = load i64, ptr %28, align 8, !tbaa !74
  %30 = add i64 %29, 6
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %32 = load i64, ptr %31, align 8, !tbaa !75
  %33 = mul i64 %30, %32
  %34 = add i64 %27, 7
  %35 = lshr i64 %34, 3
  %36 = mul i64 %33, %35
  %37 = tail call fastcc i32 @AcquireQuantumPixels(ptr noundef nonnull %1, i64 noundef %36) #17, !range !57
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyQuantumInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @DestroyQuantumPixels(ptr noundef nonnull %0) #17
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 16
  store i64 -2880220588, ptr %12, align 8, !tbaa !38
  %13 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #14
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @DestroyQuantumPixels(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !76 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 10
  %3 = load i64, ptr %2, align 8, !tbaa !77
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 11
  br label %7

7:                                                ; preds = %5, %19
  %8 = phi i64 [ %3, %5 ], [ %20, %19 ]
  %9 = phi i64 [ 0, %5 ], [ %21, %19 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !73
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %12) #14
  %16 = load ptr, ptr %6, align 8, !tbaa !73
  %17 = getelementptr inbounds ptr, ptr %16, i64 %9
  store ptr %15, ptr %17, align 8, !tbaa !78
  %18 = load i64, ptr %2, align 8, !tbaa !77
  br label %19

19:                                               ; preds = %7, %14
  %20 = phi i64 [ %8, %7 ], [ %18, %14 ]
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp slt i64 %21, %20
  br i1 %22, label %7, label %23, !llvm.loop !79

23:                                               ; preds = %19, %1
  %24 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = tail call ptr @RelinquishMagickMemory(ptr noundef %25) #14
  store ptr %26, ptr %24, align 8, !tbaa !73
  ret void
}

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @GetQuantumExtent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  switch i32 %2, label %13 [
    i32 7, label %4
    i32 10, label %5
    i32 18, label %6
    i32 26, label %7
    i32 15, label %8
    i32 17, label %9
    i32 16, label %10
    i32 5, label %11
    i32 4, label %12
  ]

4:                                                ; preds = %3
  br label %13

5:                                                ; preds = %3
  br label %13

6:                                                ; preds = %3
  br label %13

7:                                                ; preds = %3
  br label %13

8:                                                ; preds = %3
  br label %13

9:                                                ; preds = %3
  br label %13

10:                                               ; preds = %3
  br label %13

11:                                               ; preds = %3
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %3, %12, %11, %10, %9, %8, %7, %6, %5, %4
  %14 = phi i64 [ 1, %3 ], [ 5, %12 ], [ 4, %11 ], [ 4, %10 ], [ 4, %9 ], [ 4, %8 ], [ 3, %7 ], [ 3, %6 ], [ 2, %5 ], [ 2, %4 ]
  %15 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !62
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !75
  %20 = mul i64 %19, %14
  %21 = load i64, ptr %1, align 8, !tbaa !72
  br i1 %17, label %22, label %26

22:                                               ; preds = %13
  %23 = add i64 %21, 7
  %24 = lshr i64 %23, 3
  %25 = mul i64 %20, %24
  br label %30

26:                                               ; preds = %13
  %27 = mul i64 %20, %21
  %28 = add i64 %27, 7
  %29 = lshr i64 %28, 3
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i64 [ %25, %22 ], [ %29, %26 ]
  ret i64 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GetQuantumEndian(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !59
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GetQuantumFormat(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !64
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 !PGOFuncName !81 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #14
  ret double %2
}

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define hidden void @ResetQuantumState(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14
  store double 1.000000e+00, ptr %2, align 8, !tbaa !82
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 5
  %4 = load double, ptr %3, align 8, !tbaa !67
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 1.000000e-15
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = fdiv double 1.000000e+00, %4
  store double %8, ptr %2, align 8, !tbaa !82
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 1
  store i32 0, ptr %10, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 2
  store i64 0, ptr %11, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 3
  store ptr @ResetQuantumState.mask, ptr %12, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @GetQuantumPixels(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetQuantumType(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !71
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 523, ptr noundef nonnull @.str.10, ptr noundef nonnull %7) #14
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 18, i32 15
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !87
  %16 = icmp eq i32 %15, 12
  %17 = select i1 %12, i32 5, i32 4
  %18 = select i1 %16, i32 %17, i32 %13
  %19 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef %1) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %9
  %22 = load i32, ptr %10, align 8, !tbaa !86
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 8, i32 7
  br label %25

25:                                               ; preds = %21, %9
  %26 = phi i32 [ %24, %21 ], [ %18, %9 ]
  %27 = load i32, ptr %0, align 8, !tbaa !88
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, ptr %10, align 8, !tbaa !86
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 11, i32 10
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i32 [ %32, %29 ], [ %26, %25 ]
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SetQuantumAlphaType(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 9
  store i32 %1, ptr %3, align 8, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @AcquireQuantumPixels(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #0 !PGOFuncName !90 {
  %3 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #14
  %4 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 10
  store i64 %3, ptr %4, align 8, !tbaa !77
  %5 = tail call ptr @AcquireQuantumMemory(i64 noundef %3, i64 noundef 8) #18
  %6 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 11
  store ptr %5, ptr %6, align 8, !tbaa !73
  %7 = icmp eq ptr %5, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 12
  store i64 %1, ptr %9, align 8, !tbaa !91
  %10 = load i64, ptr %4, align 8, !tbaa !77
  %11 = shl i64 %10, 3
  %12 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %5, i32 noundef 0, i64 noundef %11) #14
  %13 = add i64 %1, 1
  %14 = load i64, ptr %4, align 8, !tbaa !77
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %8, %25
  %17 = phi i64 [ %31, %25 ], [ 0, %8 ]
  %18 = tail call ptr @AcquireQuantumMemory(i64 noundef %13, i64 noundef 1) #18
  %19 = load ptr, ptr %6, align 8, !tbaa !73
  %20 = getelementptr inbounds ptr, ptr %19, i64 %17
  store ptr %18, ptr %20, align 8, !tbaa !78
  %21 = load ptr, ptr %6, align 8, !tbaa !73
  %22 = getelementptr inbounds ptr, ptr %21, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !78
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %16
  %26 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %23, i32 noundef 0, i64 noundef %13) #14
  %27 = load ptr, ptr %6, align 8, !tbaa !73
  %28 = getelementptr inbounds ptr, ptr %27, i64 %17
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = getelementptr inbounds i8, ptr %29, i64 %1
  store i8 -85, ptr %30, align 1, !tbaa !92
  %31 = add nuw nsw i64 %17, 1
  %32 = load i64, ptr %4, align 8, !tbaa !77
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %16, label %34, !llvm.loop !93

34:                                               ; preds = %16, %25, %8, %2
  %35 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 0, %16 ], [ 1, %25 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetQuantumEndian(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !71
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 719, ptr noundef nonnull @.str.10, ptr noundef nonnull %8) #14
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  store i32 %2, ptr %11, align 8, !tbaa !59
  %12 = load i64, ptr %1, align 8, !tbaa !72
  %13 = tail call i32 @SetQuantumDepth(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %12) #17, !range !57
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetQuantumFormat(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !71
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 759, ptr noundef nonnull @.str.10, ptr noundef nonnull %8) #14
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  store i32 %2, ptr %11, align 8, !tbaa !64
  %12 = load i64, ptr %1, align 8, !tbaa !72
  %13 = tail call i32 @SetQuantumDepth(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %12) #17, !range !57
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetQuantumImageType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !71
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 798, ptr noundef nonnull @.str.10, ptr noundef nonnull %7) #14
  br label %9

9:                                                ; preds = %6, %2
  switch i32 %1, label %20 [
    i32 11, label %10
    i32 10, label %10
    i32 8, label %12
    i32 7, label %12
    i32 6, label %18
    i32 12, label %18
    i32 19, label %18
    i32 2, label %18
    i32 5, label %18
    i32 4, label %18
  ]

10:                                               ; preds = %9, %9
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 4, ptr %11, align 8, !tbaa !94
  br label %22

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %15 = load i64, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i64 %15, 1
  %17 = select i1 %16, i32 1, i32 2
  store i32 %17, ptr %13, align 8
  br label %22

18:                                               ; preds = %9, %9, %9, %9, %9, %9
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 8, ptr %19, align 8, !tbaa !94
  br label %22

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 6, ptr %21, align 8, !tbaa !94
  br label %22

22:                                               ; preds = %12, %20, %18, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SetQuantumPack(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 4, !tbaa !62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SetQuantumPad(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !71
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 900, ptr noundef nonnull @.str.10, ptr noundef nonnull %8) #14
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  store i64 %2, ptr %11, align 8, !tbaa !74
  %12 = load i64, ptr %1, align 8, !tbaa !72
  %13 = tail call i32 @SetQuantumDepth(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %12) #17, !range !57
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SetQuantumMinIsWhite(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 7
  store i32 %1, ptr %3, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SetQuantumQuantum(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  store i64 %1, ptr %3, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SetQuantumScale(ptr nocapture noundef writeonly %0, double noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 5
  store double %1, ptr %3, align 8, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize allocsize(0,1) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 144}
!39 = !{!"_QuantumInfo", !40, i64 0, !40, i64 8, !35, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !40, i64 48, !35, i64 56, !35, i64 60, !35, i64 64, !40, i64 72, !42, i64 80, !40, i64 88, !35, i64 96, !43, i64 104, !42, i64 136, !40, i64 144}
!40 = !{!"long", !36, i64 0}
!41 = !{!"double", !36, i64 0}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!"_QuantumState", !41, i64 0, !35, i64 8, !40, i64 16, !42, i64 24}
!44 = !{!45, !40, i64 56}
!45 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !41, i64 104, !48, i64 112, !35, i64 208, !42, i64 216, !35, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !40, i64 256, !41, i64 264, !41, i64 272, !50, i64 280, !50, i64 312, !50, i64 344, !41, i64 376, !41, i64 384, !41, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !42, i64 424, !40, i64 432, !40, i64 440, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !51, i64 480, !52, i64 504, !42, i64 568, !42, i64 576, !42, i64 584, !42, i64 592, !42, i64 600, !42, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !40, i64 12904, !40, i64 12912, !54, i64 12920, !35, i64 12976, !40, i64 12984, !42, i64 12992, !55, i64 13000, !55, i64 13032, !42, i64 13064, !40, i64 13072, !40, i64 13080, !42, i64 13088, !42, i64 13096, !42, i64 13104, !35, i64 13112, !35, i64 13116, !46, i64 13120, !42, i64 13128, !50, i64 13136, !42, i64 13168, !42, i64 13176, !35, i64 13184, !35, i64 13188, !56, i64 13192, !35, i64 13200, !40, i64 13208, !40, i64 13216, !35, i64 13224, !40, i64 13232}
!46 = !{!"_PixelPacket", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6}
!47 = !{!"short", !36, i64 0}
!48 = !{!"_ChromaticityInfo", !49, i64 0, !49, i64 24, !49, i64 48, !49, i64 72}
!49 = !{!"_PrimaryInfo", !41, i64 0, !41, i64 8, !41, i64 16}
!50 = !{!"_RectangleInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!51 = !{!"_ErrorInfo", !41, i64 0, !41, i64 8, !41, i64 16}
!52 = !{!"_TimerInfo", !53, i64 0, !53, i64 24, !35, i64 48, !40, i64 56}
!53 = !{!"_Timer", !41, i64 0, !41, i64 8, !41, i64 16}
!54 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !42, i64 8, !42, i64 16, !42, i64 24, !35, i64 32, !42, i64 40, !40, i64 48}
!55 = !{!"_ProfileInfo", !42, i64 0, !40, i64 8, !42, i64 16, !40, i64 24}
!56 = !{!"long long", !36, i64 0}
!57 = !{i32 0, i32 2}
!58 = !{!45, !35, i64 408}
!59 = !{!39, !35, i64 96}
!60 = !{!39, !40, i64 8}
!61 = !{!41, !41, i64 0}
!62 = !{!39, !35, i64 60}
!63 = !{!39, !42, i64 136}
!64 = !{!39, !35, i64 16}
!65 = !{!39, !41, i64 24}
!66 = !{!39, !41, i64 32}
!67 = !{!39, !41, i64 40}
!68 = !{!39, !35, i64 56}
!69 = !{!70, !35, i64 84}
!70 = !{!"_ImageInfo", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !40, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !41, i64 144, !41, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !35, i64 184, !35, i64 188, !40, i64 192, !35, i64 200, !35, i64 204, !35, i64 208, !40, i64 216, !35, i64 224, !35, i64 228, !42, i64 232, !42, i64 240, !35, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !42, i64 312, !40, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !35, i64 16712, !42, i64 16720, !40, i64 16728, !40, i64 16736, !46, i64 16744, !40, i64 16752, !35, i64 16760, !46, i64 16764, !42, i64 16776, !35, i64 16784}
!71 = !{!45, !35, i64 12976}
!72 = !{!39, !40, i64 0}
!73 = !{!39, !42, i64 80}
!74 = !{!39, !40, i64 48}
!75 = !{!45, !40, i64 40}
!76 = !{!"quantum.c:DestroyQuantumPixels"}
!77 = !{!39, !40, i64 72}
!78 = !{!42, !42, i64 0}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"quantum.c:StringToDouble"}
!82 = !{!39, !41, i64 104}
!83 = !{!39, !35, i64 112}
!84 = !{!39, !40, i64 120}
!85 = !{!39, !42, i64 128}
!86 = !{!45, !35, i64 32}
!87 = !{!45, !35, i64 4}
!88 = !{!45, !35, i64 0}
!89 = !{!39, !35, i64 64}
!90 = !{!"quantum.c:AcquireQuantumPixels"}
!91 = !{!39, !40, i64 88}
!92 = !{!36, !36, i64 0}
!93 = distinct !{!93, !80}
!94 = !{!45, !35, i64 13184}
