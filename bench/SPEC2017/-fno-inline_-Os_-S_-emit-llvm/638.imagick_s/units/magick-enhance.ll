; ModuleID = 'magick/enhance.c'
source_filename = "magick/enhance.c"
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
%struct._ColorCorrection = type { %struct._Correction, %struct._Correction, %struct._Correction, double }
%struct._Correction = type { double, double, double }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._QuantumPixelPacket = type { i16, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [17 x i8] c"magick/enhance.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ColorCorrection\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SOPNode\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Slope\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Power\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"SATNode\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"  Color Correction Collection:\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"  color_correction.red.slope: %g\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"  color_correction.red.offset: %g\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"  color_correction.red.power: %g\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"  color_correction.green.slope: %g\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"  color_correction.green.offset: %g\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"  color_correction.green.power: %g\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"  color_correction.blue.slope: %g\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"  color_correction.blue.offset: %g\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"  color_correction.blue.power: %g\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"  color_correction.saturation: %g\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_ColorDecisionListImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.23 = private unnamed_addr constant [24 x i8] c"ColorDecisionList/Image\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.gomp_critical_user_MagickCore_ClutImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"Clut/Image\00", align 1
@.gomp_critical_user_MagickCore_ContrastImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [15 x i8] c"Contrast/Image\00", align 1
@.gomp_critical_user_MagickCore_ContrastStretchImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.27 = private unnamed_addr constant [22 x i8] c"ContrastStretch/Image\00", align 1
@.gomp_critical_user_MagickCore_EnhanceImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.28 = private unnamed_addr constant [14 x i8] c"Enhance/Image\00", align 1
@.gomp_critical_user_MagickCore_EqualizeImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [15 x i8] c"Equalize/Image\00", align 1
@.gomp_critical_user_MagickCore_GammaImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [19 x i8] c"GammaCorrect/Image\00", align 1
@.gomp_critical_user_MagickCore_GrayscaleImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.31 = private unnamed_addr constant [16 x i8] c"Grayscale/Image\00", align 1
@.gomp_critical_user_MagickCore_HaldClutImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.gomp_critical_user_MagickCore_LevelImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.32 = private unnamed_addr constant [12 x i8] c"Level/Image\00", align 1
@.gomp_critical_user_MagickCore_LevelizeImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.33 = private unnamed_addr constant [15 x i8] c"Levelize/Image\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"modulate:colorspace\00", align 1
@.gomp_critical_user_MagickCore_ModulateImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.35 = private unnamed_addr constant [15 x i8] c"Modulate/Image\00", align 1
@.gomp_critical_user_MagickCore_NegateImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.36 = private unnamed_addr constant [13 x i8] c"Negate/Image\00", align 1
@.gomp_critical_user_MagickCore_SigmoidalContrastImageChannel.var = common global [8 x i32] zeroinitializer, align 8
@.str.38 = private unnamed_addr constant [24 x i8] c"SigmoidalContrast/Image\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AutoGammaImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @AutoGammaImageChannel(ptr noundef %0, i32 noundef 134217719) #17
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AutoGammaImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = and i32 %1, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %9 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %8) #18
  %10 = load double, ptr %3, align 8, !tbaa !6
  %11 = fmul double %10, 0x3EF0001000100010
  %12 = call double @log(double noundef %11) #18
  %13 = fdiv double %12, 0xBFE62E42FEFA39EF
  %14 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %13) #17
  br label %91

15:                                               ; preds = %2
  %16 = and i32 %1, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %20 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %19) #18
  %21 = load double, ptr %3, align 8, !tbaa !6
  %22 = fmul double %21, 0x3EF0001000100010
  %23 = call double @log(double noundef %22) #18
  %24 = fdiv double %23, 0xBFE62E42FEFA39EF
  %25 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 1, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %24) #17
  %26 = and i32 %25, 1
  br label %27

27:                                               ; preds = %18, %15
  %28 = phi i32 [ %26, %18 ], [ 1, %15 ]
  %29 = and i32 %1, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %33 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %32) #18
  %34 = load double, ptr %3, align 8, !tbaa !6
  %35 = fmul double %34, 0x3EF0001000100010
  %36 = call double @log(double noundef %35) #18
  %37 = fdiv double %36, 0xBFE62E42FEFA39EF
  %38 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 2, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %37) #17
  %39 = and i32 %38, %28
  br label %40

40:                                               ; preds = %31, %27
  %41 = phi i32 [ %39, %31 ], [ %28, %27 ]
  %42 = and i32 %1, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %46 = call i32 @GetImageChannelMean(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %45) #18
  %47 = load double, ptr %3, align 8, !tbaa !6
  %48 = fmul double %47, 0x3EF0001000100010
  %49 = call double @log(double noundef %48) #18
  %50 = fdiv double %49, 0xBFE62E42FEFA39EF
  %51 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 4, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %50) #17
  %52 = and i32 %51, %41
  br label %53

53:                                               ; preds = %44, %40
  %54 = phi i32 [ %52, %44 ], [ %41, %40 ]
  %55 = and i32 %1, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %63 = call i32 @GetImageChannelMean(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %62) #18
  %64 = load double, ptr %3, align 8, !tbaa !6
  %65 = fmul double %64, 0x3EF0001000100010
  %66 = call double @log(double noundef %65) #18
  %67 = fdiv double %66, 0xBFE62E42FEFA39EF
  %68 = call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 8, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %67) #17
  %69 = and i32 %68, %54
  br label %70

70:                                               ; preds = %61, %57, %53
  %71 = phi i32 [ %69, %61 ], [ %54, %57 ], [ %54, %53 ]
  %72 = and i32 %1, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !26
  %77 = icmp eq i32 %76, 12
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %80 = call i32 @GetImageChannelMean(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %79) #18
  %81 = load double, ptr %3, align 8, !tbaa !6
  %82 = fmul double %81, 0x3EF0001000100010
  %83 = call double @log(double noundef %82) #18
  %84 = fdiv double %83, 0xBFE62E42FEFA39EF
  %85 = call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 32, double noundef 0.000000e+00, double noundef 6.553500e+04, double noundef %84) #17
  %86 = and i32 %85, %71
  br label %87

87:                                               ; preds = %78, %74, %70
  %88 = phi i32 [ %86, %78 ], [ %71, %74 ], [ %71, %70 ]
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i32
  br label %91

91:                                               ; preds = %87, %7
  %92 = phi i32 [ %14, %7 ], [ %90, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %92
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImageChannelMean(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !27
  store i32 %1, ptr %7, align 4, !tbaa !28
  store double %2, ptr %8, align 8, !tbaa !6
  store double %3, ptr %9, align 8, !tbaa !6
  store double %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2961, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #18
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i32, ptr %0, align 8, !tbaa !30
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %90

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %27 = load i64, ptr %26, align 8, !tbaa !31
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %90

29:                                               ; preds = %25
  %30 = and i32 %1, 1
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %33 = and i32 %1, 2
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %1, 4
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %1, 8
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %29, %86
  %40 = phi i64 [ 0, %29 ], [ %87, %86 ]
  br i1 %31, label %51, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %32, align 8, !tbaa !32
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %42, i64 %40, i32 2
  %44 = load i16, ptr %43, align 2, !tbaa !33
  %45 = uitofp i16 %44 to float
  %46 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %45) #17
  %47 = fptrunc double %46 to float
  %48 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %47) #17
  %49 = load ptr, ptr %32, align 8, !tbaa !32
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %49, i64 %40, i32 2
  store i16 %48, ptr %50, align 2, !tbaa !33
  br label %51

51:                                               ; preds = %41, %39
  br i1 %34, label %62, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %32, align 8, !tbaa !32
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 %40, i32 1
  %55 = load i16, ptr %54, align 2, !tbaa !34
  %56 = uitofp i16 %55 to float
  %57 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %56) #17
  %58 = fptrunc double %57 to float
  %59 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %58) #17
  %60 = load ptr, ptr %32, align 8, !tbaa !32
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 %40, i32 1
  store i16 %59, ptr %61, align 2, !tbaa !34
  br label %62

62:                                               ; preds = %52, %51
  br i1 %36, label %73, label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr %32, align 8, !tbaa !32
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %40
  %66 = load i16, ptr %65, align 2, !tbaa !35
  %67 = uitofp i16 %66 to float
  %68 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %67) #17
  %69 = fptrunc double %68 to float
  %70 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %69) #17
  %71 = load ptr, ptr %32, align 8, !tbaa !32
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 %40
  store i16 %70, ptr %72, align 2, !tbaa !35
  br label %73

73:                                               ; preds = %63, %62
  br i1 %38, label %86, label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %32, align 8, !tbaa !32
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 %40, i32 3
  %77 = load i16, ptr %76, align 2, !tbaa !36
  %78 = xor i16 %77, -1
  %79 = uitofp i16 %78 to float
  %80 = tail call fastcc double @LevelPixel(double noundef %2, double noundef %3, double noundef %4, float noundef %79) #17
  %81 = fptrunc double %80 to float
  %82 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %81) #17
  %83 = xor i16 %82, -1
  %84 = load ptr, ptr %32, align 8, !tbaa !32
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 %40, i32 3
  store i16 %83, ptr %85, align 2, !tbaa !36
  br label %86

86:                                               ; preds = %73, %74
  %87 = add nuw nsw i64 %40, 1
  %88 = load i64, ptr %26, align 8, !tbaa !31
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %39, label %90, !llvm.loop !37

90:                                               ; preds = %86, %25, %22
  store i32 1, ptr %13, align 4, !tbaa !28
  store i64 0, ptr %14, align 8, !tbaa !39
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %91, ptr %12, align 8, !tbaa !27
  %92 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %91) #18
  store ptr %92, ptr %11, align 8, !tbaa !27
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %94 = load i64, ptr %93, align 8, !tbaa !40
  %95 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %96 = shl i64 %95, 5
  %97 = icmp ugt i64 %94, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %110

106:                                              ; preds = %101, %98, %90
  %107 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %108 = icmp ult i64 %107, 2
  %109 = select i1 %108, i64 1, i64 2
  br label %110

110:                                              ; preds = %106, %104
  %111 = phi i64 [ %105, %104 ], [ %109, %106 ]
  %112 = trunc i64 %111 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %112)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @LevelImageChannel.omp_outlined, ptr nonnull %6, ptr nonnull %13, ptr nonnull %11, ptr nonnull %12, ptr nonnull %7, ptr nonnull %8, ptr nonnull %9, ptr nonnull %10, ptr nonnull %14)
  %113 = load ptr, ptr %11, align 8, !tbaa !27
  %114 = call ptr @DestroyCacheView(ptr noundef %113) #18
  store ptr %114, ptr %11, align 8, !tbaa !27
  %115 = load ptr, ptr %6, align 8, !tbaa !27
  %116 = call i32 @ClampImage(ptr noundef %115) #18
  %117 = load i32, ptr %13, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  ret i32 %117
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AutoLevelImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @AutoLevelImageChannel(ptr noundef %0, i32 noundef 134217719) #17
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AutoLevelImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @MinMaxStretchImage(ptr noundef %0, i32 noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @MinMaxStretchImage(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BrightnessContrastImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @BrightnessContrastImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2) #17
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BrightnessContrastImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 301, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #18
  br label %12

12:                                               ; preds = %9, %4
  %13 = fdiv double %3, 1.000000e+02
  %14 = fadd double %13, 1.000000e+00
  %15 = fmul double %14, 0x400921FB54442D18
  %16 = fmul double %15, 2.500000e-01
  %17 = tail call double @tan(double noundef %16) #18
  %18 = fcmp olt double %17, 0.000000e+00
  %19 = select i1 %18, double 0.000000e+00, double %17
  %20 = fdiv double %2, 1.000000e+02
  %21 = fsub double 1.000000e+02, %2
  %22 = fdiv double %21, 2.000000e+02
  %23 = fsub double 1.000000e+00, %19
  %24 = tail call double @llvm.fmuladd.f64(double %22, double %23, double %20)
  store double %19, ptr %5, align 16, !tbaa !6
  %25 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  store double %24, ptr %25, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = call i32 @FunctionImageChannel(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i64 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %26) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: optsize
declare i32 @FunctionImageChannel(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ColorDecisionListImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._ColorCorrection, align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !29
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 424, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #18
  br label %19

19:                                               ; preds = %16, %2
  %20 = icmp eq ptr %1, null
  br i1 %20, label %294, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %23 = tail call ptr @NewXMLTree(ptr noundef nonnull %1, ptr noundef nonnull %22) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %294, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %23, ptr noundef nonnull @.str.3) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call ptr @DestroyXMLTree(ptr noundef nonnull %23) #18
  br label %294

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct._Correction, ptr %6, i64 0, i32 1
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %6, align 16, !tbaa !6
  %32 = getelementptr inbounds %struct._Correction, ptr %6, i64 0, i32 2
  %33 = getelementptr inbounds %struct._ColorCorrection, ptr %6, i64 0, i32 1
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %32, align 16, !tbaa !6
  %34 = getelementptr inbounds %struct._ColorCorrection, ptr %6, i64 0, i32 1, i32 1
  %35 = getelementptr inbounds %struct._ColorCorrection, ptr %6, i64 0, i32 1, i32 2
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %34, align 16, !tbaa !6
  %36 = getelementptr inbounds %struct._ColorCorrection, ptr %6, i64 0, i32 2
  %37 = getelementptr inbounds %struct._ColorCorrection, ptr %6, i64 0, i32 2, i32 1
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %36, align 16, !tbaa !6
  %38 = getelementptr inbounds %struct._ColorCorrection, ptr %6, i64 0, i32 2, i32 2
  %39 = getelementptr inbounds %struct._ColorCorrection, ptr %6, i64 0, i32 3
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %38, align 16, !tbaa !6
  %40 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %26, ptr noundef nonnull @.str.4) #18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %138, label %42

42:                                               ; preds = %30
  %43 = tail call ptr @GetXMLTreeChild(ptr noundef nonnull %40, ptr noundef nonnull @.str.5) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %72, label %45

45:                                               ; preds = %42
  %46 = tail call ptr @GetXMLTreeContent(ptr noundef nonnull %43) #18
  store ptr %46, ptr %7, align 8, !tbaa !27
  %47 = load i8, ptr %46, align 1, !tbaa !41
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %45, %65
  %50 = phi double [ %66, %65 ], [ 1.000000e+00, %45 ]
  %51 = phi double [ %67, %65 ], [ 1.000000e+00, %45 ]
  %52 = phi ptr [ %69, %65 ], [ %46, %45 ]
  %53 = phi i64 [ %68, %65 ], [ 0, %45 ]
  call void @GetMagickToken(ptr noundef nonnull %52, ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  %54 = load i8, ptr %5, align 16, !tbaa !41
  %55 = icmp eq i8 %54, 44
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load ptr, ptr %7, align 8, !tbaa !27
  call void @GetMagickToken(ptr noundef %57, ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  br label %58

58:                                               ; preds = %56, %49
  switch i64 %53, label %72 [
    i64 0, label %59
    i64 1, label %61
    i64 2, label %63
  ]

59:                                               ; preds = %58
  %60 = call fastcc double @StringToDouble(ptr noundef nonnull %5) #17
  store double %60, ptr %6, align 16, !tbaa !42
  br label %65

61:                                               ; preds = %58
  %62 = call fastcc double @StringToDouble(ptr noundef nonnull %5) #17
  store double %62, ptr %33, align 8, !tbaa !45
  br label %65

63:                                               ; preds = %58
  %64 = call fastcc double @StringToDouble(ptr noundef nonnull %5) #17
  store double %64, ptr %36, align 16, !tbaa !46
  br label %72

65:                                               ; preds = %59, %61
  %66 = phi double [ %50, %59 ], [ %62, %61 ]
  %67 = phi double [ %60, %59 ], [ %51, %61 ]
  %68 = add nuw nsw i64 %53, 1
  %69 = load ptr, ptr %7, align 8, !tbaa !27
  %70 = load i8, ptr %69, align 1, !tbaa !41
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %49, !llvm.loop !47

72:                                               ; preds = %58, %65, %63, %45, %42
  %73 = phi double [ 1.000000e+00, %45 ], [ 1.000000e+00, %42 ], [ %64, %63 ], [ 1.000000e+00, %65 ], [ 1.000000e+00, %58 ]
  %74 = phi double [ 1.000000e+00, %45 ], [ 1.000000e+00, %42 ], [ %50, %63 ], [ %50, %58 ], [ %66, %65 ]
  %75 = phi double [ 1.000000e+00, %45 ], [ 1.000000e+00, %42 ], [ %51, %63 ], [ %51, %58 ], [ %67, %65 ]
  %76 = call ptr @GetXMLTreeChild(ptr noundef nonnull %40, ptr noundef nonnull @.str.6) #18
  %77 = icmp eq ptr %76, null
  br i1 %77, label %105, label %78

78:                                               ; preds = %72
  %79 = call ptr @GetXMLTreeContent(ptr noundef nonnull %76) #18
  store ptr %79, ptr %7, align 8, !tbaa !27
  %80 = load i8, ptr %79, align 1, !tbaa !41
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %78, %98
  %83 = phi double [ %99, %98 ], [ 0.000000e+00, %78 ]
  %84 = phi double [ %100, %98 ], [ 0.000000e+00, %78 ]
  %85 = phi ptr [ %102, %98 ], [ %79, %78 ]
  %86 = phi i64 [ %101, %98 ], [ 0, %78 ]
  call void @GetMagickToken(ptr noundef nonnull %85, ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  %87 = load i8, ptr %5, align 16, !tbaa !41
  %88 = icmp eq i8 %87, 44
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load ptr, ptr %7, align 8, !tbaa !27
  call void @GetMagickToken(ptr noundef %90, ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  br label %91

91:                                               ; preds = %89, %82
  switch i64 %86, label %105 [
    i64 0, label %92
    i64 1, label %94
    i64 2, label %96
  ]

92:                                               ; preds = %91
  %93 = call fastcc double @StringToDouble(ptr noundef nonnull %5) #17
  store double %93, ptr %31, align 8, !tbaa !48
  br label %98

94:                                               ; preds = %91
  %95 = call fastcc double @StringToDouble(ptr noundef nonnull %5) #17
  store double %95, ptr %34, align 16, !tbaa !49
  br label %98

96:                                               ; preds = %91
  %97 = call fastcc double @StringToDouble(ptr noundef nonnull %5) #17
  store double %97, ptr %37, align 8, !tbaa !50
  br label %105

98:                                               ; preds = %92, %94
  %99 = phi double [ %83, %92 ], [ %95, %94 ]
  %100 = phi double [ %93, %92 ], [ %84, %94 ]
  %101 = add nuw nsw i64 %86, 1
  %102 = load ptr, ptr %7, align 8, !tbaa !27
  %103 = load i8, ptr %102, align 1, !tbaa !41
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %82, !llvm.loop !51

105:                                              ; preds = %91, %98, %96, %78, %72
  %106 = phi double [ 0.000000e+00, %78 ], [ 0.000000e+00, %72 ], [ %97, %96 ], [ 0.000000e+00, %98 ], [ 0.000000e+00, %91 ]
  %107 = phi double [ 0.000000e+00, %78 ], [ 0.000000e+00, %72 ], [ %83, %96 ], [ %83, %91 ], [ %99, %98 ]
  %108 = phi double [ 0.000000e+00, %78 ], [ 0.000000e+00, %72 ], [ %84, %96 ], [ %84, %91 ], [ %100, %98 ]
  %109 = call ptr @GetXMLTreeChild(ptr noundef nonnull %40, ptr noundef nonnull @.str.7) #18
  %110 = icmp eq ptr %109, null
  br i1 %110, label %138, label %111

111:                                              ; preds = %105
  %112 = call ptr @GetXMLTreeContent(ptr noundef nonnull %109) #18
  store ptr %112, ptr %7, align 8, !tbaa !27
  %113 = load i8, ptr %112, align 1, !tbaa !41
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %138, label %115

115:                                              ; preds = %111, %131
  %116 = phi double [ %132, %131 ], [ 1.000000e+00, %111 ]
  %117 = phi double [ %133, %131 ], [ 1.000000e+00, %111 ]
  %118 = phi ptr [ %135, %131 ], [ %112, %111 ]
  %119 = phi i64 [ %134, %131 ], [ 0, %111 ]
  call void @GetMagickToken(ptr noundef nonnull %118, ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  %120 = load i8, ptr %5, align 16, !tbaa !41
  %121 = icmp eq i8 %120, 44
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load ptr, ptr %7, align 8, !tbaa !27
  call void @GetMagickToken(ptr noundef %123, ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  br label %124

124:                                              ; preds = %122, %115
  switch i64 %119, label %138 [
    i64 0, label %125
    i64 1, label %127
    i64 2, label %129
  ]

125:                                              ; preds = %124
  %126 = call fastcc double @StringToDouble(ptr noundef nonnull %5) #17
  store double %126, ptr %32, align 16, !tbaa !52
  br label %131

127:                                              ; preds = %124
  %128 = call fastcc double @StringToDouble(ptr noundef nonnull %5) #17
  store double %128, ptr %35, align 8, !tbaa !53
  br label %131

129:                                              ; preds = %124
  %130 = call fastcc double @StringToDouble(ptr noundef nonnull %5) #17
  store double %130, ptr %38, align 16, !tbaa !54
  br label %138

131:                                              ; preds = %125, %127
  %132 = phi double [ %116, %125 ], [ %128, %127 ]
  %133 = phi double [ %126, %125 ], [ %117, %127 ]
  %134 = add nuw nsw i64 %119, 1
  %135 = load ptr, ptr %7, align 8, !tbaa !27
  %136 = load i8, ptr %135, align 1, !tbaa !41
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %115, !llvm.loop !55

138:                                              ; preds = %124, %131, %129, %111, %105, %30
  %139 = phi double [ 1.000000e+00, %111 ], [ 1.000000e+00, %105 ], [ 1.000000e+00, %30 ], [ %130, %129 ], [ 1.000000e+00, %131 ], [ 1.000000e+00, %124 ]
  %140 = phi double [ %106, %111 ], [ %106, %105 ], [ 0.000000e+00, %30 ], [ %106, %129 ], [ %106, %131 ], [ %106, %124 ]
  %141 = phi double [ %73, %111 ], [ %73, %105 ], [ 1.000000e+00, %30 ], [ %73, %129 ], [ %73, %131 ], [ %73, %124 ]
  %142 = phi double [ 1.000000e+00, %111 ], [ 1.000000e+00, %105 ], [ 1.000000e+00, %30 ], [ %116, %129 ], [ %116, %124 ], [ %132, %131 ]
  %143 = phi double [ %107, %111 ], [ %107, %105 ], [ 0.000000e+00, %30 ], [ %107, %129 ], [ %107, %131 ], [ %107, %124 ]
  %144 = phi double [ %74, %111 ], [ %74, %105 ], [ 1.000000e+00, %30 ], [ %74, %129 ], [ %74, %131 ], [ %74, %124 ]
  %145 = phi double [ 1.000000e+00, %111 ], [ 1.000000e+00, %105 ], [ 1.000000e+00, %30 ], [ %117, %129 ], [ %117, %124 ], [ %133, %131 ]
  %146 = phi double [ %108, %111 ], [ %108, %105 ], [ 0.000000e+00, %30 ], [ %108, %129 ], [ %108, %131 ], [ %108, %124 ]
  %147 = phi double [ %75, %111 ], [ %75, %105 ], [ 1.000000e+00, %30 ], [ %75, %129 ], [ %75, %131 ], [ %75, %124 ]
  %148 = call ptr @GetXMLTreeChild(ptr noundef nonnull %26, ptr noundef nonnull @.str.8) #18
  %149 = icmp eq ptr %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %138
  %151 = call ptr @GetXMLTreeChild(ptr noundef nonnull %148, ptr noundef nonnull @.str.9) #18
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = call ptr @GetXMLTreeContent(ptr noundef nonnull %151) #18
  store ptr %154, ptr %7, align 8, !tbaa !27
  call void @GetMagickToken(ptr noundef %154, ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  %155 = call fastcc double @StringToDouble(ptr noundef nonnull %5) #17
  store double %155, ptr %39, align 8, !tbaa !56
  br label %156

156:                                              ; preds = %150, %153, %138
  %157 = phi double [ 0.000000e+00, %150 ], [ %155, %153 ], [ 0.000000e+00, %138 ]
  %158 = call ptr @DestroyXMLTree(ptr noundef nonnull %23) #18
  %159 = load i32, ptr %13, align 8, !tbaa !29
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %156
  %162 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 570, ptr noundef nonnull @.str.10) #18
  %163 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 572, ptr noundef nonnull @.str.11, double noundef %147) #18
  %164 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 574, ptr noundef nonnull @.str.12, double noundef %146) #18
  %165 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 576, ptr noundef nonnull @.str.13, double noundef %145) #18
  %166 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 578, ptr noundef nonnull @.str.14, double noundef %144) #18
  %167 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 580, ptr noundef nonnull @.str.15, double noundef %143) #18
  %168 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 582, ptr noundef nonnull @.str.16, double noundef %142) #18
  %169 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 584, ptr noundef nonnull @.str.17, double noundef %141) #18
  %170 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 586, ptr noundef nonnull @.str.18, double noundef %140) #18
  %171 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 588, ptr noundef nonnull @.str.19, double noundef %139) #18
  %172 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 16384, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 590, ptr noundef nonnull @.str.20, double noundef %157) #18
  br label %173

173:                                              ; preds = %161, %156
  %174 = call dereferenceable_or_null(524288) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 8) #19
  store ptr %174, ptr %11, align 8, !tbaa !27
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %178 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 596, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %177) #18
  br label %294

179:                                              ; preds = %173, %179
  %180 = phi i64 [ %212, %179 ], [ 0, %173 ]
  %181 = sitofp i64 %180 to double
  %182 = fmul double %147, %181
  %183 = fdiv double %182, 6.553500e+04
  %184 = fadd double %146, %183
  %185 = call double @pow(double noundef %184, double noundef %145) #18
  %186 = fmul double %185, 6.553500e+04
  %187 = fptrunc double %186 to float
  %188 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %187) #17
  %189 = uitofp i16 %188 to float
  %190 = call fastcc zeroext i16 @ClampToQuantum(float noundef %189) #17
  %191 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 %180, i32 2
  store i16 %190, ptr %191, align 2, !tbaa !33
  %192 = fmul double %144, %181
  %193 = fdiv double %192, 6.553500e+04
  %194 = fadd double %143, %193
  %195 = call double @pow(double noundef %194, double noundef %142) #18
  %196 = fmul double %195, 6.553500e+04
  %197 = fptrunc double %196 to float
  %198 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %197) #17
  %199 = uitofp i16 %198 to float
  %200 = call fastcc zeroext i16 @ClampToQuantum(float noundef %199) #17
  %201 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 %180, i32 1
  store i16 %200, ptr %201, align 2, !tbaa !34
  %202 = fmul double %141, %181
  %203 = fdiv double %202, 6.553500e+04
  %204 = fadd double %140, %203
  %205 = call double @pow(double noundef %204, double noundef %139) #18
  %206 = fmul double %205, 6.553500e+04
  %207 = fptrunc double %206 to float
  %208 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %207) #17
  %209 = uitofp i16 %208 to float
  %210 = call fastcc zeroext i16 @ClampToQuantum(float noundef %209) #17
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 %180
  store i16 %210, ptr %211, align 2, !tbaa !35
  %212 = add nuw nsw i64 %180, 1
  %213 = icmp eq i64 %212, 65536
  br i1 %213, label %214, label %179, !llvm.loop !57

214:                                              ; preds = %179
  %215 = load i32, ptr %0, align 8, !tbaa !30
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %267

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %219 = load i64, ptr %218, align 8, !tbaa !31
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %267

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %223 = load ptr, ptr %222, align 8, !tbaa !32
  br label %224

224:                                              ; preds = %221, %224
  %225 = phi i64 [ 0, %221 ], [ %265, %224 ]
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %223, i64 %225
  %227 = getelementptr inbounds %struct._PixelPacket, ptr %223, i64 %225, i32 2
  %228 = load i16, ptr %227, align 2, !tbaa !33
  %229 = uitofp i16 %228 to double
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %223, i64 %225, i32 1
  %231 = load i16, ptr %230, align 2, !tbaa !34
  %232 = uitofp i16 %231 to double
  %233 = fmul double %232, 0x3FE6E29307AF20EA
  %234 = call double @llvm.fmuladd.f64(double %229, double 2.126560e-01, double %233)
  %235 = load i16, ptr %226, align 2, !tbaa !35
  %236 = uitofp i16 %235 to double
  %237 = call double @llvm.fmuladd.f64(double %236, double 7.218600e-02, double %234)
  %238 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %228) #17, !range !58
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 %239, i32 2
  %241 = load i16, ptr %240, align 2, !tbaa !33
  %242 = uitofp i16 %241 to double
  %243 = call double @llvm.fmuladd.f64(double %157, double %242, double %237)
  %244 = fsub double %243, %237
  %245 = fptrunc double %244 to float
  %246 = call fastcc zeroext i16 @ClampToQuantum(float noundef %245) #17
  store i16 %246, ptr %227, align 2, !tbaa !33
  %247 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %231) #17, !range !58
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 %248, i32 1
  %250 = load i16, ptr %249, align 2, !tbaa !34
  %251 = uitofp i16 %250 to double
  %252 = call double @llvm.fmuladd.f64(double %157, double %251, double %237)
  %253 = fsub double %252, %237
  %254 = fptrunc double %253 to float
  %255 = call fastcc zeroext i16 @ClampToQuantum(float noundef %254) #17
  store i16 %255, ptr %230, align 2, !tbaa !34
  %256 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %235) #17, !range !58
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !35
  %260 = uitofp i16 %259 to double
  %261 = call double @llvm.fmuladd.f64(double %157, double %260, double %237)
  %262 = fsub double %261, %237
  %263 = fptrunc double %262 to float
  %264 = call fastcc zeroext i16 @ClampToQuantum(float noundef %263) #17
  store i16 %264, ptr %226, align 2, !tbaa !35
  %265 = add nuw nsw i64 %225, 1
  %266 = icmp eq i64 %265, %219
  br i1 %266, label %267, label %224, !llvm.loop !59

267:                                              ; preds = %224, %217, %214
  store i32 1, ptr %9, align 4, !tbaa !28
  store i64 0, ptr %10, align 8, !tbaa !39
  store ptr %22, ptr %8, align 8, !tbaa !27
  %268 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %22) #18
  store ptr %268, ptr %4, align 8, !tbaa !27
  %269 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %270 = load i64, ptr %269, align 8, !tbaa !40
  %271 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %272 = shl i64 %271, 5
  %273 = icmp ugt i64 %270, %272
  br i1 %273, label %274, label %282

274:                                              ; preds = %267
  %275 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %276 = icmp eq i32 %275, 3
  br i1 %276, label %282, label %277

277:                                              ; preds = %274
  %278 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %279 = icmp eq i32 %278, 3
  br i1 %279, label %282, label %280

280:                                              ; preds = %277
  %281 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %286

282:                                              ; preds = %277, %274, %267
  %283 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %284 = icmp ult i64 %283, 2
  %285 = select i1 %284, i64 1, i64 2
  br label %286

286:                                              ; preds = %282, %280
  %287 = phi i64 [ %281, %280 ], [ %285, %282 ]
  %288 = trunc i64 %287 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %288)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @ColorDecisionListImage.omp_outlined, ptr nonnull %3, ptr nonnull %9, ptr nonnull %4, ptr nonnull %8, ptr nonnull %6, ptr nonnull %11, ptr nonnull %10)
  %289 = load ptr, ptr %4, align 8, !tbaa !27
  %290 = call ptr @DestroyCacheView(ptr noundef %289) #18
  store ptr %290, ptr %4, align 8, !tbaa !27
  %291 = load ptr, ptr %11, align 8, !tbaa !27
  %292 = call ptr @RelinquishMagickMemory(ptr noundef %291) #18
  %293 = load i32, ptr %9, align 4, !tbaa !28
  br label %294

294:                                              ; preds = %176, %21, %19, %286, %28
  %295 = phi i32 [ 0, %28 ], [ %293, %286 ], [ 0, %19 ], [ 0, %21 ], [ 0, %176 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %295
}

; Function Attrs: optsize
declare ptr @NewXMLTree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetXMLTreeChild(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyXMLTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetXMLTreeContent(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #18
  ret double %2
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #6 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleMapToQuantum(float noundef %0) unnamed_addr #6 {
  %2 = fpext float %0 to double
  %3 = fcmp ugt float %0, 0.000000e+00
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = fcmp ult float %0, 6.553500e+04
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = fadd double %2, 5.000000e-01
  %8 = fptoui double %7 to i16
  br label %9

9:                                                ; preds = %4, %1, %6
  %10 = phi i16 [ %8, %6 ], [ 0, %1 ], [ -1, %4 ]
  ret i16 %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @ScaleQuantumToMap(i16 noundef zeroext %0) unnamed_addr #6 {
  %2 = zext i16 %0 to i32
  ret i32 %2
}

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ColorDecisionListImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #7 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !27
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !40
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %130

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 %17, ptr %11, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 1, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !tbaa !28
  %20 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !60
  %23 = load i64, ptr %10, align 8, !tbaa !60
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %129, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._ColorCorrection, ptr %6, i64 0, i32 3
  br label %27

27:                                               ; preds = %25, %121
  %28 = phi i64 [ %22, %25 ], [ %127, %121 ]
  %29 = phi i64 [ %23, %25 ], [ %125, %121 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %121, label %31

31:                                               ; preds = %27, %115
  %32 = phi i64 [ %116, %115 ], [ %29, %27 ]
  %33 = load i32, ptr %3, align 4, !tbaa !28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %115, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !27
  %37 = load ptr, ptr %2, align 8, !tbaa !27
  %38 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %5, align 8, !tbaa !27
  %41 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %36, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %40) #20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %114, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %2, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !61
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %95

48:                                               ; preds = %43
  %49 = load double, ptr %26, align 8, !tbaa !56
  %50 = load ptr, ptr %7, align 8, !tbaa !27
  br label %51

51:                                               ; preds = %48, %51
  %52 = phi i64 [ 0, %48 ], [ %93, %51 ]
  %53 = phi ptr [ %41, %48 ], [ %92, %51 ]
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 2
  %55 = load i16, ptr %54, align 2, !tbaa !33
  %56 = uitofp i16 %55 to double
  %57 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 1
  %58 = load i16, ptr %57, align 2, !tbaa !34
  %59 = uitofp i16 %58 to double
  %60 = fmul double %59, 0x3FE6E29307AF20EA
  %61 = call double @llvm.fmuladd.f64(double %56, double 2.126560e-01, double %60)
  %62 = load i16, ptr %53, align 2, !tbaa !35
  %63 = uitofp i16 %62 to double
  %64 = call double @llvm.fmuladd.f64(double %63, double 7.218600e-02, double %61)
  %65 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %55) #17, !range !58
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %66, i32 2
  %68 = load i16, ptr %67, align 2, !tbaa !33
  %69 = uitofp i16 %68 to double
  %70 = fsub double %69, %64
  %71 = call double @llvm.fmuladd.f64(double %49, double %70, double %64)
  %72 = fptrunc double %71 to float
  %73 = call fastcc zeroext i16 @ClampToQuantum(float noundef %72) #17
  store i16 %73, ptr %54, align 2, !tbaa !33
  %74 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %58) #17, !range !58
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %75, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !34
  %78 = uitofp i16 %77 to double
  %79 = fsub double %78, %64
  %80 = call double @llvm.fmuladd.f64(double %49, double %79, double %64)
  %81 = fptrunc double %80 to float
  %82 = call fastcc zeroext i16 @ClampToQuantum(float noundef %81) #17
  store i16 %82, ptr %57, align 2, !tbaa !34
  %83 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %62) #17, !range !58
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !35
  %87 = uitofp i16 %86 to double
  %88 = fsub double %87, %64
  %89 = call double @llvm.fmuladd.f64(double %49, double %88, double %64)
  %90 = fptrunc double %89 to float
  %91 = call fastcc zeroext i16 @ClampToQuantum(float noundef %90) #17
  store i16 %91, ptr %53, align 2, !tbaa !35
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  %93 = add nuw nsw i64 %52, 1
  %94 = icmp eq i64 %93, %46
  br i1 %94, label %95, label %51, !llvm.loop !62

95:                                               ; preds = %51, %43
  %96 = load ptr, ptr %4, align 8, !tbaa !27
  %97 = load ptr, ptr %5, align 8, !tbaa !27
  %98 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %96, ptr noundef %97) #20
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %101

101:                                              ; preds = %100, %95
  %102 = load ptr, ptr %2, align 8, !tbaa !27
  %103 = getelementptr inbounds %struct._Image, ptr %102, i64 0, i32 47
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  %105 = icmp eq ptr %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %101
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_ColorDecisionListImageChannel.var)
  %107 = load ptr, ptr %2, align 8, !tbaa !27
  %108 = load i64, ptr %8, align 8, !tbaa !39
  %109 = add nsw i64 %108, 1
  store i64 %109, ptr %8, align 8, !tbaa !39
  %110 = getelementptr inbounds %struct._Image, ptr %107, i64 0, i32 8
  %111 = load i64, ptr %110, align 8, !tbaa !40
  %112 = call fastcc i32 @SetImageProgress(ptr noundef %107, ptr noundef nonnull @.str.23, i64 noundef %108, i64 noundef %111) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_ColorDecisionListImageChannel.var)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106, %35
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %115

115:                                              ; preds = %114, %101, %106, %31
  %116 = add nsw i64 %32, 1
  %117 = load i64, ptr %11, align 8, !tbaa !60
  %118 = icmp slt i64 %32, %117
  br i1 %118, label %31, label %119

119:                                              ; preds = %115
  %120 = load i64, ptr %10, align 8, !tbaa !60
  br label %121

121:                                              ; preds = %119, %27
  %122 = phi i64 [ %29, %27 ], [ %120, %119 ]
  %123 = phi i64 [ %28, %27 ], [ %117, %119 ]
  %124 = load i64, ptr %12, align 8, !tbaa !60
  %125 = add nsw i64 %124, %122
  store i64 %125, ptr %10, align 8, !tbaa !60
  %126 = add nsw i64 %124, %123
  %127 = call i64 @llvm.smin.i64(i64 %126, i64 %17)
  store i64 %127, ptr %11, align 8, !tbaa !60
  %128 = icmp sgt i64 %125, %127
  br i1 %128, label %129, label %27

129:                                              ; preds = %121, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %130

130:                                              ; preds = %129, %9
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #8

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #10

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #10

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #11 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef %1, ptr noundef nonnull %10) #18
  %12 = load ptr, ptr %6, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #18
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #8
  ret i32 %17
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #8

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare !callback !65 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClutImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @ClutImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1) #17
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClutImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !27
  store i32 %1, ptr %5, align 4, !tbaa !28
  store ptr %2, ptr %6, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 8, !tbaa !29
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %18 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 774, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #18
  br label %19

19:                                               ; preds = %16, %3
  %20 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %106, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !26
  %25 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %24) #17, !range !67
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !26
  %30 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %29) #17, !range !67
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %34

34:                                               ; preds = %32, %27, %22
  %35 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #19
  store ptr %35, ptr %11, align 8, !tbaa !27
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %40 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %38, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 786, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %39) #18
  br label %106

41:                                               ; preds = %34
  store i32 1, ptr %9, align 4, !tbaa !28
  store i64 0, ptr %10, align 8, !tbaa !39
  %42 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 70
  %43 = load i32, ptr %42, align 8, !tbaa !68
  %44 = icmp ne i32 %43, 5
  %45 = zext i1 %44 to i64
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %46, ptr %8, align 8, !tbaa !27
  %47 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef nonnull %46) #18
  %48 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %49 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  br label %50

50:                                               ; preds = %41, %50
  %51 = phi i64 [ 0, %41 ], [ %64, %50 ]
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %35, i64 %51
  tail call void @GetMagickPixelPacket(ptr noundef nonnull %2, ptr noundef nonnull %52) #18
  %53 = sitofp i64 %51 to double
  %54 = fmul double %53, 0x3EF0001000100010
  %55 = load i64, ptr %48, align 8, !tbaa !61
  %56 = sub i64 %55, %45
  %57 = uitofp i64 %56 to double
  %58 = fmul double %54, %57
  %59 = load i64, ptr %49, align 8, !tbaa !40
  %60 = sub i64 %59, %45
  %61 = uitofp i64 %60 to double
  %62 = fmul double %54, %61
  %63 = tail call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %2, ptr noundef %47, i32 noundef 0, double noundef %58, double noundef %62, ptr noundef nonnull %52, ptr noundef nonnull %46) #18
  %64 = add nuw nsw i64 %51, 1
  %65 = icmp eq i64 %64, 65536
  br i1 %65, label %66, label %50, !llvm.loop !69

66:                                               ; preds = %50
  %67 = tail call ptr @DestroyCacheView(ptr noundef %47) #18
  %68 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %46) #18
  store ptr %68, ptr %7, align 8, !tbaa !27
  %69 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %70 = load i64, ptr %69, align 8, !tbaa !40
  %71 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %72 = shl i64 %71, 5
  %73 = icmp ugt i64 %70, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %86

82:                                               ; preds = %77, %74, %66
  %83 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %84 = icmp ult i64 %83, 2
  %85 = select i1 %84, i64 1, i64 2
  br label %86

86:                                               ; preds = %82, %80
  %87 = phi i64 [ %81, %80 ], [ %85, %82 ]
  %88 = trunc i64 %87 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %12, i32 %88)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @ClutImageChannel.omp_outlined, ptr nonnull %4, ptr nonnull %9, ptr nonnull %7, ptr nonnull %8, ptr nonnull %5, ptr nonnull %11, ptr nonnull %6, ptr nonnull %10)
  %89 = load ptr, ptr %7, align 8, !tbaa !27
  %90 = call ptr @DestroyCacheView(ptr noundef %89) #18
  store ptr %90, ptr %7, align 8, !tbaa !27
  %91 = load ptr, ptr %11, align 8, !tbaa !27
  %92 = call ptr @RelinquishMagickMemory(ptr noundef %91) #18
  store ptr %92, ptr %11, align 8, !tbaa !27
  %93 = load ptr, ptr %6, align 8, !tbaa !27
  %94 = getelementptr inbounds %struct._Image, ptr %93, i64 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !10
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %86
  %98 = load i32, ptr %5, align 4, !tbaa !28
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %4, align 8, !tbaa !27
  %103 = call i32 @SetImageAlphaChannel(ptr noundef %102, i32 noundef 1) #18
  br label %104

104:                                              ; preds = %101, %97, %86
  %105 = load i32, ptr %9, align 4, !tbaa !28
  br label %106

106:                                              ; preds = %37, %19, %104
  %107 = phi i32 [ %105, %104 ], [ 0, %19 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i32 %107
}

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IsGrayColorspace(i32 noundef %0) unnamed_addr #6 {
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

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ClutImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #7 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct._MagickPixelPacket, align 8
  %16 = load ptr, ptr %2, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !40
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %182

21:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 0, ptr %11, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 %19, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 1, ptr %13, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !tbaa !28
  %22 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %23 = load i64, ptr %12, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %12, align 8, !tbaa !60
  %25 = load i64, ptr %11, align 8, !tbaa !60
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %181, label %27

27:                                               ; preds = %21, %173
  %28 = phi i64 [ %179, %173 ], [ %24, %21 ]
  %29 = phi i64 [ %177, %173 ], [ %25, %21 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %173, label %31

31:                                               ; preds = %27, %167
  %32 = phi i64 [ %168, %167 ], [ %29, %27 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %15) #8
  %33 = load i32, ptr %3, align 4, !tbaa !28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %167, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !27
  %37 = load ptr, ptr %2, align 8, !tbaa !27
  %38 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %5, align 8, !tbaa !27
  %41 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %36, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %40) #20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %166, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %4, align 8, !tbaa !27
  %45 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %44) #18
  %46 = load ptr, ptr %2, align 8, !tbaa !27
  call void @GetMagickPixelPacket(ptr noundef %46, ptr noundef nonnull %15) #18
  %47 = load ptr, ptr %2, align 8, !tbaa !27
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !61
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %147

51:                                               ; preds = %43
  %52 = load i32, ptr %6, align 4, !tbaa !28
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  %55 = load ptr, ptr %7, align 8
  %56 = load ptr, ptr %8, align 8
  %57 = getelementptr inbounds %struct._Image, ptr %56, i64 0, i32 6
  %58 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 6
  %59 = insertelement <4 x i32> poison, i32 %52, i64 0
  %60 = shufflevector <4 x i32> %59, <4 x i32> poison, <4 x i32> zeroinitializer
  %61 = and <4 x i32> %60, <i32 32, i32 8, i32 4, i32 2>
  %62 = icmp eq <4 x i32> %61, zeroinitializer
  %63 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 1
  %64 = icmp eq ptr %45, null
  %65 = extractelement <4 x i1> %62, i64 0
  %66 = extractelement <4 x i1> %62, i64 1
  %67 = extractelement <4 x i1> %62, i64 2
  %68 = extractelement <4 x i1> %62, i64 3
  br label %69

69:                                               ; preds = %51, %142
  %70 = phi i64 [ 0, %51 ], [ %144, %142 ]
  %71 = phi ptr [ %41, %51 ], [ %143, %142 ]
  %72 = getelementptr inbounds i16, ptr %45, i64 %70
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %47, ptr noundef nonnull %71, ptr noundef %72, ptr noundef nonnull %15) #17
  br i1 %54, label %81, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 2
  %75 = load i16, ptr %74, align 2, !tbaa !33
  %76 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %75) #17, !range !58
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %55, i64 %77, i32 5
  %79 = load float, ptr %78, align 8, !tbaa !70
  %80 = call fastcc zeroext i16 @ClampToQuantum(float noundef %79) #17
  store i16 %80, ptr %74, align 2, !tbaa !33
  br label %81

81:                                               ; preds = %73, %69
  br i1 %68, label %90, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 1
  %84 = load i16, ptr %83, align 2, !tbaa !34
  %85 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %84) #17, !range !58
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct._MagickPixelPacket, ptr %55, i64 %86, i32 6
  %88 = load float, ptr %87, align 4, !tbaa !73
  %89 = call fastcc zeroext i16 @ClampToQuantum(float noundef %88) #17
  store i16 %89, ptr %83, align 2, !tbaa !34
  br label %90

90:                                               ; preds = %82, %81
  br i1 %67, label %98, label %91

91:                                               ; preds = %90
  %92 = load i16, ptr %71, align 2, !tbaa !35
  %93 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %92) #17, !range !58
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct._MagickPixelPacket, ptr %55, i64 %94, i32 7
  %96 = load float, ptr %95, align 8, !tbaa !74
  %97 = call fastcc zeroext i16 @ClampToQuantum(float noundef %96) #17
  store i16 %97, ptr %71, align 2, !tbaa !35
  br label %98

98:                                               ; preds = %91, %90
  br i1 %66, label %131, label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %57, align 8, !tbaa !10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  %104 = load i16, ptr %103, align 2, !tbaa !36
  %105 = xor i16 %104, -1
  %106 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %105) #17, !range !58
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %55, i64 %107
  %109 = call fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr noundef %108) #17
  %110 = xor i16 %109, -1
  store i16 %110, ptr %103, align 2, !tbaa !36
  br label %131

111:                                              ; preds = %99
  %112 = load i32, ptr %58, align 8, !tbaa !10
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = call fastcc float @MagickPixelIntensity(ptr noundef nonnull %15) #17
  %116 = fptoui float %115 to i16
  %117 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %116) #17, !range !58
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %55, i64 %118, i32 8
  %120 = load float, ptr %119, align 4, !tbaa !75
  %121 = call fastcc zeroext i16 @ClampToQuantum(float noundef %120) #17
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  store i16 %121, ptr %122, align 2, !tbaa !36
  br label %131

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 0, i32 3
  %125 = load i16, ptr %124, align 2, !tbaa !36
  %126 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %125) #17, !range !58
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %55, i64 %127, i32 8
  %129 = load float, ptr %128, align 4, !tbaa !75
  %130 = call fastcc zeroext i16 @ClampToQuantum(float noundef %129) #17
  store i16 %130, ptr %124, align 2, !tbaa !36
  br label %131

131:                                              ; preds = %102, %123, %114, %98
  br i1 %65, label %142, label %132

132:                                              ; preds = %131
  %133 = load i32, ptr %63, align 4, !tbaa !26
  %134 = icmp ne i32 %133, 12
  %135 = select i1 %134, i1 true, i1 %64
  br i1 %135, label %142, label %136

136:                                              ; preds = %132
  %137 = load i16, ptr %72, align 2, !tbaa !76
  %138 = zext i16 %137 to i64
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %55, i64 %138, i32 9
  %140 = load float, ptr %139, align 8, !tbaa !77
  %141 = call fastcc zeroext i16 @ClampToQuantum(float noundef %140) #17
  store i16 %141, ptr %72, align 2, !tbaa !76
  br label %142

142:                                              ; preds = %136, %132, %131
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %144 = add nuw nsw i64 %70, 1
  %145 = load i64, ptr %48, align 8, !tbaa !61
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %69, label %147, !llvm.loop !78

147:                                              ; preds = %142, %43
  %148 = load ptr, ptr %4, align 8, !tbaa !27
  %149 = load ptr, ptr %5, align 8, !tbaa !27
  %150 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %148, ptr noundef %149) #20
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %153

153:                                              ; preds = %152, %147
  %154 = load ptr, ptr %2, align 8, !tbaa !27
  %155 = getelementptr inbounds %struct._Image, ptr %154, i64 0, i32 47
  %156 = load ptr, ptr %155, align 8, !tbaa !63
  %157 = icmp eq ptr %156, null
  br i1 %157, label %167, label %158

158:                                              ; preds = %153
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ClutImageChannel.var)
  %159 = load ptr, ptr %2, align 8, !tbaa !27
  %160 = load i64, ptr %9, align 8, !tbaa !39
  %161 = add nsw i64 %160, 1
  store i64 %161, ptr %9, align 8, !tbaa !39
  %162 = getelementptr inbounds %struct._Image, ptr %159, i64 0, i32 8
  %163 = load i64, ptr %162, align 8, !tbaa !40
  %164 = call fastcc i32 @SetImageProgress(ptr noundef %159, ptr noundef nonnull @.str.25, i64 noundef %160, i64 noundef %163) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ClutImageChannel.var)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158, %35
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %167

167:                                              ; preds = %166, %153, %158, %31
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %15) #8
  %168 = add nsw i64 %32, 1
  %169 = load i64, ptr %12, align 8, !tbaa !60
  %170 = icmp slt i64 %32, %169
  br i1 %170, label %31, label %171

171:                                              ; preds = %167
  %172 = load i64, ptr %11, align 8, !tbaa !60
  br label %173

173:                                              ; preds = %171, %27
  %174 = phi i64 [ %29, %27 ], [ %172, %171 ]
  %175 = phi i64 [ %28, %27 ], [ %169, %171 ]
  %176 = load i64, ptr %13, align 8, !tbaa !60
  %177 = add nsw i64 %176, %174
  store i64 %177, ptr %11, align 8, !tbaa !60
  %178 = add nsw i64 %176, %175
  %179 = call i64 @llvm.smin.i64(i64 %178, i64 %19)
  store i64 %179, ptr %12, align 8, !tbaa !60
  %180 = icmp sgt i64 %177, %179
  br i1 %180, label %181, label %27

181:                                              ; preds = %173, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %182

182:                                              ; preds = %181, %10
  ret void
}

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !76
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !76
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !77
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @MagickPixelIntensityToQuantum(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !70
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !74
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  %21 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %20) #17
  ret i16 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @MagickPixelIntensity(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = icmp eq i32 %3, 2
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !70
  br i1 %4, label %19, label %7

7:                                                ; preds = %1
  %8 = fpext float %6 to double
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !73
  %11 = fpext float %10 to double
  %12 = fmul double %11, 0x3FE6E29307AF20EA
  %13 = tail call double @llvm.fmuladd.f64(double %8, double 2.126560e-01, double %12)
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %15 = load float, ptr %14, align 8, !tbaa !74
  %16 = fpext float %15 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 7.218600e-02, double %13)
  %18 = fptrunc double %17 to float
  br label %19

19:                                               ; preds = %1, %7
  %20 = phi float [ %18, %7 ], [ %6, %1 ]
  ret float %20
}

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ContrastImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !29
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 968, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #18
  br label %16

16:                                               ; preds = %13, %2
  %17 = icmp eq i32 %1, 0
  %18 = select i1 %17, i32 -1, i32 1
  store i32 %18, ptr %6, align 4, !tbaa !28
  %19 = load i32, ptr %0, align 8, !tbaa !30
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %23 = load i64, ptr %22, align 8, !tbaa !31
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ 0, %25 ], [ %33, %27 ]
  %29 = load ptr, ptr %26, align 8, !tbaa !32
  %30 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 %28
  %31 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 %28, i32 2
  %32 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 %28, i32 1
  tail call fastcc void @Contrast(i32 noundef %18, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef %30) #17
  %33 = add nuw nsw i64 %28, 1
  %34 = load i64, ptr %22, align 8, !tbaa !31
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %27, label %36, !llvm.loop !81

36:                                               ; preds = %27, %21, %16
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %38 = tail call i32 @AccelerateContrastImage(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %37) #18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  store i32 1, ptr %7, align 4, !tbaa !28
  store i64 0, ptr %8, align 8, !tbaa !39
  store ptr %37, ptr %5, align 8, !tbaa !27
  %41 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %37) #18
  store ptr %41, ptr %4, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !40
  %44 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %45 = shl i64 %44, 5
  %46 = icmp ugt i64 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %59

55:                                               ; preds = %50, %47, %40
  %56 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %57 = icmp ult i64 %56, 2
  %58 = select i1 %57, i64 1, i64 2
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i64 [ %54, %53 ], [ %58, %55 ]
  %61 = trunc i64 %60 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %9, i32 %61)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @ContrastImage.omp_outlined, ptr nonnull %3, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %6, ptr nonnull %8)
  %62 = load ptr, ptr %4, align 8, !tbaa !27
  %63 = call ptr @DestroyCacheView(ptr noundef %62) #18
  %64 = load i32, ptr %7, align 4, !tbaa !28
  br label %65

65:                                               ; preds = %36, %59
  %66 = phi i32 [ %64, %59 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @Contrast(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store double 0.000000e+00, ptr %6, align 8, !tbaa !6
  store double 0.000000e+00, ptr %7, align 8, !tbaa !6
  store double 0.000000e+00, ptr %5, align 8, !tbaa !6
  %8 = load i16, ptr %1, align 2, !tbaa !76
  %9 = load i16, ptr %2, align 2, !tbaa !76
  %10 = load i16, ptr %3, align 2, !tbaa !76
  call void @ConvertRGBToHSB(i16 noundef zeroext %8, i16 noundef zeroext %9, i16 noundef zeroext %10, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  %11 = sitofp i32 %0 to double
  %12 = fmul double %11, 5.000000e-01
  %13 = load double, ptr %5, align 8, !tbaa !6
  %14 = fadd double %13, -5.000000e-01
  %15 = fmul double %14, 0x400921FB54442D18
  %16 = call double @sin(double noundef %15) #18
  %17 = fadd double %16, 1.000000e+00
  %18 = load double, ptr %5, align 8, !tbaa !6
  %19 = fneg double %18
  %20 = call double @llvm.fmuladd.f64(double %17, double 5.000000e-01, double %19)
  %21 = call double @llvm.fmuladd.f64(double %12, double %20, double %18)
  store double %21, ptr %5, align 8, !tbaa !6
  %22 = fcmp ogt double %21, 1.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store double 1.000000e+00, ptr %5, align 8, !tbaa !6
  br label %27

24:                                               ; preds = %4
  %25 = fcmp olt double %21, 0.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store double 0.000000e+00, ptr %5, align 8, !tbaa !6
  br label %27

27:                                               ; preds = %24, %26, %23
  %28 = phi double [ %21, %24 ], [ 0.000000e+00, %26 ], [ 1.000000e+00, %23 ]
  %29 = load double, ptr %6, align 8, !tbaa !6
  %30 = load double, ptr %7, align 8, !tbaa !6
  call void @ConvertHSBToRGB(double noundef %29, double noundef %30, double noundef %28, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

; Function Attrs: optsize
declare i32 @AccelerateContrastImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ContrastImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull align 8 dereferenceable(8) %7) #7 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = load ptr, ptr %2, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !40
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %101

21:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 %19, ptr %10, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 1, ptr %11, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  store i32 0, ptr %12, align 4, !tbaa !28
  %22 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %23 = load i64, ptr %10, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %10, align 8, !tbaa !60
  %25 = load i64, ptr %9, align 8, !tbaa !60
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %100, label %27

27:                                               ; preds = %21, %92
  %28 = phi i64 [ %98, %92 ], [ %24, %21 ]
  %29 = phi i64 [ %96, %92 ], [ %25, %21 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %92, label %31

31:                                               ; preds = %27, %86
  %32 = phi i64 [ %87, %86 ], [ %29, %27 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #8
  %33 = load i32, ptr %3, align 4, !tbaa !28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %86, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !27
  %37 = load ptr, ptr %2, align 8, !tbaa !27
  %38 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %5, align 8, !tbaa !27
  %41 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %36, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %40) #20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %85, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %2, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !61
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43, %48
  %49 = phi i64 [ %61, %48 ], [ 0, %43 ]
  %50 = phi ptr [ %60, %48 ], [ %41, %43 ]
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 2
  %52 = load i16, ptr %51, align 2, !tbaa !33
  store i16 %52, ptr %15, align 2, !tbaa !76
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 0, i32 1
  %54 = load i16, ptr %53, align 2, !tbaa !34
  store i16 %54, ptr %14, align 2, !tbaa !76
  %55 = load i16, ptr %50, align 2, !tbaa !35
  store i16 %55, ptr %13, align 2, !tbaa !76
  %56 = load i32, ptr %6, align 4, !tbaa !28
  call fastcc void @Contrast(i32 noundef %56, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  %57 = load i16, ptr %15, align 2, !tbaa !76
  store i16 %57, ptr %51, align 2, !tbaa !33
  %58 = load i16, ptr %14, align 2, !tbaa !76
  store i16 %58, ptr %53, align 2, !tbaa !34
  %59 = load i16, ptr %13, align 2, !tbaa !76
  store i16 %59, ptr %50, align 2, !tbaa !35
  %60 = getelementptr inbounds %struct._PixelPacket, ptr %50, i64 1
  %61 = add nuw nsw i64 %49, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !27
  %63 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 7
  %64 = load i64, ptr %63, align 8, !tbaa !61
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %48, label %66, !llvm.loop !82

66:                                               ; preds = %48, %43
  %67 = load ptr, ptr %4, align 8, !tbaa !27
  %68 = load ptr, ptr %5, align 8, !tbaa !27
  %69 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %67, ptr noundef %68) #20
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %72

72:                                               ; preds = %71, %66
  %73 = load ptr, ptr %2, align 8, !tbaa !27
  %74 = getelementptr inbounds %struct._Image, ptr %73, i64 0, i32 47
  %75 = load ptr, ptr %74, align 8, !tbaa !63
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ContrastImage.var)
  %78 = load ptr, ptr %2, align 8, !tbaa !27
  %79 = load i64, ptr %7, align 8, !tbaa !39
  %80 = add nsw i64 %79, 1
  store i64 %80, ptr %7, align 8, !tbaa !39
  %81 = getelementptr inbounds %struct._Image, ptr %78, i64 0, i32 8
  %82 = load i64, ptr %81, align 8, !tbaa !40
  %83 = call fastcc i32 @SetImageProgress(ptr noundef %78, ptr noundef nonnull @.str.26, i64 noundef %79, i64 noundef %82) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ContrastImage.var)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77, %35
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %86

86:                                               ; preds = %85, %72, %77, %31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  %87 = add nsw i64 %32, 1
  %88 = load i64, ptr %10, align 8, !tbaa !60
  %89 = icmp slt i64 %32, %88
  br i1 %89, label %31, label %90

90:                                               ; preds = %86
  %91 = load i64, ptr %9, align 8, !tbaa !60
  br label %92

92:                                               ; preds = %90, %27
  %93 = phi i64 [ %29, %27 ], [ %91, %90 ]
  %94 = phi i64 [ %28, %27 ], [ %88, %90 ]
  %95 = load i64, ptr %11, align 8, !tbaa !60
  %96 = add nsw i64 %95, %93
  store i64 %96, ptr %9, align 8, !tbaa !60
  %97 = add nsw i64 %95, %94
  %98 = call i64 @llvm.smin.i64(i64 %97, i64 %19)
  store i64 %98, ptr %10, align 8, !tbaa !60
  %99 = icmp sgt i64 %96, %98
  br i1 %99, label %100, label %27

100:                                              ; preds = %92, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br label %101

101:                                              ; preds = %100, %8
  ret void
}

; Function Attrs: optsize
declare void @ConvertRGBToHSB(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ConvertHSBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ContrastStretchImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #18
  %7 = load double, ptr %3, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !60
  %10 = uitofp <2 x i64> %9 to <2 x double>
  %11 = extractelement <2 x double> %10, i64 0
  %12 = extractelement <2 x double> %10, i64 1
  %13 = fmul double %11, %12
  %14 = and i32 %6, 8
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %17 = load double, ptr %16, align 8
  %18 = select i1 %15, double %13, double %17
  %19 = and i32 %6, 4096
  %20 = icmp eq i32 %19, 0
  %21 = fmul double %7, 6.553500e+02
  %22 = fmul double %18, 6.553500e+02
  %23 = select i1 %20, double %18, double %22
  %24 = select i1 %20, double %7, double %21
  %25 = fneg double %24
  %26 = call double @llvm.fmuladd.f64(double %11, double %12, double %25)
  %27 = select i1 %15, double %26, double %23
  %28 = call i32 @ContrastStretchImageChannel(ptr noundef nonnull %0, i32 noundef 134217719, double noundef %24, double noundef %27) #17
  br label %29

29:                                               ; preds = %2, %5
  %30 = phi i32 [ %28, %5 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ContrastStretchImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = alloca ptr, align 8
  %14 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %5, align 8, !tbaa !27
  store i32 %1, ptr %6, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %16 = load i32, ptr %15, align 8, !tbaa !29
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1166, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #18
  br label %21

21:                                               ; preds = %18, %4
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %23 = tail call i32 @AccelerateContrastStretchImageChannel(ptr noundef nonnull %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef nonnull %22) #18
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %566, label %25

25:                                               ; preds = %21
  %26 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #19
  %27 = tail call dereferenceable_or_null(655360) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 10) #19
  store ptr %27, ptr %13, align 8, !tbaa !27
  %28 = icmp eq ptr %26, null
  %29 = icmp eq ptr %27, null
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1180, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %32) #18
  br label %566

34:                                               ; preds = %25
  store ptr %22, ptr %8, align 8, !tbaa !27
  %35 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef nonnull %22) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 2) #18
  br label %39

39:                                               ; preds = %37, %34
  %40 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %26, i32 noundef 0, i64 noundef 3670016) #18
  %41 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %22) #18
  store ptr %41, ptr %7, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !40
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = and i32 %1, 1
  br label %159

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %49 = and i32 %1, 256
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %1, 1
  %52 = icmp eq i32 %51, 0
  %53 = and i32 %1, 2
  %54 = icmp eq i32 %53, 0
  %55 = and i32 %1, 4
  %56 = icmp eq i32 %55, 0
  %57 = and i32 %1, 8
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %1, 32
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %62

62:                                               ; preds = %47, %154
  %63 = phi i64 [ 0, %47 ], [ %156, %154 ]
  %64 = phi i32 [ 1, %47 ], [ %155, %154 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %154, label %66

66:                                               ; preds = %62
  %67 = load i64, ptr %48, align 8, !tbaa !61
  %68 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %41, i64 noundef 0, i64 noundef %63, i64 noundef %67, i64 noundef 1, ptr noundef nonnull %22) #20
  %69 = icmp eq ptr %68, null
  br i1 %69, label %154, label %70

70:                                               ; preds = %66
  %71 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %41) #18
  %72 = load i64, ptr %48, align 8, !tbaa !61
  %73 = icmp sgt i64 %72, 0
  br i1 %50, label %75, label %74

74:                                               ; preds = %70
  br i1 %73, label %78, label %154

75:                                               ; preds = %70
  br i1 %73, label %76, label %154

76:                                               ; preds = %75
  %77 = icmp eq ptr %71, null
  br label %98

78:                                               ; preds = %74, %78
  %79 = phi i64 [ %95, %78 ], [ 0, %74 ]
  %80 = phi ptr [ %94, %78 ], [ %68, %74 ]
  %81 = tail call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %80) #20
  %82 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %81) #17
  %83 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %82) #17, !range !58
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %84, i32 5
  %86 = load <2 x float>, ptr %85, align 8, !tbaa !79
  %87 = fadd <2 x float> %86, <float 1.000000e+00, float 1.000000e+00>
  store <2 x float> %87, ptr %85, align 8, !tbaa !79
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %84, i32 7
  %89 = load float, ptr %88, align 8, !tbaa !74
  %90 = fadd float %89, 1.000000e+00
  store float %90, ptr %88, align 8, !tbaa !74
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %84, i32 9
  %92 = load float, ptr %91, align 8, !tbaa !77
  %93 = fadd float %92, 1.000000e+00
  store float %93, ptr %91, align 8, !tbaa !77
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 1
  %95 = add nuw nsw i64 %79, 1
  %96 = load i64, ptr %48, align 8, !tbaa !61
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %78, label %154, !llvm.loop !85

98:                                               ; preds = %76, %150
  %99 = phi i64 [ 0, %76 ], [ %152, %150 ]
  %100 = phi ptr [ %68, %76 ], [ %151, %150 ]
  br i1 %52, label %109, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %103 = load i16, ptr %102, align 2, !tbaa !33
  %104 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %103) #17, !range !58
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %105, i32 5
  %107 = load float, ptr %106, align 8, !tbaa !70
  %108 = fadd float %107, 1.000000e+00
  store float %108, ptr %106, align 8, !tbaa !70
  br label %109

109:                                              ; preds = %101, %98
  br i1 %54, label %118, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  %112 = load i16, ptr %111, align 2, !tbaa !34
  %113 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %112) #17, !range !58
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %114, i32 6
  %116 = load float, ptr %115, align 4, !tbaa !73
  %117 = fadd float %116, 1.000000e+00
  store float %117, ptr %115, align 4, !tbaa !73
  br label %118

118:                                              ; preds = %110, %109
  br i1 %56, label %126, label %119

119:                                              ; preds = %118
  %120 = load i16, ptr %100, align 2, !tbaa !35
  %121 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %120) #17, !range !58
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %122, i32 7
  %124 = load float, ptr %123, align 8, !tbaa !74
  %125 = fadd float %124, 1.000000e+00
  store float %125, ptr %123, align 8, !tbaa !74
  br label %126

126:                                              ; preds = %119, %118
  br i1 %58, label %135, label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %129 = load i16, ptr %128, align 2, !tbaa !36
  %130 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %129) #17, !range !58
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %131, i32 8
  %133 = load float, ptr %132, align 4, !tbaa !75
  %134 = fadd float %133, 1.000000e+00
  store float %134, ptr %132, align 4, !tbaa !75
  br label %135

135:                                              ; preds = %127, %126
  br i1 %60, label %150, label %136

136:                                              ; preds = %135
  %137 = load i32, ptr %61, align 4, !tbaa !26
  %138 = icmp eq i32 %137, 12
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  br i1 %77, label %143, label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds i16, ptr %71, i64 %99
  %142 = load i16, ptr %141, align 2, !tbaa !76
  br label %143

143:                                              ; preds = %139, %140
  %144 = phi i16 [ %142, %140 ], [ 0, %139 ]
  %145 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %144) #17, !range !58
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %146, i32 9
  %148 = load float, ptr %147, align 8, !tbaa !77
  %149 = fadd float %148, 1.000000e+00
  store float %149, ptr %147, align 8, !tbaa !77
  br label %150

150:                                              ; preds = %143, %136, %135
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 1
  %152 = add nuw nsw i64 %99, 1
  %153 = icmp eq i64 %152, %72
  br i1 %153, label %154, label %98, !llvm.loop !86

154:                                              ; preds = %78, %150, %74, %75, %66, %62
  %155 = phi i32 [ 0, %62 ], [ 0, %66 ], [ %64, %75 ], [ %64, %74 ], [ %64, %150 ], [ %64, %78 ]
  %156 = add nuw nsw i64 %63, 1
  %157 = load i64, ptr %42, align 8, !tbaa !40
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %62, label %159, !llvm.loop !87

159:                                              ; preds = %154, %45
  %160 = phi i32 [ %46, %45 ], [ %51, %154 ]
  %161 = phi i32 [ 1, %45 ], [ %155, %154 ]
  %162 = phi i64 [ %43, %45 ], [ %157, %154 ]
  store i32 %161, ptr %9, align 4, !tbaa !28
  %163 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  store float 0.000000e+00, ptr %163, align 8, !tbaa !70
  %164 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext -1) #17, !range !58
  %165 = uitofp i32 %164 to float
  %166 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 5
  store float %165, ptr %166, align 8, !tbaa !70
  %167 = icmp eq i32 %160, 0
  br i1 %167, label %202, label %168

168:                                              ; preds = %159, %176
  %169 = phi double [ %174, %176 ], [ 0.000000e+00, %159 ]
  %170 = phi i64 [ %177, %176 ], [ 0, %159 ]
  %171 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %170, i32 5
  %172 = load float, ptr %171, align 8, !tbaa !70
  %173 = fpext float %172 to double
  %174 = fadd double %169, %173
  %175 = fcmp ogt double %174, %2
  br i1 %175, label %179, label %176

176:                                              ; preds = %168
  %177 = add nuw nsw i64 %170, 1
  %178 = icmp eq i64 %177, 65536
  br i1 %178, label %179, label %168, !llvm.loop !88

179:                                              ; preds = %168, %176
  %180 = phi i64 [ %170, %168 ], [ 65536, %176 ]
  %181 = sitofp i64 %180 to float
  store float %181, ptr %163, align 8, !tbaa !70
  %182 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %183 = load i64, ptr %182, align 8, !tbaa !61
  %184 = uitofp i64 %183 to double
  %185 = uitofp i64 %162 to double
  %186 = fneg double %3
  %187 = tail call double @llvm.fmuladd.f64(double %184, double %185, double %186)
  br label %188

188:                                              ; preds = %179, %196
  %189 = phi double [ 0.000000e+00, %179 ], [ %194, %196 ]
  %190 = phi i64 [ 65535, %179 ], [ %197, %196 ]
  %191 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %190, i32 5
  %192 = load float, ptr %191, align 8, !tbaa !70
  %193 = fpext float %192 to double
  %194 = fadd double %189, %193
  %195 = fcmp ogt double %194, %187
  br i1 %195, label %199, label %196

196:                                              ; preds = %188
  %197 = add nsw i64 %190, -1
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %188, !llvm.loop !89

199:                                              ; preds = %188, %196
  %200 = phi i64 [ %190, %188 ], [ 0, %196 ]
  %201 = sitofp i64 %200 to float
  store float %201, ptr %166, align 8, !tbaa !70
  br label %202

202:                                              ; preds = %199, %159
  %203 = phi float [ %201, %199 ], [ %165, %159 ]
  %204 = phi float [ %181, %199 ], [ 0.000000e+00, %159 ]
  %205 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  store float 0.000000e+00, ptr %205, align 4, !tbaa !73
  %206 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 6
  store float %165, ptr %206, align 4, !tbaa !73
  %207 = and i32 %1, 2
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %243, label %209

209:                                              ; preds = %202, %217
  %210 = phi double [ %215, %217 ], [ 0.000000e+00, %202 ]
  %211 = phi i64 [ %218, %217 ], [ 0, %202 ]
  %212 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %211, i32 6
  %213 = load float, ptr %212, align 4, !tbaa !73
  %214 = fpext float %213 to double
  %215 = fadd double %210, %214
  %216 = fcmp ogt double %215, %2
  br i1 %216, label %220, label %217

217:                                              ; preds = %209
  %218 = add nuw nsw i64 %211, 1
  %219 = icmp eq i64 %218, 65536
  br i1 %219, label %220, label %209, !llvm.loop !90

220:                                              ; preds = %209, %217
  %221 = phi i64 [ %211, %209 ], [ 65536, %217 ]
  %222 = sitofp i64 %221 to float
  store float %222, ptr %205, align 4, !tbaa !73
  %223 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %224 = load i64, ptr %223, align 8, !tbaa !61
  %225 = uitofp i64 %224 to double
  %226 = uitofp i64 %162 to double
  %227 = fneg double %3
  %228 = tail call double @llvm.fmuladd.f64(double %225, double %226, double %227)
  br label %229

229:                                              ; preds = %220, %237
  %230 = phi double [ 0.000000e+00, %220 ], [ %235, %237 ]
  %231 = phi i64 [ 65535, %220 ], [ %238, %237 ]
  %232 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %231, i32 6
  %233 = load float, ptr %232, align 4, !tbaa !73
  %234 = fpext float %233 to double
  %235 = fadd double %230, %234
  %236 = fcmp ogt double %235, %228
  br i1 %236, label %240, label %237

237:                                              ; preds = %229
  %238 = add nsw i64 %231, -1
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %229, !llvm.loop !91

240:                                              ; preds = %229, %237
  %241 = phi i64 [ %231, %229 ], [ 0, %237 ]
  %242 = sitofp i64 %241 to float
  store float %242, ptr %206, align 4, !tbaa !73
  br label %243

243:                                              ; preds = %240, %202
  %244 = phi float [ %242, %240 ], [ %165, %202 ]
  %245 = phi float [ %222, %240 ], [ 0.000000e+00, %202 ]
  %246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  store float 0.000000e+00, ptr %246, align 8, !tbaa !74
  %247 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 7
  store float %165, ptr %247, align 8, !tbaa !74
  %248 = and i32 %1, 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %284, label %250

250:                                              ; preds = %243, %258
  %251 = phi double [ %256, %258 ], [ 0.000000e+00, %243 ]
  %252 = phi i64 [ %259, %258 ], [ 0, %243 ]
  %253 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %252, i32 7
  %254 = load float, ptr %253, align 8, !tbaa !74
  %255 = fpext float %254 to double
  %256 = fadd double %251, %255
  %257 = fcmp ogt double %256, %2
  br i1 %257, label %261, label %258

258:                                              ; preds = %250
  %259 = add nuw nsw i64 %252, 1
  %260 = icmp eq i64 %259, 65536
  br i1 %260, label %261, label %250, !llvm.loop !92

261:                                              ; preds = %250, %258
  %262 = phi i64 [ %252, %250 ], [ 65536, %258 ]
  %263 = sitofp i64 %262 to float
  store float %263, ptr %246, align 8, !tbaa !74
  %264 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %265 = load i64, ptr %264, align 8, !tbaa !61
  %266 = uitofp i64 %265 to double
  %267 = uitofp i64 %162 to double
  %268 = fneg double %3
  %269 = tail call double @llvm.fmuladd.f64(double %266, double %267, double %268)
  br label %270

270:                                              ; preds = %261, %278
  %271 = phi double [ 0.000000e+00, %261 ], [ %276, %278 ]
  %272 = phi i64 [ 65535, %261 ], [ %279, %278 ]
  %273 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %272, i32 7
  %274 = load float, ptr %273, align 8, !tbaa !74
  %275 = fpext float %274 to double
  %276 = fadd double %271, %275
  %277 = fcmp ogt double %276, %269
  br i1 %277, label %281, label %278

278:                                              ; preds = %270
  %279 = add nsw i64 %272, -1
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %270, !llvm.loop !93

281:                                              ; preds = %270, %278
  %282 = phi i64 [ %272, %270 ], [ 0, %278 ]
  %283 = sitofp i64 %282 to float
  store float %283, ptr %247, align 8, !tbaa !74
  br label %284

284:                                              ; preds = %281, %243
  %285 = phi float [ %283, %281 ], [ %165, %243 ]
  %286 = phi float [ %263, %281 ], [ 0.000000e+00, %243 ]
  %287 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  store float 0.000000e+00, ptr %287, align 4, !tbaa !75
  %288 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 8
  store float %165, ptr %288, align 4, !tbaa !75
  %289 = and i32 %1, 8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %325, label %291

291:                                              ; preds = %284, %299
  %292 = phi double [ %297, %299 ], [ 0.000000e+00, %284 ]
  %293 = phi i64 [ %300, %299 ], [ 0, %284 ]
  %294 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %293, i32 8
  %295 = load float, ptr %294, align 4, !tbaa !75
  %296 = fpext float %295 to double
  %297 = fadd double %292, %296
  %298 = fcmp ogt double %297, %2
  br i1 %298, label %302, label %299

299:                                              ; preds = %291
  %300 = add nuw nsw i64 %293, 1
  %301 = icmp eq i64 %300, 65536
  br i1 %301, label %302, label %291, !llvm.loop !94

302:                                              ; preds = %291, %299
  %303 = phi i64 [ %293, %291 ], [ 65536, %299 ]
  %304 = sitofp i64 %303 to float
  store float %304, ptr %287, align 4, !tbaa !75
  %305 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %306 = load i64, ptr %305, align 8, !tbaa !61
  %307 = uitofp i64 %306 to double
  %308 = uitofp i64 %162 to double
  %309 = fneg double %3
  %310 = tail call double @llvm.fmuladd.f64(double %307, double %308, double %309)
  br label %311

311:                                              ; preds = %302, %319
  %312 = phi double [ 0.000000e+00, %302 ], [ %317, %319 ]
  %313 = phi i64 [ 65535, %302 ], [ %320, %319 ]
  %314 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %313, i32 8
  %315 = load float, ptr %314, align 4, !tbaa !75
  %316 = fpext float %315 to double
  %317 = fadd double %312, %316
  %318 = fcmp ogt double %317, %310
  br i1 %318, label %322, label %319

319:                                              ; preds = %311
  %320 = add nsw i64 %313, -1
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %311, !llvm.loop !95

322:                                              ; preds = %311, %319
  %323 = phi i64 [ %313, %311 ], [ 0, %319 ]
  %324 = sitofp i64 %323 to float
  store float %324, ptr %288, align 4, !tbaa !75
  br label %325

325:                                              ; preds = %322, %284
  %326 = phi float [ %324, %322 ], [ %165, %284 ]
  %327 = phi float [ %304, %322 ], [ 0.000000e+00, %284 ]
  %328 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  store float 0.000000e+00, ptr %328, align 8, !tbaa !77
  %329 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 9
  store float %165, ptr %329, align 8, !tbaa !77
  %330 = and i32 %1, 32
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %370, label %332

332:                                              ; preds = %325
  %333 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %334 = load i32, ptr %333, align 4, !tbaa !26
  %335 = icmp eq i32 %334, 12
  br i1 %335, label %336, label %370

336:                                              ; preds = %332, %344
  %337 = phi double [ %342, %344 ], [ 0.000000e+00, %332 ]
  %338 = phi i64 [ %345, %344 ], [ 0, %332 ]
  %339 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %338, i32 9
  %340 = load float, ptr %339, align 8, !tbaa !77
  %341 = fpext float %340 to double
  %342 = fadd double %337, %341
  %343 = fcmp ogt double %342, %2
  br i1 %343, label %347, label %344

344:                                              ; preds = %336
  %345 = add nuw nsw i64 %338, 1
  %346 = icmp eq i64 %345, 65536
  br i1 %346, label %347, label %336, !llvm.loop !96

347:                                              ; preds = %336, %344
  %348 = phi i64 [ %338, %336 ], [ 65536, %344 ]
  %349 = sitofp i64 %348 to float
  store float %349, ptr %328, align 8, !tbaa !77
  %350 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %351 = load i64, ptr %350, align 8, !tbaa !61
  %352 = uitofp i64 %351 to double
  %353 = uitofp i64 %162 to double
  %354 = fneg double %3
  %355 = tail call double @llvm.fmuladd.f64(double %352, double %353, double %354)
  br label %356

356:                                              ; preds = %347, %364
  %357 = phi double [ 0.000000e+00, %347 ], [ %362, %364 ]
  %358 = phi i64 [ 65535, %347 ], [ %365, %364 ]
  %359 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %358, i32 9
  %360 = load float, ptr %359, align 8, !tbaa !77
  %361 = fpext float %360 to double
  %362 = fadd double %357, %361
  %363 = fcmp ogt double %362, %355
  br i1 %363, label %367, label %364

364:                                              ; preds = %356
  %365 = add nsw i64 %358, -1
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %356, !llvm.loop !97

367:                                              ; preds = %356, %364
  %368 = phi i64 [ %358, %356 ], [ 0, %364 ]
  %369 = sitofp i64 %368 to float
  store float %369, ptr %329, align 8, !tbaa !77
  br label %370

370:                                              ; preds = %367, %332, %325
  %371 = phi float [ %369, %367 ], [ %165, %332 ], [ %165, %325 ]
  %372 = phi float [ %349, %367 ], [ 0.000000e+00, %332 ], [ 0.000000e+00, %325 ]
  %373 = tail call ptr @RelinquishMagickMemory(ptr noundef %26) #18
  %374 = tail call ptr @ResetMagickMemory(ptr noundef %27, i32 noundef 0, i64 noundef 655360) #18
  %375 = fptosi float %204 to i64
  %376 = fptosi float %203 to i64
  %377 = fcmp une float %204, %203
  %378 = fsub float %203, %204
  %379 = fptosi float %245 to i64
  %380 = fptosi float %244 to i64
  %381 = fcmp une float %245, %244
  %382 = fsub float %244, %245
  %383 = fptosi float %286 to i64
  %384 = fptosi float %285 to i64
  %385 = fcmp une float %286, %285
  %386 = fsub float %285, %286
  %387 = fptosi float %327 to i64
  %388 = fptosi float %326 to i64
  %389 = fcmp une float %327, %326
  %390 = fsub float %326, %327
  %391 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %392 = fptosi float %372 to i64
  %393 = fptosi float %371 to i64
  %394 = fcmp une float %372, %371
  %395 = fsub float %371, %372
  br label %396

396:                                              ; preds = %370, %475
  %397 = phi i64 [ 0, %370 ], [ %476, %475 ]
  br i1 %167, label %412, label %398

398:                                              ; preds = %396
  %399 = icmp slt i64 %397, %375
  br i1 %399, label %409, label %400

400:                                              ; preds = %398
  %401 = icmp sgt i64 %397, %376
  br i1 %401, label %409, label %402

402:                                              ; preds = %400
  br i1 %377, label %403, label %412

403:                                              ; preds = %402
  %404 = sitofp i64 %397 to float
  %405 = fsub float %404, %204
  %406 = fmul float %405, 6.553500e+04
  %407 = fdiv float %406, %378
  %408 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %407) #17
  br label %409

409:                                              ; preds = %400, %398, %403
  %410 = phi i16 [ %408, %403 ], [ 0, %398 ], [ -1, %400 ]
  %411 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %27, i64 %397
  store i16 %410, ptr %411, align 2, !tbaa !98
  br label %412

412:                                              ; preds = %409, %402, %396
  br i1 %208, label %427, label %413

413:                                              ; preds = %412
  %414 = icmp slt i64 %397, %379
  br i1 %414, label %424, label %415

415:                                              ; preds = %413
  %416 = icmp sgt i64 %397, %380
  br i1 %416, label %424, label %417

417:                                              ; preds = %415
  br i1 %381, label %418, label %427

418:                                              ; preds = %417
  %419 = sitofp i64 %397 to float
  %420 = fsub float %419, %245
  %421 = fmul float %420, 6.553500e+04
  %422 = fdiv float %421, %382
  %423 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %422) #17
  br label %424

424:                                              ; preds = %415, %413, %418
  %425 = phi i16 [ %423, %418 ], [ 0, %413 ], [ -1, %415 ]
  %426 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %27, i64 %397, i32 1
  store i16 %425, ptr %426, align 2, !tbaa !100
  br label %427

427:                                              ; preds = %424, %417, %412
  br i1 %249, label %442, label %428

428:                                              ; preds = %427
  %429 = icmp slt i64 %397, %383
  br i1 %429, label %439, label %430

430:                                              ; preds = %428
  %431 = icmp sgt i64 %397, %384
  br i1 %431, label %439, label %432

432:                                              ; preds = %430
  br i1 %385, label %433, label %442

433:                                              ; preds = %432
  %434 = sitofp i64 %397 to float
  %435 = fsub float %434, %286
  %436 = fmul float %435, 6.553500e+04
  %437 = fdiv float %436, %386
  %438 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %437) #17
  br label %439

439:                                              ; preds = %430, %428, %433
  %440 = phi i16 [ %438, %433 ], [ 0, %428 ], [ -1, %430 ]
  %441 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %27, i64 %397, i32 2
  store i16 %440, ptr %441, align 2, !tbaa !101
  br label %442

442:                                              ; preds = %439, %432, %427
  br i1 %290, label %457, label %443

443:                                              ; preds = %442
  %444 = icmp slt i64 %397, %387
  br i1 %444, label %454, label %445

445:                                              ; preds = %443
  %446 = icmp sgt i64 %397, %388
  br i1 %446, label %454, label %447

447:                                              ; preds = %445
  br i1 %389, label %448, label %457

448:                                              ; preds = %447
  %449 = sitofp i64 %397 to float
  %450 = fsub float %449, %327
  %451 = fmul float %450, 6.553500e+04
  %452 = fdiv float %451, %390
  %453 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %452) #17
  br label %454

454:                                              ; preds = %445, %443, %448
  %455 = phi i16 [ %453, %448 ], [ 0, %443 ], [ -1, %445 ]
  %456 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %27, i64 %397, i32 3
  store i16 %455, ptr %456, align 2, !tbaa !102
  br label %457

457:                                              ; preds = %454, %447, %442
  br i1 %331, label %475, label %458

458:                                              ; preds = %457
  %459 = load i32, ptr %391, align 4, !tbaa !26
  %460 = icmp eq i32 %459, 12
  br i1 %460, label %461, label %475

461:                                              ; preds = %458
  %462 = icmp slt i64 %397, %392
  br i1 %462, label %472, label %463

463:                                              ; preds = %461
  %464 = icmp sgt i64 %397, %393
  br i1 %464, label %472, label %465

465:                                              ; preds = %463
  br i1 %394, label %466, label %475

466:                                              ; preds = %465
  %467 = sitofp i64 %397 to float
  %468 = fsub float %467, %372
  %469 = fmul float %468, 6.553500e+04
  %470 = fdiv float %469, %395
  %471 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %470) #17
  br label %472

472:                                              ; preds = %463, %461, %466
  %473 = phi i16 [ %471, %466 ], [ 0, %461 ], [ -1, %463 ]
  %474 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %27, i64 %397, i32 4
  store i16 %473, ptr %474, align 2, !tbaa !103
  br label %475

475:                                              ; preds = %472, %457, %458, %465
  %476 = add nuw nsw i64 %397, 1
  %477 = icmp eq i64 %476, 65536
  br i1 %477, label %478, label %396, !llvm.loop !104

478:                                              ; preds = %475
  br i1 %290, label %479, label %483

479:                                              ; preds = %478
  br i1 %331, label %484, label %480

480:                                              ; preds = %479
  %481 = load i32, ptr %391, align 4, !tbaa !26
  %482 = icmp eq i32 %481, 12
  br i1 %482, label %483, label %484

483:                                              ; preds = %478, %480
  store i32 1, ptr %0, align 8, !tbaa !30
  br label %541

484:                                              ; preds = %480, %479
  %485 = load i32, ptr %0, align 8, !tbaa !30
  %486 = icmp eq i32 %485, 2
  br i1 %486, label %487, label %541

487:                                              ; preds = %484
  %488 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %489 = load i64, ptr %488, align 8, !tbaa !31
  %490 = icmp sgt i64 %489, 0
  br i1 %490, label %491, label %541

491:                                              ; preds = %487
  %492 = fcmp oeq float %204, %203
  %493 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %494 = fcmp oeq float %245, %244
  %495 = fcmp oeq float %286, %285
  %496 = fcmp oeq float %327, %326
  %497 = or i1 %167, %492
  %498 = or i1 %208, %494
  %499 = or i1 %249, %495
  %500 = or i1 %290, %496
  br label %501

501:                                              ; preds = %491, %538
  %502 = phi i64 [ 0, %491 ], [ %539, %538 ]
  br i1 %497, label %511, label %503

503:                                              ; preds = %501
  %504 = load ptr, ptr %493, align 8, !tbaa !32
  %505 = getelementptr inbounds %struct._PixelPacket, ptr %504, i64 %502, i32 2
  %506 = load i16, ptr %505, align 2, !tbaa !33
  %507 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %506) #17, !range !58
  %508 = zext i32 %507 to i64
  %509 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %27, i64 %508
  %510 = load i16, ptr %509, align 2, !tbaa !98
  store i16 %510, ptr %505, align 2, !tbaa !33
  br label %511

511:                                              ; preds = %501, %503
  br i1 %498, label %520, label %512

512:                                              ; preds = %511
  %513 = load ptr, ptr %493, align 8, !tbaa !32
  %514 = getelementptr inbounds %struct._PixelPacket, ptr %513, i64 %502, i32 1
  %515 = load i16, ptr %514, align 2, !tbaa !34
  %516 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %515) #17, !range !58
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %27, i64 %517, i32 1
  %519 = load i16, ptr %518, align 2, !tbaa !100
  store i16 %519, ptr %514, align 2, !tbaa !34
  br label %520

520:                                              ; preds = %511, %512
  br i1 %499, label %529, label %521

521:                                              ; preds = %520
  %522 = load ptr, ptr %493, align 8, !tbaa !32
  %523 = getelementptr inbounds %struct._PixelPacket, ptr %522, i64 %502
  %524 = load i16, ptr %523, align 2, !tbaa !35
  %525 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %524) #17, !range !58
  %526 = zext i32 %525 to i64
  %527 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %27, i64 %526, i32 2
  %528 = load i16, ptr %527, align 2, !tbaa !101
  store i16 %528, ptr %523, align 2, !tbaa !35
  br label %529

529:                                              ; preds = %520, %521
  br i1 %500, label %538, label %530

530:                                              ; preds = %529
  %531 = load ptr, ptr %493, align 8, !tbaa !32
  %532 = getelementptr inbounds %struct._PixelPacket, ptr %531, i64 %502, i32 3
  %533 = load i16, ptr %532, align 2, !tbaa !36
  %534 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %533) #17, !range !58
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %27, i64 %535, i32 3
  %537 = load i16, ptr %536, align 2, !tbaa !102
  store i16 %537, ptr %532, align 2, !tbaa !36
  br label %538

538:                                              ; preds = %529, %530
  %539 = add nuw nsw i64 %502, 1
  %540 = icmp eq i64 %539, %489
  br i1 %540, label %541, label %501, !llvm.loop !105

541:                                              ; preds = %538, %483, %487, %484
  store i32 1, ptr %9, align 4, !tbaa !28
  store i64 0, ptr %10, align 8, !tbaa !39
  %542 = load i64, ptr %42, align 8, !tbaa !40
  %543 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %544 = shl i64 %543, 5
  %545 = icmp ugt i64 %542, %544
  br i1 %545, label %546, label %554

546:                                              ; preds = %541
  %547 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %548 = icmp eq i32 %547, 3
  br i1 %548, label %554, label %549

549:                                              ; preds = %546
  %550 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %551 = icmp eq i32 %550, 3
  br i1 %551, label %554, label %552

552:                                              ; preds = %549
  %553 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %558

554:                                              ; preds = %549, %546, %541
  %555 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %556 = icmp ult i64 %555, 2
  %557 = select i1 %556, i64 1, i64 2
  br label %558

558:                                              ; preds = %554, %552
  %559 = phi i64 [ %553, %552 ], [ %557, %554 ]
  %560 = trunc i64 %559 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %14, i32 %560)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @ContrastStretchImageChannel.omp_outlined, ptr nonnull %5, ptr nonnull %9, ptr nonnull %7, ptr nonnull %8, ptr nonnull %6, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, ptr nonnull %10)
  %561 = load ptr, ptr %7, align 8, !tbaa !27
  %562 = call ptr @DestroyCacheView(ptr noundef %561) #18
  store ptr %562, ptr %7, align 8, !tbaa !27
  %563 = load ptr, ptr %13, align 8, !tbaa !27
  %564 = call ptr @RelinquishMagickMemory(ptr noundef %563) #18
  %565 = load i32, ptr %9, align 4, !tbaa !28
  br label %566

566:                                              ; preds = %31, %21, %558
  %567 = phi i32 [ %565, %558 ], [ 1, %21 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i32 %567
}

; Function Attrs: optsize
declare i32 @AccelerateContrastStretchImageChannel(ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ContrastStretchImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #7 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !40
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %180

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 %19, ptr %13, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 1, ptr %14, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 0, ptr %15, align 4, !tbaa !28
  %22 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %13, align 8, !tbaa !60
  %25 = load i64, ptr %12, align 8, !tbaa !60
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %179, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  br label %38

38:                                               ; preds = %27, %171
  %39 = phi i64 [ %24, %27 ], [ %177, %171 ]
  %40 = phi i64 [ %25, %27 ], [ %175, %171 ]
  %41 = icmp sgt i64 %40, %39
  br i1 %41, label %171, label %42

42:                                               ; preds = %38, %165
  %43 = phi i64 [ %166, %165 ], [ %40, %38 ]
  %44 = load i32, ptr %3, align 4, !tbaa !28
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %165, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %4, align 8, !tbaa !27
  %48 = load ptr, ptr %2, align 8, !tbaa !27
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !61
  %51 = load ptr, ptr %5, align 8, !tbaa !27
  %52 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %47, i64 noundef 0, i64 noundef %43, i64 noundef %50, i64 noundef 1, ptr noundef %51) #20
  %53 = icmp eq ptr %52, null
  br i1 %53, label %164, label %54

54:                                               ; preds = %46
  %55 = load ptr, ptr %4, align 8, !tbaa !27
  %56 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %55) #18
  %57 = load ptr, ptr %2, align 8, !tbaa !27
  %58 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !61
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %145

61:                                               ; preds = %54
  %62 = load i32, ptr %6, align 4, !tbaa !28
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  %65 = load float, ptr %28, align 8
  %66 = load float, ptr %29, align 8
  %67 = fcmp oeq float %65, %66
  %68 = load ptr, ptr %9, align 8
  %69 = load float, ptr %30, align 4
  %70 = load float, ptr %31, align 4
  %71 = fcmp oeq float %69, %70
  %72 = load float, ptr %32, align 8
  %73 = load float, ptr %33, align 8
  %74 = fcmp oeq float %72, %73
  %75 = load float, ptr %34, align 4
  %76 = load float, ptr %35, align 4
  %77 = fcmp oeq float %75, %76
  %78 = insertelement <4 x i32> poison, i32 %62, i64 0
  %79 = shufflevector <4 x i32> %78, <4 x i32> poison, <4 x i32> zeroinitializer
  %80 = and <4 x i32> %79, <i32 32, i32 8, i32 4, i32 2>
  %81 = icmp eq <4 x i32> %80, zeroinitializer
  %82 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 1
  %83 = load float, ptr %36, align 8
  %84 = load float, ptr %37, align 8
  %85 = fcmp oeq float %83, %84
  %86 = icmp eq ptr %56, null
  %87 = select i1 %64, i1 true, i1 %67
  %88 = extractelement <4 x i1> %81, i64 3
  %89 = select i1 %88, i1 true, i1 %71
  %90 = extractelement <4 x i1> %81, i64 2
  %91 = select i1 %90, i1 true, i1 %74
  %92 = extractelement <4 x i1> %81, i64 1
  %93 = select i1 %92, i1 true, i1 %77
  %94 = extractelement <4 x i1> %81, i64 0
  br label %95

95:                                               ; preds = %61, %141
  %96 = phi i64 [ 0, %61 ], [ %143, %141 ]
  %97 = phi ptr [ %52, %61 ], [ %142, %141 ]
  br i1 %87, label %105, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 2
  %100 = load i16, ptr %99, align 2, !tbaa !33
  %101 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %100) #17, !range !58
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !98
  store i16 %104, ptr %99, align 2, !tbaa !33
  br label %105

105:                                              ; preds = %95, %98
  br i1 %89, label %113, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 1
  %108 = load i16, ptr %107, align 2, !tbaa !34
  %109 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %108) #17, !range !58
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %110, i32 1
  %112 = load i16, ptr %111, align 2, !tbaa !100
  store i16 %112, ptr %107, align 2, !tbaa !34
  br label %113

113:                                              ; preds = %105, %106
  br i1 %91, label %120, label %114

114:                                              ; preds = %113
  %115 = load i16, ptr %97, align 2, !tbaa !35
  %116 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %115) #17, !range !58
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %117, i32 2
  %119 = load i16, ptr %118, align 2, !tbaa !101
  store i16 %119, ptr %97, align 2, !tbaa !35
  br label %120

120:                                              ; preds = %113, %114
  br i1 %93, label %128, label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 0, i32 3
  %123 = load i16, ptr %122, align 2, !tbaa !36
  %124 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %123) #17, !range !58
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %125, i32 3
  %127 = load i16, ptr %126, align 2, !tbaa !102
  store i16 %127, ptr %122, align 2, !tbaa !36
  br label %128

128:                                              ; preds = %120, %121
  br i1 %94, label %141, label %129

129:                                              ; preds = %128
  %130 = load i32, ptr %82, align 4, !tbaa !26
  %131 = icmp ne i32 %130, 12
  %132 = select i1 %131, i1 true, i1 %85
  %133 = select i1 %132, i1 true, i1 %86
  br i1 %133, label %141, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds i16, ptr %56, i64 %96
  %136 = load i16, ptr %135, align 2, !tbaa !76
  %137 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %136) #17, !range !58
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %138, i32 4
  %140 = load i16, ptr %139, align 2, !tbaa !103
  store i16 %140, ptr %135, align 2, !tbaa !76
  br label %141

141:                                              ; preds = %129, %134, %128
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %97, i64 1
  %143 = add nuw nsw i64 %96, 1
  %144 = icmp eq i64 %143, %59
  br i1 %144, label %145, label %95, !llvm.loop !106

145:                                              ; preds = %141, %54
  %146 = load ptr, ptr %4, align 8, !tbaa !27
  %147 = load ptr, ptr %5, align 8, !tbaa !27
  %148 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %146, ptr noundef %147) #20
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %151

151:                                              ; preds = %150, %145
  %152 = load ptr, ptr %2, align 8, !tbaa !27
  %153 = getelementptr inbounds %struct._Image, ptr %152, i64 0, i32 47
  %154 = load ptr, ptr %153, align 8, !tbaa !63
  %155 = icmp eq ptr %154, null
  br i1 %155, label %165, label %156

156:                                              ; preds = %151
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ContrastStretchImageChannel.var)
  %157 = load ptr, ptr %2, align 8, !tbaa !27
  %158 = load i64, ptr %10, align 8, !tbaa !39
  %159 = add nsw i64 %158, 1
  store i64 %159, ptr %10, align 8, !tbaa !39
  %160 = getelementptr inbounds %struct._Image, ptr %157, i64 0, i32 8
  %161 = load i64, ptr %160, align 8, !tbaa !40
  %162 = call fastcc i32 @SetImageProgress(ptr noundef %157, ptr noundef nonnull @.str.27, i64 noundef %158, i64 noundef %161) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_ContrastStretchImageChannel.var)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156, %46
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %165

165:                                              ; preds = %164, %151, %156, %42
  %166 = add nsw i64 %43, 1
  %167 = load i64, ptr %13, align 8, !tbaa !60
  %168 = icmp slt i64 %43, %167
  br i1 %168, label %42, label %169

169:                                              ; preds = %165
  %170 = load i64, ptr %12, align 8, !tbaa !60
  br label %171

171:                                              ; preds = %169, %38
  %172 = phi i64 [ %40, %38 ], [ %170, %169 ]
  %173 = phi i64 [ %39, %38 ], [ %167, %169 ]
  %174 = load i64, ptr %14, align 8, !tbaa !60
  %175 = add nsw i64 %174, %172
  store i64 %175, ptr %12, align 8, !tbaa !60
  %176 = add nsw i64 %174, %173
  %177 = call i64 @llvm.smin.i64(i64 %176, i64 %19)
  store i64 %177, ptr %13, align 8, !tbaa !60
  %178 = icmp sgt i64 %175, %177
  br i1 %178, label %179, label %38

179:                                              ; preds = %171, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  br label %180

180:                                              ; preds = %179, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EnhanceImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !27
  store ptr %1, ptr %4, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #8
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !29
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1621, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #18
  br label %18

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !61
  %21 = icmp ult i64 %20, 5
  br i1 %21, label %67, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !40
  %25 = icmp ult i64 %24, 5
  br i1 %25, label %67, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %20, i64 noundef %24, i32 noundef 1, ptr noundef %1) #18
  store ptr %27, ptr %7, align 8, !tbaa !27
  %28 = icmp eq ptr %27, null
  br i1 %28, label %67, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %27, i32 noundef 1) #18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct._Image, ptr %27, i64 0, i32 58
  tail call void @InheritException(ptr noundef %1, ptr noundef nonnull %33) #18
  %34 = tail call ptr @DestroyImage(ptr noundef nonnull %27) #18
  br label %67

35:                                               ; preds = %29
  store i32 1, ptr %8, align 4, !tbaa !28
  store i64 0, ptr %9, align 8, !tbaa !39
  %36 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 56) #18
  %37 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef %1) #18
  store ptr %37, ptr %6, align 8, !tbaa !27
  %38 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %27, ptr noundef %1) #18
  store ptr %38, ptr %5, align 8, !tbaa !27
  %39 = load i64, ptr %23, align 8, !tbaa !40
  %40 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %41 = shl i64 %40, 5
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %27) #18
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %55

51:                                               ; preds = %46, %43, %35
  %52 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %53 = icmp ult i64 %52, 2
  %54 = select i1 %53, i64 1, i64 2
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi i64 [ %50, %49 ], [ %54, %51 ]
  %57 = trunc i64 %56 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %11, i32 %57)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @EnhanceImage.omp_outlined, ptr nonnull %3, ptr nonnull %8, ptr nonnull %6, ptr nonnull %4, ptr nonnull %5, ptr nonnull %7, ptr nonnull %10, ptr nonnull %9)
  %58 = load ptr, ptr %5, align 8, !tbaa !27
  %59 = call ptr @DestroyCacheView(ptr noundef %58) #18
  store ptr %59, ptr %5, align 8, !tbaa !27
  %60 = load ptr, ptr %6, align 8, !tbaa !27
  %61 = call ptr @DestroyCacheView(ptr noundef %60) #18
  store ptr %61, ptr %6, align 8, !tbaa !27
  %62 = load i32, ptr %8, align 4, !tbaa !28
  %63 = icmp eq i32 %62, 0
  %64 = load ptr, ptr %7, align 8, !tbaa !27
  br i1 %63, label %65, label %67

65:                                               ; preds = %55
  %66 = call ptr @DestroyImage(ptr noundef %64) #18
  br label %67

67:                                               ; preds = %55, %65, %26, %18, %22, %32
  %68 = phi ptr [ null, %32 ], [ null, %22 ], [ null, %18 ], [ null, %26 ], [ %66, %65 ], [ %64, %55 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret ptr %68
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @EnhanceImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %8, ptr nocapture noundef nonnull align 8 dereferenceable(8) %9) #7 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load ptr, ptr %2, align 8, !tbaa !27
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !40
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %1568

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 0, ptr %11, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 %18, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 1, ptr %13, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !tbaa !28
  %21 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %21, i32 33, ptr nonnull %14, ptr nonnull %11, ptr nonnull %12, ptr nonnull %13, i64 1, i64 4)
  %22 = load i64, ptr %12, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %12, align 8, !tbaa !60
  %24 = load i64, ptr %11, align 8, !tbaa !60
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %1567, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr %8, i64 32
  br label %28

28:                                               ; preds = %26, %1559
  %29 = phi i64 [ %23, %26 ], [ %1565, %1559 ]
  %30 = phi i64 [ %24, %26 ], [ %1563, %1559 ]
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %1559, label %32

32:                                               ; preds = %28, %1553
  %33 = phi i64 [ %1554, %1553 ], [ %30, %28 ]
  %34 = load i32, ptr %3, align 4, !tbaa !28
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %1553, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8, !tbaa !27
  %38 = add nsw i64 %33, -2
  %39 = load ptr, ptr %2, align 8, !tbaa !27
  %40 = getelementptr inbounds %struct._Image, ptr %39, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !61
  %42 = add i64 %41, 4
  %43 = load ptr, ptr %5, align 8, !tbaa !27
  %44 = call ptr @GetCacheViewVirtualPixels(ptr noundef %37, i64 noundef -2, i64 noundef %38, i64 noundef %42, i64 noundef 5, ptr noundef %43) #20
  %45 = load ptr, ptr %6, align 8, !tbaa !27
  %46 = load ptr, ptr %7, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !61
  %49 = load ptr, ptr %5, align 8, !tbaa !27
  %50 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %45, i64 noundef 0, i64 noundef %33, i64 noundef %48, i64 noundef 1, ptr noundef %49) #20
  %51 = icmp eq ptr %44, null
  %52 = icmp eq ptr %50, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %1552, label %54

54:                                               ; preds = %36
  %55 = load ptr, ptr %2, align 8, !tbaa !27
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !61
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %1533

59:                                               ; preds = %54
  %60 = shl nuw i64 %57, 1
  %61 = add i64 %60, 8
  %62 = add nuw i64 %57, 4
  %63 = mul i64 %57, 3
  %64 = add i64 %63, 12
  %65 = shl i64 %57, 2
  %66 = add i64 %65, 16
  br label %67

67:                                               ; preds = %59, %1518
  %68 = phi ptr [ %44, %59 ], [ %140, %1518 ]
  %69 = phi ptr [ %50, %59 ], [ %1530, %1518 ]
  %70 = phi i64 [ 0, %59 ], [ %1531, %1518 ]
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %61
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 2
  %73 = load <4 x i16>, ptr %72, align 2
  %74 = extractelement <4 x i16> %73, i64 2
  %75 = uitofp i16 %74 to float
  %76 = load <4 x float>, ptr %27, align 8
  %77 = shufflevector <4 x float> %76, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %78 = load <4 x i16>, ptr %68, align 2, !tbaa !76
  %79 = extractelement <4 x i16> %78, i64 2
  %80 = uitofp i16 %79 to float
  %81 = fadd float %75, %80
  %82 = fmul float %81, 5.000000e-01
  %83 = fsub float %80, %75
  %84 = fpext float %82 to double
  %85 = fadd double %84, 1.310720e+05
  %86 = fmul double %85, 0x3EF0001000100010
  %87 = fpext float %83 to double
  %88 = fmul double %86, %87
  %89 = fmul double %88, %87
  %90 = fptrunc double %89 to float
  %91 = shufflevector <4 x i16> %78, <4 x i16> %73, <2 x i32> <i32 1, i32 5>
  %92 = uitofp <2 x i16> %91 to <2 x float>
  %93 = extractelement <2 x float> %92, i64 0
  %94 = extractelement <2 x float> %92, i64 1
  %95 = fsub float %93, %94
  %96 = fpext float %95 to double
  %97 = fmul double %96, 4.000000e+00
  %98 = fpext float %90 to double
  %99 = call double @llvm.fmuladd.f64(double %97, double %96, double %98)
  %100 = fptrunc double %99 to float
  %101 = shufflevector <4 x i16> %78, <4 x i16> %73, <2 x i32> <i32 0, i32 4>
  %102 = uitofp <2 x i16> %101 to <2 x float>
  %103 = extractelement <2 x float> %102, i64 0
  %104 = extractelement <2 x float> %102, i64 1
  %105 = fadd float %104, %103
  %106 = fmul float %105, 5.000000e-01
  %107 = fsub float %103, %104
  %108 = fpext float %106 to double
  %109 = fsub double 1.966070e+05, %108
  %110 = fmul double %109, 0x3EF0001000100010
  %111 = fpext float %107 to double
  %112 = fmul double %110, %111
  %113 = fpext float %100 to double
  %114 = call double @llvm.fmuladd.f64(double %112, double %111, double %113)
  %115 = fptrunc double %114 to float
  %116 = shufflevector <4 x i16> %78, <4 x i16> %73, <2 x i32> <i32 3, i32 7>
  %117 = uitofp <2 x i16> %116 to <2 x float>
  %118 = extractelement <2 x float> %117, i64 0
  %119 = extractelement <2 x float> %117, i64 1
  %120 = fadd float %119, %118
  %121 = fmul float %120, 5.000000e-01
  %122 = fsub float %118, %119
  %123 = fpext float %121 to double
  %124 = fsub double 1.966070e+05, %123
  %125 = fmul double %124, 0x3EF0001000100010
  %126 = fpext float %122 to double
  %127 = fmul double %125, %126
  %128 = fpext float %115 to double
  %129 = call double @llvm.fmuladd.f64(double %127, double %126, double %128)
  %130 = fptrunc double %129 to float
  %131 = fcmp olt float %130, 0x41A47AB860000000
  br i1 %131, label %132, label %137

132:                                              ; preds = %67
  %133 = uitofp <4 x i16> %78 to <4 x double>
  %134 = fpext <4 x float> %77 to <4 x double>
  %135 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %133, <4 x double> <double 5.000000e+00, double 5.000000e+00, double 5.000000e+00, double 5.000000e+00>, <4 x double> %134)
  %136 = fptrunc <4 x double> %135 to <4 x float>
  br label %137

137:                                              ; preds = %132, %67
  %138 = phi float [ 5.000000e+00, %132 ], [ 0.000000e+00, %67 ]
  %139 = phi <4 x float> [ %136, %132 ], [ %77, %67 ]
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 1
  %141 = load <4 x i16>, ptr %140, align 2, !tbaa !76
  %142 = extractelement <4 x i16> %141, i64 2
  %143 = uitofp i16 %142 to float
  %144 = fadd float %75, %143
  %145 = fmul float %144, 5.000000e-01
  %146 = fsub float %143, %75
  %147 = fpext float %145 to double
  %148 = fadd double %147, 1.310720e+05
  %149 = fmul double %148, 0x3EF0001000100010
  %150 = fpext float %146 to double
  %151 = fmul double %149, %150
  %152 = fmul double %151, %150
  %153 = fptrunc double %152 to float
  %154 = extractelement <4 x i16> %141, i64 1
  %155 = uitofp i16 %154 to float
  %156 = fsub float %155, %94
  %157 = fpext float %156 to double
  %158 = fmul double %157, 4.000000e+00
  %159 = fpext float %153 to double
  %160 = call double @llvm.fmuladd.f64(double %158, double %157, double %159)
  %161 = fptrunc double %160 to float
  %162 = extractelement <4 x i16> %141, i64 0
  %163 = uitofp i16 %162 to float
  %164 = fadd float %104, %163
  %165 = fmul float %164, 5.000000e-01
  %166 = fsub float %163, %104
  %167 = fpext float %165 to double
  %168 = fsub double 1.966070e+05, %167
  %169 = fmul double %168, 0x3EF0001000100010
  %170 = fpext float %166 to double
  %171 = fmul double %169, %170
  %172 = fpext float %161 to double
  %173 = call double @llvm.fmuladd.f64(double %171, double %170, double %172)
  %174 = fptrunc double %173 to float
  %175 = extractelement <4 x i16> %141, i64 3
  %176 = uitofp i16 %175 to float
  %177 = fadd float %119, %176
  %178 = fmul float %177, 5.000000e-01
  %179 = fsub float %176, %119
  %180 = fpext float %178 to double
  %181 = fsub double 1.966070e+05, %180
  %182 = fmul double %181, 0x3EF0001000100010
  %183 = fpext float %179 to double
  %184 = fmul double %182, %183
  %185 = fpext float %174 to double
  %186 = call double @llvm.fmuladd.f64(double %184, double %183, double %185)
  %187 = fptrunc double %186 to float
  %188 = fcmp olt float %187, 0x41A47AB860000000
  br i1 %188, label %189, label %195

189:                                              ; preds = %137
  %190 = uitofp <4 x i16> %141 to <4 x double>
  %191 = fpext <4 x float> %139 to <4 x double>
  %192 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %190, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %191)
  %193 = fptrunc <4 x double> %192 to <4 x float>
  %194 = fadd float %138, 8.000000e+00
  br label %195

195:                                              ; preds = %189, %137
  %196 = phi float [ %194, %189 ], [ %138, %137 ]
  %197 = phi <4 x float> [ %193, %189 ], [ %139, %137 ]
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 2
  %199 = load <4 x i16>, ptr %198, align 2, !tbaa !76
  %200 = extractelement <4 x i16> %199, i64 2
  %201 = uitofp i16 %200 to float
  %202 = fadd float %75, %201
  %203 = fmul float %202, 5.000000e-01
  %204 = fsub float %201, %75
  %205 = fpext float %203 to double
  %206 = fadd double %205, 1.310720e+05
  %207 = fmul double %206, 0x3EF0001000100010
  %208 = fpext float %204 to double
  %209 = fmul double %207, %208
  %210 = fmul double %209, %208
  %211 = fptrunc double %210 to float
  %212 = extractelement <4 x i16> %199, i64 1
  %213 = uitofp i16 %212 to float
  %214 = fsub float %213, %94
  %215 = fpext float %214 to double
  %216 = fmul double %215, 4.000000e+00
  %217 = fpext float %211 to double
  %218 = call double @llvm.fmuladd.f64(double %216, double %215, double %217)
  %219 = fptrunc double %218 to float
  %220 = extractelement <4 x i16> %199, i64 0
  %221 = uitofp i16 %220 to float
  %222 = fadd float %104, %221
  %223 = fmul float %222, 5.000000e-01
  %224 = fsub float %221, %104
  %225 = fpext float %223 to double
  %226 = fsub double 1.966070e+05, %225
  %227 = fmul double %226, 0x3EF0001000100010
  %228 = fpext float %224 to double
  %229 = fmul double %227, %228
  %230 = fpext float %219 to double
  %231 = call double @llvm.fmuladd.f64(double %229, double %228, double %230)
  %232 = fptrunc double %231 to float
  %233 = extractelement <4 x i16> %199, i64 3
  %234 = uitofp i16 %233 to float
  %235 = fadd float %119, %234
  %236 = fmul float %235, 5.000000e-01
  %237 = fsub float %234, %119
  %238 = fpext float %236 to double
  %239 = fsub double 1.966070e+05, %238
  %240 = fmul double %239, 0x3EF0001000100010
  %241 = fpext float %237 to double
  %242 = fmul double %240, %241
  %243 = fpext float %232 to double
  %244 = call double @llvm.fmuladd.f64(double %242, double %241, double %243)
  %245 = fptrunc double %244 to float
  %246 = fcmp olt float %245, 0x41A47AB860000000
  br i1 %246, label %247, label %253

247:                                              ; preds = %195
  %248 = uitofp <4 x i16> %199 to <4 x double>
  %249 = fpext <4 x float> %197 to <4 x double>
  %250 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %248, <4 x double> <double 1.000000e+01, double 1.000000e+01, double 1.000000e+01, double 1.000000e+01>, <4 x double> %249)
  %251 = fptrunc <4 x double> %250 to <4 x float>
  %252 = fadd float %196, 1.000000e+01
  br label %253

253:                                              ; preds = %247, %195
  %254 = phi float [ %252, %247 ], [ %196, %195 ]
  %255 = phi <4 x float> [ %251, %247 ], [ %197, %195 ]
  %256 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 3
  %257 = load <4 x i16>, ptr %256, align 2, !tbaa !76
  %258 = extractelement <4 x i16> %257, i64 2
  %259 = uitofp i16 %258 to float
  %260 = fadd float %75, %259
  %261 = fmul float %260, 5.000000e-01
  %262 = fsub float %259, %75
  %263 = fpext float %261 to double
  %264 = fadd double %263, 1.310720e+05
  %265 = fmul double %264, 0x3EF0001000100010
  %266 = fpext float %262 to double
  %267 = fmul double %265, %266
  %268 = fmul double %267, %266
  %269 = fptrunc double %268 to float
  %270 = extractelement <4 x i16> %257, i64 1
  %271 = uitofp i16 %270 to float
  %272 = fsub float %271, %94
  %273 = fpext float %272 to double
  %274 = fmul double %273, 4.000000e+00
  %275 = fpext float %269 to double
  %276 = call double @llvm.fmuladd.f64(double %274, double %273, double %275)
  %277 = fptrunc double %276 to float
  %278 = extractelement <4 x i16> %257, i64 0
  %279 = uitofp i16 %278 to float
  %280 = fadd float %104, %279
  %281 = fmul float %280, 5.000000e-01
  %282 = fsub float %279, %104
  %283 = fpext float %281 to double
  %284 = fsub double 1.966070e+05, %283
  %285 = fmul double %284, 0x3EF0001000100010
  %286 = fpext float %282 to double
  %287 = fmul double %285, %286
  %288 = fpext float %277 to double
  %289 = call double @llvm.fmuladd.f64(double %287, double %286, double %288)
  %290 = fptrunc double %289 to float
  %291 = extractelement <4 x i16> %257, i64 3
  %292 = uitofp i16 %291 to float
  %293 = fadd float %119, %292
  %294 = fmul float %293, 5.000000e-01
  %295 = fsub float %292, %119
  %296 = fpext float %294 to double
  %297 = fsub double 1.966070e+05, %296
  %298 = fmul double %297, 0x3EF0001000100010
  %299 = fpext float %295 to double
  %300 = fmul double %298, %299
  %301 = fpext float %290 to double
  %302 = call double @llvm.fmuladd.f64(double %300, double %299, double %301)
  %303 = fptrunc double %302 to float
  %304 = fcmp olt float %303, 0x41A47AB860000000
  br i1 %304, label %305, label %311

305:                                              ; preds = %253
  %306 = uitofp <4 x i16> %257 to <4 x double>
  %307 = fpext <4 x float> %255 to <4 x double>
  %308 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %306, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %307)
  %309 = fptrunc <4 x double> %308 to <4 x float>
  %310 = fadd float %254, 8.000000e+00
  br label %311

311:                                              ; preds = %305, %253
  %312 = phi float [ %310, %305 ], [ %254, %253 ]
  %313 = phi <4 x float> [ %309, %305 ], [ %255, %253 ]
  %314 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 4
  %315 = load <4 x i16>, ptr %314, align 2, !tbaa !76
  %316 = extractelement <4 x i16> %315, i64 2
  %317 = uitofp i16 %316 to float
  %318 = fadd float %75, %317
  %319 = fmul float %318, 5.000000e-01
  %320 = fsub float %317, %75
  %321 = fpext float %319 to double
  %322 = fadd double %321, 1.310720e+05
  %323 = fmul double %322, 0x3EF0001000100010
  %324 = fpext float %320 to double
  %325 = fmul double %323, %324
  %326 = fmul double %325, %324
  %327 = fptrunc double %326 to float
  %328 = extractelement <4 x i16> %315, i64 1
  %329 = uitofp i16 %328 to float
  %330 = fsub float %329, %94
  %331 = fpext float %330 to double
  %332 = fmul double %331, 4.000000e+00
  %333 = fpext float %327 to double
  %334 = call double @llvm.fmuladd.f64(double %332, double %331, double %333)
  %335 = fptrunc double %334 to float
  %336 = extractelement <4 x i16> %315, i64 0
  %337 = uitofp i16 %336 to float
  %338 = fadd float %104, %337
  %339 = fmul float %338, 5.000000e-01
  %340 = fsub float %337, %104
  %341 = fpext float %339 to double
  %342 = fsub double 1.966070e+05, %341
  %343 = fmul double %342, 0x3EF0001000100010
  %344 = fpext float %340 to double
  %345 = fmul double %343, %344
  %346 = fpext float %335 to double
  %347 = call double @llvm.fmuladd.f64(double %345, double %344, double %346)
  %348 = fptrunc double %347 to float
  %349 = extractelement <4 x i16> %315, i64 3
  %350 = uitofp i16 %349 to float
  %351 = fadd float %119, %350
  %352 = fmul float %351, 5.000000e-01
  %353 = fsub float %350, %119
  %354 = fpext float %352 to double
  %355 = fsub double 1.966070e+05, %354
  %356 = fmul double %355, 0x3EF0001000100010
  %357 = fpext float %353 to double
  %358 = fmul double %356, %357
  %359 = fpext float %348 to double
  %360 = call double @llvm.fmuladd.f64(double %358, double %357, double %359)
  %361 = fptrunc double %360 to float
  %362 = fcmp olt float %361, 0x41A47AB860000000
  br i1 %362, label %363, label %369

363:                                              ; preds = %311
  %364 = uitofp <4 x i16> %315 to <4 x double>
  %365 = fpext <4 x float> %313 to <4 x double>
  %366 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %364, <4 x double> <double 5.000000e+00, double 5.000000e+00, double 5.000000e+00, double 5.000000e+00>, <4 x double> %365)
  %367 = fptrunc <4 x double> %366 to <4 x float>
  %368 = fadd float %312, 5.000000e+00
  br label %369

369:                                              ; preds = %363, %311
  %370 = phi float [ %368, %363 ], [ %312, %311 ]
  %371 = phi <4 x float> [ %367, %363 ], [ %313, %311 ]
  %372 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %62
  %373 = load <4 x i16>, ptr %372, align 2, !tbaa !76
  %374 = extractelement <4 x i16> %373, i64 2
  %375 = uitofp i16 %374 to float
  %376 = fadd float %75, %375
  %377 = fmul float %376, 5.000000e-01
  %378 = fsub float %375, %75
  %379 = fpext float %377 to double
  %380 = fadd double %379, 1.310720e+05
  %381 = fmul double %380, 0x3EF0001000100010
  %382 = fpext float %378 to double
  %383 = fmul double %381, %382
  %384 = fmul double %383, %382
  %385 = fptrunc double %384 to float
  %386 = extractelement <4 x i16> %373, i64 1
  %387 = uitofp i16 %386 to float
  %388 = fsub float %387, %94
  %389 = fpext float %388 to double
  %390 = fmul double %389, 4.000000e+00
  %391 = fpext float %385 to double
  %392 = call double @llvm.fmuladd.f64(double %390, double %389, double %391)
  %393 = fptrunc double %392 to float
  %394 = extractelement <4 x i16> %373, i64 0
  %395 = uitofp i16 %394 to float
  %396 = fadd float %104, %395
  %397 = fmul float %396, 5.000000e-01
  %398 = fsub float %395, %104
  %399 = fpext float %397 to double
  %400 = fsub double 1.966070e+05, %399
  %401 = fmul double %400, 0x3EF0001000100010
  %402 = fpext float %398 to double
  %403 = fmul double %401, %402
  %404 = fpext float %393 to double
  %405 = call double @llvm.fmuladd.f64(double %403, double %402, double %404)
  %406 = fptrunc double %405 to float
  %407 = extractelement <4 x i16> %373, i64 3
  %408 = uitofp i16 %407 to float
  %409 = fadd float %119, %408
  %410 = fmul float %409, 5.000000e-01
  %411 = fsub float %408, %119
  %412 = fpext float %410 to double
  %413 = fsub double 1.966070e+05, %412
  %414 = fmul double %413, 0x3EF0001000100010
  %415 = fpext float %411 to double
  %416 = fmul double %414, %415
  %417 = fpext float %406 to double
  %418 = call double @llvm.fmuladd.f64(double %416, double %415, double %417)
  %419 = fptrunc double %418 to float
  %420 = fcmp olt float %419, 0x41A47AB860000000
  br i1 %420, label %421, label %427

421:                                              ; preds = %369
  %422 = uitofp <4 x i16> %373 to <4 x double>
  %423 = fpext <4 x float> %371 to <4 x double>
  %424 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %422, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %423)
  %425 = fptrunc <4 x double> %424 to <4 x float>
  %426 = fadd float %370, 8.000000e+00
  br label %427

427:                                              ; preds = %421, %369
  %428 = phi float [ %426, %421 ], [ %370, %369 ]
  %429 = phi <4 x float> [ %425, %421 ], [ %371, %369 ]
  %430 = getelementptr inbounds %struct._PixelPacket, ptr %372, i64 1
  %431 = load <4 x i16>, ptr %430, align 2, !tbaa !76
  %432 = extractelement <4 x i16> %431, i64 2
  %433 = uitofp i16 %432 to float
  %434 = fadd float %75, %433
  %435 = fmul float %434, 5.000000e-01
  %436 = fsub float %433, %75
  %437 = fpext float %435 to double
  %438 = fadd double %437, 1.310720e+05
  %439 = fmul double %438, 0x3EF0001000100010
  %440 = fpext float %436 to double
  %441 = fmul double %439, %440
  %442 = fmul double %441, %440
  %443 = fptrunc double %442 to float
  %444 = extractelement <4 x i16> %431, i64 1
  %445 = uitofp i16 %444 to float
  %446 = fsub float %445, %94
  %447 = fpext float %446 to double
  %448 = fmul double %447, 4.000000e+00
  %449 = fpext float %443 to double
  %450 = call double @llvm.fmuladd.f64(double %448, double %447, double %449)
  %451 = fptrunc double %450 to float
  %452 = extractelement <4 x i16> %431, i64 0
  %453 = uitofp i16 %452 to float
  %454 = fadd float %104, %453
  %455 = fmul float %454, 5.000000e-01
  %456 = fsub float %453, %104
  %457 = fpext float %455 to double
  %458 = fsub double 1.966070e+05, %457
  %459 = fmul double %458, 0x3EF0001000100010
  %460 = fpext float %456 to double
  %461 = fmul double %459, %460
  %462 = fpext float %451 to double
  %463 = call double @llvm.fmuladd.f64(double %461, double %460, double %462)
  %464 = fptrunc double %463 to float
  %465 = extractelement <4 x i16> %431, i64 3
  %466 = uitofp i16 %465 to float
  %467 = fadd float %119, %466
  %468 = fmul float %467, 5.000000e-01
  %469 = fsub float %466, %119
  %470 = fpext float %468 to double
  %471 = fsub double 1.966070e+05, %470
  %472 = fmul double %471, 0x3EF0001000100010
  %473 = fpext float %469 to double
  %474 = fmul double %472, %473
  %475 = fpext float %464 to double
  %476 = call double @llvm.fmuladd.f64(double %474, double %473, double %475)
  %477 = fptrunc double %476 to float
  %478 = fcmp olt float %477, 0x41A47AB860000000
  br i1 %478, label %479, label %485

479:                                              ; preds = %427
  %480 = uitofp <4 x i16> %431 to <4 x double>
  %481 = fpext <4 x float> %429 to <4 x double>
  %482 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %480, <4 x double> <double 2.000000e+01, double 2.000000e+01, double 2.000000e+01, double 2.000000e+01>, <4 x double> %481)
  %483 = fptrunc <4 x double> %482 to <4 x float>
  %484 = fadd float %428, 2.000000e+01
  br label %485

485:                                              ; preds = %479, %427
  %486 = phi float [ %484, %479 ], [ %428, %427 ]
  %487 = phi <4 x float> [ %483, %479 ], [ %429, %427 ]
  %488 = getelementptr inbounds %struct._PixelPacket, ptr %372, i64 2
  %489 = load <4 x i16>, ptr %488, align 2, !tbaa !76
  %490 = extractelement <4 x i16> %489, i64 2
  %491 = uitofp i16 %490 to float
  %492 = fadd float %75, %491
  %493 = fmul float %492, 5.000000e-01
  %494 = fsub float %491, %75
  %495 = fpext float %493 to double
  %496 = fadd double %495, 1.310720e+05
  %497 = fmul double %496, 0x3EF0001000100010
  %498 = fpext float %494 to double
  %499 = fmul double %497, %498
  %500 = fmul double %499, %498
  %501 = fptrunc double %500 to float
  %502 = extractelement <4 x i16> %489, i64 1
  %503 = uitofp i16 %502 to float
  %504 = fsub float %503, %94
  %505 = fpext float %504 to double
  %506 = fmul double %505, 4.000000e+00
  %507 = fpext float %501 to double
  %508 = call double @llvm.fmuladd.f64(double %506, double %505, double %507)
  %509 = fptrunc double %508 to float
  %510 = extractelement <4 x i16> %489, i64 0
  %511 = uitofp i16 %510 to float
  %512 = fadd float %104, %511
  %513 = fmul float %512, 5.000000e-01
  %514 = fsub float %511, %104
  %515 = fpext float %513 to double
  %516 = fsub double 1.966070e+05, %515
  %517 = fmul double %516, 0x3EF0001000100010
  %518 = fpext float %514 to double
  %519 = fmul double %517, %518
  %520 = fpext float %509 to double
  %521 = call double @llvm.fmuladd.f64(double %519, double %518, double %520)
  %522 = fptrunc double %521 to float
  %523 = extractelement <4 x i16> %489, i64 3
  %524 = uitofp i16 %523 to float
  %525 = fadd float %119, %524
  %526 = fmul float %525, 5.000000e-01
  %527 = fsub float %524, %119
  %528 = fpext float %526 to double
  %529 = fsub double 1.966070e+05, %528
  %530 = fmul double %529, 0x3EF0001000100010
  %531 = fpext float %527 to double
  %532 = fmul double %530, %531
  %533 = fpext float %522 to double
  %534 = call double @llvm.fmuladd.f64(double %532, double %531, double %533)
  %535 = fptrunc double %534 to float
  %536 = fcmp olt float %535, 0x41A47AB860000000
  br i1 %536, label %537, label %543

537:                                              ; preds = %485
  %538 = uitofp <4 x i16> %489 to <4 x double>
  %539 = fpext <4 x float> %487 to <4 x double>
  %540 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %538, <4 x double> <double 4.000000e+01, double 4.000000e+01, double 4.000000e+01, double 4.000000e+01>, <4 x double> %539)
  %541 = fptrunc <4 x double> %540 to <4 x float>
  %542 = fadd float %486, 4.000000e+01
  br label %543

543:                                              ; preds = %537, %485
  %544 = phi float [ %542, %537 ], [ %486, %485 ]
  %545 = phi <4 x float> [ %541, %537 ], [ %487, %485 ]
  %546 = getelementptr inbounds %struct._PixelPacket, ptr %372, i64 3
  %547 = load <4 x i16>, ptr %546, align 2, !tbaa !76
  %548 = extractelement <4 x i16> %547, i64 2
  %549 = uitofp i16 %548 to float
  %550 = fadd float %75, %549
  %551 = fmul float %550, 5.000000e-01
  %552 = fsub float %549, %75
  %553 = fpext float %551 to double
  %554 = fadd double %553, 1.310720e+05
  %555 = fmul double %554, 0x3EF0001000100010
  %556 = fpext float %552 to double
  %557 = fmul double %555, %556
  %558 = fmul double %557, %556
  %559 = fptrunc double %558 to float
  %560 = extractelement <4 x i16> %547, i64 1
  %561 = uitofp i16 %560 to float
  %562 = fsub float %561, %94
  %563 = fpext float %562 to double
  %564 = fmul double %563, 4.000000e+00
  %565 = fpext float %559 to double
  %566 = call double @llvm.fmuladd.f64(double %564, double %563, double %565)
  %567 = fptrunc double %566 to float
  %568 = extractelement <4 x i16> %547, i64 0
  %569 = uitofp i16 %568 to float
  %570 = fadd float %104, %569
  %571 = fmul float %570, 5.000000e-01
  %572 = fsub float %569, %104
  %573 = fpext float %571 to double
  %574 = fsub double 1.966070e+05, %573
  %575 = fmul double %574, 0x3EF0001000100010
  %576 = fpext float %572 to double
  %577 = fmul double %575, %576
  %578 = fpext float %567 to double
  %579 = call double @llvm.fmuladd.f64(double %577, double %576, double %578)
  %580 = fptrunc double %579 to float
  %581 = extractelement <4 x i16> %547, i64 3
  %582 = uitofp i16 %581 to float
  %583 = fadd float %119, %582
  %584 = fmul float %583, 5.000000e-01
  %585 = fsub float %582, %119
  %586 = fpext float %584 to double
  %587 = fsub double 1.966070e+05, %586
  %588 = fmul double %587, 0x3EF0001000100010
  %589 = fpext float %585 to double
  %590 = fmul double %588, %589
  %591 = fpext float %580 to double
  %592 = call double @llvm.fmuladd.f64(double %590, double %589, double %591)
  %593 = fptrunc double %592 to float
  %594 = fcmp olt float %593, 0x41A47AB860000000
  br i1 %594, label %595, label %601

595:                                              ; preds = %543
  %596 = uitofp <4 x i16> %547 to <4 x double>
  %597 = fpext <4 x float> %545 to <4 x double>
  %598 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %596, <4 x double> <double 2.000000e+01, double 2.000000e+01, double 2.000000e+01, double 2.000000e+01>, <4 x double> %597)
  %599 = fptrunc <4 x double> %598 to <4 x float>
  %600 = fadd float %544, 2.000000e+01
  br label %601

601:                                              ; preds = %595, %543
  %602 = phi float [ %600, %595 ], [ %544, %543 ]
  %603 = phi <4 x float> [ %599, %595 ], [ %545, %543 ]
  %604 = getelementptr inbounds %struct._PixelPacket, ptr %372, i64 4
  %605 = load <4 x i16>, ptr %604, align 2, !tbaa !76
  %606 = extractelement <4 x i16> %605, i64 2
  %607 = uitofp i16 %606 to float
  %608 = fadd float %75, %607
  %609 = fmul float %608, 5.000000e-01
  %610 = fsub float %607, %75
  %611 = fpext float %609 to double
  %612 = fadd double %611, 1.310720e+05
  %613 = fmul double %612, 0x3EF0001000100010
  %614 = fpext float %610 to double
  %615 = fmul double %613, %614
  %616 = fmul double %615, %614
  %617 = fptrunc double %616 to float
  %618 = extractelement <4 x i16> %605, i64 1
  %619 = uitofp i16 %618 to float
  %620 = fsub float %619, %94
  %621 = fpext float %620 to double
  %622 = fmul double %621, 4.000000e+00
  %623 = fpext float %617 to double
  %624 = call double @llvm.fmuladd.f64(double %622, double %621, double %623)
  %625 = fptrunc double %624 to float
  %626 = extractelement <4 x i16> %605, i64 0
  %627 = uitofp i16 %626 to float
  %628 = fadd float %104, %627
  %629 = fmul float %628, 5.000000e-01
  %630 = fsub float %627, %104
  %631 = fpext float %629 to double
  %632 = fsub double 1.966070e+05, %631
  %633 = fmul double %632, 0x3EF0001000100010
  %634 = fpext float %630 to double
  %635 = fmul double %633, %634
  %636 = fpext float %625 to double
  %637 = call double @llvm.fmuladd.f64(double %635, double %634, double %636)
  %638 = fptrunc double %637 to float
  %639 = extractelement <4 x i16> %605, i64 3
  %640 = uitofp i16 %639 to float
  %641 = fadd float %119, %640
  %642 = fmul float %641, 5.000000e-01
  %643 = fsub float %640, %119
  %644 = fpext float %642 to double
  %645 = fsub double 1.966070e+05, %644
  %646 = fmul double %645, 0x3EF0001000100010
  %647 = fpext float %643 to double
  %648 = fmul double %646, %647
  %649 = fpext float %638 to double
  %650 = call double @llvm.fmuladd.f64(double %648, double %647, double %649)
  %651 = fptrunc double %650 to float
  %652 = fcmp olt float %651, 0x41A47AB860000000
  br i1 %652, label %653, label %659

653:                                              ; preds = %601
  %654 = uitofp <4 x i16> %605 to <4 x double>
  %655 = fpext <4 x float> %603 to <4 x double>
  %656 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %654, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %655)
  %657 = fptrunc <4 x double> %656 to <4 x float>
  %658 = fadd float %602, 8.000000e+00
  br label %659

659:                                              ; preds = %653, %601
  %660 = phi float [ %658, %653 ], [ %602, %601 ]
  %661 = phi <4 x float> [ %657, %653 ], [ %603, %601 ]
  %662 = load <4 x i16>, ptr %71, align 2, !tbaa !76
  %663 = extractelement <4 x i16> %662, i64 2
  %664 = uitofp i16 %663 to float
  %665 = fadd float %75, %664
  %666 = fmul float %665, 5.000000e-01
  %667 = fsub float %664, %75
  %668 = fpext float %666 to double
  %669 = fadd double %668, 1.310720e+05
  %670 = fmul double %669, 0x3EF0001000100010
  %671 = fpext float %667 to double
  %672 = fmul double %670, %671
  %673 = fmul double %672, %671
  %674 = fptrunc double %673 to float
  %675 = extractelement <4 x i16> %662, i64 1
  %676 = uitofp i16 %675 to float
  %677 = fsub float %676, %94
  %678 = fpext float %677 to double
  %679 = fmul double %678, 4.000000e+00
  %680 = fpext float %674 to double
  %681 = call double @llvm.fmuladd.f64(double %679, double %678, double %680)
  %682 = fptrunc double %681 to float
  %683 = extractelement <4 x i16> %662, i64 0
  %684 = uitofp i16 %683 to float
  %685 = fadd float %104, %684
  %686 = fmul float %685, 5.000000e-01
  %687 = fsub float %684, %104
  %688 = fpext float %686 to double
  %689 = fsub double 1.966070e+05, %688
  %690 = fmul double %689, 0x3EF0001000100010
  %691 = fpext float %687 to double
  %692 = fmul double %690, %691
  %693 = fpext float %682 to double
  %694 = call double @llvm.fmuladd.f64(double %692, double %691, double %693)
  %695 = fptrunc double %694 to float
  %696 = extractelement <4 x i16> %662, i64 3
  %697 = uitofp i16 %696 to float
  %698 = fadd float %119, %697
  %699 = fmul float %698, 5.000000e-01
  %700 = fsub float %697, %119
  %701 = fpext float %699 to double
  %702 = fsub double 1.966070e+05, %701
  %703 = fmul double %702, 0x3EF0001000100010
  %704 = fpext float %700 to double
  %705 = fmul double %703, %704
  %706 = fpext float %695 to double
  %707 = call double @llvm.fmuladd.f64(double %705, double %704, double %706)
  %708 = fptrunc double %707 to float
  %709 = fcmp olt float %708, 0x41A47AB860000000
  br i1 %709, label %710, label %716

710:                                              ; preds = %659
  %711 = uitofp <4 x i16> %662 to <4 x double>
  %712 = fpext <4 x float> %661 to <4 x double>
  %713 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %711, <4 x double> <double 1.000000e+01, double 1.000000e+01, double 1.000000e+01, double 1.000000e+01>, <4 x double> %712)
  %714 = fptrunc <4 x double> %713 to <4 x float>
  %715 = fadd float %660, 1.000000e+01
  br label %716

716:                                              ; preds = %710, %659
  %717 = phi float [ %715, %710 ], [ %660, %659 ]
  %718 = phi <4 x float> [ %714, %710 ], [ %661, %659 ]
  %719 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 1
  %720 = load <4 x i16>, ptr %719, align 2, !tbaa !76
  %721 = extractelement <4 x i16> %720, i64 2
  %722 = uitofp i16 %721 to float
  %723 = fadd float %75, %722
  %724 = fmul float %723, 5.000000e-01
  %725 = fsub float %722, %75
  %726 = fpext float %724 to double
  %727 = fadd double %726, 1.310720e+05
  %728 = fmul double %727, 0x3EF0001000100010
  %729 = fpext float %725 to double
  %730 = fmul double %728, %729
  %731 = fmul double %730, %729
  %732 = fptrunc double %731 to float
  %733 = extractelement <4 x i16> %720, i64 1
  %734 = uitofp i16 %733 to float
  %735 = fsub float %734, %94
  %736 = fpext float %735 to double
  %737 = fmul double %736, 4.000000e+00
  %738 = fpext float %732 to double
  %739 = call double @llvm.fmuladd.f64(double %737, double %736, double %738)
  %740 = fptrunc double %739 to float
  %741 = extractelement <4 x i16> %720, i64 0
  %742 = uitofp i16 %741 to float
  %743 = fadd float %104, %742
  %744 = fmul float %743, 5.000000e-01
  %745 = fsub float %742, %104
  %746 = fpext float %744 to double
  %747 = fsub double 1.966070e+05, %746
  %748 = fmul double %747, 0x3EF0001000100010
  %749 = fpext float %745 to double
  %750 = fmul double %748, %749
  %751 = fpext float %740 to double
  %752 = call double @llvm.fmuladd.f64(double %750, double %749, double %751)
  %753 = fptrunc double %752 to float
  %754 = extractelement <4 x i16> %720, i64 3
  %755 = uitofp i16 %754 to float
  %756 = fadd float %119, %755
  %757 = fmul float %756, 5.000000e-01
  %758 = fsub float %755, %119
  %759 = fpext float %757 to double
  %760 = fsub double 1.966070e+05, %759
  %761 = fmul double %760, 0x3EF0001000100010
  %762 = fpext float %758 to double
  %763 = fmul double %761, %762
  %764 = fpext float %753 to double
  %765 = call double @llvm.fmuladd.f64(double %763, double %762, double %764)
  %766 = fptrunc double %765 to float
  %767 = fcmp olt float %766, 0x41A47AB860000000
  br i1 %767, label %768, label %774

768:                                              ; preds = %716
  %769 = uitofp <4 x i16> %720 to <4 x double>
  %770 = fpext <4 x float> %718 to <4 x double>
  %771 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %769, <4 x double> <double 4.000000e+01, double 4.000000e+01, double 4.000000e+01, double 4.000000e+01>, <4 x double> %770)
  %772 = fptrunc <4 x double> %771 to <4 x float>
  %773 = fadd float %717, 4.000000e+01
  br label %774

774:                                              ; preds = %768, %716
  %775 = phi float [ %773, %768 ], [ %717, %716 ]
  %776 = phi <4 x float> [ %772, %768 ], [ %718, %716 ]
  %777 = fadd float %75, %75
  %778 = fmul float %777, 5.000000e-01
  %779 = fsub float %75, %75
  %780 = fpext float %778 to double
  %781 = fadd double %780, 1.310720e+05
  %782 = fmul double %781, 0x3EF0001000100010
  %783 = fpext float %779 to double
  %784 = fmul double %782, %783
  %785 = fmul double %784, %783
  %786 = fptrunc double %785 to float
  %787 = fsub float %94, %94
  %788 = fpext float %787 to double
  %789 = fmul double %788, 4.000000e+00
  %790 = fpext float %786 to double
  %791 = call double @llvm.fmuladd.f64(double %789, double %788, double %790)
  %792 = fptrunc double %791 to float
  %793 = fadd float %104, %104
  %794 = fmul float %793, 5.000000e-01
  %795 = fsub float %104, %104
  %796 = fpext float %794 to double
  %797 = fsub double 1.966070e+05, %796
  %798 = fmul double %797, 0x3EF0001000100010
  %799 = fpext float %795 to double
  %800 = fmul double %798, %799
  %801 = fpext float %792 to double
  %802 = call double @llvm.fmuladd.f64(double %800, double %799, double %801)
  %803 = fptrunc double %802 to float
  %804 = fadd float %119, %119
  %805 = fmul float %804, 5.000000e-01
  %806 = fsub float %119, %119
  %807 = fpext float %805 to double
  %808 = fsub double 1.966070e+05, %807
  %809 = fmul double %808, 0x3EF0001000100010
  %810 = fpext float %806 to double
  %811 = fmul double %809, %810
  %812 = fpext float %803 to double
  %813 = call double @llvm.fmuladd.f64(double %811, double %810, double %812)
  %814 = fptrunc double %813 to float
  %815 = fcmp olt float %814, 0x41A47AB860000000
  br i1 %815, label %816, label %822

816:                                              ; preds = %774
  %817 = uitofp <4 x i16> %73 to <4 x double>
  %818 = fpext <4 x float> %776 to <4 x double>
  %819 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %817, <4 x double> <double 8.000000e+01, double 8.000000e+01, double 8.000000e+01, double 8.000000e+01>, <4 x double> %818)
  %820 = fptrunc <4 x double> %819 to <4 x float>
  %821 = fadd float %775, 8.000000e+01
  br label %822

822:                                              ; preds = %816, %774
  %823 = phi float [ %821, %816 ], [ %775, %774 ]
  %824 = phi <4 x float> [ %820, %816 ], [ %776, %774 ]
  %825 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 3
  %826 = load <4 x i16>, ptr %825, align 2, !tbaa !76
  %827 = extractelement <4 x i16> %826, i64 2
  %828 = uitofp i16 %827 to float
  %829 = fadd float %75, %828
  %830 = fmul float %829, 5.000000e-01
  %831 = fsub float %828, %75
  %832 = fpext float %830 to double
  %833 = fadd double %832, 1.310720e+05
  %834 = fmul double %833, 0x3EF0001000100010
  %835 = fpext float %831 to double
  %836 = fmul double %834, %835
  %837 = fmul double %836, %835
  %838 = fptrunc double %837 to float
  %839 = extractelement <4 x i16> %826, i64 1
  %840 = uitofp i16 %839 to float
  %841 = fsub float %840, %94
  %842 = fpext float %841 to double
  %843 = fmul double %842, 4.000000e+00
  %844 = fpext float %838 to double
  %845 = call double @llvm.fmuladd.f64(double %843, double %842, double %844)
  %846 = fptrunc double %845 to float
  %847 = extractelement <4 x i16> %826, i64 0
  %848 = uitofp i16 %847 to float
  %849 = fadd float %104, %848
  %850 = fmul float %849, 5.000000e-01
  %851 = fsub float %848, %104
  %852 = fpext float %850 to double
  %853 = fsub double 1.966070e+05, %852
  %854 = fmul double %853, 0x3EF0001000100010
  %855 = fpext float %851 to double
  %856 = fmul double %854, %855
  %857 = fpext float %846 to double
  %858 = call double @llvm.fmuladd.f64(double %856, double %855, double %857)
  %859 = fptrunc double %858 to float
  %860 = extractelement <4 x i16> %826, i64 3
  %861 = uitofp i16 %860 to float
  %862 = fadd float %119, %861
  %863 = fmul float %862, 5.000000e-01
  %864 = fsub float %861, %119
  %865 = fpext float %863 to double
  %866 = fsub double 1.966070e+05, %865
  %867 = fmul double %866, 0x3EF0001000100010
  %868 = fpext float %864 to double
  %869 = fmul double %867, %868
  %870 = fpext float %859 to double
  %871 = call double @llvm.fmuladd.f64(double %869, double %868, double %870)
  %872 = fptrunc double %871 to float
  %873 = fcmp olt float %872, 0x41A47AB860000000
  br i1 %873, label %874, label %880

874:                                              ; preds = %822
  %875 = uitofp <4 x i16> %826 to <4 x double>
  %876 = fpext <4 x float> %824 to <4 x double>
  %877 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %875, <4 x double> <double 4.000000e+01, double 4.000000e+01, double 4.000000e+01, double 4.000000e+01>, <4 x double> %876)
  %878 = fptrunc <4 x double> %877 to <4 x float>
  %879 = fadd float %823, 4.000000e+01
  br label %880

880:                                              ; preds = %874, %822
  %881 = phi float [ %879, %874 ], [ %823, %822 ]
  %882 = phi <4 x float> [ %878, %874 ], [ %824, %822 ]
  %883 = getelementptr inbounds %struct._PixelPacket, ptr %71, i64 4
  %884 = load <4 x i16>, ptr %883, align 2, !tbaa !76
  %885 = extractelement <4 x i16> %884, i64 2
  %886 = uitofp i16 %885 to float
  %887 = fadd float %75, %886
  %888 = fmul float %887, 5.000000e-01
  %889 = fsub float %886, %75
  %890 = fpext float %888 to double
  %891 = fadd double %890, 1.310720e+05
  %892 = fmul double %891, 0x3EF0001000100010
  %893 = fpext float %889 to double
  %894 = fmul double %892, %893
  %895 = fmul double %894, %893
  %896 = fptrunc double %895 to float
  %897 = extractelement <4 x i16> %884, i64 1
  %898 = uitofp i16 %897 to float
  %899 = fsub float %898, %94
  %900 = fpext float %899 to double
  %901 = fmul double %900, 4.000000e+00
  %902 = fpext float %896 to double
  %903 = call double @llvm.fmuladd.f64(double %901, double %900, double %902)
  %904 = fptrunc double %903 to float
  %905 = extractelement <4 x i16> %884, i64 0
  %906 = uitofp i16 %905 to float
  %907 = fadd float %104, %906
  %908 = fmul float %907, 5.000000e-01
  %909 = fsub float %906, %104
  %910 = fpext float %908 to double
  %911 = fsub double 1.966070e+05, %910
  %912 = fmul double %911, 0x3EF0001000100010
  %913 = fpext float %909 to double
  %914 = fmul double %912, %913
  %915 = fpext float %904 to double
  %916 = call double @llvm.fmuladd.f64(double %914, double %913, double %915)
  %917 = fptrunc double %916 to float
  %918 = extractelement <4 x i16> %884, i64 3
  %919 = uitofp i16 %918 to float
  %920 = fadd float %119, %919
  %921 = fmul float %920, 5.000000e-01
  %922 = fsub float %919, %119
  %923 = fpext float %921 to double
  %924 = fsub double 1.966070e+05, %923
  %925 = fmul double %924, 0x3EF0001000100010
  %926 = fpext float %922 to double
  %927 = fmul double %925, %926
  %928 = fpext float %917 to double
  %929 = call double @llvm.fmuladd.f64(double %927, double %926, double %928)
  %930 = fptrunc double %929 to float
  %931 = fcmp olt float %930, 0x41A47AB860000000
  br i1 %931, label %932, label %938

932:                                              ; preds = %880
  %933 = uitofp <4 x i16> %884 to <4 x double>
  %934 = fpext <4 x float> %882 to <4 x double>
  %935 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %933, <4 x double> <double 1.000000e+01, double 1.000000e+01, double 1.000000e+01, double 1.000000e+01>, <4 x double> %934)
  %936 = fptrunc <4 x double> %935 to <4 x float>
  %937 = fadd float %881, 1.000000e+01
  br label %938

938:                                              ; preds = %932, %880
  %939 = phi float [ %937, %932 ], [ %881, %880 ]
  %940 = phi <4 x float> [ %936, %932 ], [ %882, %880 ]
  %941 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %64
  %942 = load <4 x i16>, ptr %941, align 2, !tbaa !76
  %943 = extractelement <4 x i16> %942, i64 2
  %944 = uitofp i16 %943 to float
  %945 = fadd float %75, %944
  %946 = fmul float %945, 5.000000e-01
  %947 = fsub float %944, %75
  %948 = fpext float %946 to double
  %949 = fadd double %948, 1.310720e+05
  %950 = fmul double %949, 0x3EF0001000100010
  %951 = fpext float %947 to double
  %952 = fmul double %950, %951
  %953 = fmul double %952, %951
  %954 = fptrunc double %953 to float
  %955 = extractelement <4 x i16> %942, i64 1
  %956 = uitofp i16 %955 to float
  %957 = fsub float %956, %94
  %958 = fpext float %957 to double
  %959 = fmul double %958, 4.000000e+00
  %960 = fpext float %954 to double
  %961 = call double @llvm.fmuladd.f64(double %959, double %958, double %960)
  %962 = fptrunc double %961 to float
  %963 = extractelement <4 x i16> %942, i64 0
  %964 = uitofp i16 %963 to float
  %965 = fadd float %104, %964
  %966 = fmul float %965, 5.000000e-01
  %967 = fsub float %964, %104
  %968 = fpext float %966 to double
  %969 = fsub double 1.966070e+05, %968
  %970 = fmul double %969, 0x3EF0001000100010
  %971 = fpext float %967 to double
  %972 = fmul double %970, %971
  %973 = fpext float %962 to double
  %974 = call double @llvm.fmuladd.f64(double %972, double %971, double %973)
  %975 = fptrunc double %974 to float
  %976 = extractelement <4 x i16> %942, i64 3
  %977 = uitofp i16 %976 to float
  %978 = fadd float %119, %977
  %979 = fmul float %978, 5.000000e-01
  %980 = fsub float %977, %119
  %981 = fpext float %979 to double
  %982 = fsub double 1.966070e+05, %981
  %983 = fmul double %982, 0x3EF0001000100010
  %984 = fpext float %980 to double
  %985 = fmul double %983, %984
  %986 = fpext float %975 to double
  %987 = call double @llvm.fmuladd.f64(double %985, double %984, double %986)
  %988 = fptrunc double %987 to float
  %989 = fcmp olt float %988, 0x41A47AB860000000
  br i1 %989, label %990, label %996

990:                                              ; preds = %938
  %991 = uitofp <4 x i16> %942 to <4 x double>
  %992 = fpext <4 x float> %940 to <4 x double>
  %993 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %991, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %992)
  %994 = fptrunc <4 x double> %993 to <4 x float>
  %995 = fadd float %939, 8.000000e+00
  br label %996

996:                                              ; preds = %990, %938
  %997 = phi float [ %995, %990 ], [ %939, %938 ]
  %998 = phi <4 x float> [ %994, %990 ], [ %940, %938 ]
  %999 = getelementptr inbounds %struct._PixelPacket, ptr %941, i64 1
  %1000 = load <4 x i16>, ptr %999, align 2, !tbaa !76
  %1001 = extractelement <4 x i16> %1000, i64 2
  %1002 = uitofp i16 %1001 to float
  %1003 = fadd float %75, %1002
  %1004 = fmul float %1003, 5.000000e-01
  %1005 = fsub float %1002, %75
  %1006 = fpext float %1004 to double
  %1007 = fadd double %1006, 1.310720e+05
  %1008 = fmul double %1007, 0x3EF0001000100010
  %1009 = fpext float %1005 to double
  %1010 = fmul double %1008, %1009
  %1011 = fmul double %1010, %1009
  %1012 = fptrunc double %1011 to float
  %1013 = extractelement <4 x i16> %1000, i64 1
  %1014 = uitofp i16 %1013 to float
  %1015 = fsub float %1014, %94
  %1016 = fpext float %1015 to double
  %1017 = fmul double %1016, 4.000000e+00
  %1018 = fpext float %1012 to double
  %1019 = call double @llvm.fmuladd.f64(double %1017, double %1016, double %1018)
  %1020 = fptrunc double %1019 to float
  %1021 = extractelement <4 x i16> %1000, i64 0
  %1022 = uitofp i16 %1021 to float
  %1023 = fadd float %104, %1022
  %1024 = fmul float %1023, 5.000000e-01
  %1025 = fsub float %1022, %104
  %1026 = fpext float %1024 to double
  %1027 = fsub double 1.966070e+05, %1026
  %1028 = fmul double %1027, 0x3EF0001000100010
  %1029 = fpext float %1025 to double
  %1030 = fmul double %1028, %1029
  %1031 = fpext float %1020 to double
  %1032 = call double @llvm.fmuladd.f64(double %1030, double %1029, double %1031)
  %1033 = fptrunc double %1032 to float
  %1034 = extractelement <4 x i16> %1000, i64 3
  %1035 = uitofp i16 %1034 to float
  %1036 = fadd float %119, %1035
  %1037 = fmul float %1036, 5.000000e-01
  %1038 = fsub float %1035, %119
  %1039 = fpext float %1037 to double
  %1040 = fsub double 1.966070e+05, %1039
  %1041 = fmul double %1040, 0x3EF0001000100010
  %1042 = fpext float %1038 to double
  %1043 = fmul double %1041, %1042
  %1044 = fpext float %1033 to double
  %1045 = call double @llvm.fmuladd.f64(double %1043, double %1042, double %1044)
  %1046 = fptrunc double %1045 to float
  %1047 = fcmp olt float %1046, 0x41A47AB860000000
  br i1 %1047, label %1048, label %1054

1048:                                             ; preds = %996
  %1049 = uitofp <4 x i16> %1000 to <4 x double>
  %1050 = fpext <4 x float> %998 to <4 x double>
  %1051 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1049, <4 x double> <double 2.000000e+01, double 2.000000e+01, double 2.000000e+01, double 2.000000e+01>, <4 x double> %1050)
  %1052 = fptrunc <4 x double> %1051 to <4 x float>
  %1053 = fadd float %997, 2.000000e+01
  br label %1054

1054:                                             ; preds = %1048, %996
  %1055 = phi float [ %1053, %1048 ], [ %997, %996 ]
  %1056 = phi <4 x float> [ %1052, %1048 ], [ %998, %996 ]
  %1057 = getelementptr inbounds %struct._PixelPacket, ptr %941, i64 2
  %1058 = load <4 x i16>, ptr %1057, align 2, !tbaa !76
  %1059 = extractelement <4 x i16> %1058, i64 2
  %1060 = uitofp i16 %1059 to float
  %1061 = fadd float %75, %1060
  %1062 = fmul float %1061, 5.000000e-01
  %1063 = fsub float %1060, %75
  %1064 = fpext float %1062 to double
  %1065 = fadd double %1064, 1.310720e+05
  %1066 = fmul double %1065, 0x3EF0001000100010
  %1067 = fpext float %1063 to double
  %1068 = fmul double %1066, %1067
  %1069 = fmul double %1068, %1067
  %1070 = fptrunc double %1069 to float
  %1071 = extractelement <4 x i16> %1058, i64 1
  %1072 = uitofp i16 %1071 to float
  %1073 = fsub float %1072, %94
  %1074 = fpext float %1073 to double
  %1075 = fmul double %1074, 4.000000e+00
  %1076 = fpext float %1070 to double
  %1077 = call double @llvm.fmuladd.f64(double %1075, double %1074, double %1076)
  %1078 = fptrunc double %1077 to float
  %1079 = extractelement <4 x i16> %1058, i64 0
  %1080 = uitofp i16 %1079 to float
  %1081 = fadd float %104, %1080
  %1082 = fmul float %1081, 5.000000e-01
  %1083 = fsub float %1080, %104
  %1084 = fpext float %1082 to double
  %1085 = fsub double 1.966070e+05, %1084
  %1086 = fmul double %1085, 0x3EF0001000100010
  %1087 = fpext float %1083 to double
  %1088 = fmul double %1086, %1087
  %1089 = fpext float %1078 to double
  %1090 = call double @llvm.fmuladd.f64(double %1088, double %1087, double %1089)
  %1091 = fptrunc double %1090 to float
  %1092 = extractelement <4 x i16> %1058, i64 3
  %1093 = uitofp i16 %1092 to float
  %1094 = fadd float %119, %1093
  %1095 = fmul float %1094, 5.000000e-01
  %1096 = fsub float %1093, %119
  %1097 = fpext float %1095 to double
  %1098 = fsub double 1.966070e+05, %1097
  %1099 = fmul double %1098, 0x3EF0001000100010
  %1100 = fpext float %1096 to double
  %1101 = fmul double %1099, %1100
  %1102 = fpext float %1091 to double
  %1103 = call double @llvm.fmuladd.f64(double %1101, double %1100, double %1102)
  %1104 = fptrunc double %1103 to float
  %1105 = fcmp olt float %1104, 0x41A47AB860000000
  br i1 %1105, label %1106, label %1112

1106:                                             ; preds = %1054
  %1107 = uitofp <4 x i16> %1058 to <4 x double>
  %1108 = fpext <4 x float> %1056 to <4 x double>
  %1109 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1107, <4 x double> <double 4.000000e+01, double 4.000000e+01, double 4.000000e+01, double 4.000000e+01>, <4 x double> %1108)
  %1110 = fptrunc <4 x double> %1109 to <4 x float>
  %1111 = fadd float %1055, 4.000000e+01
  br label %1112

1112:                                             ; preds = %1106, %1054
  %1113 = phi float [ %1111, %1106 ], [ %1055, %1054 ]
  %1114 = phi <4 x float> [ %1110, %1106 ], [ %1056, %1054 ]
  %1115 = getelementptr inbounds %struct._PixelPacket, ptr %941, i64 3
  %1116 = load <4 x i16>, ptr %1115, align 2, !tbaa !76
  %1117 = extractelement <4 x i16> %1116, i64 2
  %1118 = uitofp i16 %1117 to float
  %1119 = fadd float %75, %1118
  %1120 = fmul float %1119, 5.000000e-01
  %1121 = fsub float %1118, %75
  %1122 = fpext float %1120 to double
  %1123 = fadd double %1122, 1.310720e+05
  %1124 = fmul double %1123, 0x3EF0001000100010
  %1125 = fpext float %1121 to double
  %1126 = fmul double %1124, %1125
  %1127 = fmul double %1126, %1125
  %1128 = fptrunc double %1127 to float
  %1129 = extractelement <4 x i16> %1116, i64 1
  %1130 = uitofp i16 %1129 to float
  %1131 = fsub float %1130, %94
  %1132 = fpext float %1131 to double
  %1133 = fmul double %1132, 4.000000e+00
  %1134 = fpext float %1128 to double
  %1135 = call double @llvm.fmuladd.f64(double %1133, double %1132, double %1134)
  %1136 = fptrunc double %1135 to float
  %1137 = extractelement <4 x i16> %1116, i64 0
  %1138 = uitofp i16 %1137 to float
  %1139 = fadd float %104, %1138
  %1140 = fmul float %1139, 5.000000e-01
  %1141 = fsub float %1138, %104
  %1142 = fpext float %1140 to double
  %1143 = fsub double 1.966070e+05, %1142
  %1144 = fmul double %1143, 0x3EF0001000100010
  %1145 = fpext float %1141 to double
  %1146 = fmul double %1144, %1145
  %1147 = fpext float %1136 to double
  %1148 = call double @llvm.fmuladd.f64(double %1146, double %1145, double %1147)
  %1149 = fptrunc double %1148 to float
  %1150 = extractelement <4 x i16> %1116, i64 3
  %1151 = uitofp i16 %1150 to float
  %1152 = fadd float %119, %1151
  %1153 = fmul float %1152, 5.000000e-01
  %1154 = fsub float %1151, %119
  %1155 = fpext float %1153 to double
  %1156 = fsub double 1.966070e+05, %1155
  %1157 = fmul double %1156, 0x3EF0001000100010
  %1158 = fpext float %1154 to double
  %1159 = fmul double %1157, %1158
  %1160 = fpext float %1149 to double
  %1161 = call double @llvm.fmuladd.f64(double %1159, double %1158, double %1160)
  %1162 = fptrunc double %1161 to float
  %1163 = fcmp olt float %1162, 0x41A47AB860000000
  br i1 %1163, label %1164, label %1170

1164:                                             ; preds = %1112
  %1165 = uitofp <4 x i16> %1116 to <4 x double>
  %1166 = fpext <4 x float> %1114 to <4 x double>
  %1167 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1165, <4 x double> <double 2.000000e+01, double 2.000000e+01, double 2.000000e+01, double 2.000000e+01>, <4 x double> %1166)
  %1168 = fptrunc <4 x double> %1167 to <4 x float>
  %1169 = fadd float %1113, 2.000000e+01
  br label %1170

1170:                                             ; preds = %1164, %1112
  %1171 = phi float [ %1169, %1164 ], [ %1113, %1112 ]
  %1172 = phi <4 x float> [ %1168, %1164 ], [ %1114, %1112 ]
  %1173 = getelementptr inbounds %struct._PixelPacket, ptr %941, i64 4
  %1174 = load <4 x i16>, ptr %1173, align 2, !tbaa !76
  %1175 = extractelement <4 x i16> %1174, i64 2
  %1176 = uitofp i16 %1175 to float
  %1177 = fadd float %75, %1176
  %1178 = fmul float %1177, 5.000000e-01
  %1179 = fsub float %1176, %75
  %1180 = fpext float %1178 to double
  %1181 = fadd double %1180, 1.310720e+05
  %1182 = fmul double %1181, 0x3EF0001000100010
  %1183 = fpext float %1179 to double
  %1184 = fmul double %1182, %1183
  %1185 = fmul double %1184, %1183
  %1186 = fptrunc double %1185 to float
  %1187 = extractelement <4 x i16> %1174, i64 1
  %1188 = uitofp i16 %1187 to float
  %1189 = fsub float %1188, %94
  %1190 = fpext float %1189 to double
  %1191 = fmul double %1190, 4.000000e+00
  %1192 = fpext float %1186 to double
  %1193 = call double @llvm.fmuladd.f64(double %1191, double %1190, double %1192)
  %1194 = fptrunc double %1193 to float
  %1195 = extractelement <4 x i16> %1174, i64 0
  %1196 = uitofp i16 %1195 to float
  %1197 = fadd float %104, %1196
  %1198 = fmul float %1197, 5.000000e-01
  %1199 = fsub float %1196, %104
  %1200 = fpext float %1198 to double
  %1201 = fsub double 1.966070e+05, %1200
  %1202 = fmul double %1201, 0x3EF0001000100010
  %1203 = fpext float %1199 to double
  %1204 = fmul double %1202, %1203
  %1205 = fpext float %1194 to double
  %1206 = call double @llvm.fmuladd.f64(double %1204, double %1203, double %1205)
  %1207 = fptrunc double %1206 to float
  %1208 = extractelement <4 x i16> %1174, i64 3
  %1209 = uitofp i16 %1208 to float
  %1210 = fadd float %119, %1209
  %1211 = fmul float %1210, 5.000000e-01
  %1212 = fsub float %1209, %119
  %1213 = fpext float %1211 to double
  %1214 = fsub double 1.966070e+05, %1213
  %1215 = fmul double %1214, 0x3EF0001000100010
  %1216 = fpext float %1212 to double
  %1217 = fmul double %1215, %1216
  %1218 = fpext float %1207 to double
  %1219 = call double @llvm.fmuladd.f64(double %1217, double %1216, double %1218)
  %1220 = fptrunc double %1219 to float
  %1221 = fcmp olt float %1220, 0x41A47AB860000000
  br i1 %1221, label %1222, label %1228

1222:                                             ; preds = %1170
  %1223 = uitofp <4 x i16> %1174 to <4 x double>
  %1224 = fpext <4 x float> %1172 to <4 x double>
  %1225 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1223, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %1224)
  %1226 = fptrunc <4 x double> %1225 to <4 x float>
  %1227 = fadd float %1171, 8.000000e+00
  br label %1228

1228:                                             ; preds = %1222, %1170
  %1229 = phi float [ %1227, %1222 ], [ %1171, %1170 ]
  %1230 = phi <4 x float> [ %1226, %1222 ], [ %1172, %1170 ]
  %1231 = getelementptr inbounds %struct._PixelPacket, ptr %68, i64 %66
  %1232 = load <4 x i16>, ptr %1231, align 2, !tbaa !76
  %1233 = extractelement <4 x i16> %1232, i64 2
  %1234 = uitofp i16 %1233 to float
  %1235 = fadd float %75, %1234
  %1236 = fmul float %1235, 5.000000e-01
  %1237 = fsub float %1234, %75
  %1238 = fpext float %1236 to double
  %1239 = fadd double %1238, 1.310720e+05
  %1240 = fmul double %1239, 0x3EF0001000100010
  %1241 = fpext float %1237 to double
  %1242 = fmul double %1240, %1241
  %1243 = fmul double %1242, %1241
  %1244 = fptrunc double %1243 to float
  %1245 = extractelement <4 x i16> %1232, i64 1
  %1246 = uitofp i16 %1245 to float
  %1247 = fsub float %1246, %94
  %1248 = fpext float %1247 to double
  %1249 = fmul double %1248, 4.000000e+00
  %1250 = fpext float %1244 to double
  %1251 = call double @llvm.fmuladd.f64(double %1249, double %1248, double %1250)
  %1252 = fptrunc double %1251 to float
  %1253 = extractelement <4 x i16> %1232, i64 0
  %1254 = uitofp i16 %1253 to float
  %1255 = fadd float %104, %1254
  %1256 = fmul float %1255, 5.000000e-01
  %1257 = fsub float %1254, %104
  %1258 = fpext float %1256 to double
  %1259 = fsub double 1.966070e+05, %1258
  %1260 = fmul double %1259, 0x3EF0001000100010
  %1261 = fpext float %1257 to double
  %1262 = fmul double %1260, %1261
  %1263 = fpext float %1252 to double
  %1264 = call double @llvm.fmuladd.f64(double %1262, double %1261, double %1263)
  %1265 = fptrunc double %1264 to float
  %1266 = extractelement <4 x i16> %1232, i64 3
  %1267 = uitofp i16 %1266 to float
  %1268 = fadd float %119, %1267
  %1269 = fmul float %1268, 5.000000e-01
  %1270 = fsub float %1267, %119
  %1271 = fpext float %1269 to double
  %1272 = fsub double 1.966070e+05, %1271
  %1273 = fmul double %1272, 0x3EF0001000100010
  %1274 = fpext float %1270 to double
  %1275 = fmul double %1273, %1274
  %1276 = fpext float %1265 to double
  %1277 = call double @llvm.fmuladd.f64(double %1275, double %1274, double %1276)
  %1278 = fptrunc double %1277 to float
  %1279 = fcmp olt float %1278, 0x41A47AB860000000
  br i1 %1279, label %1280, label %1286

1280:                                             ; preds = %1228
  %1281 = uitofp <4 x i16> %1232 to <4 x double>
  %1282 = fpext <4 x float> %1230 to <4 x double>
  %1283 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1281, <4 x double> <double 5.000000e+00, double 5.000000e+00, double 5.000000e+00, double 5.000000e+00>, <4 x double> %1282)
  %1284 = fptrunc <4 x double> %1283 to <4 x float>
  %1285 = fadd float %1229, 5.000000e+00
  br label %1286

1286:                                             ; preds = %1280, %1228
  %1287 = phi float [ %1285, %1280 ], [ %1229, %1228 ]
  %1288 = phi <4 x float> [ %1284, %1280 ], [ %1230, %1228 ]
  %1289 = getelementptr inbounds %struct._PixelPacket, ptr %1231, i64 1
  %1290 = load <4 x i16>, ptr %1289, align 2, !tbaa !76
  %1291 = extractelement <4 x i16> %1290, i64 2
  %1292 = uitofp i16 %1291 to float
  %1293 = fadd float %75, %1292
  %1294 = fmul float %1293, 5.000000e-01
  %1295 = fsub float %1292, %75
  %1296 = fpext float %1294 to double
  %1297 = fadd double %1296, 1.310720e+05
  %1298 = fmul double %1297, 0x3EF0001000100010
  %1299 = fpext float %1295 to double
  %1300 = fmul double %1298, %1299
  %1301 = fmul double %1300, %1299
  %1302 = fptrunc double %1301 to float
  %1303 = extractelement <4 x i16> %1290, i64 1
  %1304 = uitofp i16 %1303 to float
  %1305 = fsub float %1304, %94
  %1306 = fpext float %1305 to double
  %1307 = fmul double %1306, 4.000000e+00
  %1308 = fpext float %1302 to double
  %1309 = call double @llvm.fmuladd.f64(double %1307, double %1306, double %1308)
  %1310 = fptrunc double %1309 to float
  %1311 = extractelement <4 x i16> %1290, i64 0
  %1312 = uitofp i16 %1311 to float
  %1313 = fadd float %104, %1312
  %1314 = fmul float %1313, 5.000000e-01
  %1315 = fsub float %1312, %104
  %1316 = fpext float %1314 to double
  %1317 = fsub double 1.966070e+05, %1316
  %1318 = fmul double %1317, 0x3EF0001000100010
  %1319 = fpext float %1315 to double
  %1320 = fmul double %1318, %1319
  %1321 = fpext float %1310 to double
  %1322 = call double @llvm.fmuladd.f64(double %1320, double %1319, double %1321)
  %1323 = fptrunc double %1322 to float
  %1324 = extractelement <4 x i16> %1290, i64 3
  %1325 = uitofp i16 %1324 to float
  %1326 = fadd float %119, %1325
  %1327 = fmul float %1326, 5.000000e-01
  %1328 = fsub float %1325, %119
  %1329 = fpext float %1327 to double
  %1330 = fsub double 1.966070e+05, %1329
  %1331 = fmul double %1330, 0x3EF0001000100010
  %1332 = fpext float %1328 to double
  %1333 = fmul double %1331, %1332
  %1334 = fpext float %1323 to double
  %1335 = call double @llvm.fmuladd.f64(double %1333, double %1332, double %1334)
  %1336 = fptrunc double %1335 to float
  %1337 = fcmp olt float %1336, 0x41A47AB860000000
  br i1 %1337, label %1338, label %1344

1338:                                             ; preds = %1286
  %1339 = uitofp <4 x i16> %1290 to <4 x double>
  %1340 = fpext <4 x float> %1288 to <4 x double>
  %1341 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1339, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %1340)
  %1342 = fptrunc <4 x double> %1341 to <4 x float>
  %1343 = fadd float %1287, 8.000000e+00
  br label %1344

1344:                                             ; preds = %1338, %1286
  %1345 = phi float [ %1343, %1338 ], [ %1287, %1286 ]
  %1346 = phi <4 x float> [ %1342, %1338 ], [ %1288, %1286 ]
  %1347 = getelementptr inbounds %struct._PixelPacket, ptr %1231, i64 2
  %1348 = load <4 x i16>, ptr %1347, align 2, !tbaa !76
  %1349 = extractelement <4 x i16> %1348, i64 2
  %1350 = uitofp i16 %1349 to float
  %1351 = fadd float %75, %1350
  %1352 = fmul float %1351, 5.000000e-01
  %1353 = fsub float %1350, %75
  %1354 = fpext float %1352 to double
  %1355 = fadd double %1354, 1.310720e+05
  %1356 = fmul double %1355, 0x3EF0001000100010
  %1357 = fpext float %1353 to double
  %1358 = fmul double %1356, %1357
  %1359 = fmul double %1358, %1357
  %1360 = fptrunc double %1359 to float
  %1361 = extractelement <4 x i16> %1348, i64 1
  %1362 = uitofp i16 %1361 to float
  %1363 = fsub float %1362, %94
  %1364 = fpext float %1363 to double
  %1365 = fmul double %1364, 4.000000e+00
  %1366 = fpext float %1360 to double
  %1367 = call double @llvm.fmuladd.f64(double %1365, double %1364, double %1366)
  %1368 = fptrunc double %1367 to float
  %1369 = extractelement <4 x i16> %1348, i64 0
  %1370 = uitofp i16 %1369 to float
  %1371 = fadd float %104, %1370
  %1372 = fmul float %1371, 5.000000e-01
  %1373 = fsub float %1370, %104
  %1374 = fpext float %1372 to double
  %1375 = fsub double 1.966070e+05, %1374
  %1376 = fmul double %1375, 0x3EF0001000100010
  %1377 = fpext float %1373 to double
  %1378 = fmul double %1376, %1377
  %1379 = fpext float %1368 to double
  %1380 = call double @llvm.fmuladd.f64(double %1378, double %1377, double %1379)
  %1381 = fptrunc double %1380 to float
  %1382 = extractelement <4 x i16> %1348, i64 3
  %1383 = uitofp i16 %1382 to float
  %1384 = fadd float %119, %1383
  %1385 = fmul float %1384, 5.000000e-01
  %1386 = fsub float %1383, %119
  %1387 = fpext float %1385 to double
  %1388 = fsub double 1.966070e+05, %1387
  %1389 = fmul double %1388, 0x3EF0001000100010
  %1390 = fpext float %1386 to double
  %1391 = fmul double %1389, %1390
  %1392 = fpext float %1381 to double
  %1393 = call double @llvm.fmuladd.f64(double %1391, double %1390, double %1392)
  %1394 = fptrunc double %1393 to float
  %1395 = fcmp olt float %1394, 0x41A47AB860000000
  br i1 %1395, label %1396, label %1402

1396:                                             ; preds = %1344
  %1397 = uitofp <4 x i16> %1348 to <4 x double>
  %1398 = fpext <4 x float> %1346 to <4 x double>
  %1399 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1397, <4 x double> <double 1.000000e+01, double 1.000000e+01, double 1.000000e+01, double 1.000000e+01>, <4 x double> %1398)
  %1400 = fptrunc <4 x double> %1399 to <4 x float>
  %1401 = fadd float %1345, 1.000000e+01
  br label %1402

1402:                                             ; preds = %1396, %1344
  %1403 = phi float [ %1401, %1396 ], [ %1345, %1344 ]
  %1404 = phi <4 x float> [ %1400, %1396 ], [ %1346, %1344 ]
  %1405 = getelementptr inbounds %struct._PixelPacket, ptr %1231, i64 3
  %1406 = load <4 x i16>, ptr %1405, align 2, !tbaa !76
  %1407 = extractelement <4 x i16> %1406, i64 2
  %1408 = uitofp i16 %1407 to float
  %1409 = fadd float %75, %1408
  %1410 = fmul float %1409, 5.000000e-01
  %1411 = fsub float %1408, %75
  %1412 = fpext float %1410 to double
  %1413 = fadd double %1412, 1.310720e+05
  %1414 = fmul double %1413, 0x3EF0001000100010
  %1415 = fpext float %1411 to double
  %1416 = fmul double %1414, %1415
  %1417 = fmul double %1416, %1415
  %1418 = fptrunc double %1417 to float
  %1419 = extractelement <4 x i16> %1406, i64 1
  %1420 = uitofp i16 %1419 to float
  %1421 = fsub float %1420, %94
  %1422 = fpext float %1421 to double
  %1423 = fmul double %1422, 4.000000e+00
  %1424 = fpext float %1418 to double
  %1425 = call double @llvm.fmuladd.f64(double %1423, double %1422, double %1424)
  %1426 = fptrunc double %1425 to float
  %1427 = extractelement <4 x i16> %1406, i64 0
  %1428 = uitofp i16 %1427 to float
  %1429 = fadd float %104, %1428
  %1430 = fmul float %1429, 5.000000e-01
  %1431 = fsub float %1428, %104
  %1432 = fpext float %1430 to double
  %1433 = fsub double 1.966070e+05, %1432
  %1434 = fmul double %1433, 0x3EF0001000100010
  %1435 = fpext float %1431 to double
  %1436 = fmul double %1434, %1435
  %1437 = fpext float %1426 to double
  %1438 = call double @llvm.fmuladd.f64(double %1436, double %1435, double %1437)
  %1439 = fptrunc double %1438 to float
  %1440 = extractelement <4 x i16> %1406, i64 3
  %1441 = uitofp i16 %1440 to float
  %1442 = fadd float %119, %1441
  %1443 = fmul float %1442, 5.000000e-01
  %1444 = fsub float %1441, %119
  %1445 = fpext float %1443 to double
  %1446 = fsub double 1.966070e+05, %1445
  %1447 = fmul double %1446, 0x3EF0001000100010
  %1448 = fpext float %1444 to double
  %1449 = fmul double %1447, %1448
  %1450 = fpext float %1439 to double
  %1451 = call double @llvm.fmuladd.f64(double %1449, double %1448, double %1450)
  %1452 = fptrunc double %1451 to float
  %1453 = fcmp olt float %1452, 0x41A47AB860000000
  br i1 %1453, label %1454, label %1460

1454:                                             ; preds = %1402
  %1455 = uitofp <4 x i16> %1406 to <4 x double>
  %1456 = fpext <4 x float> %1404 to <4 x double>
  %1457 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1455, <4 x double> <double 8.000000e+00, double 8.000000e+00, double 8.000000e+00, double 8.000000e+00>, <4 x double> %1456)
  %1458 = fptrunc <4 x double> %1457 to <4 x float>
  %1459 = fadd float %1403, 8.000000e+00
  br label %1460

1460:                                             ; preds = %1454, %1402
  %1461 = phi float [ %1459, %1454 ], [ %1403, %1402 ]
  %1462 = phi <4 x float> [ %1458, %1454 ], [ %1404, %1402 ]
  %1463 = getelementptr inbounds %struct._PixelPacket, ptr %1231, i64 4
  %1464 = load <4 x i16>, ptr %1463, align 2, !tbaa !76
  %1465 = extractelement <4 x i16> %1464, i64 2
  %1466 = uitofp i16 %1465 to float
  %1467 = fadd float %75, %1466
  %1468 = fmul float %1467, 5.000000e-01
  %1469 = fsub float %1466, %75
  %1470 = fpext float %1468 to double
  %1471 = fadd double %1470, 1.310720e+05
  %1472 = fmul double %1471, 0x3EF0001000100010
  %1473 = fpext float %1469 to double
  %1474 = fmul double %1472, %1473
  %1475 = fmul double %1474, %1473
  %1476 = fptrunc double %1475 to float
  %1477 = extractelement <4 x i16> %1464, i64 1
  %1478 = uitofp i16 %1477 to float
  %1479 = fsub float %1478, %94
  %1480 = fpext float %1479 to double
  %1481 = fmul double %1480, 4.000000e+00
  %1482 = fpext float %1476 to double
  %1483 = call double @llvm.fmuladd.f64(double %1481, double %1480, double %1482)
  %1484 = fptrunc double %1483 to float
  %1485 = extractelement <4 x i16> %1464, i64 0
  %1486 = uitofp i16 %1485 to float
  %1487 = fadd float %104, %1486
  %1488 = fmul float %1487, 5.000000e-01
  %1489 = fsub float %1486, %104
  %1490 = fpext float %1488 to double
  %1491 = fsub double 1.966070e+05, %1490
  %1492 = fmul double %1491, 0x3EF0001000100010
  %1493 = fpext float %1489 to double
  %1494 = fmul double %1492, %1493
  %1495 = fpext float %1484 to double
  %1496 = call double @llvm.fmuladd.f64(double %1494, double %1493, double %1495)
  %1497 = fptrunc double %1496 to float
  %1498 = extractelement <4 x i16> %1464, i64 3
  %1499 = uitofp i16 %1498 to float
  %1500 = fadd float %119, %1499
  %1501 = fmul float %1500, 5.000000e-01
  %1502 = fsub float %1499, %119
  %1503 = fpext float %1501 to double
  %1504 = fsub double 1.966070e+05, %1503
  %1505 = fmul double %1504, 0x3EF0001000100010
  %1506 = fpext float %1502 to double
  %1507 = fmul double %1505, %1506
  %1508 = fpext float %1497 to double
  %1509 = call double @llvm.fmuladd.f64(double %1507, double %1506, double %1508)
  %1510 = fptrunc double %1509 to float
  %1511 = fcmp olt float %1510, 0x41A47AB860000000
  br i1 %1511, label %1512, label %1518

1512:                                             ; preds = %1460
  %1513 = uitofp <4 x i16> %1464 to <4 x double>
  %1514 = fpext <4 x float> %1462 to <4 x double>
  %1515 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %1513, <4 x double> <double 5.000000e+00, double 5.000000e+00, double 5.000000e+00, double 5.000000e+00>, <4 x double> %1514)
  %1516 = fptrunc <4 x double> %1515 to <4 x float>
  %1517 = fadd float %1461, 5.000000e+00
  br label %1518

1518:                                             ; preds = %1512, %1460
  %1519 = phi float [ %1517, %1512 ], [ %1461, %1460 ]
  %1520 = phi <4 x float> [ %1516, %1512 ], [ %1462, %1460 ]
  %1521 = fmul float %1519, 5.000000e-01
  %1522 = insertelement <4 x float> poison, float %1521, i64 0
  %1523 = shufflevector <4 x float> %1522, <4 x float> poison, <4 x i32> zeroinitializer
  %1524 = fadd <4 x float> %1520, %1523
  %1525 = fadd <4 x float> %1524, <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>
  %1526 = insertelement <4 x float> poison, float %1519, i64 0
  %1527 = shufflevector <4 x float> %1526, <4 x float> poison, <4 x i32> zeroinitializer
  %1528 = fdiv <4 x float> %1525, %1527
  %1529 = fptoui <4 x float> %1528 to <4 x i16>
  store <4 x i16> %1529, ptr %69, align 2, !tbaa !76
  %1530 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 1
  %1531 = add nuw nsw i64 %70, 1
  %1532 = icmp eq i64 %1531, %57
  br i1 %1532, label %1533, label %67, !llvm.loop !107

1533:                                             ; preds = %1518, %54
  %1534 = load ptr, ptr %6, align 8, !tbaa !27
  %1535 = load ptr, ptr %5, align 8, !tbaa !27
  %1536 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1534, ptr noundef %1535) #20
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1538, label %1539

1538:                                             ; preds = %1533
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %1539

1539:                                             ; preds = %1538, %1533
  %1540 = load ptr, ptr %2, align 8, !tbaa !27
  %1541 = getelementptr inbounds %struct._Image, ptr %1540, i64 0, i32 47
  %1542 = load ptr, ptr %1541, align 8, !tbaa !63
  %1543 = icmp eq ptr %1542, null
  br i1 %1543, label %1553, label %1544

1544:                                             ; preds = %1539
  call void @__kmpc_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_EnhanceImage.var)
  %1545 = load ptr, ptr %2, align 8, !tbaa !27
  %1546 = load i64, ptr %9, align 8, !tbaa !39
  %1547 = add nsw i64 %1546, 1
  store i64 %1547, ptr %9, align 8, !tbaa !39
  %1548 = getelementptr inbounds %struct._Image, ptr %1545, i64 0, i32 8
  %1549 = load i64, ptr %1548, align 8, !tbaa !40
  %1550 = call fastcc i32 @SetImageProgress(ptr noundef %1545, ptr noundef nonnull @.str.28, i64 noundef %1546, i64 noundef %1549) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_EnhanceImage.var)
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1552, label %1553

1552:                                             ; preds = %1544, %36
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %1553

1553:                                             ; preds = %1552, %1539, %1544, %32
  %1554 = add nsw i64 %33, 1
  %1555 = load i64, ptr %12, align 8, !tbaa !60
  %1556 = icmp slt i64 %33, %1555
  br i1 %1556, label %32, label %1557

1557:                                             ; preds = %1553
  %1558 = load i64, ptr %11, align 8, !tbaa !60
  br label %1559

1559:                                             ; preds = %1557, %28
  %1560 = phi i64 [ %30, %28 ], [ %1558, %1557 ]
  %1561 = phi i64 [ %29, %28 ], [ %1555, %1557 ]
  %1562 = load i64, ptr %13, align 8, !tbaa !60
  %1563 = add nsw i64 %1562, %1560
  store i64 %1563, ptr %11, align 8, !tbaa !60
  %1564 = add nsw i64 %1562, %1561
  %1565 = call i64 @llvm.smin.i64(i64 %1564, i64 %18)
  store i64 %1565, ptr %12, align 8, !tbaa !60
  %1566 = icmp sgt i64 %1563, %1565
  br i1 %1566, label %1567, label %28

1567:                                             ; preds = %1559, %20
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  br label %1568

1568:                                             ; preds = %1567, %10
  ret void
}

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @EqualizeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @EqualizeImageChannel(ptr noundef %0, i32 noundef 134217719) #17
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @EqualizeImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca %struct._MagickPixelPacket, align 8
  %12 = alloca ptr, align 8
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !27
  store i32 %1, ptr %4, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %15 = load i32, ptr %14, align 8, !tbaa !29
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1805, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #18
  br label %20

20:                                               ; preds = %17, %2
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %22 = tail call i32 @AccelerateEqualizeImage(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %21) #18
  store i32 %22, ptr %7, align 4, !tbaa !28
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %452

24:                                               ; preds = %20
  %25 = tail call dereferenceable_or_null(655360) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 10) #19
  store ptr %25, ptr %12, align 8, !tbaa !27
  %26 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #19
  %27 = tail call dereferenceable_or_null(3670016) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 56) #19
  %28 = icmp eq ptr %25, null
  %29 = icmp eq ptr %26, null
  %30 = or i1 %29, %28
  %31 = icmp eq ptr %27, null
  %32 = or i1 %31, %30
  br i1 %32, label %33, label %45

33:                                               ; preds = %24
  br i1 %31, label %36, label %34

34:                                               ; preds = %33
  %35 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %27) #18
  br label %36

36:                                               ; preds = %34, %33
  br i1 %29, label %39, label %37

37:                                               ; preds = %36
  %38 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %26) #18
  br label %39

39:                                               ; preds = %37, %36
  br i1 %28, label %42, label %40

40:                                               ; preds = %39
  %41 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %25) #18
  br label %42

42:                                               ; preds = %39, %40
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %44 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1832, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %43) #18
  br label %452

45:                                               ; preds = %24
  %46 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %26, i32 noundef 0, i64 noundef 3670016) #18
  store ptr %21, ptr %6, align 8, !tbaa !27
  %47 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %21) #18
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %49 = load i64, ptr %48, align 8, !tbaa !40
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = and i32 %1, 256
  %53 = and i32 %1, 1
  %54 = and i32 %1, 2
  %55 = and i32 %1, 4
  %56 = and i32 %1, 8
  %57 = and i32 %1, 32
  br label %162

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %60 = and i32 %1, 256
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %1, 1
  %63 = icmp eq i32 %62, 0
  %64 = and i32 %1, 2
  %65 = icmp eq i32 %64, 0
  %66 = and i32 %1, 4
  %67 = icmp eq i32 %66, 0
  %68 = and i32 %1, 8
  %69 = icmp eq i32 %68, 0
  %70 = and i32 %1, 32
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %73 = load i64, ptr %59, align 8, !tbaa !61
  br label %74

74:                                               ; preds = %58, %157
  %75 = phi i64 [ %73, %58 ], [ %158, %157 ]
  %76 = phi i64 [ 0, %58 ], [ %159, %157 ]
  %77 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %47, i64 noundef 0, i64 noundef %76, i64 noundef %75, i64 noundef 1, ptr noundef nonnull %21) #20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %162, label %79

79:                                               ; preds = %74
  %80 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %47) #18
  %81 = load i64, ptr %59, align 8, !tbaa !61
  %82 = icmp sgt i64 %81, 0
  br i1 %61, label %84, label %83

83:                                               ; preds = %79
  br i1 %82, label %87, label %157

84:                                               ; preds = %79
  br i1 %82, label %85, label %157

85:                                               ; preds = %84
  %86 = icmp eq ptr %80, null
  br label %101

87:                                               ; preds = %83, %87
  %88 = phi i64 [ %98, %87 ], [ 0, %83 ]
  %89 = phi ptr [ %97, %87 ], [ %77, %83 ]
  %90 = tail call float @GetPixelIntensity(ptr noundef nonnull %0, ptr noundef nonnull %89) #20
  %91 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %90) #17
  %92 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %91) #17, !range !58
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %93, i32 5
  %95 = load float, ptr %94, align 8, !tbaa !70
  %96 = fadd float %95, 1.000000e+00
  store float %96, ptr %94, align 8, !tbaa !70
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 1
  %98 = add nuw nsw i64 %88, 1
  %99 = load i64, ptr %59, align 8, !tbaa !61
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %87, label %157, !llvm.loop !108

101:                                              ; preds = %85, %153
  %102 = phi i64 [ 0, %85 ], [ %155, %153 ]
  %103 = phi ptr [ %77, %85 ], [ %154, %153 ]
  br i1 %63, label %112, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 2
  %106 = load i16, ptr %105, align 2, !tbaa !33
  %107 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %106) #17, !range !58
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %108, i32 5
  %110 = load float, ptr %109, align 8, !tbaa !70
  %111 = fadd float %110, 1.000000e+00
  store float %111, ptr %109, align 8, !tbaa !70
  br label %112

112:                                              ; preds = %104, %101
  br i1 %65, label %121, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 1
  %115 = load i16, ptr %114, align 2, !tbaa !34
  %116 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %115) #17, !range !58
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %117, i32 6
  %119 = load float, ptr %118, align 4, !tbaa !73
  %120 = fadd float %119, 1.000000e+00
  store float %120, ptr %118, align 4, !tbaa !73
  br label %121

121:                                              ; preds = %113, %112
  br i1 %67, label %129, label %122

122:                                              ; preds = %121
  %123 = load i16, ptr %103, align 2, !tbaa !35
  %124 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %123) #17, !range !58
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %125, i32 7
  %127 = load float, ptr %126, align 8, !tbaa !74
  %128 = fadd float %127, 1.000000e+00
  store float %128, ptr %126, align 8, !tbaa !74
  br label %129

129:                                              ; preds = %122, %121
  br i1 %69, label %138, label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 0, i32 3
  %132 = load i16, ptr %131, align 2, !tbaa !36
  %133 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %132) #17, !range !58
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %134, i32 8
  %136 = load float, ptr %135, align 4, !tbaa !75
  %137 = fadd float %136, 1.000000e+00
  store float %137, ptr %135, align 4, !tbaa !75
  br label %138

138:                                              ; preds = %130, %129
  br i1 %71, label %153, label %139

139:                                              ; preds = %138
  %140 = load i32, ptr %72, align 4, !tbaa !26
  %141 = icmp eq i32 %140, 12
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  br i1 %86, label %146, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds i16, ptr %80, i64 %102
  %145 = load i16, ptr %144, align 2, !tbaa !76
  br label %146

146:                                              ; preds = %142, %143
  %147 = phi i16 [ %145, %143 ], [ 0, %142 ]
  %148 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %147) #17, !range !58
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %149, i32 9
  %151 = load float, ptr %150, align 8, !tbaa !77
  %152 = fadd float %151, 1.000000e+00
  store float %152, ptr %150, align 8, !tbaa !77
  br label %153

153:                                              ; preds = %146, %139, %138
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %103, i64 1
  %155 = add nuw nsw i64 %102, 1
  %156 = icmp eq i64 %155, %81
  br i1 %156, label %157, label %101, !llvm.loop !109

157:                                              ; preds = %87, %153, %83, %84
  %158 = phi i64 [ %81, %83 ], [ %81, %84 ], [ %81, %153 ], [ %99, %87 ]
  %159 = add nuw nsw i64 %76, 1
  %160 = load i64, ptr %48, align 8, !tbaa !40
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %74, label %162, !llvm.loop !110

162:                                              ; preds = %157, %74, %51
  %163 = phi i32 [ %57, %51 ], [ %70, %74 ], [ %70, %157 ]
  %164 = phi i32 [ %56, %51 ], [ %68, %74 ], [ %68, %157 ]
  %165 = phi i32 [ %55, %51 ], [ %66, %74 ], [ %66, %157 ]
  %166 = phi i32 [ %54, %51 ], [ %64, %74 ], [ %64, %157 ]
  %167 = phi i32 [ %53, %51 ], [ %62, %74 ], [ %62, %157 ]
  %168 = phi i32 [ %52, %51 ], [ %60, %74 ], [ %60, %157 ]
  %169 = tail call ptr @DestroyCacheView(ptr noundef %47) #18
  store ptr %169, ptr %5, align 8, !tbaa !27
  %170 = call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 56) #18
  %171 = icmp eq i32 %168, 0
  %172 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  %173 = icmp eq i32 %167, 0
  %174 = icmp eq i32 %166, 0
  %175 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  %176 = icmp eq i32 %165, 0
  %177 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  %178 = icmp eq i32 %164, 0
  %179 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  %180 = icmp eq i32 %163, 0
  %181 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  %183 = load float, ptr %172, align 8, !tbaa !70
  %184 = load float, ptr %175, align 4, !tbaa !73
  %185 = load float, ptr %177, align 8, !tbaa !74
  %186 = load float, ptr %179, align 4, !tbaa !75
  %187 = load float, ptr %182, align 8, !tbaa !77
  br label %188

188:                                              ; preds = %162, %231
  %189 = phi float [ %187, %162 ], [ %232, %231 ]
  %190 = phi float [ %186, %162 ], [ %233, %231 ]
  %191 = phi float [ %185, %162 ], [ %234, %231 ]
  %192 = phi float [ %184, %162 ], [ %235, %231 ]
  %193 = phi float [ %183, %162 ], [ %236, %231 ]
  %194 = phi i64 [ 0, %162 ], [ %238, %231 ]
  br i1 %171, label %199, label %195

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %194, i32 5
  %197 = load float, ptr %196, align 8, !tbaa !70
  %198 = fadd float %197, %193
  store float %198, ptr %172, align 8, !tbaa !70
  br label %231

199:                                              ; preds = %188
  br i1 %173, label %204, label %200

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %194, i32 5
  %202 = load float, ptr %201, align 8, !tbaa !70
  %203 = fadd float %202, %193
  store float %203, ptr %172, align 8, !tbaa !70
  br label %204

204:                                              ; preds = %200, %199
  %205 = phi float [ %203, %200 ], [ %193, %199 ]
  br i1 %174, label %210, label %206

206:                                              ; preds = %204
  %207 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %194, i32 6
  %208 = load float, ptr %207, align 4, !tbaa !73
  %209 = fadd float %208, %192
  store float %209, ptr %175, align 4, !tbaa !73
  br label %210

210:                                              ; preds = %206, %204
  %211 = phi float [ %209, %206 ], [ %192, %204 ]
  br i1 %176, label %216, label %212

212:                                              ; preds = %210
  %213 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %194, i32 7
  %214 = load float, ptr %213, align 8, !tbaa !74
  %215 = fadd float %214, %191
  store float %215, ptr %177, align 8, !tbaa !74
  br label %216

216:                                              ; preds = %212, %210
  %217 = phi float [ %215, %212 ], [ %191, %210 ]
  br i1 %178, label %222, label %218

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %194, i32 8
  %220 = load float, ptr %219, align 4, !tbaa !75
  %221 = fadd float %220, %190
  store float %221, ptr %179, align 4, !tbaa !75
  br label %222

222:                                              ; preds = %218, %216
  %223 = phi float [ %221, %218 ], [ %190, %216 ]
  br i1 %180, label %231, label %224

224:                                              ; preds = %222
  %225 = load i32, ptr %181, align 4, !tbaa !26
  %226 = icmp eq i32 %225, 12
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct._MagickPixelPacket, ptr %26, i64 %194, i32 9
  %229 = load float, ptr %228, align 8, !tbaa !77
  %230 = fadd float %229, %189
  store float %230, ptr %182, align 8, !tbaa !77
  br label %231

231:                                              ; preds = %222, %224, %227, %195
  %232 = phi float [ %189, %195 ], [ %230, %227 ], [ %189, %224 ], [ %189, %222 ]
  %233 = phi float [ %190, %195 ], [ %223, %227 ], [ %223, %224 ], [ %223, %222 ]
  %234 = phi float [ %191, %195 ], [ %217, %227 ], [ %217, %224 ], [ %217, %222 ]
  %235 = phi float [ %192, %195 ], [ %211, %227 ], [ %211, %224 ], [ %211, %222 ]
  %236 = phi float [ %198, %195 ], [ %205, %227 ], [ %205, %224 ], [ %205, %222 ]
  %237 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %237, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false)
  %238 = add nuw nsw i64 %194, 1
  %239 = icmp eq i64 %238, 65536
  br i1 %239, label %240, label %188, !llvm.loop !111

240:                                              ; preds = %231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %27, i64 56, i1 false), !tbaa.struct !112
  %241 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 65535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %241, i64 56, i1 false), !tbaa.struct !112
  %242 = call ptr @ResetMagickMemory(ptr noundef %25, i32 noundef 0, i64 noundef 655360) #18
  %243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 5
  %244 = load float, ptr %243, align 8
  %245 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  %246 = load float, ptr %245, align 8
  %247 = fcmp une float %244, %246
  %248 = fsub float %244, %246
  %249 = fcmp oeq float %244, %246
  %250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 6
  %251 = load float, ptr %250, align 4
  %252 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 6
  %253 = load float, ptr %252, align 4
  %254 = fcmp oeq float %251, %253
  %255 = fsub float %251, %253
  %256 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 7
  %257 = load float, ptr %256, align 8
  %258 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  %259 = load float, ptr %258, align 8
  %260 = fcmp oeq float %257, %259
  %261 = fsub float %257, %259
  %262 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 8
  %263 = load float, ptr %262, align 4
  %264 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  %265 = load float, ptr %264, align 4
  %266 = fcmp oeq float %263, %265
  %267 = fsub float %263, %265
  %268 = getelementptr inbounds %struct._MagickPixelPacket, ptr %11, i64 0, i32 9
  %269 = load float, ptr %268, align 8
  %270 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %271 = load float, ptr %270, align 8
  %272 = fcmp oeq float %269, %271
  %273 = fsub float %269, %271
  %274 = select i1 %173, i1 true, i1 %249
  %275 = select i1 %174, i1 true, i1 %254
  %276 = select i1 %176, i1 true, i1 %260
  %277 = select i1 %178, i1 true, i1 %266
  br label %278

278:                                              ; preds = %240, %338
  %279 = phi i64 [ 0, %240 ], [ %339, %338 ]
  br i1 %171, label %289, label %280

280:                                              ; preds = %278
  br i1 %247, label %281, label %338

281:                                              ; preds = %280
  %282 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %279, i32 5
  %283 = load float, ptr %282, align 8, !tbaa !70
  %284 = fsub float %283, %246
  %285 = fmul float %284, 6.553500e+04
  %286 = fdiv float %285, %248
  %287 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %286) #17
  %288 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %279
  store i16 %287, ptr %288, align 2, !tbaa !98
  br label %338

289:                                              ; preds = %278
  br i1 %274, label %298, label %290

290:                                              ; preds = %289
  %291 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %279, i32 5
  %292 = load float, ptr %291, align 8, !tbaa !70
  %293 = fsub float %292, %246
  %294 = fmul float %293, 6.553500e+04
  %295 = fdiv float %294, %248
  %296 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %295) #17
  %297 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %279
  store i16 %296, ptr %297, align 2, !tbaa !98
  br label %298

298:                                              ; preds = %289, %290
  br i1 %275, label %307, label %299

299:                                              ; preds = %298
  %300 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %279, i32 6
  %301 = load float, ptr %300, align 4, !tbaa !73
  %302 = fsub float %301, %253
  %303 = fmul float %302, 6.553500e+04
  %304 = fdiv float %303, %255
  %305 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %304) #17
  %306 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %279, i32 1
  store i16 %305, ptr %306, align 2, !tbaa !100
  br label %307

307:                                              ; preds = %298, %299
  br i1 %276, label %316, label %308

308:                                              ; preds = %307
  %309 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %279, i32 7
  %310 = load float, ptr %309, align 8, !tbaa !74
  %311 = fsub float %310, %259
  %312 = fmul float %311, 6.553500e+04
  %313 = fdiv float %312, %261
  %314 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %313) #17
  %315 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %279, i32 2
  store i16 %314, ptr %315, align 2, !tbaa !101
  br label %316

316:                                              ; preds = %307, %308
  br i1 %277, label %325, label %317

317:                                              ; preds = %316
  %318 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %279, i32 8
  %319 = load float, ptr %318, align 4, !tbaa !75
  %320 = fsub float %319, %265
  %321 = fmul float %320, 6.553500e+04
  %322 = fdiv float %321, %267
  %323 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %322) #17
  %324 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %279, i32 3
  store i16 %323, ptr %324, align 2, !tbaa !102
  br label %325

325:                                              ; preds = %316, %317
  br i1 %180, label %338, label %326

326:                                              ; preds = %325
  %327 = load i32, ptr %181, align 4, !tbaa !26
  %328 = icmp ne i32 %327, 12
  %329 = select i1 %328, i1 true, i1 %272
  br i1 %329, label %338, label %330

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct._MagickPixelPacket, ptr %27, i64 %279, i32 9
  %332 = load float, ptr %331, align 8, !tbaa !77
  %333 = fsub float %332, %271
  %334 = fmul float %333, 6.553500e+04
  %335 = fdiv float %334, %273
  %336 = call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %335) #17
  %337 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %279, i32 4
  store i16 %336, ptr %337, align 2, !tbaa !103
  br label %338

338:                                              ; preds = %326, %325, %330, %280, %281
  %339 = add nuw nsw i64 %279, 1
  %340 = icmp eq i64 %339, 65536
  br i1 %340, label %341, label %278, !llvm.loop !113

341:                                              ; preds = %338
  %342 = call ptr @RelinquishMagickMemory(ptr noundef %26) #18
  %343 = call ptr @RelinquishMagickMemory(ptr noundef %27) #18
  %344 = load i32, ptr %0, align 8, !tbaa !30
  %345 = icmp eq i32 %344, 2
  br i1 %345, label %346, label %426

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %348 = load i64, ptr %347, align 8, !tbaa !31
  %349 = icmp sgt i64 %348, 0
  br i1 %349, label %350, label %426

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %352 = select i1 %173, i1 true, i1 %249
  %353 = select i1 %174, i1 true, i1 %254
  %354 = select i1 %176, i1 true, i1 %260
  %355 = select i1 %178, i1 true, i1 %266
  br label %356

356:                                              ; preds = %350, %423
  %357 = phi i64 [ 0, %350 ], [ %424, %423 ]
  br i1 %171, label %384, label %358

358:                                              ; preds = %356
  br i1 %247, label %359, label %423

359:                                              ; preds = %358
  %360 = load ptr, ptr %351, align 8, !tbaa !32
  %361 = getelementptr inbounds %struct._PixelPacket, ptr %360, i64 %357, i32 2
  %362 = load i16, ptr %361, align 2, !tbaa !33
  %363 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %362) #17, !range !58
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %364
  %366 = load i16, ptr %365, align 2, !tbaa !98
  store i16 %366, ptr %361, align 2, !tbaa !33
  %367 = getelementptr inbounds %struct._PixelPacket, ptr %360, i64 %357, i32 1
  %368 = load i16, ptr %367, align 2, !tbaa !34
  %369 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %368) #17, !range !58
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %370
  %372 = load i16, ptr %371, align 2, !tbaa !98
  store i16 %372, ptr %367, align 2, !tbaa !34
  %373 = getelementptr inbounds %struct._PixelPacket, ptr %360, i64 %357
  %374 = load i16, ptr %373, align 2, !tbaa !35
  %375 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %374) #17, !range !58
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %376
  %378 = load i16, ptr %377, align 2, !tbaa !98
  store i16 %378, ptr %373, align 2, !tbaa !35
  %379 = getelementptr inbounds %struct._PixelPacket, ptr %360, i64 %357, i32 3
  %380 = load i16, ptr %379, align 2, !tbaa !36
  %381 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %380) #17, !range !58
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %382
  br label %419

384:                                              ; preds = %356
  br i1 %352, label %393, label %385

385:                                              ; preds = %384
  %386 = load ptr, ptr %351, align 8, !tbaa !32
  %387 = getelementptr inbounds %struct._PixelPacket, ptr %386, i64 %357, i32 2
  %388 = load i16, ptr %387, align 2, !tbaa !33
  %389 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %388) #17, !range !58
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %390
  %392 = load i16, ptr %391, align 2, !tbaa !98
  store i16 %392, ptr %387, align 2, !tbaa !33
  br label %393

393:                                              ; preds = %384, %385
  br i1 %353, label %402, label %394

394:                                              ; preds = %393
  %395 = load ptr, ptr %351, align 8, !tbaa !32
  %396 = getelementptr inbounds %struct._PixelPacket, ptr %395, i64 %357, i32 1
  %397 = load i16, ptr %396, align 2, !tbaa !34
  %398 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %397) #17, !range !58
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %399, i32 1
  %401 = load i16, ptr %400, align 2, !tbaa !100
  store i16 %401, ptr %396, align 2, !tbaa !34
  br label %402

402:                                              ; preds = %393, %394
  br i1 %354, label %411, label %403

403:                                              ; preds = %402
  %404 = load ptr, ptr %351, align 8, !tbaa !32
  %405 = getelementptr inbounds %struct._PixelPacket, ptr %404, i64 %357
  %406 = load i16, ptr %405, align 2, !tbaa !35
  %407 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %406) #17, !range !58
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %408, i32 2
  %410 = load i16, ptr %409, align 2, !tbaa !101
  store i16 %410, ptr %405, align 2, !tbaa !35
  br label %411

411:                                              ; preds = %402, %403
  br i1 %355, label %423, label %412

412:                                              ; preds = %411
  %413 = load ptr, ptr %351, align 8, !tbaa !32
  %414 = getelementptr inbounds %struct._PixelPacket, ptr %413, i64 %357, i32 3
  %415 = load i16, ptr %414, align 2, !tbaa !36
  %416 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %415) #17, !range !58
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %25, i64 %417, i32 3
  br label %419

419:                                              ; preds = %359, %412
  %420 = phi ptr [ %418, %412 ], [ %383, %359 ]
  %421 = phi ptr [ %414, %412 ], [ %379, %359 ]
  %422 = load i16, ptr %420, align 2, !tbaa !76
  store i16 %422, ptr %421, align 2, !tbaa !36
  br label %423

423:                                              ; preds = %419, %411, %358
  %424 = add nuw nsw i64 %357, 1
  %425 = icmp eq i64 %424, %348
  br i1 %425, label %426, label %356, !llvm.loop !114

426:                                              ; preds = %423, %346, %341
  store i32 1, ptr %7, align 4, !tbaa !28
  store i64 0, ptr %8, align 8, !tbaa !39
  %427 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %21) #18
  store ptr %427, ptr %5, align 8, !tbaa !27
  %428 = load i64, ptr %48, align 8, !tbaa !40
  %429 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %430 = shl i64 %429, 5
  %431 = icmp ugt i64 %428, %430
  br i1 %431, label %432, label %440

432:                                              ; preds = %426
  %433 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %434 = icmp eq i32 %433, 3
  br i1 %434, label %440, label %435

435:                                              ; preds = %432
  %436 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %437 = icmp eq i32 %436, 3
  br i1 %437, label %440, label %438

438:                                              ; preds = %435
  %439 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %444

440:                                              ; preds = %435, %432, %426
  %441 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %442 = icmp ult i64 %441, 2
  %443 = select i1 %442, i64 1, i64 2
  br label %444

444:                                              ; preds = %440, %438
  %445 = phi i64 [ %439, %438 ], [ %443, %440 ]
  %446 = trunc i64 %445 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %446)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @EqualizeImageChannel.omp_outlined, ptr nonnull %3, ptr nonnull %7, ptr nonnull %5, ptr nonnull %6, ptr nonnull %4, ptr nonnull %11, ptr nonnull %9, ptr nonnull %12, ptr nonnull %8)
  %447 = load ptr, ptr %5, align 8, !tbaa !27
  %448 = call ptr @DestroyCacheView(ptr noundef %447) #18
  store ptr %448, ptr %5, align 8, !tbaa !27
  %449 = load ptr, ptr %12, align 8, !tbaa !27
  %450 = call ptr @RelinquishMagickMemory(ptr noundef %449) #18
  %451 = load i32, ptr %7, align 4, !tbaa !28
  br label %452

452:                                              ; preds = %42, %20, %444
  %453 = phi i32 [ %451, %444 ], [ %22, %20 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %453
}

; Function Attrs: optsize
declare i32 @AccelerateEqualizeImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @EqualizeImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #7 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !40
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %221

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 %19, ptr %13, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 1, ptr %14, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 0, ptr %15, align 4, !tbaa !28
  %22 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %13, align 8, !tbaa !60
  %25 = load i64, ptr %12, align 8, !tbaa !60
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %220, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  br label %38

38:                                               ; preds = %27, %212
  %39 = phi i64 [ %24, %27 ], [ %218, %212 ]
  %40 = phi i64 [ %25, %27 ], [ %216, %212 ]
  %41 = icmp sgt i64 %40, %39
  br i1 %41, label %212, label %42

42:                                               ; preds = %38, %206
  %43 = phi i64 [ %207, %206 ], [ %40, %38 ]
  %44 = load i32, ptr %3, align 4, !tbaa !28
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %206, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %4, align 8, !tbaa !27
  %48 = load ptr, ptr %2, align 8, !tbaa !27
  %49 = getelementptr inbounds %struct._Image, ptr %48, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !61
  %51 = load ptr, ptr %5, align 8, !tbaa !27
  %52 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %47, i64 noundef 0, i64 noundef %43, i64 noundef %50, i64 noundef 1, ptr noundef %51) #20
  %53 = icmp eq ptr %52, null
  br i1 %53, label %205, label %54

54:                                               ; preds = %46
  %55 = load ptr, ptr %4, align 8, !tbaa !27
  %56 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %55) #18
  %57 = load ptr, ptr %2, align 8, !tbaa !27
  %58 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !61
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %186

61:                                               ; preds = %54
  %62 = load i32, ptr %6, align 4, !tbaa !28
  %63 = and i32 %62, 256
  %64 = icmp eq i32 %63, 0
  %65 = load float, ptr %28, align 8
  %66 = load float, ptr %29, align 8
  %67 = fcmp une float %65, %66
  %68 = load ptr, ptr %9, align 8
  %69 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 1
  %70 = icmp eq ptr %56, null
  %71 = and i32 %62, 1
  %72 = icmp eq i32 %71, 0
  %73 = fcmp oeq float %65, %66
  %74 = load float, ptr %30, align 4
  %75 = load float, ptr %31, align 4
  %76 = fcmp oeq float %74, %75
  %77 = load float, ptr %32, align 8
  %78 = load float, ptr %33, align 8
  %79 = fcmp oeq float %77, %78
  %80 = load float, ptr %34, align 4
  %81 = load float, ptr %35, align 4
  %82 = fcmp oeq float %80, %81
  %83 = insertelement <4 x i32> poison, i32 %62, i64 0
  %84 = shufflevector <4 x i32> %83, <4 x i32> poison, <4 x i32> zeroinitializer
  %85 = and <4 x i32> %84, <i32 32, i32 8, i32 4, i32 2>
  %86 = icmp eq <4 x i32> %85, zeroinitializer
  %87 = load float, ptr %36, align 8
  %88 = load float, ptr %37, align 8
  %89 = fcmp oeq float %87, %88
  %90 = select i1 %72, i1 true, i1 %73
  %91 = extractelement <4 x i1> %86, i64 3
  %92 = select i1 %91, i1 true, i1 %76
  %93 = extractelement <4 x i1> %86, i64 2
  %94 = select i1 %93, i1 true, i1 %79
  %95 = extractelement <4 x i1> %86, i64 1
  %96 = select i1 %95, i1 true, i1 %82
  %97 = extractelement <4 x i1> %86, i64 0
  br label %98

98:                                               ; preds = %61, %182
  %99 = phi i64 [ 0, %61 ], [ %184, %182 ]
  %100 = phi ptr [ %52, %61 ], [ %183, %182 ]
  br i1 %64, label %135, label %101

101:                                              ; preds = %98
  br i1 %67, label %102, label %182

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %104 = load i16, ptr %103, align 2, !tbaa !33
  %105 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %104) #17, !range !58
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !98
  store i16 %108, ptr %103, align 2, !tbaa !33
  %109 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  %110 = load i16, ptr %109, align 2, !tbaa !34
  %111 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %110) #17, !range !58
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !98
  store i16 %114, ptr %109, align 2, !tbaa !34
  %115 = load i16, ptr %100, align 2, !tbaa !35
  %116 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %115) #17, !range !58
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !98
  store i16 %119, ptr %100, align 2, !tbaa !35
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %121 = load i16, ptr %120, align 2, !tbaa !36
  %122 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %121) #17, !range !58
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !98
  store i16 %125, ptr %120, align 2, !tbaa !36
  %126 = load i32, ptr %69, align 4, !tbaa !26
  %127 = icmp ne i32 %126, 12
  %128 = select i1 %127, i1 true, i1 %70
  br i1 %128, label %182, label %129

129:                                              ; preds = %102
  %130 = getelementptr inbounds i16, ptr %56, i64 %99
  %131 = load i16, ptr %130, align 2, !tbaa !76
  %132 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %131) #17, !range !58
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %133
  br label %178

135:                                              ; preds = %98
  br i1 %90, label %143, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 2
  %138 = load i16, ptr %137, align 2, !tbaa !33
  %139 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %138) #17, !range !58
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !98
  store i16 %142, ptr %137, align 2, !tbaa !33
  br label %143

143:                                              ; preds = %135, %136
  br i1 %92, label %151, label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 1
  %146 = load i16, ptr %145, align 2, !tbaa !34
  %147 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %146) #17, !range !58
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %148, i32 1
  %150 = load i16, ptr %149, align 2, !tbaa !100
  store i16 %150, ptr %145, align 2, !tbaa !34
  br label %151

151:                                              ; preds = %143, %144
  br i1 %94, label %158, label %152

152:                                              ; preds = %151
  %153 = load i16, ptr %100, align 2, !tbaa !35
  %154 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %153) #17, !range !58
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %155, i32 2
  %157 = load i16, ptr %156, align 2, !tbaa !101
  store i16 %157, ptr %100, align 2, !tbaa !35
  br label %158

158:                                              ; preds = %151, %152
  br i1 %96, label %166, label %159

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 0, i32 3
  %161 = load i16, ptr %160, align 2, !tbaa !36
  %162 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %161) #17, !range !58
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %163, i32 3
  %165 = load i16, ptr %164, align 2, !tbaa !102
  store i16 %165, ptr %160, align 2, !tbaa !36
  br label %166

166:                                              ; preds = %158, %159
  br i1 %97, label %182, label %167

167:                                              ; preds = %166
  %168 = load i32, ptr %69, align 4, !tbaa !26
  %169 = icmp ne i32 %168, 12
  %170 = select i1 %169, i1 true, i1 %89
  %171 = select i1 %170, i1 true, i1 %70
  br i1 %171, label %182, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds i16, ptr %56, i64 %99
  %174 = load i16, ptr %173, align 2, !tbaa !76
  %175 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %174) #17, !range !58
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct._QuantumPixelPacket, ptr %68, i64 %176, i32 4
  br label %178

178:                                              ; preds = %129, %172
  %179 = phi ptr [ %177, %172 ], [ %134, %129 ]
  %180 = phi ptr [ %173, %172 ], [ %130, %129 ]
  %181 = load i16, ptr %179, align 2, !tbaa !76
  store i16 %181, ptr %180, align 2, !tbaa !76
  br label %182

182:                                              ; preds = %178, %167, %166, %101, %102
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %100, i64 1
  %184 = add nuw nsw i64 %99, 1
  %185 = icmp eq i64 %184, %59
  br i1 %185, label %186, label %98, !llvm.loop !115

186:                                              ; preds = %182, %54
  %187 = load ptr, ptr %4, align 8, !tbaa !27
  %188 = load ptr, ptr %5, align 8, !tbaa !27
  %189 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %187, ptr noundef %188) #20
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %192

192:                                              ; preds = %191, %186
  %193 = load ptr, ptr %2, align 8, !tbaa !27
  %194 = getelementptr inbounds %struct._Image, ptr %193, i64 0, i32 47
  %195 = load ptr, ptr %194, align 8, !tbaa !63
  %196 = icmp eq ptr %195, null
  br i1 %196, label %206, label %197

197:                                              ; preds = %192
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_EqualizeImageChannel.var)
  %198 = load ptr, ptr %2, align 8, !tbaa !27
  %199 = load i64, ptr %10, align 8, !tbaa !39
  %200 = add nsw i64 %199, 1
  store i64 %200, ptr %10, align 8, !tbaa !39
  %201 = getelementptr inbounds %struct._Image, ptr %198, i64 0, i32 8
  %202 = load i64, ptr %201, align 8, !tbaa !40
  %203 = call fastcc i32 @SetImageProgress(ptr noundef %198, ptr noundef nonnull @.str.29, i64 noundef %199, i64 noundef %202) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_EqualizeImageChannel.var)
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197, %46
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %206

206:                                              ; preds = %205, %192, %197, %42
  %207 = add nsw i64 %43, 1
  %208 = load i64, ptr %13, align 8, !tbaa !60
  %209 = icmp slt i64 %43, %208
  br i1 %209, label %42, label %210

210:                                              ; preds = %206
  %211 = load i64, ptr %12, align 8, !tbaa !60
  br label %212

212:                                              ; preds = %210, %38
  %213 = phi i64 [ %40, %38 ], [ %211, %210 ]
  %214 = phi i64 [ %39, %38 ], [ %208, %210 ]
  %215 = load i64, ptr %14, align 8, !tbaa !60
  %216 = add nsw i64 %215, %213
  store i64 %216, ptr %12, align 8, !tbaa !60
  %217 = add nsw i64 %215, %214
  %218 = call i64 @llvm.smin.i64(i64 %217, i64 %19)
  store i64 %218, ptr %13, align 8, !tbaa !60
  %219 = icmp sgt i64 %216, %218
  br i1 %219, label %220, label %38

220:                                              ; preds = %212, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  br label %221

221:                                              ; preds = %220, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GammaImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !29
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2122, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %10
  %13 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #18
  %14 = load double, ptr %3, align 8, !tbaa !83
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !116
  %18 = fptrunc double %17 to float
  %19 = and i32 %13, 8
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, float %15, float %18
  %22 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !117
  %24 = fptrunc double %23 to float
  %25 = and i32 %13, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, float %15, float %24
  %28 = fpext float %15 to double
  %29 = fcmp oeq float %15, 1.000000e+00
  %30 = fcmp oeq float %21, 1.000000e+00
  %31 = select i1 %29, i1 %30, i1 false
  %32 = fcmp oeq float %27, 1.000000e+00
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %52, label %34

34:                                               ; preds = %12
  %35 = fcmp oeq float %21, %15
  %36 = fcmp oeq float %21, %27
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @GammaImageChannel(ptr noundef nonnull %0, i32 noundef 7, double noundef %28) #17
  br label %48

40:                                               ; preds = %34
  %41 = call i32 @GammaImageChannel(ptr noundef nonnull %0, i32 noundef 1, double noundef %28) #17
  %42 = fpext float %21 to double
  %43 = call i32 @GammaImageChannel(ptr noundef nonnull %0, i32 noundef 2, double noundef %42) #17
  %44 = and i32 %43, %41
  %45 = fpext float %27 to double
  %46 = call i32 @GammaImageChannel(ptr noundef nonnull %0, i32 noundef 4, double noundef %45) #17
  %47 = and i32 %44, %46
  br label %48

48:                                               ; preds = %40, %38
  %49 = phi i32 [ %39, %38 ], [ %47, %40 ]
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %12, %10, %48
  %53 = phi i32 [ %51, %48 ], [ 0, %10 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GammaImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !27
  store i32 %1, ptr %5, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %13 = load i32, ptr %12, align 8, !tbaa !29
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %17 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2179, ptr noundef nonnull @.str.2, ptr noundef nonnull %16) #18
  br label %18

18:                                               ; preds = %15, %3
  %19 = fcmp oeq double %2, 1.000000e+00
  br i1 %19, label %150, label %20

20:                                               ; preds = %18
  %21 = tail call dereferenceable_or_null(131072) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 2) #19
  store ptr %21, ptr %10, align 8, !tbaa !27
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %26 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %24, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2185, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %25) #18
  br label %150

27:                                               ; preds = %20
  %28 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %21, i32 noundef 0, i64 noundef 131072) #18
  %29 = fcmp une double %2, 0.000000e+00
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = fdiv double 1.000000e+00, %2
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %43, %32 ]
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 6.553500e+04
  %36 = tail call double @pow(double noundef %35, double noundef %31) #18
  %37 = fmul double %36, 6.553500e+04
  %38 = fptrunc double %37 to float
  %39 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %38) #17
  %40 = uitofp i16 %39 to float
  %41 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %40) #17
  %42 = getelementptr inbounds i16, ptr %21, i64 %33
  store i16 %41, ptr %42, align 2, !tbaa !76
  %43 = add nuw nsw i64 %33, 1
  %44 = icmp eq i64 %43, 65536
  br i1 %44, label %45, label %32, !llvm.loop !118

45:                                               ; preds = %32, %27
  %46 = load i32, ptr %0, align 8, !tbaa !30
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %115

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %50 = load i64, ptr %49, align 8, !tbaa !31
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %115

52:                                               ; preds = %48
  %53 = and i32 %1, 1
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %56 = and i32 %1, 2
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %1, 4
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %1, 8
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  br label %63

63:                                               ; preds = %52, %112
  %64 = phi i64 [ 0, %52 ], [ %113, %112 ]
  br i1 %54, label %73, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr %55, align 8, !tbaa !32
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 %64, i32 2
  %68 = load i16, ptr %67, align 2, !tbaa !33
  %69 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %68) #17, !range !58
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, ptr %21, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !76
  store i16 %72, ptr %67, align 2, !tbaa !33
  br label %73

73:                                               ; preds = %65, %63
  br i1 %57, label %82, label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %55, align 8, !tbaa !32
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %75, i64 %64, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !34
  %78 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %77) #17, !range !58
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i16, ptr %21, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !76
  store i16 %81, ptr %76, align 2, !tbaa !34
  br label %82

82:                                               ; preds = %74, %73
  br i1 %59, label %91, label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr %55, align 8, !tbaa !32
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 %64
  %86 = load i16, ptr %85, align 2, !tbaa !35
  %87 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %86) #17, !range !58
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i16, ptr %21, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !76
  store i16 %90, ptr %85, align 2, !tbaa !35
  br label %91

91:                                               ; preds = %83, %82
  br i1 %61, label %112, label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %62, align 8, !tbaa !10
  %94 = icmp eq i32 %93, 0
  %95 = load ptr, ptr %55, align 8, !tbaa !32
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 %64, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !36
  br i1 %94, label %98, label %103

98:                                               ; preds = %92
  %99 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %97) #17, !range !58
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i16, ptr %21, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !76
  br label %110

103:                                              ; preds = %92
  %104 = xor i16 %97, -1
  %105 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %104) #17, !range !58
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i16, ptr %21, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !76
  %109 = xor i16 %108, -1
  br label %110

110:                                              ; preds = %98, %103
  %111 = phi i16 [ %109, %103 ], [ %102, %98 ]
  store i16 %111, ptr %96, align 2, !tbaa !36
  br label %112

112:                                              ; preds = %110, %91
  %113 = add nuw nsw i64 %64, 1
  %114 = icmp eq i64 %113, %50
  br i1 %114, label %115, label %63, !llvm.loop !119

115:                                              ; preds = %112, %48, %45
  store i32 1, ptr %8, align 4, !tbaa !28
  store i64 0, ptr %9, align 8, !tbaa !39
  %116 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %116, ptr %7, align 8, !tbaa !27
  %117 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %116) #18
  store ptr %117, ptr %6, align 8, !tbaa !27
  %118 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %119 = load i64, ptr %118, align 8, !tbaa !40
  %120 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %121 = shl i64 %120, 5
  %122 = icmp ugt i64 %119, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %115
  %124 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %135

131:                                              ; preds = %126, %123, %115
  %132 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %133 = icmp ult i64 %132, 2
  %134 = select i1 %133, i64 1, i64 2
  br label %135

135:                                              ; preds = %131, %129
  %136 = phi i64 [ %130, %129 ], [ %134, %131 ]
  %137 = trunc i64 %136 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %11, i32 %137)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @GammaImageChannel.omp_outlined, ptr nonnull %4, ptr nonnull %8, ptr nonnull %6, ptr nonnull %7, ptr nonnull %5, ptr nonnull %10, ptr nonnull %9)
  %138 = load ptr, ptr %6, align 8, !tbaa !27
  %139 = call ptr @DestroyCacheView(ptr noundef %138) #18
  store ptr %139, ptr %6, align 8, !tbaa !27
  %140 = load ptr, ptr %10, align 8, !tbaa !27
  %141 = call ptr @RelinquishMagickMemory(ptr noundef %140) #18
  %142 = load ptr, ptr %4, align 8, !tbaa !27
  %143 = getelementptr inbounds %struct._Image, ptr %142, i64 0, i32 15
  %144 = load double, ptr %143, align 8, !tbaa !120
  %145 = fcmp une double %144, 0.000000e+00
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = fmul double %144, %2
  store double %147, ptr %143, align 8, !tbaa !120
  br label %148

148:                                              ; preds = %146, %135
  %149 = load i32, ptr %8, align 4, !tbaa !28
  br label %150

150:                                              ; preds = %23, %18, %148
  %151 = phi i32 [ %149, %148 ], [ 1, %18 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i32 %151
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GammaImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #7 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !27
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !40
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %186

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 %17, ptr %11, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 1, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !tbaa !28
  %20 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !60
  %23 = load i64, ptr %10, align 8, !tbaa !60
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %185, label %25

25:                                               ; preds = %19, %177
  %26 = phi i64 [ %183, %177 ], [ %22, %19 ]
  %27 = phi i64 [ %181, %177 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %177, label %29

29:                                               ; preds = %25, %171
  %30 = phi i64 [ %172, %171 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %171, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !27
  %35 = load ptr, ptr %2, align 8, !tbaa !27
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !61
  %38 = load ptr, ptr %5, align 8, !tbaa !27
  %39 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %30, i64 noundef %37, i64 noundef 1, ptr noundef %38) #20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %170, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !tbaa !27
  %43 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %42) #18
  %44 = load ptr, ptr %2, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !61
  %47 = icmp sgt i64 %46, 0
  %48 = load i32, ptr %6, align 4, !tbaa !28
  br i1 %47, label %49, label %128

49:                                               ; preds = %41
  %50 = and i32 %48, 256
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %7, align 8
  %53 = insertelement <4 x i32> poison, i32 %48, i64 0
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> zeroinitializer
  %55 = and <4 x i32> %54, <i32 8, i32 4, i32 2, i32 1>
  %56 = icmp eq <4 x i32> %55, zeroinitializer
  %57 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 6
  %58 = extractelement <4 x i1> %56, i64 0
  %59 = extractelement <4 x i1> %56, i64 1
  %60 = extractelement <4 x i1> %56, i64 2
  %61 = extractelement <4 x i1> %56, i64 3
  br label %62

62:                                               ; preds = %49, %124
  %63 = phi i64 [ 0, %49 ], [ %126, %124 ]
  %64 = phi ptr [ %39, %49 ], [ %125, %124 ]
  br i1 %51, label %83, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 2
  %67 = load i16, ptr %66, align 2, !tbaa !33
  %68 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %67) #17, !range !58
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i16, ptr %52, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !76
  store i16 %71, ptr %66, align 2, !tbaa !33
  %72 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 1
  %73 = load i16, ptr %72, align 2, !tbaa !34
  %74 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %73) #17, !range !58
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i16, ptr %52, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !76
  store i16 %77, ptr %72, align 2, !tbaa !34
  %78 = load i16, ptr %64, align 2, !tbaa !35
  %79 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %78) #17, !range !58
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i16, ptr %52, i64 %80
  %82 = load i16, ptr %81, align 2, !tbaa !76
  store i16 %82, ptr %64, align 2, !tbaa !35
  br label %124

83:                                               ; preds = %62
  br i1 %61, label %91, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 2
  %86 = load i16, ptr %85, align 2, !tbaa !33
  %87 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %86) #17, !range !58
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i16, ptr %52, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !76
  store i16 %90, ptr %85, align 2, !tbaa !33
  br label %91

91:                                               ; preds = %84, %83
  br i1 %60, label %99, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 1
  %94 = load i16, ptr %93, align 2, !tbaa !34
  %95 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %94) #17, !range !58
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i16, ptr %52, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !76
  store i16 %98, ptr %93, align 2, !tbaa !34
  br label %99

99:                                               ; preds = %92, %91
  br i1 %59, label %106, label %100

100:                                              ; preds = %99
  %101 = load i16, ptr %64, align 2, !tbaa !35
  %102 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %101) #17, !range !58
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i16, ptr %52, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !76
  store i16 %105, ptr %64, align 2, !tbaa !35
  br label %106

106:                                              ; preds = %100, %99
  br i1 %58, label %124, label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %57, align 8, !tbaa !10
  %109 = icmp eq i32 %108, 0
  %110 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 0, i32 3
  %111 = load i16, ptr %110, align 2, !tbaa !36
  br i1 %109, label %112, label %117

112:                                              ; preds = %107
  %113 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %111) #17, !range !58
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i16, ptr %52, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !76
  store i16 %116, ptr %110, align 2, !tbaa !36
  br label %124

117:                                              ; preds = %107
  %118 = xor i16 %111, -1
  %119 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %118) #17, !range !58
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i16, ptr %52, i64 %120
  %122 = load i16, ptr %121, align 2, !tbaa !76
  %123 = xor i16 %122, -1
  store i16 %123, ptr %110, align 2, !tbaa !36
  br label %124

124:                                              ; preds = %106, %117, %112, %65
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 1
  %126 = add nuw nsw i64 %63, 1
  %127 = icmp eq i64 %126, %46
  br i1 %127, label %128, label %62, !llvm.loop !121

128:                                              ; preds = %124, %41
  %129 = and i32 %48, 32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !26
  %134 = icmp eq i32 %133, 12
  %135 = and i1 %134, %47
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = icmp eq ptr %43, null
  %138 = load ptr, ptr %7, align 8
  br label %139

139:                                              ; preds = %136, %148
  %140 = phi i64 [ 0, %136 ], [ %149, %148 ]
  br i1 %137, label %148, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds i16, ptr %43, i64 %140
  %143 = load i16, ptr %142, align 2, !tbaa !76
  %144 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %143) #17, !range !58
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i16, ptr %138, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !76
  store i16 %147, ptr %142, align 2, !tbaa !76
  br label %148

148:                                              ; preds = %139, %141
  %149 = add nuw nsw i64 %140, 1
  %150 = icmp eq i64 %149, %46
  br i1 %150, label %151, label %139, !llvm.loop !122

151:                                              ; preds = %148, %131, %128
  %152 = load ptr, ptr %4, align 8, !tbaa !27
  %153 = load ptr, ptr %5, align 8, !tbaa !27
  %154 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %152, ptr noundef %153) #20
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %157

157:                                              ; preds = %156, %151
  %158 = load ptr, ptr %2, align 8, !tbaa !27
  %159 = getelementptr inbounds %struct._Image, ptr %158, i64 0, i32 47
  %160 = load ptr, ptr %159, align 8, !tbaa !63
  %161 = icmp eq ptr %160, null
  br i1 %161, label %171, label %162

162:                                              ; preds = %157
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_GammaImageChannel.var)
  %163 = load ptr, ptr %2, align 8, !tbaa !27
  %164 = load i64, ptr %8, align 8, !tbaa !39
  %165 = add nsw i64 %164, 1
  store i64 %165, ptr %8, align 8, !tbaa !39
  %166 = getelementptr inbounds %struct._Image, ptr %163, i64 0, i32 8
  %167 = load i64, ptr %166, align 8, !tbaa !40
  %168 = call fastcc i32 @SetImageProgress(ptr noundef %163, ptr noundef nonnull @.str.30, i64 noundef %164, i64 noundef %167) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_GammaImageChannel.var)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162, %33
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %171

171:                                              ; preds = %170, %157, %162, %29
  %172 = add nsw i64 %30, 1
  %173 = load i64, ptr %11, align 8, !tbaa !60
  %174 = icmp slt i64 %30, %173
  br i1 %174, label %29, label %175

175:                                              ; preds = %171
  %176 = load i64, ptr %10, align 8, !tbaa !60
  br label %177

177:                                              ; preds = %175, %25
  %178 = phi i64 [ %27, %25 ], [ %176, %175 ]
  %179 = phi i64 [ %26, %25 ], [ %173, %175 ]
  %180 = load i64, ptr %12, align 8, !tbaa !60
  %181 = add nsw i64 %180, %178
  store i64 %181, ptr %10, align 8, !tbaa !60
  %182 = add nsw i64 %180, %179
  %183 = call i64 @llvm.smin.i64(i64 %182, i64 %17)
  store i64 %183, ptr %11, align 8, !tbaa !60
  %184 = icmp sgt i64 %181, %183
  br i1 %184, label %185, label %25

185:                                              ; preds = %177, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %186

186:                                              ; preds = %185, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GrayscaleImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !27
  store i32 %1, ptr %4, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !29
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2426, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #18
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, ptr %0, align 8, !tbaa !30
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = tail call i32 @SyncImage(ptr noundef nonnull %0) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %22, %16
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = tail call i32 @AccelerateGrayscaleImage(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %26) #18
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %58, label %29

29:                                               ; preds = %25
  store i32 1, ptr %7, align 4, !tbaa !28
  store i64 0, ptr %8, align 8, !tbaa !39
  store ptr %26, ptr %6, align 8, !tbaa !27
  %30 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %26) #18
  store ptr %30, ptr %5, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !40
  %33 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %34 = shl i64 %33, 5
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %48

44:                                               ; preds = %39, %36, %29
  %45 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %46 = icmp ult i64 %45, 2
  %47 = select i1 %46, i64 1, i64 2
  br label %48

48:                                               ; preds = %44, %42
  %49 = phi i64 [ %43, %42 ], [ %47, %44 ]
  %50 = trunc i64 %49 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %9, i32 %50)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @GrayscaleImage.omp_outlined, ptr nonnull %3, ptr nonnull %7, ptr nonnull %5, ptr nonnull %6, ptr nonnull %4, ptr nonnull %8)
  %51 = load ptr, ptr %5, align 8, !tbaa !27
  %52 = call ptr @DestroyCacheView(ptr noundef %51) #18
  store ptr %52, ptr %5, align 8, !tbaa !27
  %53 = load i32, ptr %4, align 4, !tbaa !28
  %54 = load ptr, ptr %3, align 8, !tbaa !27
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 83
  store i32 %53, ptr %55, align 8, !tbaa !123
  %56 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 77
  store i32 2, ptr %56, align 8, !tbaa !124
  %57 = call i32 @SetImageColorspace(ptr noundef %54, i32 noundef 2) #18
  br label %58

58:                                               ; preds = %25, %22, %19, %48
  %59 = phi i32 [ %57, %48 ], [ 0, %19 ], [ 0, %22 ], [ 1, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %59
}

; Function Attrs: optsize
declare i32 @SyncImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @AccelerateGrayscaleImage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @GrayscaleImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull align 8 dereferenceable(8) %7) #7 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !40
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %213

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 %16, ptr %10, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 1, ptr %11, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  store i32 0, ptr %12, align 4, !tbaa !28
  %19 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %10, align 8, !tbaa !60
  %22 = load i64, ptr %9, align 8, !tbaa !60
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %212, label %24

24:                                               ; preds = %18, %204
  %25 = phi i64 [ %210, %204 ], [ %21, %18 ]
  %26 = phi i64 [ %208, %204 ], [ %22, %18 ]
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %204, label %28

28:                                               ; preds = %24, %198
  %29 = phi i64 [ %199, %198 ], [ %26, %24 ]
  %30 = load i32, ptr %3, align 4, !tbaa !28
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %198, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !27
  %34 = load ptr, ptr %2, align 8, !tbaa !27
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !61
  %37 = load ptr, ptr %5, align 8, !tbaa !27
  %38 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %29, i64 noundef %36, i64 noundef 1, ptr noundef %37) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %197, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %2, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !61
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %178

45:                                               ; preds = %40, %169
  %46 = phi ptr [ %174, %169 ], [ %41, %40 ]
  %47 = phi i64 [ %173, %169 ], [ 0, %40 ]
  %48 = phi ptr [ %172, %169 ], [ %38, %40 ]
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 0, i32 2
  %50 = load i16, ptr %49, align 2, !tbaa !33
  %51 = uitofp i16 %50 to float
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 0, i32 1
  %53 = load i16, ptr %52, align 2, !tbaa !34
  %54 = uitofp i16 %53 to float
  %55 = load i16, ptr %48, align 2, !tbaa !35
  %56 = uitofp i16 %55 to float
  %57 = load i32, ptr %6, align 4, !tbaa !28
  switch i32 %57, label %120 [
    i32 1, label %58
    i32 2, label %62
    i32 3, label %65
    i32 9, label %72
    i32 4, label %82
    i32 5, label %101
    i32 8, label %158
    i32 7, label %139
  ]

58:                                               ; preds = %45
  %59 = fadd float %51, %54
  %60 = fadd float %59, %56
  %61 = fdiv float %60, 3.000000e+00
  br label %169

62:                                               ; preds = %45
  %63 = call fastcc float @MagickMax(float noundef %51, float noundef %54) #17
  %64 = call fastcc float @MagickMax(float noundef %63, float noundef %56) #17
  br label %169

65:                                               ; preds = %45
  %66 = call fastcc float @MagickMin(float noundef %51, float noundef %54) #17
  %67 = call fastcc float @MagickMin(float noundef %66, float noundef %56) #17
  %68 = call fastcc float @MagickMax(float noundef %51, float noundef %54) #17
  %69 = call fastcc float @MagickMax(float noundef %68, float noundef %56) #17
  %70 = fadd float %67, %69
  %71 = fmul float %70, 5.000000e-01
  br label %169

72:                                               ; preds = %45
  %73 = uitofp i16 %50 to double
  %74 = fmul float %54, %54
  %75 = fpext float %74 to double
  %76 = call double @llvm.fmuladd.f64(double %73, double %73, double %75)
  %77 = fmul float %56, %56
  %78 = fpext float %77 to double
  %79 = fadd double %76, %78
  %80 = fdiv double %79, 1.966050e+05
  %81 = fptrunc double %80 to float
  br label %169

82:                                               ; preds = %45
  %83 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !26
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = call float @EncodePixelGamma(float noundef %51) #20
  %88 = call float @EncodePixelGamma(float noundef %54) #20
  %89 = call float @EncodePixelGamma(float noundef %56) #20
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi float [ %89, %86 ], [ %56, %82 ]
  %92 = phi float [ %88, %86 ], [ %54, %82 ]
  %93 = phi float [ %87, %86 ], [ %51, %82 ]
  %94 = fpext float %93 to double
  %95 = fpext float %92 to double
  %96 = fmul double %95, 5.868110e-01
  %97 = call double @llvm.fmuladd.f64(double %94, double 2.988390e-01, double %96)
  %98 = fpext float %91 to double
  %99 = call double @llvm.fmuladd.f64(double %98, double 1.143500e-01, double %97)
  %100 = fptrunc double %99 to float
  br label %169

101:                                              ; preds = %45
  %102 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !26
  %104 = icmp eq i32 %103, 13
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = call float @DecodePixelGamma(float noundef %51) #20
  %107 = call float @DecodePixelGamma(float noundef %54) #20
  %108 = call float @DecodePixelGamma(float noundef %56) #20
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi float [ %108, %105 ], [ %56, %101 ]
  %111 = phi float [ %107, %105 ], [ %54, %101 ]
  %112 = phi float [ %106, %105 ], [ %51, %101 ]
  %113 = fpext float %112 to double
  %114 = fpext float %111 to double
  %115 = fmul double %114, 5.868110e-01
  %116 = call double @llvm.fmuladd.f64(double %113, double 2.988390e-01, double %115)
  %117 = fpext float %110 to double
  %118 = call double @llvm.fmuladd.f64(double %117, double 1.143500e-01, double %116)
  %119 = fptrunc double %118 to float
  br label %169

120:                                              ; preds = %45
  %121 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !26
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = call float @EncodePixelGamma(float noundef %51) #20
  %126 = call float @EncodePixelGamma(float noundef %54) #20
  %127 = call float @EncodePixelGamma(float noundef %56) #20
  br label %128

128:                                              ; preds = %124, %120
  %129 = phi float [ %127, %124 ], [ %56, %120 ]
  %130 = phi float [ %126, %124 ], [ %54, %120 ]
  %131 = phi float [ %125, %124 ], [ %51, %120 ]
  %132 = fpext float %131 to double
  %133 = fpext float %130 to double
  %134 = fmul double %133, 0x3FE6E29307AF20EA
  %135 = call double @llvm.fmuladd.f64(double %132, double 2.126560e-01, double %134)
  %136 = fpext float %129 to double
  %137 = call double @llvm.fmuladd.f64(double %136, double 7.218600e-02, double %135)
  %138 = fptrunc double %137 to float
  br label %169

139:                                              ; preds = %45
  %140 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !26
  %142 = icmp eq i32 %141, 13
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = call float @DecodePixelGamma(float noundef %51) #20
  %145 = call float @DecodePixelGamma(float noundef %54) #20
  %146 = call float @DecodePixelGamma(float noundef %56) #20
  br label %147

147:                                              ; preds = %143, %139
  %148 = phi float [ %146, %143 ], [ %56, %139 ]
  %149 = phi float [ %145, %143 ], [ %54, %139 ]
  %150 = phi float [ %144, %143 ], [ %51, %139 ]
  %151 = fpext float %150 to double
  %152 = fpext float %149 to double
  %153 = fmul double %152, 0x3FE6E29307AF20EA
  %154 = call double @llvm.fmuladd.f64(double %151, double 2.126560e-01, double %153)
  %155 = fpext float %148 to double
  %156 = call double @llvm.fmuladd.f64(double %155, double 7.218600e-02, double %154)
  %157 = fptrunc double %156 to float
  br label %169

158:                                              ; preds = %45
  %159 = uitofp i16 %50 to double
  %160 = fmul float %54, %54
  %161 = fpext float %160 to double
  %162 = call double @llvm.fmuladd.f64(double %159, double %159, double %161)
  %163 = fmul float %56, %56
  %164 = fpext float %163 to double
  %165 = fadd double %162, %164
  %166 = call double @llvm.sqrt.f64(double %165)
  %167 = fdiv double %166, 0x3FFBB67AE8584CAA
  %168 = fptrunc double %167 to float
  br label %169

169:                                              ; preds = %158, %147, %128, %109, %90, %72, %65, %62, %58
  %170 = phi float [ %138, %128 ], [ %157, %147 ], [ %168, %158 ], [ %119, %109 ], [ %100, %90 ], [ %81, %72 ], [ %71, %65 ], [ %64, %62 ], [ %61, %58 ]
  %171 = call fastcc zeroext i16 @ClampToQuantum(float noundef %170) #17
  store i16 %171, ptr %48, align 2, !tbaa !35
  store i16 %171, ptr %52, align 2, !tbaa !34
  store i16 %171, ptr %49, align 2, !tbaa !33
  %172 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 1
  %173 = add nuw nsw i64 %47, 1
  %174 = load ptr, ptr %2, align 8, !tbaa !27
  %175 = getelementptr inbounds %struct._Image, ptr %174, i64 0, i32 7
  %176 = load i64, ptr %175, align 8, !tbaa !61
  %177 = icmp slt i64 %173, %176
  br i1 %177, label %45, label %178, !llvm.loop !125

178:                                              ; preds = %169, %40
  %179 = load ptr, ptr %4, align 8, !tbaa !27
  %180 = load ptr, ptr %5, align 8, !tbaa !27
  %181 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %179, ptr noundef %180) #20
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %184

184:                                              ; preds = %183, %178
  %185 = load ptr, ptr %2, align 8, !tbaa !27
  %186 = getelementptr inbounds %struct._Image, ptr %185, i64 0, i32 47
  %187 = load ptr, ptr %186, align 8, !tbaa !63
  %188 = icmp eq ptr %187, null
  br i1 %188, label %198, label %189

189:                                              ; preds = %184
  call void @__kmpc_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_GrayscaleImageChannel.var)
  %190 = load ptr, ptr %2, align 8, !tbaa !27
  %191 = load i64, ptr %7, align 8, !tbaa !39
  %192 = add nsw i64 %191, 1
  store i64 %192, ptr %7, align 8, !tbaa !39
  %193 = getelementptr inbounds %struct._Image, ptr %190, i64 0, i32 8
  %194 = load i64, ptr %193, align 8, !tbaa !40
  %195 = call fastcc i32 @SetImageProgress(ptr noundef %190, ptr noundef nonnull @.str.31, i64 noundef %191, i64 noundef %194) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_GrayscaleImageChannel.var)
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %189, %32
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %198

198:                                              ; preds = %197, %184, %189, %28
  %199 = add nsw i64 %29, 1
  %200 = load i64, ptr %10, align 8, !tbaa !60
  %201 = icmp slt i64 %29, %200
  br i1 %201, label %28, label %202

202:                                              ; preds = %198
  %203 = load i64, ptr %9, align 8, !tbaa !60
  br label %204

204:                                              ; preds = %202, %24
  %205 = phi i64 [ %26, %24 ], [ %203, %202 ]
  %206 = phi i64 [ %25, %24 ], [ %200, %202 ]
  %207 = load i64, ptr %11, align 8, !tbaa !60
  %208 = add nsw i64 %207, %205
  store i64 %208, ptr %9, align 8, !tbaa !60
  %209 = add nsw i64 %207, %206
  %210 = call i64 @llvm.smin.i64(i64 %209, i64 %16)
  store i64 %210, ptr %10, align 8, !tbaa !60
  %211 = icmp sgt i64 %208, %210
  br i1 %211, label %212, label %24

212:                                              ; preds = %204, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br label %213

213:                                              ; preds = %212, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @MagickMax(float noundef %0, float noundef %1) unnamed_addr #6 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @MagickMin(float noundef %0, float noundef %1) unnamed_addr #6 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: hot optsize
declare float @EncodePixelGamma(float noundef) local_unnamed_addr #9

; Function Attrs: hot optsize
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @HaldClutImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @HaldClutImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1) #17
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @HaldClutImageChannel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !27
  store i32 %1, ptr %5, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2663, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #18
  br label %22

22:                                               ; preds = %19, %3
  %23 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %0, i32 noundef 1) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %84, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !26
  %28 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %27) #17, !range !67
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %32

32:                                               ; preds = %30, %25
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %0, i32 noundef 6) #18
  br label %38

38:                                               ; preds = %36, %32
  store i32 1, ptr %10, align 4, !tbaa !28
  store i64 0, ptr %11, align 8, !tbaa !39
  %39 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %40 = load i64, ptr %39, align 8, !tbaa !61
  %41 = uitofp i64 %40 to float
  %42 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !40
  %44 = uitofp i64 %43 to float
  %45 = tail call fastcc float @MagickMin(float noundef %41, float noundef %44) #17
  %46 = fptoui float %45 to i64
  br label %47

47:                                               ; preds = %47, %38
  %48 = phi i64 [ 2, %38 ], [ %52, %47 ]
  %49 = mul i64 %48, %48
  %50 = mul i64 %49, %48
  %51 = icmp ult i64 %50, %46
  %52 = add i64 %48, 1
  br i1 %51, label %47, label %53, !llvm.loop !126

53:                                               ; preds = %47
  store i64 %49, ptr %14, align 8, !tbaa !60
  %54 = mul i64 %49, %49
  store i64 %54, ptr %13, align 8, !tbaa !60
  %55 = uitofp i64 %40 to double
  store double %55, ptr %8, align 8, !tbaa !6
  call void @GetMagickPixelPacket(ptr noundef %2, ptr noundef nonnull %12) #18
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %56, ptr %9, align 8, !tbaa !27
  %57 = call ptr @AcquireAuthenticCacheView(ptr noundef %0, ptr noundef nonnull %56) #18
  store ptr %57, ptr %7, align 8, !tbaa !27
  %58 = call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef nonnull %56) #18
  store ptr %58, ptr %6, align 8, !tbaa !27
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %60 = load i64, ptr %59, align 8, !tbaa !40
  %61 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %62 = shl i64 %61, 5
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = call i32 @GetImagePixelCacheType(ptr noundef %2) #18
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %76

72:                                               ; preds = %67, %64, %53
  %73 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %74 = icmp ult i64 %73, 2
  %75 = select i1 %74, i64 1, i64 2
  br label %76

76:                                               ; preds = %72, %70
  %77 = phi i64 [ %71, %70 ], [ %75, %72 ]
  %78 = trunc i64 %77 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %78)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @HaldClutImageChannel.omp_outlined, ptr nonnull %4, ptr nonnull %10, ptr nonnull %7, ptr nonnull %9, ptr nonnull %6, ptr nonnull %12, ptr nonnull %14, ptr nonnull %13, ptr nonnull %8, ptr nonnull %5, ptr nonnull %11)
  %79 = load ptr, ptr %6, align 8, !tbaa !27
  %80 = call ptr @DestroyCacheView(ptr noundef %79) #18
  store ptr %80, ptr %6, align 8, !tbaa !27
  %81 = load ptr, ptr %7, align 8, !tbaa !27
  %82 = call ptr @DestroyCacheView(ptr noundef %81) #18
  %83 = load i32, ptr %10, align 4, !tbaa !28
  br label %84

84:                                               ; preds = %22, %76
  %85 = phi i32 [ %83, %76 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i32 %85
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @HaldClutImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %11, ptr nocapture noundef nonnull align 8 dereferenceable(8) %12) #7 {
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct._MagickPixelPacket, align 8
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = alloca %struct._MagickPixelPacket, align 8
  %21 = alloca %struct._MagickPixelPacket, align 8
  %22 = alloca %struct._MagickPixelPacket, align 8
  %23 = load ptr, ptr %2, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct._Image, ptr %23, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !40
  %26 = add nsw i64 %25, -1
  %27 = icmp sgt i64 %25, 0
  br i1 %27, label %28, label %243

28:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 0, ptr %14, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  store i64 %26, ptr %15, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store i64 1, ptr %16, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  store i32 0, ptr %17, align 4, !tbaa !28
  %29 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %29, i32 33, ptr nonnull %17, ptr nonnull %14, ptr nonnull %15, ptr nonnull %16, i64 1, i64 4)
  %30 = load i64, ptr %15, align 8
  %31 = call i64 @llvm.smin.i64(i64 %30, i64 %26)
  store i64 %31, ptr %15, align 8, !tbaa !60
  %32 = load i64, ptr %14, align 8, !tbaa !60
  %33 = icmp sgt i64 %32, %31
  br i1 %33, label %242, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %19, i64 0, i32 8
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %20, i64 0, i32 8
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %21, i64 0, i32 8
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %22, i64 0, i32 8
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 5
  %40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 6
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 7
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 8
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %18, i64 0, i32 9
  br label %44

44:                                               ; preds = %34, %234
  %45 = phi i64 [ %31, %34 ], [ %240, %234 ]
  %46 = phi i64 [ %32, %34 ], [ %238, %234 ]
  %47 = icmp sgt i64 %46, %45
  br i1 %47, label %234, label %48

48:                                               ; preds = %44, %228
  %49 = phi i64 [ %229, %228 ], [ %46, %44 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %22) #8
  %50 = load i32, ptr %3, align 4, !tbaa !28
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %228, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %4, align 8, !tbaa !27
  %54 = load ptr, ptr %2, align 8, !tbaa !27
  %55 = getelementptr inbounds %struct._Image, ptr %54, i64 0, i32 7
  %56 = load i64, ptr %55, align 8, !tbaa !61
  %57 = load ptr, ptr %5, align 8, !tbaa !27
  %58 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %53, i64 noundef 0, i64 noundef %49, i64 noundef %56, i64 noundef 1, ptr noundef %57) #20
  %59 = icmp eq ptr %58, null
  br i1 %59, label %227, label %60

60:                                               ; preds = %52
  %61 = load ptr, ptr %6, align 8, !tbaa !27
  %62 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %61) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !112
  %63 = load ptr, ptr %2, align 8, !tbaa !27
  %64 = getelementptr inbounds %struct._Image, ptr %63, i64 0, i32 7
  %65 = load i64, ptr %64, align 8, !tbaa !61
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %208

67:                                               ; preds = %60
  %68 = icmp eq ptr %62, null
  br label %69

69:                                               ; preds = %67, %202
  %70 = phi ptr [ %63, %67 ], [ %181, %202 ]
  %71 = phi i64 [ 0, %67 ], [ %204, %202 ]
  %72 = phi ptr [ %58, %67 ], [ %203, %202 ]
  %73 = load i64, ptr %8, align 8, !tbaa !60
  %74 = uitofp i64 %73 to double
  %75 = fadd double %74, -1.000000e+00
  %76 = fmul double %75, 0x3EF0001000100010
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 2
  %78 = load i16, ptr %77, align 2, !tbaa !33
  %79 = uitofp i16 %78 to double
  %80 = fmul double %76, %79
  %81 = fptrunc double %80 to float
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 1
  %83 = load i16, ptr %82, align 2, !tbaa !34
  %84 = uitofp i16 %83 to double
  %85 = fmul double %76, %84
  %86 = fptrunc double %85 to float
  %87 = load i16, ptr %72, align 2, !tbaa !35
  %88 = uitofp i16 %87 to double
  %89 = fmul double %76, %88
  %90 = fptrunc double %89 to float
  %91 = fpext float %81 to double
  %92 = fpext float %86 to double
  %93 = call double @llvm.floor.f64(double %92)
  %94 = call double @llvm.fmuladd.f64(double %74, double %93, double %91)
  %95 = load i64, ptr %9, align 8, !tbaa !60
  %96 = uitofp i64 %95 to double
  %97 = fpext float %90 to double
  %98 = call double @llvm.floor.f64(double %97)
  %99 = call double @llvm.fmuladd.f64(double %96, double %98, double %94)
  %100 = fsub double %92, %93
  %101 = fptrunc double %100 to float
  %102 = fsub double %97, %98
  %103 = fptrunc double %102 to float
  %104 = load ptr, ptr %6, align 8, !tbaa !27
  %105 = load double, ptr %10, align 8, !tbaa !6
  %106 = call double @fmod(double noundef %99, double noundef %105) #18
  %107 = load double, ptr %10, align 8, !tbaa !6
  %108 = fdiv double %99, %107
  %109 = call double @llvm.floor.f64(double %108)
  %110 = load ptr, ptr %5, align 8, !tbaa !27
  %111 = call i32 @InterpolateMagickPixelPacket(ptr noundef nonnull %70, ptr noundef %104, i32 noundef 0, double noundef %106, double noundef %109, ptr noundef nonnull %19, ptr noundef %110) #18
  %112 = load ptr, ptr %2, align 8, !tbaa !27
  %113 = load ptr, ptr %6, align 8, !tbaa !27
  %114 = load i64, ptr %8, align 8, !tbaa !60
  %115 = uitofp i64 %114 to double
  %116 = fadd double %99, %115
  %117 = load double, ptr %10, align 8, !tbaa !6
  %118 = call double @fmod(double noundef %116, double noundef %117) #18
  %119 = load i64, ptr %8, align 8, !tbaa !60
  %120 = uitofp i64 %119 to double
  %121 = fadd double %99, %120
  %122 = load double, ptr %10, align 8, !tbaa !6
  %123 = fdiv double %121, %122
  %124 = call double @llvm.floor.f64(double %123)
  %125 = load ptr, ptr %5, align 8, !tbaa !27
  %126 = call i32 @InterpolateMagickPixelPacket(ptr noundef %112, ptr noundef %113, i32 noundef 0, double noundef %118, double noundef %124, ptr noundef nonnull %20, ptr noundef %125) #18
  %127 = load float, ptr %35, align 4, !tbaa !75
  %128 = load float, ptr %36, align 4, !tbaa !75
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %19, float noundef %127, ptr noundef nonnull %20, float noundef %128, float noundef %101, ptr noundef nonnull %21) #17
  %129 = load i64, ptr %9, align 8, !tbaa !60
  %130 = uitofp i64 %129 to double
  %131 = fadd double %99, %130
  %132 = load ptr, ptr %2, align 8, !tbaa !27
  %133 = load ptr, ptr %6, align 8, !tbaa !27
  %134 = load double, ptr %10, align 8, !tbaa !6
  %135 = call double @fmod(double noundef %131, double noundef %134) #18
  %136 = load double, ptr %10, align 8, !tbaa !6
  %137 = fdiv double %131, %136
  %138 = call double @llvm.floor.f64(double %137)
  %139 = load ptr, ptr %5, align 8, !tbaa !27
  %140 = call i32 @InterpolateMagickPixelPacket(ptr noundef %132, ptr noundef %133, i32 noundef 0, double noundef %135, double noundef %138, ptr noundef nonnull %19, ptr noundef %139) #18
  %141 = load ptr, ptr %2, align 8, !tbaa !27
  %142 = load ptr, ptr %6, align 8, !tbaa !27
  %143 = load i64, ptr %8, align 8, !tbaa !60
  %144 = uitofp i64 %143 to double
  %145 = fadd double %131, %144
  %146 = load double, ptr %10, align 8, !tbaa !6
  %147 = call double @fmod(double noundef %145, double noundef %146) #18
  %148 = load i64, ptr %8, align 8, !tbaa !60
  %149 = uitofp i64 %148 to double
  %150 = fadd double %131, %149
  %151 = load double, ptr %10, align 8, !tbaa !6
  %152 = fdiv double %150, %151
  %153 = call double @llvm.floor.f64(double %152)
  %154 = load ptr, ptr %5, align 8, !tbaa !27
  %155 = call i32 @InterpolateMagickPixelPacket(ptr noundef %141, ptr noundef %142, i32 noundef 0, double noundef %147, double noundef %153, ptr noundef nonnull %20, ptr noundef %154) #18
  %156 = load float, ptr %35, align 4, !tbaa !75
  %157 = load float, ptr %36, align 4, !tbaa !75
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %19, float noundef %156, ptr noundef nonnull %20, float noundef %157, float noundef %101, ptr noundef nonnull %22) #17
  %158 = load float, ptr %37, align 4, !tbaa !75
  %159 = load float, ptr %38, align 4, !tbaa !75
  call fastcc void @MagickPixelCompositeAreaBlend(ptr noundef nonnull %21, float noundef %158, ptr noundef nonnull %22, float noundef %159, float noundef %103, ptr noundef nonnull %18) #17
  %160 = load i32, ptr %11, align 4, !tbaa !28
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %69
  %164 = load float, ptr %39, align 8, !tbaa !70
  %165 = call fastcc zeroext i16 @ClampToQuantum(float noundef %164) #17
  store i16 %165, ptr %77, align 2, !tbaa !33
  br label %166

166:                                              ; preds = %163, %69
  %167 = and i32 %160, 2
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load float, ptr %40, align 4, !tbaa !73
  %171 = call fastcc zeroext i16 @ClampToQuantum(float noundef %170) #17
  store i16 %171, ptr %82, align 2, !tbaa !34
  br label %172

172:                                              ; preds = %169, %166
  %173 = and i32 %160, 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load float, ptr %41, align 8, !tbaa !74
  %177 = call fastcc zeroext i16 @ClampToQuantum(float noundef %176) #17
  store i16 %177, ptr %72, align 2, !tbaa !35
  br label %178

178:                                              ; preds = %175, %172
  %179 = and i32 %160, 8
  %180 = icmp eq i32 %179, 0
  %181 = load ptr, ptr %2, align 8, !tbaa !27
  br i1 %180, label %190, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct._Image, ptr %181, i64 0, i32 6
  %184 = load i32, ptr %183, align 8, !tbaa !10
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load float, ptr %42, align 4, !tbaa !75
  %188 = call fastcc zeroext i16 @ClampToQuantum(float noundef %187) #17
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 0, i32 3
  store i16 %188, ptr %189, align 2, !tbaa !36
  br label %190

190:                                              ; preds = %186, %182, %178
  %191 = and i32 %160, 32
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %202, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct._Image, ptr %181, i64 0, i32 1
  %195 = load i32, ptr %194, align 4, !tbaa !26
  %196 = icmp ne i32 %195, 12
  %197 = select i1 %196, i1 true, i1 %68
  br i1 %197, label %202, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds i16, ptr %62, i64 %71
  %200 = load float, ptr %43, align 8, !tbaa !77
  %201 = call fastcc zeroext i16 @ClampToQuantum(float noundef %200) #17
  store i16 %201, ptr %199, align 2, !tbaa !76
  br label %202

202:                                              ; preds = %198, %193, %190
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %72, i64 1
  %204 = add nuw nsw i64 %71, 1
  %205 = getelementptr inbounds %struct._Image, ptr %181, i64 0, i32 7
  %206 = load i64, ptr %205, align 8, !tbaa !61
  %207 = icmp slt i64 %204, %206
  br i1 %207, label %69, label %208, !llvm.loop !127

208:                                              ; preds = %202, %60
  %209 = load ptr, ptr %4, align 8, !tbaa !27
  %210 = load ptr, ptr %5, align 8, !tbaa !27
  %211 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %209, ptr noundef %210) #20
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %214

214:                                              ; preds = %213, %208
  %215 = load ptr, ptr %2, align 8, !tbaa !27
  %216 = getelementptr inbounds %struct._Image, ptr %215, i64 0, i32 47
  %217 = load ptr, ptr %216, align 8, !tbaa !63
  %218 = icmp eq ptr %217, null
  br i1 %218, label %228, label %219

219:                                              ; preds = %214
  call void @__kmpc_critical(ptr nonnull @2, i32 %29, ptr nonnull @.gomp_critical_user_MagickCore_HaldClutImageChannel.var)
  %220 = load ptr, ptr %2, align 8, !tbaa !27
  %221 = load i64, ptr %12, align 8, !tbaa !39
  %222 = add nsw i64 %221, 1
  store i64 %222, ptr %12, align 8, !tbaa !39
  %223 = getelementptr inbounds %struct._Image, ptr %220, i64 0, i32 8
  %224 = load i64, ptr %223, align 8, !tbaa !40
  %225 = call fastcc i32 @SetImageProgress(ptr noundef %220, ptr noundef nonnull @.str.25, i64 noundef %221, i64 noundef %224) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %29, ptr nonnull @.gomp_critical_user_MagickCore_HaldClutImageChannel.var)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %219, %52
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %228

228:                                              ; preds = %227, %214, %219, %48
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %18) #8
  %229 = add nsw i64 %49, 1
  %230 = load i64, ptr %15, align 8, !tbaa !60
  %231 = icmp slt i64 %49, %230
  br i1 %231, label %48, label %232

232:                                              ; preds = %228
  %233 = load i64, ptr %14, align 8, !tbaa !60
  br label %234

234:                                              ; preds = %232, %44
  %235 = phi i64 [ %46, %44 ], [ %233, %232 ]
  %236 = phi i64 [ %45, %44 ], [ %230, %232 ]
  %237 = load i64, ptr %16, align 8, !tbaa !60
  %238 = add nsw i64 %237, %235
  store i64 %238, ptr %14, align 8, !tbaa !60
  %239 = add nsw i64 %237, %236
  %240 = call i64 @llvm.smin.i64(i64 %239, i64 %26)
  store i64 %240, ptr %15, align 8, !tbaa !60
  %241 = icmp sgt i64 %238, %240
  br i1 %241, label %242, label %44

242:                                              ; preds = %234, %28
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  br label %243

243:                                              ; preds = %242, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositeAreaBlend(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #12 {
  %7 = fpext float %4 to double
  %8 = fsub double 1.000000e+00, %7
  %9 = fsub float 6.553500e+04, %1
  %10 = fpext float %9 to double
  %11 = fneg double %8
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %10, double 6.553500e+04)
  %13 = fptrunc double %12 to float
  %14 = fsub float 6.553500e+04, %3
  %15 = fneg float %4
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %14, float 6.553500e+04)
  tail call fastcc void @MagickPixelCompositePlus(ptr noundef %0, float noundef %13, ptr noundef %2, float noundef %16, ptr noundef %5) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @MagickPixelCompositePlus(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #12 {
  %6 = insertelement <2 x float> poison, float %1, i64 0
  %7 = insertelement <2 x float> %6, float %3, i64 1
  %8 = fpext <2 x float> %7 to <2 x double>
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> <double 0xBEF0001000100010, double 0xBEF0001000100010>, <2 x double> <double 1.000000e+00, double 1.000000e+00>)
  %10 = fptrunc <2 x double> %9 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %13 = fadd float %11, %12
  %14 = tail call fastcc float @RoundToUnity(float noundef %13) #17
  %15 = fpext float %14 to double
  %16 = fsub double 1.000000e+00, %15
  %17 = tail call fastcc double @PerceptibleReciprocal(double noundef %15) #17
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %21 = load <2 x float>, ptr %18, align 8, !tbaa !79
  %22 = load <2 x float>, ptr %19, align 8, !tbaa !79
  %23 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %22, %23
  %25 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %21, <2 x float> %24)
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %29 = load float, ptr %28, align 8, !tbaa !74
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %31 = load float, ptr %30, align 8, !tbaa !74
  %32 = fmul float %31, %12
  %33 = tail call float @llvm.fmuladd.f32(float %11, float %29, float %32)
  %34 = fpext float %33 to double
  %35 = insertelement <4 x double> poison, double %17, i64 0
  %36 = insertelement <4 x double> %35, double %16, i64 1
  %37 = shufflevector <4 x double> %36, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %38 = shufflevector <2 x double> %27, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = insertelement <4 x double> %38, double 6.553500e+04, i64 3
  %40 = insertelement <4 x double> %39, double %34, i64 2
  %41 = fmul <4 x double> %37, %40
  %42 = fptrunc <4 x double> %41 to <4 x float>
  store <4 x float> %42, ptr %20, align 8, !tbaa !79
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !80
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !77
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %50 = load float, ptr %49, align 8, !tbaa !77
  %51 = fmul float %50, %12
  %52 = tail call float @llvm.fmuladd.f32(float %11, float %48, float %51)
  %53 = fpext float %52 to double
  %54 = fmul double %17, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  store float %55, ptr %56, align 8, !tbaa !77
  br label %57

57:                                               ; preds = %46, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @RoundToUnity(float noundef %0) unnamed_addr #6 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fcmp ogt float %0, 1.000000e+00
  %4 = select i1 %3, float 1.000000e+00, float %0
  %5 = select i1 %2, float 0.000000e+00, float %4
  ret float %5
}

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %3) #18
  %7 = load double, ptr %3, align 8, !tbaa !83
  %8 = and i32 %6, 8
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 1
  %11 = load double, ptr %10, align 8
  %12 = select i1 %9, double 6.553500e+04, double %11
  %13 = and i32 %6, 1
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct._GeometryInfo, ptr %3, i64 0, i32 2
  %16 = load double, ptr %15, align 8
  %17 = select i1 %14, double 1.000000e+00, double %16
  %18 = and i32 %6, 4096
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = load <2 x i64>, ptr %21, align 8, !tbaa !60
  %23 = uitofp <2 x i64> %22 to <2 x double>
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %25 = fmul <2 x double> %24, %23
  %26 = extractelement <2 x double> %25, i64 0
  %27 = fdiv double %26, 1.000000e+02
  %28 = fmul double %7, %27
  %29 = fmul double %12, %27
  br label %30

30:                                               ; preds = %20, %5
  %31 = phi double [ %28, %20 ], [ %7, %5 ]
  %32 = phi double [ %29, %20 ], [ %12, %5 ]
  %33 = fsub double 6.553500e+04, %31
  %34 = select i1 %9, double %33, double %32
  %35 = and i32 %6, 8192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %31, double noundef %34, double noundef %17) #17
  br label %41

39:                                               ; preds = %30
  %40 = call i32 @LevelizeImage(ptr noundef %0, double noundef %31, double noundef %34, double noundef %17) #17
  br label %41

41:                                               ; preds = %37, %39, %2
  %42 = phi i32 [ 0, %2 ], [ %38, %37 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelizeImage(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %1, double noundef %2, double noundef %3) #17
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @LevelPixel(double noundef %0, double noundef %1, double noundef %2, float noundef %3) unnamed_addr #15 {
  %5 = fcmp une double %1, %0
  %6 = fsub double %1, %0
  %7 = fdiv double 1.000000e+00, %6
  %8 = select i1 %5, double %7, double 1.000000e+00
  %9 = fpext float %3 to double
  %10 = fsub double %9, %0
  %11 = fmul double %8, %10
  %12 = fdiv double 1.000000e+00, %2
  %13 = tail call fastcc double @gamma_pow(double noundef %11, double noundef %12) #17
  %14 = fmul double %13, 6.553500e+04
  ret double %14
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LevelImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #7 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !40
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %184

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 %19, ptr %13, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 1, ptr %14, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 0, ptr %15, align 4, !tbaa !28
  %22 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %13, align 8, !tbaa !60
  %25 = load i64, ptr %12, align 8, !tbaa !60
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %183, label %27

27:                                               ; preds = %21, %175
  %28 = phi i64 [ %181, %175 ], [ %24, %21 ]
  %29 = phi i64 [ %179, %175 ], [ %25, %21 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %175, label %31

31:                                               ; preds = %27, %169
  %32 = phi i64 [ %170, %169 ], [ %29, %27 ]
  %33 = load i32, ptr %3, align 4, !tbaa !28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %169, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !27
  %37 = load ptr, ptr %2, align 8, !tbaa !27
  %38 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %5, align 8, !tbaa !27
  %41 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %36, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %40) #20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %168, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %4, align 8, !tbaa !27
  %45 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %44) #18
  %46 = load ptr, ptr %2, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !61
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %149

50:                                               ; preds = %43
  %51 = icmp eq ptr %45, null
  br label %52

52:                                               ; preds = %50, %142
  %53 = phi i64 [ 0, %50 ], [ %145, %142 ]
  %54 = phi ptr [ %41, %50 ], [ %144, %142 ]
  %55 = load i32, ptr %6, align 4, !tbaa !28
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %52
  %59 = load double, ptr %7, align 8, !tbaa !6
  %60 = load double, ptr %8, align 8, !tbaa !6
  %61 = load double, ptr %9, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 0, i32 2
  %63 = load i16, ptr %62, align 2, !tbaa !33
  %64 = uitofp i16 %63 to float
  %65 = call fastcc double @LevelPixel(double noundef %59, double noundef %60, double noundef %61, float noundef %64) #17
  %66 = fptrunc double %65 to float
  %67 = call fastcc zeroext i16 @ClampToQuantum(float noundef %66) #17
  store i16 %67, ptr %62, align 2, !tbaa !33
  %68 = load i32, ptr %6, align 4, !tbaa !28
  br label %69

69:                                               ; preds = %58, %52
  %70 = phi i32 [ %68, %58 ], [ %55, %52 ]
  %71 = and i32 %70, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = load double, ptr %7, align 8, !tbaa !6
  %75 = load double, ptr %8, align 8, !tbaa !6
  %76 = load double, ptr %9, align 8, !tbaa !6
  %77 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 0, i32 1
  %78 = load i16, ptr %77, align 2, !tbaa !34
  %79 = uitofp i16 %78 to float
  %80 = call fastcc double @LevelPixel(double noundef %74, double noundef %75, double noundef %76, float noundef %79) #17
  %81 = fptrunc double %80 to float
  %82 = call fastcc zeroext i16 @ClampToQuantum(float noundef %81) #17
  store i16 %82, ptr %77, align 2, !tbaa !34
  %83 = load i32, ptr %6, align 4, !tbaa !28
  br label %84

84:                                               ; preds = %73, %69
  %85 = phi i32 [ %83, %73 ], [ %70, %69 ]
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = load double, ptr %7, align 8, !tbaa !6
  %90 = load double, ptr %8, align 8, !tbaa !6
  %91 = load double, ptr %9, align 8, !tbaa !6
  %92 = load i16, ptr %54, align 2, !tbaa !35
  %93 = uitofp i16 %92 to float
  %94 = call fastcc double @LevelPixel(double noundef %89, double noundef %90, double noundef %91, float noundef %93) #17
  %95 = fptrunc double %94 to float
  %96 = call fastcc zeroext i16 @ClampToQuantum(float noundef %95) #17
  store i16 %96, ptr %54, align 2, !tbaa !35
  %97 = load i32, ptr %6, align 4, !tbaa !28
  br label %98

98:                                               ; preds = %88, %84
  %99 = phi i32 [ %97, %88 ], [ %85, %84 ]
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  %102 = load ptr, ptr %2, align 8, !tbaa !27
  br i1 %101, label %121, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct._Image, ptr %102, i64 0, i32 6
  %105 = load i32, ptr %104, align 8, !tbaa !10
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %103
  %108 = load double, ptr %7, align 8, !tbaa !6
  %109 = load double, ptr %8, align 8, !tbaa !6
  %110 = load double, ptr %9, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 0, i32 3
  %112 = load i16, ptr %111, align 2, !tbaa !36
  %113 = xor i16 %112, -1
  %114 = uitofp i16 %113 to float
  %115 = call fastcc double @LevelPixel(double noundef %108, double noundef %109, double noundef %110, float noundef %114) #17
  %116 = fptrunc double %115 to float
  %117 = call fastcc zeroext i16 @ClampToQuantum(float noundef %116) #17
  %118 = xor i16 %117, -1
  store i16 %118, ptr %111, align 2, !tbaa !36
  %119 = load i32, ptr %6, align 4, !tbaa !28
  %120 = load ptr, ptr %2, align 8, !tbaa !27
  br label %121

121:                                              ; preds = %107, %103, %98
  %122 = phi ptr [ %120, %107 ], [ %102, %103 ], [ %102, %98 ]
  %123 = phi i32 [ %119, %107 ], [ %99, %103 ], [ %99, %98 ]
  %124 = and i32 %123, 32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %142, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct._Image, ptr %122, i64 0, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !26
  %129 = icmp ne i32 %128, 12
  %130 = select i1 %129, i1 true, i1 %51
  br i1 %130, label %142, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds i16, ptr %45, i64 %53
  %133 = load double, ptr %7, align 8, !tbaa !6
  %134 = load double, ptr %8, align 8, !tbaa !6
  %135 = load double, ptr %9, align 8, !tbaa !6
  %136 = load i16, ptr %132, align 2, !tbaa !76
  %137 = uitofp i16 %136 to float
  %138 = call fastcc double @LevelPixel(double noundef %133, double noundef %134, double noundef %135, float noundef %137) #17
  %139 = fptrunc double %138 to float
  %140 = call fastcc zeroext i16 @ClampToQuantum(float noundef %139) #17
  store i16 %140, ptr %132, align 2, !tbaa !76
  %141 = load ptr, ptr %2, align 8, !tbaa !27
  br label %142

142:                                              ; preds = %131, %126, %121
  %143 = phi ptr [ %141, %131 ], [ %122, %126 ], [ %122, %121 ]
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 1
  %145 = add nuw nsw i64 %53, 1
  %146 = getelementptr inbounds %struct._Image, ptr %143, i64 0, i32 7
  %147 = load i64, ptr %146, align 8, !tbaa !61
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %52, label %149, !llvm.loop !128

149:                                              ; preds = %142, %43
  %150 = load ptr, ptr %4, align 8, !tbaa !27
  %151 = load ptr, ptr %5, align 8, !tbaa !27
  %152 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %150, ptr noundef %151) #20
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %155

155:                                              ; preds = %154, %149
  %156 = load ptr, ptr %2, align 8, !tbaa !27
  %157 = getelementptr inbounds %struct._Image, ptr %156, i64 0, i32 47
  %158 = load ptr, ptr %157, align 8, !tbaa !63
  %159 = icmp eq ptr %158, null
  br i1 %159, label %169, label %160

160:                                              ; preds = %155
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_LevelImageChannel.var)
  %161 = load ptr, ptr %2, align 8, !tbaa !27
  %162 = load i64, ptr %10, align 8, !tbaa !39
  %163 = add nsw i64 %162, 1
  store i64 %163, ptr %10, align 8, !tbaa !39
  %164 = getelementptr inbounds %struct._Image, ptr %161, i64 0, i32 8
  %165 = load i64, ptr %164, align 8, !tbaa !40
  %166 = call fastcc i32 @SetImageProgress(ptr noundef %161, ptr noundef nonnull @.str.32, i64 noundef %162, i64 noundef %165) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_LevelImageChannel.var)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160, %35
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %169

169:                                              ; preds = %168, %155, %160, %31
  %170 = add nsw i64 %32, 1
  %171 = load i64, ptr %13, align 8, !tbaa !60
  %172 = icmp slt i64 %32, %171
  br i1 %172, label %31, label %173

173:                                              ; preds = %169
  %174 = load i64, ptr %12, align 8, !tbaa !60
  br label %175

175:                                              ; preds = %173, %27
  %176 = phi i64 [ %29, %27 ], [ %174, %173 ]
  %177 = phi i64 [ %28, %27 ], [ %171, %173 ]
  %178 = load i64, ptr %14, align 8, !tbaa !60
  %179 = add nsw i64 %178, %176
  store i64 %179, ptr %12, align 8, !tbaa !60
  %180 = add nsw i64 %178, %177
  %181 = call i64 @llvm.smin.i64(i64 %180, i64 %19)
  store i64 %181, ptr %13, align 8, !tbaa !60
  %182 = icmp sgt i64 %179, %181
  br i1 %182, label %183, label %27

183:                                              ; preds = %175, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  br label %184

184:                                              ; preds = %183, %11
  ret void
}

; Function Attrs: optsize
declare i32 @ClampImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @gamma_pow(double noundef %0, double noundef %1) unnamed_addr #15 {
  %3 = fcmp olt double %0, 0.000000e+00
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call double @pow(double noundef %0, double noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi double [ %5, %4 ], [ %0, %2 ]
  ret double %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelizeImageChannel(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !27
  store i32 %1, ptr %7, align 4, !tbaa !28
  store double %2, ptr %8, align 8, !tbaa !6
  store double %3, ptr %9, align 8, !tbaa !6
  store double %4, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3141, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #18
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i32, ptr %0, align 8, !tbaa !30
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %107

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %27 = load i64, ptr %26, align 8, !tbaa !31
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %107

29:                                               ; preds = %25
  %30 = and i32 %1, 1
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %33 = fsub double %3, %2
  %34 = and i32 %1, 2
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %1, 4
  %37 = icmp eq i32 %36, 0
  %38 = and i32 %1, 8
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %29, %103
  %41 = phi i64 [ 0, %29 ], [ %104, %103 ]
  br i1 %31, label %56, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %32, align 8, !tbaa !32
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %43, i64 %41, i32 2
  %45 = load i16, ptr %44, align 2, !tbaa !33
  %46 = uitofp i16 %45 to double
  %47 = fmul double %46, 0x3EF0001000100010
  %48 = tail call fastcc double @gamma_pow(double noundef %47, double noundef %4) #17
  %49 = fptrunc double %48 to float
  %50 = fpext float %49 to double
  %51 = tail call double @llvm.fmuladd.f64(double %50, double %33, double %2)
  %52 = fptrunc double %51 to float
  %53 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %52) #17
  %54 = load ptr, ptr %32, align 8, !tbaa !32
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 %41, i32 2
  store i16 %53, ptr %55, align 2, !tbaa !33
  br label %56

56:                                               ; preds = %42, %40
  br i1 %35, label %71, label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %32, align 8, !tbaa !32
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 %41, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !34
  %61 = uitofp i16 %60 to double
  %62 = fmul double %61, 0x3EF0001000100010
  %63 = tail call fastcc double @gamma_pow(double noundef %62, double noundef %4) #17
  %64 = fptrunc double %63 to float
  %65 = fpext float %64 to double
  %66 = tail call double @llvm.fmuladd.f64(double %65, double %33, double %2)
  %67 = fptrunc double %66 to float
  %68 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %67) #17
  %69 = load ptr, ptr %32, align 8, !tbaa !32
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %69, i64 %41, i32 1
  store i16 %68, ptr %70, align 2, !tbaa !34
  br label %71

71:                                               ; preds = %57, %56
  br i1 %37, label %86, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %32, align 8, !tbaa !32
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 %41
  %75 = load i16, ptr %74, align 2, !tbaa !35
  %76 = uitofp i16 %75 to double
  %77 = fmul double %76, 0x3EF0001000100010
  %78 = tail call fastcc double @gamma_pow(double noundef %77, double noundef %4) #17
  %79 = fptrunc double %78 to float
  %80 = fpext float %79 to double
  %81 = tail call double @llvm.fmuladd.f64(double %80, double %33, double %2)
  %82 = fptrunc double %81 to float
  %83 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %82) #17
  %84 = load ptr, ptr %32, align 8, !tbaa !32
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %84, i64 %41
  store i16 %83, ptr %85, align 2, !tbaa !35
  br label %86

86:                                               ; preds = %72, %71
  br i1 %39, label %103, label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr %32, align 8, !tbaa !32
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %88, i64 %41, i32 3
  %90 = load i16, ptr %89, align 2, !tbaa !36
  %91 = xor i16 %90, -1
  %92 = uitofp i16 %91 to double
  %93 = fmul double %92, 0x3EF0001000100010
  %94 = tail call fastcc double @gamma_pow(double noundef %93, double noundef %4) #17
  %95 = fptrunc double %94 to float
  %96 = fpext float %95 to double
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %33, double %2)
  %98 = fptrunc double %97 to float
  %99 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %98) #17
  %100 = xor i16 %99, -1
  %101 = load ptr, ptr %32, align 8, !tbaa !32
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %101, i64 %41, i32 3
  store i16 %100, ptr %102, align 2, !tbaa !36
  br label %103

103:                                              ; preds = %86, %87
  %104 = add nuw nsw i64 %41, 1
  %105 = load i64, ptr %26, align 8, !tbaa !31
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %40, label %107, !llvm.loop !129

107:                                              ; preds = %103, %25, %22
  store i32 1, ptr %13, align 4, !tbaa !28
  store i64 0, ptr %14, align 8, !tbaa !39
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %108, ptr %12, align 8, !tbaa !27
  %109 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %108) #18
  store ptr %109, ptr %11, align 8, !tbaa !27
  %110 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %111 = load i64, ptr %110, align 8, !tbaa !40
  %112 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %113 = shl i64 %112, 5
  %114 = icmp ugt i64 %111, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %127

123:                                              ; preds = %118, %115, %107
  %124 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %125 = icmp ult i64 %124, 2
  %126 = select i1 %125, i64 1, i64 2
  br label %127

127:                                              ; preds = %123, %121
  %128 = phi i64 [ %122, %121 ], [ %126, %123 ]
  %129 = trunc i64 %128 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %15, i32 %129)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @LevelizeImageChannel.omp_outlined, ptr nonnull %6, ptr nonnull %13, ptr nonnull %11, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %9, ptr nonnull %8, ptr nonnull %14)
  %130 = load ptr, ptr %11, align 8, !tbaa !27
  %131 = call ptr @DestroyCacheView(ptr noundef %130) #18
  %132 = load i32, ptr %13, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  ret i32 %132
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @LevelizeImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #7 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !40
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %209

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 %19, ptr %13, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 1, ptr %14, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 0, ptr %15, align 4, !tbaa !28
  %22 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %22, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %13, align 8, !tbaa !60
  %25 = load i64, ptr %12, align 8, !tbaa !60
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %208, label %27

27:                                               ; preds = %21, %200
  %28 = phi i64 [ %206, %200 ], [ %24, %21 ]
  %29 = phi i64 [ %204, %200 ], [ %25, %21 ]
  %30 = icmp sgt i64 %29, %28
  br i1 %30, label %200, label %31

31:                                               ; preds = %27, %194
  %32 = phi i64 [ %195, %194 ], [ %29, %27 ]
  %33 = load i32, ptr %3, align 4, !tbaa !28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %194, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8, !tbaa !27
  %37 = load ptr, ptr %2, align 8, !tbaa !27
  %38 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %39 = load i64, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %5, align 8, !tbaa !27
  %41 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %36, i64 noundef 0, i64 noundef %32, i64 noundef %39, i64 noundef 1, ptr noundef %40) #20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %193, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %4, align 8, !tbaa !27
  %45 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %44) #18
  %46 = load ptr, ptr %2, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 7
  %48 = load i64, ptr %47, align 8, !tbaa !61
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %174

50:                                               ; preds = %43
  %51 = icmp eq ptr %45, null
  br label %52

52:                                               ; preds = %50, %167
  %53 = phi i64 [ 0, %50 ], [ %170, %167 ]
  %54 = phi ptr [ %41, %50 ], [ %169, %167 ]
  %55 = load i32, ptr %6, align 4, !tbaa !28
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 0, i32 2
  %60 = load i16, ptr %59, align 2, !tbaa !33
  %61 = uitofp i16 %60 to double
  %62 = fmul double %61, 0x3EF0001000100010
  %63 = load double, ptr %7, align 8, !tbaa !6
  %64 = call fastcc double @gamma_pow(double noundef %62, double noundef %63) #17
  %65 = fptrunc double %64 to float
  %66 = fpext float %65 to double
  %67 = load double, ptr %8, align 8, !tbaa !6
  %68 = load double, ptr %9, align 8, !tbaa !6
  %69 = fsub double %67, %68
  %70 = call double @llvm.fmuladd.f64(double %66, double %69, double %68)
  %71 = fptrunc double %70 to float
  %72 = call fastcc zeroext i16 @ClampToQuantum(float noundef %71) #17
  store i16 %72, ptr %59, align 2, !tbaa !33
  %73 = load i32, ptr %6, align 4, !tbaa !28
  br label %74

74:                                               ; preds = %58, %52
  %75 = phi i32 [ %73, %58 ], [ %55, %52 ]
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 0, i32 1
  %80 = load i16, ptr %79, align 2, !tbaa !34
  %81 = uitofp i16 %80 to double
  %82 = fmul double %81, 0x3EF0001000100010
  %83 = load double, ptr %7, align 8, !tbaa !6
  %84 = call fastcc double @gamma_pow(double noundef %82, double noundef %83) #17
  %85 = fptrunc double %84 to float
  %86 = fpext float %85 to double
  %87 = load double, ptr %8, align 8, !tbaa !6
  %88 = load double, ptr %9, align 8, !tbaa !6
  %89 = fsub double %87, %88
  %90 = call double @llvm.fmuladd.f64(double %86, double %89, double %88)
  %91 = fptrunc double %90 to float
  %92 = call fastcc zeroext i16 @ClampToQuantum(float noundef %91) #17
  store i16 %92, ptr %79, align 2, !tbaa !34
  %93 = load i32, ptr %6, align 4, !tbaa !28
  br label %94

94:                                               ; preds = %78, %74
  %95 = phi i32 [ %93, %78 ], [ %75, %74 ]
  %96 = and i32 %95, 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %94
  %99 = load i16, ptr %54, align 2, !tbaa !35
  %100 = uitofp i16 %99 to double
  %101 = fmul double %100, 0x3EF0001000100010
  %102 = load double, ptr %7, align 8, !tbaa !6
  %103 = call fastcc double @gamma_pow(double noundef %101, double noundef %102) #17
  %104 = fptrunc double %103 to float
  %105 = fpext float %104 to double
  %106 = load double, ptr %8, align 8, !tbaa !6
  %107 = load double, ptr %9, align 8, !tbaa !6
  %108 = fsub double %106, %107
  %109 = call double @llvm.fmuladd.f64(double %105, double %108, double %107)
  %110 = fptrunc double %109 to float
  %111 = call fastcc zeroext i16 @ClampToQuantum(float noundef %110) #17
  store i16 %111, ptr %54, align 2, !tbaa !35
  %112 = load i32, ptr %6, align 4, !tbaa !28
  br label %113

113:                                              ; preds = %98, %94
  %114 = phi i32 [ %112, %98 ], [ %95, %94 ]
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  %117 = load ptr, ptr %2, align 8, !tbaa !27
  br i1 %116, label %141, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct._Image, ptr %117, i64 0, i32 6
  %120 = load i32, ptr %119, align 8, !tbaa !10
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %141, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 0, i32 3
  %124 = load i16, ptr %123, align 2, !tbaa !36
  %125 = xor i16 %124, -1
  %126 = uitofp i16 %125 to double
  %127 = fmul double %126, 0x3EF0001000100010
  %128 = load double, ptr %7, align 8, !tbaa !6
  %129 = call fastcc double @gamma_pow(double noundef %127, double noundef %128) #17
  %130 = fptrunc double %129 to float
  %131 = fpext float %130 to double
  %132 = load double, ptr %8, align 8, !tbaa !6
  %133 = load double, ptr %9, align 8, !tbaa !6
  %134 = fsub double %132, %133
  %135 = call double @llvm.fmuladd.f64(double %131, double %134, double %133)
  %136 = fptrunc double %135 to float
  %137 = call fastcc zeroext i16 @ClampToQuantum(float noundef %136) #17
  %138 = xor i16 %137, -1
  store i16 %138, ptr %123, align 2, !tbaa !36
  %139 = load i32, ptr %6, align 4, !tbaa !28
  %140 = load ptr, ptr %2, align 8, !tbaa !27
  br label %141

141:                                              ; preds = %122, %118, %113
  %142 = phi ptr [ %140, %122 ], [ %117, %118 ], [ %117, %113 ]
  %143 = phi i32 [ %139, %122 ], [ %114, %118 ], [ %114, %113 ]
  %144 = and i32 %143, 32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %167, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct._Image, ptr %142, i64 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !26
  %149 = icmp ne i32 %148, 12
  %150 = select i1 %149, i1 true, i1 %51
  br i1 %150, label %167, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds i16, ptr %45, i64 %53
  %153 = load i16, ptr %152, align 2, !tbaa !76
  %154 = uitofp i16 %153 to double
  %155 = fmul double %154, 0x3EF0001000100010
  %156 = load double, ptr %7, align 8, !tbaa !6
  %157 = call fastcc double @gamma_pow(double noundef %155, double noundef %156) #17
  %158 = fptrunc double %157 to float
  %159 = fpext float %158 to double
  %160 = load double, ptr %8, align 8, !tbaa !6
  %161 = load double, ptr %9, align 8, !tbaa !6
  %162 = fsub double %160, %161
  %163 = call double @llvm.fmuladd.f64(double %159, double %162, double %161)
  %164 = fptrunc double %163 to float
  %165 = call fastcc zeroext i16 @ClampToQuantum(float noundef %164) #17
  store i16 %165, ptr %152, align 2, !tbaa !76
  %166 = load ptr, ptr %2, align 8, !tbaa !27
  br label %167

167:                                              ; preds = %151, %146, %141
  %168 = phi ptr [ %166, %151 ], [ %142, %146 ], [ %142, %141 ]
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 1
  %170 = add nuw nsw i64 %53, 1
  %171 = getelementptr inbounds %struct._Image, ptr %168, i64 0, i32 7
  %172 = load i64, ptr %171, align 8, !tbaa !61
  %173 = icmp slt i64 %170, %172
  br i1 %173, label %52, label %174, !llvm.loop !130

174:                                              ; preds = %167, %43
  %175 = load ptr, ptr %4, align 8, !tbaa !27
  %176 = load ptr, ptr %5, align 8, !tbaa !27
  %177 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %175, ptr noundef %176) #20
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %180

180:                                              ; preds = %179, %174
  %181 = load ptr, ptr %2, align 8, !tbaa !27
  %182 = getelementptr inbounds %struct._Image, ptr %181, i64 0, i32 47
  %183 = load ptr, ptr %182, align 8, !tbaa !63
  %184 = icmp eq ptr %183, null
  br i1 %184, label %194, label %185

185:                                              ; preds = %180
  call void @__kmpc_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_LevelizeImageChannel.var)
  %186 = load ptr, ptr %2, align 8, !tbaa !27
  %187 = load i64, ptr %10, align 8, !tbaa !39
  %188 = add nsw i64 %187, 1
  store i64 %188, ptr %10, align 8, !tbaa !39
  %189 = getelementptr inbounds %struct._Image, ptr %186, i64 0, i32 8
  %190 = load i64, ptr %189, align 8, !tbaa !40
  %191 = call fastcc i32 @SetImageProgress(ptr noundef %186, ptr noundef nonnull @.str.33, i64 noundef %187, i64 noundef %190) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_LevelizeImageChannel.var)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %185, %35
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %194

194:                                              ; preds = %193, %180, %185, %31
  %195 = add nsw i64 %32, 1
  %196 = load i64, ptr %13, align 8, !tbaa !60
  %197 = icmp slt i64 %32, %196
  br i1 %197, label %31, label %198

198:                                              ; preds = %194
  %199 = load i64, ptr %12, align 8, !tbaa !60
  br label %200

200:                                              ; preds = %198, %27
  %201 = phi i64 [ %29, %27 ], [ %199, %198 ]
  %202 = phi i64 [ %28, %27 ], [ %196, %198 ]
  %203 = load i64, ptr %14, align 8, !tbaa !60
  %204 = add nsw i64 %203, %201
  store i64 %204, ptr %12, align 8, !tbaa !60
  %205 = add nsw i64 %203, %202
  %206 = call i64 @llvm.smin.i64(i64 %205, i64 %19)
  store i64 %206, ptr %13, align 8, !tbaa !60
  %207 = icmp sgt i64 %204, %206
  br i1 %207, label %208, label %27

208:                                              ; preds = %200, %21
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  br label %209

209:                                              ; preds = %208, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelColorsImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @LevelColorsImageChannel(ptr noundef %0, i32 noundef 134217719, ptr noundef %1, ptr noundef %2, i32 noundef %3) #17, !range !67
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LevelColorsImageChannel(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3294, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #18
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !26
  %15 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %14) #17, !range !67
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !80
  %20 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %19) #17, !range !67
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !80
  %25 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %24) #17, !range !67
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %17
  %28 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %29

29:                                               ; preds = %27, %22, %12
  %30 = icmp eq i32 %4, 0
  %31 = and i32 %1, 1
  %32 = icmp eq i32 %31, 0
  br i1 %30, label %33, label %102

33:                                               ; preds = %29
  br i1 %32, label %43, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %36 = load float, ptr %35, align 8, !tbaa !70
  %37 = fpext float %36 to double
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %39 = load float, ptr %38, align 8, !tbaa !70
  %40 = fpext float %39 to double
  %41 = tail call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 1, double noundef %37, double noundef %40, double noundef 1.000000e+00) #17
  %42 = and i32 %41, 1
  br label %43

43:                                               ; preds = %34, %33
  %44 = phi i32 [ %42, %34 ], [ 1, %33 ]
  %45 = and i32 %1, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %49 = load float, ptr %48, align 4, !tbaa !73
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %52 = load float, ptr %51, align 4, !tbaa !73
  %53 = fpext float %52 to double
  %54 = tail call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 2, double noundef %50, double noundef %53, double noundef 1.000000e+00) #17
  %55 = and i32 %54, %44
  br label %56

56:                                               ; preds = %47, %43
  %57 = phi i32 [ %55, %47 ], [ %44, %43 ]
  %58 = and i32 %1, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %62 = load float, ptr %61, align 8, !tbaa !74
  %63 = fpext float %62 to double
  %64 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %65 = load float, ptr %64, align 8, !tbaa !74
  %66 = fpext float %65 to double
  %67 = tail call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 4, double noundef %63, double noundef %66, double noundef 1.000000e+00) #17
  %68 = and i32 %67, %57
  br label %69

69:                                               ; preds = %60, %56
  %70 = phi i32 [ %68, %60 ], [ %57, %56 ]
  %71 = and i32 %1, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %79 = load float, ptr %78, align 4, !tbaa !75
  %80 = fpext float %79 to double
  %81 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %82 = load float, ptr %81, align 4, !tbaa !75
  %83 = fpext float %82 to double
  %84 = tail call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 8, double noundef %80, double noundef %83, double noundef 1.000000e+00) #17
  %85 = and i32 %84, %70
  br label %86

86:                                               ; preds = %77, %73, %69
  %87 = phi i32 [ %85, %77 ], [ %70, %73 ], [ %70, %69 ]
  %88 = and i32 %1, 32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %171, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %13, align 4, !tbaa !26
  %92 = icmp eq i32 %91, 12
  br i1 %92, label %93, label %171

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %95 = load float, ptr %94, align 8, !tbaa !77
  %96 = fpext float %95 to double
  %97 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %98 = load float, ptr %97, align 8, !tbaa !77
  %99 = fpext float %98 to double
  %100 = tail call i32 @LevelImageChannel(ptr noundef nonnull %0, i32 noundef 32, double noundef %96, double noundef %99, double noundef 1.000000e+00) #17
  %101 = and i32 %100, %87
  br label %171

102:                                              ; preds = %29
  br i1 %32, label %112, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %105 = load float, ptr %104, align 8, !tbaa !70
  %106 = fpext float %105 to double
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %108 = load float, ptr %107, align 8, !tbaa !70
  %109 = fpext float %108 to double
  %110 = tail call i32 @LevelizeImageChannel(ptr noundef nonnull %0, i32 noundef 1, double noundef %106, double noundef %109, double noundef 1.000000e+00) #17
  %111 = and i32 %110, 1
  br label %112

112:                                              ; preds = %103, %102
  %113 = phi i32 [ %111, %103 ], [ 1, %102 ]
  %114 = and i32 %1, 2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  %118 = load float, ptr %117, align 4, !tbaa !73
  %119 = fpext float %118 to double
  %120 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  %121 = load float, ptr %120, align 4, !tbaa !73
  %122 = fpext float %121 to double
  %123 = tail call i32 @LevelizeImageChannel(ptr noundef nonnull %0, i32 noundef 2, double noundef %119, double noundef %122, double noundef 1.000000e+00) #17
  %124 = and i32 %123, %113
  br label %125

125:                                              ; preds = %116, %112
  %126 = phi i32 [ %124, %116 ], [ %113, %112 ]
  %127 = and i32 %1, 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  %131 = load float, ptr %130, align 8, !tbaa !74
  %132 = fpext float %131 to double
  %133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  %134 = load float, ptr %133, align 8, !tbaa !74
  %135 = fpext float %134 to double
  %136 = tail call i32 @LevelizeImageChannel(ptr noundef nonnull %0, i32 noundef 4, double noundef %132, double noundef %135, double noundef 1.000000e+00) #17
  %137 = and i32 %136, %126
  br label %138

138:                                              ; preds = %129, %125
  %139 = phi i32 [ %137, %129 ], [ %126, %125 ]
  %140 = and i32 %1, 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %155, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %144 = load i32, ptr %143, align 8, !tbaa !10
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  %148 = load float, ptr %147, align 4, !tbaa !75
  %149 = fpext float %148 to double
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  %151 = load float, ptr %150, align 4, !tbaa !75
  %152 = fpext float %151 to double
  %153 = tail call i32 @LevelizeImageChannel(ptr noundef nonnull %0, i32 noundef 8, double noundef %149, double noundef %152, double noundef 1.000000e+00) #17
  %154 = and i32 %153, %139
  br label %155

155:                                              ; preds = %146, %142, %138
  %156 = phi i32 [ %154, %146 ], [ %139, %142 ], [ %139, %138 ]
  %157 = and i32 %1, 32
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %13, align 4, !tbaa !26
  %161 = icmp eq i32 %160, 12
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  %164 = load float, ptr %163, align 8, !tbaa !77
  %165 = fpext float %164 to double
  %166 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  %167 = load float, ptr %166, align 8, !tbaa !77
  %168 = fpext float %167 to double
  %169 = tail call i32 @LevelizeImageChannel(ptr noundef nonnull %0, i32 noundef 32, double noundef %165, double noundef %168, double noundef 1.000000e+00) #17
  %170 = and i32 %169, %156
  br label %171

171:                                              ; preds = %155, %159, %162, %86, %90, %93
  %172 = phi i32 [ %101, %93 ], [ %87, %90 ], [ %87, %86 ], [ %170, %162 ], [ %156, %159 ], [ %156, %155 ]
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i32
  ret i32 %174
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @LinearStretchImage(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = tail call dereferenceable_or_null(262144) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 4) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %75, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3400, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %10) #18
  br label %75

12:                                               ; preds = %3
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 262144) #18
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !40
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %12, %40
  %20 = phi i64 [ %41, %40 ], [ 0, %12 ]
  %21 = load i64, ptr %15, align 8, !tbaa !61
  %22 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %20, i64 noundef %21, i64 noundef 1, ptr noundef nonnull %14) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = load i64, ptr %15, align 8, !tbaa !61
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24, %27
  %28 = phi i64 [ %30, %27 ], [ %25, %24 ]
  %29 = phi ptr [ %38, %27 ], [ %22, %24 ]
  %30 = add nsw i64 %28, -1
  %31 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %29) #20
  %32 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %31) #17
  %33 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %32) #17, !range !58
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds float, ptr %4, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !79
  %37 = fadd float %36, 1.000000e+00
  store float %37, ptr %35, align 4, !tbaa !79
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %29, i64 1
  %39 = icmp ugt i64 %28, 1
  br i1 %39, label %27, label %40, !llvm.loop !131

40:                                               ; preds = %27, %24
  %41 = add nuw nsw i64 %20, 1
  %42 = load i64, ptr %16, align 8, !tbaa !40
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %19, label %44, !llvm.loop !132

44:                                               ; preds = %40, %19, %12
  br label %45

45:                                               ; preds = %44, %53
  %46 = phi i64 [ %54, %53 ], [ 0, %44 ]
  %47 = phi float [ %50, %53 ], [ 0.000000e+00, %44 ]
  %48 = getelementptr inbounds float, ptr %4, i64 %46
  %49 = load float, ptr %48, align 4, !tbaa !79
  %50 = fadd float %47, %49
  %51 = fpext float %50 to double
  %52 = fcmp ult double %51, %1
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = add nuw nsw i64 %46, 1
  %55 = icmp eq i64 %54, 65535
  br i1 %55, label %56, label %45, !llvm.loop !133

56:                                               ; preds = %45, %53
  %57 = phi i64 [ %46, %45 ], [ 65535, %53 ]
  br label %58

58:                                               ; preds = %56, %66
  %59 = phi i64 [ 65535, %56 ], [ %67, %66 ]
  %60 = phi float [ 0.000000e+00, %56 ], [ %63, %66 ]
  %61 = getelementptr inbounds float, ptr %4, i64 %59
  %62 = load float, ptr %61, align 4, !tbaa !79
  %63 = fadd float %60, %62
  %64 = fpext float %63 to double
  %65 = fcmp ult double %64, %2
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = add nsw i64 %59, -1
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %58, !llvm.loop !134

69:                                               ; preds = %58, %66
  %70 = phi i64 [ %59, %58 ], [ 0, %66 ]
  %71 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #18
  %72 = sitofp i64 %57 to double
  %73 = sitofp i64 %70 to double
  %74 = tail call i32 @LevelImageChannel(ptr noundef %0, i32 noundef 134217719, double noundef %72, double noundef %73, double noundef 1.000000e+00) #17
  br label %75

75:                                               ; preds = %6, %8, %69
  %76 = phi i32 [ %74, %69 ], [ 0, %8 ], [ 0, %6 ]
  ret i32 %76
}

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ModulateImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct._GeometryInfo, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %3, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %18 = load i32, ptr %17, align 8, !tbaa !29
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %22 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3728, ptr noundef nonnull @.str.2, ptr noundef nonnull %21) #18
  br label %23

23:                                               ; preds = %20, %2
  %24 = icmp eq ptr %1, null
  br i1 %24, label %119, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !26
  %28 = tail call fastcc i32 @IssRGBCompatibleColorspace(i32 noundef %27) #17, !range !67
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = tail call i32 @SetImageColorspace(ptr noundef nonnull %0, i32 noundef 13) #18
  br label %32

32:                                               ; preds = %30, %25
  %33 = call i32 @ParseGeometry(ptr noundef nonnull %1, ptr noundef nonnull %10) #18
  %34 = load double, ptr %10, align 8, !tbaa !83
  store double %34, ptr %6, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct._GeometryInfo, ptr %10, i64 0, i32 1
  %36 = load double, ptr %35, align 8, !tbaa !116
  %37 = and i32 %33, 8
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, double 1.000000e+02, double %36
  store double %39, ptr %8, align 8
  %40 = getelementptr inbounds %struct._GeometryInfo, ptr %10, i64 0, i32 2
  %41 = load double, ptr %40, align 8, !tbaa !117
  %42 = and i32 %33, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, double 1.000000e+02, double %41
  store double %44, ptr %7, align 8
  store i32 0, ptr %5, align 4, !tbaa !28
  %45 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %32
  %48 = call i64 @ParseCommandOption(i32 noundef 9, i32 noundef 0, ptr noundef nonnull %45) #18
  %49 = trunc i64 %48 to i32
  store i32 %49, ptr %5, align 4, !tbaa !28
  br label %50

50:                                               ; preds = %47, %32
  %51 = phi i32 [ %49, %47 ], [ 0, %32 ]
  %52 = load i32, ptr %0, align 8, !tbaa !30
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %90

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %56 = load i64, ptr %55, align 8, !tbaa !31
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !32
  br label %61

61:                                               ; preds = %58, %79
  %62 = phi ptr [ %81, %79 ], [ %60, %58 ]
  %63 = phi i64 [ %87, %79 ], [ 0, %58 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #8
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 %63, i32 2
  %65 = load i16, ptr %64, align 2, !tbaa !33
  store i16 %65, ptr %15, align 2, !tbaa !76
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 %63, i32 1
  %67 = load i16, ptr %66, align 2, !tbaa !34
  store i16 %67, ptr %14, align 2, !tbaa !76
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %62, i64 %63
  %69 = load i16, ptr %68, align 2, !tbaa !35
  store i16 %69, ptr %13, align 2, !tbaa !76
  switch i32 %51, label %74 [
    i32 24, label %70
    i32 32, label %71
    i32 14, label %72
    i32 30, label %73
    i32 28, label %78
    i32 31, label %75
    i32 16, label %76
    i32 27, label %77
    i32 25, label %77
  ]

70:                                               ; preds = %61
  call fastcc void @ModulateHCL(double noundef %44, double noundef %39, double noundef %34, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  br label %79

71:                                               ; preds = %61
  call fastcc void @ModulateHCLp(double noundef %44, double noundef %39, double noundef %34, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  br label %79

72:                                               ; preds = %61
  call fastcc void @ModulateHSB(double noundef %44, double noundef %39, double noundef %34, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  br label %79

73:                                               ; preds = %61
  call fastcc void @ModulateHSI(double noundef %44, double noundef %39, double noundef %34, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  br label %79

74:                                               ; preds = %61
  call fastcc void @ModulateHSL(double noundef %44, double noundef %39, double noundef %34, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  br label %79

75:                                               ; preds = %61
  call fastcc void @ModulateHSV(double noundef %44, double noundef %39, double noundef %34, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  br label %79

76:                                               ; preds = %61
  call fastcc void @ModulateHWB(double noundef %44, double noundef %39, double noundef %34, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  br label %79

77:                                               ; preds = %61, %61
  call fastcc void @ModulateLCHab(double noundef %34, double noundef %39, double noundef %44, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  br label %79

78:                                               ; preds = %61
  call fastcc void @ModulateLCHuv(double noundef %34, double noundef %39, double noundef %44, ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  br label %79

79:                                               ; preds = %78, %77, %76, %75, %74, %73, %72, %71, %70
  %80 = load i16, ptr %15, align 2, !tbaa !76
  %81 = load ptr, ptr %59, align 8, !tbaa !32
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 %63, i32 2
  store i16 %80, ptr %82, align 2, !tbaa !33
  %83 = load i16, ptr %14, align 2, !tbaa !76
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 %63, i32 1
  store i16 %83, ptr %84, align 2, !tbaa !34
  %85 = load i16, ptr %13, align 2, !tbaa !76
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %81, i64 %63
  store i16 %85, ptr %86, align 2, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  %87 = add nuw nsw i64 %63, 1
  %88 = load i64, ptr %55, align 8, !tbaa !31
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %61, label %90, !llvm.loop !135

90:                                               ; preds = %79, %54, %50
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %92 = call i32 @AccelerateModulateImage(ptr noundef nonnull %0, double noundef %34, double noundef %44, double noundef %39, i32 noundef %51, ptr noundef nonnull %91) #18
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %90
  store i32 1, ptr %11, align 4, !tbaa !28
  store i64 0, ptr %12, align 8, !tbaa !39
  store ptr %91, ptr %9, align 8, !tbaa !27
  %95 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %91) #18
  store ptr %95, ptr %4, align 8, !tbaa !27
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %97 = load i64, ptr %96, align 8, !tbaa !40
  %98 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %99 = shl i64 %98, 5
  %100 = icmp ugt i64 %97, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %94
  %102 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %113

109:                                              ; preds = %104, %101, %94
  %110 = call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %111 = icmp ult i64 %110, 2
  %112 = select i1 %111, i64 1, i64 2
  br label %113

113:                                              ; preds = %109, %107
  %114 = phi i64 [ %108, %107 ], [ %112, %109 ]
  %115 = trunc i64 %114 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %16, i32 %115)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @ModulateImage.omp_outlined, ptr nonnull %3, ptr nonnull %11, ptr nonnull %4, ptr nonnull %9, ptr nonnull %5, ptr nonnull %7, ptr nonnull %8, ptr nonnull %6, ptr nonnull %12)
  %116 = load ptr, ptr %4, align 8, !tbaa !27
  %117 = call ptr @DestroyCacheView(ptr noundef %116) #18
  %118 = load i32, ptr %11, align 4, !tbaa !28
  br label %119

119:                                              ; preds = %90, %23, %113
  %120 = phi i32 [ %118, %113 ], [ 0, %23 ], [ %92, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %120
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IssRGBCompatibleColorspace(i32 noundef %0) unnamed_addr #6 {
  switch i32 %0, label %2 [
    i32 29, label %4
    i32 13, label %4
    i32 3, label %4
    i32 1, label %4
  ]

2:                                                ; preds = %1
  %3 = tail call fastcc i32 @IsGrayColorspace(i32 noundef %0) #17, !range !67
  br label %4

4:                                                ; preds = %2, %1, %1, %1, %1
  %5 = phi i32 [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ %3, %2 ]
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHCL(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %10 = load i16, ptr %3, align 2, !tbaa !76
  %11 = load i16, ptr %4, align 2, !tbaa !76
  %12 = load i16, ptr %5, align 2, !tbaa !76
  call void @ConvertRGBToHCL(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8) #18
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %7, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %7, align 8, !tbaa !6
  %19 = fcmp ogt double %18, 1.000000e+00
  br i1 %19, label %24, label %29

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !136

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ogt double %26, 1.000000e+00
  br i1 %27, label %24, label %28, !llvm.loop !137

28:                                               ; preds = %24
  store double %26, ptr %7, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %9, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %9, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %8, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %8, align 8, !tbaa !6
  call void @ConvertHCLToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHCLp(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %10 = load i16, ptr %3, align 2, !tbaa !76
  %11 = load i16, ptr %4, align 2, !tbaa !76
  %12 = load i16, ptr %5, align 2, !tbaa !76
  call void @ConvertRGBToHCLp(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8) #18
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %7, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %7, align 8, !tbaa !6
  %19 = fcmp ogt double %18, 1.000000e+00
  br i1 %19, label %24, label %29

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !138

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ogt double %26, 1.000000e+00
  br i1 %27, label %24, label %28, !llvm.loop !139

28:                                               ; preds = %24
  store double %26, ptr %7, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %9, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %9, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %8, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %8, align 8, !tbaa !6
  call void @ConvertHCLpToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHSB(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %10 = load i16, ptr %3, align 2, !tbaa !76
  %11 = load i16, ptr %4, align 2, !tbaa !76
  %12 = load i16, ptr %5, align 2, !tbaa !76
  call void @ConvertRGBToHSB(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #18
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %8, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %8, align 8, !tbaa !6
  %19 = fcmp ogt double %18, 1.000000e+00
  br i1 %19, label %24, label %29

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !140

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ogt double %26, 1.000000e+00
  br i1 %27, label %24, label %28, !llvm.loop !141

28:                                               ; preds = %24
  store double %26, ptr %8, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %9, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %9, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %7, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %7, align 8, !tbaa !6
  call void @ConvertHSBToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHSI(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %10 = load i16, ptr %3, align 2, !tbaa !76
  %11 = load i16, ptr %4, align 2, !tbaa !76
  %12 = load i16, ptr %5, align 2, !tbaa !76
  call void @ConvertRGBToHSI(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #18
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %8, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %8, align 8, !tbaa !6
  %19 = fcmp ogt double %18, 1.000000e+00
  br i1 %19, label %24, label %29

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !142

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ogt double %26, 1.000000e+00
  br i1 %27, label %24, label %28, !llvm.loop !143

28:                                               ; preds = %24
  store double %26, ptr %8, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %9, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %9, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %7, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %7, align 8, !tbaa !6
  call void @ConvertHSIToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHSL(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %10 = load i16, ptr %3, align 2, !tbaa !76
  %11 = load i16, ptr %4, align 2, !tbaa !76
  %12 = load i16, ptr %5, align 2, !tbaa !76
  call void @ConvertRGBToHSL(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %8) #18
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %7, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %7, align 8, !tbaa !6
  %19 = fcmp ult double %18, 1.000000e+00
  br i1 %19, label %29, label %24

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !144

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ult double %26, 1.000000e+00
  br i1 %27, label %28, label %24, !llvm.loop !145

28:                                               ; preds = %24
  store double %26, ptr %7, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %9, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %9, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %8, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %8, align 8, !tbaa !6
  call void @ConvertHSLToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHSV(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %10 = load i16, ptr %3, align 2, !tbaa !76
  %11 = load i16, ptr %4, align 2, !tbaa !76
  %12 = load i16, ptr %5, align 2, !tbaa !76
  call void @ConvertRGBToHSV(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %7, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %7, align 8, !tbaa !6
  %19 = fcmp ult double %18, 1.000000e+00
  br i1 %19, label %29, label %24

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !146

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ult double %26, 1.000000e+00
  br i1 %27, label %28, label %24, !llvm.loop !147

28:                                               ; preds = %24
  store double %26, ptr %7, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %1, 1.000000e-02
  %32 = load double, ptr %8, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %8, align 8, !tbaa !6
  %34 = fmul double %2, 1.000000e-02
  %35 = load double, ptr %9, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %9, align 8, !tbaa !6
  call void @ConvertHSVToRGB(double noundef %30, double noundef %33, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateHWB(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %10 = load i16, ptr %3, align 2, !tbaa !76
  %11 = load i16, ptr %4, align 2, !tbaa !76
  %12 = load i16, ptr %5, align 2, !tbaa !76
  call void @ConvertRGBToHWB(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #18
  %13 = call double @llvm.fmuladd.f64(double %0, double 1.000000e-02, double -1.000000e+00)
  %14 = load double, ptr %8, align 8, !tbaa !6
  %15 = call double @llvm.fmuladd.f64(double %13, double 5.000000e-01, double %14)
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %20, label %17

17:                                               ; preds = %20, %6
  %18 = phi double [ %15, %6 ], [ %22, %20 ]
  store double %18, ptr %8, align 8, !tbaa !6
  %19 = fcmp ult double %18, 1.000000e+00
  br i1 %19, label %29, label %24

20:                                               ; preds = %6, %20
  %21 = phi double [ %22, %20 ], [ %15, %6 ]
  %22 = fadd double %21, 1.000000e+00
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %20, label %17, !llvm.loop !148

24:                                               ; preds = %17, %24
  %25 = phi double [ %26, %24 ], [ %18, %17 ]
  %26 = fadd double %25, -1.000000e+00
  %27 = fcmp ult double %26, 1.000000e+00
  br i1 %27, label %28, label %24, !llvm.loop !149

28:                                               ; preds = %24
  store double %26, ptr %8, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %28, %17
  %30 = phi double [ %26, %28 ], [ %18, %17 ]
  %31 = fmul double %2, 1.000000e-02
  %32 = load double, ptr %7, align 8, !tbaa !6
  %33 = fmul double %31, %32
  store double %33, ptr %7, align 8, !tbaa !6
  %34 = fmul double %1, 1.000000e-02
  %35 = load double, ptr %9, align 8, !tbaa !6
  %36 = fmul double %34, %35
  store double %36, ptr %9, align 8, !tbaa !6
  call void @ConvertHWBToRGB(double noundef %30, double noundef %36, double noundef %33, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateLCHab(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %10 = load i16, ptr %3, align 2, !tbaa !76
  %11 = load i16, ptr %4, align 2, !tbaa !76
  %12 = load i16, ptr %5, align 2, !tbaa !76
  call void @ConvertRGBToLCHab(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #18
  %13 = fmul double %0, 1.000000e-02
  %14 = load double, ptr %8, align 8, !tbaa !6
  %15 = fmul double %13, %14
  store double %15, ptr %8, align 8, !tbaa !6
  %16 = fmul double %1, 1.000000e-02
  %17 = load double, ptr %9, align 8, !tbaa !6
  %18 = fmul double %16, %17
  store double %18, ptr %9, align 8, !tbaa !6
  %19 = call double @llvm.fmuladd.f64(double %2, double 1.000000e-02, double -1.000000e+00)
  %20 = load double, ptr %7, align 8, !tbaa !6
  %21 = call double @llvm.fmuladd.f64(double %19, double 5.000000e-01, double %20)
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %26, %6
  %24 = phi double [ %21, %6 ], [ %28, %26 ]
  store double %24, ptr %7, align 8, !tbaa !6
  %25 = fcmp ult double %24, 1.000000e+00
  br i1 %25, label %35, label %30

26:                                               ; preds = %6, %26
  %27 = phi double [ %28, %26 ], [ %21, %6 ]
  %28 = fadd double %27, 1.000000e+00
  %29 = fcmp olt double %28, 0.000000e+00
  br i1 %29, label %26, label %23, !llvm.loop !150

30:                                               ; preds = %23, %30
  %31 = phi double [ %32, %30 ], [ %24, %23 ]
  %32 = fadd double %31, -1.000000e+00
  %33 = fcmp ult double %32, 1.000000e+00
  br i1 %33, label %34, label %30, !llvm.loop !151

34:                                               ; preds = %30
  store double %32, ptr %7, align 8, !tbaa !6
  br label %35

35:                                               ; preds = %34, %23
  %36 = phi double [ %32, %34 ], [ %24, %23 ]
  call void @ConvertLCHabToRGB(double noundef %15, double noundef %18, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ModulateLCHuv(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %10 = load i16, ptr %3, align 2, !tbaa !76
  %11 = load i16, ptr %4, align 2, !tbaa !76
  %12 = load i16, ptr %5, align 2, !tbaa !76
  call void @ConvertRGBToLCHuv(i16 noundef zeroext %10, i16 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #18
  %13 = fmul double %0, 1.000000e-02
  %14 = load double, ptr %8, align 8, !tbaa !6
  %15 = fmul double %13, %14
  store double %15, ptr %8, align 8, !tbaa !6
  %16 = fmul double %1, 1.000000e-02
  %17 = load double, ptr %9, align 8, !tbaa !6
  %18 = fmul double %16, %17
  store double %18, ptr %9, align 8, !tbaa !6
  %19 = call double @llvm.fmuladd.f64(double %2, double 1.000000e-02, double -1.000000e+00)
  %20 = load double, ptr %7, align 8, !tbaa !6
  %21 = call double @llvm.fmuladd.f64(double %19, double 5.000000e-01, double %20)
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %26, %6
  %24 = phi double [ %21, %6 ], [ %28, %26 ]
  store double %24, ptr %7, align 8, !tbaa !6
  %25 = fcmp ult double %24, 1.000000e+00
  br i1 %25, label %35, label %30

26:                                               ; preds = %6, %26
  %27 = phi double [ %28, %26 ], [ %21, %6 ]
  %28 = fadd double %27, 1.000000e+00
  %29 = fcmp olt double %28, 0.000000e+00
  br i1 %29, label %26, label %23, !llvm.loop !152

30:                                               ; preds = %23, %30
  %31 = phi double [ %32, %30 ], [ %24, %23 ]
  %32 = fadd double %31, -1.000000e+00
  %33 = fcmp ult double %32, 1.000000e+00
  br i1 %33, label %34, label %30, !llvm.loop !153

34:                                               ; preds = %30
  store double %32, ptr %7, align 8, !tbaa !6
  br label %35

35:                                               ; preds = %34, %23
  %36 = phi double [ %32, %34 ], [ %24, %23 ]
  call void @ConvertLCHuvToRGB(double noundef %15, double noundef %18, double noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: optsize
declare i32 @AccelerateModulateImage(ptr noundef, double noundef, double noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @ModulateImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #7 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = load ptr, ptr %2, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct._Image, ptr %19, i64 0, i32 8
  %21 = load i64, ptr %20, align 8, !tbaa !40
  %22 = add nsw i64 %21, -1
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %137

24:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 0, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 %22, ptr %13, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  store i64 1, ptr %14, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 0, ptr %15, align 4, !tbaa !28
  %25 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %25, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %26 = load i64, ptr %13, align 8
  %27 = call i64 @llvm.smin.i64(i64 %26, i64 %22)
  store i64 %27, ptr %13, align 8, !tbaa !60
  %28 = load i64, ptr %12, align 8, !tbaa !60
  %29 = icmp sgt i64 %28, %27
  br i1 %29, label %136, label %30

30:                                               ; preds = %24, %128
  %31 = phi i64 [ %134, %128 ], [ %27, %24 ]
  %32 = phi i64 [ %132, %128 ], [ %28, %24 ]
  %33 = icmp sgt i64 %32, %31
  br i1 %33, label %128, label %34

34:                                               ; preds = %30, %122
  %35 = phi i64 [ %123, %122 ], [ %32, %30 ]
  %36 = load i32, ptr %3, align 4, !tbaa !28
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %122, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %4, align 8, !tbaa !27
  %40 = load ptr, ptr %2, align 8, !tbaa !27
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !61
  %43 = load ptr, ptr %5, align 8, !tbaa !27
  %44 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %35, i64 noundef %42, i64 noundef 1, ptr noundef %43) #20
  %45 = icmp eq ptr %44, null
  br i1 %45, label %121, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %2, align 8, !tbaa !27
  %48 = getelementptr inbounds %struct._Image, ptr %47, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !61
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %102

51:                                               ; preds = %46, %92
  %52 = phi i64 [ %97, %92 ], [ 0, %46 ]
  %53 = phi ptr [ %96, %92 ], [ %44, %46 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #8
  %54 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 2
  %55 = load i16, ptr %54, align 2, !tbaa !33
  store i16 %55, ptr %18, align 2, !tbaa !76
  %56 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 0, i32 1
  %57 = load i16, ptr %56, align 2, !tbaa !34
  store i16 %57, ptr %17, align 2, !tbaa !76
  %58 = load i16, ptr %53, align 2, !tbaa !35
  store i16 %58, ptr %16, align 2, !tbaa !76
  %59 = load i32, ptr %6, align 4, !tbaa !28
  switch i32 %59, label %72 [
    i32 24, label %60
    i32 32, label %64
    i32 14, label %68
    i32 28, label %88
    i32 31, label %76
    i32 16, label %80
    i32 27, label %84
    i32 25, label %88
  ]

60:                                               ; preds = %51
  %61 = load double, ptr %7, align 8, !tbaa !6
  %62 = load double, ptr %8, align 8, !tbaa !6
  %63 = load double, ptr %9, align 8, !tbaa !6
  call fastcc void @ModulateHCL(double noundef %61, double noundef %62, double noundef %63, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  br label %92

64:                                               ; preds = %51
  %65 = load double, ptr %7, align 8, !tbaa !6
  %66 = load double, ptr %8, align 8, !tbaa !6
  %67 = load double, ptr %9, align 8, !tbaa !6
  call fastcc void @ModulateHCLp(double noundef %65, double noundef %66, double noundef %67, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  br label %92

68:                                               ; preds = %51
  %69 = load double, ptr %7, align 8, !tbaa !6
  %70 = load double, ptr %8, align 8, !tbaa !6
  %71 = load double, ptr %9, align 8, !tbaa !6
  call fastcc void @ModulateHSB(double noundef %69, double noundef %70, double noundef %71, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  br label %92

72:                                               ; preds = %51
  %73 = load double, ptr %7, align 8, !tbaa !6
  %74 = load double, ptr %8, align 8, !tbaa !6
  %75 = load double, ptr %9, align 8, !tbaa !6
  call fastcc void @ModulateHSL(double noundef %73, double noundef %74, double noundef %75, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  br label %92

76:                                               ; preds = %51
  %77 = load double, ptr %7, align 8, !tbaa !6
  %78 = load double, ptr %8, align 8, !tbaa !6
  %79 = load double, ptr %9, align 8, !tbaa !6
  call fastcc void @ModulateHSV(double noundef %77, double noundef %78, double noundef %79, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  br label %92

80:                                               ; preds = %51
  %81 = load double, ptr %7, align 8, !tbaa !6
  %82 = load double, ptr %8, align 8, !tbaa !6
  %83 = load double, ptr %9, align 8, !tbaa !6
  call fastcc void @ModulateHWB(double noundef %81, double noundef %82, double noundef %83, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  br label %92

84:                                               ; preds = %51
  %85 = load double, ptr %9, align 8, !tbaa !6
  %86 = load double, ptr %8, align 8, !tbaa !6
  %87 = load double, ptr %7, align 8, !tbaa !6
  call fastcc void @ModulateLCHab(double noundef %85, double noundef %86, double noundef %87, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  br label %92

88:                                               ; preds = %51, %51
  %89 = load double, ptr %9, align 8, !tbaa !6
  %90 = load double, ptr %8, align 8, !tbaa !6
  %91 = load double, ptr %7, align 8, !tbaa !6
  call fastcc void @ModulateLCHuv(double noundef %89, double noundef %90, double noundef %91, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16) #17
  br label %92

92:                                               ; preds = %88, %84, %80, %76, %72, %68, %64, %60
  %93 = load i16, ptr %18, align 2, !tbaa !76
  store i16 %93, ptr %54, align 2, !tbaa !33
  %94 = load i16, ptr %17, align 2, !tbaa !76
  store i16 %94, ptr %56, align 2, !tbaa !34
  %95 = load i16, ptr %16, align 2, !tbaa !76
  store i16 %95, ptr %53, align 2, !tbaa !35
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %53, i64 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #8
  %97 = add nuw nsw i64 %52, 1
  %98 = load ptr, ptr %2, align 8, !tbaa !27
  %99 = getelementptr inbounds %struct._Image, ptr %98, i64 0, i32 7
  %100 = load i64, ptr %99, align 8, !tbaa !61
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %51, label %102, !llvm.loop !154

102:                                              ; preds = %92, %46
  %103 = load ptr, ptr %4, align 8, !tbaa !27
  %104 = load ptr, ptr %5, align 8, !tbaa !27
  %105 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %103, ptr noundef %104) #20
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %108

108:                                              ; preds = %107, %102
  %109 = load ptr, ptr %2, align 8, !tbaa !27
  %110 = getelementptr inbounds %struct._Image, ptr %109, i64 0, i32 47
  %111 = load ptr, ptr %110, align 8, !tbaa !63
  %112 = icmp eq ptr %111, null
  br i1 %112, label %122, label %113

113:                                              ; preds = %108
  call void @__kmpc_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_ModulateImage.var)
  %114 = load ptr, ptr %2, align 8, !tbaa !27
  %115 = load i64, ptr %10, align 8, !tbaa !39
  %116 = add nsw i64 %115, 1
  store i64 %116, ptr %10, align 8, !tbaa !39
  %117 = getelementptr inbounds %struct._Image, ptr %114, i64 0, i32 8
  %118 = load i64, ptr %117, align 8, !tbaa !40
  %119 = call fastcc i32 @SetImageProgress(ptr noundef %114, ptr noundef nonnull @.str.35, i64 noundef %115, i64 noundef %118) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %25, ptr nonnull @.gomp_critical_user_MagickCore_ModulateImage.var)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113, %38
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %122

122:                                              ; preds = %121, %108, %113, %34
  %123 = add nsw i64 %35, 1
  %124 = load i64, ptr %13, align 8, !tbaa !60
  %125 = icmp slt i64 %35, %124
  br i1 %125, label %34, label %126

126:                                              ; preds = %122
  %127 = load i64, ptr %12, align 8, !tbaa !60
  br label %128

128:                                              ; preds = %126, %30
  %129 = phi i64 [ %32, %30 ], [ %127, %126 ]
  %130 = phi i64 [ %31, %30 ], [ %124, %126 ]
  %131 = load i64, ptr %14, align 8, !tbaa !60
  %132 = add nsw i64 %131, %129
  store i64 %132, ptr %12, align 8, !tbaa !60
  %133 = add nsw i64 %131, %130
  %134 = call i64 @llvm.smin.i64(i64 %133, i64 %22)
  store i64 %134, ptr %13, align 8, !tbaa !60
  %135 = icmp sgt i64 %132, %134
  br i1 %135, label %136, label %30

136:                                              ; preds = %128, %24
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  br label %137

137:                                              ; preds = %136, %11
  ret void
}

; Function Attrs: optsize
declare void @ConvertRGBToHCL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHCLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHCLp(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHCLpToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHSI(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHSIToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHSL(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHSLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHSV(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHSVToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToHWB(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertHWBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToLCHab(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertLCHabToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertRGBToLCHuv(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ConvertLCHuvToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NegateImage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @NegateImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1) #17
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NegateImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %4, align 8, !tbaa !27
  store i32 %1, ptr %5, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !29
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4011, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #18
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32, ptr %0, align 8, !tbaa !30
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %67

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %22 = load i64, ptr %21, align 8, !tbaa !31
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = icmp eq i32 %2, 0
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %27 = and i32 %1, 1
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %1, 2
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %1, 4
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %24, %64
  %34 = phi i64 [ 0, %24 ], [ %65, %64 ]
  br i1 %25, label %46, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %26, align 8, !tbaa !32
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %34, i32 2
  %38 = load i16, ptr %37, align 2, !tbaa !33
  %39 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %34, i32 1
  %40 = load i16, ptr %39, align 2, !tbaa !34
  %41 = icmp eq i16 %38, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %36, i64 %34
  %44 = load i16, ptr %43, align 2, !tbaa !35
  %45 = icmp eq i16 %38, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42, %33
  br i1 %28, label %52, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %26, align 8, !tbaa !32
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 %34, i32 2
  %50 = load i16, ptr %49, align 2, !tbaa !33
  %51 = xor i16 %50, -1
  store i16 %51, ptr %49, align 2, !tbaa !33
  br label %52

52:                                               ; preds = %47, %46
  br i1 %30, label %58, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %26, align 8, !tbaa !32
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 %34, i32 1
  %56 = load i16, ptr %55, align 2, !tbaa !34
  %57 = xor i16 %56, -1
  store i16 %57, ptr %55, align 2, !tbaa !34
  br label %58

58:                                               ; preds = %53, %52
  br i1 %32, label %64, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr %26, align 8, !tbaa !32
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %60, i64 %34
  %62 = load i16, ptr %61, align 2, !tbaa !35
  %63 = xor i16 %62, -1
  store i16 %63, ptr %61, align 2, !tbaa !35
  br label %64

64:                                               ; preds = %58, %59, %35, %42
  %65 = add nuw nsw i64 %34, 1
  %66 = icmp eq i64 %65, %22
  br i1 %66, label %67, label %33, !llvm.loop !155

67:                                               ; preds = %64, %20, %17
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %69 = tail call i32 @AccelerateNegateImageChannel(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %68) #18
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %116, label %71

71:                                               ; preds = %67
  store i32 1, ptr %8, align 4, !tbaa !28
  store i64 0, ptr %9, align 8, !tbaa !39
  store ptr %68, ptr %7, align 8, !tbaa !27
  %72 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %68) #18
  store ptr %72, ptr %6, align 8, !tbaa !27
  %73 = icmp eq i32 %2, 0
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %75 = load i64, ptr %74, align 8, !tbaa !40
  %76 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %77 = shl i64 %76, 5
  %78 = icmp ugt i64 %75, %77
  br i1 %73, label %97, label %79

79:                                               ; preds = %71
  br i1 %78, label %80, label %88

80:                                               ; preds = %79
  %81 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %92

88:                                               ; preds = %83, %80, %79
  %89 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %90 = icmp ult i64 %89, 2
  %91 = select i1 %90, i64 1, i64 2
  br label %92

92:                                               ; preds = %88, %86
  %93 = phi i64 [ %87, %86 ], [ %91, %88 ]
  %94 = trunc i64 %93 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %10, i32 %94)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @NegateImageChannel.omp_outlined, ptr nonnull %4, ptr nonnull %8, ptr nonnull %6, ptr nonnull %7, ptr nonnull %5, ptr nonnull %9)
  %95 = load ptr, ptr %6, align 8, !tbaa !27
  %96 = call ptr @DestroyCacheView(ptr noundef %95) #18
  br label %116

97:                                               ; preds = %71
  br i1 %78, label %98, label %106

98:                                               ; preds = %97
  %99 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %110

106:                                              ; preds = %101, %98, %97
  %107 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %108 = icmp ult i64 %107, 2
  %109 = select i1 %108, i64 1, i64 2
  br label %110

110:                                              ; preds = %106, %104
  %111 = phi i64 [ %105, %104 ], [ %109, %106 ]
  %112 = trunc i64 %111 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %10, i32 %112)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @NegateImageChannel.omp_outlined.37, ptr nonnull %4, ptr nonnull %8, ptr nonnull %6, ptr nonnull %7, ptr nonnull %5, ptr nonnull %9)
  %113 = load ptr, ptr %6, align 8, !tbaa !27
  %114 = call ptr @DestroyCacheView(ptr noundef %113) #18
  %115 = load i32, ptr %8, align 4, !tbaa !28
  br label %116

116:                                              ; preds = %67, %110, %92
  %117 = phi i32 [ 1, %92 ], [ %115, %110 ], [ 1, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret i32 %117
}

; Function Attrs: optsize
declare i32 @AccelerateNegateImageChannel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @NegateImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull align 8 dereferenceable(8) %7) #7 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !40
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %134

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 %16, ptr %10, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 1, ptr %11, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  store i32 0, ptr %12, align 4, !tbaa !28
  %19 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %10, align 8, !tbaa !60
  %22 = load i64, ptr %9, align 8, !tbaa !60
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %133, label %24

24:                                               ; preds = %18, %125
  %25 = phi i64 [ %131, %125 ], [ %21, %18 ]
  %26 = phi i64 [ %129, %125 ], [ %22, %18 ]
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %125, label %28

28:                                               ; preds = %24, %119
  %29 = phi i64 [ %120, %119 ], [ %26, %24 ]
  %30 = load i32, ptr %3, align 4, !tbaa !28
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %119, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !27
  %34 = load ptr, ptr %2, align 8, !tbaa !27
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !61
  %37 = load ptr, ptr %5, align 8, !tbaa !27
  %38 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %29, i64 noundef %36, i64 noundef 1, ptr noundef %37) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %118, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %4, align 8, !tbaa !27
  %42 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %41) #18
  %43 = load ptr, ptr %2, align 8, !tbaa !27
  %44 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !61
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %99

47:                                               ; preds = %40
  %48 = load i32, ptr %6, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  %51 = insertelement <4 x i32> poison, i32 %48, i64 0
  %52 = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> zeroinitializer
  %53 = and <4 x i32> %52, <i32 32, i32 8, i32 4, i32 2>
  %54 = icmp eq <4 x i32> %53, zeroinitializer
  %55 = getelementptr inbounds %struct._Image, ptr %43, i64 0, i32 1
  %56 = icmp eq ptr %42, null
  %57 = extractelement <4 x i1> %54, i64 0
  %58 = extractelement <4 x i1> %54, i64 1
  %59 = extractelement <4 x i1> %54, i64 2
  %60 = extractelement <4 x i1> %54, i64 3
  br label %61

61:                                               ; preds = %47, %95
  %62 = phi i64 [ 0, %47 ], [ %97, %95 ]
  %63 = phi ptr [ %38, %47 ], [ %96, %95 ]
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 2
  %65 = load i16, ptr %64, align 2, !tbaa !33
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 1
  %67 = load i16, ptr %66, align 2, !tbaa !34
  %68 = icmp eq i16 %65, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %61
  %70 = load i16, ptr %63, align 2, !tbaa !35
  %71 = icmp eq i16 %65, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  br i1 %50, label %75, label %73

73:                                               ; preds = %72
  %74 = xor i16 %65, -1
  store i16 %74, ptr %64, align 2, !tbaa !33
  br label %75

75:                                               ; preds = %73, %72
  br i1 %60, label %78, label %76

76:                                               ; preds = %75
  %77 = xor i16 %65, -1
  store i16 %77, ptr %66, align 2, !tbaa !34
  br label %78

78:                                               ; preds = %76, %75
  br i1 %59, label %81, label %79

79:                                               ; preds = %78
  %80 = xor i16 %65, -1
  store i16 %80, ptr %63, align 2, !tbaa !35
  br label %81

81:                                               ; preds = %79, %78
  br i1 %58, label %86, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 0, i32 3
  %84 = load i16, ptr %83, align 2, !tbaa !36
  %85 = xor i16 %84, -1
  store i16 %85, ptr %83, align 2, !tbaa !36
  br label %86

86:                                               ; preds = %82, %81
  br i1 %57, label %95, label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %55, align 4, !tbaa !26
  %89 = icmp ne i32 %88, 12
  %90 = select i1 %89, i1 true, i1 %56
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds i16, ptr %42, i64 %62
  %93 = load i16, ptr %92, align 2, !tbaa !76
  %94 = xor i16 %93, -1
  store i16 %94, ptr %92, align 2, !tbaa !76
  br label %95

95:                                               ; preds = %86, %87, %91, %61, %69
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %63, i64 1
  %97 = add nuw nsw i64 %62, 1
  %98 = icmp eq i64 %97, %45
  br i1 %98, label %99, label %61, !llvm.loop !156

99:                                               ; preds = %95, %40
  %100 = load ptr, ptr %4, align 8, !tbaa !27
  %101 = load ptr, ptr %5, align 8, !tbaa !27
  %102 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %100, ptr noundef %101) #20
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %105

105:                                              ; preds = %104, %99
  %106 = load ptr, ptr %2, align 8, !tbaa !27
  %107 = getelementptr inbounds %struct._Image, ptr %106, i64 0, i32 47
  %108 = load ptr, ptr %107, align 8, !tbaa !63
  %109 = icmp eq ptr %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %105
  call void @__kmpc_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_NegateImageChannel.var)
  %111 = load ptr, ptr %2, align 8, !tbaa !27
  %112 = load i64, ptr %7, align 8, !tbaa !39
  %113 = add nsw i64 %112, 1
  store i64 %113, ptr %7, align 8, !tbaa !39
  %114 = getelementptr inbounds %struct._Image, ptr %111, i64 0, i32 8
  %115 = load i64, ptr %114, align 8, !tbaa !40
  %116 = call fastcc i32 @SetImageProgress(ptr noundef %111, ptr noundef nonnull @.str.36, i64 noundef %112, i64 noundef %115) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_NegateImageChannel.var)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110, %32
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %119

119:                                              ; preds = %118, %105, %110, %28
  %120 = add nsw i64 %29, 1
  %121 = load i64, ptr %10, align 8, !tbaa !60
  %122 = icmp slt i64 %29, %121
  br i1 %122, label %28, label %123

123:                                              ; preds = %119
  %124 = load i64, ptr %9, align 8, !tbaa !60
  br label %125

125:                                              ; preds = %123, %24
  %126 = phi i64 [ %26, %24 ], [ %124, %123 ]
  %127 = phi i64 [ %25, %24 ], [ %121, %123 ]
  %128 = load i64, ptr %11, align 8, !tbaa !60
  %129 = add nsw i64 %128, %126
  store i64 %129, ptr %9, align 8, !tbaa !60
  %130 = add nsw i64 %128, %127
  %131 = call i64 @llvm.smin.i64(i64 %130, i64 %16)
  store i64 %131, ptr %10, align 8, !tbaa !60
  %132 = icmp sgt i64 %129, %131
  br i1 %132, label %133, label %24

133:                                              ; preds = %125, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br label %134

134:                                              ; preds = %133, %8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @NegateImageChannel.omp_outlined.37(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull align 8 dereferenceable(8) %7) #7 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load ptr, ptr %2, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct._Image, ptr %13, i64 0, i32 8
  %15 = load i64, ptr %14, align 8, !tbaa !40
  %16 = add nsw i64 %15, -1
  %17 = icmp sgt i64 %15, 0
  br i1 %17, label %18, label %149

18:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 %16, ptr %10, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 1, ptr %11, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  store i32 0, ptr %12, align 4, !tbaa !28
  %19 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %19, i32 33, ptr nonnull %12, ptr nonnull %9, ptr nonnull %10, ptr nonnull %11, i64 1, i64 4)
  %20 = load i64, ptr %10, align 8
  %21 = call i64 @llvm.smin.i64(i64 %20, i64 %16)
  store i64 %21, ptr %10, align 8, !tbaa !60
  %22 = load i64, ptr %9, align 8, !tbaa !60
  %23 = icmp sgt i64 %22, %21
  br i1 %23, label %148, label %24

24:                                               ; preds = %18, %140
  %25 = phi i64 [ %146, %140 ], [ %21, %18 ]
  %26 = phi i64 [ %144, %140 ], [ %22, %18 ]
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %140, label %28

28:                                               ; preds = %24, %134
  %29 = phi i64 [ %135, %134 ], [ %26, %24 ]
  %30 = load i32, ptr %3, align 4, !tbaa !28
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %134, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !27
  %34 = load ptr, ptr %2, align 8, !tbaa !27
  %35 = getelementptr inbounds %struct._Image, ptr %34, i64 0, i32 7
  %36 = load i64, ptr %35, align 8, !tbaa !61
  %37 = load ptr, ptr %5, align 8, !tbaa !27
  %38 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %33, i64 noundef 0, i64 noundef %29, i64 noundef %36, i64 noundef 1, ptr noundef %37) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %133, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %4, align 8, !tbaa !27
  %42 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %41) #18
  %43 = load i32, ptr %6, align 4, !tbaa !28
  %44 = icmp eq i32 %43, 134217719
  %45 = load ptr, ptr %2, align 8, !tbaa !27
  %46 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 7
  %47 = load i64, ptr %46, align 8, !tbaa !61
  %48 = icmp sgt i64 %47, 0
  br i1 %44, label %59, label %49

49:                                               ; preds = %40
  br i1 %48, label %50, label %94

50:                                               ; preds = %49
  %51 = insertelement <4 x i32> poison, i32 %43, i64 0
  %52 = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> zeroinitializer
  %53 = and <4 x i32> %52, <i32 8, i32 4, i32 2, i32 1>
  %54 = icmp eq <4 x i32> %53, zeroinitializer
  %55 = extractelement <4 x i1> %54, i64 0
  %56 = extractelement <4 x i1> %54, i64 1
  %57 = extractelement <4 x i1> %54, i64 2
  %58 = extractelement <4 x i1> %54, i64 3
  br label %70

59:                                               ; preds = %40
  br i1 %48, label %60, label %97

60:                                               ; preds = %59, %60
  %61 = phi i64 [ %68, %60 ], [ 0, %59 ]
  %62 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 %61
  %63 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 %61, i32 2
  %64 = load i16, ptr %63, align 2, !tbaa !33
  %65 = xor i16 %64, -1
  store i16 %65, ptr %63, align 2, !tbaa !33
  %66 = load <2 x i16>, ptr %62, align 2, !tbaa !76
  %67 = xor <2 x i16> %66, <i16 -1, i16 -1>
  store <2 x i16> %67, ptr %62, align 2, !tbaa !76
  %68 = add nuw nsw i64 %61, 1
  %69 = icmp eq i64 %68, %47
  br i1 %69, label %94, label %60, !llvm.loop !157

70:                                               ; preds = %50, %91
  %71 = phi i64 [ 0, %50 ], [ %92, %91 ]
  br i1 %58, label %76, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 %71, i32 2
  %74 = load i16, ptr %73, align 2, !tbaa !33
  %75 = xor i16 %74, -1
  store i16 %75, ptr %73, align 2, !tbaa !33
  br label %76

76:                                               ; preds = %72, %70
  br i1 %57, label %81, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 %71, i32 1
  %79 = load i16, ptr %78, align 2, !tbaa !34
  %80 = xor i16 %79, -1
  store i16 %80, ptr %78, align 2, !tbaa !34
  br label %81

81:                                               ; preds = %77, %76
  br i1 %56, label %86, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 %71
  %84 = load i16, ptr %83, align 2, !tbaa !35
  %85 = xor i16 %84, -1
  store i16 %85, ptr %83, align 2, !tbaa !35
  br label %86

86:                                               ; preds = %82, %81
  br i1 %55, label %91, label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %38, i64 %71, i32 3
  %89 = load i16, ptr %88, align 2, !tbaa !36
  %90 = xor i16 %89, -1
  store i16 %90, ptr %88, align 2, !tbaa !36
  br label %91

91:                                               ; preds = %86, %87
  %92 = add nuw nsw i64 %71, 1
  %93 = icmp eq i64 %92, %47
  br i1 %93, label %94, label %70, !llvm.loop !158

94:                                               ; preds = %91, %60, %49
  %95 = and i32 %43, 32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %59, %94
  %98 = getelementptr inbounds %struct._Image, ptr %45, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !26
  %100 = icmp eq i32 %99, 12
  %101 = icmp sgt i64 %47, 0
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = icmp eq ptr %42, null
  br label %105

105:                                              ; preds = %103, %111
  %106 = phi i64 [ 0, %103 ], [ %112, %111 ]
  br i1 %104, label %111, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds i16, ptr %42, i64 %106
  %109 = load i16, ptr %108, align 2, !tbaa !76
  %110 = xor i16 %109, -1
  store i16 %110, ptr %108, align 2, !tbaa !76
  br label %111

111:                                              ; preds = %105, %107
  %112 = add nuw nsw i64 %106, 1
  %113 = icmp eq i64 %112, %47
  br i1 %113, label %114, label %105, !llvm.loop !159

114:                                              ; preds = %111, %97, %94
  %115 = load ptr, ptr %4, align 8, !tbaa !27
  %116 = load ptr, ptr %5, align 8, !tbaa !27
  %117 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %115, ptr noundef %116) #20
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %120

120:                                              ; preds = %119, %114
  %121 = load ptr, ptr %2, align 8, !tbaa !27
  %122 = getelementptr inbounds %struct._Image, ptr %121, i64 0, i32 47
  %123 = load ptr, ptr %122, align 8, !tbaa !63
  %124 = icmp eq ptr %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %120
  call void @__kmpc_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_NegateImageChannel.var)
  %126 = load ptr, ptr %2, align 8, !tbaa !27
  %127 = load i64, ptr %7, align 8, !tbaa !39
  %128 = add nsw i64 %127, 1
  store i64 %128, ptr %7, align 8, !tbaa !39
  %129 = getelementptr inbounds %struct._Image, ptr %126, i64 0, i32 8
  %130 = load i64, ptr %129, align 8, !tbaa !40
  %131 = call fastcc i32 @SetImageProgress(ptr noundef %126, ptr noundef nonnull @.str.36, i64 noundef %127, i64 noundef %130) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %19, ptr nonnull @.gomp_critical_user_MagickCore_NegateImageChannel.var)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125, %32
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %134

134:                                              ; preds = %133, %120, %125, %28
  %135 = add nsw i64 %29, 1
  %136 = load i64, ptr %10, align 8, !tbaa !60
  %137 = icmp slt i64 %29, %136
  br i1 %137, label %28, label %138

138:                                              ; preds = %134
  %139 = load i64, ptr %9, align 8, !tbaa !60
  br label %140

140:                                              ; preds = %138, %24
  %141 = phi i64 [ %26, %24 ], [ %139, %138 ]
  %142 = phi i64 [ %25, %24 ], [ %136, %138 ]
  %143 = load i64, ptr %11, align 8, !tbaa !60
  %144 = add nsw i64 %143, %141
  store i64 %144, ptr %9, align 8, !tbaa !60
  %145 = add nsw i64 %143, %142
  %146 = call i64 @llvm.smin.i64(i64 %145, i64 %16)
  store i64 %146, ptr %10, align 8, !tbaa !60
  %147 = icmp sgt i64 %144, %146
  br i1 %147, label %148, label %24

148:                                              ; preds = %140, %18
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  br label %149

149:                                              ; preds = %148, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NormalizeImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @NormalizeImageChannel(ptr noundef %0, i32 noundef 134217719) #17
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @NormalizeImageChannel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %4 = load <2 x i64>, ptr %3, align 8, !tbaa !60
  %5 = uitofp <2 x i64> %4 to <2 x double>
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %7 = fmul <2 x double> %6, %5
  %8 = extractelement <2 x double> %7, i64 0
  %9 = fmul double %8, 1.500000e-03
  %10 = fmul double %8, 9.995000e-01
  %11 = tail call i32 @ContrastStretchImageChannel(ptr noundef %0, i32 noundef %1, double noundef %9, double noundef %10) #17
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SigmoidalContrastImage(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8
  %5 = call i32 @ParseGeometry(ptr noundef %2, ptr noundef nonnull %4) #18
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  store double 3.276750e+04, ptr %9, align 8, !tbaa !116
  br label %10

10:                                               ; preds = %8, %3
  %11 = and i32 %5, 4096
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._GeometryInfo, ptr %4, i64 0, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !116
  br i1 %12, label %18, label %15

15:                                               ; preds = %10
  %16 = fmul double %14, 6.553500e+04
  %17 = fdiv double %16, 1.000000e+02
  store double %17, ptr %13, align 8, !tbaa !116
  br label %18

18:                                               ; preds = %10, %15
  %19 = phi double [ %17, %15 ], [ %14, %10 ]
  %20 = load double, ptr %4, align 8, !tbaa !83
  %21 = call i32 @SigmoidalContrastImageChannel(ptr noundef %0, i32 noundef 134217719, i32 noundef %1, double noundef %20, double noundef %19) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @SigmoidalContrastImageChannel(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %6, align 8, !tbaa !27
  store i32 %1, ptr %7, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  %14 = fcmp olt double %3, 1.000000e-15
  br i1 %14, label %161, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4423, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #18
  br label %22

22:                                               ; preds = %19, %15
  %23 = tail call dereferenceable_or_null(262144) ptr @AcquireQuantumMemory(i64 noundef 65536, i64 noundef 4) #19
  store ptr %23, ptr %12, align 8, !tbaa !27
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4428, i32 noundef 400, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %27) #18
  br label %161

29:                                               ; preds = %22
  %30 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %23, i32 noundef 0, i64 noundef 262144) #18
  %31 = icmp eq i32 %2, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = fmul double %3, 5.000000e-01
  %34 = tail call double @llvm.fmuladd.f64(double %4, double 0xBEF0001000100010, double 0.000000e+00)
  %35 = fmul double %33, %34
  %36 = tail call double @llvm.fmuladd.f64(double %4, double 0xBEF0001000100010, double 1.000000e+00)
  %37 = fmul double %33, %36
  br label %40

38:                                               ; preds = %29
  %39 = fmul double %4, 0x3EF0001000100010
  br label %60

40:                                               ; preds = %32, %40
  %41 = phi i64 [ 0, %32 ], [ %58, %40 ]
  %42 = sitofp i64 %41 to double
  %43 = fdiv double %42, 6.553500e+04
  %44 = tail call double @llvm.fmuladd.f64(double %4, double 0xBEF0001000100010, double %43)
  %45 = fmul double %33, %44
  %46 = tail call double @tanh(double noundef %45) #18
  %47 = tail call double @tanh(double noundef %35) #18
  %48 = fsub double %46, %47
  %49 = tail call double @tanh(double noundef %37) #18
  %50 = tail call double @tanh(double noundef %35) #18
  %51 = fsub double %49, %50
  %52 = fdiv double %48, %51
  %53 = fmul double %52, 6.553500e+04
  %54 = fptrunc double %53 to float
  %55 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %54) #17
  %56 = uitofp i16 %55 to float
  %57 = getelementptr inbounds float, ptr %23, i64 %41
  store float %56, ptr %57, align 4, !tbaa !79
  %58 = add nuw nsw i64 %41, 1
  %59 = icmp eq i64 %58, 65536
  br i1 %59, label %72, label %40, !llvm.loop !160

60:                                               ; preds = %38, %60
  %61 = phi i64 [ 0, %38 ], [ %70, %60 ]
  %62 = sitofp i64 %61 to double
  %63 = fdiv double %62, 6.553500e+04
  %64 = tail call fastcc double @InverseScaledSigmoidal(double noundef %3, double noundef %39, double noundef %63) #17
  %65 = fmul double %64, 6.553500e+04
  %66 = fptrunc double %65 to float
  %67 = tail call fastcc zeroext i16 @ScaleMapToQuantum(float noundef %66) #17
  %68 = uitofp i16 %67 to float
  %69 = getelementptr inbounds float, ptr %23, i64 %61
  store float %68, ptr %69, align 4, !tbaa !79
  %70 = add nuw nsw i64 %61, 1
  %71 = icmp eq i64 %70, 65536
  br i1 %71, label %72, label %60, !llvm.loop !161

72:                                               ; preds = %40, %60
  %73 = load i32, ptr %0, align 8, !tbaa !30
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %133

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %77 = load i64, ptr %76, align 8, !tbaa !31
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %133

79:                                               ; preds = %75
  %80 = and i32 %1, 1
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %83 = and i32 %1, 2
  %84 = icmp eq i32 %83, 0
  %85 = and i32 %1, 4
  %86 = icmp eq i32 %85, 0
  %87 = and i32 %1, 8
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %79, %130
  %90 = phi i64 [ 0, %79 ], [ %131, %130 ]
  br i1 %81, label %100, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr %82, align 8, !tbaa !32
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %92, i64 %90, i32 2
  %94 = load i16, ptr %93, align 2, !tbaa !33
  %95 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %94) #17, !range !58
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds float, ptr %23, i64 %96
  %98 = load float, ptr %97, align 4, !tbaa !79
  %99 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %98) #17
  store i16 %99, ptr %93, align 2, !tbaa !33
  br label %100

100:                                              ; preds = %91, %89
  br i1 %84, label %110, label %101

101:                                              ; preds = %100
  %102 = load ptr, ptr %82, align 8, !tbaa !32
  %103 = getelementptr inbounds %struct._PixelPacket, ptr %102, i64 %90, i32 1
  %104 = load i16, ptr %103, align 2, !tbaa !34
  %105 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %104) #17, !range !58
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds float, ptr %23, i64 %106
  %108 = load float, ptr %107, align 4, !tbaa !79
  %109 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %108) #17
  store i16 %109, ptr %103, align 2, !tbaa !34
  br label %110

110:                                              ; preds = %101, %100
  br i1 %86, label %120, label %111

111:                                              ; preds = %110
  %112 = load ptr, ptr %82, align 8, !tbaa !32
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %112, i64 %90
  %114 = load i16, ptr %113, align 2, !tbaa !35
  %115 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %114) #17, !range !58
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds float, ptr %23, i64 %116
  %118 = load float, ptr %117, align 4, !tbaa !79
  %119 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %118) #17
  store i16 %119, ptr %113, align 2, !tbaa !35
  br label %120

120:                                              ; preds = %111, %110
  br i1 %88, label %130, label %121

121:                                              ; preds = %120
  %122 = load ptr, ptr %82, align 8, !tbaa !32
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 %90, i32 3
  %124 = load i16, ptr %123, align 2, !tbaa !36
  %125 = tail call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %124) #17, !range !58
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds float, ptr %23, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !79
  %129 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %128) #17
  store i16 %129, ptr %123, align 2, !tbaa !36
  br label %130

130:                                              ; preds = %120, %121
  %131 = add nuw nsw i64 %90, 1
  %132 = icmp eq i64 %131, %77
  br i1 %132, label %133, label %89, !llvm.loop !162

133:                                              ; preds = %130, %75, %72
  store i32 1, ptr %10, align 4, !tbaa !28
  store i64 0, ptr %11, align 8, !tbaa !39
  %134 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store ptr %134, ptr %9, align 8, !tbaa !27
  %135 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %0, ptr noundef nonnull %134) #18
  store ptr %135, ptr %8, align 8, !tbaa !27
  %136 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %137 = load i64, ptr %136, align 8, !tbaa !40
  %138 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %139 = shl i64 %138, 5
  %140 = icmp ugt i64 %137, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %133
  %142 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %143 = icmp eq i32 %142, 3
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #18
  %146 = icmp eq i32 %145, 3
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  br label %153

149:                                              ; preds = %144, %141, %133
  %150 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #18
  %151 = icmp ult i64 %150, 2
  %152 = select i1 %151, i64 1, i64 2
  br label %153

153:                                              ; preds = %149, %147
  %154 = phi i64 [ %148, %147 ], [ %152, %149 ]
  %155 = trunc i64 %154 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %155)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @SigmoidalContrastImageChannel.omp_outlined, ptr nonnull %6, ptr nonnull %10, ptr nonnull %8, ptr nonnull %9, ptr nonnull %7, ptr nonnull %12, ptr nonnull %11)
  %156 = load ptr, ptr %8, align 8, !tbaa !27
  %157 = call ptr @DestroyCacheView(ptr noundef %156) #18
  store ptr %157, ptr %8, align 8, !tbaa !27
  %158 = load ptr, ptr %12, align 8, !tbaa !27
  %159 = call ptr @RelinquishMagickMemory(ptr noundef %158) #18
  %160 = load i32, ptr %10, align 4, !tbaa !28
  br label %161

161:                                              ; preds = %25, %5, %153
  %162 = phi i32 [ %160, %153 ], [ 1, %5 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  ret i32 %162
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tanh(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @InverseScaledSigmoidal(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #15 {
  %4 = fmul double %0, 5.000000e-01
  %5 = fsub double 0.000000e+00, %1
  %6 = fmul double %4, %5
  %7 = tail call double @tanh(double noundef %6) #18
  %8 = fsub double 1.000000e+00, %1
  %9 = fmul double %4, %8
  %10 = tail call double @tanh(double noundef %9) #18
  %11 = fsub double %10, %7
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %2, double %7)
  %13 = fcmp olt double %12, 0xBFEFFFFFFFFFFFF7
  %14 = fcmp ogt double %12, 0x3FEFFFFFFFFFFFF7
  %15 = select i1 %14, double 0x3FEFFFFFFFFFFFF7, double %12
  %16 = select i1 %13, double 0xBFEFFFFFFFFFFFF7, double %15
  %17 = fdiv double 2.000000e+00, %0
  %18 = tail call double @atanh(double noundef %16) #18
  %19 = tail call double @llvm.fmuladd.f64(double %17, double %18, double %1)
  ret double %19
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SigmoidalContrastImageChannel.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #7 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load ptr, ptr %2, align 8, !tbaa !27
  %15 = getelementptr inbounds %struct._Image, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !40
  %17 = add nsw i64 %16, -1
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %19, label %152

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store i64 0, ptr %10, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  store i64 %17, ptr %11, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store i64 1, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !tbaa !28
  %20 = load i32, ptr %0, align 4, !tbaa !28
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %20, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %21 = load i64, ptr %11, align 8
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 %17)
  store i64 %22, ptr %11, align 8, !tbaa !60
  %23 = load i64, ptr %10, align 8, !tbaa !60
  %24 = icmp sgt i64 %23, %22
  br i1 %24, label %151, label %25

25:                                               ; preds = %19, %143
  %26 = phi i64 [ %149, %143 ], [ %22, %19 ]
  %27 = phi i64 [ %147, %143 ], [ %23, %19 ]
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %143, label %29

29:                                               ; preds = %25, %137
  %30 = phi i64 [ %138, %137 ], [ %27, %25 ]
  %31 = load i32, ptr %3, align 4, !tbaa !28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %137, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !27
  %35 = load ptr, ptr %2, align 8, !tbaa !27
  %36 = getelementptr inbounds %struct._Image, ptr %35, i64 0, i32 7
  %37 = load i64, ptr %36, align 8, !tbaa !61
  %38 = load ptr, ptr %5, align 8, !tbaa !27
  %39 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %34, i64 noundef 0, i64 noundef %30, i64 noundef %37, i64 noundef 1, ptr noundef %38) #20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %136, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !tbaa !27
  %43 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %42) #18
  %44 = load ptr, ptr %2, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !61
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %117

48:                                               ; preds = %41
  %49 = load i32, ptr %6, align 4, !tbaa !28
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %7, align 8
  %53 = insertelement <4 x i32> poison, i32 %49, i64 0
  %54 = shufflevector <4 x i32> %53, <4 x i32> poison, <4 x i32> zeroinitializer
  %55 = and <4 x i32> %54, <i32 32, i32 8, i32 4, i32 2>
  %56 = icmp eq <4 x i32> %55, zeroinitializer
  %57 = getelementptr inbounds %struct._Image, ptr %44, i64 0, i32 1
  %58 = icmp eq ptr %43, null
  %59 = extractelement <4 x i1> %56, i64 0
  %60 = extractelement <4 x i1> %56, i64 1
  %61 = extractelement <4 x i1> %56, i64 2
  %62 = extractelement <4 x i1> %56, i64 3
  br label %63

63:                                               ; preds = %48, %113
  %64 = phi i64 [ 0, %48 ], [ %115, %113 ]
  %65 = phi ptr [ %39, %48 ], [ %114, %113 ]
  br i1 %51, label %74, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 2
  %68 = load i16, ptr %67, align 2, !tbaa !33
  %69 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %68) #17, !range !58
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds float, ptr %52, i64 %70
  %72 = load float, ptr %71, align 4, !tbaa !79
  %73 = call fastcc zeroext i16 @ClampToQuantum(float noundef %72) #17
  store i16 %73, ptr %67, align 2, !tbaa !33
  br label %74

74:                                               ; preds = %66, %63
  br i1 %62, label %83, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !34
  %78 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %77) #17, !range !58
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %52, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !79
  %82 = call fastcc zeroext i16 @ClampToQuantum(float noundef %81) #17
  store i16 %82, ptr %76, align 2, !tbaa !34
  br label %83

83:                                               ; preds = %75, %74
  br i1 %61, label %91, label %84

84:                                               ; preds = %83
  %85 = load i16, ptr %65, align 2, !tbaa !35
  %86 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %85) #17, !range !58
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds float, ptr %52, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !79
  %90 = call fastcc zeroext i16 @ClampToQuantum(float noundef %89) #17
  store i16 %90, ptr %65, align 2, !tbaa !35
  br label %91

91:                                               ; preds = %84, %83
  br i1 %60, label %100, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 3
  %94 = load i16, ptr %93, align 2, !tbaa !36
  %95 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %94) #17, !range !58
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds float, ptr %52, i64 %96
  %98 = load float, ptr %97, align 4, !tbaa !79
  %99 = call fastcc zeroext i16 @ClampToQuantum(float noundef %98) #17
  store i16 %99, ptr %93, align 2, !tbaa !36
  br label %100

100:                                              ; preds = %92, %91
  br i1 %59, label %113, label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %57, align 4, !tbaa !26
  %103 = icmp ne i32 %102, 12
  %104 = select i1 %103, i1 true, i1 %58
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds i16, ptr %43, i64 %64
  %107 = load i16, ptr %106, align 2, !tbaa !76
  %108 = call fastcc i32 @ScaleQuantumToMap(i16 noundef zeroext %107) #17, !range !58
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds float, ptr %52, i64 %109
  %111 = load float, ptr %110, align 4, !tbaa !79
  %112 = call fastcc zeroext i16 @ClampToQuantum(float noundef %111) #17
  store i16 %112, ptr %106, align 2, !tbaa !76
  br label %113

113:                                              ; preds = %105, %101, %100
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 1
  %115 = add nuw nsw i64 %64, 1
  %116 = icmp eq i64 %115, %46
  br i1 %116, label %117, label %63, !llvm.loop !163

117:                                              ; preds = %113, %41
  %118 = load ptr, ptr %4, align 8, !tbaa !27
  %119 = load ptr, ptr %5, align 8, !tbaa !27
  %120 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %118, ptr noundef %119) #20
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %123

123:                                              ; preds = %122, %117
  %124 = load ptr, ptr %2, align 8, !tbaa !27
  %125 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 47
  %126 = load ptr, ptr %125, align 8, !tbaa !63
  %127 = icmp eq ptr %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %123
  call void @__kmpc_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_SigmoidalContrastImageChannel.var)
  %129 = load ptr, ptr %2, align 8, !tbaa !27
  %130 = load i64, ptr %8, align 8, !tbaa !39
  %131 = add nsw i64 %130, 1
  store i64 %131, ptr %8, align 8, !tbaa !39
  %132 = getelementptr inbounds %struct._Image, ptr %129, i64 0, i32 8
  %133 = load i64, ptr %132, align 8, !tbaa !40
  %134 = call fastcc i32 @SetImageProgress(ptr noundef %129, ptr noundef nonnull @.str.38, i64 noundef %130, i64 noundef %133) #17
  call void @__kmpc_end_critical(ptr nonnull @2, i32 %20, ptr nonnull @.gomp_critical_user_MagickCore_SigmoidalContrastImageChannel.var)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128, %33
  store i32 0, ptr %3, align 4, !tbaa !28
  br label %137

137:                                              ; preds = %136, %123, %128, %29
  %138 = add nsw i64 %30, 1
  %139 = load i64, ptr %11, align 8, !tbaa !60
  %140 = icmp slt i64 %30, %139
  br i1 %140, label %29, label %141

141:                                              ; preds = %137
  %142 = load i64, ptr %10, align 8, !tbaa !60
  br label %143

143:                                              ; preds = %141, %25
  %144 = phi i64 [ %27, %25 ], [ %142, %141 ]
  %145 = phi i64 [ %26, %25 ], [ %139, %141 ]
  %146 = load i64, ptr %12, align 8, !tbaa !60
  %147 = add nsw i64 %146, %144
  store i64 %147, ptr %10, align 8, !tbaa !60
  %148 = add nsw i64 %146, %145
  %149 = call i64 @llvm.smin.i64(i64 %148, i64 %17)
  store i64 %149, ptr %11, align 8, !tbaa !60
  %150 = icmp sgt i64 %147, %149
  br i1 %150, label %151, label %25

151:                                              ; preds = %143, %19
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  br label %152

152:                                              ; preds = %151, %9
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atanh(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { convergent nounwind }
attributes #11 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind optsize allocsize(0,1) }
attributes #20 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 32}
!11 = !{!"_Image", !12, i64 0, !12, i64 4, !12, i64 8, !13, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !7, i64 104, !17, i64 112, !12, i64 208, !14, i64 216, !12, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !13, i64 256, !7, i64 264, !7, i64 272, !19, i64 280, !19, i64 312, !19, i64 344, !7, i64 376, !7, i64 384, !7, i64 392, !12, i64 400, !12, i64 404, !12, i64 408, !12, i64 412, !12, i64 416, !12, i64 420, !14, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !20, i64 480, !21, i64 504, !14, i64 568, !14, i64 576, !14, i64 584, !14, i64 592, !14, i64 600, !14, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !13, i64 12904, !13, i64 12912, !23, i64 12920, !12, i64 12976, !13, i64 12984, !14, i64 12992, !24, i64 13000, !24, i64 13032, !14, i64 13064, !13, i64 13072, !13, i64 13080, !14, i64 13088, !14, i64 13096, !14, i64 13104, !12, i64 13112, !12, i64 13116, !15, i64 13120, !14, i64 13128, !19, i64 13136, !14, i64 13168, !14, i64 13176, !12, i64 13184, !12, i64 13188, !25, i64 13192, !12, i64 13200, !13, i64 13208, !13, i64 13216, !12, i64 13224, !13, i64 13232}
!12 = !{!"int", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"_PixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6}
!16 = !{!"short", !8, i64 0}
!17 = !{!"_ChromaticityInfo", !18, i64 0, !18, i64 24, !18, i64 48, !18, i64 72}
!18 = !{!"_PrimaryInfo", !7, i64 0, !7, i64 8, !7, i64 16}
!19 = !{!"_RectangleInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!20 = !{!"_ErrorInfo", !7, i64 0, !7, i64 8, !7, i64 16}
!21 = !{!"_TimerInfo", !22, i64 0, !22, i64 24, !12, i64 48, !13, i64 56}
!22 = !{!"_Timer", !7, i64 0, !7, i64 8, !7, i64 16}
!23 = !{!"_ExceptionInfo", !12, i64 0, !12, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !12, i64 32, !14, i64 40, !13, i64 48}
!24 = !{!"_ProfileInfo", !14, i64 0, !13, i64 8, !14, i64 16, !13, i64 24}
!25 = !{!"long long", !8, i64 0}
!26 = !{!11, !12, i64 4}
!27 = !{!14, !14, i64 0}
!28 = !{!12, !12, i64 0}
!29 = !{!11, !12, i64 12976}
!30 = !{!11, !12, i64 0}
!31 = !{!11, !13, i64 64}
!32 = !{!11, !14, i64 72}
!33 = !{!15, !16, i64 4}
!34 = !{!15, !16, i64 2}
!35 = !{!15, !16, i64 0}
!36 = !{!15, !16, i64 6}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!25, !25, i64 0}
!40 = !{!11, !13, i64 48}
!41 = !{!8, !8, i64 0}
!42 = !{!43, !7, i64 0}
!43 = !{!"_ColorCorrection", !44, i64 0, !44, i64 24, !44, i64 48, !7, i64 72}
!44 = !{!"_Correction", !7, i64 0, !7, i64 8, !7, i64 16}
!45 = !{!43, !7, i64 24}
!46 = !{!43, !7, i64 48}
!47 = distinct !{!47, !38}
!48 = !{!43, !7, i64 8}
!49 = !{!43, !7, i64 32}
!50 = !{!43, !7, i64 56}
!51 = distinct !{!51, !38}
!52 = !{!43, !7, i64 16}
!53 = !{!43, !7, i64 40}
!54 = !{!43, !7, i64 64}
!55 = distinct !{!55, !38}
!56 = !{!43, !7, i64 72}
!57 = distinct !{!57, !38}
!58 = !{i32 -2147483648, i32 65536}
!59 = distinct !{!59, !38}
!60 = !{!13, !13, i64 0}
!61 = !{!11, !13, i64 40}
!62 = distinct !{!62, !38}
!63 = !{!11, !14, i64 568}
!64 = !{!11, !14, i64 576}
!65 = !{!66}
!66 = !{i64 2, i64 -1, i64 -1, i1 true}
!67 = !{i32 0, i32 2}
!68 = !{!11, !12, i64 13112}
!69 = distinct !{!69, !38}
!70 = !{!71, !72, i64 32}
!71 = !{!"_MagickPixelPacket", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 16, !13, i64 24, !72, i64 32, !72, i64 36, !72, i64 40, !72, i64 44, !72, i64 48}
!72 = !{!"float", !8, i64 0}
!73 = !{!71, !72, i64 36}
!74 = !{!71, !72, i64 40}
!75 = !{!71, !72, i64 44}
!76 = !{!16, !16, i64 0}
!77 = !{!71, !72, i64 48}
!78 = distinct !{!78, !38}
!79 = !{!72, !72, i64 0}
!80 = !{!71, !12, i64 4}
!81 = distinct !{!81, !38}
!82 = distinct !{!82, !38}
!83 = !{!84, !7, i64 0}
!84 = !{!"_GeometryInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38}
!89 = distinct !{!89, !38}
!90 = distinct !{!90, !38}
!91 = distinct !{!91, !38}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !38}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38}
!97 = distinct !{!97, !38}
!98 = !{!99, !16, i64 0}
!99 = !{!"_QuantumPixelPacket", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !16, i64 8}
!100 = !{!99, !16, i64 2}
!101 = !{!99, !16, i64 4}
!102 = !{!99, !16, i64 6}
!103 = !{!99, !16, i64 8}
!104 = distinct !{!104, !38}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, !38}
!110 = distinct !{!110, !38}
!111 = distinct !{!111, !38}
!112 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28, i64 16, i64 8, !6, i64 24, i64 8, !60, i64 32, i64 4, !79, i64 36, i64 4, !79, i64 40, i64 4, !79, i64 44, i64 4, !79, i64 48, i64 4, !79}
!113 = distinct !{!113, !38}
!114 = distinct !{!114, !38}
!115 = distinct !{!115, !38}
!116 = !{!84, !7, i64 8}
!117 = !{!84, !7, i64 16}
!118 = distinct !{!118, !38}
!119 = distinct !{!119, !38}
!120 = !{!11, !7, i64 104}
!121 = distinct !{!121, !38}
!122 = distinct !{!122, !38}
!123 = !{!11, !12, i64 13224}
!124 = !{!11, !12, i64 13184}
!125 = distinct !{!125, !38}
!126 = distinct !{!126, !38}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38}
!130 = distinct !{!130, !38}
!131 = distinct !{!131, !38}
!132 = distinct !{!132, !38}
!133 = distinct !{!133, !38}
!134 = distinct !{!134, !38}
!135 = distinct !{!135, !38}
!136 = distinct !{!136, !38}
!137 = distinct !{!137, !38}
!138 = distinct !{!138, !38}
!139 = distinct !{!139, !38}
!140 = distinct !{!140, !38}
!141 = distinct !{!141, !38}
!142 = distinct !{!142, !38}
!143 = distinct !{!143, !38}
!144 = distinct !{!144, !38}
!145 = distinct !{!145, !38}
!146 = distinct !{!146, !38}
!147 = distinct !{!147, !38}
!148 = distinct !{!148, !38}
!149 = distinct !{!149, !38}
!150 = distinct !{!150, !38}
!151 = distinct !{!151, !38}
!152 = distinct !{!152, !38}
!153 = distinct !{!153, !38}
!154 = distinct !{!154, !38}
!155 = distinct !{!155, !38}
!156 = distinct !{!156, !38}
!157 = distinct !{!157, !38}
!158 = distinct !{!158, !38}
!159 = distinct !{!159, !38}
!160 = distinct !{!160, !38}
!161 = distinct !{!161, !38}
!162 = distinct !{!162, !38}
!163 = distinct !{!163, !38}
