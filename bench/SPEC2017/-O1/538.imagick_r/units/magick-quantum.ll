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

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireQuantumInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call dereferenceable_or_null(152) ptr @AcquireMagickMemory(i64 noundef 152) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @GetExceptionInfo(ptr noundef nonnull %3) #13
  %7 = tail call ptr @__errno_location() #14
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #13
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 125, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %9) #13
  %11 = call ptr @DestroyString(ptr noundef %9) #13
  call void @CatchException(ptr noundef nonnull %3) #13
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #13
  call void @MagickCoreTerminus() #13
  call void @_exit(i32 noundef 1) #15
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._QuantumInfo, ptr %4, i64 0, i32 16
  store i64 2880220587, ptr %14, align 8, !tbaa !38
  tail call void @GetQuantumInfo(ptr noundef %0, ptr noundef nonnull %4)
  %15 = icmp eq ptr %1, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 9
  %18 = load i64, ptr %17, align 8, !tbaa !44
  %19 = tail call i32 @SetQuantumDepth(ptr noundef nonnull %1, ptr noundef nonnull %4, i64 noundef %18), !range !57
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 34
  %21 = load i32, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct._QuantumInfo, ptr %4, i64 0, i32 13
  store i32 %21, ptr %22, align 8, !tbaa !59
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct._QuantumInfo, ptr %4, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._QuantumInfo, ptr %4, i64 0, i32 10
  %30 = load i64, ptr %29, align 8, !tbaa !61
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28, %42
  %33 = phi i64 [ %43, %42 ], [ 0, %28 ]
  %34 = load ptr, ptr %25, align 8, !tbaa !60
  %35 = getelementptr inbounds ptr, ptr %34, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !62
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %36) #13
  %40 = load ptr, ptr %25, align 8, !tbaa !60
  %41 = getelementptr inbounds ptr, ptr %40, i64 %33
  store ptr %39, ptr %41, align 8, !tbaa !62
  br label %42

42:                                               ; preds = %38, %32
  %43 = add nuw nsw i64 %33, 1
  %44 = load i64, ptr %29, align 8, !tbaa !61
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %32, label %46, !llvm.loop !63

46:                                               ; preds = %42, %28
  %47 = load ptr, ptr %25, align 8, !tbaa !60
  %48 = tail call ptr @RelinquishMagickMemory(ptr noundef %47) #13
  store ptr %48, ptr %25, align 8, !tbaa !60
  br label %49

49:                                               ; preds = %46, %24
  %50 = getelementptr inbounds %struct._QuantumInfo, ptr %4, i64 0, i32 15
  %51 = load ptr, ptr %50, align 8, !tbaa !66
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %50) #13
  br label %54

54:                                               ; preds = %49, %53
  store i64 -2880220588, ptr %14, align 8, !tbaa !38
  %55 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #13
  br label %56

56:                                               ; preds = %16, %54, %13
  %57 = phi ptr [ %4, %13 ], [ %55, %54 ], [ %4, %16 ]
  ret ptr %57
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare void @CatchException(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @GetQuantumInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %1, i32 noundef 0, i64 noundef 152) #13
  %4 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 1
  store i64 8, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 4
  store double 1.000000e+00, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 5
  store double 6.553500e+04, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 8
  store i32 1, ptr %7, align 4, !tbaa !70
  %8 = tail call ptr @AllocateSemaphoreInfo() #13
  %9 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 15
  store ptr %8, ptr %9, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 16
  store i64 2880220587, ptr %10, align 8, !tbaa !38
  %11 = icmp eq ptr %0, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call i64 @ParseCommandOption(i32 noundef 57, i32 noundef 0, ptr noundef nonnull %13) #13
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !71
  br label %19

19:                                               ; preds = %15, %12
  %20 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call double @InterpretLocaleValue(ptr noundef nonnull %20, ptr noundef null) #13
  %24 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 3
  store double %23, ptr %24, align 8, !tbaa !72
  br label %25

25:                                               ; preds = %22, %19
  %26 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call double @InterpretLocaleValue(ptr noundef nonnull %26, ptr noundef null) #13
  store double %29, ptr %5, align 8, !tbaa !68
  br label %30

30:                                               ; preds = %28, %25
  %31 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 3
  %32 = load double, ptr %31, align 8, !tbaa !72
  %33 = fcmp oeq double %32, 0.000000e+00
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load double, ptr %5, align 8, !tbaa !68
  %36 = fcmp oeq double %35, 0.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store double 0.000000e+00, ptr %6, align 8, !tbaa !69
  br label %46

38:                                               ; preds = %34, %30
  %39 = load double, ptr %5, align 8, !tbaa !68
  %40 = fcmp oeq double %32, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = fdiv double 6.553500e+04, %32
  store double %42, ptr %6, align 8, !tbaa !69
  store double 0.000000e+00, ptr %31, align 8, !tbaa !72
  br label %46

43:                                               ; preds = %38
  %44 = fsub double %39, %32
  %45 = fdiv double 6.553500e+04, %44
  store double %45, ptr %6, align 8, !tbaa !69
  br label %46

46:                                               ; preds = %41, %43, %37
  %47 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call double @InterpretLocaleValue(ptr noundef nonnull %47, ptr noundef null) #13
  store double %50, ptr %6, align 8, !tbaa !69
  br label %51

51:                                               ; preds = %49, %46
  %52 = tail call ptr @GetImageOption(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @LocaleCompare(ptr noundef nonnull %52, ptr noundef nonnull @.str.9) #13
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 7
  store i32 %57, ptr %58, align 8, !tbaa !73
  br label %59

59:                                               ; preds = %54, %51
  %60 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 14
  %61 = load i32, ptr %60, align 4, !tbaa !74
  %62 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  store i32 %61, ptr %62, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 14
  store double 1.000000e+00, ptr %63, align 8, !tbaa !76
  %64 = load double, ptr %6, align 8, !tbaa !69
  %65 = tail call double @llvm.fabs.f64(double %64)
  %66 = fcmp ult double %65, 1.000000e-15
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = fdiv double 1.000000e+00, %64
  store double %68, ptr %63, align 8, !tbaa !76
  br label %69

69:                                               ; preds = %59, %67
  %70 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 14, i32 1
  store i32 0, ptr %70, align 8, !tbaa !77
  %71 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 14, i32 2
  store i64 0, ptr %71, align 8, !tbaa !78
  %72 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 14, i32 3
  store ptr @ResetQuantumState.mask, ptr %72, align 8, !tbaa !79
  br label %73

73:                                               ; preds = %2, %69
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetQuantumDepth(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 665, ptr noundef nonnull @.str.10, ptr noundef nonnull %8) #13
  br label %10

10:                                               ; preds = %7, %3
  store i64 %2, ptr %1, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !71
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = icmp ugt i64 %2, 32
  %16 = icmp ugt i64 %2, 16
  %17 = select i1 %16, i64 32, i64 16
  %18 = select i1 %15, i64 64, i64 %17
  store i64 %18, ptr %1, align 8, !tbaa !81
  br label %19

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 10
  %25 = load i64, ptr %24, align 8, !tbaa !61
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23, %37
  %28 = phi i64 [ %38, %37 ], [ 0, %23 ]
  %29 = load ptr, ptr %20, align 8, !tbaa !60
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %31) #13
  %35 = load ptr, ptr %20, align 8, !tbaa !60
  %36 = getelementptr inbounds ptr, ptr %35, i64 %28
  store ptr %34, ptr %36, align 8, !tbaa !62
  br label %37

37:                                               ; preds = %33, %27
  %38 = add nuw nsw i64 %28, 1
  %39 = load i64, ptr %24, align 8, !tbaa !61
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %27, label %41, !llvm.loop !63

41:                                               ; preds = %37, %23
  %42 = load ptr, ptr %20, align 8, !tbaa !60
  %43 = tail call ptr @RelinquishMagickMemory(ptr noundef %42) #13
  store ptr %43, ptr %20, align 8, !tbaa !60
  br label %44

44:                                               ; preds = %41, %19
  %45 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  %46 = load i64, ptr %45, align 8, !tbaa !82
  %47 = add i64 %46, 6
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !83
  %50 = mul i64 %47, %49
  %51 = load i64, ptr %1, align 8, !tbaa !81
  %52 = add i64 %51, 7
  %53 = lshr i64 %52, 3
  %54 = mul i64 %50, %53
  %55 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #13
  %56 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 10
  store i64 %55, ptr %56, align 8, !tbaa !61
  %57 = tail call ptr @AcquireQuantumMemory(i64 noundef %55, i64 noundef 8) #16
  store ptr %57, ptr %20, align 8, !tbaa !60
  %58 = icmp eq ptr %57, null
  br i1 %58, label %85, label %59

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 12
  store i64 %54, ptr %60, align 8, !tbaa !84
  %61 = load i64, ptr %56, align 8, !tbaa !61
  %62 = shl i64 %61, 3
  %63 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %57, i32 noundef 0, i64 noundef %62) #13
  %64 = add i64 %54, 1
  %65 = load i64, ptr %56, align 8, !tbaa !61
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %59, %76
  %68 = phi i64 [ %82, %76 ], [ 0, %59 ]
  %69 = tail call ptr @AcquireQuantumMemory(i64 noundef %64, i64 noundef 1) #16
  %70 = load ptr, ptr %20, align 8, !tbaa !60
  %71 = getelementptr inbounds ptr, ptr %70, i64 %68
  store ptr %69, ptr %71, align 8, !tbaa !62
  %72 = load ptr, ptr %20, align 8, !tbaa !60
  %73 = getelementptr inbounds ptr, ptr %72, i64 %68
  %74 = load ptr, ptr %73, align 8, !tbaa !62
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %67
  %77 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %74, i32 noundef 0, i64 noundef %64) #13
  %78 = load ptr, ptr %20, align 8, !tbaa !60
  %79 = getelementptr inbounds ptr, ptr %78, i64 %68
  %80 = load ptr, ptr %79, align 8, !tbaa !62
  %81 = getelementptr inbounds i8, ptr %80, i64 %54
  store i8 -85, ptr %81, align 1, !tbaa !85
  %82 = add nuw nsw i64 %68, 1
  %83 = load i64, ptr %56, align 8, !tbaa !61
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %67, label %85, !llvm.loop !86

85:                                               ; preds = %67, %76, %59, %44
  %86 = phi i32 [ 0, %44 ], [ 1, %59 ], [ 1, %76 ], [ 0, %67 ]
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyQuantumInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 10
  %7 = load i64, ptr %6, align 8, !tbaa !61
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5, %19
  %10 = phi i64 [ %20, %19 ], [ 0, %5 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %13) #13
  %17 = load ptr, ptr %2, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 %10
  store ptr %16, ptr %18, align 8, !tbaa !62
  br label %19

19:                                               ; preds = %15, %9
  %20 = add nuw nsw i64 %10, 1
  %21 = load i64, ptr %6, align 8, !tbaa !61
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %9, label %23, !llvm.loop !63

23:                                               ; preds = %19, %5
  %24 = load ptr, ptr %2, align 8, !tbaa !60
  %25 = tail call ptr @RelinquishMagickMemory(ptr noundef %24) #13
  store ptr %25, ptr %2, align 8, !tbaa !60
  br label %26

26:                                               ; preds = %23, %1
  %27 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 15
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %27) #13
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 16
  store i64 -2880220588, ptr %32, align 8, !tbaa !38
  %33 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #13
  ret ptr %33
}

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
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
  %16 = load i32, ptr %15, align 4, !tbaa !70
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !83
  %20 = mul i64 %19, %14
  %21 = load i64, ptr %1, align 8, !tbaa !81
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GetQuantumEndian(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !59
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GetQuantumFormat(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !71
  ret i32 %3
}

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

declare ptr @GetImageOption(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @ResetQuantumState(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14
  store double 1.000000e+00, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 5
  %4 = load double, ptr %3, align 8, !tbaa !69
  %5 = tail call double @llvm.fabs.f64(double %4)
  %6 = fcmp ult double %5, 1.000000e-15
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = fdiv double 1.000000e+00, %4
  store double %8, ptr %2, align 8, !tbaa !76
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 1
  store i32 0, ptr %10, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 2
  store i64 0, ptr %11, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 14, i32 3
  store ptr @ResetQuantumState.mask, ptr %12, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @GetQuantumPixels(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetQuantumType(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !80
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 523, ptr noundef nonnull @.str.10, ptr noundef nonnull %7) #13
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 18, i32 15
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !88
  %16 = icmp eq i32 %15, 12
  %17 = select i1 %12, i32 5, i32 4
  %18 = select i1 %16, i32 %17, i32 %13
  %19 = tail call i32 @IsGrayImage(ptr noundef %0, ptr noundef %1) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %9
  %22 = load i32, ptr %10, align 8, !tbaa !87
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 8, i32 7
  br label %25

25:                                               ; preds = %21, %9
  %26 = phi i32 [ %24, %21 ], [ %18, %9 ]
  %27 = load i32, ptr %0, align 8, !tbaa !89
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, ptr %10, align 8, !tbaa !87
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 11, i32 10
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i32 [ %32, %29 ], [ %26, %25 ]
  ret i32 %34
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SetQuantumAlphaType(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 9
  store i32 %1, ptr %3, align 8, !tbaa !90
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetQuantumEndian(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 719, ptr noundef nonnull @.str.10, ptr noundef nonnull %8) #13
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 13
  store i32 %2, ptr %11, align 8, !tbaa !59
  %12 = load i64, ptr %1, align 8, !tbaa !81
  %13 = tail call i32 @SetQuantumDepth(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %12), !range !57
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetQuantumFormat(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 759, ptr noundef nonnull @.str.10, ptr noundef nonnull %8) #13
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 2
  store i32 %2, ptr %11, align 8, !tbaa !71
  %12 = load i64, ptr %1, align 8, !tbaa !81
  %13 = tail call i32 @SetQuantumDepth(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %12), !range !57
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @SetQuantumImageType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !80
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 798, ptr noundef nonnull @.str.10, ptr noundef nonnull %7) #13
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
  store i32 4, ptr %11, align 8, !tbaa !91
  br label %22

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 2, ptr %13, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %15 = load i64, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i64 %15, 1
  %17 = select i1 %16, i32 1, i32 2
  store i32 %17, ptr %13, align 8
  br label %22

18:                                               ; preds = %9, %9, %9, %9, %9, %9
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 8, ptr %19, align 8, !tbaa !91
  br label %22

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  store i32 6, ptr %21, align 8, !tbaa !91
  br label %22

22:                                               ; preds = %12, %20, %18, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SetQuantumPack(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 4, !tbaa !70
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SetQuantumPad(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 900, ptr noundef nonnull @.str.10, ptr noundef nonnull %8) #13
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._QuantumInfo, ptr %1, i64 0, i32 6
  store i64 %2, ptr %11, align 8, !tbaa !82
  %12 = load i64, ptr %1, align 8, !tbaa !81
  %13 = tail call i32 @SetQuantumDepth(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %12), !range !57
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SetQuantumMinIsWhite(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 7
  store i32 %1, ptr %3, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SetQuantumQuantum(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 1
  store i64 %1, ptr %3, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SetQuantumScale(ptr nocapture noundef writeonly %0, double noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._QuantumInfo, ptr %0, i64 0, i32 5
  store double %1, ptr %3, align 8, !tbaa !69
  ret void
}

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0,1) }

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
!60 = !{!39, !42, i64 80}
!61 = !{!39, !40, i64 72}
!62 = !{!42, !42, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!39, !42, i64 136}
!67 = !{!39, !40, i64 8}
!68 = !{!39, !41, i64 32}
!69 = !{!39, !41, i64 40}
!70 = !{!39, !35, i64 60}
!71 = !{!39, !35, i64 16}
!72 = !{!39, !41, i64 24}
!73 = !{!39, !35, i64 56}
!74 = !{!75, !35, i64 84}
!75 = !{!"_ImageInfo", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !40, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !41, i64 144, !41, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !35, i64 184, !35, i64 188, !40, i64 192, !35, i64 200, !35, i64 204, !35, i64 208, !40, i64 216, !35, i64 224, !35, i64 228, !42, i64 232, !42, i64 240, !35, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !42, i64 312, !40, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !35, i64 16712, !42, i64 16720, !40, i64 16728, !40, i64 16736, !46, i64 16744, !40, i64 16752, !35, i64 16760, !46, i64 16764, !42, i64 16776, !35, i64 16784}
!76 = !{!39, !41, i64 104}
!77 = !{!39, !35, i64 112}
!78 = !{!39, !40, i64 120}
!79 = !{!39, !42, i64 128}
!80 = !{!45, !35, i64 12976}
!81 = !{!39, !40, i64 0}
!82 = !{!39, !40, i64 48}
!83 = !{!45, !40, i64 40}
!84 = !{!39, !40, i64 88}
!85 = !{!36, !36, i64 0}
!86 = distinct !{!86, !64, !65}
!87 = !{!45, !35, i64 32}
!88 = !{!45, !35, i64 4}
!89 = !{!45, !35, i64 0}
!90 = !{!39, !35, i64 64}
!91 = !{!45, !35, i64 13184}
