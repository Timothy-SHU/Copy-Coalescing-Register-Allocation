; ModuleID = 'magick/pixel.c'
source_filename = "magick/pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._PointInfo = type { double, double }

@.str = private unnamed_addr constant [15 x i8] c"magick/pixel.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"ColorSeparatedImageRequired\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"UnrecognizedPixelMap\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"UnrecognizedStorageType\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"`%d'\00", align 1
@DecodeGamma.powers_of_two = internal unnamed_addr constant [5 x double] [double 1.000000e+00, double 0x40051CB453B9536C, double 0x401BDB8CDADBE11F, double 0x4032611186BAE674, double 0x4048406003B2AE5B], align 16
@EncodeGamma.powers_of_two = internal unnamed_addr constant [12 x double] [double 1.000000e+00, double 0x3FF55B8108F0EC5E, double 0x3FFC823E074EC129, double 0x400306FE0A31B715, double 0x400965FEA53D6E3D, double 0x4010F38F92D97963, double 0x4016A09E667F3BCD, double 0x401E3437E7101344, double 0x402428A2F98D728B, double 0x402AE89F995AD3AE, double 0x4031F59AC3C7D6C0, double 0x4037F910D768CFB1], align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"BGR\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"BGRA\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"BGRP\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RGBP\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"BGRO\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"RGBO\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @CloneMagickPixelPacket(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(56) ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 56) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #21
  call void @GetExceptionInfo(ptr noundef nonnull %2) #22
  %6 = tail call ptr @__errno_location() #23
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #22
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 101, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #22
  %10 = call ptr @DestroyString(ptr noundef %8) #22
  call void @CatchException(ptr noundef nonnull %2) #22
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #22
  call void @MagickCoreTerminus() #22
  call void @_exit(i32 noundef 1) #24
  unreachable

12:                                               ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !9
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: hot mustprogress nofree noinline nounwind optsize willreturn uwtable
define dso_local float @DecodePixelGamma(float noundef %0) local_unnamed_addr #7 {
  %2 = fpext float %0 to double
  %3 = fcmp ugt double %2, 0x40A4B58CE259D3F7
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = fdiv float %0, 0x4029D70A40000000
  br label %12

6:                                                ; preds = %1
  %7 = tail call double @llvm.fmuladd.f64(double %2, double 0x3EF0001000100010, double 5.500000e-02)
  %8 = fdiv double %7, 1.055000e+00
  %9 = tail call fastcc double @DecodeGamma(double noundef %8) #25
  %10 = fmul double %9, 6.553500e+04
  %11 = fptrunc double %10 to float
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi float [ %5, %4 ], [ %11, %6 ]
  ret float %13
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc double @DecodeGamma(double noundef %0) unnamed_addr #8 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  %3 = call double @frexp(double noundef %0, ptr noundef nonnull %2) #22
  %4 = load i32, ptr %2, align 4, !tbaa !5
  %5 = add nsw i32 %4, -1
  %6 = tail call i64 @div(i32 noundef %5, i32 noundef 5) #23
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i64 %6, 0
  %9 = ashr i64 %6, 63
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %10, %7
  %12 = tail call double @llvm.fmuladd.f64(double %3, double 4.000000e+00, double -3.000000e+00)
  %13 = fmul double %12, 2.000000e+00
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %12, double -1.000000e+00)
  %15 = fneg double %12
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %14, double %15)
  %17 = fneg double %14
  %18 = tail call double @llvm.fmuladd.f64(double %13, double %16, double %17)
  %19 = fneg double %16
  %20 = tail call double @llvm.fmuladd.f64(double %13, double %18, double %19)
  %21 = fneg double %18
  %22 = tail call double @llvm.fmuladd.f64(double %13, double %20, double %21)
  %23 = fneg double %20
  %24 = tail call double @llvm.fmuladd.f64(double %13, double %22, double %23)
  %25 = fneg double %22
  %26 = tail call double @llvm.fmuladd.f64(double %13, double %24, double %25)
  %27 = fmul double %12, 0x3FEA412D3E228490
  %28 = fadd double %27, 0x3FFCAB00D9F35BCA
  %29 = tail call double @llvm.fmuladd.f64(double %14, double 0x3F9C5BD7A2F5A808, double %28)
  %30 = tail call double @llvm.fmuladd.f64(double %16, double 0xBF4EE1C9AFEBFD20, double %29)
  %31 = tail call double @llvm.fmuladd.f64(double %18, double 0x3F10DED3C62D07CA, double %30)
  %32 = tail call double @llvm.fmuladd.f64(double %20, double 0xBED8006C750E2F47, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %22, double 0x3EA3B81AB7B960D7, double %32)
  %34 = tail call double @llvm.fmuladd.f64(double %24, double 0xBE71C119C74EC2E0, double %33)
  %35 = tail call double @llvm.fmuladd.f64(double %26, double 0x3E4108D764FFB3F2, double %34)
  %36 = add i64 %6, 21474836480
  %37 = select i1 %8, i64 %36, i64 %6
  %38 = ashr i64 %37, 32
  %39 = getelementptr inbounds [5 x double], ptr @DecodeGamma.powers_of_two, i64 0, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !10
  %41 = fmul double %40, %35
  %42 = mul nsw i32 %11, 7
  %43 = tail call double @ldexp(double noundef %41, i32 noundef %42) #22
  %44 = fmul double %43, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret double %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: hot mustprogress nofree noinline nounwind optsize willreturn uwtable
define dso_local float @EncodePixelGamma(float noundef %0) local_unnamed_addr #7 {
  %2 = fpext float %0 to double
  %3 = fcmp ugt double %2, 0x4069A5632CEAE209
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = fmul float %0, 0x4029D70A40000000
  br label %12

6:                                                ; preds = %1
  %7 = fmul double %2, 0x3EF0001000100010
  %8 = tail call fastcc double @EncodeGamma(double noundef %7) #25
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 1.055000e+00, double -5.500000e-02)
  %10 = fmul double %9, 6.553500e+04
  %11 = fptrunc double %10 to float
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi float [ %5, %4 ], [ %11, %6 ]
  ret float %13
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc double @EncodeGamma(double noundef %0) unnamed_addr #8 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  %3 = call double @frexp(double noundef %0, ptr noundef nonnull %2) #22
  %4 = load i32, ptr %2, align 4, !tbaa !5
  %5 = add nsw i32 %4, -1
  %6 = tail call i64 @div(i32 noundef %5, i32 noundef 12) #23
  %7 = trunc i64 %6 to i32
  %8 = icmp slt i64 %6, 0
  %9 = ashr i64 %6, 63
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %10, %7
  %12 = tail call double @llvm.fmuladd.f64(double %3, double 4.000000e+00, double -3.000000e+00)
  %13 = fmul double %12, 2.000000e+00
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %12, double -1.000000e+00)
  %15 = fneg double %12
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %14, double %15)
  %17 = fneg double %14
  %18 = tail call double @llvm.fmuladd.f64(double %13, double %16, double %17)
  %19 = fneg double %16
  %20 = tail call double @llvm.fmuladd.f64(double %13, double %18, double %19)
  %21 = fneg double %18
  %22 = tail call double @llvm.fmuladd.f64(double %13, double %20, double %21)
  %23 = fneg double %20
  %24 = tail call double @llvm.fmuladd.f64(double %13, double %22, double %23)
  %25 = fneg double %22
  %26 = tail call double @llvm.fmuladd.f64(double %13, double %24, double %25)
  %27 = fmul double %12, 0x3FC555098946F40B
  %28 = fadd double %27, 0x3FF2D028A820DDB5
  %29 = tail call double @llvm.fmuladd.f64(double %14, double 0xBF8107B61B699325, double %28)
  %30 = tail call double @llvm.fmuladd.f64(double %16, double 0x3F48A33981B1F362, double %29)
  %31 = tail call double @llvm.fmuladd.f64(double %18, double 0xBF15D22760B88BEF, double %30)
  %32 = tail call double @llvm.fmuladd.f64(double %20, double 0x3EE573C3D60EF8DD, double %31)
  %33 = tail call double @llvm.fmuladd.f64(double %22, double 0xBEB67B74DD100F57, double %32)
  %34 = tail call double @llvm.fmuladd.f64(double %24, double 0x3E889B50DFE1182E, double %33)
  %35 = tail call double @llvm.fmuladd.f64(double %26, double 0xBE5BC9745AECD534, double %34)
  %36 = add i64 %6, 51539607552
  %37 = select i1 %8, i64 %36, i64 %6
  %38 = ashr i64 %37, 32
  %39 = getelementptr inbounds [12 x double], ptr @EncodeGamma.powers_of_two, i64 0, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !10
  %41 = fmul double %40, %35
  %42 = mul nsw i32 %11, 5
  %43 = tail call double @ldexp(double noundef %41, i32 noundef %42) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret double %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ExportImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #21
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1845, ptr noundef nonnull @.str.4, ptr noundef nonnull %15) #22
  br label %17

17:                                               ; preds = %14, %9
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #26
  %19 = tail call ptr @AcquireQuantumMemory(i64 noundef %18, i64 noundef 4) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i64 %18, 0
  br i1 %22, label %23, label %75

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %28

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1850, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %26) #22
  br label %92

28:                                               ; preds = %23, %72
  %29 = phi i64 [ 0, %23 ], [ %73, %72 ]
  %30 = getelementptr inbounds i8, ptr %5, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !30
  switch i8 %31, label %66 [
    i8 65, label %69
    i8 97, label %69
    i8 66, label %32
    i8 98, label %32
    i8 67, label %33
    i8 99, label %33
    i8 103, label %40
    i8 71, label %40
    i8 73, label %41
    i8 105, label %41
    i8 75, label %42
    i8 107, label %42
    i8 77, label %49
    i8 109, label %49
    i8 111, label %56
    i8 79, label %56
    i8 80, label %57
    i8 112, label %57
    i8 82, label %58
    i8 114, label %58
    i8 89, label %59
    i8 121, label %59
  ]

32:                                               ; preds = %28, %28
  br label %69

33:                                               ; preds = %28, %28
  %34 = getelementptr inbounds i32, ptr %19, i64 %29
  store i32 6, ptr %34, align 4, !tbaa !5
  %35 = load i32, ptr %24, align 4, !tbaa !31
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %72, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %19) #22
  %39 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1877, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #22
  br label %92

40:                                               ; preds = %28, %28
  br label %69

41:                                               ; preds = %28, %28
  br label %69

42:                                               ; preds = %28, %28
  %43 = getelementptr inbounds i32, ptr %19, i64 %29
  store i32 2, ptr %43, align 4, !tbaa !5
  %44 = load i32, ptr %24, align 4, !tbaa !31
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %72, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %19) #22
  %48 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1900, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #22
  br label %92

49:                                               ; preds = %28, %28
  %50 = getelementptr inbounds i32, ptr %19, i64 %29
  store i32 12, ptr %50, align 4, !tbaa !5
  %51 = load i32, ptr %24, align 4, !tbaa !31
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %72, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %19) #22
  %55 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1911, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #22
  br label %92

56:                                               ; preds = %28, %28
  br label %69

57:                                               ; preds = %28, %28
  br label %69

58:                                               ; preds = %28, %28
  br label %69

59:                                               ; preds = %28, %28
  %60 = getelementptr inbounds i32, ptr %19, i64 %29
  store i32 19, ptr %60, align 4, !tbaa !5
  %61 = load i32, ptr %24, align 4, !tbaa !31
  %62 = icmp eq i32 %61, 12
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %19) #22
  %65 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1940, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #22
  br label %92

66:                                               ; preds = %28
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %19) #22
  %68 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1947, i32 noundef 410, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #22
  br label %92

69:                                               ; preds = %28, %28, %58, %57, %56, %41, %40, %32
  %70 = phi i32 [ 3, %32 ], [ 9, %40 ], [ 11, %41 ], [ 13, %56 ], [ 0, %57 ], [ 14, %58 ], [ 1, %28 ], [ 1, %28 ]
  %71 = getelementptr inbounds i32, ptr %19, i64 %29
  store i32 %70, ptr %71, align 4, !tbaa !5
  br label %72

72:                                               ; preds = %69, %33, %42, %49, %59
  %73 = add nuw nsw i64 %29, 1
  %74 = icmp eq i64 %73, %18
  br i1 %74, label %75, label %28, !llvm.loop !32

75:                                               ; preds = %72, %21
  store i64 %3, ptr %10, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 1
  store i64 %4, ptr %76, align 8, !tbaa !35
  %77 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 2
  store i64 %1, ptr %77, align 8, !tbaa !36
  %78 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 3
  store i64 %2, ptr %78, align 8, !tbaa !37
  switch i32 %6, label %86 [
    i32 1, label %79
    i32 2, label %80
    i32 3, label %81
    i32 4, label %82
    i32 5, label %83
    i32 6, label %84
    i32 7, label %85
  ]

79:                                               ; preds = %75
  call fastcc void @ExportCharPixel(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %19, ptr noundef %7, ptr noundef %8) #25
  br label %89

80:                                               ; preds = %75
  call fastcc void @ExportDoublePixel(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %19, ptr noundef %7, ptr noundef %8) #25
  br label %89

81:                                               ; preds = %75
  call fastcc void @ExportFloatPixel(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %19, ptr noundef %7, ptr noundef %8) #25
  br label %89

82:                                               ; preds = %75
  call fastcc void @ExportIntegerPixel(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %19, ptr noundef %7, ptr noundef %8) #25
  br label %89

83:                                               ; preds = %75
  call fastcc void @ExportLongPixel(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %19, ptr noundef %7, ptr noundef %8) #25
  br label %89

84:                                               ; preds = %75
  call fastcc void @ExportQuantumPixel(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %19, ptr noundef %7, ptr noundef %8) #25
  br label %89

85:                                               ; preds = %75
  call fastcc void @ExportShortPixel(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull %19, ptr noundef %7, ptr noundef %8) #25
  br label %89

86:                                               ; preds = %75
  %87 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %19) #22
  %88 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1997, i32 noundef 410, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %5) #22
  br label %89

89:                                               ; preds = %86, %85, %84, %83, %82, %81, %80, %79
  %90 = phi ptr [ %87, %86 ], [ %19, %85 ], [ %19, %84 ], [ %19, %83 ], [ %19, %82 ], [ %19, %81 ], [ %19, %80 ], [ %19, %79 ]
  %91 = tail call ptr @RelinquishMagickMemory(ptr noundef %90) #22
  br label %92

92:                                               ; preds = %89, %66, %63, %53, %46, %37, %25
  %93 = phi i32 [ 0, %25 ], [ 0, %66 ], [ 0, %63 ], [ 0, %53 ], [ 0, %46 ], [ 0, %37 ], [ 1, %89 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  ret i32 %93
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportCharPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %433

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %16 = load i64, ptr %1, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %14, %48
  %18 = phi i64 [ %16, %14 ], [ %49, %48 ]
  %19 = phi i64 [ 0, %14 ], [ %51, %48 ]
  %20 = phi ptr [ %4, %14 ], [ %50, %48 ]
  %21 = load i64, ptr %10, align 8, !tbaa !36
  %22 = load i64, ptr %15, align 8, !tbaa !37
  %23 = add nsw i64 %22, %19
  %24 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %21, i64 noundef %23, i64 noundef %18, i64 noundef 1, ptr noundef %5) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %433, label %26

26:                                               ; preds = %17
  %27 = load i64, ptr %1, align 8, !tbaa !34
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %44, %29 ], [ %24, %26 ]
  %31 = phi ptr [ %43, %29 ], [ %20, %26 ]
  %32 = phi i64 [ %45, %29 ], [ 0, %26 ]
  %33 = load i16, ptr %30, align 2, !tbaa !38
  %34 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %33) #25
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %34, ptr %31, align 1, !tbaa !30
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !39
  %38 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %37) #25
  %39 = getelementptr inbounds i8, ptr %31, i64 2
  store i8 %38, ptr %35, align 1, !tbaa !30
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !40
  %42 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %41) #25
  %43 = getelementptr inbounds i8, ptr %31, i64 3
  store i8 %42, ptr %39, align 1, !tbaa !30
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %45 = add nuw nsw i64 %32, 1
  %46 = load i64, ptr %1, align 8, !tbaa !34
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %29, label %48, !llvm.loop !41

48:                                               ; preds = %29, %26
  %49 = phi i64 [ %27, %26 ], [ %46, %29 ]
  %50 = phi ptr [ %20, %26 ], [ %43, %29 ]
  %51 = add nuw nsw i64 %19, 1
  %52 = load i64, ptr %11, align 8, !tbaa !35
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %17, label %433, !llvm.loop !42

54:                                               ; preds = %6
  %55 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %107

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %59 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !35
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %433

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %64 = load i64, ptr %1, align 8, !tbaa !34
  br label %65

65:                                               ; preds = %62, %101
  %66 = phi i64 [ %64, %62 ], [ %102, %101 ]
  %67 = phi i64 [ 0, %62 ], [ %104, %101 ]
  %68 = phi ptr [ %4, %62 ], [ %103, %101 ]
  %69 = load i64, ptr %58, align 8, !tbaa !36
  %70 = load i64, ptr %63, align 8, !tbaa !37
  %71 = add nsw i64 %70, %67
  %72 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %69, i64 noundef %71, i64 noundef %66, i64 noundef 1, ptr noundef %5) #22
  %73 = icmp eq ptr %72, null
  br i1 %73, label %433, label %74

74:                                               ; preds = %65
  %75 = load i64, ptr %1, align 8, !tbaa !34
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %74, %77
  %78 = phi ptr [ %97, %77 ], [ %72, %74 ]
  %79 = phi ptr [ %96, %77 ], [ %68, %74 ]
  %80 = phi i64 [ %98, %77 ], [ 0, %74 ]
  %81 = load i16, ptr %78, align 2, !tbaa !38
  %82 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %81) #25
  %83 = getelementptr inbounds i8, ptr %79, i64 1
  store i8 %82, ptr %79, align 1, !tbaa !30
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 1
  %85 = load i16, ptr %84, align 2, !tbaa !39
  %86 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %85) #25
  %87 = getelementptr inbounds i8, ptr %79, i64 2
  store i8 %86, ptr %83, align 1, !tbaa !30
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 2
  %89 = load i16, ptr %88, align 2, !tbaa !40
  %90 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %89) #25
  %91 = getelementptr inbounds i8, ptr %79, i64 3
  store i8 %90, ptr %87, align 1, !tbaa !30
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 0, i32 3
  %93 = load i16, ptr %92, align 2, !tbaa !43
  %94 = xor i16 %93, -1
  %95 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %94) #25
  %96 = getelementptr inbounds i8, ptr %79, i64 4
  store i8 %95, ptr %91, align 1, !tbaa !30
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %78, i64 1
  %98 = add nuw nsw i64 %80, 1
  %99 = load i64, ptr %1, align 8, !tbaa !34
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %77, label %101, !llvm.loop !44

101:                                              ; preds = %77, %74
  %102 = phi i64 [ %75, %74 ], [ %99, %77 ]
  %103 = phi ptr [ %68, %74 ], [ %96, %77 ]
  %104 = add nuw nsw i64 %67, 1
  %105 = load i64, ptr %59, align 8, !tbaa !35
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %65, label %433, !llvm.loop !45

107:                                              ; preds = %54
  %108 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %158

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %112 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !35
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %433

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %117 = load i64, ptr %1, align 8, !tbaa !34
  br label %118

118:                                              ; preds = %115, %152
  %119 = phi i64 [ %117, %115 ], [ %153, %152 ]
  %120 = phi i64 [ 0, %115 ], [ %155, %152 ]
  %121 = phi ptr [ %4, %115 ], [ %154, %152 ]
  %122 = load i64, ptr %111, align 8, !tbaa !36
  %123 = load i64, ptr %116, align 8, !tbaa !37
  %124 = add nsw i64 %123, %120
  %125 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %122, i64 noundef %124, i64 noundef %119, i64 noundef 1, ptr noundef %5) #22
  %126 = icmp eq ptr %125, null
  br i1 %126, label %433, label %127

127:                                              ; preds = %118
  %128 = load i64, ptr %1, align 8, !tbaa !34
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %127
  %131 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext 0) #25
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi ptr [ %125, %130 ], [ %148, %132 ]
  %134 = phi ptr [ %121, %130 ], [ %147, %132 ]
  %135 = phi i64 [ 0, %130 ], [ %149, %132 ]
  %136 = load i16, ptr %133, align 2, !tbaa !38
  %137 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %136) #25
  %138 = getelementptr inbounds i8, ptr %134, i64 1
  store i8 %137, ptr %134, align 1, !tbaa !30
  %139 = getelementptr inbounds %struct._PixelPacket, ptr %133, i64 0, i32 1
  %140 = load i16, ptr %139, align 2, !tbaa !39
  %141 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %140) #25
  %142 = getelementptr inbounds i8, ptr %134, i64 2
  store i8 %141, ptr %138, align 1, !tbaa !30
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %133, i64 0, i32 2
  %144 = load i16, ptr %143, align 2, !tbaa !40
  %145 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %144) #25
  %146 = getelementptr inbounds i8, ptr %134, i64 3
  store i8 %145, ptr %142, align 1, !tbaa !30
  %147 = getelementptr inbounds i8, ptr %134, i64 4
  store i8 %131, ptr %146, align 1, !tbaa !30
  %148 = getelementptr inbounds %struct._PixelPacket, ptr %133, i64 1
  %149 = add nuw nsw i64 %135, 1
  %150 = load i64, ptr %1, align 8, !tbaa !34
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %132, label %152, !llvm.loop !46

152:                                              ; preds = %132, %127
  %153 = phi i64 [ %128, %127 ], [ %150, %132 ]
  %154 = phi ptr [ %121, %127 ], [ %147, %132 ]
  %155 = add nuw nsw i64 %120, 1
  %156 = load i64, ptr %112, align 8, !tbaa !35
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %118, label %433, !llvm.loop !47

158:                                              ; preds = %107
  %159 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %199

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %163 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %164 = load i64, ptr %163, align 8, !tbaa !35
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %433

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %168 = load i64, ptr %1, align 8, !tbaa !34
  br label %169

169:                                              ; preds = %166, %193
  %170 = phi i64 [ %168, %166 ], [ %194, %193 ]
  %171 = phi i64 [ 0, %166 ], [ %196, %193 ]
  %172 = phi ptr [ %4, %166 ], [ %195, %193 ]
  %173 = load i64, ptr %162, align 8, !tbaa !36
  %174 = load i64, ptr %167, align 8, !tbaa !37
  %175 = add nsw i64 %174, %171
  %176 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %173, i64 noundef %175, i64 noundef %170, i64 noundef 1, ptr noundef %5) #22
  %177 = icmp eq ptr %176, null
  br i1 %177, label %433, label %178

178:                                              ; preds = %169
  %179 = load i64, ptr %1, align 8, !tbaa !34
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178, %181
  %182 = phi ptr [ %189, %181 ], [ %176, %178 ]
  %183 = phi ptr [ %188, %181 ], [ %172, %178 ]
  %184 = phi i64 [ %190, %181 ], [ 0, %178 ]
  %185 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %182) #27
  %186 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %185) #25
  %187 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %186) #25
  %188 = getelementptr inbounds i8, ptr %183, i64 1
  store i8 %187, ptr %183, align 1, !tbaa !30
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %182, i64 1
  %190 = add nuw nsw i64 %184, 1
  %191 = load i64, ptr %1, align 8, !tbaa !34
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %181, label %193, !llvm.loop !48

193:                                              ; preds = %181, %178
  %194 = phi i64 [ %179, %178 ], [ %191, %181 ]
  %195 = phi ptr [ %172, %178 ], [ %188, %181 ]
  %196 = add nuw nsw i64 %171, 1
  %197 = load i64, ptr %163, align 8, !tbaa !35
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %169, label %433, !llvm.loop !49

199:                                              ; preds = %158
  %200 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %247

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %204 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %205 = load i64, ptr %204, align 8, !tbaa !35
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %433

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %209 = load i64, ptr %1, align 8, !tbaa !34
  br label %210

210:                                              ; preds = %207, %241
  %211 = phi i64 [ %209, %207 ], [ %242, %241 ]
  %212 = phi i64 [ 0, %207 ], [ %244, %241 ]
  %213 = phi ptr [ %4, %207 ], [ %243, %241 ]
  %214 = load i64, ptr %203, align 8, !tbaa !36
  %215 = load i64, ptr %208, align 8, !tbaa !37
  %216 = add nsw i64 %215, %212
  %217 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %214, i64 noundef %216, i64 noundef %211, i64 noundef 1, ptr noundef %5) #22
  %218 = icmp eq ptr %217, null
  br i1 %218, label %433, label %219

219:                                              ; preds = %210
  %220 = load i64, ptr %1, align 8, !tbaa !34
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %222, label %241

222:                                              ; preds = %219, %222
  %223 = phi ptr [ %237, %222 ], [ %217, %219 ]
  %224 = phi ptr [ %236, %222 ], [ %213, %219 ]
  %225 = phi i64 [ %238, %222 ], [ 0, %219 ]
  %226 = getelementptr inbounds %struct._PixelPacket, ptr %223, i64 0, i32 2
  %227 = load i16, ptr %226, align 2, !tbaa !40
  %228 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %227) #25
  %229 = getelementptr inbounds i8, ptr %224, i64 1
  store i8 %228, ptr %224, align 1, !tbaa !30
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %223, i64 0, i32 1
  %231 = load i16, ptr %230, align 2, !tbaa !39
  %232 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %231) #25
  %233 = getelementptr inbounds i8, ptr %224, i64 2
  store i8 %232, ptr %229, align 1, !tbaa !30
  %234 = load i16, ptr %223, align 2, !tbaa !38
  %235 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %234) #25
  %236 = getelementptr inbounds i8, ptr %224, i64 3
  store i8 %235, ptr %233, align 1, !tbaa !30
  %237 = getelementptr inbounds %struct._PixelPacket, ptr %223, i64 1
  %238 = add nuw nsw i64 %225, 1
  %239 = load i64, ptr %1, align 8, !tbaa !34
  %240 = icmp slt i64 %238, %239
  br i1 %240, label %222, label %241, !llvm.loop !50

241:                                              ; preds = %222, %219
  %242 = phi i64 [ %220, %219 ], [ %239, %222 ]
  %243 = phi ptr [ %213, %219 ], [ %236, %222 ]
  %244 = add nuw nsw i64 %212, 1
  %245 = load i64, ptr %204, align 8, !tbaa !35
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %210, label %433, !llvm.loop !51

247:                                              ; preds = %199
  %248 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %300

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %252 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !35
  %254 = icmp sgt i64 %253, 0
  br i1 %254, label %255, label %433

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %257 = load i64, ptr %1, align 8, !tbaa !34
  br label %258

258:                                              ; preds = %255, %294
  %259 = phi i64 [ %257, %255 ], [ %295, %294 ]
  %260 = phi i64 [ 0, %255 ], [ %297, %294 ]
  %261 = phi ptr [ %4, %255 ], [ %296, %294 ]
  %262 = load i64, ptr %251, align 8, !tbaa !36
  %263 = load i64, ptr %256, align 8, !tbaa !37
  %264 = add nsw i64 %263, %260
  %265 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %262, i64 noundef %264, i64 noundef %259, i64 noundef 1, ptr noundef %5) #22
  %266 = icmp eq ptr %265, null
  br i1 %266, label %433, label %267

267:                                              ; preds = %258
  %268 = load i64, ptr %1, align 8, !tbaa !34
  %269 = icmp sgt i64 %268, 0
  br i1 %269, label %270, label %294

270:                                              ; preds = %267, %270
  %271 = phi ptr [ %290, %270 ], [ %265, %267 ]
  %272 = phi ptr [ %289, %270 ], [ %261, %267 ]
  %273 = phi i64 [ %291, %270 ], [ 0, %267 ]
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 0, i32 2
  %275 = load i16, ptr %274, align 2, !tbaa !40
  %276 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %275) #25
  %277 = getelementptr inbounds i8, ptr %272, i64 1
  store i8 %276, ptr %272, align 1, !tbaa !30
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 0, i32 1
  %279 = load i16, ptr %278, align 2, !tbaa !39
  %280 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %279) #25
  %281 = getelementptr inbounds i8, ptr %272, i64 2
  store i8 %280, ptr %277, align 1, !tbaa !30
  %282 = load i16, ptr %271, align 2, !tbaa !38
  %283 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %282) #25
  %284 = getelementptr inbounds i8, ptr %272, i64 3
  store i8 %283, ptr %281, align 1, !tbaa !30
  %285 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 0, i32 3
  %286 = load i16, ptr %285, align 2, !tbaa !43
  %287 = xor i16 %286, -1
  %288 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %287) #25
  %289 = getelementptr inbounds i8, ptr %272, i64 4
  store i8 %288, ptr %284, align 1, !tbaa !30
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %271, i64 1
  %291 = add nuw nsw i64 %273, 1
  %292 = load i64, ptr %1, align 8, !tbaa !34
  %293 = icmp slt i64 %291, %292
  br i1 %293, label %270, label %294, !llvm.loop !52

294:                                              ; preds = %270, %267
  %295 = phi i64 [ %268, %267 ], [ %292, %270 ]
  %296 = phi ptr [ %261, %267 ], [ %289, %270 ]
  %297 = add nuw nsw i64 %260, 1
  %298 = load i64, ptr %252, align 8, !tbaa !35
  %299 = icmp slt i64 %297, %298
  br i1 %299, label %258, label %433, !llvm.loop !53

300:                                              ; preds = %247
  %301 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %351

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %305 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %306 = load i64, ptr %305, align 8, !tbaa !35
  %307 = icmp sgt i64 %306, 0
  br i1 %307, label %308, label %433

308:                                              ; preds = %303
  %309 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %310 = load i64, ptr %1, align 8, !tbaa !34
  br label %311

311:                                              ; preds = %308, %345
  %312 = phi i64 [ %310, %308 ], [ %346, %345 ]
  %313 = phi i64 [ 0, %308 ], [ %348, %345 ]
  %314 = phi ptr [ %4, %308 ], [ %347, %345 ]
  %315 = load i64, ptr %304, align 8, !tbaa !36
  %316 = load i64, ptr %309, align 8, !tbaa !37
  %317 = add nsw i64 %316, %313
  %318 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %315, i64 noundef %317, i64 noundef %312, i64 noundef 1, ptr noundef %5) #22
  %319 = icmp eq ptr %318, null
  br i1 %319, label %433, label %320

320:                                              ; preds = %311
  %321 = load i64, ptr %1, align 8, !tbaa !34
  %322 = icmp sgt i64 %321, 0
  br i1 %322, label %323, label %345

323:                                              ; preds = %320
  %324 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext 0) #25
  br label %325

325:                                              ; preds = %323, %325
  %326 = phi ptr [ %318, %323 ], [ %341, %325 ]
  %327 = phi ptr [ %314, %323 ], [ %340, %325 ]
  %328 = phi i64 [ 0, %323 ], [ %342, %325 ]
  %329 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 2
  %330 = load i16, ptr %329, align 2, !tbaa !40
  %331 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %330) #25
  %332 = getelementptr inbounds i8, ptr %327, i64 1
  store i8 %331, ptr %327, align 1, !tbaa !30
  %333 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 1
  %334 = load i16, ptr %333, align 2, !tbaa !39
  %335 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %334) #25
  %336 = getelementptr inbounds i8, ptr %327, i64 2
  store i8 %335, ptr %332, align 1, !tbaa !30
  %337 = load i16, ptr %326, align 2, !tbaa !38
  %338 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %337) #25
  %339 = getelementptr inbounds i8, ptr %327, i64 3
  store i8 %338, ptr %336, align 1, !tbaa !30
  %340 = getelementptr inbounds i8, ptr %327, i64 4
  store i8 %324, ptr %339, align 1, !tbaa !30
  %341 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 1
  %342 = add nuw nsw i64 %328, 1
  %343 = load i64, ptr %1, align 8, !tbaa !34
  %344 = icmp slt i64 %342, %343
  br i1 %344, label %325, label %345, !llvm.loop !54

345:                                              ; preds = %325, %320
  %346 = phi i64 [ %321, %320 ], [ %343, %325 ]
  %347 = phi ptr [ %314, %320 ], [ %340, %325 ]
  %348 = add nuw nsw i64 %313, 1
  %349 = load i64, ptr %305, align 8, !tbaa !35
  %350 = icmp slt i64 %348, %349
  br i1 %350, label %311, label %433, !llvm.loop !55

351:                                              ; preds = %300
  %352 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %353 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %354 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %355 = load i64, ptr %354, align 8, !tbaa !35
  %356 = icmp sgt i64 %355, 0
  br i1 %356, label %357, label %433

357:                                              ; preds = %351
  %358 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %359 = icmp sgt i64 %352, 0
  %360 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %361 = load i64, ptr %1, align 8, !tbaa !34
  br label %362

362:                                              ; preds = %357, %427
  %363 = phi i64 [ %361, %357 ], [ %428, %427 ]
  %364 = phi i64 [ 0, %357 ], [ %430, %427 ]
  %365 = phi ptr [ %4, %357 ], [ %429, %427 ]
  %366 = load i64, ptr %353, align 8, !tbaa !36
  %367 = load i64, ptr %358, align 8, !tbaa !37
  %368 = add nsw i64 %367, %364
  %369 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %366, i64 noundef %368, i64 noundef %363, i64 noundef 1, ptr noundef %5) #22
  %370 = icmp eq ptr %369, null
  br i1 %370, label %433, label %371

371:                                              ; preds = %362
  %372 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #22
  %373 = load i64, ptr %1, align 8, !tbaa !34
  %374 = icmp sgt i64 %373, 0
  br i1 %374, label %375, label %427

375:                                              ; preds = %371
  %376 = icmp eq ptr %372, null
  br label %377

377:                                              ; preds = %375, %421
  %378 = phi i64 [ %373, %375 ], [ %422, %421 ]
  %379 = phi ptr [ %369, %375 ], [ %424, %421 ]
  %380 = phi ptr [ %365, %375 ], [ %423, %421 ]
  %381 = phi i64 [ 0, %375 ], [ %425, %421 ]
  br i1 %359, label %382, label %421

382:                                              ; preds = %377
  %383 = getelementptr inbounds i16, ptr %372, i64 %381
  %384 = getelementptr inbounds %struct._PixelPacket, ptr %379, i64 0, i32 3
  %385 = getelementptr inbounds %struct._PixelPacket, ptr %379, i64 0, i32 1
  %386 = getelementptr inbounds %struct._PixelPacket, ptr %379, i64 0, i32 2
  br label %387

387:                                              ; preds = %382, %415
  %388 = phi i64 [ 0, %382 ], [ %417, %415 ]
  %389 = phi ptr [ %380, %382 ], [ %416, %415 ]
  store i8 0, ptr %389, align 1, !tbaa !30
  %390 = getelementptr inbounds i32, ptr %3, i64 %388
  %391 = load i32, ptr %390, align 4, !tbaa !5
  switch i32 %391, label %415 [
    i32 14, label %392
    i32 6, label %392
    i32 9, label %394
    i32 12, label %394
    i32 3, label %396
    i32 19, label %396
    i32 1, label %398
    i32 13, label %401
    i32 2, label %403
    i32 11, label %409
  ]

392:                                              ; preds = %387, %387
  %393 = load i16, ptr %386, align 2, !tbaa !40
  br label %412

394:                                              ; preds = %387, %387
  %395 = load i16, ptr %385, align 2, !tbaa !39
  br label %412

396:                                              ; preds = %387, %387
  %397 = load i16, ptr %379, align 2, !tbaa !38
  br label %412

398:                                              ; preds = %387
  %399 = load i16, ptr %384, align 2, !tbaa !43
  %400 = xor i16 %399, -1
  br label %412

401:                                              ; preds = %387
  %402 = load i16, ptr %384, align 2, !tbaa !43
  br label %412

403:                                              ; preds = %387
  %404 = load i32, ptr %360, align 4, !tbaa !31
  %405 = icmp eq i32 %404, 12
  br i1 %405, label %406, label %415

406:                                              ; preds = %403
  br i1 %376, label %412, label %407

407:                                              ; preds = %406
  %408 = load i16, ptr %383, align 2, !tbaa !56
  br label %412

409:                                              ; preds = %387
  %410 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %379) #27
  %411 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %410) #25
  br label %412

412:                                              ; preds = %407, %406, %392, %394, %396, %398, %401, %409
  %413 = phi i16 [ %411, %409 ], [ %402, %401 ], [ %400, %398 ], [ %397, %396 ], [ %395, %394 ], [ %393, %392 ], [ %408, %407 ], [ 0, %406 ]
  %414 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %413) #25
  store i8 %414, ptr %389, align 1, !tbaa !30
  br label %415

415:                                              ; preds = %412, %387, %403
  %416 = getelementptr inbounds i8, ptr %389, i64 1
  %417 = add nuw nsw i64 %388, 1
  %418 = icmp eq i64 %417, %352
  br i1 %418, label %419, label %387, !llvm.loop !57

419:                                              ; preds = %415
  %420 = load i64, ptr %1, align 8, !tbaa !34
  br label %421

421:                                              ; preds = %419, %377
  %422 = phi i64 [ %378, %377 ], [ %420, %419 ]
  %423 = phi ptr [ %380, %377 ], [ %416, %419 ]
  %424 = getelementptr inbounds %struct._PixelPacket, ptr %379, i64 1
  %425 = add nuw nsw i64 %381, 1
  %426 = icmp slt i64 %425, %422
  br i1 %426, label %377, label %427, !llvm.loop !58

427:                                              ; preds = %421, %371
  %428 = phi i64 [ %373, %371 ], [ %422, %421 ]
  %429 = phi ptr [ %365, %371 ], [ %423, %421 ]
  %430 = add nuw nsw i64 %364, 1
  %431 = load i64, ptr %354, align 8, !tbaa !35
  %432 = icmp slt i64 %430, %431
  br i1 %432, label %362, label %433, !llvm.loop !59

433:                                              ; preds = %362, %427, %311, %345, %258, %294, %210, %241, %169, %193, %118, %152, %65, %101, %17, %48, %351, %303, %250, %202, %161, %110, %57, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportDoublePixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %417

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %16 = load i64, ptr %1, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %14, %45
  %18 = phi i64 [ %16, %14 ], [ %27, %45 ]
  %19 = phi i64 [ 0, %14 ], [ %47, %45 ]
  %20 = phi ptr [ %4, %14 ], [ %46, %45 ]
  %21 = load i64, ptr %10, align 8, !tbaa !36
  %22 = load i64, ptr %15, align 8, !tbaa !37
  %23 = add nsw i64 %22, %19
  %24 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %21, i64 noundef %23, i64 noundef %18, i64 noundef 1, ptr noundef %5) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %417, label %26

26:                                               ; preds = %17
  %27 = load i64, ptr %1, align 8, !tbaa !34
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %42, %29 ], [ %24, %26 ]
  %31 = phi i64 [ %43, %29 ], [ 0, %26 ]
  %32 = phi ptr [ %41, %29 ], [ %20, %26 ]
  %33 = getelementptr inbounds double, ptr %32, i64 2
  %34 = load <2 x i16>, ptr %30, align 2, !tbaa !56
  %35 = uitofp <2 x i16> %34 to <2 x double>
  %36 = fmul <2 x double> %35, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  store <2 x double> %36, ptr %32, align 8, !tbaa !10
  %37 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 2
  %38 = load i16, ptr %37, align 2, !tbaa !40
  %39 = uitofp i16 %38 to double
  %40 = fmul double %39, 0x3EF0001000100010
  %41 = getelementptr inbounds double, ptr %32, i64 3
  store double %40, ptr %33, align 8, !tbaa !10
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %43 = add nuw nsw i64 %31, 1
  %44 = icmp eq i64 %43, %27
  br i1 %44, label %45, label %29, !llvm.loop !60

45:                                               ; preds = %29, %26
  %46 = phi ptr [ %20, %26 ], [ %41, %29 ]
  %47 = add nuw nsw i64 %19, 1
  %48 = load i64, ptr %11, align 8, !tbaa !35
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %17, label %417, !llvm.loop !61

50:                                               ; preds = %6
  %51 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %99

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %55 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !35
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %417

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %60 = load i64, ptr %1, align 8, !tbaa !34
  br label %61

61:                                               ; preds = %58, %94
  %62 = phi i64 [ %60, %58 ], [ %71, %94 ]
  %63 = phi i64 [ 0, %58 ], [ %96, %94 ]
  %64 = phi ptr [ %4, %58 ], [ %95, %94 ]
  %65 = load i64, ptr %54, align 8, !tbaa !36
  %66 = load i64, ptr %59, align 8, !tbaa !37
  %67 = add nsw i64 %66, %63
  %68 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %65, i64 noundef %67, i64 noundef %62, i64 noundef 1, ptr noundef %5) #22
  %69 = icmp eq ptr %68, null
  br i1 %69, label %417, label %70

70:                                               ; preds = %61
  %71 = load i64, ptr %1, align 8, !tbaa !34
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %70, %73
  %74 = phi ptr [ %91, %73 ], [ %68, %70 ]
  %75 = phi i64 [ %92, %73 ], [ 0, %70 ]
  %76 = phi ptr [ %86, %73 ], [ %64, %70 ]
  %77 = getelementptr inbounds double, ptr %76, i64 2
  %78 = load <2 x i16>, ptr %74, align 2, !tbaa !56
  %79 = uitofp <2 x i16> %78 to <2 x double>
  %80 = fmul <2 x double> %79, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  store <2 x double> %80, ptr %76, align 8, !tbaa !10
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 2
  %82 = load i16, ptr %81, align 2, !tbaa !40
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 0, i32 3
  %84 = load i16, ptr %83, align 2, !tbaa !43
  %85 = xor i16 %84, -1
  %86 = getelementptr inbounds double, ptr %76, i64 4
  %87 = insertelement <2 x i16> poison, i16 %82, i64 0
  %88 = insertelement <2 x i16> %87, i16 %85, i64 1
  %89 = uitofp <2 x i16> %88 to <2 x double>
  %90 = fmul <2 x double> %89, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  store <2 x double> %90, ptr %77, align 8, !tbaa !10
  %91 = getelementptr inbounds %struct._PixelPacket, ptr %74, i64 1
  %92 = add nuw nsw i64 %75, 1
  %93 = icmp eq i64 %92, %71
  br i1 %93, label %94, label %73, !llvm.loop !62

94:                                               ; preds = %73, %70
  %95 = phi ptr [ %64, %70 ], [ %86, %73 ]
  %96 = add nuw nsw i64 %63, 1
  %97 = load i64, ptr %55, align 8, !tbaa !35
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %61, label %417, !llvm.loop !63

99:                                               ; preds = %50
  %100 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %144

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %104 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !35
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %417

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %109 = load i64, ptr %1, align 8, !tbaa !34
  br label %110

110:                                              ; preds = %107, %139
  %111 = phi i64 [ %109, %107 ], [ %120, %139 ]
  %112 = phi i64 [ 0, %107 ], [ %141, %139 ]
  %113 = phi ptr [ %4, %107 ], [ %140, %139 ]
  %114 = load i64, ptr %103, align 8, !tbaa !36
  %115 = load i64, ptr %108, align 8, !tbaa !37
  %116 = add nsw i64 %115, %112
  %117 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %114, i64 noundef %116, i64 noundef %111, i64 noundef 1, ptr noundef %5) #22
  %118 = icmp eq ptr %117, null
  br i1 %118, label %417, label %119

119:                                              ; preds = %110
  %120 = load i64, ptr %1, align 8, !tbaa !34
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %119, %122
  %123 = phi ptr [ %136, %122 ], [ %117, %119 ]
  %124 = phi i64 [ %137, %122 ], [ 0, %119 ]
  %125 = phi ptr [ %135, %122 ], [ %113, %119 ]
  %126 = getelementptr inbounds double, ptr %125, i64 2
  %127 = load <2 x i16>, ptr %123, align 2, !tbaa !56
  %128 = uitofp <2 x i16> %127 to <2 x double>
  %129 = fmul <2 x double> %128, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  store <2 x double> %129, ptr %125, align 8, !tbaa !10
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %123, i64 0, i32 2
  %131 = load i16, ptr %130, align 2, !tbaa !40
  %132 = uitofp i16 %131 to double
  %133 = fmul double %132, 0x3EF0001000100010
  %134 = getelementptr inbounds double, ptr %125, i64 3
  store double %133, ptr %126, align 8, !tbaa !10
  %135 = getelementptr inbounds double, ptr %125, i64 4
  store double 0.000000e+00, ptr %134, align 8, !tbaa !10
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %123, i64 1
  %137 = add nuw nsw i64 %124, 1
  %138 = icmp eq i64 %137, %120
  br i1 %138, label %139, label %122, !llvm.loop !64

139:                                              ; preds = %122, %119
  %140 = phi ptr [ %113, %119 ], [ %135, %122 ]
  %141 = add nuw nsw i64 %112, 1
  %142 = load i64, ptr %104, align 8, !tbaa !35
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %110, label %417, !llvm.loop !65

144:                                              ; preds = %99
  %145 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %149 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa !35
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %417

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %154 = load i64, ptr %1, align 8, !tbaa !34
  br label %155

155:                                              ; preds = %152, %179
  %156 = phi i64 [ %154, %152 ], [ %180, %179 ]
  %157 = phi i64 [ 0, %152 ], [ %182, %179 ]
  %158 = phi ptr [ %4, %152 ], [ %181, %179 ]
  %159 = load i64, ptr %148, align 8, !tbaa !36
  %160 = load i64, ptr %153, align 8, !tbaa !37
  %161 = add nsw i64 %160, %157
  %162 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %159, i64 noundef %161, i64 noundef %156, i64 noundef 1, ptr noundef %5) #22
  %163 = icmp eq ptr %162, null
  br i1 %163, label %417, label %164

164:                                              ; preds = %155
  %165 = load i64, ptr %1, align 8, !tbaa !34
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %164, %167
  %168 = phi ptr [ %175, %167 ], [ %162, %164 ]
  %169 = phi i64 [ %176, %167 ], [ 0, %164 ]
  %170 = phi ptr [ %174, %167 ], [ %158, %164 ]
  %171 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %168) #27
  %172 = fpext float %171 to double
  %173 = fmul double %172, 0x3EF0001000100010
  %174 = getelementptr inbounds double, ptr %170, i64 1
  store double %173, ptr %170, align 8, !tbaa !10
  %175 = getelementptr inbounds %struct._PixelPacket, ptr %168, i64 1
  %176 = add nuw nsw i64 %169, 1
  %177 = load i64, ptr %1, align 8, !tbaa !34
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %167, label %179, !llvm.loop !66

179:                                              ; preds = %167, %164
  %180 = phi i64 [ %165, %164 ], [ %177, %167 ]
  %181 = phi ptr [ %158, %164 ], [ %174, %167 ]
  %182 = add nuw nsw i64 %157, 1
  %183 = load i64, ptr %149, align 8, !tbaa !35
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %155, label %417, !llvm.loop !67

185:                                              ; preds = %144
  %186 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %230

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %190 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %191 = load i64, ptr %190, align 8, !tbaa !35
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %417

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %195 = load i64, ptr %1, align 8, !tbaa !34
  br label %196

196:                                              ; preds = %193, %225
  %197 = phi i64 [ %195, %193 ], [ %206, %225 ]
  %198 = phi i64 [ 0, %193 ], [ %227, %225 ]
  %199 = phi ptr [ %4, %193 ], [ %226, %225 ]
  %200 = load i64, ptr %189, align 8, !tbaa !36
  %201 = load i64, ptr %194, align 8, !tbaa !37
  %202 = add nsw i64 %201, %198
  %203 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %200, i64 noundef %202, i64 noundef %197, i64 noundef 1, ptr noundef %5) #22
  %204 = icmp eq ptr %203, null
  br i1 %204, label %417, label %205

205:                                              ; preds = %196
  %206 = load i64, ptr %1, align 8, !tbaa !34
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %205, %208
  %209 = phi ptr [ %222, %208 ], [ %203, %205 ]
  %210 = phi i64 [ %223, %208 ], [ 0, %205 ]
  %211 = phi ptr [ %221, %208 ], [ %199, %205 ]
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %209, i64 0, i32 1
  %213 = getelementptr inbounds double, ptr %211, i64 2
  %214 = load <2 x i16>, ptr %212, align 2, !tbaa !56
  %215 = uitofp <2 x i16> %214 to <2 x double>
  %216 = fmul <2 x double> %215, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %217 = shufflevector <2 x double> %216, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %217, ptr %211, align 8, !tbaa !10
  %218 = load i16, ptr %209, align 2, !tbaa !38
  %219 = uitofp i16 %218 to double
  %220 = fmul double %219, 0x3EF0001000100010
  %221 = getelementptr inbounds double, ptr %211, i64 3
  store double %220, ptr %213, align 8, !tbaa !10
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %209, i64 1
  %223 = add nuw nsw i64 %210, 1
  %224 = icmp eq i64 %223, %206
  br i1 %224, label %225, label %208, !llvm.loop !68

225:                                              ; preds = %208, %205
  %226 = phi ptr [ %199, %205 ], [ %221, %208 ]
  %227 = add nuw nsw i64 %198, 1
  %228 = load i64, ptr %190, align 8, !tbaa !35
  %229 = icmp slt i64 %227, %228
  br i1 %229, label %196, label %417, !llvm.loop !69

230:                                              ; preds = %185
  %231 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %280

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %235 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %236 = load i64, ptr %235, align 8, !tbaa !35
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %238, label %417

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %240 = load i64, ptr %1, align 8, !tbaa !34
  br label %241

241:                                              ; preds = %238, %275
  %242 = phi i64 [ %240, %238 ], [ %251, %275 ]
  %243 = phi i64 [ 0, %238 ], [ %277, %275 ]
  %244 = phi ptr [ %4, %238 ], [ %276, %275 ]
  %245 = load i64, ptr %234, align 8, !tbaa !36
  %246 = load i64, ptr %239, align 8, !tbaa !37
  %247 = add nsw i64 %246, %243
  %248 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %245, i64 noundef %247, i64 noundef %242, i64 noundef 1, ptr noundef %5) #22
  %249 = icmp eq ptr %248, null
  br i1 %249, label %417, label %250

250:                                              ; preds = %241
  %251 = load i64, ptr %1, align 8, !tbaa !34
  %252 = icmp sgt i64 %251, 0
  br i1 %252, label %253, label %275

253:                                              ; preds = %250, %253
  %254 = phi ptr [ %272, %253 ], [ %248, %250 ]
  %255 = phi i64 [ %273, %253 ], [ 0, %250 ]
  %256 = phi ptr [ %267, %253 ], [ %244, %250 ]
  %257 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 0, i32 1
  %258 = getelementptr inbounds double, ptr %256, i64 2
  %259 = load <2 x i16>, ptr %257, align 2, !tbaa !56
  %260 = uitofp <2 x i16> %259 to <2 x double>
  %261 = fmul <2 x double> %260, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %262 = shufflevector <2 x double> %261, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %262, ptr %256, align 8, !tbaa !10
  %263 = load i16, ptr %254, align 2, !tbaa !38
  %264 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 0, i32 3
  %265 = load i16, ptr %264, align 2, !tbaa !43
  %266 = xor i16 %265, -1
  %267 = getelementptr inbounds double, ptr %256, i64 4
  %268 = insertelement <2 x i16> poison, i16 %263, i64 0
  %269 = insertelement <2 x i16> %268, i16 %266, i64 1
  %270 = uitofp <2 x i16> %269 to <2 x double>
  %271 = fmul <2 x double> %270, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  store <2 x double> %271, ptr %258, align 8, !tbaa !10
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %254, i64 1
  %273 = add nuw nsw i64 %255, 1
  %274 = icmp eq i64 %273, %251
  br i1 %274, label %275, label %253, !llvm.loop !70

275:                                              ; preds = %253, %250
  %276 = phi ptr [ %244, %250 ], [ %267, %253 ]
  %277 = add nuw nsw i64 %243, 1
  %278 = load i64, ptr %235, align 8, !tbaa !35
  %279 = icmp slt i64 %277, %278
  br i1 %279, label %241, label %417, !llvm.loop !71

280:                                              ; preds = %230
  %281 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %326

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %285 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %286 = load i64, ptr %285, align 8, !tbaa !35
  %287 = icmp sgt i64 %286, 0
  br i1 %287, label %288, label %417

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %290 = load i64, ptr %1, align 8, !tbaa !34
  br label %291

291:                                              ; preds = %288, %321
  %292 = phi i64 [ %290, %288 ], [ %301, %321 ]
  %293 = phi i64 [ 0, %288 ], [ %323, %321 ]
  %294 = phi ptr [ %4, %288 ], [ %322, %321 ]
  %295 = load i64, ptr %284, align 8, !tbaa !36
  %296 = load i64, ptr %289, align 8, !tbaa !37
  %297 = add nsw i64 %296, %293
  %298 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %295, i64 noundef %297, i64 noundef %292, i64 noundef 1, ptr noundef %5) #22
  %299 = icmp eq ptr %298, null
  br i1 %299, label %417, label %300

300:                                              ; preds = %291
  %301 = load i64, ptr %1, align 8, !tbaa !34
  %302 = icmp sgt i64 %301, 0
  br i1 %302, label %303, label %321

303:                                              ; preds = %300, %303
  %304 = phi ptr [ %318, %303 ], [ %298, %300 ]
  %305 = phi i64 [ %319, %303 ], [ 0, %300 ]
  %306 = phi ptr [ %317, %303 ], [ %294, %300 ]
  %307 = getelementptr inbounds %struct._PixelPacket, ptr %304, i64 0, i32 1
  %308 = getelementptr inbounds double, ptr %306, i64 2
  %309 = load <2 x i16>, ptr %307, align 2, !tbaa !56
  %310 = uitofp <2 x i16> %309 to <2 x double>
  %311 = fmul <2 x double> %310, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %312 = shufflevector <2 x double> %311, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %312, ptr %306, align 8, !tbaa !10
  %313 = load i16, ptr %304, align 2, !tbaa !38
  %314 = uitofp i16 %313 to double
  %315 = fmul double %314, 0x3EF0001000100010
  %316 = getelementptr inbounds double, ptr %306, i64 3
  store double %315, ptr %308, align 8, !tbaa !10
  %317 = getelementptr inbounds double, ptr %306, i64 4
  store double 0.000000e+00, ptr %316, align 8, !tbaa !10
  %318 = getelementptr inbounds %struct._PixelPacket, ptr %304, i64 1
  %319 = add nuw nsw i64 %305, 1
  %320 = icmp eq i64 %319, %301
  br i1 %320, label %321, label %303, !llvm.loop !72

321:                                              ; preds = %303, %300
  %322 = phi ptr [ %294, %300 ], [ %317, %303 ]
  %323 = add nuw nsw i64 %293, 1
  %324 = load i64, ptr %285, align 8, !tbaa !35
  %325 = icmp slt i64 %323, %324
  br i1 %325, label %291, label %417, !llvm.loop !73

326:                                              ; preds = %280
  %327 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %328 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %329 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %330 = load i64, ptr %329, align 8, !tbaa !35
  %331 = icmp sgt i64 %330, 0
  br i1 %331, label %332, label %417

332:                                              ; preds = %326
  %333 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %334 = icmp sgt i64 %327, 0
  %335 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %336 = load i64, ptr %1, align 8, !tbaa !34
  br label %337

337:                                              ; preds = %332, %411
  %338 = phi i64 [ %336, %332 ], [ %412, %411 ]
  %339 = phi i64 [ 0, %332 ], [ %414, %411 ]
  %340 = phi ptr [ %4, %332 ], [ %413, %411 ]
  %341 = load i64, ptr %328, align 8, !tbaa !36
  %342 = load i64, ptr %333, align 8, !tbaa !37
  %343 = add nsw i64 %342, %339
  %344 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %341, i64 noundef %343, i64 noundef %338, i64 noundef 1, ptr noundef %5) #22
  %345 = icmp eq ptr %344, null
  br i1 %345, label %417, label %346

346:                                              ; preds = %337
  %347 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #22
  %348 = load i64, ptr %1, align 8, !tbaa !34
  %349 = icmp sgt i64 %348, 0
  br i1 %349, label %350, label %411

350:                                              ; preds = %346
  %351 = icmp eq ptr %347, null
  br label %352

352:                                              ; preds = %350, %405
  %353 = phi i64 [ %348, %350 ], [ %406, %405 ]
  %354 = phi ptr [ %344, %350 ], [ %408, %405 ]
  %355 = phi i64 [ 0, %350 ], [ %409, %405 ]
  %356 = phi ptr [ %340, %350 ], [ %407, %405 ]
  br i1 %334, label %357, label %405

357:                                              ; preds = %352
  %358 = getelementptr inbounds i16, ptr %347, i64 %355
  %359 = getelementptr inbounds %struct._PixelPacket, ptr %354, i64 0, i32 3
  %360 = getelementptr inbounds %struct._PixelPacket, ptr %354, i64 0, i32 1
  %361 = getelementptr inbounds %struct._PixelPacket, ptr %354, i64 0, i32 2
  br label %362

362:                                              ; preds = %357, %399
  %363 = phi i64 [ 0, %357 ], [ %401, %399 ]
  %364 = phi ptr [ %356, %357 ], [ %400, %399 ]
  store double 0.000000e+00, ptr %364, align 8, !tbaa !10
  %365 = getelementptr inbounds i32, ptr %3, i64 %363
  %366 = load i32, ptr %365, align 4, !tbaa !5
  switch i32 %366, label %399 [
    i32 14, label %367
    i32 6, label %367
    i32 9, label %370
    i32 12, label %370
    i32 3, label %373
    i32 19, label %373
    i32 1, label %376
    i32 13, label %380
    i32 2, label %383
    i32 11, label %393
  ]

367:                                              ; preds = %362, %362
  %368 = load i16, ptr %361, align 2, !tbaa !40
  %369 = uitofp i16 %368 to double
  br label %396

370:                                              ; preds = %362, %362
  %371 = load i16, ptr %360, align 2, !tbaa !39
  %372 = uitofp i16 %371 to double
  br label %396

373:                                              ; preds = %362, %362
  %374 = load i16, ptr %354, align 2, !tbaa !38
  %375 = uitofp i16 %374 to double
  br label %396

376:                                              ; preds = %362
  %377 = load i16, ptr %359, align 2, !tbaa !43
  %378 = xor i16 %377, -1
  %379 = uitofp i16 %378 to double
  br label %396

380:                                              ; preds = %362
  %381 = load i16, ptr %359, align 2, !tbaa !43
  %382 = uitofp i16 %381 to double
  br label %396

383:                                              ; preds = %362
  %384 = load i32, ptr %335, align 4, !tbaa !31
  %385 = icmp eq i32 %384, 12
  br i1 %385, label %386, label %399

386:                                              ; preds = %383
  br i1 %351, label %390, label %387

387:                                              ; preds = %386
  %388 = load i16, ptr %358, align 2, !tbaa !56
  %389 = zext i16 %388 to i32
  br label %390

390:                                              ; preds = %386, %387
  %391 = phi i32 [ %389, %387 ], [ 0, %386 ]
  %392 = sitofp i32 %391 to double
  br label %396

393:                                              ; preds = %362
  %394 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %354) #27
  %395 = fpext float %394 to double
  br label %396

396:                                              ; preds = %367, %370, %373, %376, %380, %393, %390
  %397 = phi double [ %392, %390 ], [ %395, %393 ], [ %382, %380 ], [ %379, %376 ], [ %375, %373 ], [ %372, %370 ], [ %369, %367 ]
  %398 = fmul double %397, 0x3EF0001000100010
  store double %398, ptr %364, align 8, !tbaa !10
  br label %399

399:                                              ; preds = %396, %362, %383
  %400 = getelementptr inbounds double, ptr %364, i64 1
  %401 = add nuw nsw i64 %363, 1
  %402 = icmp eq i64 %401, %327
  br i1 %402, label %403, label %362, !llvm.loop !74

403:                                              ; preds = %399
  %404 = load i64, ptr %1, align 8, !tbaa !34
  br label %405

405:                                              ; preds = %403, %352
  %406 = phi i64 [ %353, %352 ], [ %404, %403 ]
  %407 = phi ptr [ %356, %352 ], [ %400, %403 ]
  %408 = getelementptr inbounds %struct._PixelPacket, ptr %354, i64 1
  %409 = add nuw nsw i64 %355, 1
  %410 = icmp slt i64 %409, %406
  br i1 %410, label %352, label %411, !llvm.loop !75

411:                                              ; preds = %405, %346
  %412 = phi i64 [ %348, %346 ], [ %406, %405 ]
  %413 = phi ptr [ %340, %346 ], [ %407, %405 ]
  %414 = add nuw nsw i64 %339, 1
  %415 = load i64, ptr %329, align 8, !tbaa !35
  %416 = icmp slt i64 %414, %415
  br i1 %416, label %337, label %417, !llvm.loop !76

417:                                              ; preds = %337, %411, %291, %321, %241, %275, %196, %225, %155, %179, %110, %139, %61, %94, %17, %45, %326, %283, %233, %188, %147, %102, %53, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportFloatPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %425

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %16 = load i64, ptr %1, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %14, %47
  %18 = phi i64 [ %16, %14 ], [ %27, %47 ]
  %19 = phi i64 [ 0, %14 ], [ %49, %47 ]
  %20 = phi ptr [ %4, %14 ], [ %48, %47 ]
  %21 = load i64, ptr %10, align 8, !tbaa !36
  %22 = load i64, ptr %15, align 8, !tbaa !37
  %23 = add nsw i64 %22, %19
  %24 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %21, i64 noundef %23, i64 noundef %18, i64 noundef 1, ptr noundef %5) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %425, label %26

26:                                               ; preds = %17
  %27 = load i64, ptr %1, align 8, !tbaa !34
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %44, %29 ], [ %24, %26 ]
  %31 = phi i64 [ %45, %29 ], [ 0, %26 ]
  %32 = phi ptr [ %43, %29 ], [ %20, %26 ]
  %33 = getelementptr inbounds float, ptr %32, i64 2
  %34 = load <2 x i16>, ptr %30, align 2, !tbaa !56
  %35 = uitofp <2 x i16> %34 to <2 x double>
  %36 = fmul <2 x double> %35, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %37 = fptrunc <2 x double> %36 to <2 x float>
  store <2 x float> %37, ptr %32, align 4, !tbaa !14
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !40
  %40 = uitofp i16 %39 to double
  %41 = fmul double %40, 0x3EF0001000100010
  %42 = fptrunc double %41 to float
  %43 = getelementptr inbounds float, ptr %32, i64 3
  store float %42, ptr %33, align 4, !tbaa !14
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %45 = add nuw nsw i64 %31, 1
  %46 = icmp eq i64 %45, %27
  br i1 %46, label %47, label %29, !llvm.loop !77

47:                                               ; preds = %29, %26
  %48 = phi ptr [ %20, %26 ], [ %43, %29 ]
  %49 = add nuw nsw i64 %19, 1
  %50 = load i64, ptr %11, align 8, !tbaa !35
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %17, label %425, !llvm.loop !78

52:                                               ; preds = %6
  %53 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %101

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %57 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !35
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %425

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %62 = load i64, ptr %1, align 8, !tbaa !34
  br label %63

63:                                               ; preds = %60, %96
  %64 = phi i64 [ %62, %60 ], [ %73, %96 ]
  %65 = phi i64 [ 0, %60 ], [ %98, %96 ]
  %66 = phi ptr [ %4, %60 ], [ %97, %96 ]
  %67 = load i64, ptr %56, align 8, !tbaa !36
  %68 = load i64, ptr %61, align 8, !tbaa !37
  %69 = add nsw i64 %68, %65
  %70 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %67, i64 noundef %69, i64 noundef %64, i64 noundef 1, ptr noundef %5) #22
  %71 = icmp eq ptr %70, null
  br i1 %71, label %425, label %72

72:                                               ; preds = %63
  %73 = load i64, ptr %1, align 8, !tbaa !34
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %72, %75
  %76 = phi ptr [ %93, %75 ], [ %70, %72 ]
  %77 = phi i64 [ %94, %75 ], [ 0, %72 ]
  %78 = phi ptr [ %85, %75 ], [ %66, %72 ]
  %79 = load i16, ptr %76, align 2, !tbaa !38
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 1
  %81 = load <2 x i16>, ptr %80, align 2, !tbaa !56
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 3
  %83 = load i16, ptr %82, align 2, !tbaa !43
  %84 = xor i16 %83, -1
  %85 = getelementptr inbounds float, ptr %78, i64 4
  %86 = insertelement <4 x i16> poison, i16 %79, i64 0
  %87 = shufflevector <2 x i16> %81, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %88 = shufflevector <4 x i16> %86, <4 x i16> %87, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %89 = insertelement <4 x i16> %88, i16 %84, i64 3
  %90 = uitofp <4 x i16> %89 to <4 x double>
  %91 = fmul <4 x double> %90, <double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010>
  %92 = fptrunc <4 x double> %91 to <4 x float>
  store <4 x float> %92, ptr %78, align 4, !tbaa !14
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %94 = add nuw nsw i64 %77, 1
  %95 = icmp eq i64 %94, %73
  br i1 %95, label %96, label %75, !llvm.loop !79

96:                                               ; preds = %75, %72
  %97 = phi ptr [ %66, %72 ], [ %85, %75 ]
  %98 = add nuw nsw i64 %65, 1
  %99 = load i64, ptr %57, align 8, !tbaa !35
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %63, label %425, !llvm.loop !80

101:                                              ; preds = %52
  %102 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %148

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %106 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !35
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %425

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %111 = load i64, ptr %1, align 8, !tbaa !34
  br label %112

112:                                              ; preds = %109, %143
  %113 = phi i64 [ %111, %109 ], [ %122, %143 ]
  %114 = phi i64 [ 0, %109 ], [ %145, %143 ]
  %115 = phi ptr [ %4, %109 ], [ %144, %143 ]
  %116 = load i64, ptr %105, align 8, !tbaa !36
  %117 = load i64, ptr %110, align 8, !tbaa !37
  %118 = add nsw i64 %117, %114
  %119 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %116, i64 noundef %118, i64 noundef %113, i64 noundef 1, ptr noundef %5) #22
  %120 = icmp eq ptr %119, null
  br i1 %120, label %425, label %121

121:                                              ; preds = %112
  %122 = load i64, ptr %1, align 8, !tbaa !34
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %121, %124
  %125 = phi ptr [ %140, %124 ], [ %119, %121 ]
  %126 = phi i64 [ %141, %124 ], [ 0, %121 ]
  %127 = phi ptr [ %139, %124 ], [ %115, %121 ]
  %128 = getelementptr inbounds float, ptr %127, i64 2
  %129 = load <2 x i16>, ptr %125, align 2, !tbaa !56
  %130 = uitofp <2 x i16> %129 to <2 x double>
  %131 = fmul <2 x double> %130, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %132 = fptrunc <2 x double> %131 to <2 x float>
  store <2 x float> %132, ptr %127, align 4, !tbaa !14
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 2
  %134 = load i16, ptr %133, align 2, !tbaa !40
  %135 = uitofp i16 %134 to double
  %136 = fmul double %135, 0x3EF0001000100010
  %137 = fptrunc double %136 to float
  %138 = getelementptr inbounds float, ptr %127, i64 3
  store float %137, ptr %128, align 4, !tbaa !14
  %139 = getelementptr inbounds float, ptr %127, i64 4
  store float 0.000000e+00, ptr %138, align 4, !tbaa !14
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 1
  %141 = add nuw nsw i64 %126, 1
  %142 = icmp eq i64 %141, %122
  br i1 %142, label %143, label %124, !llvm.loop !81

143:                                              ; preds = %124, %121
  %144 = phi ptr [ %115, %121 ], [ %139, %124 ]
  %145 = add nuw nsw i64 %114, 1
  %146 = load i64, ptr %106, align 8, !tbaa !35
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %112, label %425, !llvm.loop !82

148:                                              ; preds = %101
  %149 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %190

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %153 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %154 = load i64, ptr %153, align 8, !tbaa !35
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %425

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %158 = load i64, ptr %1, align 8, !tbaa !34
  br label %159

159:                                              ; preds = %156, %184
  %160 = phi i64 [ %158, %156 ], [ %185, %184 ]
  %161 = phi i64 [ 0, %156 ], [ %187, %184 ]
  %162 = phi ptr [ %4, %156 ], [ %186, %184 ]
  %163 = load i64, ptr %152, align 8, !tbaa !36
  %164 = load i64, ptr %157, align 8, !tbaa !37
  %165 = add nsw i64 %164, %161
  %166 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %163, i64 noundef %165, i64 noundef %160, i64 noundef 1, ptr noundef %5) #22
  %167 = icmp eq ptr %166, null
  br i1 %167, label %425, label %168

168:                                              ; preds = %159
  %169 = load i64, ptr %1, align 8, !tbaa !34
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %168, %171
  %172 = phi ptr [ %180, %171 ], [ %166, %168 ]
  %173 = phi i64 [ %181, %171 ], [ 0, %168 ]
  %174 = phi ptr [ %179, %171 ], [ %162, %168 ]
  %175 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %172) #27
  %176 = fpext float %175 to double
  %177 = fmul double %176, 0x3EF0001000100010
  %178 = fptrunc double %177 to float
  %179 = getelementptr inbounds float, ptr %174, i64 1
  store float %178, ptr %174, align 4, !tbaa !14
  %180 = getelementptr inbounds %struct._PixelPacket, ptr %172, i64 1
  %181 = add nuw nsw i64 %173, 1
  %182 = load i64, ptr %1, align 8, !tbaa !34
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %171, label %184, !llvm.loop !83

184:                                              ; preds = %171, %168
  %185 = phi i64 [ %169, %168 ], [ %182, %171 ]
  %186 = phi ptr [ %162, %168 ], [ %179, %171 ]
  %187 = add nuw nsw i64 %161, 1
  %188 = load i64, ptr %153, align 8, !tbaa !35
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %159, label %425, !llvm.loop !84

190:                                              ; preds = %148
  %191 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %237

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %195 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %196 = load i64, ptr %195, align 8, !tbaa !35
  %197 = icmp sgt i64 %196, 0
  br i1 %197, label %198, label %425

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %200 = load i64, ptr %1, align 8, !tbaa !34
  br label %201

201:                                              ; preds = %198, %232
  %202 = phi i64 [ %200, %198 ], [ %211, %232 ]
  %203 = phi i64 [ 0, %198 ], [ %234, %232 ]
  %204 = phi ptr [ %4, %198 ], [ %233, %232 ]
  %205 = load i64, ptr %194, align 8, !tbaa !36
  %206 = load i64, ptr %199, align 8, !tbaa !37
  %207 = add nsw i64 %206, %203
  %208 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %205, i64 noundef %207, i64 noundef %202, i64 noundef 1, ptr noundef %5) #22
  %209 = icmp eq ptr %208, null
  br i1 %209, label %425, label %210

210:                                              ; preds = %201
  %211 = load i64, ptr %1, align 8, !tbaa !34
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %213, label %232

213:                                              ; preds = %210, %213
  %214 = phi ptr [ %229, %213 ], [ %208, %210 ]
  %215 = phi i64 [ %230, %213 ], [ 0, %210 ]
  %216 = phi ptr [ %228, %213 ], [ %204, %210 ]
  %217 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 0, i32 1
  %218 = getelementptr inbounds float, ptr %216, i64 2
  %219 = load <2 x i16>, ptr %217, align 2, !tbaa !56
  %220 = uitofp <2 x i16> %219 to <2 x double>
  %221 = fmul <2 x double> %220, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %222 = fptrunc <2 x double> %221 to <2 x float>
  %223 = shufflevector <2 x float> %222, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %223, ptr %216, align 4, !tbaa !14
  %224 = load i16, ptr %214, align 2, !tbaa !38
  %225 = uitofp i16 %224 to double
  %226 = fmul double %225, 0x3EF0001000100010
  %227 = fptrunc double %226 to float
  %228 = getelementptr inbounds float, ptr %216, i64 3
  store float %227, ptr %218, align 4, !tbaa !14
  %229 = getelementptr inbounds %struct._PixelPacket, ptr %214, i64 1
  %230 = add nuw nsw i64 %215, 1
  %231 = icmp eq i64 %230, %211
  br i1 %231, label %232, label %213, !llvm.loop !85

232:                                              ; preds = %213, %210
  %233 = phi ptr [ %204, %210 ], [ %228, %213 ]
  %234 = add nuw nsw i64 %203, 1
  %235 = load i64, ptr %195, align 8, !tbaa !35
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %201, label %425, !llvm.loop !86

237:                                              ; preds = %190
  %238 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %285

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %242 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %243 = load i64, ptr %242, align 8, !tbaa !35
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %245, label %425

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %247 = load i64, ptr %1, align 8, !tbaa !34
  br label %248

248:                                              ; preds = %245, %280
  %249 = phi i64 [ %247, %245 ], [ %258, %280 ]
  %250 = phi i64 [ 0, %245 ], [ %282, %280 ]
  %251 = phi ptr [ %4, %245 ], [ %281, %280 ]
  %252 = load i64, ptr %241, align 8, !tbaa !36
  %253 = load i64, ptr %246, align 8, !tbaa !37
  %254 = add nsw i64 %253, %250
  %255 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %252, i64 noundef %254, i64 noundef %249, i64 noundef 1, ptr noundef %5) #22
  %256 = icmp eq ptr %255, null
  br i1 %256, label %425, label %257

257:                                              ; preds = %248
  %258 = load i64, ptr %1, align 8, !tbaa !34
  %259 = icmp sgt i64 %258, 0
  br i1 %259, label %260, label %280

260:                                              ; preds = %257, %260
  %261 = phi ptr [ %277, %260 ], [ %255, %257 ]
  %262 = phi i64 [ %278, %260 ], [ 0, %257 ]
  %263 = phi ptr [ %270, %260 ], [ %251, %257 ]
  %264 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 0, i32 1
  %265 = load <2 x i16>, ptr %264, align 2, !tbaa !56
  %266 = load i16, ptr %261, align 2, !tbaa !38
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 0, i32 3
  %268 = load i16, ptr %267, align 2, !tbaa !43
  %269 = xor i16 %268, -1
  %270 = getelementptr inbounds float, ptr %263, i64 4
  %271 = shufflevector <2 x i16> %265, <2 x i16> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %272 = insertelement <4 x i16> %271, i16 %266, i64 2
  %273 = insertelement <4 x i16> %272, i16 %269, i64 3
  %274 = uitofp <4 x i16> %273 to <4 x double>
  %275 = fmul <4 x double> %274, <double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010>
  %276 = fptrunc <4 x double> %275 to <4 x float>
  store <4 x float> %276, ptr %263, align 4, !tbaa !14
  %277 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 1
  %278 = add nuw nsw i64 %262, 1
  %279 = icmp eq i64 %278, %258
  br i1 %279, label %280, label %260, !llvm.loop !87

280:                                              ; preds = %260, %257
  %281 = phi ptr [ %251, %257 ], [ %270, %260 ]
  %282 = add nuw nsw i64 %250, 1
  %283 = load i64, ptr %242, align 8, !tbaa !35
  %284 = icmp slt i64 %282, %283
  br i1 %284, label %248, label %425, !llvm.loop !88

285:                                              ; preds = %237
  %286 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %333

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %290 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %291 = load i64, ptr %290, align 8, !tbaa !35
  %292 = icmp sgt i64 %291, 0
  br i1 %292, label %293, label %425

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %295 = load i64, ptr %1, align 8, !tbaa !34
  br label %296

296:                                              ; preds = %293, %328
  %297 = phi i64 [ %295, %293 ], [ %306, %328 ]
  %298 = phi i64 [ 0, %293 ], [ %330, %328 ]
  %299 = phi ptr [ %4, %293 ], [ %329, %328 ]
  %300 = load i64, ptr %289, align 8, !tbaa !36
  %301 = load i64, ptr %294, align 8, !tbaa !37
  %302 = add nsw i64 %301, %298
  %303 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %300, i64 noundef %302, i64 noundef %297, i64 noundef 1, ptr noundef %5) #22
  %304 = icmp eq ptr %303, null
  br i1 %304, label %425, label %305

305:                                              ; preds = %296
  %306 = load i64, ptr %1, align 8, !tbaa !34
  %307 = icmp sgt i64 %306, 0
  br i1 %307, label %308, label %328

308:                                              ; preds = %305, %308
  %309 = phi ptr [ %325, %308 ], [ %303, %305 ]
  %310 = phi i64 [ %326, %308 ], [ 0, %305 ]
  %311 = phi ptr [ %324, %308 ], [ %299, %305 ]
  %312 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 0, i32 1
  %313 = getelementptr inbounds float, ptr %311, i64 2
  %314 = load <2 x i16>, ptr %312, align 2, !tbaa !56
  %315 = uitofp <2 x i16> %314 to <2 x double>
  %316 = fmul <2 x double> %315, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %317 = fptrunc <2 x double> %316 to <2 x float>
  %318 = shufflevector <2 x float> %317, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %318, ptr %311, align 4, !tbaa !14
  %319 = load i16, ptr %309, align 2, !tbaa !38
  %320 = uitofp i16 %319 to double
  %321 = fmul double %320, 0x3EF0001000100010
  %322 = fptrunc double %321 to float
  %323 = getelementptr inbounds float, ptr %311, i64 3
  store float %322, ptr %313, align 4, !tbaa !14
  %324 = getelementptr inbounds float, ptr %311, i64 4
  store float 0.000000e+00, ptr %323, align 4, !tbaa !14
  %325 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 1
  %326 = add nuw nsw i64 %310, 1
  %327 = icmp eq i64 %326, %306
  br i1 %327, label %328, label %308, !llvm.loop !89

328:                                              ; preds = %308, %305
  %329 = phi ptr [ %299, %305 ], [ %324, %308 ]
  %330 = add nuw nsw i64 %298, 1
  %331 = load i64, ptr %290, align 8, !tbaa !35
  %332 = icmp slt i64 %330, %331
  br i1 %332, label %296, label %425, !llvm.loop !90

333:                                              ; preds = %285
  %334 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %335 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %336 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %337 = load i64, ptr %336, align 8, !tbaa !35
  %338 = icmp sgt i64 %337, 0
  br i1 %338, label %339, label %425

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %341 = icmp sgt i64 %334, 0
  %342 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %343 = load i64, ptr %1, align 8, !tbaa !34
  br label %344

344:                                              ; preds = %339, %419
  %345 = phi i64 [ %343, %339 ], [ %420, %419 ]
  %346 = phi i64 [ 0, %339 ], [ %422, %419 ]
  %347 = phi ptr [ %4, %339 ], [ %421, %419 ]
  %348 = load i64, ptr %335, align 8, !tbaa !36
  %349 = load i64, ptr %340, align 8, !tbaa !37
  %350 = add nsw i64 %349, %346
  %351 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %348, i64 noundef %350, i64 noundef %345, i64 noundef 1, ptr noundef %5) #22
  %352 = icmp eq ptr %351, null
  br i1 %352, label %425, label %353

353:                                              ; preds = %344
  %354 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #22
  %355 = load i64, ptr %1, align 8, !tbaa !34
  %356 = icmp sgt i64 %355, 0
  br i1 %356, label %357, label %419

357:                                              ; preds = %353
  %358 = icmp eq ptr %354, null
  br label %359

359:                                              ; preds = %357, %413
  %360 = phi i64 [ %355, %357 ], [ %414, %413 ]
  %361 = phi ptr [ %351, %357 ], [ %416, %413 ]
  %362 = phi i64 [ 0, %357 ], [ %417, %413 ]
  %363 = phi ptr [ %347, %357 ], [ %415, %413 ]
  br i1 %341, label %364, label %413

364:                                              ; preds = %359
  %365 = getelementptr inbounds i16, ptr %354, i64 %362
  %366 = getelementptr inbounds %struct._PixelPacket, ptr %361, i64 0, i32 3
  %367 = getelementptr inbounds %struct._PixelPacket, ptr %361, i64 0, i32 1
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %361, i64 0, i32 2
  br label %369

369:                                              ; preds = %364, %407
  %370 = phi i64 [ 0, %364 ], [ %409, %407 ]
  %371 = phi ptr [ %363, %364 ], [ %408, %407 ]
  store float 0.000000e+00, ptr %371, align 4, !tbaa !14
  %372 = getelementptr inbounds i32, ptr %3, i64 %370
  %373 = load i32, ptr %372, align 4, !tbaa !5
  switch i32 %373, label %407 [
    i32 14, label %374
    i32 6, label %374
    i32 9, label %377
    i32 12, label %377
    i32 3, label %380
    i32 19, label %380
    i32 1, label %383
    i32 13, label %387
    i32 2, label %390
    i32 11, label %400
  ]

374:                                              ; preds = %369, %369
  %375 = load i16, ptr %368, align 2, !tbaa !40
  %376 = uitofp i16 %375 to double
  br label %403

377:                                              ; preds = %369, %369
  %378 = load i16, ptr %367, align 2, !tbaa !39
  %379 = uitofp i16 %378 to double
  br label %403

380:                                              ; preds = %369, %369
  %381 = load i16, ptr %361, align 2, !tbaa !38
  %382 = uitofp i16 %381 to double
  br label %403

383:                                              ; preds = %369
  %384 = load i16, ptr %366, align 2, !tbaa !43
  %385 = xor i16 %384, -1
  %386 = uitofp i16 %385 to double
  br label %403

387:                                              ; preds = %369
  %388 = load i16, ptr %366, align 2, !tbaa !43
  %389 = uitofp i16 %388 to double
  br label %403

390:                                              ; preds = %369
  %391 = load i32, ptr %342, align 4, !tbaa !31
  %392 = icmp eq i32 %391, 12
  br i1 %392, label %393, label %407

393:                                              ; preds = %390
  br i1 %358, label %397, label %394

394:                                              ; preds = %393
  %395 = load i16, ptr %365, align 2, !tbaa !56
  %396 = zext i16 %395 to i32
  br label %397

397:                                              ; preds = %393, %394
  %398 = phi i32 [ %396, %394 ], [ 0, %393 ]
  %399 = sitofp i32 %398 to double
  br label %403

400:                                              ; preds = %369
  %401 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %361) #27
  %402 = fpext float %401 to double
  br label %403

403:                                              ; preds = %374, %377, %380, %383, %387, %400, %397
  %404 = phi double [ %399, %397 ], [ %402, %400 ], [ %389, %387 ], [ %386, %383 ], [ %382, %380 ], [ %379, %377 ], [ %376, %374 ]
  %405 = fmul double %404, 0x3EF0001000100010
  %406 = fptrunc double %405 to float
  store float %406, ptr %371, align 4, !tbaa !14
  br label %407

407:                                              ; preds = %403, %369, %390
  %408 = getelementptr inbounds float, ptr %371, i64 1
  %409 = add nuw nsw i64 %370, 1
  %410 = icmp eq i64 %409, %334
  br i1 %410, label %411, label %369, !llvm.loop !91

411:                                              ; preds = %407
  %412 = load i64, ptr %1, align 8, !tbaa !34
  br label %413

413:                                              ; preds = %411, %359
  %414 = phi i64 [ %360, %359 ], [ %412, %411 ]
  %415 = phi ptr [ %363, %359 ], [ %408, %411 ]
  %416 = getelementptr inbounds %struct._PixelPacket, ptr %361, i64 1
  %417 = add nuw nsw i64 %362, 1
  %418 = icmp slt i64 %417, %414
  br i1 %418, label %359, label %419, !llvm.loop !92

419:                                              ; preds = %413, %353
  %420 = phi i64 [ %355, %353 ], [ %414, %413 ]
  %421 = phi ptr [ %347, %353 ], [ %415, %413 ]
  %422 = add nuw nsw i64 %346, 1
  %423 = load i64, ptr %336, align 8, !tbaa !35
  %424 = icmp slt i64 %422, %423
  br i1 %424, label %344, label %425, !llvm.loop !93

425:                                              ; preds = %344, %419, %296, %328, %248, %280, %201, %232, %159, %184, %112, %143, %63, %96, %17, %47, %333, %288, %240, %193, %151, %104, %55, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportIntegerPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %417

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %16 = load i64, ptr %1, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %14, %47
  %18 = phi i64 [ %16, %14 ], [ %27, %47 ]
  %19 = phi i64 [ 0, %14 ], [ %49, %47 ]
  %20 = phi ptr [ %4, %14 ], [ %48, %47 ]
  %21 = load i64, ptr %10, align 8, !tbaa !36
  %22 = load i64, ptr %15, align 8, !tbaa !37
  %23 = add nsw i64 %22, %19
  %24 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %21, i64 noundef %23, i64 noundef %18, i64 noundef 1, ptr noundef %5) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %417, label %26

26:                                               ; preds = %17
  %27 = load i64, ptr %1, align 8, !tbaa !34
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %44, %29 ], [ %24, %26 ]
  %31 = phi ptr [ %43, %29 ], [ %20, %26 ]
  %32 = phi i64 [ %45, %29 ], [ 0, %26 ]
  %33 = load i16, ptr %30, align 2, !tbaa !38
  %34 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %33) #25
  %35 = getelementptr inbounds i32, ptr %31, i64 1
  store i32 %34, ptr %31, align 4, !tbaa !5
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !39
  %38 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %37) #25
  %39 = getelementptr inbounds i32, ptr %31, i64 2
  store i32 %38, ptr %35, align 4, !tbaa !5
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !40
  %42 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %41) #25
  %43 = getelementptr inbounds i32, ptr %31, i64 3
  store i32 %42, ptr %39, align 4, !tbaa !5
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %45 = add nuw nsw i64 %32, 1
  %46 = icmp eq i64 %45, %27
  br i1 %46, label %47, label %29, !llvm.loop !94

47:                                               ; preds = %29, %26
  %48 = phi ptr [ %20, %26 ], [ %43, %29 ]
  %49 = add nuw nsw i64 %19, 1
  %50 = load i64, ptr %11, align 8, !tbaa !35
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %17, label %417, !llvm.loop !95

52:                                               ; preds = %6
  %53 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %57 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !35
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %417

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %62 = load i64, ptr %1, align 8, !tbaa !34
  br label %63

63:                                               ; preds = %60, %98
  %64 = phi i64 [ %62, %60 ], [ %73, %98 ]
  %65 = phi i64 [ 0, %60 ], [ %100, %98 ]
  %66 = phi ptr [ %4, %60 ], [ %99, %98 ]
  %67 = load i64, ptr %56, align 8, !tbaa !36
  %68 = load i64, ptr %61, align 8, !tbaa !37
  %69 = add nsw i64 %68, %65
  %70 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %67, i64 noundef %69, i64 noundef %64, i64 noundef 1, ptr noundef %5) #22
  %71 = icmp eq ptr %70, null
  br i1 %71, label %417, label %72

72:                                               ; preds = %63
  %73 = load i64, ptr %1, align 8, !tbaa !34
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %72, %75
  %76 = phi ptr [ %95, %75 ], [ %70, %72 ]
  %77 = phi ptr [ %94, %75 ], [ %66, %72 ]
  %78 = phi i64 [ %96, %75 ], [ 0, %72 ]
  %79 = load i16, ptr %76, align 2, !tbaa !38
  %80 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %79) #25
  %81 = getelementptr inbounds i32, ptr %77, i64 1
  store i32 %80, ptr %77, align 4, !tbaa !5
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 1
  %83 = load i16, ptr %82, align 2, !tbaa !39
  %84 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %83) #25
  %85 = getelementptr inbounds i32, ptr %77, i64 2
  store i32 %84, ptr %81, align 4, !tbaa !5
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !40
  %88 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %87) #25
  %89 = getelementptr inbounds i32, ptr %77, i64 3
  store i32 %88, ptr %85, align 4, !tbaa !5
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 3
  %91 = load i16, ptr %90, align 2, !tbaa !43
  %92 = xor i16 %91, -1
  %93 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %92) #25
  %94 = getelementptr inbounds i32, ptr %77, i64 4
  store i32 %93, ptr %89, align 4, !tbaa !5
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %96 = add nuw nsw i64 %78, 1
  %97 = icmp eq i64 %96, %73
  br i1 %97, label %98, label %75, !llvm.loop !96

98:                                               ; preds = %75, %72
  %99 = phi ptr [ %66, %72 ], [ %94, %75 ]
  %100 = add nuw nsw i64 %65, 1
  %101 = load i64, ptr %57, align 8, !tbaa !35
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %63, label %417, !llvm.loop !97

103:                                              ; preds = %52
  %104 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %150

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %108 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !35
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %417

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %113 = load i64, ptr %1, align 8, !tbaa !34
  br label %114

114:                                              ; preds = %111, %145
  %115 = phi i64 [ %113, %111 ], [ %124, %145 ]
  %116 = phi i64 [ 0, %111 ], [ %147, %145 ]
  %117 = phi ptr [ %4, %111 ], [ %146, %145 ]
  %118 = load i64, ptr %107, align 8, !tbaa !36
  %119 = load i64, ptr %112, align 8, !tbaa !37
  %120 = add nsw i64 %119, %116
  %121 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %118, i64 noundef %120, i64 noundef %115, i64 noundef 1, ptr noundef %5) #22
  %122 = icmp eq ptr %121, null
  br i1 %122, label %417, label %123

123:                                              ; preds = %114
  %124 = load i64, ptr %1, align 8, !tbaa !34
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %123, %126
  %127 = phi ptr [ %142, %126 ], [ %121, %123 ]
  %128 = phi ptr [ %141, %126 ], [ %117, %123 ]
  %129 = phi i64 [ %143, %126 ], [ 0, %123 ]
  %130 = load i16, ptr %127, align 2, !tbaa !38
  %131 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %130) #25
  %132 = getelementptr inbounds i32, ptr %128, i64 1
  store i32 %131, ptr %128, align 4, !tbaa !5
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 1
  %134 = load i16, ptr %133, align 2, !tbaa !39
  %135 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %134) #25
  %136 = getelementptr inbounds i32, ptr %128, i64 2
  store i32 %135, ptr %132, align 4, !tbaa !5
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 2
  %138 = load i16, ptr %137, align 2, !tbaa !40
  %139 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %138) #25
  %140 = getelementptr inbounds i32, ptr %128, i64 3
  store i32 %139, ptr %136, align 4, !tbaa !5
  %141 = getelementptr inbounds i32, ptr %128, i64 4
  store i32 0, ptr %140, align 4, !tbaa !5
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 1
  %143 = add nuw nsw i64 %129, 1
  %144 = icmp eq i64 %143, %124
  br i1 %144, label %145, label %126, !llvm.loop !98

145:                                              ; preds = %126, %123
  %146 = phi ptr [ %117, %123 ], [ %141, %126 ]
  %147 = add nuw nsw i64 %116, 1
  %148 = load i64, ptr %108, align 8, !tbaa !35
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %114, label %417, !llvm.loop !99

150:                                              ; preds = %103
  %151 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %191

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %155 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !35
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %417

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %160 = load i64, ptr %1, align 8, !tbaa !34
  br label %161

161:                                              ; preds = %158, %185
  %162 = phi i64 [ %160, %158 ], [ %186, %185 ]
  %163 = phi i64 [ 0, %158 ], [ %188, %185 ]
  %164 = phi ptr [ %4, %158 ], [ %187, %185 ]
  %165 = load i64, ptr %154, align 8, !tbaa !36
  %166 = load i64, ptr %159, align 8, !tbaa !37
  %167 = add nsw i64 %166, %163
  %168 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %165, i64 noundef %167, i64 noundef %162, i64 noundef 1, ptr noundef %5) #22
  %169 = icmp eq ptr %168, null
  br i1 %169, label %417, label %170

170:                                              ; preds = %161
  %171 = load i64, ptr %1, align 8, !tbaa !34
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %170, %173
  %174 = phi ptr [ %181, %173 ], [ %168, %170 ]
  %175 = phi ptr [ %180, %173 ], [ %164, %170 ]
  %176 = phi i64 [ %182, %173 ], [ 0, %170 ]
  %177 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %174) #27
  %178 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %177) #25
  %179 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %178) #25
  %180 = getelementptr inbounds i32, ptr %175, i64 1
  store i32 %179, ptr %175, align 4, !tbaa !5
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 1
  %182 = add nuw nsw i64 %176, 1
  %183 = load i64, ptr %1, align 8, !tbaa !34
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %173, label %185, !llvm.loop !100

185:                                              ; preds = %173, %170
  %186 = phi i64 [ %171, %170 ], [ %183, %173 ]
  %187 = phi ptr [ %164, %170 ], [ %180, %173 ]
  %188 = add nuw nsw i64 %163, 1
  %189 = load i64, ptr %155, align 8, !tbaa !35
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %161, label %417, !llvm.loop !101

191:                                              ; preds = %150
  %192 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %237

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %196 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !35
  %198 = icmp sgt i64 %197, 0
  br i1 %198, label %199, label %417

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %201 = load i64, ptr %1, align 8, !tbaa !34
  br label %202

202:                                              ; preds = %199, %232
  %203 = phi i64 [ %201, %199 ], [ %212, %232 ]
  %204 = phi i64 [ 0, %199 ], [ %234, %232 ]
  %205 = phi ptr [ %4, %199 ], [ %233, %232 ]
  %206 = load i64, ptr %195, align 8, !tbaa !36
  %207 = load i64, ptr %200, align 8, !tbaa !37
  %208 = add nsw i64 %207, %204
  %209 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %206, i64 noundef %208, i64 noundef %203, i64 noundef 1, ptr noundef %5) #22
  %210 = icmp eq ptr %209, null
  br i1 %210, label %417, label %211

211:                                              ; preds = %202
  %212 = load i64, ptr %1, align 8, !tbaa !34
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %211, %214
  %215 = phi ptr [ %229, %214 ], [ %209, %211 ]
  %216 = phi ptr [ %228, %214 ], [ %205, %211 ]
  %217 = phi i64 [ %230, %214 ], [ 0, %211 ]
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 0, i32 2
  %219 = load i16, ptr %218, align 2, !tbaa !40
  %220 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %219) #25
  %221 = getelementptr inbounds i32, ptr %216, i64 1
  store i32 %220, ptr %216, align 4, !tbaa !5
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 0, i32 1
  %223 = load i16, ptr %222, align 2, !tbaa !39
  %224 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %223) #25
  %225 = getelementptr inbounds i32, ptr %216, i64 2
  store i32 %224, ptr %221, align 4, !tbaa !5
  %226 = load i16, ptr %215, align 2, !tbaa !38
  %227 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %226) #25
  %228 = getelementptr inbounds i32, ptr %216, i64 3
  store i32 %227, ptr %225, align 4, !tbaa !5
  %229 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 1
  %230 = add nuw nsw i64 %217, 1
  %231 = icmp eq i64 %230, %212
  br i1 %231, label %232, label %214, !llvm.loop !102

232:                                              ; preds = %214, %211
  %233 = phi ptr [ %205, %211 ], [ %228, %214 ]
  %234 = add nuw nsw i64 %204, 1
  %235 = load i64, ptr %196, align 8, !tbaa !35
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %202, label %417, !llvm.loop !103

237:                                              ; preds = %191
  %238 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %288

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %242 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %243 = load i64, ptr %242, align 8, !tbaa !35
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %245, label %417

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %247 = load i64, ptr %1, align 8, !tbaa !34
  br label %248

248:                                              ; preds = %245, %283
  %249 = phi i64 [ %247, %245 ], [ %258, %283 ]
  %250 = phi i64 [ 0, %245 ], [ %285, %283 ]
  %251 = phi ptr [ %4, %245 ], [ %284, %283 ]
  %252 = load i64, ptr %241, align 8, !tbaa !36
  %253 = load i64, ptr %246, align 8, !tbaa !37
  %254 = add nsw i64 %253, %250
  %255 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %252, i64 noundef %254, i64 noundef %249, i64 noundef 1, ptr noundef %5) #22
  %256 = icmp eq ptr %255, null
  br i1 %256, label %417, label %257

257:                                              ; preds = %248
  %258 = load i64, ptr %1, align 8, !tbaa !34
  %259 = icmp sgt i64 %258, 0
  br i1 %259, label %260, label %283

260:                                              ; preds = %257, %260
  %261 = phi ptr [ %280, %260 ], [ %255, %257 ]
  %262 = phi ptr [ %279, %260 ], [ %251, %257 ]
  %263 = phi i64 [ %281, %260 ], [ 0, %257 ]
  %264 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 0, i32 2
  %265 = load i16, ptr %264, align 2, !tbaa !40
  %266 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %265) #25
  %267 = getelementptr inbounds i32, ptr %262, i64 1
  store i32 %266, ptr %262, align 4, !tbaa !5
  %268 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 0, i32 1
  %269 = load i16, ptr %268, align 2, !tbaa !39
  %270 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %269) #25
  %271 = getelementptr inbounds i32, ptr %262, i64 2
  store i32 %270, ptr %267, align 4, !tbaa !5
  %272 = load i16, ptr %261, align 2, !tbaa !38
  %273 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %272) #25
  %274 = getelementptr inbounds i32, ptr %262, i64 3
  store i32 %273, ptr %271, align 4, !tbaa !5
  %275 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 0, i32 3
  %276 = load i16, ptr %275, align 2, !tbaa !43
  %277 = xor i16 %276, -1
  %278 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %277) #25
  %279 = getelementptr inbounds i32, ptr %262, i64 4
  store i32 %278, ptr %274, align 4, !tbaa !5
  %280 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 1
  %281 = add nuw nsw i64 %263, 1
  %282 = icmp eq i64 %281, %258
  br i1 %282, label %283, label %260, !llvm.loop !104

283:                                              ; preds = %260, %257
  %284 = phi ptr [ %251, %257 ], [ %279, %260 ]
  %285 = add nuw nsw i64 %250, 1
  %286 = load i64, ptr %242, align 8, !tbaa !35
  %287 = icmp slt i64 %285, %286
  br i1 %287, label %248, label %417, !llvm.loop !105

288:                                              ; preds = %237
  %289 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %335

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %293 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %294 = load i64, ptr %293, align 8, !tbaa !35
  %295 = icmp sgt i64 %294, 0
  br i1 %295, label %296, label %417

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %298 = load i64, ptr %1, align 8, !tbaa !34
  br label %299

299:                                              ; preds = %296, %330
  %300 = phi i64 [ %298, %296 ], [ %309, %330 ]
  %301 = phi i64 [ 0, %296 ], [ %332, %330 ]
  %302 = phi ptr [ %4, %296 ], [ %331, %330 ]
  %303 = load i64, ptr %292, align 8, !tbaa !36
  %304 = load i64, ptr %297, align 8, !tbaa !37
  %305 = add nsw i64 %304, %301
  %306 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %303, i64 noundef %305, i64 noundef %300, i64 noundef 1, ptr noundef %5) #22
  %307 = icmp eq ptr %306, null
  br i1 %307, label %417, label %308

308:                                              ; preds = %299
  %309 = load i64, ptr %1, align 8, !tbaa !34
  %310 = icmp sgt i64 %309, 0
  br i1 %310, label %311, label %330

311:                                              ; preds = %308, %311
  %312 = phi ptr [ %327, %311 ], [ %306, %308 ]
  %313 = phi ptr [ %326, %311 ], [ %302, %308 ]
  %314 = phi i64 [ %328, %311 ], [ 0, %308 ]
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %312, i64 0, i32 2
  %316 = load i16, ptr %315, align 2, !tbaa !40
  %317 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %316) #25
  %318 = getelementptr inbounds i32, ptr %313, i64 1
  store i32 %317, ptr %313, align 4, !tbaa !5
  %319 = getelementptr inbounds %struct._PixelPacket, ptr %312, i64 0, i32 1
  %320 = load i16, ptr %319, align 2, !tbaa !39
  %321 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %320) #25
  %322 = getelementptr inbounds i32, ptr %313, i64 2
  store i32 %321, ptr %318, align 4, !tbaa !5
  %323 = load i16, ptr %312, align 2, !tbaa !38
  %324 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %323) #25
  %325 = getelementptr inbounds i32, ptr %313, i64 3
  store i32 %324, ptr %322, align 4, !tbaa !5
  %326 = getelementptr inbounds i32, ptr %313, i64 4
  store i32 0, ptr %325, align 4, !tbaa !5
  %327 = getelementptr inbounds %struct._PixelPacket, ptr %312, i64 1
  %328 = add nuw nsw i64 %314, 1
  %329 = icmp eq i64 %328, %309
  br i1 %329, label %330, label %311, !llvm.loop !106

330:                                              ; preds = %311, %308
  %331 = phi ptr [ %302, %308 ], [ %326, %311 ]
  %332 = add nuw nsw i64 %301, 1
  %333 = load i64, ptr %293, align 8, !tbaa !35
  %334 = icmp slt i64 %332, %333
  br i1 %334, label %299, label %417, !llvm.loop !107

335:                                              ; preds = %288
  %336 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %337 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %338 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %339 = load i64, ptr %338, align 8, !tbaa !35
  %340 = icmp sgt i64 %339, 0
  br i1 %340, label %341, label %417

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %343 = icmp sgt i64 %336, 0
  %344 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %345 = load i64, ptr %1, align 8, !tbaa !34
  br label %346

346:                                              ; preds = %341, %411
  %347 = phi i64 [ %345, %341 ], [ %412, %411 ]
  %348 = phi i64 [ 0, %341 ], [ %414, %411 ]
  %349 = phi ptr [ %4, %341 ], [ %413, %411 ]
  %350 = load i64, ptr %337, align 8, !tbaa !36
  %351 = load i64, ptr %342, align 8, !tbaa !37
  %352 = add nsw i64 %351, %348
  %353 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %350, i64 noundef %352, i64 noundef %347, i64 noundef 1, ptr noundef %5) #22
  %354 = icmp eq ptr %353, null
  br i1 %354, label %417, label %355

355:                                              ; preds = %346
  %356 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #22
  %357 = load i64, ptr %1, align 8, !tbaa !34
  %358 = icmp sgt i64 %357, 0
  br i1 %358, label %359, label %411

359:                                              ; preds = %355
  %360 = icmp eq ptr %356, null
  br label %361

361:                                              ; preds = %359, %405
  %362 = phi i64 [ %357, %359 ], [ %406, %405 ]
  %363 = phi ptr [ %353, %359 ], [ %408, %405 ]
  %364 = phi ptr [ %349, %359 ], [ %407, %405 ]
  %365 = phi i64 [ 0, %359 ], [ %409, %405 ]
  br i1 %343, label %366, label %405

366:                                              ; preds = %361
  %367 = getelementptr inbounds i16, ptr %356, i64 %365
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 3
  %369 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 1
  %370 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 2
  br label %371

371:                                              ; preds = %366, %399
  %372 = phi i64 [ 0, %366 ], [ %401, %399 ]
  %373 = phi ptr [ %364, %366 ], [ %400, %399 ]
  store i32 0, ptr %373, align 4, !tbaa !5
  %374 = getelementptr inbounds i32, ptr %3, i64 %372
  %375 = load i32, ptr %374, align 4, !tbaa !5
  switch i32 %375, label %399 [
    i32 14, label %376
    i32 6, label %376
    i32 9, label %378
    i32 12, label %378
    i32 3, label %380
    i32 19, label %380
    i32 1, label %382
    i32 13, label %385
    i32 2, label %387
    i32 11, label %393
  ]

376:                                              ; preds = %371, %371
  %377 = load i16, ptr %370, align 2, !tbaa !40
  br label %396

378:                                              ; preds = %371, %371
  %379 = load i16, ptr %369, align 2, !tbaa !39
  br label %396

380:                                              ; preds = %371, %371
  %381 = load i16, ptr %363, align 2, !tbaa !38
  br label %396

382:                                              ; preds = %371
  %383 = load i16, ptr %368, align 2, !tbaa !43
  %384 = xor i16 %383, -1
  br label %396

385:                                              ; preds = %371
  %386 = load i16, ptr %368, align 2, !tbaa !43
  br label %396

387:                                              ; preds = %371
  %388 = load i32, ptr %344, align 4, !tbaa !31
  %389 = icmp eq i32 %388, 12
  br i1 %389, label %390, label %399

390:                                              ; preds = %387
  br i1 %360, label %396, label %391

391:                                              ; preds = %390
  %392 = load i16, ptr %367, align 2, !tbaa !56
  br label %396

393:                                              ; preds = %371
  %394 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %363) #27
  %395 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %394) #25
  br label %396

396:                                              ; preds = %391, %390, %376, %378, %380, %382, %385, %393
  %397 = phi i16 [ %395, %393 ], [ %386, %385 ], [ %384, %382 ], [ %381, %380 ], [ %379, %378 ], [ %377, %376 ], [ %392, %391 ], [ 0, %390 ]
  %398 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %397) #25
  store i32 %398, ptr %373, align 4, !tbaa !5
  br label %399

399:                                              ; preds = %396, %371, %387
  %400 = getelementptr inbounds i32, ptr %373, i64 1
  %401 = add nuw nsw i64 %372, 1
  %402 = icmp eq i64 %401, %336
  br i1 %402, label %403, label %371, !llvm.loop !108

403:                                              ; preds = %399
  %404 = load i64, ptr %1, align 8, !tbaa !34
  br label %405

405:                                              ; preds = %403, %361
  %406 = phi i64 [ %362, %361 ], [ %404, %403 ]
  %407 = phi ptr [ %364, %361 ], [ %400, %403 ]
  %408 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 1
  %409 = add nuw nsw i64 %365, 1
  %410 = icmp slt i64 %409, %406
  br i1 %410, label %361, label %411, !llvm.loop !109

411:                                              ; preds = %405, %355
  %412 = phi i64 [ %357, %355 ], [ %406, %405 ]
  %413 = phi ptr [ %349, %355 ], [ %407, %405 ]
  %414 = add nuw nsw i64 %348, 1
  %415 = load i64, ptr %338, align 8, !tbaa !35
  %416 = icmp slt i64 %414, %415
  br i1 %416, label %346, label %417, !llvm.loop !110

417:                                              ; preds = %346, %411, %299, %330, %248, %283, %202, %232, %161, %185, %114, %145, %63, %98, %17, %47, %335, %291, %240, %194, %153, %106, %55, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportLongPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %417

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %16 = load i64, ptr %1, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %14, %47
  %18 = phi i64 [ %16, %14 ], [ %27, %47 ]
  %19 = phi i64 [ 0, %14 ], [ %49, %47 ]
  %20 = phi ptr [ %4, %14 ], [ %48, %47 ]
  %21 = load i64, ptr %10, align 8, !tbaa !36
  %22 = load i64, ptr %15, align 8, !tbaa !37
  %23 = add nsw i64 %22, %19
  %24 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %21, i64 noundef %23, i64 noundef %18, i64 noundef 1, ptr noundef %5) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %417, label %26

26:                                               ; preds = %17
  %27 = load i64, ptr %1, align 8, !tbaa !34
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %44, %29 ], [ %24, %26 ]
  %31 = phi i64 [ %45, %29 ], [ 0, %26 ]
  %32 = phi ptr [ %43, %29 ], [ %20, %26 ]
  %33 = load i16, ptr %30, align 2, !tbaa !38
  %34 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %33) #25
  %35 = getelementptr inbounds i32, ptr %32, i64 1
  store i32 %34, ptr %32, align 4, !tbaa !5
  %36 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !39
  %38 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %37) #25
  %39 = getelementptr inbounds i32, ptr %32, i64 2
  store i32 %38, ptr %35, align 4, !tbaa !5
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 2
  %41 = load i16, ptr %40, align 2, !tbaa !40
  %42 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %41) #25
  %43 = getelementptr inbounds i32, ptr %32, i64 3
  store i32 %42, ptr %39, align 4, !tbaa !5
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %45 = add nuw nsw i64 %31, 1
  %46 = icmp eq i64 %45, %27
  br i1 %46, label %47, label %29, !llvm.loop !111

47:                                               ; preds = %29, %26
  %48 = phi ptr [ %20, %26 ], [ %43, %29 ]
  %49 = add nuw nsw i64 %19, 1
  %50 = load i64, ptr %11, align 8, !tbaa !35
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %17, label %417, !llvm.loop !112

52:                                               ; preds = %6
  %53 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %57 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !35
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %417

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %62 = load i64, ptr %1, align 8, !tbaa !34
  br label %63

63:                                               ; preds = %60, %98
  %64 = phi i64 [ %62, %60 ], [ %73, %98 ]
  %65 = phi i64 [ 0, %60 ], [ %100, %98 ]
  %66 = phi ptr [ %4, %60 ], [ %99, %98 ]
  %67 = load i64, ptr %56, align 8, !tbaa !36
  %68 = load i64, ptr %61, align 8, !tbaa !37
  %69 = add nsw i64 %68, %65
  %70 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %67, i64 noundef %69, i64 noundef %64, i64 noundef 1, ptr noundef %5) #22
  %71 = icmp eq ptr %70, null
  br i1 %71, label %417, label %72

72:                                               ; preds = %63
  %73 = load i64, ptr %1, align 8, !tbaa !34
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %72, %75
  %76 = phi ptr [ %95, %75 ], [ %70, %72 ]
  %77 = phi i64 [ %96, %75 ], [ 0, %72 ]
  %78 = phi ptr [ %94, %75 ], [ %66, %72 ]
  %79 = load i16, ptr %76, align 2, !tbaa !38
  %80 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %79) #25
  %81 = getelementptr inbounds i32, ptr %78, i64 1
  store i32 %80, ptr %78, align 4, !tbaa !5
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 1
  %83 = load i16, ptr %82, align 2, !tbaa !39
  %84 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %83) #25
  %85 = getelementptr inbounds i32, ptr %78, i64 2
  store i32 %84, ptr %81, align 4, !tbaa !5
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 2
  %87 = load i16, ptr %86, align 2, !tbaa !40
  %88 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %87) #25
  %89 = getelementptr inbounds i32, ptr %78, i64 3
  store i32 %88, ptr %85, align 4, !tbaa !5
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 0, i32 3
  %91 = load i16, ptr %90, align 2, !tbaa !43
  %92 = xor i16 %91, -1
  %93 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %92) #25
  %94 = getelementptr inbounds i32, ptr %78, i64 4
  store i32 %93, ptr %89, align 4, !tbaa !5
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %96 = add nuw nsw i64 %77, 1
  %97 = icmp eq i64 %96, %73
  br i1 %97, label %98, label %75, !llvm.loop !113

98:                                               ; preds = %75, %72
  %99 = phi ptr [ %66, %72 ], [ %94, %75 ]
  %100 = add nuw nsw i64 %65, 1
  %101 = load i64, ptr %57, align 8, !tbaa !35
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %63, label %417, !llvm.loop !114

103:                                              ; preds = %52
  %104 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %150

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %108 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !35
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %417

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %113 = load i64, ptr %1, align 8, !tbaa !34
  br label %114

114:                                              ; preds = %111, %145
  %115 = phi i64 [ %113, %111 ], [ %124, %145 ]
  %116 = phi i64 [ 0, %111 ], [ %147, %145 ]
  %117 = phi ptr [ %4, %111 ], [ %146, %145 ]
  %118 = load i64, ptr %107, align 8, !tbaa !36
  %119 = load i64, ptr %112, align 8, !tbaa !37
  %120 = add nsw i64 %119, %116
  %121 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %118, i64 noundef %120, i64 noundef %115, i64 noundef 1, ptr noundef %5) #22
  %122 = icmp eq ptr %121, null
  br i1 %122, label %417, label %123

123:                                              ; preds = %114
  %124 = load i64, ptr %1, align 8, !tbaa !34
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %123, %126
  %127 = phi ptr [ %142, %126 ], [ %121, %123 ]
  %128 = phi i64 [ %143, %126 ], [ 0, %123 ]
  %129 = phi ptr [ %141, %126 ], [ %117, %123 ]
  %130 = load i16, ptr %127, align 2, !tbaa !38
  %131 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %130) #25
  %132 = getelementptr inbounds i32, ptr %129, i64 1
  store i32 %131, ptr %129, align 4, !tbaa !5
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 1
  %134 = load i16, ptr %133, align 2, !tbaa !39
  %135 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %134) #25
  %136 = getelementptr inbounds i32, ptr %129, i64 2
  store i32 %135, ptr %132, align 4, !tbaa !5
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 0, i32 2
  %138 = load i16, ptr %137, align 2, !tbaa !40
  %139 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %138) #25
  %140 = getelementptr inbounds i32, ptr %129, i64 3
  store i32 %139, ptr %136, align 4, !tbaa !5
  %141 = getelementptr inbounds i32, ptr %129, i64 4
  store i32 0, ptr %140, align 4, !tbaa !5
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %127, i64 1
  %143 = add nuw nsw i64 %128, 1
  %144 = icmp eq i64 %143, %124
  br i1 %144, label %145, label %126, !llvm.loop !115

145:                                              ; preds = %126, %123
  %146 = phi ptr [ %117, %123 ], [ %141, %126 ]
  %147 = add nuw nsw i64 %116, 1
  %148 = load i64, ptr %108, align 8, !tbaa !35
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %114, label %417, !llvm.loop !116

150:                                              ; preds = %103
  %151 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %191

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %155 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !35
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %417

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %160 = load i64, ptr %1, align 8, !tbaa !34
  br label %161

161:                                              ; preds = %158, %185
  %162 = phi i64 [ %160, %158 ], [ %186, %185 ]
  %163 = phi i64 [ 0, %158 ], [ %188, %185 ]
  %164 = phi ptr [ %4, %158 ], [ %187, %185 ]
  %165 = load i64, ptr %154, align 8, !tbaa !36
  %166 = load i64, ptr %159, align 8, !tbaa !37
  %167 = add nsw i64 %166, %163
  %168 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %165, i64 noundef %167, i64 noundef %162, i64 noundef 1, ptr noundef %5) #22
  %169 = icmp eq ptr %168, null
  br i1 %169, label %417, label %170

170:                                              ; preds = %161
  %171 = load i64, ptr %1, align 8, !tbaa !34
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %170, %173
  %174 = phi ptr [ %181, %173 ], [ %168, %170 ]
  %175 = phi i64 [ %182, %173 ], [ 0, %170 ]
  %176 = phi ptr [ %180, %173 ], [ %164, %170 ]
  %177 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %174) #27
  %178 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %177) #25
  %179 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %178) #25
  %180 = getelementptr inbounds i32, ptr %176, i64 1
  store i32 %179, ptr %176, align 4, !tbaa !5
  %181 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 1
  %182 = add nuw nsw i64 %175, 1
  %183 = load i64, ptr %1, align 8, !tbaa !34
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %173, label %185, !llvm.loop !117

185:                                              ; preds = %173, %170
  %186 = phi i64 [ %171, %170 ], [ %183, %173 ]
  %187 = phi ptr [ %164, %170 ], [ %180, %173 ]
  %188 = add nuw nsw i64 %163, 1
  %189 = load i64, ptr %155, align 8, !tbaa !35
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %161, label %417, !llvm.loop !118

191:                                              ; preds = %150
  %192 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %237

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %196 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !35
  %198 = icmp sgt i64 %197, 0
  br i1 %198, label %199, label %417

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %201 = load i64, ptr %1, align 8, !tbaa !34
  br label %202

202:                                              ; preds = %199, %232
  %203 = phi i64 [ %201, %199 ], [ %212, %232 ]
  %204 = phi i64 [ 0, %199 ], [ %234, %232 ]
  %205 = phi ptr [ %4, %199 ], [ %233, %232 ]
  %206 = load i64, ptr %195, align 8, !tbaa !36
  %207 = load i64, ptr %200, align 8, !tbaa !37
  %208 = add nsw i64 %207, %204
  %209 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %206, i64 noundef %208, i64 noundef %203, i64 noundef 1, ptr noundef %5) #22
  %210 = icmp eq ptr %209, null
  br i1 %210, label %417, label %211

211:                                              ; preds = %202
  %212 = load i64, ptr %1, align 8, !tbaa !34
  %213 = icmp sgt i64 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %211, %214
  %215 = phi ptr [ %229, %214 ], [ %209, %211 ]
  %216 = phi i64 [ %230, %214 ], [ 0, %211 ]
  %217 = phi ptr [ %228, %214 ], [ %205, %211 ]
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 0, i32 2
  %219 = load i16, ptr %218, align 2, !tbaa !40
  %220 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %219) #25
  %221 = getelementptr inbounds i32, ptr %217, i64 1
  store i32 %220, ptr %217, align 4, !tbaa !5
  %222 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 0, i32 1
  %223 = load i16, ptr %222, align 2, !tbaa !39
  %224 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %223) #25
  %225 = getelementptr inbounds i32, ptr %217, i64 2
  store i32 %224, ptr %221, align 4, !tbaa !5
  %226 = load i16, ptr %215, align 2, !tbaa !38
  %227 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %226) #25
  %228 = getelementptr inbounds i32, ptr %217, i64 3
  store i32 %227, ptr %225, align 4, !tbaa !5
  %229 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 1
  %230 = add nuw nsw i64 %216, 1
  %231 = icmp eq i64 %230, %212
  br i1 %231, label %232, label %214, !llvm.loop !119

232:                                              ; preds = %214, %211
  %233 = phi ptr [ %205, %211 ], [ %228, %214 ]
  %234 = add nuw nsw i64 %204, 1
  %235 = load i64, ptr %196, align 8, !tbaa !35
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %202, label %417, !llvm.loop !120

237:                                              ; preds = %191
  %238 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %288

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %242 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %243 = load i64, ptr %242, align 8, !tbaa !35
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %245, label %417

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %247 = load i64, ptr %1, align 8, !tbaa !34
  br label %248

248:                                              ; preds = %245, %283
  %249 = phi i64 [ %247, %245 ], [ %258, %283 ]
  %250 = phi i64 [ 0, %245 ], [ %285, %283 ]
  %251 = phi ptr [ %4, %245 ], [ %284, %283 ]
  %252 = load i64, ptr %241, align 8, !tbaa !36
  %253 = load i64, ptr %246, align 8, !tbaa !37
  %254 = add nsw i64 %253, %250
  %255 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %252, i64 noundef %254, i64 noundef %249, i64 noundef 1, ptr noundef %5) #22
  %256 = icmp eq ptr %255, null
  br i1 %256, label %417, label %257

257:                                              ; preds = %248
  %258 = load i64, ptr %1, align 8, !tbaa !34
  %259 = icmp sgt i64 %258, 0
  br i1 %259, label %260, label %283

260:                                              ; preds = %257, %260
  %261 = phi ptr [ %280, %260 ], [ %255, %257 ]
  %262 = phi i64 [ %281, %260 ], [ 0, %257 ]
  %263 = phi ptr [ %279, %260 ], [ %251, %257 ]
  %264 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 0, i32 2
  %265 = load i16, ptr %264, align 2, !tbaa !40
  %266 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %265) #25
  %267 = getelementptr inbounds i32, ptr %263, i64 1
  store i32 %266, ptr %263, align 4, !tbaa !5
  %268 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 0, i32 1
  %269 = load i16, ptr %268, align 2, !tbaa !39
  %270 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %269) #25
  %271 = getelementptr inbounds i32, ptr %263, i64 2
  store i32 %270, ptr %267, align 4, !tbaa !5
  %272 = load i16, ptr %261, align 2, !tbaa !38
  %273 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %272) #25
  %274 = getelementptr inbounds i32, ptr %263, i64 3
  store i32 %273, ptr %271, align 4, !tbaa !5
  %275 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 0, i32 3
  %276 = load i16, ptr %275, align 2, !tbaa !43
  %277 = xor i16 %276, -1
  %278 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %277) #25
  %279 = getelementptr inbounds i32, ptr %263, i64 4
  store i32 %278, ptr %274, align 4, !tbaa !5
  %280 = getelementptr inbounds %struct._PixelPacket, ptr %261, i64 1
  %281 = add nuw nsw i64 %262, 1
  %282 = icmp eq i64 %281, %258
  br i1 %282, label %283, label %260, !llvm.loop !121

283:                                              ; preds = %260, %257
  %284 = phi ptr [ %251, %257 ], [ %279, %260 ]
  %285 = add nuw nsw i64 %250, 1
  %286 = load i64, ptr %242, align 8, !tbaa !35
  %287 = icmp slt i64 %285, %286
  br i1 %287, label %248, label %417, !llvm.loop !122

288:                                              ; preds = %237
  %289 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %335

291:                                              ; preds = %288
  %292 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %293 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %294 = load i64, ptr %293, align 8, !tbaa !35
  %295 = icmp sgt i64 %294, 0
  br i1 %295, label %296, label %417

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %298 = load i64, ptr %1, align 8, !tbaa !34
  br label %299

299:                                              ; preds = %296, %330
  %300 = phi i64 [ %298, %296 ], [ %309, %330 ]
  %301 = phi i64 [ 0, %296 ], [ %332, %330 ]
  %302 = phi ptr [ %4, %296 ], [ %331, %330 ]
  %303 = load i64, ptr %292, align 8, !tbaa !36
  %304 = load i64, ptr %297, align 8, !tbaa !37
  %305 = add nsw i64 %304, %301
  %306 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %303, i64 noundef %305, i64 noundef %300, i64 noundef 1, ptr noundef %5) #22
  %307 = icmp eq ptr %306, null
  br i1 %307, label %417, label %308

308:                                              ; preds = %299
  %309 = load i64, ptr %1, align 8, !tbaa !34
  %310 = icmp sgt i64 %309, 0
  br i1 %310, label %311, label %330

311:                                              ; preds = %308, %311
  %312 = phi ptr [ %327, %311 ], [ %306, %308 ]
  %313 = phi i64 [ %328, %311 ], [ 0, %308 ]
  %314 = phi ptr [ %326, %311 ], [ %302, %308 ]
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %312, i64 0, i32 2
  %316 = load i16, ptr %315, align 2, !tbaa !40
  %317 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %316) #25
  %318 = getelementptr inbounds i32, ptr %314, i64 1
  store i32 %317, ptr %314, align 4, !tbaa !5
  %319 = getelementptr inbounds %struct._PixelPacket, ptr %312, i64 0, i32 1
  %320 = load i16, ptr %319, align 2, !tbaa !39
  %321 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %320) #25
  %322 = getelementptr inbounds i32, ptr %314, i64 2
  store i32 %321, ptr %318, align 4, !tbaa !5
  %323 = load i16, ptr %312, align 2, !tbaa !38
  %324 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %323) #25
  %325 = getelementptr inbounds i32, ptr %314, i64 3
  store i32 %324, ptr %322, align 4, !tbaa !5
  %326 = getelementptr inbounds i32, ptr %314, i64 4
  store i32 0, ptr %325, align 4, !tbaa !5
  %327 = getelementptr inbounds %struct._PixelPacket, ptr %312, i64 1
  %328 = add nuw nsw i64 %313, 1
  %329 = icmp eq i64 %328, %309
  br i1 %329, label %330, label %311, !llvm.loop !123

330:                                              ; preds = %311, %308
  %331 = phi ptr [ %302, %308 ], [ %326, %311 ]
  %332 = add nuw nsw i64 %301, 1
  %333 = load i64, ptr %293, align 8, !tbaa !35
  %334 = icmp slt i64 %332, %333
  br i1 %334, label %299, label %417, !llvm.loop !124

335:                                              ; preds = %288
  %336 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %337 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %338 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %339 = load i64, ptr %338, align 8, !tbaa !35
  %340 = icmp sgt i64 %339, 0
  br i1 %340, label %341, label %417

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %343 = icmp sgt i64 %336, 0
  %344 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %345 = load i64, ptr %1, align 8, !tbaa !34
  br label %346

346:                                              ; preds = %341, %411
  %347 = phi i64 [ %345, %341 ], [ %412, %411 ]
  %348 = phi i64 [ 0, %341 ], [ %414, %411 ]
  %349 = phi ptr [ %4, %341 ], [ %413, %411 ]
  %350 = load i64, ptr %337, align 8, !tbaa !36
  %351 = load i64, ptr %342, align 8, !tbaa !37
  %352 = add nsw i64 %351, %348
  %353 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %350, i64 noundef %352, i64 noundef %347, i64 noundef 1, ptr noundef %5) #22
  %354 = icmp eq ptr %353, null
  br i1 %354, label %417, label %355

355:                                              ; preds = %346
  %356 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #22
  %357 = load i64, ptr %1, align 8, !tbaa !34
  %358 = icmp sgt i64 %357, 0
  br i1 %358, label %359, label %411

359:                                              ; preds = %355
  %360 = icmp eq ptr %356, null
  br label %361

361:                                              ; preds = %359, %405
  %362 = phi i64 [ %357, %359 ], [ %406, %405 ]
  %363 = phi ptr [ %353, %359 ], [ %408, %405 ]
  %364 = phi i64 [ 0, %359 ], [ %409, %405 ]
  %365 = phi ptr [ %349, %359 ], [ %407, %405 ]
  br i1 %343, label %366, label %405

366:                                              ; preds = %361
  %367 = getelementptr inbounds i16, ptr %356, i64 %364
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 3
  %369 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 1
  %370 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 2
  br label %371

371:                                              ; preds = %366, %399
  %372 = phi i64 [ 0, %366 ], [ %401, %399 ]
  %373 = phi ptr [ %365, %366 ], [ %400, %399 ]
  store i32 0, ptr %373, align 4, !tbaa !5
  %374 = getelementptr inbounds i32, ptr %3, i64 %372
  %375 = load i32, ptr %374, align 4, !tbaa !5
  switch i32 %375, label %399 [
    i32 14, label %376
    i32 6, label %376
    i32 9, label %378
    i32 12, label %378
    i32 3, label %380
    i32 19, label %380
    i32 1, label %382
    i32 13, label %385
    i32 2, label %387
    i32 11, label %393
  ]

376:                                              ; preds = %371, %371
  %377 = load i16, ptr %370, align 2, !tbaa !40
  br label %396

378:                                              ; preds = %371, %371
  %379 = load i16, ptr %369, align 2, !tbaa !39
  br label %396

380:                                              ; preds = %371, %371
  %381 = load i16, ptr %363, align 2, !tbaa !38
  br label %396

382:                                              ; preds = %371
  %383 = load i16, ptr %368, align 2, !tbaa !43
  %384 = xor i16 %383, -1
  br label %396

385:                                              ; preds = %371
  %386 = load i16, ptr %368, align 2, !tbaa !43
  br label %396

387:                                              ; preds = %371
  %388 = load i32, ptr %344, align 4, !tbaa !31
  %389 = icmp eq i32 %388, 12
  br i1 %389, label %390, label %399

390:                                              ; preds = %387
  br i1 %360, label %396, label %391

391:                                              ; preds = %390
  %392 = load i16, ptr %367, align 2, !tbaa !56
  br label %396

393:                                              ; preds = %371
  %394 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %363) #27
  %395 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %394) #25
  br label %396

396:                                              ; preds = %391, %390, %376, %378, %380, %382, %385, %393
  %397 = phi i16 [ %395, %393 ], [ %386, %385 ], [ %384, %382 ], [ %381, %380 ], [ %379, %378 ], [ %377, %376 ], [ %392, %391 ], [ 0, %390 ]
  %398 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %397) #25
  store i32 %398, ptr %373, align 4, !tbaa !5
  br label %399

399:                                              ; preds = %396, %371, %387
  %400 = getelementptr inbounds i32, ptr %373, i64 1
  %401 = add nuw nsw i64 %372, 1
  %402 = icmp eq i64 %401, %336
  br i1 %402, label %403, label %371, !llvm.loop !125

403:                                              ; preds = %399
  %404 = load i64, ptr %1, align 8, !tbaa !34
  br label %405

405:                                              ; preds = %403, %361
  %406 = phi i64 [ %362, %361 ], [ %404, %403 ]
  %407 = phi ptr [ %365, %361 ], [ %400, %403 ]
  %408 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 1
  %409 = add nuw nsw i64 %364, 1
  %410 = icmp slt i64 %409, %406
  br i1 %410, label %361, label %411, !llvm.loop !126

411:                                              ; preds = %405, %355
  %412 = phi i64 [ %357, %355 ], [ %406, %405 ]
  %413 = phi ptr [ %349, %355 ], [ %407, %405 ]
  %414 = add nuw nsw i64 %348, 1
  %415 = load i64, ptr %338, align 8, !tbaa !35
  %416 = icmp slt i64 %414, %415
  br i1 %416, label %346, label %417, !llvm.loop !127

417:                                              ; preds = %346, %411, %299, %330, %248, %283, %202, %232, %161, %185, %114, %145, %63, %98, %17, %47, %335, %291, %240, %194, %153, %106, %55, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportQuantumPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %395

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %16 = load i64, ptr %1, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %14, %44
  %18 = phi i64 [ %16, %14 ], [ %27, %44 ]
  %19 = phi i64 [ 0, %14 ], [ %46, %44 ]
  %20 = phi ptr [ %4, %14 ], [ %45, %44 ]
  %21 = load i64, ptr %10, align 8, !tbaa !36
  %22 = load i64, ptr %15, align 8, !tbaa !37
  %23 = add nsw i64 %22, %19
  %24 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %21, i64 noundef %23, i64 noundef %18, i64 noundef 1, ptr noundef %5) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %395, label %26

26:                                               ; preds = %17
  %27 = load i64, ptr %1, align 8, !tbaa !34
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %41, %29 ], [ %24, %26 ]
  %31 = phi i64 [ %42, %29 ], [ 0, %26 ]
  %32 = phi ptr [ %40, %29 ], [ %20, %26 ]
  %33 = load i16, ptr %30, align 2, !tbaa !38
  %34 = getelementptr inbounds i16, ptr %32, i64 1
  store i16 %33, ptr %32, align 2, !tbaa !56
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 1
  %36 = load i16, ptr %35, align 2, !tbaa !39
  %37 = getelementptr inbounds i16, ptr %32, i64 2
  store i16 %36, ptr %34, align 2, !tbaa !56
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !40
  %40 = getelementptr inbounds i16, ptr %32, i64 3
  store i16 %39, ptr %37, align 2, !tbaa !56
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %42 = add nuw nsw i64 %31, 1
  %43 = icmp eq i64 %42, %27
  br i1 %43, label %44, label %29, !llvm.loop !128

44:                                               ; preds = %29, %26
  %45 = phi ptr [ %20, %26 ], [ %40, %29 ]
  %46 = add nuw nsw i64 %19, 1
  %47 = load i64, ptr %11, align 8, !tbaa !35
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %17, label %395, !llvm.loop !129

49:                                               ; preds = %6
  %50 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %96

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %54 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !35
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %395

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %59 = load i64, ptr %1, align 8, !tbaa !34
  br label %60

60:                                               ; preds = %57, %91
  %61 = phi i64 [ %59, %57 ], [ %70, %91 ]
  %62 = phi i64 [ 0, %57 ], [ %93, %91 ]
  %63 = phi ptr [ %4, %57 ], [ %92, %91 ]
  %64 = load i64, ptr %53, align 8, !tbaa !36
  %65 = load i64, ptr %58, align 8, !tbaa !37
  %66 = add nsw i64 %65, %62
  %67 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %64, i64 noundef %66, i64 noundef %61, i64 noundef 1, ptr noundef %5) #22
  %68 = icmp eq ptr %67, null
  br i1 %68, label %395, label %69

69:                                               ; preds = %60
  %70 = load i64, ptr %1, align 8, !tbaa !34
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69, %72
  %73 = phi ptr [ %88, %72 ], [ %67, %69 ]
  %74 = phi i64 [ %89, %72 ], [ 0, %69 ]
  %75 = phi ptr [ %87, %72 ], [ %63, %69 ]
  %76 = load i16, ptr %73, align 2, !tbaa !38
  %77 = getelementptr inbounds i16, ptr %75, i64 1
  store i16 %76, ptr %75, align 2, !tbaa !56
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 1
  %79 = load i16, ptr %78, align 2, !tbaa !39
  %80 = getelementptr inbounds i16, ptr %75, i64 2
  store i16 %79, ptr %77, align 2, !tbaa !56
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 2
  %82 = load i16, ptr %81, align 2, !tbaa !40
  %83 = getelementptr inbounds i16, ptr %75, i64 3
  store i16 %82, ptr %80, align 2, !tbaa !56
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !43
  %86 = xor i16 %85, -1
  %87 = getelementptr inbounds i16, ptr %75, i64 4
  store i16 %86, ptr %83, align 2, !tbaa !56
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %89 = add nuw nsw i64 %74, 1
  %90 = icmp eq i64 %89, %70
  br i1 %90, label %91, label %72, !llvm.loop !130

91:                                               ; preds = %72, %69
  %92 = phi ptr [ %63, %69 ], [ %87, %72 ]
  %93 = add nuw nsw i64 %62, 1
  %94 = load i64, ptr %54, align 8, !tbaa !35
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %60, label %395, !llvm.loop !131

96:                                               ; preds = %49
  %97 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %140

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %101 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !35
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %395

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %106 = load i64, ptr %1, align 8, !tbaa !34
  br label %107

107:                                              ; preds = %104, %135
  %108 = phi i64 [ %106, %104 ], [ %117, %135 ]
  %109 = phi i64 [ 0, %104 ], [ %137, %135 ]
  %110 = phi ptr [ %4, %104 ], [ %136, %135 ]
  %111 = load i64, ptr %100, align 8, !tbaa !36
  %112 = load i64, ptr %105, align 8, !tbaa !37
  %113 = add nsw i64 %112, %109
  %114 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %111, i64 noundef %113, i64 noundef %108, i64 noundef 1, ptr noundef %5) #22
  %115 = icmp eq ptr %114, null
  br i1 %115, label %395, label %116

116:                                              ; preds = %107
  %117 = load i64, ptr %1, align 8, !tbaa !34
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %116, %119
  %120 = phi ptr [ %132, %119 ], [ %114, %116 ]
  %121 = phi i64 [ %133, %119 ], [ 0, %116 ]
  %122 = phi ptr [ %131, %119 ], [ %110, %116 ]
  %123 = load i16, ptr %120, align 2, !tbaa !38
  %124 = getelementptr inbounds i16, ptr %122, i64 1
  store i16 %123, ptr %122, align 2, !tbaa !56
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 0, i32 1
  %126 = load i16, ptr %125, align 2, !tbaa !39
  %127 = getelementptr inbounds i16, ptr %122, i64 2
  store i16 %126, ptr %124, align 2, !tbaa !56
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 0, i32 2
  %129 = load i16, ptr %128, align 2, !tbaa !40
  %130 = getelementptr inbounds i16, ptr %122, i64 3
  store i16 %129, ptr %127, align 2, !tbaa !56
  %131 = getelementptr inbounds i16, ptr %122, i64 4
  store i16 0, ptr %130, align 2, !tbaa !56
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 1
  %133 = add nuw nsw i64 %121, 1
  %134 = icmp eq i64 %133, %117
  br i1 %134, label %135, label %119, !llvm.loop !132

135:                                              ; preds = %119, %116
  %136 = phi ptr [ %110, %116 ], [ %131, %119 ]
  %137 = add nuw nsw i64 %109, 1
  %138 = load i64, ptr %101, align 8, !tbaa !35
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %107, label %395, !llvm.loop !133

140:                                              ; preds = %96
  %141 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %180

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %145 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %146 = load i64, ptr %145, align 8, !tbaa !35
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %395

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %150 = load i64, ptr %1, align 8, !tbaa !34
  br label %151

151:                                              ; preds = %148, %174
  %152 = phi i64 [ %150, %148 ], [ %175, %174 ]
  %153 = phi i64 [ 0, %148 ], [ %177, %174 ]
  %154 = phi ptr [ %4, %148 ], [ %176, %174 ]
  %155 = load i64, ptr %144, align 8, !tbaa !36
  %156 = load i64, ptr %149, align 8, !tbaa !37
  %157 = add nsw i64 %156, %153
  %158 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %155, i64 noundef %157, i64 noundef %152, i64 noundef 1, ptr noundef %5) #22
  %159 = icmp eq ptr %158, null
  br i1 %159, label %395, label %160

160:                                              ; preds = %151
  %161 = load i64, ptr %1, align 8, !tbaa !34
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %160, %163
  %164 = phi ptr [ %170, %163 ], [ %158, %160 ]
  %165 = phi i64 [ %171, %163 ], [ 0, %160 ]
  %166 = phi ptr [ %169, %163 ], [ %154, %160 ]
  %167 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %164) #27
  %168 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %167) #25
  %169 = getelementptr inbounds i16, ptr %166, i64 1
  store i16 %168, ptr %166, align 2, !tbaa !56
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %164, i64 1
  %171 = add nuw nsw i64 %165, 1
  %172 = load i64, ptr %1, align 8, !tbaa !34
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %163, label %174, !llvm.loop !134

174:                                              ; preds = %163, %160
  %175 = phi i64 [ %161, %160 ], [ %172, %163 ]
  %176 = phi ptr [ %154, %160 ], [ %169, %163 ]
  %177 = add nuw nsw i64 %153, 1
  %178 = load i64, ptr %145, align 8, !tbaa !35
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %151, label %395, !llvm.loop !135

180:                                              ; preds = %140
  %181 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %223

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %185 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %186 = load i64, ptr %185, align 8, !tbaa !35
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %395

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %190 = load i64, ptr %1, align 8, !tbaa !34
  br label %191

191:                                              ; preds = %188, %218
  %192 = phi i64 [ %190, %188 ], [ %201, %218 ]
  %193 = phi i64 [ 0, %188 ], [ %220, %218 ]
  %194 = phi ptr [ %4, %188 ], [ %219, %218 ]
  %195 = load i64, ptr %184, align 8, !tbaa !36
  %196 = load i64, ptr %189, align 8, !tbaa !37
  %197 = add nsw i64 %196, %193
  %198 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %195, i64 noundef %197, i64 noundef %192, i64 noundef 1, ptr noundef %5) #22
  %199 = icmp eq ptr %198, null
  br i1 %199, label %395, label %200

200:                                              ; preds = %191
  %201 = load i64, ptr %1, align 8, !tbaa !34
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %200, %203
  %204 = phi ptr [ %215, %203 ], [ %198, %200 ]
  %205 = phi i64 [ %216, %203 ], [ 0, %200 ]
  %206 = phi ptr [ %214, %203 ], [ %194, %200 ]
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 2
  %208 = load i16, ptr %207, align 2, !tbaa !40
  %209 = getelementptr inbounds i16, ptr %206, i64 1
  store i16 %208, ptr %206, align 2, !tbaa !56
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 1
  %211 = load i16, ptr %210, align 2, !tbaa !39
  %212 = getelementptr inbounds i16, ptr %206, i64 2
  store i16 %211, ptr %209, align 2, !tbaa !56
  %213 = load i16, ptr %204, align 2, !tbaa !38
  %214 = getelementptr inbounds i16, ptr %206, i64 3
  store i16 %213, ptr %212, align 2, !tbaa !56
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 1
  %216 = add nuw nsw i64 %205, 1
  %217 = icmp eq i64 %216, %201
  br i1 %217, label %218, label %203, !llvm.loop !136

218:                                              ; preds = %203, %200
  %219 = phi ptr [ %194, %200 ], [ %214, %203 ]
  %220 = add nuw nsw i64 %193, 1
  %221 = load i64, ptr %185, align 8, !tbaa !35
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %191, label %395, !llvm.loop !137

223:                                              ; preds = %180
  %224 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %270

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %228 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %229 = load i64, ptr %228, align 8, !tbaa !35
  %230 = icmp sgt i64 %229, 0
  br i1 %230, label %231, label %395

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %233 = load i64, ptr %1, align 8, !tbaa !34
  br label %234

234:                                              ; preds = %231, %265
  %235 = phi i64 [ %233, %231 ], [ %244, %265 ]
  %236 = phi i64 [ 0, %231 ], [ %267, %265 ]
  %237 = phi ptr [ %4, %231 ], [ %266, %265 ]
  %238 = load i64, ptr %227, align 8, !tbaa !36
  %239 = load i64, ptr %232, align 8, !tbaa !37
  %240 = add nsw i64 %239, %236
  %241 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %238, i64 noundef %240, i64 noundef %235, i64 noundef 1, ptr noundef %5) #22
  %242 = icmp eq ptr %241, null
  br i1 %242, label %395, label %243

243:                                              ; preds = %234
  %244 = load i64, ptr %1, align 8, !tbaa !34
  %245 = icmp sgt i64 %244, 0
  br i1 %245, label %246, label %265

246:                                              ; preds = %243, %246
  %247 = phi ptr [ %262, %246 ], [ %241, %243 ]
  %248 = phi i64 [ %263, %246 ], [ 0, %243 ]
  %249 = phi ptr [ %261, %246 ], [ %237, %243 ]
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 2
  %251 = load i16, ptr %250, align 2, !tbaa !40
  %252 = getelementptr inbounds i16, ptr %249, i64 1
  store i16 %251, ptr %249, align 2, !tbaa !56
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 1
  %254 = load i16, ptr %253, align 2, !tbaa !39
  %255 = getelementptr inbounds i16, ptr %249, i64 2
  store i16 %254, ptr %252, align 2, !tbaa !56
  %256 = load i16, ptr %247, align 2, !tbaa !38
  %257 = getelementptr inbounds i16, ptr %249, i64 3
  store i16 %256, ptr %255, align 2, !tbaa !56
  %258 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 3
  %259 = load i16, ptr %258, align 2, !tbaa !43
  %260 = xor i16 %259, -1
  %261 = getelementptr inbounds i16, ptr %249, i64 4
  store i16 %260, ptr %257, align 2, !tbaa !56
  %262 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 1
  %263 = add nuw nsw i64 %248, 1
  %264 = icmp eq i64 %263, %244
  br i1 %264, label %265, label %246, !llvm.loop !138

265:                                              ; preds = %246, %243
  %266 = phi ptr [ %237, %243 ], [ %261, %246 ]
  %267 = add nuw nsw i64 %236, 1
  %268 = load i64, ptr %228, align 8, !tbaa !35
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %234, label %395, !llvm.loop !139

270:                                              ; preds = %223
  %271 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %314

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %275 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %276 = load i64, ptr %275, align 8, !tbaa !35
  %277 = icmp sgt i64 %276, 0
  br i1 %277, label %278, label %395

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %280 = load i64, ptr %1, align 8, !tbaa !34
  br label %281

281:                                              ; preds = %278, %309
  %282 = phi i64 [ %280, %278 ], [ %291, %309 ]
  %283 = phi i64 [ 0, %278 ], [ %311, %309 ]
  %284 = phi ptr [ %4, %278 ], [ %310, %309 ]
  %285 = load i64, ptr %274, align 8, !tbaa !36
  %286 = load i64, ptr %279, align 8, !tbaa !37
  %287 = add nsw i64 %286, %283
  %288 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %285, i64 noundef %287, i64 noundef %282, i64 noundef 1, ptr noundef %5) #22
  %289 = icmp eq ptr %288, null
  br i1 %289, label %395, label %290

290:                                              ; preds = %281
  %291 = load i64, ptr %1, align 8, !tbaa !34
  %292 = icmp sgt i64 %291, 0
  br i1 %292, label %293, label %309

293:                                              ; preds = %290, %293
  %294 = phi ptr [ %306, %293 ], [ %288, %290 ]
  %295 = phi i64 [ %307, %293 ], [ 0, %290 ]
  %296 = phi ptr [ %305, %293 ], [ %284, %290 ]
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %294, i64 0, i32 2
  %298 = load i16, ptr %297, align 2, !tbaa !40
  %299 = getelementptr inbounds i16, ptr %296, i64 1
  store i16 %298, ptr %296, align 2, !tbaa !56
  %300 = getelementptr inbounds %struct._PixelPacket, ptr %294, i64 0, i32 1
  %301 = load i16, ptr %300, align 2, !tbaa !39
  %302 = getelementptr inbounds i16, ptr %296, i64 2
  store i16 %301, ptr %299, align 2, !tbaa !56
  %303 = load i16, ptr %294, align 2, !tbaa !38
  %304 = getelementptr inbounds i16, ptr %296, i64 3
  store i16 %303, ptr %302, align 2, !tbaa !56
  %305 = getelementptr inbounds i16, ptr %296, i64 4
  store i16 0, ptr %304, align 2, !tbaa !56
  %306 = getelementptr inbounds %struct._PixelPacket, ptr %294, i64 1
  %307 = add nuw nsw i64 %295, 1
  %308 = icmp eq i64 %307, %291
  br i1 %308, label %309, label %293, !llvm.loop !140

309:                                              ; preds = %293, %290
  %310 = phi ptr [ %284, %290 ], [ %305, %293 ]
  %311 = add nuw nsw i64 %283, 1
  %312 = load i64, ptr %275, align 8, !tbaa !35
  %313 = icmp slt i64 %311, %312
  br i1 %313, label %281, label %395, !llvm.loop !141

314:                                              ; preds = %270
  %315 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %316 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %317 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %318 = load i64, ptr %317, align 8, !tbaa !35
  %319 = icmp sgt i64 %318, 0
  br i1 %319, label %320, label %395

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %322 = icmp sgt i64 %315, 0
  %323 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %324 = load i64, ptr %1, align 8, !tbaa !34
  br label %325

325:                                              ; preds = %320, %389
  %326 = phi i64 [ %324, %320 ], [ %390, %389 ]
  %327 = phi i64 [ 0, %320 ], [ %392, %389 ]
  %328 = phi ptr [ %4, %320 ], [ %391, %389 ]
  %329 = load i64, ptr %316, align 8, !tbaa !36
  %330 = load i64, ptr %321, align 8, !tbaa !37
  %331 = add nsw i64 %330, %327
  %332 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %329, i64 noundef %331, i64 noundef %326, i64 noundef 1, ptr noundef %5) #22
  %333 = icmp eq ptr %332, null
  br i1 %333, label %395, label %334

334:                                              ; preds = %325
  %335 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #22
  %336 = load i64, ptr %1, align 8, !tbaa !34
  %337 = icmp sgt i64 %336, 0
  br i1 %337, label %338, label %389

338:                                              ; preds = %334
  %339 = icmp eq ptr %335, null
  br label %340

340:                                              ; preds = %338, %383
  %341 = phi i64 [ %336, %338 ], [ %384, %383 ]
  %342 = phi ptr [ %332, %338 ], [ %386, %383 ]
  %343 = phi i64 [ 0, %338 ], [ %387, %383 ]
  %344 = phi ptr [ %328, %338 ], [ %385, %383 ]
  br i1 %322, label %345, label %383

345:                                              ; preds = %340
  %346 = getelementptr inbounds i16, ptr %335, i64 %343
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 0, i32 3
  %348 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 0, i32 1
  %349 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 0, i32 2
  br label %350

350:                                              ; preds = %345, %377
  %351 = phi i64 [ 0, %345 ], [ %379, %377 ]
  %352 = phi ptr [ %344, %345 ], [ %378, %377 ]
  store i16 0, ptr %352, align 2, !tbaa !56
  %353 = getelementptr inbounds i32, ptr %3, i64 %351
  %354 = load i32, ptr %353, align 4, !tbaa !5
  switch i32 %354, label %377 [
    i32 14, label %355
    i32 6, label %355
    i32 9, label %357
    i32 12, label %357
    i32 3, label %359
    i32 19, label %359
    i32 1, label %361
    i32 13, label %364
    i32 2, label %366
    i32 11, label %372
  ]

355:                                              ; preds = %350, %350
  %356 = load i16, ptr %349, align 2, !tbaa !40
  br label %375

357:                                              ; preds = %350, %350
  %358 = load i16, ptr %348, align 2, !tbaa !39
  br label %375

359:                                              ; preds = %350, %350
  %360 = load i16, ptr %342, align 2, !tbaa !38
  br label %375

361:                                              ; preds = %350
  %362 = load i16, ptr %347, align 2, !tbaa !43
  %363 = xor i16 %362, -1
  br label %375

364:                                              ; preds = %350
  %365 = load i16, ptr %347, align 2, !tbaa !43
  br label %375

366:                                              ; preds = %350
  %367 = load i32, ptr %323, align 4, !tbaa !31
  %368 = icmp eq i32 %367, 12
  br i1 %368, label %369, label %377

369:                                              ; preds = %366
  br i1 %339, label %375, label %370

370:                                              ; preds = %369
  %371 = load i16, ptr %346, align 2, !tbaa !56
  br label %375

372:                                              ; preds = %350
  %373 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %342) #27
  %374 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %373) #25
  br label %375

375:                                              ; preds = %370, %369, %355, %357, %359, %361, %364, %372
  %376 = phi i16 [ %374, %372 ], [ %365, %364 ], [ %363, %361 ], [ %360, %359 ], [ %358, %357 ], [ %356, %355 ], [ %371, %370 ], [ 0, %369 ]
  store i16 %376, ptr %352, align 2, !tbaa !56
  br label %377

377:                                              ; preds = %375, %350, %366
  %378 = getelementptr inbounds i16, ptr %352, i64 1
  %379 = add nuw nsw i64 %351, 1
  %380 = icmp eq i64 %379, %315
  br i1 %380, label %381, label %350, !llvm.loop !142

381:                                              ; preds = %377
  %382 = load i64, ptr %1, align 8, !tbaa !34
  br label %383

383:                                              ; preds = %381, %340
  %384 = phi i64 [ %341, %340 ], [ %382, %381 ]
  %385 = phi ptr [ %344, %340 ], [ %378, %381 ]
  %386 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 1
  %387 = add nuw nsw i64 %343, 1
  %388 = icmp slt i64 %387, %384
  br i1 %388, label %340, label %389, !llvm.loop !143

389:                                              ; preds = %383, %334
  %390 = phi i64 [ %336, %334 ], [ %384, %383 ]
  %391 = phi ptr [ %328, %334 ], [ %385, %383 ]
  %392 = add nuw nsw i64 %327, 1
  %393 = load i64, ptr %317, align 8, !tbaa !35
  %394 = icmp slt i64 %392, %393
  br i1 %394, label %325, label %395, !llvm.loop !144

395:                                              ; preds = %325, %389, %281, %309, %234, %265, %191, %218, %151, %174, %107, %135, %60, %91, %17, %44, %314, %273, %226, %183, %143, %99, %52, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ExportShortPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %395

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %16 = load i64, ptr %1, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %14, %44
  %18 = phi i64 [ %16, %14 ], [ %27, %44 ]
  %19 = phi i64 [ 0, %14 ], [ %46, %44 ]
  %20 = phi ptr [ %4, %14 ], [ %45, %44 ]
  %21 = load i64, ptr %10, align 8, !tbaa !36
  %22 = load i64, ptr %15, align 8, !tbaa !37
  %23 = add nsw i64 %22, %19
  %24 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %21, i64 noundef %23, i64 noundef %18, i64 noundef 1, ptr noundef %5) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %395, label %26

26:                                               ; preds = %17
  %27 = load i64, ptr %1, align 8, !tbaa !34
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %41, %29 ], [ %24, %26 ]
  %31 = phi ptr [ %40, %29 ], [ %20, %26 ]
  %32 = phi i64 [ %42, %29 ], [ 0, %26 ]
  %33 = load i16, ptr %30, align 2, !tbaa !38
  %34 = getelementptr inbounds i16, ptr %31, i64 1
  store i16 %33, ptr %31, align 2, !tbaa !56
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 1
  %36 = load i16, ptr %35, align 2, !tbaa !39
  %37 = getelementptr inbounds i16, ptr %31, i64 2
  store i16 %36, ptr %34, align 2, !tbaa !56
  %38 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 0, i32 2
  %39 = load i16, ptr %38, align 2, !tbaa !40
  %40 = getelementptr inbounds i16, ptr %31, i64 3
  store i16 %39, ptr %37, align 2, !tbaa !56
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %30, i64 1
  %42 = add nuw nsw i64 %32, 1
  %43 = icmp eq i64 %42, %27
  br i1 %43, label %44, label %29, !llvm.loop !145

44:                                               ; preds = %29, %26
  %45 = phi ptr [ %20, %26 ], [ %40, %29 ]
  %46 = add nuw nsw i64 %19, 1
  %47 = load i64, ptr %11, align 8, !tbaa !35
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %17, label %395, !llvm.loop !146

49:                                               ; preds = %6
  %50 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %96

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %54 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !35
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %395

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %59 = load i64, ptr %1, align 8, !tbaa !34
  br label %60

60:                                               ; preds = %57, %91
  %61 = phi i64 [ %59, %57 ], [ %70, %91 ]
  %62 = phi i64 [ 0, %57 ], [ %93, %91 ]
  %63 = phi ptr [ %4, %57 ], [ %92, %91 ]
  %64 = load i64, ptr %53, align 8, !tbaa !36
  %65 = load i64, ptr %58, align 8, !tbaa !37
  %66 = add nsw i64 %65, %62
  %67 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %64, i64 noundef %66, i64 noundef %61, i64 noundef 1, ptr noundef %5) #22
  %68 = icmp eq ptr %67, null
  br i1 %68, label %395, label %69

69:                                               ; preds = %60
  %70 = load i64, ptr %1, align 8, !tbaa !34
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69, %72
  %73 = phi ptr [ %88, %72 ], [ %67, %69 ]
  %74 = phi ptr [ %87, %72 ], [ %63, %69 ]
  %75 = phi i64 [ %89, %72 ], [ 0, %69 ]
  %76 = load i16, ptr %73, align 2, !tbaa !38
  %77 = getelementptr inbounds i16, ptr %74, i64 1
  store i16 %76, ptr %74, align 2, !tbaa !56
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 1
  %79 = load i16, ptr %78, align 2, !tbaa !39
  %80 = getelementptr inbounds i16, ptr %74, i64 2
  store i16 %79, ptr %77, align 2, !tbaa !56
  %81 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 2
  %82 = load i16, ptr %81, align 2, !tbaa !40
  %83 = getelementptr inbounds i16, ptr %74, i64 3
  store i16 %82, ptr %80, align 2, !tbaa !56
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 0, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !43
  %86 = xor i16 %85, -1
  %87 = getelementptr inbounds i16, ptr %74, i64 4
  store i16 %86, ptr %83, align 2, !tbaa !56
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %73, i64 1
  %89 = add nuw nsw i64 %75, 1
  %90 = icmp eq i64 %89, %70
  br i1 %90, label %91, label %72, !llvm.loop !147

91:                                               ; preds = %72, %69
  %92 = phi ptr [ %63, %69 ], [ %87, %72 ]
  %93 = add nuw nsw i64 %62, 1
  %94 = load i64, ptr %54, align 8, !tbaa !35
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %60, label %395, !llvm.loop !148

96:                                               ; preds = %49
  %97 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %140

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %101 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !35
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %395

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %106 = load i64, ptr %1, align 8, !tbaa !34
  br label %107

107:                                              ; preds = %104, %135
  %108 = phi i64 [ %106, %104 ], [ %117, %135 ]
  %109 = phi i64 [ 0, %104 ], [ %137, %135 ]
  %110 = phi ptr [ %4, %104 ], [ %136, %135 ]
  %111 = load i64, ptr %100, align 8, !tbaa !36
  %112 = load i64, ptr %105, align 8, !tbaa !37
  %113 = add nsw i64 %112, %109
  %114 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %111, i64 noundef %113, i64 noundef %108, i64 noundef 1, ptr noundef %5) #22
  %115 = icmp eq ptr %114, null
  br i1 %115, label %395, label %116

116:                                              ; preds = %107
  %117 = load i64, ptr %1, align 8, !tbaa !34
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %116, %119
  %120 = phi ptr [ %132, %119 ], [ %114, %116 ]
  %121 = phi ptr [ %131, %119 ], [ %110, %116 ]
  %122 = phi i64 [ %133, %119 ], [ 0, %116 ]
  %123 = load i16, ptr %120, align 2, !tbaa !38
  %124 = getelementptr inbounds i16, ptr %121, i64 1
  store i16 %123, ptr %121, align 2, !tbaa !56
  %125 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 0, i32 1
  %126 = load i16, ptr %125, align 2, !tbaa !39
  %127 = getelementptr inbounds i16, ptr %121, i64 2
  store i16 %126, ptr %124, align 2, !tbaa !56
  %128 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 0, i32 2
  %129 = load i16, ptr %128, align 2, !tbaa !40
  %130 = getelementptr inbounds i16, ptr %121, i64 3
  store i16 %129, ptr %127, align 2, !tbaa !56
  %131 = getelementptr inbounds i16, ptr %121, i64 4
  store i16 0, ptr %130, align 2, !tbaa !56
  %132 = getelementptr inbounds %struct._PixelPacket, ptr %120, i64 1
  %133 = add nuw nsw i64 %122, 1
  %134 = icmp eq i64 %133, %117
  br i1 %134, label %135, label %119, !llvm.loop !149

135:                                              ; preds = %119, %116
  %136 = phi ptr [ %110, %116 ], [ %131, %119 ]
  %137 = add nuw nsw i64 %109, 1
  %138 = load i64, ptr %101, align 8, !tbaa !35
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %107, label %395, !llvm.loop !150

140:                                              ; preds = %96
  %141 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %180

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %145 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %146 = load i64, ptr %145, align 8, !tbaa !35
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %395

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %150 = load i64, ptr %1, align 8, !tbaa !34
  br label %151

151:                                              ; preds = %148, %174
  %152 = phi i64 [ %150, %148 ], [ %175, %174 ]
  %153 = phi i64 [ 0, %148 ], [ %177, %174 ]
  %154 = phi ptr [ %4, %148 ], [ %176, %174 ]
  %155 = load i64, ptr %144, align 8, !tbaa !36
  %156 = load i64, ptr %149, align 8, !tbaa !37
  %157 = add nsw i64 %156, %153
  %158 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %155, i64 noundef %157, i64 noundef %152, i64 noundef 1, ptr noundef %5) #22
  %159 = icmp eq ptr %158, null
  br i1 %159, label %395, label %160

160:                                              ; preds = %151
  %161 = load i64, ptr %1, align 8, !tbaa !34
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %160, %163
  %164 = phi ptr [ %170, %163 ], [ %158, %160 ]
  %165 = phi ptr [ %169, %163 ], [ %154, %160 ]
  %166 = phi i64 [ %171, %163 ], [ 0, %160 ]
  %167 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %164) #27
  %168 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %167) #25
  %169 = getelementptr inbounds i16, ptr %165, i64 1
  store i16 %168, ptr %165, align 2, !tbaa !56
  %170 = getelementptr inbounds %struct._PixelPacket, ptr %164, i64 1
  %171 = add nuw nsw i64 %166, 1
  %172 = load i64, ptr %1, align 8, !tbaa !34
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %163, label %174, !llvm.loop !151

174:                                              ; preds = %163, %160
  %175 = phi i64 [ %161, %160 ], [ %172, %163 ]
  %176 = phi ptr [ %154, %160 ], [ %169, %163 ]
  %177 = add nuw nsw i64 %153, 1
  %178 = load i64, ptr %145, align 8, !tbaa !35
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %151, label %395, !llvm.loop !152

180:                                              ; preds = %140
  %181 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %223

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %185 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %186 = load i64, ptr %185, align 8, !tbaa !35
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %395

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %190 = load i64, ptr %1, align 8, !tbaa !34
  br label %191

191:                                              ; preds = %188, %218
  %192 = phi i64 [ %190, %188 ], [ %201, %218 ]
  %193 = phi i64 [ 0, %188 ], [ %220, %218 ]
  %194 = phi ptr [ %4, %188 ], [ %219, %218 ]
  %195 = load i64, ptr %184, align 8, !tbaa !36
  %196 = load i64, ptr %189, align 8, !tbaa !37
  %197 = add nsw i64 %196, %193
  %198 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %195, i64 noundef %197, i64 noundef %192, i64 noundef 1, ptr noundef %5) #22
  %199 = icmp eq ptr %198, null
  br i1 %199, label %395, label %200

200:                                              ; preds = %191
  %201 = load i64, ptr %1, align 8, !tbaa !34
  %202 = icmp sgt i64 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %200, %203
  %204 = phi ptr [ %215, %203 ], [ %198, %200 ]
  %205 = phi ptr [ %214, %203 ], [ %194, %200 ]
  %206 = phi i64 [ %216, %203 ], [ 0, %200 ]
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 2
  %208 = load i16, ptr %207, align 2, !tbaa !40
  %209 = getelementptr inbounds i16, ptr %205, i64 1
  store i16 %208, ptr %205, align 2, !tbaa !56
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 1
  %211 = load i16, ptr %210, align 2, !tbaa !39
  %212 = getelementptr inbounds i16, ptr %205, i64 2
  store i16 %211, ptr %209, align 2, !tbaa !56
  %213 = load i16, ptr %204, align 2, !tbaa !38
  %214 = getelementptr inbounds i16, ptr %205, i64 3
  store i16 %213, ptr %212, align 2, !tbaa !56
  %215 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 1
  %216 = add nuw nsw i64 %206, 1
  %217 = icmp eq i64 %216, %201
  br i1 %217, label %218, label %203, !llvm.loop !153

218:                                              ; preds = %203, %200
  %219 = phi ptr [ %194, %200 ], [ %214, %203 ]
  %220 = add nuw nsw i64 %193, 1
  %221 = load i64, ptr %185, align 8, !tbaa !35
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %191, label %395, !llvm.loop !154

223:                                              ; preds = %180
  %224 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %270

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %228 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %229 = load i64, ptr %228, align 8, !tbaa !35
  %230 = icmp sgt i64 %229, 0
  br i1 %230, label %231, label %395

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %233 = load i64, ptr %1, align 8, !tbaa !34
  br label %234

234:                                              ; preds = %231, %265
  %235 = phi i64 [ %233, %231 ], [ %244, %265 ]
  %236 = phi i64 [ 0, %231 ], [ %267, %265 ]
  %237 = phi ptr [ %4, %231 ], [ %266, %265 ]
  %238 = load i64, ptr %227, align 8, !tbaa !36
  %239 = load i64, ptr %232, align 8, !tbaa !37
  %240 = add nsw i64 %239, %236
  %241 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %238, i64 noundef %240, i64 noundef %235, i64 noundef 1, ptr noundef %5) #22
  %242 = icmp eq ptr %241, null
  br i1 %242, label %395, label %243

243:                                              ; preds = %234
  %244 = load i64, ptr %1, align 8, !tbaa !34
  %245 = icmp sgt i64 %244, 0
  br i1 %245, label %246, label %265

246:                                              ; preds = %243, %246
  %247 = phi ptr [ %262, %246 ], [ %241, %243 ]
  %248 = phi ptr [ %261, %246 ], [ %237, %243 ]
  %249 = phi i64 [ %263, %246 ], [ 0, %243 ]
  %250 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 2
  %251 = load i16, ptr %250, align 2, !tbaa !40
  %252 = getelementptr inbounds i16, ptr %248, i64 1
  store i16 %251, ptr %248, align 2, !tbaa !56
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 1
  %254 = load i16, ptr %253, align 2, !tbaa !39
  %255 = getelementptr inbounds i16, ptr %248, i64 2
  store i16 %254, ptr %252, align 2, !tbaa !56
  %256 = load i16, ptr %247, align 2, !tbaa !38
  %257 = getelementptr inbounds i16, ptr %248, i64 3
  store i16 %256, ptr %255, align 2, !tbaa !56
  %258 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 0, i32 3
  %259 = load i16, ptr %258, align 2, !tbaa !43
  %260 = xor i16 %259, -1
  %261 = getelementptr inbounds i16, ptr %248, i64 4
  store i16 %260, ptr %257, align 2, !tbaa !56
  %262 = getelementptr inbounds %struct._PixelPacket, ptr %247, i64 1
  %263 = add nuw nsw i64 %249, 1
  %264 = icmp eq i64 %263, %244
  br i1 %264, label %265, label %246, !llvm.loop !155

265:                                              ; preds = %246, %243
  %266 = phi ptr [ %237, %243 ], [ %261, %246 ]
  %267 = add nuw nsw i64 %236, 1
  %268 = load i64, ptr %228, align 8, !tbaa !35
  %269 = icmp slt i64 %267, %268
  br i1 %269, label %234, label %395, !llvm.loop !156

270:                                              ; preds = %223
  %271 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %314

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %275 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %276 = load i64, ptr %275, align 8, !tbaa !35
  %277 = icmp sgt i64 %276, 0
  br i1 %277, label %278, label %395

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %280 = load i64, ptr %1, align 8, !tbaa !34
  br label %281

281:                                              ; preds = %278, %309
  %282 = phi i64 [ %280, %278 ], [ %291, %309 ]
  %283 = phi i64 [ 0, %278 ], [ %311, %309 ]
  %284 = phi ptr [ %4, %278 ], [ %310, %309 ]
  %285 = load i64, ptr %274, align 8, !tbaa !36
  %286 = load i64, ptr %279, align 8, !tbaa !37
  %287 = add nsw i64 %286, %283
  %288 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %285, i64 noundef %287, i64 noundef %282, i64 noundef 1, ptr noundef %5) #22
  %289 = icmp eq ptr %288, null
  br i1 %289, label %395, label %290

290:                                              ; preds = %281
  %291 = load i64, ptr %1, align 8, !tbaa !34
  %292 = icmp sgt i64 %291, 0
  br i1 %292, label %293, label %309

293:                                              ; preds = %290, %293
  %294 = phi ptr [ %306, %293 ], [ %288, %290 ]
  %295 = phi ptr [ %305, %293 ], [ %284, %290 ]
  %296 = phi i64 [ %307, %293 ], [ 0, %290 ]
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %294, i64 0, i32 2
  %298 = load i16, ptr %297, align 2, !tbaa !40
  %299 = getelementptr inbounds i16, ptr %295, i64 1
  store i16 %298, ptr %295, align 2, !tbaa !56
  %300 = getelementptr inbounds %struct._PixelPacket, ptr %294, i64 0, i32 1
  %301 = load i16, ptr %300, align 2, !tbaa !39
  %302 = getelementptr inbounds i16, ptr %295, i64 2
  store i16 %301, ptr %299, align 2, !tbaa !56
  %303 = load i16, ptr %294, align 2, !tbaa !38
  %304 = getelementptr inbounds i16, ptr %295, i64 3
  store i16 %303, ptr %302, align 2, !tbaa !56
  %305 = getelementptr inbounds i16, ptr %295, i64 4
  store i16 0, ptr %304, align 2, !tbaa !56
  %306 = getelementptr inbounds %struct._PixelPacket, ptr %294, i64 1
  %307 = add nuw nsw i64 %296, 1
  %308 = icmp eq i64 %307, %291
  br i1 %308, label %309, label %293, !llvm.loop !157

309:                                              ; preds = %293, %290
  %310 = phi ptr [ %284, %290 ], [ %305, %293 ]
  %311 = add nuw nsw i64 %283, 1
  %312 = load i64, ptr %275, align 8, !tbaa !35
  %313 = icmp slt i64 %311, %312
  br i1 %313, label %281, label %395, !llvm.loop !158

314:                                              ; preds = %270
  %315 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %316 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %317 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %318 = load i64, ptr %317, align 8, !tbaa !35
  %319 = icmp sgt i64 %318, 0
  br i1 %319, label %320, label %395

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %322 = icmp sgt i64 %315, 0
  %323 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %324 = load i64, ptr %1, align 8, !tbaa !34
  br label %325

325:                                              ; preds = %320, %389
  %326 = phi i64 [ %324, %320 ], [ %390, %389 ]
  %327 = phi i64 [ 0, %320 ], [ %392, %389 ]
  %328 = phi ptr [ %4, %320 ], [ %391, %389 ]
  %329 = load i64, ptr %316, align 8, !tbaa !36
  %330 = load i64, ptr %321, align 8, !tbaa !37
  %331 = add nsw i64 %330, %327
  %332 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %329, i64 noundef %331, i64 noundef %326, i64 noundef 1, ptr noundef %5) #22
  %333 = icmp eq ptr %332, null
  br i1 %333, label %395, label %334

334:                                              ; preds = %325
  %335 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #22
  %336 = load i64, ptr %1, align 8, !tbaa !34
  %337 = icmp sgt i64 %336, 0
  br i1 %337, label %338, label %389

338:                                              ; preds = %334
  %339 = icmp eq ptr %335, null
  br label %340

340:                                              ; preds = %338, %383
  %341 = phi i64 [ %336, %338 ], [ %384, %383 ]
  %342 = phi ptr [ %332, %338 ], [ %386, %383 ]
  %343 = phi ptr [ %328, %338 ], [ %385, %383 ]
  %344 = phi i64 [ 0, %338 ], [ %387, %383 ]
  br i1 %322, label %345, label %383

345:                                              ; preds = %340
  %346 = getelementptr inbounds i16, ptr %335, i64 %344
  %347 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 0, i32 3
  %348 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 0, i32 1
  %349 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 0, i32 2
  br label %350

350:                                              ; preds = %345, %377
  %351 = phi i64 [ 0, %345 ], [ %379, %377 ]
  %352 = phi ptr [ %343, %345 ], [ %378, %377 ]
  store i16 0, ptr %352, align 2, !tbaa !56
  %353 = getelementptr inbounds i32, ptr %3, i64 %351
  %354 = load i32, ptr %353, align 4, !tbaa !5
  switch i32 %354, label %377 [
    i32 14, label %355
    i32 6, label %355
    i32 9, label %357
    i32 12, label %357
    i32 3, label %359
    i32 19, label %359
    i32 1, label %361
    i32 13, label %364
    i32 2, label %366
    i32 11, label %372
  ]

355:                                              ; preds = %350, %350
  %356 = load i16, ptr %349, align 2, !tbaa !40
  br label %375

357:                                              ; preds = %350, %350
  %358 = load i16, ptr %348, align 2, !tbaa !39
  br label %375

359:                                              ; preds = %350, %350
  %360 = load i16, ptr %342, align 2, !tbaa !38
  br label %375

361:                                              ; preds = %350
  %362 = load i16, ptr %347, align 2, !tbaa !43
  %363 = xor i16 %362, -1
  br label %375

364:                                              ; preds = %350
  %365 = load i16, ptr %347, align 2, !tbaa !43
  br label %375

366:                                              ; preds = %350
  %367 = load i32, ptr %323, align 4, !tbaa !31
  %368 = icmp eq i32 %367, 12
  br i1 %368, label %369, label %377

369:                                              ; preds = %366
  br i1 %339, label %375, label %370

370:                                              ; preds = %369
  %371 = load i16, ptr %346, align 2, !tbaa !56
  br label %375

372:                                              ; preds = %350
  %373 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %342) #27
  %374 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %373) #25
  br label %375

375:                                              ; preds = %370, %369, %355, %357, %359, %361, %364, %372
  %376 = phi i16 [ %374, %372 ], [ %365, %364 ], [ %363, %361 ], [ %360, %359 ], [ %358, %357 ], [ %356, %355 ], [ %371, %370 ], [ 0, %369 ]
  store i16 %376, ptr %352, align 2, !tbaa !56
  br label %377

377:                                              ; preds = %375, %350, %366
  %378 = getelementptr inbounds i16, ptr %352, i64 1
  %379 = add nuw nsw i64 %351, 1
  %380 = icmp eq i64 %379, %315
  br i1 %380, label %381, label %350, !llvm.loop !159

381:                                              ; preds = %377
  %382 = load i64, ptr %1, align 8, !tbaa !34
  br label %383

383:                                              ; preds = %381, %340
  %384 = phi i64 [ %341, %340 ], [ %382, %381 ]
  %385 = phi ptr [ %343, %340 ], [ %378, %381 ]
  %386 = getelementptr inbounds %struct._PixelPacket, ptr %342, i64 1
  %387 = add nuw nsw i64 %344, 1
  %388 = icmp slt i64 %387, %384
  br i1 %388, label %340, label %389, !llvm.loop !160

389:                                              ; preds = %383, %334
  %390 = phi i64 [ %336, %334 ], [ %384, %383 ]
  %391 = phi ptr [ %328, %334 ], [ %385, %383 ]
  %392 = add nuw nsw i64 %327, 1
  %393 = load i64, ptr %317, align 8, !tbaa !35
  %394 = icmp slt i64 %392, %393
  br i1 %394, label %325, label %395, !llvm.loop !161

395:                                              ; preds = %325, %389, %281, %309, %234, %265, %191, %218, %151, %174, %107, %135, %60, %91, %17, %44, %314, %273, %226, %183, %143, %99, %52, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @GetMagickPixelPacket(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 {
  store i32 1, ptr %1, align 8, !tbaa !162
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  store i32 13, ptr %3, align 4, !tbaa !164
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !165
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 3
  store double 0.000000e+00, ptr %5, align 8, !tbaa !166
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 4
  store i64 16, ptr %6, align 8, !tbaa !167
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %8 = icmp eq ptr %0, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load <2 x i32>, ptr %0, align 8, !tbaa !5
  store <2 x i32> %10, ptr %1, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !168
  store i32 %12, ptr %4, align 8, !tbaa !165
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %14 = load i64, ptr %13, align 8, !tbaa !169
  store i64 %14, ptr %6, align 8, !tbaa !167
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %16 = load double, ptr %15, align 8, !tbaa !170
  store double %16, ptr %5, align 8, !tbaa !166
  br label %17

17:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: hot mustprogress nofree noinline nounwind optsize willreturn uwtable
define dso_local float @GetPixelIntensity(ptr nocapture noundef readonly %0, ptr noalias nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !31
  %5 = icmp eq i32 %4, 2
  %6 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !40
  %8 = uitofp i16 %7 to float
  br i1 %5, label %120, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !39
  %12 = uitofp i16 %11 to float
  %13 = load i16, ptr %1, align 2, !tbaa !38
  %14 = uitofp i16 %13 to float
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  %16 = load i32, ptr %15, align 8, !tbaa !171
  switch i32 %16, label %75 [
    i32 1, label %17
    i32 2, label %21
    i32 3, label %24
    i32 9, label %31
    i32 4, label %41
    i32 5, label %58
    i32 8, label %109
    i32 7, label %92
  ]

17:                                               ; preds = %9
  %18 = fadd float %8, %12
  %19 = fadd float %18, %14
  %20 = fdiv float %19, 3.000000e+00
  br label %120

21:                                               ; preds = %9
  %22 = tail call fastcc float @MagickMax(float noundef %8, float noundef %12) #25
  %23 = tail call fastcc float @MagickMax(float noundef %22, float noundef %14) #25
  br label %120

24:                                               ; preds = %9
  %25 = tail call fastcc float @MagickMin(float noundef %8, float noundef %12) #25
  %26 = tail call fastcc float @MagickMin(float noundef %25, float noundef %14) #25
  %27 = tail call fastcc float @MagickMax(float noundef %8, float noundef %12) #25
  %28 = tail call fastcc float @MagickMax(float noundef %27, float noundef %14) #25
  %29 = fadd float %26, %28
  %30 = fmul float %29, 5.000000e-01
  br label %120

31:                                               ; preds = %9
  %32 = uitofp i16 %7 to double
  %33 = fmul float %12, %12
  %34 = fpext float %33 to double
  %35 = tail call double @llvm.fmuladd.f64(double %32, double %32, double %34)
  %36 = fmul float %14, %14
  %37 = fpext float %36 to double
  %38 = fadd double %35, %37
  %39 = fdiv double %38, 1.966050e+05
  %40 = fptrunc double %39 to float
  br label %120

41:                                               ; preds = %9
  %42 = icmp eq i32 %4, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = tail call float @EncodePixelGamma(float noundef %8) #27
  %45 = tail call float @EncodePixelGamma(float noundef %12) #27
  %46 = tail call float @EncodePixelGamma(float noundef %14) #27
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi float [ %46, %43 ], [ %14, %41 ]
  %49 = phi float [ %45, %43 ], [ %12, %41 ]
  %50 = phi float [ %44, %43 ], [ %8, %41 ]
  %51 = fpext float %50 to double
  %52 = fpext float %49 to double
  %53 = fmul double %52, 5.868110e-01
  %54 = tail call double @llvm.fmuladd.f64(double %51, double 2.988390e-01, double %53)
  %55 = fpext float %48 to double
  %56 = tail call double @llvm.fmuladd.f64(double %55, double 1.143500e-01, double %54)
  %57 = fptrunc double %56 to float
  br label %120

58:                                               ; preds = %9
  %59 = icmp eq i32 %4, 13
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %61 = tail call float @DecodePixelGamma(float noundef %8) #27
  %62 = tail call float @DecodePixelGamma(float noundef %12) #27
  %63 = tail call float @DecodePixelGamma(float noundef %14) #27
  br label %64

64:                                               ; preds = %60, %58
  %65 = phi float [ %63, %60 ], [ %14, %58 ]
  %66 = phi float [ %62, %60 ], [ %12, %58 ]
  %67 = phi float [ %61, %60 ], [ %8, %58 ]
  %68 = fpext float %67 to double
  %69 = fpext float %66 to double
  %70 = fmul double %69, 5.868110e-01
  %71 = tail call double @llvm.fmuladd.f64(double %68, double 2.988390e-01, double %70)
  %72 = fpext float %65 to double
  %73 = tail call double @llvm.fmuladd.f64(double %72, double 1.143500e-01, double %71)
  %74 = fptrunc double %73 to float
  br label %120

75:                                               ; preds = %9
  %76 = icmp eq i32 %4, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = tail call float @EncodePixelGamma(float noundef %8) #27
  %79 = tail call float @EncodePixelGamma(float noundef %12) #27
  %80 = tail call float @EncodePixelGamma(float noundef %14) #27
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi float [ %80, %77 ], [ %14, %75 ]
  %83 = phi float [ %79, %77 ], [ %12, %75 ]
  %84 = phi float [ %78, %77 ], [ %8, %75 ]
  %85 = fpext float %84 to double
  %86 = fpext float %83 to double
  %87 = fmul double %86, 0x3FE6E29307AF20EA
  %88 = tail call double @llvm.fmuladd.f64(double %85, double 2.126560e-01, double %87)
  %89 = fpext float %82 to double
  %90 = tail call double @llvm.fmuladd.f64(double %89, double 7.218600e-02, double %88)
  %91 = fptrunc double %90 to float
  br label %120

92:                                               ; preds = %9
  %93 = icmp eq i32 %4, 13
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = tail call float @DecodePixelGamma(float noundef %8) #27
  %96 = tail call float @DecodePixelGamma(float noundef %12) #27
  %97 = tail call float @DecodePixelGamma(float noundef %14) #27
  br label %98

98:                                               ; preds = %94, %92
  %99 = phi float [ %97, %94 ], [ %14, %92 ]
  %100 = phi float [ %96, %94 ], [ %12, %92 ]
  %101 = phi float [ %95, %94 ], [ %8, %92 ]
  %102 = fpext float %101 to double
  %103 = fpext float %100 to double
  %104 = fmul double %103, 0x3FE6E29307AF20EA
  %105 = tail call double @llvm.fmuladd.f64(double %102, double 2.126560e-01, double %104)
  %106 = fpext float %99 to double
  %107 = tail call double @llvm.fmuladd.f64(double %106, double 7.218600e-02, double %105)
  %108 = fptrunc double %107 to float
  br label %120

109:                                              ; preds = %9
  %110 = uitofp i16 %7 to double
  %111 = fmul float %12, %12
  %112 = fpext float %111 to double
  %113 = tail call double @llvm.fmuladd.f64(double %110, double %110, double %112)
  %114 = fmul float %14, %14
  %115 = fpext float %114 to double
  %116 = fadd double %113, %115
  %117 = tail call double @llvm.sqrt.f64(double %116)
  %118 = fdiv double %117, 0x3FFBB67AE8584CAA
  %119 = fptrunc double %118 to float
  br label %120

120:                                              ; preds = %2, %17, %21, %24, %31, %47, %64, %81, %98, %109
  %121 = phi float [ %91, %81 ], [ %108, %98 ], [ %119, %109 ], [ %74, %64 ], [ %57, %47 ], [ %40, %31 ], [ %30, %24 ], [ %23, %21 ], [ %20, %17 ], [ %8, %2 ]
  ret float %121
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @MagickMax(float noundef %0, float noundef %1) unnamed_addr #12 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @MagickMin(float noundef %0, float noundef %1) unnamed_addr #12 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ImportImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3962, ptr noundef nonnull @.str.4, ptr noundef nonnull %14) #22
  br label %16

16:                                               ; preds = %13, %8
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #26
  %18 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 4) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = icmp sgt i64 %17, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  br label %28

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %27 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3967, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %26) #22
  br label %87

28:                                               ; preds = %22, %63
  %29 = phi i64 [ 0, %22 ], [ %64, %63 ]
  %30 = getelementptr inbounds i8, ptr %5, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !30
  switch i8 %31, label %59 [
    i8 97, label %32
    i8 65, label %32
    i8 66, label %34
    i8 98, label %34
    i8 67, label %36
    i8 99, label %36
    i8 103, label %39
    i8 71, label %39
    i8 75, label %41
    i8 107, label %41
    i8 73, label %44
    i8 105, label %44
    i8 109, label %47
    i8 77, label %47
    i8 79, label %50
    i8 111, label %50
    i8 80, label %52
    i8 112, label %52
    i8 82, label %54
    i8 114, label %54
    i8 89, label %56
    i8 121, label %56
  ]

32:                                               ; preds = %28, %28
  %33 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 1, ptr %33, align 4, !tbaa !5
  store i32 1, ptr %23, align 8, !tbaa !168
  br label %63

34:                                               ; preds = %28, %28
  %35 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 3, ptr %35, align 4, !tbaa !5
  br label %63

36:                                               ; preds = %28, %28
  %37 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 6, ptr %37, align 4, !tbaa !5
  %38 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 12) #22
  br label %63

39:                                               ; preds = %28, %28
  %40 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 9, ptr %40, align 4, !tbaa !5
  br label %63

41:                                               ; preds = %28, %28
  %42 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 2, ptr %42, align 4, !tbaa !5
  %43 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 12) #22
  br label %63

44:                                               ; preds = %28, %28
  %45 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 11, ptr %45, align 4, !tbaa !5
  %46 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 2) #22
  br label %63

47:                                               ; preds = %28, %28
  %48 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 12, ptr %48, align 4, !tbaa !5
  %49 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 12) #22
  br label %63

50:                                               ; preds = %28, %28
  %51 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 13, ptr %51, align 4, !tbaa !5
  store i32 1, ptr %23, align 8, !tbaa !168
  br label %63

52:                                               ; preds = %28, %28
  %53 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 0, ptr %53, align 4, !tbaa !5
  br label %63

54:                                               ; preds = %28, %28
  %55 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 14, ptr %55, align 4, !tbaa !5
  br label %63

56:                                               ; preds = %28, %28
  %57 = getelementptr inbounds i32, ptr %18, i64 %29
  store i32 19, ptr %57, align 4, !tbaa !5
  %58 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 12) #22
  br label %63

59:                                               ; preds = %28
  %60 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %18) #22
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %62 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %61, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4048, i32 noundef 410, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #22
  br label %87

63:                                               ; preds = %32, %34, %36, %39, %41, %44, %47, %50, %52, %54, %56
  %64 = add nuw nsw i64 %29, 1
  %65 = icmp eq i64 %64, %17
  br i1 %65, label %66, label %28, !llvm.loop !172

66:                                               ; preds = %63, %20
  %67 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  store i64 %3, ptr %9, align 8, !tbaa !34
  %71 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 1
  store i64 %4, ptr %71, align 8, !tbaa !35
  %72 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  store i64 %1, ptr %72, align 8, !tbaa !36
  %73 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  store i64 %2, ptr %73, align 8, !tbaa !37
  switch i32 %6, label %81 [
    i32 1, label %74
    i32 2, label %75
    i32 3, label %76
    i32 4, label %77
    i32 5, label %78
    i32 6, label %79
    i32 7, label %80
  ]

74:                                               ; preds = %69
  call fastcc void @ImportCharPixel(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5, ptr noundef nonnull %18, ptr noundef %7, ptr noundef nonnull %70) #25
  br label %84

75:                                               ; preds = %69
  call fastcc void @ImportDoublePixel(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5, ptr noundef nonnull %18, ptr noundef %7, ptr noundef nonnull %70) #25
  br label %84

76:                                               ; preds = %69
  call fastcc void @ImportFloatPixel(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5, ptr noundef nonnull %18, ptr noundef %7, ptr noundef nonnull %70) #25
  br label %84

77:                                               ; preds = %69
  call fastcc void @ImportIntegerPixel(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5, ptr noundef nonnull %18, ptr noundef %7, ptr noundef nonnull %70) #25
  br label %84

78:                                               ; preds = %69
  call fastcc void @ImportLongPixel(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5, ptr noundef nonnull %18, ptr noundef %7, ptr noundef nonnull %70) #25
  br label %84

79:                                               ; preds = %69
  call fastcc void @ImportQuantumPixel(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5, ptr noundef nonnull %18, ptr noundef %7, ptr noundef nonnull %70) #25
  br label %84

80:                                               ; preds = %69
  call fastcc void @ImportShortPixel(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5, ptr noundef nonnull %18, ptr noundef %7, ptr noundef nonnull %70) #25
  br label %84

81:                                               ; preds = %69
  %82 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %18) #22
  %83 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %70, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4104, i32 noundef 410, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %6) #22
  br label %84

84:                                               ; preds = %81, %80, %79, %78, %77, %76, %75, %74
  %85 = phi ptr [ %82, %81 ], [ %18, %80 ], [ %18, %79 ], [ %18, %78 ], [ %18, %77 ], [ %18, %76 ], [ %18, %75 ], [ %18, %74 ]
  %86 = tail call ptr @RelinquishMagickMemory(ptr noundef %85) #22
  br label %87

87:                                               ; preds = %66, %24, %84, %59
  %88 = phi i32 [ 0, %59 ], [ 1, %84 ], [ 0, %24 ], [ 0, %66 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  ret i32 %88
}

; Function Attrs: optsize
declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportCharPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %528

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %20

16:                                               ; preds = %50
  %17 = add nuw nsw i64 %21, 1
  %18 = load i64, ptr %11, align 8, !tbaa !35
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %528, !llvm.loop !173

20:                                               ; preds = %14, %16
  %21 = phi i64 [ 0, %14 ], [ %17, %16 ]
  %22 = phi ptr [ %4, %14 ], [ %51, %16 ]
  %23 = load i64, ptr %10, align 8, !tbaa !36
  %24 = load i64, ptr %15, align 8, !tbaa !37
  %25 = add nsw i64 %24, %21
  %26 = load i64, ptr %1, align 8, !tbaa !34
  %27 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %23, i64 noundef %25, i64 noundef %26, i64 noundef 1, ptr noundef %5) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %528, label %29

29:                                               ; preds = %20
  %30 = load i64, ptr %1, align 8, !tbaa !34
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %43, %32 ], [ %22, %29 ]
  %34 = phi i64 [ %48, %32 ], [ 0, %29 ]
  %35 = phi ptr [ %47, %32 ], [ %27, %29 ]
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  %37 = load i8, ptr %33, align 1, !tbaa !30
  %38 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %37) #25
  store i16 %38, ptr %35, align 2, !tbaa !38
  %39 = getelementptr inbounds i8, ptr %33, i64 2
  %40 = load i8, ptr %36, align 1, !tbaa !30
  %41 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %40) #25
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 1
  store i16 %41, ptr %42, align 2, !tbaa !39
  %43 = getelementptr inbounds i8, ptr %33, i64 3
  %44 = load i8, ptr %39, align 1, !tbaa !30
  %45 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %44) #25
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 2
  store i16 %45, ptr %46, align 2, !tbaa !40
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %48 = add nuw nsw i64 %34, 1
  %49 = icmp eq i64 %48, %30
  br i1 %49, label %50, label %32, !llvm.loop !174

50:                                               ; preds = %32, %29
  %51 = phi ptr [ %22, %29 ], [ %43, %32 ]
  %52 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %528, label %16

54:                                               ; preds = %6
  %55 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %107

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %59 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !35
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %528

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %68

64:                                               ; preds = %103
  %65 = add nuw nsw i64 %69, 1
  %66 = load i64, ptr %59, align 8, !tbaa !35
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %528, !llvm.loop !175

68:                                               ; preds = %62, %64
  %69 = phi i64 [ 0, %62 ], [ %65, %64 ]
  %70 = phi ptr [ %4, %62 ], [ %104, %64 ]
  %71 = load i64, ptr %58, align 8, !tbaa !36
  %72 = load i64, ptr %63, align 8, !tbaa !37
  %73 = add nsw i64 %72, %69
  %74 = load i64, ptr %1, align 8, !tbaa !34
  %75 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %71, i64 noundef %73, i64 noundef %74, i64 noundef 1, ptr noundef %5) #22
  %76 = icmp eq ptr %75, null
  br i1 %76, label %528, label %77

77:                                               ; preds = %68
  %78 = load i64, ptr %1, align 8, !tbaa !34
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %95, %80 ], [ %70, %77 ]
  %82 = phi i64 [ %101, %80 ], [ 0, %77 ]
  %83 = phi ptr [ %100, %80 ], [ %75, %77 ]
  %84 = getelementptr inbounds i8, ptr %81, i64 1
  %85 = load i8, ptr %81, align 1, !tbaa !30
  %86 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %85) #25
  store i16 %86, ptr %83, align 2, !tbaa !38
  %87 = getelementptr inbounds i8, ptr %81, i64 2
  %88 = load i8, ptr %84, align 1, !tbaa !30
  %89 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %88) #25
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 1
  store i16 %89, ptr %90, align 2, !tbaa !39
  %91 = getelementptr inbounds i8, ptr %81, i64 3
  %92 = load i8, ptr %87, align 1, !tbaa !30
  %93 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %92) #25
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 2
  store i16 %93, ptr %94, align 2, !tbaa !40
  %95 = getelementptr inbounds i8, ptr %81, i64 4
  %96 = load i8, ptr %91, align 1, !tbaa !30
  %97 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %96) #25
  %98 = xor i16 %97, -1
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 3
  store i16 %98, ptr %99, align 2, !tbaa !43
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %101 = add nuw nsw i64 %82, 1
  %102 = icmp eq i64 %101, %78
  br i1 %102, label %103, label %80, !llvm.loop !176

103:                                              ; preds = %80, %77
  %104 = phi ptr [ %70, %77 ], [ %95, %80 ]
  %105 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %528, label %64

107:                                              ; preds = %54
  %108 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.16) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %159

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %112 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !35
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %528

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %121

117:                                              ; preds = %155
  %118 = add nuw nsw i64 %122, 1
  %119 = load i64, ptr %112, align 8, !tbaa !35
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %528, !llvm.loop !177

121:                                              ; preds = %115, %117
  %122 = phi i64 [ 0, %115 ], [ %118, %117 ]
  %123 = phi ptr [ %4, %115 ], [ %156, %117 ]
  %124 = load i64, ptr %111, align 8, !tbaa !36
  %125 = load i64, ptr %116, align 8, !tbaa !37
  %126 = add nsw i64 %125, %122
  %127 = load i64, ptr %1, align 8, !tbaa !34
  %128 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %124, i64 noundef %126, i64 noundef %127, i64 noundef 1, ptr noundef %5) #22
  %129 = icmp eq ptr %128, null
  br i1 %129, label %528, label %130

130:                                              ; preds = %121
  %131 = load i64, ptr %1, align 8, !tbaa !34
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %130, %133
  %134 = phi ptr [ %148, %133 ], [ %123, %130 ]
  %135 = phi i64 [ %153, %133 ], [ 0, %130 ]
  %136 = phi ptr [ %152, %133 ], [ %128, %130 ]
  %137 = getelementptr inbounds i8, ptr %134, i64 1
  %138 = load i8, ptr %134, align 1, !tbaa !30
  %139 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %138) #25
  store i16 %139, ptr %136, align 2, !tbaa !38
  %140 = getelementptr inbounds i8, ptr %134, i64 2
  %141 = load i8, ptr %137, align 1, !tbaa !30
  %142 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %141) #25
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 1
  store i16 %142, ptr %143, align 2, !tbaa !39
  %144 = getelementptr inbounds i8, ptr %134, i64 3
  %145 = load i8, ptr %140, align 1, !tbaa !30
  %146 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %145) #25
  %147 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 2
  store i16 %146, ptr %147, align 2, !tbaa !40
  %148 = getelementptr inbounds i8, ptr %134, i64 4
  %149 = load i8, ptr %144, align 1, !tbaa !30
  %150 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %149) #25
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 3
  store i16 %150, ptr %151, align 2, !tbaa !43
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 1
  %153 = add nuw nsw i64 %135, 1
  %154 = icmp eq i64 %153, %131
  br i1 %154, label %155, label %133, !llvm.loop !178

155:                                              ; preds = %133, %130
  %156 = phi ptr [ %123, %130 ], [ %148, %133 ]
  %157 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %528, label %117

159:                                              ; preds = %107
  %160 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %207

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %164 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !35
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %528

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %173

169:                                              ; preds = %203
  %170 = add nuw nsw i64 %174, 1
  %171 = load i64, ptr %164, align 8, !tbaa !35
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %173, label %528, !llvm.loop !179

173:                                              ; preds = %167, %169
  %174 = phi i64 [ 0, %167 ], [ %170, %169 ]
  %175 = phi ptr [ %4, %167 ], [ %204, %169 ]
  %176 = load i64, ptr %163, align 8, !tbaa !36
  %177 = load i64, ptr %168, align 8, !tbaa !37
  %178 = add nsw i64 %177, %174
  %179 = load i64, ptr %1, align 8, !tbaa !34
  %180 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %176, i64 noundef %178, i64 noundef %179, i64 noundef 1, ptr noundef %5) #22
  %181 = icmp eq ptr %180, null
  br i1 %181, label %528, label %182

182:                                              ; preds = %173
  %183 = load i64, ptr %1, align 8, !tbaa !34
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %182, %185
  %186 = phi ptr [ %199, %185 ], [ %175, %182 ]
  %187 = phi i64 [ %201, %185 ], [ 0, %182 ]
  %188 = phi ptr [ %200, %185 ], [ %180, %182 ]
  %189 = getelementptr inbounds i8, ptr %186, i64 1
  %190 = load i8, ptr %186, align 1, !tbaa !30
  %191 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %190) #25
  store i16 %191, ptr %188, align 2, !tbaa !38
  %192 = getelementptr inbounds i8, ptr %186, i64 2
  %193 = load i8, ptr %189, align 1, !tbaa !30
  %194 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %193) #25
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %188, i64 0, i32 1
  store i16 %194, ptr %195, align 2, !tbaa !39
  %196 = load i8, ptr %192, align 1, !tbaa !30
  %197 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %196) #25
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %188, i64 0, i32 2
  store i16 %197, ptr %198, align 2, !tbaa !40
  %199 = getelementptr inbounds i8, ptr %186, i64 4
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %188, i64 1
  %201 = add nuw nsw i64 %187, 1
  %202 = icmp eq i64 %201, %183
  br i1 %202, label %203, label %185, !llvm.loop !180

203:                                              ; preds = %185, %182
  %204 = phi ptr [ %175, %182 ], [ %199, %185 ]
  %205 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %528, label %169

207:                                              ; preds = %159
  %208 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %249

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %212 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %213 = load i64, ptr %212, align 8, !tbaa !35
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %528

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %221

217:                                              ; preds = %245
  %218 = add nuw nsw i64 %222, 1
  %219 = load i64, ptr %212, align 8, !tbaa !35
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %221, label %528, !llvm.loop !181

221:                                              ; preds = %215, %217
  %222 = phi i64 [ 0, %215 ], [ %218, %217 ]
  %223 = phi ptr [ %4, %215 ], [ %246, %217 ]
  %224 = load i64, ptr %211, align 8, !tbaa !36
  %225 = load i64, ptr %216, align 8, !tbaa !37
  %226 = add nsw i64 %225, %222
  %227 = load i64, ptr %1, align 8, !tbaa !34
  %228 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %224, i64 noundef %226, i64 noundef %227, i64 noundef 1, ptr noundef %5) #22
  %229 = icmp eq ptr %228, null
  br i1 %229, label %528, label %230

230:                                              ; preds = %221
  %231 = load i64, ptr %1, align 8, !tbaa !34
  %232 = icmp sgt i64 %231, 0
  br i1 %232, label %233, label %245

233:                                              ; preds = %230, %233
  %234 = phi ptr [ %237, %233 ], [ %223, %230 ]
  %235 = phi i64 [ %243, %233 ], [ 0, %230 ]
  %236 = phi ptr [ %242, %233 ], [ %228, %230 ]
  %237 = getelementptr inbounds i8, ptr %234, i64 1
  %238 = load i8, ptr %234, align 1, !tbaa !30
  %239 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %238) #25
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %236, i64 0, i32 2
  store i16 %239, ptr %240, align 2, !tbaa !40
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %236, i64 0, i32 1
  store i16 %239, ptr %241, align 2, !tbaa !39
  store i16 %239, ptr %236, align 2, !tbaa !38
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %236, i64 1
  %243 = add nuw nsw i64 %235, 1
  %244 = icmp eq i64 %243, %231
  br i1 %244, label %245, label %233, !llvm.loop !182

245:                                              ; preds = %233, %230
  %246 = phi ptr [ %223, %230 ], [ %237, %233 ]
  %247 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %528, label %217

249:                                              ; preds = %207
  %250 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %297

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %254 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %255 = load i64, ptr %254, align 8, !tbaa !35
  %256 = icmp sgt i64 %255, 0
  br i1 %256, label %257, label %528

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %263

259:                                              ; preds = %293
  %260 = add nuw nsw i64 %264, 1
  %261 = load i64, ptr %254, align 8, !tbaa !35
  %262 = icmp slt i64 %260, %261
  br i1 %262, label %263, label %528, !llvm.loop !183

263:                                              ; preds = %257, %259
  %264 = phi i64 [ 0, %257 ], [ %260, %259 ]
  %265 = phi ptr [ %4, %257 ], [ %294, %259 ]
  %266 = load i64, ptr %253, align 8, !tbaa !36
  %267 = load i64, ptr %258, align 8, !tbaa !37
  %268 = add nsw i64 %267, %264
  %269 = load i64, ptr %1, align 8, !tbaa !34
  %270 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %266, i64 noundef %268, i64 noundef %269, i64 noundef 1, ptr noundef %5) #22
  %271 = icmp eq ptr %270, null
  br i1 %271, label %528, label %272

272:                                              ; preds = %263
  %273 = load i64, ptr %1, align 8, !tbaa !34
  %274 = icmp sgt i64 %273, 0
  br i1 %274, label %275, label %293

275:                                              ; preds = %272, %275
  %276 = phi ptr [ %287, %275 ], [ %265, %272 ]
  %277 = phi i64 [ %291, %275 ], [ 0, %272 ]
  %278 = phi ptr [ %290, %275 ], [ %270, %272 ]
  %279 = getelementptr inbounds i8, ptr %276, i64 1
  %280 = load i8, ptr %276, align 1, !tbaa !30
  %281 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %280) #25
  %282 = getelementptr inbounds %struct._PixelPacket, ptr %278, i64 0, i32 2
  store i16 %281, ptr %282, align 2, !tbaa !40
  %283 = getelementptr inbounds i8, ptr %276, i64 2
  %284 = load i8, ptr %279, align 1, !tbaa !30
  %285 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %284) #25
  %286 = getelementptr inbounds %struct._PixelPacket, ptr %278, i64 0, i32 1
  store i16 %285, ptr %286, align 2, !tbaa !39
  %287 = getelementptr inbounds i8, ptr %276, i64 3
  %288 = load i8, ptr %283, align 1, !tbaa !30
  %289 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %288) #25
  store i16 %289, ptr %278, align 2, !tbaa !38
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %278, i64 1
  %291 = add nuw nsw i64 %277, 1
  %292 = icmp eq i64 %291, %273
  br i1 %292, label %293, label %275, !llvm.loop !184

293:                                              ; preds = %275, %272
  %294 = phi ptr [ %265, %272 ], [ %287, %275 ]
  %295 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %528, label %259

297:                                              ; preds = %249
  %298 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %350

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %302 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %303 = load i64, ptr %302, align 8, !tbaa !35
  %304 = icmp sgt i64 %303, 0
  br i1 %304, label %305, label %528

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %311

307:                                              ; preds = %346
  %308 = add nuw nsw i64 %312, 1
  %309 = load i64, ptr %302, align 8, !tbaa !35
  %310 = icmp slt i64 %308, %309
  br i1 %310, label %311, label %528, !llvm.loop !185

311:                                              ; preds = %305, %307
  %312 = phi i64 [ 0, %305 ], [ %308, %307 ]
  %313 = phi ptr [ %4, %305 ], [ %347, %307 ]
  %314 = load i64, ptr %301, align 8, !tbaa !36
  %315 = load i64, ptr %306, align 8, !tbaa !37
  %316 = add nsw i64 %315, %312
  %317 = load i64, ptr %1, align 8, !tbaa !34
  %318 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %314, i64 noundef %316, i64 noundef %317, i64 noundef 1, ptr noundef %5) #22
  %319 = icmp eq ptr %318, null
  br i1 %319, label %528, label %320

320:                                              ; preds = %311
  %321 = load i64, ptr %1, align 8, !tbaa !34
  %322 = icmp sgt i64 %321, 0
  br i1 %322, label %323, label %346

323:                                              ; preds = %320, %323
  %324 = phi ptr [ %338, %323 ], [ %313, %320 ]
  %325 = phi i64 [ %344, %323 ], [ 0, %320 ]
  %326 = phi ptr [ %343, %323 ], [ %318, %320 ]
  %327 = getelementptr inbounds i8, ptr %324, i64 1
  %328 = load i8, ptr %324, align 1, !tbaa !30
  %329 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %328) #25
  %330 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 2
  store i16 %329, ptr %330, align 2, !tbaa !40
  %331 = getelementptr inbounds i8, ptr %324, i64 2
  %332 = load i8, ptr %327, align 1, !tbaa !30
  %333 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %332) #25
  %334 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 1
  store i16 %333, ptr %334, align 2, !tbaa !39
  %335 = getelementptr inbounds i8, ptr %324, i64 3
  %336 = load i8, ptr %331, align 1, !tbaa !30
  %337 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %336) #25
  store i16 %337, ptr %326, align 2, !tbaa !38
  %338 = getelementptr inbounds i8, ptr %324, i64 4
  %339 = load i8, ptr %335, align 1, !tbaa !30
  %340 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %339) #25
  %341 = xor i16 %340, -1
  %342 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 3
  store i16 %341, ptr %342, align 2, !tbaa !43
  %343 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 1
  %344 = add nuw nsw i64 %325, 1
  %345 = icmp eq i64 %344, %321
  br i1 %345, label %346, label %323, !llvm.loop !186

346:                                              ; preds = %323, %320
  %347 = phi ptr [ %313, %320 ], [ %338, %323 ]
  %348 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %528, label %307

350:                                              ; preds = %297
  %351 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.17) #22
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %402

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %355 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %356 = load i64, ptr %355, align 8, !tbaa !35
  %357 = icmp sgt i64 %356, 0
  br i1 %357, label %358, label %528

358:                                              ; preds = %353
  %359 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %364

360:                                              ; preds = %398
  %361 = add nuw nsw i64 %365, 1
  %362 = load i64, ptr %355, align 8, !tbaa !35
  %363 = icmp slt i64 %361, %362
  br i1 %363, label %364, label %528, !llvm.loop !187

364:                                              ; preds = %358, %360
  %365 = phi i64 [ 0, %358 ], [ %361, %360 ]
  %366 = phi ptr [ %4, %358 ], [ %399, %360 ]
  %367 = load i64, ptr %354, align 8, !tbaa !36
  %368 = load i64, ptr %359, align 8, !tbaa !37
  %369 = add nsw i64 %368, %365
  %370 = load i64, ptr %1, align 8, !tbaa !34
  %371 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %367, i64 noundef %369, i64 noundef %370, i64 noundef 1, ptr noundef %5) #22
  %372 = icmp eq ptr %371, null
  br i1 %372, label %528, label %373

373:                                              ; preds = %364
  %374 = load i64, ptr %1, align 8, !tbaa !34
  %375 = icmp sgt i64 %374, 0
  br i1 %375, label %376, label %398

376:                                              ; preds = %373, %376
  %377 = phi ptr [ %391, %376 ], [ %366, %373 ]
  %378 = phi i64 [ %396, %376 ], [ 0, %373 ]
  %379 = phi ptr [ %395, %376 ], [ %371, %373 ]
  %380 = getelementptr inbounds i8, ptr %377, i64 1
  %381 = load i8, ptr %377, align 1, !tbaa !30
  %382 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %381) #25
  %383 = getelementptr inbounds %struct._PixelPacket, ptr %379, i64 0, i32 2
  store i16 %382, ptr %383, align 2, !tbaa !40
  %384 = getelementptr inbounds i8, ptr %377, i64 2
  %385 = load i8, ptr %380, align 1, !tbaa !30
  %386 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %385) #25
  %387 = getelementptr inbounds %struct._PixelPacket, ptr %379, i64 0, i32 1
  store i16 %386, ptr %387, align 2, !tbaa !39
  %388 = getelementptr inbounds i8, ptr %377, i64 3
  %389 = load i8, ptr %384, align 1, !tbaa !30
  %390 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %389) #25
  store i16 %390, ptr %379, align 2, !tbaa !38
  %391 = getelementptr inbounds i8, ptr %377, i64 4
  %392 = load i8, ptr %388, align 1, !tbaa !30
  %393 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %392) #25
  %394 = getelementptr inbounds %struct._PixelPacket, ptr %379, i64 0, i32 3
  store i16 %393, ptr %394, align 2, !tbaa !43
  %395 = getelementptr inbounds %struct._PixelPacket, ptr %379, i64 1
  %396 = add nuw nsw i64 %378, 1
  %397 = icmp eq i64 %396, %374
  br i1 %397, label %398, label %376, !llvm.loop !188

398:                                              ; preds = %376, %373
  %399 = phi ptr [ %366, %373 ], [ %391, %376 ]
  %400 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %528, label %360

402:                                              ; preds = %350
  %403 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %450

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %407 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %408 = load i64, ptr %407, align 8, !tbaa !35
  %409 = icmp sgt i64 %408, 0
  br i1 %409, label %410, label %528

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %416

412:                                              ; preds = %446
  %413 = add nuw nsw i64 %417, 1
  %414 = load i64, ptr %407, align 8, !tbaa !35
  %415 = icmp slt i64 %413, %414
  br i1 %415, label %416, label %528, !llvm.loop !189

416:                                              ; preds = %410, %412
  %417 = phi i64 [ 0, %410 ], [ %413, %412 ]
  %418 = phi ptr [ %4, %410 ], [ %447, %412 ]
  %419 = load i64, ptr %406, align 8, !tbaa !36
  %420 = load i64, ptr %411, align 8, !tbaa !37
  %421 = add nsw i64 %420, %417
  %422 = load i64, ptr %1, align 8, !tbaa !34
  %423 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %419, i64 noundef %421, i64 noundef %422, i64 noundef 1, ptr noundef %5) #22
  %424 = icmp eq ptr %423, null
  br i1 %424, label %528, label %425

425:                                              ; preds = %416
  %426 = load i64, ptr %1, align 8, !tbaa !34
  %427 = icmp sgt i64 %426, 0
  br i1 %427, label %428, label %446

428:                                              ; preds = %425, %428
  %429 = phi ptr [ %442, %428 ], [ %418, %425 ]
  %430 = phi i64 [ %444, %428 ], [ 0, %425 ]
  %431 = phi ptr [ %443, %428 ], [ %423, %425 ]
  %432 = getelementptr inbounds i8, ptr %429, i64 1
  %433 = load i8, ptr %429, align 1, !tbaa !30
  %434 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %433) #25
  %435 = getelementptr inbounds %struct._PixelPacket, ptr %431, i64 0, i32 2
  store i16 %434, ptr %435, align 2, !tbaa !40
  %436 = getelementptr inbounds i8, ptr %429, i64 2
  %437 = load i8, ptr %432, align 1, !tbaa !30
  %438 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %437) #25
  %439 = getelementptr inbounds %struct._PixelPacket, ptr %431, i64 0, i32 1
  store i16 %438, ptr %439, align 2, !tbaa !39
  %440 = load i8, ptr %436, align 1, !tbaa !30
  %441 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %440) #25
  store i16 %441, ptr %431, align 2, !tbaa !38
  %442 = getelementptr inbounds i8, ptr %429, i64 4
  %443 = getelementptr inbounds %struct._PixelPacket, ptr %431, i64 1
  %444 = add nuw nsw i64 %430, 1
  %445 = icmp eq i64 %444, %426
  br i1 %445, label %446, label %428, !llvm.loop !190

446:                                              ; preds = %428, %425
  %447 = phi ptr [ %418, %425 ], [ %442, %428 ]
  %448 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %528, label %412

450:                                              ; preds = %402
  %451 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %452 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %453 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %454 = load i64, ptr %453, align 8, !tbaa !35
  %455 = icmp sgt i64 %454, 0
  br i1 %455, label %456, label %528

456:                                              ; preds = %450
  %457 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %458 = icmp sgt i64 %451, 0
  br label %463

459:                                              ; preds = %524
  %460 = add nuw nsw i64 %464, 1
  %461 = load i64, ptr %453, align 8, !tbaa !35
  %462 = icmp slt i64 %460, %461
  br i1 %462, label %463, label %528, !llvm.loop !191

463:                                              ; preds = %456, %459
  %464 = phi i64 [ 0, %456 ], [ %460, %459 ]
  %465 = phi ptr [ %4, %456 ], [ %525, %459 ]
  %466 = load i64, ptr %452, align 8, !tbaa !36
  %467 = load i64, ptr %457, align 8, !tbaa !37
  %468 = add nsw i64 %467, %464
  %469 = load i64, ptr %1, align 8, !tbaa !34
  %470 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %466, i64 noundef %468, i64 noundef %469, i64 noundef 1, ptr noundef %5) #22
  %471 = icmp eq ptr %470, null
  br i1 %471, label %528, label %472

472:                                              ; preds = %463
  %473 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #22
  %474 = load i64, ptr %1, align 8, !tbaa !34
  %475 = icmp sgt i64 %474, 0
  br i1 %475, label %476, label %524

476:                                              ; preds = %472
  %477 = icmp eq ptr %473, null
  br label %478

478:                                              ; preds = %476, %519
  %479 = phi ptr [ %465, %476 ], [ %520, %519 ]
  %480 = phi i64 [ 0, %476 ], [ %522, %519 ]
  %481 = phi ptr [ %470, %476 ], [ %521, %519 ]
  br i1 %458, label %482, label %519

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct._PixelPacket, ptr %481, i64 0, i32 2
  %484 = getelementptr inbounds %struct._PixelPacket, ptr %481, i64 0, i32 1
  %485 = getelementptr inbounds i16, ptr %473, i64 %480
  %486 = getelementptr inbounds %struct._PixelPacket, ptr %481, i64 0, i32 3
  br label %487

487:                                              ; preds = %482, %515
  %488 = phi i64 [ 0, %482 ], [ %517, %515 ]
  %489 = phi ptr [ %479, %482 ], [ %516, %515 ]
  %490 = getelementptr inbounds i32, ptr %3, i64 %488
  %491 = load i32, ptr %490, align 4, !tbaa !5
  switch i32 %491, label %515 [
    i32 14, label %492
    i32 6, label %492
    i32 9, label %495
    i32 12, label %495
    i32 3, label %498
    i32 19, label %498
    i32 1, label %501
    i32 13, label %505
    i32 2, label %508
    i32 11, label %512
  ]

492:                                              ; preds = %487, %487
  %493 = load i8, ptr %489, align 1, !tbaa !30
  %494 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %493) #25
  store i16 %494, ptr %483, align 2, !tbaa !40
  br label %515

495:                                              ; preds = %487, %487
  %496 = load i8, ptr %489, align 1, !tbaa !30
  %497 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %496) #25
  store i16 %497, ptr %484, align 2, !tbaa !39
  br label %515

498:                                              ; preds = %487, %487
  %499 = load i8, ptr %489, align 1, !tbaa !30
  %500 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %499) #25
  store i16 %500, ptr %481, align 2, !tbaa !38
  br label %515

501:                                              ; preds = %487
  %502 = load i8, ptr %489, align 1, !tbaa !30
  %503 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %502) #25
  %504 = xor i16 %503, -1
  store i16 %504, ptr %486, align 2, !tbaa !43
  br label %515

505:                                              ; preds = %487
  %506 = load i8, ptr %489, align 1, !tbaa !30
  %507 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %506) #25
  store i16 %507, ptr %486, align 2, !tbaa !43
  br label %515

508:                                              ; preds = %487
  br i1 %477, label %515, label %509

509:                                              ; preds = %508
  %510 = load i8, ptr %489, align 1, !tbaa !30
  %511 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %510) #25
  store i16 %511, ptr %485, align 2, !tbaa !56
  br label %515

512:                                              ; preds = %487
  %513 = load i8, ptr %489, align 1, !tbaa !30
  %514 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %513) #25
  store i16 %514, ptr %483, align 2, !tbaa !40
  store i16 %514, ptr %484, align 2, !tbaa !39
  store i16 %514, ptr %481, align 2, !tbaa !38
  br label %515

515:                                              ; preds = %487, %508, %509, %512, %505, %501, %498, %495, %492
  %516 = getelementptr inbounds i8, ptr %489, i64 1
  %517 = add nuw nsw i64 %488, 1
  %518 = icmp eq i64 %517, %451
  br i1 %518, label %519, label %487, !llvm.loop !192

519:                                              ; preds = %515, %478
  %520 = phi ptr [ %479, %478 ], [ %516, %515 ]
  %521 = getelementptr inbounds %struct._PixelPacket, ptr %481, i64 1
  %522 = add nuw nsw i64 %480, 1
  %523 = icmp eq i64 %522, %474
  br i1 %523, label %524, label %478, !llvm.loop !193

524:                                              ; preds = %519, %472
  %525 = phi ptr [ %465, %472 ], [ %520, %519 ]
  %526 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %459

528:                                              ; preds = %524, %463, %459, %446, %416, %412, %398, %364, %360, %346, %311, %307, %293, %263, %259, %245, %221, %217, %203, %173, %169, %155, %121, %117, %103, %68, %64, %50, %20, %16, %450, %405, %353, %300, %252, %210, %162, %110, %57, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportDoublePixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %480

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %20

16:                                               ; preds = %56
  %17 = add nuw nsw i64 %21, 1
  %18 = load i64, ptr %11, align 8, !tbaa !35
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %480, !llvm.loop !194

20:                                               ; preds = %14, %16
  %21 = phi i64 [ 0, %14 ], [ %17, %16 ]
  %22 = phi ptr [ %4, %14 ], [ %57, %16 ]
  %23 = load i64, ptr %10, align 8, !tbaa !36
  %24 = load i64, ptr %15, align 8, !tbaa !37
  %25 = add nsw i64 %24, %21
  %26 = load i64, ptr %1, align 8, !tbaa !34
  %27 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %23, i64 noundef %25, i64 noundef %26, i64 noundef 1, ptr noundef %5) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %480, label %29

29:                                               ; preds = %20
  %30 = load i64, ptr %1, align 8, !tbaa !34
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %52, %32 ], [ %22, %29 ]
  %34 = phi i64 [ %54, %32 ], [ 0, %29 ]
  %35 = phi ptr [ %53, %32 ], [ %27, %29 ]
  %36 = load double, ptr %33, align 8, !tbaa !10
  %37 = fmul double %36, 6.553500e+04
  %38 = fptrunc double %37 to float
  %39 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %38) #25
  store i16 %39, ptr %35, align 2, !tbaa !38
  %40 = getelementptr inbounds double, ptr %33, i64 1
  %41 = load double, ptr %40, align 8, !tbaa !10
  %42 = fmul double %41, 6.553500e+04
  %43 = fptrunc double %42 to float
  %44 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %43) #25
  %45 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 1
  store i16 %44, ptr %45, align 2, !tbaa !39
  %46 = getelementptr inbounds double, ptr %33, i64 2
  %47 = load double, ptr %46, align 8, !tbaa !10
  %48 = fmul double %47, 6.553500e+04
  %49 = fptrunc double %48 to float
  %50 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %49) #25
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 2
  store i16 %50, ptr %51, align 2, !tbaa !40
  %52 = getelementptr inbounds double, ptr %33, i64 3
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %54 = add nuw nsw i64 %34, 1
  %55 = icmp eq i64 %54, %30
  br i1 %55, label %56, label %32, !llvm.loop !195

56:                                               ; preds = %32, %29
  %57 = phi ptr [ %22, %29 ], [ %52, %32 ]
  %58 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %480, label %16

60:                                               ; preds = %6
  %61 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %121

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %65 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !35
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %480

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %74

70:                                               ; preds = %117
  %71 = add nuw nsw i64 %75, 1
  %72 = load i64, ptr %65, align 8, !tbaa !35
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %480, !llvm.loop !196

74:                                               ; preds = %68, %70
  %75 = phi i64 [ 0, %68 ], [ %71, %70 ]
  %76 = phi ptr [ %4, %68 ], [ %118, %70 ]
  %77 = load i64, ptr %64, align 8, !tbaa !36
  %78 = load i64, ptr %69, align 8, !tbaa !37
  %79 = add nsw i64 %78, %75
  %80 = load i64, ptr %1, align 8, !tbaa !34
  %81 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %77, i64 noundef %79, i64 noundef %80, i64 noundef 1, ptr noundef %5) #22
  %82 = icmp eq ptr %81, null
  br i1 %82, label %480, label %83

83:                                               ; preds = %74
  %84 = load i64, ptr %1, align 8, !tbaa !34
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %117

86:                                               ; preds = %83, %86
  %87 = phi ptr [ %113, %86 ], [ %76, %83 ]
  %88 = phi i64 [ %115, %86 ], [ 0, %83 ]
  %89 = phi ptr [ %114, %86 ], [ %81, %83 ]
  %90 = load double, ptr %87, align 8, !tbaa !10
  %91 = fmul double %90, 6.553500e+04
  %92 = fptrunc double %91 to float
  %93 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %92) #25
  store i16 %93, ptr %89, align 2, !tbaa !38
  %94 = getelementptr inbounds double, ptr %87, i64 1
  %95 = load double, ptr %94, align 8, !tbaa !10
  %96 = fmul double %95, 6.553500e+04
  %97 = fptrunc double %96 to float
  %98 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %97) #25
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 0, i32 1
  store i16 %98, ptr %99, align 2, !tbaa !39
  %100 = getelementptr inbounds double, ptr %87, i64 2
  %101 = load double, ptr %100, align 8, !tbaa !10
  %102 = fmul double %101, 6.553500e+04
  %103 = fptrunc double %102 to float
  %104 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %103) #25
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 0, i32 2
  store i16 %104, ptr %105, align 2, !tbaa !40
  %106 = getelementptr inbounds double, ptr %87, i64 3
  %107 = load double, ptr %106, align 8, !tbaa !10
  %108 = fmul double %107, 6.553500e+04
  %109 = fptrunc double %108 to float
  %110 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %109) #25
  %111 = xor i16 %110, -1
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 0, i32 3
  store i16 %111, ptr %112, align 2, !tbaa !43
  %113 = getelementptr inbounds double, ptr %87, i64 4
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %89, i64 1
  %115 = add nuw nsw i64 %88, 1
  %116 = icmp eq i64 %115, %84
  br i1 %116, label %117, label %86, !llvm.loop !197

117:                                              ; preds = %86, %83
  %118 = phi ptr [ %76, %83 ], [ %113, %86 ]
  %119 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %480, label %70

121:                                              ; preds = %60
  %122 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %175

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %126 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !35
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %480

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %135

131:                                              ; preds = %171
  %132 = add nuw nsw i64 %136, 1
  %133 = load i64, ptr %126, align 8, !tbaa !35
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %480, !llvm.loop !198

135:                                              ; preds = %129, %131
  %136 = phi i64 [ 0, %129 ], [ %132, %131 ]
  %137 = phi ptr [ %4, %129 ], [ %172, %131 ]
  %138 = load i64, ptr %125, align 8, !tbaa !36
  %139 = load i64, ptr %130, align 8, !tbaa !37
  %140 = add nsw i64 %139, %136
  %141 = load i64, ptr %1, align 8, !tbaa !34
  %142 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %138, i64 noundef %140, i64 noundef %141, i64 noundef 1, ptr noundef %5) #22
  %143 = icmp eq ptr %142, null
  br i1 %143, label %480, label %144

144:                                              ; preds = %135
  %145 = load i64, ptr %1, align 8, !tbaa !34
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %144, %147
  %148 = phi ptr [ %167, %147 ], [ %137, %144 ]
  %149 = phi i64 [ %169, %147 ], [ 0, %144 ]
  %150 = phi ptr [ %168, %147 ], [ %142, %144 ]
  %151 = load double, ptr %148, align 8, !tbaa !10
  %152 = fmul double %151, 6.553500e+04
  %153 = fptrunc double %152 to float
  %154 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %153) #25
  store i16 %154, ptr %150, align 2, !tbaa !38
  %155 = getelementptr inbounds double, ptr %148, i64 1
  %156 = load double, ptr %155, align 8, !tbaa !10
  %157 = fmul double %156, 6.553500e+04
  %158 = fptrunc double %157 to float
  %159 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %158) #25
  %160 = getelementptr inbounds %struct._PixelPacket, ptr %150, i64 0, i32 1
  store i16 %159, ptr %160, align 2, !tbaa !39
  %161 = getelementptr inbounds double, ptr %148, i64 2
  %162 = load double, ptr %161, align 8, !tbaa !10
  %163 = fmul double %162, 6.553500e+04
  %164 = fptrunc double %163 to float
  %165 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %164) #25
  %166 = getelementptr inbounds %struct._PixelPacket, ptr %150, i64 0, i32 2
  store i16 %165, ptr %166, align 2, !tbaa !40
  %167 = getelementptr inbounds double, ptr %148, i64 4
  %168 = getelementptr inbounds %struct._PixelPacket, ptr %150, i64 1
  %169 = add nuw nsw i64 %149, 1
  %170 = icmp eq i64 %169, %145
  br i1 %170, label %171, label %147, !llvm.loop !199

171:                                              ; preds = %147, %144
  %172 = phi ptr [ %137, %144 ], [ %167, %147 ]
  %173 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %480, label %131

175:                                              ; preds = %121
  %176 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %219

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %180 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !35
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %183, label %480

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %189

185:                                              ; preds = %215
  %186 = add nuw nsw i64 %190, 1
  %187 = load i64, ptr %180, align 8, !tbaa !35
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %480, !llvm.loop !200

189:                                              ; preds = %183, %185
  %190 = phi i64 [ 0, %183 ], [ %186, %185 ]
  %191 = phi ptr [ %4, %183 ], [ %216, %185 ]
  %192 = load i64, ptr %179, align 8, !tbaa !36
  %193 = load i64, ptr %184, align 8, !tbaa !37
  %194 = add nsw i64 %193, %190
  %195 = load i64, ptr %1, align 8, !tbaa !34
  %196 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %192, i64 noundef %194, i64 noundef %195, i64 noundef 1, ptr noundef %5) #22
  %197 = icmp eq ptr %196, null
  br i1 %197, label %480, label %198

198:                                              ; preds = %189
  %199 = load i64, ptr %1, align 8, !tbaa !34
  %200 = icmp sgt i64 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %198, %201
  %202 = phi ptr [ %211, %201 ], [ %191, %198 ]
  %203 = phi i64 [ %213, %201 ], [ 0, %198 ]
  %204 = phi ptr [ %212, %201 ], [ %196, %198 ]
  %205 = load double, ptr %202, align 8, !tbaa !10
  %206 = fmul double %205, 6.553500e+04
  %207 = fptrunc double %206 to float
  %208 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %207) #25
  %209 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 2
  store i16 %208, ptr %209, align 2, !tbaa !40
  %210 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 0, i32 1
  store i16 %208, ptr %210, align 2, !tbaa !39
  store i16 %208, ptr %204, align 2, !tbaa !38
  %211 = getelementptr inbounds double, ptr %202, i64 1
  %212 = getelementptr inbounds %struct._PixelPacket, ptr %204, i64 1
  %213 = add nuw nsw i64 %203, 1
  %214 = icmp eq i64 %213, %199
  br i1 %214, label %215, label %201, !llvm.loop !201

215:                                              ; preds = %201, %198
  %216 = phi ptr [ %191, %198 ], [ %211, %201 ]
  %217 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %480, label %185

219:                                              ; preds = %175
  %220 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %273

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %224 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %225 = load i64, ptr %224, align 8, !tbaa !35
  %226 = icmp sgt i64 %225, 0
  br i1 %226, label %227, label %480

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %233

229:                                              ; preds = %269
  %230 = add nuw nsw i64 %234, 1
  %231 = load i64, ptr %224, align 8, !tbaa !35
  %232 = icmp slt i64 %230, %231
  br i1 %232, label %233, label %480, !llvm.loop !202

233:                                              ; preds = %227, %229
  %234 = phi i64 [ 0, %227 ], [ %230, %229 ]
  %235 = phi ptr [ %4, %227 ], [ %270, %229 ]
  %236 = load i64, ptr %223, align 8, !tbaa !36
  %237 = load i64, ptr %228, align 8, !tbaa !37
  %238 = add nsw i64 %237, %234
  %239 = load i64, ptr %1, align 8, !tbaa !34
  %240 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %236, i64 noundef %238, i64 noundef %239, i64 noundef 1, ptr noundef %5) #22
  %241 = icmp eq ptr %240, null
  br i1 %241, label %480, label %242

242:                                              ; preds = %233
  %243 = load i64, ptr %1, align 8, !tbaa !34
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %245, label %269

245:                                              ; preds = %242, %245
  %246 = phi ptr [ %265, %245 ], [ %235, %242 ]
  %247 = phi i64 [ %267, %245 ], [ 0, %242 ]
  %248 = phi ptr [ %266, %245 ], [ %240, %242 ]
  %249 = load double, ptr %246, align 8, !tbaa !10
  %250 = fmul double %249, 6.553500e+04
  %251 = fptrunc double %250 to float
  %252 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %251) #25
  %253 = getelementptr inbounds %struct._PixelPacket, ptr %248, i64 0, i32 2
  store i16 %252, ptr %253, align 2, !tbaa !40
  %254 = getelementptr inbounds double, ptr %246, i64 1
  %255 = load double, ptr %254, align 8, !tbaa !10
  %256 = fmul double %255, 6.553500e+04
  %257 = fptrunc double %256 to float
  %258 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %257) #25
  %259 = getelementptr inbounds %struct._PixelPacket, ptr %248, i64 0, i32 1
  store i16 %258, ptr %259, align 2, !tbaa !39
  %260 = getelementptr inbounds double, ptr %246, i64 2
  %261 = load double, ptr %260, align 8, !tbaa !10
  %262 = fmul double %261, 6.553500e+04
  %263 = fptrunc double %262 to float
  %264 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %263) #25
  store i16 %264, ptr %248, align 2, !tbaa !38
  %265 = getelementptr inbounds double, ptr %246, i64 3
  %266 = getelementptr inbounds %struct._PixelPacket, ptr %248, i64 1
  %267 = add nuw nsw i64 %247, 1
  %268 = icmp eq i64 %267, %243
  br i1 %268, label %269, label %245, !llvm.loop !203

269:                                              ; preds = %245, %242
  %270 = phi ptr [ %235, %242 ], [ %265, %245 ]
  %271 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %480, label %229

273:                                              ; preds = %219
  %274 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %334

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %278 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %279 = load i64, ptr %278, align 8, !tbaa !35
  %280 = icmp sgt i64 %279, 0
  br i1 %280, label %281, label %480

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %287

283:                                              ; preds = %330
  %284 = add nuw nsw i64 %288, 1
  %285 = load i64, ptr %278, align 8, !tbaa !35
  %286 = icmp slt i64 %284, %285
  br i1 %286, label %287, label %480, !llvm.loop !204

287:                                              ; preds = %281, %283
  %288 = phi i64 [ 0, %281 ], [ %284, %283 ]
  %289 = phi ptr [ %4, %281 ], [ %331, %283 ]
  %290 = load i64, ptr %277, align 8, !tbaa !36
  %291 = load i64, ptr %282, align 8, !tbaa !37
  %292 = add nsw i64 %291, %288
  %293 = load i64, ptr %1, align 8, !tbaa !34
  %294 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %290, i64 noundef %292, i64 noundef %293, i64 noundef 1, ptr noundef %5) #22
  %295 = icmp eq ptr %294, null
  br i1 %295, label %480, label %296

296:                                              ; preds = %287
  %297 = load i64, ptr %1, align 8, !tbaa !34
  %298 = icmp sgt i64 %297, 0
  br i1 %298, label %299, label %330

299:                                              ; preds = %296, %299
  %300 = phi ptr [ %326, %299 ], [ %289, %296 ]
  %301 = phi i64 [ %328, %299 ], [ 0, %296 ]
  %302 = phi ptr [ %327, %299 ], [ %294, %296 ]
  %303 = load double, ptr %300, align 8, !tbaa !10
  %304 = fmul double %303, 6.553500e+04
  %305 = fptrunc double %304 to float
  %306 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %305) #25
  %307 = getelementptr inbounds %struct._PixelPacket, ptr %302, i64 0, i32 2
  store i16 %306, ptr %307, align 2, !tbaa !40
  %308 = getelementptr inbounds double, ptr %300, i64 1
  %309 = load double, ptr %308, align 8, !tbaa !10
  %310 = fmul double %309, 6.553500e+04
  %311 = fptrunc double %310 to float
  %312 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %311) #25
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %302, i64 0, i32 1
  store i16 %312, ptr %313, align 2, !tbaa !39
  %314 = getelementptr inbounds double, ptr %300, i64 2
  %315 = load double, ptr %314, align 8, !tbaa !10
  %316 = fmul double %315, 6.553500e+04
  %317 = fptrunc double %316 to float
  %318 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %317) #25
  store i16 %318, ptr %302, align 2, !tbaa !38
  %319 = getelementptr inbounds double, ptr %300, i64 3
  %320 = load double, ptr %319, align 8, !tbaa !10
  %321 = fmul double %320, 6.553500e+04
  %322 = fptrunc double %321 to float
  %323 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %322) #25
  %324 = xor i16 %323, -1
  %325 = getelementptr inbounds %struct._PixelPacket, ptr %302, i64 0, i32 3
  store i16 %324, ptr %325, align 2, !tbaa !43
  %326 = getelementptr inbounds double, ptr %300, i64 4
  %327 = getelementptr inbounds %struct._PixelPacket, ptr %302, i64 1
  %328 = add nuw nsw i64 %301, 1
  %329 = icmp eq i64 %328, %297
  br i1 %329, label %330, label %299, !llvm.loop !205

330:                                              ; preds = %299, %296
  %331 = phi ptr [ %289, %296 ], [ %326, %299 ]
  %332 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %480, label %283

334:                                              ; preds = %273
  %335 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %388

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %339 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %340 = load i64, ptr %339, align 8, !tbaa !35
  %341 = icmp sgt i64 %340, 0
  br i1 %341, label %342, label %480

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %348

344:                                              ; preds = %384
  %345 = add nuw nsw i64 %349, 1
  %346 = load i64, ptr %339, align 8, !tbaa !35
  %347 = icmp slt i64 %345, %346
  br i1 %347, label %348, label %480, !llvm.loop !206

348:                                              ; preds = %342, %344
  %349 = phi i64 [ 0, %342 ], [ %345, %344 ]
  %350 = phi ptr [ %4, %342 ], [ %385, %344 ]
  %351 = load i64, ptr %338, align 8, !tbaa !36
  %352 = load i64, ptr %343, align 8, !tbaa !37
  %353 = add nsw i64 %352, %349
  %354 = load i64, ptr %1, align 8, !tbaa !34
  %355 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %351, i64 noundef %353, i64 noundef %354, i64 noundef 1, ptr noundef %5) #22
  %356 = icmp eq ptr %355, null
  br i1 %356, label %480, label %357

357:                                              ; preds = %348
  %358 = load i64, ptr %1, align 8, !tbaa !34
  %359 = icmp sgt i64 %358, 0
  br i1 %359, label %360, label %384

360:                                              ; preds = %357, %360
  %361 = phi ptr [ %380, %360 ], [ %350, %357 ]
  %362 = phi i64 [ %382, %360 ], [ 0, %357 ]
  %363 = phi ptr [ %381, %360 ], [ %355, %357 ]
  %364 = load double, ptr %361, align 8, !tbaa !10
  %365 = fmul double %364, 6.553500e+04
  %366 = fptrunc double %365 to float
  %367 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %366) #25
  %368 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 2
  store i16 %367, ptr %368, align 2, !tbaa !40
  %369 = getelementptr inbounds double, ptr %361, i64 1
  %370 = load double, ptr %369, align 8, !tbaa !10
  %371 = fmul double %370, 6.553500e+04
  %372 = fptrunc double %371 to float
  %373 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %372) #25
  %374 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 0, i32 1
  store i16 %373, ptr %374, align 2, !tbaa !39
  %375 = getelementptr inbounds double, ptr %361, i64 2
  %376 = load double, ptr %375, align 8, !tbaa !10
  %377 = fmul double %376, 6.553500e+04
  %378 = fptrunc double %377 to float
  %379 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %378) #25
  store i16 %379, ptr %363, align 2, !tbaa !38
  %380 = getelementptr inbounds double, ptr %361, i64 3
  %381 = getelementptr inbounds %struct._PixelPacket, ptr %363, i64 1
  %382 = add nuw nsw i64 %362, 1
  %383 = icmp eq i64 %382, %358
  br i1 %383, label %384, label %360, !llvm.loop !207

384:                                              ; preds = %360, %357
  %385 = phi ptr [ %350, %357 ], [ %380, %360 ]
  %386 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %480, label %344

388:                                              ; preds = %334
  %389 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %390 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %391 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %392 = load i64, ptr %391, align 8, !tbaa !35
  %393 = icmp sgt i64 %392, 0
  br i1 %393, label %394, label %480

394:                                              ; preds = %388
  %395 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %396 = icmp sgt i64 %389, 0
  br label %401

397:                                              ; preds = %476
  %398 = add nuw nsw i64 %402, 1
  %399 = load i64, ptr %391, align 8, !tbaa !35
  %400 = icmp slt i64 %398, %399
  br i1 %400, label %401, label %480, !llvm.loop !208

401:                                              ; preds = %394, %397
  %402 = phi i64 [ 0, %394 ], [ %398, %397 ]
  %403 = phi ptr [ %4, %394 ], [ %477, %397 ]
  %404 = load i64, ptr %390, align 8, !tbaa !36
  %405 = load i64, ptr %395, align 8, !tbaa !37
  %406 = add nsw i64 %405, %402
  %407 = load i64, ptr %1, align 8, !tbaa !34
  %408 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %404, i64 noundef %406, i64 noundef %407, i64 noundef 1, ptr noundef %5) #22
  %409 = icmp eq ptr %408, null
  br i1 %409, label %480, label %410

410:                                              ; preds = %401
  %411 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #22
  %412 = load i64, ptr %1, align 8, !tbaa !34
  %413 = icmp sgt i64 %412, 0
  br i1 %413, label %414, label %476

414:                                              ; preds = %410
  %415 = icmp eq ptr %411, null
  br label %416

416:                                              ; preds = %414, %471
  %417 = phi ptr [ %403, %414 ], [ %472, %471 ]
  %418 = phi i64 [ 0, %414 ], [ %474, %471 ]
  %419 = phi ptr [ %408, %414 ], [ %473, %471 ]
  br i1 %396, label %420, label %471

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct._PixelPacket, ptr %419, i64 0, i32 2
  %422 = getelementptr inbounds %struct._PixelPacket, ptr %419, i64 0, i32 1
  %423 = getelementptr inbounds i16, ptr %411, i64 %418
  %424 = getelementptr inbounds %struct._PixelPacket, ptr %419, i64 0, i32 3
  br label %425

425:                                              ; preds = %420, %467
  %426 = phi i64 [ 0, %420 ], [ %469, %467 ]
  %427 = phi ptr [ %417, %420 ], [ %468, %467 ]
  %428 = getelementptr inbounds i32, ptr %3, i64 %426
  %429 = load i32, ptr %428, align 4, !tbaa !5
  switch i32 %429, label %467 [
    i32 14, label %430
    i32 6, label %430
    i32 9, label %435
    i32 12, label %435
    i32 3, label %440
    i32 19, label %440
    i32 1, label %445
    i32 13, label %451
    i32 2, label %456
    i32 11, label %462
  ]

430:                                              ; preds = %425, %425
  %431 = load double, ptr %427, align 8, !tbaa !10
  %432 = fmul double %431, 6.553500e+04
  %433 = fptrunc double %432 to float
  %434 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %433) #25
  store i16 %434, ptr %421, align 2, !tbaa !40
  br label %467

435:                                              ; preds = %425, %425
  %436 = load double, ptr %427, align 8, !tbaa !10
  %437 = fmul double %436, 6.553500e+04
  %438 = fptrunc double %437 to float
  %439 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %438) #25
  store i16 %439, ptr %422, align 2, !tbaa !39
  br label %467

440:                                              ; preds = %425, %425
  %441 = load double, ptr %427, align 8, !tbaa !10
  %442 = fmul double %441, 6.553500e+04
  %443 = fptrunc double %442 to float
  %444 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %443) #25
  store i16 %444, ptr %419, align 2, !tbaa !38
  br label %467

445:                                              ; preds = %425
  %446 = load double, ptr %427, align 8, !tbaa !10
  %447 = fmul double %446, 6.553500e+04
  %448 = fptrunc double %447 to float
  %449 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %448) #25
  %450 = xor i16 %449, -1
  store i16 %450, ptr %424, align 2, !tbaa !43
  br label %467

451:                                              ; preds = %425
  %452 = load double, ptr %427, align 8, !tbaa !10
  %453 = fmul double %452, 6.553500e+04
  %454 = fptrunc double %453 to float
  %455 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %454) #25
  store i16 %455, ptr %424, align 2, !tbaa !43
  br label %467

456:                                              ; preds = %425
  br i1 %415, label %467, label %457

457:                                              ; preds = %456
  %458 = load double, ptr %427, align 8, !tbaa !10
  %459 = fmul double %458, 6.553500e+04
  %460 = fptrunc double %459 to float
  %461 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %460) #25
  store i16 %461, ptr %423, align 2, !tbaa !56
  br label %467

462:                                              ; preds = %425
  %463 = load double, ptr %427, align 8, !tbaa !10
  %464 = fmul double %463, 6.553500e+04
  %465 = fptrunc double %464 to float
  %466 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %465) #25
  store i16 %466, ptr %421, align 2, !tbaa !40
  store i16 %466, ptr %422, align 2, !tbaa !39
  store i16 %466, ptr %419, align 2, !tbaa !38
  br label %467

467:                                              ; preds = %425, %456, %457, %462, %451, %445, %440, %435, %430
  %468 = getelementptr inbounds double, ptr %427, i64 1
  %469 = add nuw nsw i64 %426, 1
  %470 = icmp eq i64 %469, %389
  br i1 %470, label %471, label %425, !llvm.loop !209

471:                                              ; preds = %467, %416
  %472 = phi ptr [ %417, %416 ], [ %468, %467 ]
  %473 = getelementptr inbounds %struct._PixelPacket, ptr %419, i64 1
  %474 = add nuw nsw i64 %418, 1
  %475 = icmp eq i64 %474, %412
  br i1 %475, label %476, label %416, !llvm.loop !210

476:                                              ; preds = %471, %410
  %477 = phi ptr [ %403, %410 ], [ %472, %471 ]
  %478 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %397

480:                                              ; preds = %476, %401, %397, %384, %348, %344, %330, %287, %283, %269, %233, %229, %215, %189, %185, %171, %135, %131, %117, %74, %70, %56, %20, %16, %388, %337, %276, %222, %178, %124, %63, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportFloatPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %452

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %20

16:                                               ; preds = %53
  %17 = add nuw nsw i64 %21, 1
  %18 = load i64, ptr %11, align 8, !tbaa !35
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %452, !llvm.loop !211

20:                                               ; preds = %14, %16
  %21 = phi i64 [ 0, %14 ], [ %17, %16 ]
  %22 = phi ptr [ %4, %14 ], [ %54, %16 ]
  %23 = load i64, ptr %10, align 8, !tbaa !36
  %24 = load i64, ptr %15, align 8, !tbaa !37
  %25 = add nsw i64 %24, %21
  %26 = load i64, ptr %1, align 8, !tbaa !34
  %27 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %23, i64 noundef %25, i64 noundef %26, i64 noundef 1, ptr noundef %5) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %452, label %29

29:                                               ; preds = %20
  %30 = load i64, ptr %1, align 8, !tbaa !34
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %49, %32 ], [ %22, %29 ]
  %34 = phi i64 [ %51, %32 ], [ 0, %29 ]
  %35 = phi ptr [ %50, %32 ], [ %27, %29 ]
  %36 = load float, ptr %33, align 4, !tbaa !14
  %37 = fmul float %36, 6.553500e+04
  %38 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %37) #25
  store i16 %38, ptr %35, align 2, !tbaa !38
  %39 = getelementptr inbounds float, ptr %33, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !14
  %41 = fmul float %40, 6.553500e+04
  %42 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %41) #25
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 1
  store i16 %42, ptr %43, align 2, !tbaa !39
  %44 = getelementptr inbounds float, ptr %33, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !14
  %46 = fmul float %45, 6.553500e+04
  %47 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %46) #25
  %48 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 2
  store i16 %47, ptr %48, align 2, !tbaa !40
  %49 = getelementptr inbounds float, ptr %33, i64 3
  %50 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %51 = add nuw nsw i64 %34, 1
  %52 = icmp eq i64 %51, %30
  br i1 %52, label %53, label %32, !llvm.loop !212

53:                                               ; preds = %32, %29
  %54 = phi ptr [ %22, %29 ], [ %49, %32 ]
  %55 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %452, label %16

57:                                               ; preds = %6
  %58 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %62 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !35
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %452

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %71

67:                                               ; preds = %110
  %68 = add nuw nsw i64 %72, 1
  %69 = load i64, ptr %62, align 8, !tbaa !35
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %452, !llvm.loop !213

71:                                               ; preds = %65, %67
  %72 = phi i64 [ 0, %65 ], [ %68, %67 ]
  %73 = phi ptr [ %4, %65 ], [ %111, %67 ]
  %74 = load i64, ptr %61, align 8, !tbaa !36
  %75 = load i64, ptr %66, align 8, !tbaa !37
  %76 = add nsw i64 %75, %72
  %77 = load i64, ptr %1, align 8, !tbaa !34
  %78 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %74, i64 noundef %76, i64 noundef %77, i64 noundef 1, ptr noundef %5) #22
  %79 = icmp eq ptr %78, null
  br i1 %79, label %452, label %80

80:                                               ; preds = %71
  %81 = load i64, ptr %1, align 8, !tbaa !34
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %80, %83
  %84 = phi ptr [ %106, %83 ], [ %73, %80 ]
  %85 = phi i64 [ %108, %83 ], [ 0, %80 ]
  %86 = phi ptr [ %107, %83 ], [ %78, %80 ]
  %87 = load float, ptr %84, align 4, !tbaa !14
  %88 = fmul float %87, 6.553500e+04
  %89 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %88) #25
  store i16 %89, ptr %86, align 2, !tbaa !38
  %90 = getelementptr inbounds float, ptr %84, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !14
  %92 = fmul float %91, 6.553500e+04
  %93 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %92) #25
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 1
  store i16 %93, ptr %94, align 2, !tbaa !39
  %95 = getelementptr inbounds float, ptr %84, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !14
  %97 = fmul float %96, 6.553500e+04
  %98 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %97) #25
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 2
  store i16 %98, ptr %99, align 2, !tbaa !40
  %100 = getelementptr inbounds float, ptr %84, i64 3
  %101 = load float, ptr %100, align 4, !tbaa !14
  %102 = fmul float %101, 6.553500e+04
  %103 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %102) #25
  %104 = xor i16 %103, -1
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 3
  store i16 %104, ptr %105, align 2, !tbaa !43
  %106 = getelementptr inbounds float, ptr %84, i64 4
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 1
  %108 = add nuw nsw i64 %85, 1
  %109 = icmp eq i64 %108, %81
  br i1 %109, label %110, label %83, !llvm.loop !214

110:                                              ; preds = %83, %80
  %111 = phi ptr [ %73, %80 ], [ %106, %83 ]
  %112 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %452, label %67

114:                                              ; preds = %57
  %115 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %165

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %119 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !35
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %452

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %128

124:                                              ; preds = %161
  %125 = add nuw nsw i64 %129, 1
  %126 = load i64, ptr %119, align 8, !tbaa !35
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %452, !llvm.loop !215

128:                                              ; preds = %122, %124
  %129 = phi i64 [ 0, %122 ], [ %125, %124 ]
  %130 = phi ptr [ %4, %122 ], [ %162, %124 ]
  %131 = load i64, ptr %118, align 8, !tbaa !36
  %132 = load i64, ptr %123, align 8, !tbaa !37
  %133 = add nsw i64 %132, %129
  %134 = load i64, ptr %1, align 8, !tbaa !34
  %135 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %131, i64 noundef %133, i64 noundef %134, i64 noundef 1, ptr noundef %5) #22
  %136 = icmp eq ptr %135, null
  br i1 %136, label %452, label %137

137:                                              ; preds = %128
  %138 = load i64, ptr %1, align 8, !tbaa !34
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %137, %140
  %141 = phi ptr [ %157, %140 ], [ %130, %137 ]
  %142 = phi i64 [ %159, %140 ], [ 0, %137 ]
  %143 = phi ptr [ %158, %140 ], [ %135, %137 ]
  %144 = load float, ptr %141, align 4, !tbaa !14
  %145 = fmul float %144, 6.553500e+04
  %146 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %145) #25
  store i16 %146, ptr %143, align 2, !tbaa !38
  %147 = getelementptr inbounds float, ptr %141, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !14
  %149 = fmul float %148, 6.553500e+04
  %150 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %149) #25
  %151 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 0, i32 1
  store i16 %150, ptr %151, align 2, !tbaa !39
  %152 = getelementptr inbounds float, ptr %141, i64 2
  %153 = load float, ptr %152, align 4, !tbaa !14
  %154 = fmul float %153, 6.553500e+04
  %155 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %154) #25
  %156 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 0, i32 2
  store i16 %155, ptr %156, align 2, !tbaa !40
  %157 = getelementptr inbounds float, ptr %141, i64 4
  %158 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 1
  %159 = add nuw nsw i64 %142, 1
  %160 = icmp eq i64 %159, %138
  br i1 %160, label %161, label %140, !llvm.loop !216

161:                                              ; preds = %140, %137
  %162 = phi ptr [ %130, %137 ], [ %157, %140 ]
  %163 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %452, label %124

165:                                              ; preds = %114
  %166 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %208

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %170 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !35
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %452

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %179

175:                                              ; preds = %204
  %176 = add nuw nsw i64 %180, 1
  %177 = load i64, ptr %170, align 8, !tbaa !35
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %452, !llvm.loop !217

179:                                              ; preds = %173, %175
  %180 = phi i64 [ 0, %173 ], [ %176, %175 ]
  %181 = phi ptr [ %4, %173 ], [ %205, %175 ]
  %182 = load i64, ptr %169, align 8, !tbaa !36
  %183 = load i64, ptr %174, align 8, !tbaa !37
  %184 = add nsw i64 %183, %180
  %185 = load i64, ptr %1, align 8, !tbaa !34
  %186 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %182, i64 noundef %184, i64 noundef %185, i64 noundef 1, ptr noundef %5) #22
  %187 = icmp eq ptr %186, null
  br i1 %187, label %452, label %188

188:                                              ; preds = %179
  %189 = load i64, ptr %1, align 8, !tbaa !34
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188, %191
  %192 = phi ptr [ %200, %191 ], [ %181, %188 ]
  %193 = phi i64 [ %202, %191 ], [ 0, %188 ]
  %194 = phi ptr [ %201, %191 ], [ %186, %188 ]
  %195 = load float, ptr %192, align 4, !tbaa !14
  %196 = fmul float %195, 6.553500e+04
  %197 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %196) #25
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %194, i64 0, i32 2
  store i16 %197, ptr %198, align 2, !tbaa !40
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %194, i64 0, i32 1
  store i16 %197, ptr %199, align 2, !tbaa !39
  store i16 %197, ptr %194, align 2, !tbaa !38
  %200 = getelementptr inbounds float, ptr %192, i64 1
  %201 = getelementptr inbounds %struct._PixelPacket, ptr %194, i64 1
  %202 = add nuw nsw i64 %193, 1
  %203 = icmp eq i64 %202, %189
  br i1 %203, label %204, label %191, !llvm.loop !218

204:                                              ; preds = %191, %188
  %205 = phi ptr [ %181, %188 ], [ %200, %191 ]
  %206 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %452, label %175

208:                                              ; preds = %165
  %209 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %259

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %213 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %214 = load i64, ptr %213, align 8, !tbaa !35
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %216, label %452

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %222

218:                                              ; preds = %255
  %219 = add nuw nsw i64 %223, 1
  %220 = load i64, ptr %213, align 8, !tbaa !35
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %222, label %452, !llvm.loop !219

222:                                              ; preds = %216, %218
  %223 = phi i64 [ 0, %216 ], [ %219, %218 ]
  %224 = phi ptr [ %4, %216 ], [ %256, %218 ]
  %225 = load i64, ptr %212, align 8, !tbaa !36
  %226 = load i64, ptr %217, align 8, !tbaa !37
  %227 = add nsw i64 %226, %223
  %228 = load i64, ptr %1, align 8, !tbaa !34
  %229 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %225, i64 noundef %227, i64 noundef %228, i64 noundef 1, ptr noundef %5) #22
  %230 = icmp eq ptr %229, null
  br i1 %230, label %452, label %231

231:                                              ; preds = %222
  %232 = load i64, ptr %1, align 8, !tbaa !34
  %233 = icmp sgt i64 %232, 0
  br i1 %233, label %234, label %255

234:                                              ; preds = %231, %234
  %235 = phi ptr [ %251, %234 ], [ %224, %231 ]
  %236 = phi i64 [ %253, %234 ], [ 0, %231 ]
  %237 = phi ptr [ %252, %234 ], [ %229, %231 ]
  %238 = load float, ptr %235, align 4, !tbaa !14
  %239 = fmul float %238, 6.553500e+04
  %240 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %239) #25
  %241 = getelementptr inbounds %struct._PixelPacket, ptr %237, i64 0, i32 2
  store i16 %240, ptr %241, align 2, !tbaa !40
  %242 = getelementptr inbounds float, ptr %235, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !14
  %244 = fmul float %243, 6.553500e+04
  %245 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %244) #25
  %246 = getelementptr inbounds %struct._PixelPacket, ptr %237, i64 0, i32 1
  store i16 %245, ptr %246, align 2, !tbaa !39
  %247 = getelementptr inbounds float, ptr %235, i64 2
  %248 = load float, ptr %247, align 4, !tbaa !14
  %249 = fmul float %248, 6.553500e+04
  %250 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %249) #25
  store i16 %250, ptr %237, align 2, !tbaa !38
  %251 = getelementptr inbounds float, ptr %235, i64 3
  %252 = getelementptr inbounds %struct._PixelPacket, ptr %237, i64 1
  %253 = add nuw nsw i64 %236, 1
  %254 = icmp eq i64 %253, %232
  br i1 %254, label %255, label %234, !llvm.loop !220

255:                                              ; preds = %234, %231
  %256 = phi ptr [ %224, %231 ], [ %251, %234 ]
  %257 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %452, label %218

259:                                              ; preds = %208
  %260 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %316

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %264 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %265 = load i64, ptr %264, align 8, !tbaa !35
  %266 = icmp sgt i64 %265, 0
  br i1 %266, label %267, label %452

267:                                              ; preds = %262
  %268 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %273

269:                                              ; preds = %312
  %270 = add nuw nsw i64 %274, 1
  %271 = load i64, ptr %264, align 8, !tbaa !35
  %272 = icmp slt i64 %270, %271
  br i1 %272, label %273, label %452, !llvm.loop !221

273:                                              ; preds = %267, %269
  %274 = phi i64 [ 0, %267 ], [ %270, %269 ]
  %275 = phi ptr [ %4, %267 ], [ %313, %269 ]
  %276 = load i64, ptr %263, align 8, !tbaa !36
  %277 = load i64, ptr %268, align 8, !tbaa !37
  %278 = add nsw i64 %277, %274
  %279 = load i64, ptr %1, align 8, !tbaa !34
  %280 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %276, i64 noundef %278, i64 noundef %279, i64 noundef 1, ptr noundef %5) #22
  %281 = icmp eq ptr %280, null
  br i1 %281, label %452, label %282

282:                                              ; preds = %273
  %283 = load i64, ptr %1, align 8, !tbaa !34
  %284 = icmp sgt i64 %283, 0
  br i1 %284, label %285, label %312

285:                                              ; preds = %282, %285
  %286 = phi ptr [ %308, %285 ], [ %275, %282 ]
  %287 = phi i64 [ %310, %285 ], [ 0, %282 ]
  %288 = phi ptr [ %309, %285 ], [ %280, %282 ]
  %289 = load float, ptr %286, align 4, !tbaa !14
  %290 = fmul float %289, 6.553500e+04
  %291 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %290) #25
  %292 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 0, i32 2
  store i16 %291, ptr %292, align 2, !tbaa !40
  %293 = getelementptr inbounds float, ptr %286, i64 1
  %294 = load float, ptr %293, align 4, !tbaa !14
  %295 = fmul float %294, 6.553500e+04
  %296 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %295) #25
  %297 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 0, i32 1
  store i16 %296, ptr %297, align 2, !tbaa !39
  %298 = getelementptr inbounds float, ptr %286, i64 2
  %299 = load float, ptr %298, align 4, !tbaa !14
  %300 = fmul float %299, 6.553500e+04
  %301 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %300) #25
  store i16 %301, ptr %288, align 2, !tbaa !38
  %302 = getelementptr inbounds float, ptr %286, i64 3
  %303 = load float, ptr %302, align 4, !tbaa !14
  %304 = fmul float %303, 6.553500e+04
  %305 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %304) #25
  %306 = xor i16 %305, -1
  %307 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 0, i32 3
  store i16 %306, ptr %307, align 2, !tbaa !43
  %308 = getelementptr inbounds float, ptr %286, i64 4
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %288, i64 1
  %310 = add nuw nsw i64 %287, 1
  %311 = icmp eq i64 %310, %283
  br i1 %311, label %312, label %285, !llvm.loop !222

312:                                              ; preds = %285, %282
  %313 = phi ptr [ %275, %282 ], [ %308, %285 ]
  %314 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %452, label %269

316:                                              ; preds = %259
  %317 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %367

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %321 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %322 = load i64, ptr %321, align 8, !tbaa !35
  %323 = icmp sgt i64 %322, 0
  br i1 %323, label %324, label %452

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %330

326:                                              ; preds = %363
  %327 = add nuw nsw i64 %331, 1
  %328 = load i64, ptr %321, align 8, !tbaa !35
  %329 = icmp slt i64 %327, %328
  br i1 %329, label %330, label %452, !llvm.loop !223

330:                                              ; preds = %324, %326
  %331 = phi i64 [ 0, %324 ], [ %327, %326 ]
  %332 = phi ptr [ %4, %324 ], [ %364, %326 ]
  %333 = load i64, ptr %320, align 8, !tbaa !36
  %334 = load i64, ptr %325, align 8, !tbaa !37
  %335 = add nsw i64 %334, %331
  %336 = load i64, ptr %1, align 8, !tbaa !34
  %337 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %333, i64 noundef %335, i64 noundef %336, i64 noundef 1, ptr noundef %5) #22
  %338 = icmp eq ptr %337, null
  br i1 %338, label %452, label %339

339:                                              ; preds = %330
  %340 = load i64, ptr %1, align 8, !tbaa !34
  %341 = icmp sgt i64 %340, 0
  br i1 %341, label %342, label %363

342:                                              ; preds = %339, %342
  %343 = phi ptr [ %359, %342 ], [ %332, %339 ]
  %344 = phi i64 [ %361, %342 ], [ 0, %339 ]
  %345 = phi ptr [ %360, %342 ], [ %337, %339 ]
  %346 = load float, ptr %343, align 4, !tbaa !14
  %347 = fmul float %346, 6.553500e+04
  %348 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %347) #25
  %349 = getelementptr inbounds %struct._PixelPacket, ptr %345, i64 0, i32 2
  store i16 %348, ptr %349, align 2, !tbaa !40
  %350 = getelementptr inbounds float, ptr %343, i64 1
  %351 = load float, ptr %350, align 4, !tbaa !14
  %352 = fmul float %351, 6.553500e+04
  %353 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %352) #25
  %354 = getelementptr inbounds %struct._PixelPacket, ptr %345, i64 0, i32 1
  store i16 %353, ptr %354, align 2, !tbaa !39
  %355 = getelementptr inbounds float, ptr %343, i64 2
  %356 = load float, ptr %355, align 4, !tbaa !14
  %357 = fmul float %356, 6.553500e+04
  %358 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %357) #25
  store i16 %358, ptr %345, align 2, !tbaa !38
  %359 = getelementptr inbounds float, ptr %343, i64 3
  %360 = getelementptr inbounds %struct._PixelPacket, ptr %345, i64 1
  %361 = add nuw nsw i64 %344, 1
  %362 = icmp eq i64 %361, %340
  br i1 %362, label %363, label %342, !llvm.loop !224

363:                                              ; preds = %342, %339
  %364 = phi ptr [ %332, %339 ], [ %359, %342 ]
  %365 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %452, label %326

367:                                              ; preds = %316
  %368 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %369 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %370 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %371 = load i64, ptr %370, align 8, !tbaa !35
  %372 = icmp sgt i64 %371, 0
  br i1 %372, label %373, label %452

373:                                              ; preds = %367
  %374 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %375 = icmp sgt i64 %368, 0
  br label %380

376:                                              ; preds = %448
  %377 = add nuw nsw i64 %381, 1
  %378 = load i64, ptr %370, align 8, !tbaa !35
  %379 = icmp slt i64 %377, %378
  br i1 %379, label %380, label %452, !llvm.loop !225

380:                                              ; preds = %373, %376
  %381 = phi i64 [ 0, %373 ], [ %377, %376 ]
  %382 = phi ptr [ %4, %373 ], [ %449, %376 ]
  %383 = load i64, ptr %369, align 8, !tbaa !36
  %384 = load i64, ptr %374, align 8, !tbaa !37
  %385 = add nsw i64 %384, %381
  %386 = load i64, ptr %1, align 8, !tbaa !34
  %387 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %383, i64 noundef %385, i64 noundef %386, i64 noundef 1, ptr noundef %5) #22
  %388 = icmp eq ptr %387, null
  br i1 %388, label %452, label %389

389:                                              ; preds = %380
  %390 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #22
  %391 = load i64, ptr %1, align 8, !tbaa !34
  %392 = icmp sgt i64 %391, 0
  br i1 %392, label %393, label %448

393:                                              ; preds = %389
  %394 = icmp eq ptr %390, null
  br label %395

395:                                              ; preds = %393, %443
  %396 = phi ptr [ %382, %393 ], [ %444, %443 ]
  %397 = phi i64 [ 0, %393 ], [ %446, %443 ]
  %398 = phi ptr [ %387, %393 ], [ %445, %443 ]
  br i1 %375, label %399, label %443

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 0, i32 2
  %401 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 0, i32 1
  %402 = getelementptr inbounds i16, ptr %390, i64 %397
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 0, i32 3
  br label %404

404:                                              ; preds = %399, %439
  %405 = phi i64 [ 0, %399 ], [ %441, %439 ]
  %406 = phi ptr [ %396, %399 ], [ %440, %439 ]
  %407 = getelementptr inbounds i32, ptr %3, i64 %405
  %408 = load i32, ptr %407, align 4, !tbaa !5
  switch i32 %408, label %439 [
    i32 14, label %409
    i32 6, label %409
    i32 9, label %413
    i32 12, label %413
    i32 3, label %417
    i32 19, label %417
    i32 1, label %421
    i32 13, label %426
    i32 2, label %430
    i32 11, label %435
  ]

409:                                              ; preds = %404, %404
  %410 = load float, ptr %406, align 4, !tbaa !14
  %411 = fmul float %410, 6.553500e+04
  %412 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %411) #25
  store i16 %412, ptr %400, align 2, !tbaa !40
  br label %439

413:                                              ; preds = %404, %404
  %414 = load float, ptr %406, align 4, !tbaa !14
  %415 = fmul float %414, 6.553500e+04
  %416 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %415) #25
  store i16 %416, ptr %401, align 2, !tbaa !39
  br label %439

417:                                              ; preds = %404, %404
  %418 = load float, ptr %406, align 4, !tbaa !14
  %419 = fmul float %418, 6.553500e+04
  %420 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %419) #25
  store i16 %420, ptr %398, align 2, !tbaa !38
  br label %439

421:                                              ; preds = %404
  %422 = load float, ptr %406, align 4, !tbaa !14
  %423 = fmul float %422, 6.553500e+04
  %424 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %423) #25
  %425 = xor i16 %424, -1
  store i16 %425, ptr %403, align 2, !tbaa !43
  br label %439

426:                                              ; preds = %404
  %427 = load float, ptr %406, align 4, !tbaa !14
  %428 = fmul float %427, 6.553500e+04
  %429 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %428) #25
  store i16 %429, ptr %403, align 2, !tbaa !43
  br label %439

430:                                              ; preds = %404
  br i1 %394, label %439, label %431

431:                                              ; preds = %430
  %432 = load float, ptr %406, align 4, !tbaa !14
  %433 = fmul float %432, 6.553500e+04
  %434 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %433) #25
  store i16 %434, ptr %402, align 2, !tbaa !56
  br label %439

435:                                              ; preds = %404
  %436 = load float, ptr %406, align 4, !tbaa !14
  %437 = fmul float %436, 6.553500e+04
  %438 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %437) #25
  store i16 %438, ptr %400, align 2, !tbaa !40
  store i16 %438, ptr %401, align 2, !tbaa !39
  store i16 %438, ptr %398, align 2, !tbaa !38
  br label %439

439:                                              ; preds = %404, %430, %431, %435, %426, %421, %417, %413, %409
  %440 = getelementptr inbounds float, ptr %406, i64 1
  %441 = add nuw nsw i64 %405, 1
  %442 = icmp eq i64 %441, %368
  br i1 %442, label %443, label %404, !llvm.loop !226

443:                                              ; preds = %439, %395
  %444 = phi ptr [ %396, %395 ], [ %440, %439 ]
  %445 = getelementptr inbounds %struct._PixelPacket, ptr %398, i64 1
  %446 = add nuw nsw i64 %397, 1
  %447 = icmp eq i64 %446, %391
  br i1 %447, label %448, label %395, !llvm.loop !227

448:                                              ; preds = %443, %389
  %449 = phi ptr [ %382, %389 ], [ %444, %443 ]
  %450 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %376

452:                                              ; preds = %448, %380, %376, %363, %330, %326, %312, %273, %269, %255, %222, %218, %204, %179, %175, %161, %128, %124, %110, %71, %67, %53, %20, %16, %367, %319, %262, %211, %168, %117, %60, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportIntegerPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %424

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %20

16:                                               ; preds = %50
  %17 = add nuw nsw i64 %21, 1
  %18 = load i64, ptr %11, align 8, !tbaa !35
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %424, !llvm.loop !228

20:                                               ; preds = %14, %16
  %21 = phi i64 [ 0, %14 ], [ %17, %16 ]
  %22 = phi ptr [ %4, %14 ], [ %51, %16 ]
  %23 = load i64, ptr %10, align 8, !tbaa !36
  %24 = load i64, ptr %15, align 8, !tbaa !37
  %25 = add nsw i64 %24, %21
  %26 = load i64, ptr %1, align 8, !tbaa !34
  %27 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %23, i64 noundef %25, i64 noundef %26, i64 noundef 1, ptr noundef %5) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %424, label %29

29:                                               ; preds = %20
  %30 = load i64, ptr %1, align 8, !tbaa !34
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %43, %32 ], [ %22, %29 ]
  %34 = phi i64 [ %48, %32 ], [ 0, %29 ]
  %35 = phi ptr [ %47, %32 ], [ %27, %29 ]
  %36 = getelementptr inbounds i32, ptr %33, i64 1
  %37 = load i32, ptr %33, align 4, !tbaa !5
  %38 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %37) #25
  store i16 %38, ptr %35, align 2, !tbaa !38
  %39 = getelementptr inbounds i32, ptr %33, i64 2
  %40 = load i32, ptr %36, align 4, !tbaa !5
  %41 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %40) #25
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 1
  store i16 %41, ptr %42, align 2, !tbaa !39
  %43 = getelementptr inbounds i32, ptr %33, i64 3
  %44 = load i32, ptr %39, align 4, !tbaa !5
  %45 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %44) #25
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 2
  store i16 %45, ptr %46, align 2, !tbaa !40
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %48 = add nuw nsw i64 %34, 1
  %49 = icmp eq i64 %48, %30
  br i1 %49, label %50, label %32, !llvm.loop !229

50:                                               ; preds = %32, %29
  %51 = phi ptr [ %22, %29 ], [ %43, %32 ]
  %52 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %424, label %16

54:                                               ; preds = %6
  %55 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %107

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %59 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !35
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %424

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %68

64:                                               ; preds = %103
  %65 = add nuw nsw i64 %69, 1
  %66 = load i64, ptr %59, align 8, !tbaa !35
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %424, !llvm.loop !230

68:                                               ; preds = %62, %64
  %69 = phi i64 [ 0, %62 ], [ %65, %64 ]
  %70 = phi ptr [ %4, %62 ], [ %104, %64 ]
  %71 = load i64, ptr %58, align 8, !tbaa !36
  %72 = load i64, ptr %63, align 8, !tbaa !37
  %73 = add nsw i64 %72, %69
  %74 = load i64, ptr %1, align 8, !tbaa !34
  %75 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %71, i64 noundef %73, i64 noundef %74, i64 noundef 1, ptr noundef %5) #22
  %76 = icmp eq ptr %75, null
  br i1 %76, label %424, label %77

77:                                               ; preds = %68
  %78 = load i64, ptr %1, align 8, !tbaa !34
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %95, %80 ], [ %70, %77 ]
  %82 = phi i64 [ %101, %80 ], [ 0, %77 ]
  %83 = phi ptr [ %100, %80 ], [ %75, %77 ]
  %84 = getelementptr inbounds i32, ptr %81, i64 1
  %85 = load i32, ptr %81, align 4, !tbaa !5
  %86 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %85) #25
  store i16 %86, ptr %83, align 2, !tbaa !38
  %87 = getelementptr inbounds i32, ptr %81, i64 2
  %88 = load i32, ptr %84, align 4, !tbaa !5
  %89 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %88) #25
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 1
  store i16 %89, ptr %90, align 2, !tbaa !39
  %91 = getelementptr inbounds i32, ptr %81, i64 3
  %92 = load i32, ptr %87, align 4, !tbaa !5
  %93 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %92) #25
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 2
  store i16 %93, ptr %94, align 2, !tbaa !40
  %95 = getelementptr inbounds i32, ptr %81, i64 4
  %96 = load i32, ptr %91, align 4, !tbaa !5
  %97 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %96) #25
  %98 = xor i16 %97, -1
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 3
  store i16 %98, ptr %99, align 2, !tbaa !43
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %101 = add nuw nsw i64 %82, 1
  %102 = icmp eq i64 %101, %78
  br i1 %102, label %103, label %80, !llvm.loop !231

103:                                              ; preds = %80, %77
  %104 = phi ptr [ %70, %77 ], [ %95, %80 ]
  %105 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %424, label %64

107:                                              ; preds = %54
  %108 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %155

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %112 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !35
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %424

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %121

117:                                              ; preds = %151
  %118 = add nuw nsw i64 %122, 1
  %119 = load i64, ptr %112, align 8, !tbaa !35
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %424, !llvm.loop !232

121:                                              ; preds = %115, %117
  %122 = phi i64 [ 0, %115 ], [ %118, %117 ]
  %123 = phi ptr [ %4, %115 ], [ %152, %117 ]
  %124 = load i64, ptr %111, align 8, !tbaa !36
  %125 = load i64, ptr %116, align 8, !tbaa !37
  %126 = add nsw i64 %125, %122
  %127 = load i64, ptr %1, align 8, !tbaa !34
  %128 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %124, i64 noundef %126, i64 noundef %127, i64 noundef 1, ptr noundef %5) #22
  %129 = icmp eq ptr %128, null
  br i1 %129, label %424, label %130

130:                                              ; preds = %121
  %131 = load i64, ptr %1, align 8, !tbaa !34
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %130, %133
  %134 = phi ptr [ %147, %133 ], [ %123, %130 ]
  %135 = phi i64 [ %149, %133 ], [ 0, %130 ]
  %136 = phi ptr [ %148, %133 ], [ %128, %130 ]
  %137 = getelementptr inbounds i32, ptr %134, i64 1
  %138 = load i32, ptr %134, align 4, !tbaa !5
  %139 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %138) #25
  store i16 %139, ptr %136, align 2, !tbaa !38
  %140 = getelementptr inbounds i32, ptr %134, i64 2
  %141 = load i32, ptr %137, align 4, !tbaa !5
  %142 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %141) #25
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 1
  store i16 %142, ptr %143, align 2, !tbaa !39
  %144 = load i32, ptr %140, align 4, !tbaa !5
  %145 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %144) #25
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 2
  store i16 %145, ptr %146, align 2, !tbaa !40
  %147 = getelementptr inbounds i32, ptr %134, i64 4
  %148 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 1
  %149 = add nuw nsw i64 %135, 1
  %150 = icmp eq i64 %149, %131
  br i1 %150, label %151, label %133, !llvm.loop !233

151:                                              ; preds = %133, %130
  %152 = phi ptr [ %123, %130 ], [ %147, %133 ]
  %153 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %424, label %117

155:                                              ; preds = %107
  %156 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %197

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %160 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !35
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %424

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %169

165:                                              ; preds = %193
  %166 = add nuw nsw i64 %170, 1
  %167 = load i64, ptr %160, align 8, !tbaa !35
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %424, !llvm.loop !234

169:                                              ; preds = %163, %165
  %170 = phi i64 [ 0, %163 ], [ %166, %165 ]
  %171 = phi ptr [ %4, %163 ], [ %194, %165 ]
  %172 = load i64, ptr %159, align 8, !tbaa !36
  %173 = load i64, ptr %164, align 8, !tbaa !37
  %174 = add nsw i64 %173, %170
  %175 = load i64, ptr %1, align 8, !tbaa !34
  %176 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %172, i64 noundef %174, i64 noundef %175, i64 noundef 1, ptr noundef %5) #22
  %177 = icmp eq ptr %176, null
  br i1 %177, label %424, label %178

178:                                              ; preds = %169
  %179 = load i64, ptr %1, align 8, !tbaa !34
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178, %181
  %182 = phi ptr [ %185, %181 ], [ %171, %178 ]
  %183 = phi i64 [ %191, %181 ], [ 0, %178 ]
  %184 = phi ptr [ %190, %181 ], [ %176, %178 ]
  %185 = getelementptr inbounds i32, ptr %182, i64 1
  %186 = load i32, ptr %182, align 4, !tbaa !5
  %187 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %186) #25
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 0, i32 2
  store i16 %187, ptr %188, align 2, !tbaa !40
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 0, i32 1
  store i16 %187, ptr %189, align 2, !tbaa !39
  store i16 %187, ptr %184, align 2, !tbaa !38
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 1
  %191 = add nuw nsw i64 %183, 1
  %192 = icmp eq i64 %191, %179
  br i1 %192, label %193, label %181, !llvm.loop !235

193:                                              ; preds = %181, %178
  %194 = phi ptr [ %171, %178 ], [ %185, %181 ]
  %195 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %424, label %165

197:                                              ; preds = %155
  %198 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %245

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %202 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !35
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %424

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %211

207:                                              ; preds = %241
  %208 = add nuw nsw i64 %212, 1
  %209 = load i64, ptr %202, align 8, !tbaa !35
  %210 = icmp slt i64 %208, %209
  br i1 %210, label %211, label %424, !llvm.loop !236

211:                                              ; preds = %205, %207
  %212 = phi i64 [ 0, %205 ], [ %208, %207 ]
  %213 = phi ptr [ %4, %205 ], [ %242, %207 ]
  %214 = load i64, ptr %201, align 8, !tbaa !36
  %215 = load i64, ptr %206, align 8, !tbaa !37
  %216 = add nsw i64 %215, %212
  %217 = load i64, ptr %1, align 8, !tbaa !34
  %218 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %214, i64 noundef %216, i64 noundef %217, i64 noundef 1, ptr noundef %5) #22
  %219 = icmp eq ptr %218, null
  br i1 %219, label %424, label %220

220:                                              ; preds = %211
  %221 = load i64, ptr %1, align 8, !tbaa !34
  %222 = icmp sgt i64 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %220, %223
  %224 = phi ptr [ %235, %223 ], [ %213, %220 ]
  %225 = phi i64 [ %239, %223 ], [ 0, %220 ]
  %226 = phi ptr [ %238, %223 ], [ %218, %220 ]
  %227 = getelementptr inbounds i32, ptr %224, i64 1
  %228 = load i32, ptr %224, align 4, !tbaa !5
  %229 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %228) #25
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 0, i32 2
  store i16 %229, ptr %230, align 2, !tbaa !40
  %231 = getelementptr inbounds i32, ptr %224, i64 2
  %232 = load i32, ptr %227, align 4, !tbaa !5
  %233 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %232) #25
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 0, i32 1
  store i16 %233, ptr %234, align 2, !tbaa !39
  %235 = getelementptr inbounds i32, ptr %224, i64 3
  %236 = load i32, ptr %231, align 4, !tbaa !5
  %237 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %236) #25
  store i16 %237, ptr %226, align 2, !tbaa !38
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 1
  %239 = add nuw nsw i64 %225, 1
  %240 = icmp eq i64 %239, %221
  br i1 %240, label %241, label %223, !llvm.loop !237

241:                                              ; preds = %223, %220
  %242 = phi ptr [ %213, %220 ], [ %235, %223 ]
  %243 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %424, label %207

245:                                              ; preds = %197
  %246 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %298

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %250 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !35
  %252 = icmp sgt i64 %251, 0
  br i1 %252, label %253, label %424

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %259

255:                                              ; preds = %294
  %256 = add nuw nsw i64 %260, 1
  %257 = load i64, ptr %250, align 8, !tbaa !35
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %259, label %424, !llvm.loop !238

259:                                              ; preds = %253, %255
  %260 = phi i64 [ 0, %253 ], [ %256, %255 ]
  %261 = phi ptr [ %4, %253 ], [ %295, %255 ]
  %262 = load i64, ptr %249, align 8, !tbaa !36
  %263 = load i64, ptr %254, align 8, !tbaa !37
  %264 = add nsw i64 %263, %260
  %265 = load i64, ptr %1, align 8, !tbaa !34
  %266 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %262, i64 noundef %264, i64 noundef %265, i64 noundef 1, ptr noundef %5) #22
  %267 = icmp eq ptr %266, null
  br i1 %267, label %424, label %268

268:                                              ; preds = %259
  %269 = load i64, ptr %1, align 8, !tbaa !34
  %270 = icmp sgt i64 %269, 0
  br i1 %270, label %271, label %294

271:                                              ; preds = %268, %271
  %272 = phi ptr [ %286, %271 ], [ %261, %268 ]
  %273 = phi i64 [ %292, %271 ], [ 0, %268 ]
  %274 = phi ptr [ %291, %271 ], [ %266, %268 ]
  %275 = getelementptr inbounds i32, ptr %272, i64 1
  %276 = load i32, ptr %272, align 4, !tbaa !5
  %277 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %276) #25
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 0, i32 2
  store i16 %277, ptr %278, align 2, !tbaa !40
  %279 = getelementptr inbounds i32, ptr %272, i64 2
  %280 = load i32, ptr %275, align 4, !tbaa !5
  %281 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %280) #25
  %282 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 0, i32 1
  store i16 %281, ptr %282, align 2, !tbaa !39
  %283 = getelementptr inbounds i32, ptr %272, i64 3
  %284 = load i32, ptr %279, align 4, !tbaa !5
  %285 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %284) #25
  store i16 %285, ptr %274, align 2, !tbaa !38
  %286 = getelementptr inbounds i32, ptr %272, i64 4
  %287 = load i32, ptr %283, align 4, !tbaa !5
  %288 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %287) #25
  %289 = xor i16 %288, -1
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 0, i32 3
  store i16 %289, ptr %290, align 2, !tbaa !43
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 1
  %292 = add nuw nsw i64 %273, 1
  %293 = icmp eq i64 %292, %269
  br i1 %293, label %294, label %271, !llvm.loop !239

294:                                              ; preds = %271, %268
  %295 = phi ptr [ %261, %268 ], [ %286, %271 ]
  %296 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %424, label %255

298:                                              ; preds = %245
  %299 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %346

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %303 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %304 = load i64, ptr %303, align 8, !tbaa !35
  %305 = icmp sgt i64 %304, 0
  br i1 %305, label %306, label %424

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %312

308:                                              ; preds = %342
  %309 = add nuw nsw i64 %313, 1
  %310 = load i64, ptr %303, align 8, !tbaa !35
  %311 = icmp slt i64 %309, %310
  br i1 %311, label %312, label %424, !llvm.loop !240

312:                                              ; preds = %306, %308
  %313 = phi i64 [ 0, %306 ], [ %309, %308 ]
  %314 = phi ptr [ %4, %306 ], [ %343, %308 ]
  %315 = load i64, ptr %302, align 8, !tbaa !36
  %316 = load i64, ptr %307, align 8, !tbaa !37
  %317 = add nsw i64 %316, %313
  %318 = load i64, ptr %1, align 8, !tbaa !34
  %319 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %315, i64 noundef %317, i64 noundef %318, i64 noundef 1, ptr noundef %5) #22
  %320 = icmp eq ptr %319, null
  br i1 %320, label %424, label %321

321:                                              ; preds = %312
  %322 = load i64, ptr %1, align 8, !tbaa !34
  %323 = icmp sgt i64 %322, 0
  br i1 %323, label %324, label %342

324:                                              ; preds = %321, %324
  %325 = phi ptr [ %338, %324 ], [ %314, %321 ]
  %326 = phi i64 [ %340, %324 ], [ 0, %321 ]
  %327 = phi ptr [ %339, %324 ], [ %319, %321 ]
  %328 = getelementptr inbounds i32, ptr %325, i64 1
  %329 = load i32, ptr %325, align 4, !tbaa !5
  %330 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %329) #25
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %327, i64 0, i32 2
  store i16 %330, ptr %331, align 2, !tbaa !40
  %332 = getelementptr inbounds i32, ptr %325, i64 2
  %333 = load i32, ptr %328, align 4, !tbaa !5
  %334 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %333) #25
  %335 = getelementptr inbounds %struct._PixelPacket, ptr %327, i64 0, i32 1
  store i16 %334, ptr %335, align 2, !tbaa !39
  %336 = load i32, ptr %332, align 4, !tbaa !5
  %337 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %336) #25
  store i16 %337, ptr %327, align 2, !tbaa !38
  %338 = getelementptr inbounds i32, ptr %325, i64 4
  %339 = getelementptr inbounds %struct._PixelPacket, ptr %327, i64 1
  %340 = add nuw nsw i64 %326, 1
  %341 = icmp eq i64 %340, %322
  br i1 %341, label %342, label %324, !llvm.loop !241

342:                                              ; preds = %324, %321
  %343 = phi ptr [ %314, %321 ], [ %338, %324 ]
  %344 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %424, label %308

346:                                              ; preds = %298
  %347 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %348 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %349 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %350 = load i64, ptr %349, align 8, !tbaa !35
  %351 = icmp sgt i64 %350, 0
  br i1 %351, label %352, label %424

352:                                              ; preds = %346
  %353 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %354 = icmp sgt i64 %347, 0
  br label %359

355:                                              ; preds = %420
  %356 = add nuw nsw i64 %360, 1
  %357 = load i64, ptr %349, align 8, !tbaa !35
  %358 = icmp slt i64 %356, %357
  br i1 %358, label %359, label %424, !llvm.loop !242

359:                                              ; preds = %352, %355
  %360 = phi i64 [ 0, %352 ], [ %356, %355 ]
  %361 = phi ptr [ %4, %352 ], [ %421, %355 ]
  %362 = load i64, ptr %348, align 8, !tbaa !36
  %363 = load i64, ptr %353, align 8, !tbaa !37
  %364 = add nsw i64 %363, %360
  %365 = load i64, ptr %1, align 8, !tbaa !34
  %366 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %362, i64 noundef %364, i64 noundef %365, i64 noundef 1, ptr noundef %5) #22
  %367 = icmp eq ptr %366, null
  br i1 %367, label %424, label %368

368:                                              ; preds = %359
  %369 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #22
  %370 = load i64, ptr %1, align 8, !tbaa !34
  %371 = icmp sgt i64 %370, 0
  br i1 %371, label %372, label %420

372:                                              ; preds = %368
  %373 = icmp eq ptr %369, null
  br label %374

374:                                              ; preds = %372, %415
  %375 = phi ptr [ %361, %372 ], [ %416, %415 ]
  %376 = phi i64 [ 0, %372 ], [ %418, %415 ]
  %377 = phi ptr [ %366, %372 ], [ %417, %415 ]
  br i1 %354, label %378, label %415

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 0, i32 2
  %380 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 0, i32 1
  %381 = getelementptr inbounds i16, ptr %369, i64 %376
  %382 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 0, i32 3
  br label %383

383:                                              ; preds = %378, %411
  %384 = phi i64 [ 0, %378 ], [ %413, %411 ]
  %385 = phi ptr [ %375, %378 ], [ %412, %411 ]
  %386 = getelementptr inbounds i32, ptr %3, i64 %384
  %387 = load i32, ptr %386, align 4, !tbaa !5
  switch i32 %387, label %411 [
    i32 14, label %388
    i32 6, label %388
    i32 9, label %391
    i32 12, label %391
    i32 3, label %394
    i32 19, label %394
    i32 1, label %397
    i32 13, label %401
    i32 2, label %404
    i32 11, label %408
  ]

388:                                              ; preds = %383, %383
  %389 = load i32, ptr %385, align 4, !tbaa !5
  %390 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %389) #25
  store i16 %390, ptr %379, align 2, !tbaa !40
  br label %411

391:                                              ; preds = %383, %383
  %392 = load i32, ptr %385, align 4, !tbaa !5
  %393 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %392) #25
  store i16 %393, ptr %380, align 2, !tbaa !39
  br label %411

394:                                              ; preds = %383, %383
  %395 = load i32, ptr %385, align 4, !tbaa !5
  %396 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %395) #25
  store i16 %396, ptr %377, align 2, !tbaa !38
  br label %411

397:                                              ; preds = %383
  %398 = load i32, ptr %385, align 4, !tbaa !5
  %399 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %398) #25
  %400 = xor i16 %399, -1
  store i16 %400, ptr %382, align 2, !tbaa !43
  br label %411

401:                                              ; preds = %383
  %402 = load i32, ptr %385, align 4, !tbaa !5
  %403 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %402) #25
  store i16 %403, ptr %382, align 2, !tbaa !43
  br label %411

404:                                              ; preds = %383
  br i1 %373, label %411, label %405

405:                                              ; preds = %404
  %406 = load i32, ptr %385, align 4, !tbaa !5
  %407 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %406) #25
  store i16 %407, ptr %381, align 2, !tbaa !56
  br label %411

408:                                              ; preds = %383
  %409 = load i32, ptr %385, align 4, !tbaa !5
  %410 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %409) #25
  store i16 %410, ptr %379, align 2, !tbaa !40
  store i16 %410, ptr %380, align 2, !tbaa !39
  store i16 %410, ptr %377, align 2, !tbaa !38
  br label %411

411:                                              ; preds = %383, %404, %405, %408, %401, %397, %394, %391, %388
  %412 = getelementptr inbounds i32, ptr %385, i64 1
  %413 = add nuw nsw i64 %384, 1
  %414 = icmp eq i64 %413, %347
  br i1 %414, label %415, label %383, !llvm.loop !243

415:                                              ; preds = %411, %374
  %416 = phi ptr [ %375, %374 ], [ %412, %411 ]
  %417 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 1
  %418 = add nuw nsw i64 %376, 1
  %419 = icmp eq i64 %418, %370
  br i1 %419, label %420, label %374, !llvm.loop !244

420:                                              ; preds = %415, %368
  %421 = phi ptr [ %361, %368 ], [ %416, %415 ]
  %422 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %355

424:                                              ; preds = %420, %359, %355, %342, %312, %308, %294, %259, %255, %241, %211, %207, %193, %169, %165, %151, %121, %117, %103, %68, %64, %50, %20, %16, %346, %301, %248, %200, %158, %110, %57, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportLongPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %424

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %20

16:                                               ; preds = %50
  %17 = add nuw nsw i64 %21, 1
  %18 = load i64, ptr %11, align 8, !tbaa !35
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %424, !llvm.loop !245

20:                                               ; preds = %14, %16
  %21 = phi i64 [ 0, %14 ], [ %17, %16 ]
  %22 = phi ptr [ %4, %14 ], [ %51, %16 ]
  %23 = load i64, ptr %10, align 8, !tbaa !36
  %24 = load i64, ptr %15, align 8, !tbaa !37
  %25 = add nsw i64 %24, %21
  %26 = load i64, ptr %1, align 8, !tbaa !34
  %27 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %23, i64 noundef %25, i64 noundef %26, i64 noundef 1, ptr noundef %5) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %424, label %29

29:                                               ; preds = %20
  %30 = load i64, ptr %1, align 8, !tbaa !34
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %43, %32 ], [ %22, %29 ]
  %34 = phi i64 [ %48, %32 ], [ 0, %29 ]
  %35 = phi ptr [ %47, %32 ], [ %27, %29 ]
  %36 = getelementptr inbounds i32, ptr %33, i64 1
  %37 = load i32, ptr %33, align 4, !tbaa !5
  %38 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %37) #25
  store i16 %38, ptr %35, align 2, !tbaa !38
  %39 = getelementptr inbounds i32, ptr %33, i64 2
  %40 = load i32, ptr %36, align 4, !tbaa !5
  %41 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %40) #25
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 1
  store i16 %41, ptr %42, align 2, !tbaa !39
  %43 = getelementptr inbounds i32, ptr %33, i64 3
  %44 = load i32, ptr %39, align 4, !tbaa !5
  %45 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %44) #25
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 2
  store i16 %45, ptr %46, align 2, !tbaa !40
  %47 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %48 = add nuw nsw i64 %34, 1
  %49 = icmp eq i64 %48, %30
  br i1 %49, label %50, label %32, !llvm.loop !246

50:                                               ; preds = %32, %29
  %51 = phi ptr [ %22, %29 ], [ %43, %32 ]
  %52 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %424, label %16

54:                                               ; preds = %6
  %55 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %107

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %59 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !35
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %424

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %68

64:                                               ; preds = %103
  %65 = add nuw nsw i64 %69, 1
  %66 = load i64, ptr %59, align 8, !tbaa !35
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %424, !llvm.loop !247

68:                                               ; preds = %62, %64
  %69 = phi i64 [ 0, %62 ], [ %65, %64 ]
  %70 = phi ptr [ %4, %62 ], [ %104, %64 ]
  %71 = load i64, ptr %58, align 8, !tbaa !36
  %72 = load i64, ptr %63, align 8, !tbaa !37
  %73 = add nsw i64 %72, %69
  %74 = load i64, ptr %1, align 8, !tbaa !34
  %75 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %71, i64 noundef %73, i64 noundef %74, i64 noundef 1, ptr noundef %5) #22
  %76 = icmp eq ptr %75, null
  br i1 %76, label %424, label %77

77:                                               ; preds = %68
  %78 = load i64, ptr %1, align 8, !tbaa !34
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %95, %80 ], [ %70, %77 ]
  %82 = phi i64 [ %101, %80 ], [ 0, %77 ]
  %83 = phi ptr [ %100, %80 ], [ %75, %77 ]
  %84 = getelementptr inbounds i32, ptr %81, i64 1
  %85 = load i32, ptr %81, align 4, !tbaa !5
  %86 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %85) #25
  store i16 %86, ptr %83, align 2, !tbaa !38
  %87 = getelementptr inbounds i32, ptr %81, i64 2
  %88 = load i32, ptr %84, align 4, !tbaa !5
  %89 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %88) #25
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 1
  store i16 %89, ptr %90, align 2, !tbaa !39
  %91 = getelementptr inbounds i32, ptr %81, i64 3
  %92 = load i32, ptr %87, align 4, !tbaa !5
  %93 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %92) #25
  %94 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 2
  store i16 %93, ptr %94, align 2, !tbaa !40
  %95 = getelementptr inbounds i32, ptr %81, i64 4
  %96 = load i32, ptr %91, align 4, !tbaa !5
  %97 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %96) #25
  %98 = xor i16 %97, -1
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 0, i32 3
  store i16 %98, ptr %99, align 2, !tbaa !43
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %83, i64 1
  %101 = add nuw nsw i64 %82, 1
  %102 = icmp eq i64 %101, %78
  br i1 %102, label %103, label %80, !llvm.loop !248

103:                                              ; preds = %80, %77
  %104 = phi ptr [ %70, %77 ], [ %95, %80 ]
  %105 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %424, label %64

107:                                              ; preds = %54
  %108 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %155

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %112 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !35
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %424

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %121

117:                                              ; preds = %151
  %118 = add nuw nsw i64 %122, 1
  %119 = load i64, ptr %112, align 8, !tbaa !35
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %424, !llvm.loop !249

121:                                              ; preds = %115, %117
  %122 = phi i64 [ 0, %115 ], [ %118, %117 ]
  %123 = phi ptr [ %4, %115 ], [ %152, %117 ]
  %124 = load i64, ptr %111, align 8, !tbaa !36
  %125 = load i64, ptr %116, align 8, !tbaa !37
  %126 = add nsw i64 %125, %122
  %127 = load i64, ptr %1, align 8, !tbaa !34
  %128 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %124, i64 noundef %126, i64 noundef %127, i64 noundef 1, ptr noundef %5) #22
  %129 = icmp eq ptr %128, null
  br i1 %129, label %424, label %130

130:                                              ; preds = %121
  %131 = load i64, ptr %1, align 8, !tbaa !34
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %130, %133
  %134 = phi ptr [ %147, %133 ], [ %123, %130 ]
  %135 = phi i64 [ %149, %133 ], [ 0, %130 ]
  %136 = phi ptr [ %148, %133 ], [ %128, %130 ]
  %137 = getelementptr inbounds i32, ptr %134, i64 1
  %138 = load i32, ptr %134, align 4, !tbaa !5
  %139 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %138) #25
  store i16 %139, ptr %136, align 2, !tbaa !38
  %140 = getelementptr inbounds i32, ptr %134, i64 2
  %141 = load i32, ptr %137, align 4, !tbaa !5
  %142 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %141) #25
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 1
  store i16 %142, ptr %143, align 2, !tbaa !39
  %144 = load i32, ptr %140, align 4, !tbaa !5
  %145 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %144) #25
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 0, i32 2
  store i16 %145, ptr %146, align 2, !tbaa !40
  %147 = getelementptr inbounds i32, ptr %134, i64 4
  %148 = getelementptr inbounds %struct._PixelPacket, ptr %136, i64 1
  %149 = add nuw nsw i64 %135, 1
  %150 = icmp eq i64 %149, %131
  br i1 %150, label %151, label %133, !llvm.loop !250

151:                                              ; preds = %133, %130
  %152 = phi ptr [ %123, %130 ], [ %147, %133 ]
  %153 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %424, label %117

155:                                              ; preds = %107
  %156 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %197

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %160 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !35
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %424

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %169

165:                                              ; preds = %193
  %166 = add nuw nsw i64 %170, 1
  %167 = load i64, ptr %160, align 8, !tbaa !35
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %424, !llvm.loop !251

169:                                              ; preds = %163, %165
  %170 = phi i64 [ 0, %163 ], [ %166, %165 ]
  %171 = phi ptr [ %4, %163 ], [ %194, %165 ]
  %172 = load i64, ptr %159, align 8, !tbaa !36
  %173 = load i64, ptr %164, align 8, !tbaa !37
  %174 = add nsw i64 %173, %170
  %175 = load i64, ptr %1, align 8, !tbaa !34
  %176 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %172, i64 noundef %174, i64 noundef %175, i64 noundef 1, ptr noundef %5) #22
  %177 = icmp eq ptr %176, null
  br i1 %177, label %424, label %178

178:                                              ; preds = %169
  %179 = load i64, ptr %1, align 8, !tbaa !34
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178, %181
  %182 = phi ptr [ %185, %181 ], [ %171, %178 ]
  %183 = phi i64 [ %191, %181 ], [ 0, %178 ]
  %184 = phi ptr [ %190, %181 ], [ %176, %178 ]
  %185 = getelementptr inbounds i32, ptr %182, i64 1
  %186 = load i32, ptr %182, align 4, !tbaa !5
  %187 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %186) #25
  %188 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 0, i32 2
  store i16 %187, ptr %188, align 2, !tbaa !40
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 0, i32 1
  store i16 %187, ptr %189, align 2, !tbaa !39
  store i16 %187, ptr %184, align 2, !tbaa !38
  %190 = getelementptr inbounds %struct._PixelPacket, ptr %184, i64 1
  %191 = add nuw nsw i64 %183, 1
  %192 = icmp eq i64 %191, %179
  br i1 %192, label %193, label %181, !llvm.loop !252

193:                                              ; preds = %181, %178
  %194 = phi ptr [ %171, %178 ], [ %185, %181 ]
  %195 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %424, label %165

197:                                              ; preds = %155
  %198 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %245

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %202 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !35
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %424

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %211

207:                                              ; preds = %241
  %208 = add nuw nsw i64 %212, 1
  %209 = load i64, ptr %202, align 8, !tbaa !35
  %210 = icmp slt i64 %208, %209
  br i1 %210, label %211, label %424, !llvm.loop !253

211:                                              ; preds = %205, %207
  %212 = phi i64 [ 0, %205 ], [ %208, %207 ]
  %213 = phi ptr [ %4, %205 ], [ %242, %207 ]
  %214 = load i64, ptr %201, align 8, !tbaa !36
  %215 = load i64, ptr %206, align 8, !tbaa !37
  %216 = add nsw i64 %215, %212
  %217 = load i64, ptr %1, align 8, !tbaa !34
  %218 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %214, i64 noundef %216, i64 noundef %217, i64 noundef 1, ptr noundef %5) #22
  %219 = icmp eq ptr %218, null
  br i1 %219, label %424, label %220

220:                                              ; preds = %211
  %221 = load i64, ptr %1, align 8, !tbaa !34
  %222 = icmp sgt i64 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %220, %223
  %224 = phi ptr [ %235, %223 ], [ %213, %220 ]
  %225 = phi i64 [ %239, %223 ], [ 0, %220 ]
  %226 = phi ptr [ %238, %223 ], [ %218, %220 ]
  %227 = getelementptr inbounds i32, ptr %224, i64 1
  %228 = load i32, ptr %224, align 4, !tbaa !5
  %229 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %228) #25
  %230 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 0, i32 2
  store i16 %229, ptr %230, align 2, !tbaa !40
  %231 = getelementptr inbounds i32, ptr %224, i64 2
  %232 = load i32, ptr %227, align 4, !tbaa !5
  %233 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %232) #25
  %234 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 0, i32 1
  store i16 %233, ptr %234, align 2, !tbaa !39
  %235 = getelementptr inbounds i32, ptr %224, i64 3
  %236 = load i32, ptr %231, align 4, !tbaa !5
  %237 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %236) #25
  store i16 %237, ptr %226, align 2, !tbaa !38
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %226, i64 1
  %239 = add nuw nsw i64 %225, 1
  %240 = icmp eq i64 %239, %221
  br i1 %240, label %241, label %223, !llvm.loop !254

241:                                              ; preds = %223, %220
  %242 = phi ptr [ %213, %220 ], [ %235, %223 ]
  %243 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %424, label %207

245:                                              ; preds = %197
  %246 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %298

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %250 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !35
  %252 = icmp sgt i64 %251, 0
  br i1 %252, label %253, label %424

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %259

255:                                              ; preds = %294
  %256 = add nuw nsw i64 %260, 1
  %257 = load i64, ptr %250, align 8, !tbaa !35
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %259, label %424, !llvm.loop !255

259:                                              ; preds = %253, %255
  %260 = phi i64 [ 0, %253 ], [ %256, %255 ]
  %261 = phi ptr [ %4, %253 ], [ %295, %255 ]
  %262 = load i64, ptr %249, align 8, !tbaa !36
  %263 = load i64, ptr %254, align 8, !tbaa !37
  %264 = add nsw i64 %263, %260
  %265 = load i64, ptr %1, align 8, !tbaa !34
  %266 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %262, i64 noundef %264, i64 noundef %265, i64 noundef 1, ptr noundef %5) #22
  %267 = icmp eq ptr %266, null
  br i1 %267, label %424, label %268

268:                                              ; preds = %259
  %269 = load i64, ptr %1, align 8, !tbaa !34
  %270 = icmp sgt i64 %269, 0
  br i1 %270, label %271, label %294

271:                                              ; preds = %268, %271
  %272 = phi ptr [ %286, %271 ], [ %261, %268 ]
  %273 = phi i64 [ %292, %271 ], [ 0, %268 ]
  %274 = phi ptr [ %291, %271 ], [ %266, %268 ]
  %275 = getelementptr inbounds i32, ptr %272, i64 1
  %276 = load i32, ptr %272, align 4, !tbaa !5
  %277 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %276) #25
  %278 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 0, i32 2
  store i16 %277, ptr %278, align 2, !tbaa !40
  %279 = getelementptr inbounds i32, ptr %272, i64 2
  %280 = load i32, ptr %275, align 4, !tbaa !5
  %281 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %280) #25
  %282 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 0, i32 1
  store i16 %281, ptr %282, align 2, !tbaa !39
  %283 = getelementptr inbounds i32, ptr %272, i64 3
  %284 = load i32, ptr %279, align 4, !tbaa !5
  %285 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %284) #25
  store i16 %285, ptr %274, align 2, !tbaa !38
  %286 = getelementptr inbounds i32, ptr %272, i64 4
  %287 = load i32, ptr %283, align 4, !tbaa !5
  %288 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %287) #25
  %289 = xor i16 %288, -1
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 0, i32 3
  store i16 %289, ptr %290, align 2, !tbaa !43
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %274, i64 1
  %292 = add nuw nsw i64 %273, 1
  %293 = icmp eq i64 %292, %269
  br i1 %293, label %294, label %271, !llvm.loop !256

294:                                              ; preds = %271, %268
  %295 = phi ptr [ %261, %268 ], [ %286, %271 ]
  %296 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %424, label %255

298:                                              ; preds = %245
  %299 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %346

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %303 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %304 = load i64, ptr %303, align 8, !tbaa !35
  %305 = icmp sgt i64 %304, 0
  br i1 %305, label %306, label %424

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %312

308:                                              ; preds = %342
  %309 = add nuw nsw i64 %313, 1
  %310 = load i64, ptr %303, align 8, !tbaa !35
  %311 = icmp slt i64 %309, %310
  br i1 %311, label %312, label %424, !llvm.loop !257

312:                                              ; preds = %306, %308
  %313 = phi i64 [ 0, %306 ], [ %309, %308 ]
  %314 = phi ptr [ %4, %306 ], [ %343, %308 ]
  %315 = load i64, ptr %302, align 8, !tbaa !36
  %316 = load i64, ptr %307, align 8, !tbaa !37
  %317 = add nsw i64 %316, %313
  %318 = load i64, ptr %1, align 8, !tbaa !34
  %319 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %315, i64 noundef %317, i64 noundef %318, i64 noundef 1, ptr noundef %5) #22
  %320 = icmp eq ptr %319, null
  br i1 %320, label %424, label %321

321:                                              ; preds = %312
  %322 = load i64, ptr %1, align 8, !tbaa !34
  %323 = icmp sgt i64 %322, 0
  br i1 %323, label %324, label %342

324:                                              ; preds = %321, %324
  %325 = phi ptr [ %338, %324 ], [ %314, %321 ]
  %326 = phi i64 [ %340, %324 ], [ 0, %321 ]
  %327 = phi ptr [ %339, %324 ], [ %319, %321 ]
  %328 = getelementptr inbounds i32, ptr %325, i64 1
  %329 = load i32, ptr %325, align 4, !tbaa !5
  %330 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %329) #25
  %331 = getelementptr inbounds %struct._PixelPacket, ptr %327, i64 0, i32 2
  store i16 %330, ptr %331, align 2, !tbaa !40
  %332 = getelementptr inbounds i32, ptr %325, i64 2
  %333 = load i32, ptr %328, align 4, !tbaa !5
  %334 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %333) #25
  %335 = getelementptr inbounds %struct._PixelPacket, ptr %327, i64 0, i32 1
  store i16 %334, ptr %335, align 2, !tbaa !39
  %336 = load i32, ptr %332, align 4, !tbaa !5
  %337 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %336) #25
  store i16 %337, ptr %327, align 2, !tbaa !38
  %338 = getelementptr inbounds i32, ptr %325, i64 4
  %339 = getelementptr inbounds %struct._PixelPacket, ptr %327, i64 1
  %340 = add nuw nsw i64 %326, 1
  %341 = icmp eq i64 %340, %322
  br i1 %341, label %342, label %324, !llvm.loop !258

342:                                              ; preds = %324, %321
  %343 = phi ptr [ %314, %321 ], [ %338, %324 ]
  %344 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %424, label %308

346:                                              ; preds = %298
  %347 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %348 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %349 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %350 = load i64, ptr %349, align 8, !tbaa !35
  %351 = icmp sgt i64 %350, 0
  br i1 %351, label %352, label %424

352:                                              ; preds = %346
  %353 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %354 = icmp sgt i64 %347, 0
  br label %359

355:                                              ; preds = %420
  %356 = add nuw nsw i64 %360, 1
  %357 = load i64, ptr %349, align 8, !tbaa !35
  %358 = icmp slt i64 %356, %357
  br i1 %358, label %359, label %424, !llvm.loop !259

359:                                              ; preds = %352, %355
  %360 = phi i64 [ 0, %352 ], [ %356, %355 ]
  %361 = phi ptr [ %4, %352 ], [ %421, %355 ]
  %362 = load i64, ptr %348, align 8, !tbaa !36
  %363 = load i64, ptr %353, align 8, !tbaa !37
  %364 = add nsw i64 %363, %360
  %365 = load i64, ptr %1, align 8, !tbaa !34
  %366 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %362, i64 noundef %364, i64 noundef %365, i64 noundef 1, ptr noundef %5) #22
  %367 = icmp eq ptr %366, null
  br i1 %367, label %424, label %368

368:                                              ; preds = %359
  %369 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #22
  %370 = load i64, ptr %1, align 8, !tbaa !34
  %371 = icmp sgt i64 %370, 0
  br i1 %371, label %372, label %420

372:                                              ; preds = %368
  %373 = icmp eq ptr %369, null
  br label %374

374:                                              ; preds = %372, %415
  %375 = phi ptr [ %361, %372 ], [ %416, %415 ]
  %376 = phi i64 [ 0, %372 ], [ %418, %415 ]
  %377 = phi ptr [ %366, %372 ], [ %417, %415 ]
  br i1 %354, label %378, label %415

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 0, i32 2
  %380 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 0, i32 1
  %381 = getelementptr inbounds i16, ptr %369, i64 %376
  %382 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 0, i32 3
  br label %383

383:                                              ; preds = %378, %411
  %384 = phi i64 [ 0, %378 ], [ %413, %411 ]
  %385 = phi ptr [ %375, %378 ], [ %412, %411 ]
  %386 = getelementptr inbounds i32, ptr %3, i64 %384
  %387 = load i32, ptr %386, align 4, !tbaa !5
  switch i32 %387, label %411 [
    i32 14, label %388
    i32 6, label %388
    i32 9, label %391
    i32 12, label %391
    i32 3, label %394
    i32 19, label %394
    i32 1, label %397
    i32 13, label %401
    i32 2, label %404
    i32 11, label %408
  ]

388:                                              ; preds = %383, %383
  %389 = load i32, ptr %385, align 4, !tbaa !5
  %390 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %389) #25
  store i16 %390, ptr %379, align 2, !tbaa !40
  br label %411

391:                                              ; preds = %383, %383
  %392 = load i32, ptr %385, align 4, !tbaa !5
  %393 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %392) #25
  store i16 %393, ptr %380, align 2, !tbaa !39
  br label %411

394:                                              ; preds = %383, %383
  %395 = load i32, ptr %385, align 4, !tbaa !5
  %396 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %395) #25
  store i16 %396, ptr %377, align 2, !tbaa !38
  br label %411

397:                                              ; preds = %383
  %398 = load i32, ptr %385, align 4, !tbaa !5
  %399 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %398) #25
  %400 = xor i16 %399, -1
  store i16 %400, ptr %382, align 2, !tbaa !43
  br label %411

401:                                              ; preds = %383
  %402 = load i32, ptr %385, align 4, !tbaa !5
  %403 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %402) #25
  store i16 %403, ptr %382, align 2, !tbaa !43
  br label %411

404:                                              ; preds = %383
  br i1 %373, label %411, label %405

405:                                              ; preds = %404
  %406 = load i32, ptr %385, align 4, !tbaa !5
  %407 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %406) #25
  store i16 %407, ptr %381, align 2, !tbaa !56
  br label %411

408:                                              ; preds = %383
  %409 = load i32, ptr %385, align 4, !tbaa !5
  %410 = tail call fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %409) #25
  store i16 %410, ptr %379, align 2, !tbaa !40
  store i16 %410, ptr %380, align 2, !tbaa !39
  store i16 %410, ptr %377, align 2, !tbaa !38
  br label %411

411:                                              ; preds = %383, %404, %405, %408, %401, %397, %394, %391, %388
  %412 = getelementptr inbounds i32, ptr %385, i64 1
  %413 = add nuw nsw i64 %384, 1
  %414 = icmp eq i64 %413, %347
  br i1 %414, label %415, label %383, !llvm.loop !260

415:                                              ; preds = %411, %374
  %416 = phi ptr [ %375, %374 ], [ %412, %411 ]
  %417 = getelementptr inbounds %struct._PixelPacket, ptr %377, i64 1
  %418 = add nuw nsw i64 %376, 1
  %419 = icmp eq i64 %418, %370
  br i1 %419, label %420, label %374, !llvm.loop !261

420:                                              ; preds = %415, %368
  %421 = phi ptr [ %361, %368 ], [ %416, %415 ]
  %422 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %355

424:                                              ; preds = %420, %359, %355, %342, %312, %308, %294, %259, %255, %241, %211, %207, %193, %169, %165, %151, %121, %117, %103, %68, %64, %50, %20, %16, %346, %301, %248, %200, %158, %110, %57, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportQuantumPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %396

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %20

16:                                               ; preds = %47
  %17 = add nuw nsw i64 %21, 1
  %18 = load i64, ptr %11, align 8, !tbaa !35
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %396, !llvm.loop !262

20:                                               ; preds = %14, %16
  %21 = phi i64 [ 0, %14 ], [ %17, %16 ]
  %22 = phi ptr [ %4, %14 ], [ %48, %16 ]
  %23 = load i64, ptr %10, align 8, !tbaa !36
  %24 = load i64, ptr %15, align 8, !tbaa !37
  %25 = add nsw i64 %24, %21
  %26 = load i64, ptr %1, align 8, !tbaa !34
  %27 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %23, i64 noundef %25, i64 noundef %26, i64 noundef 1, ptr noundef %5) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %396, label %29

29:                                               ; preds = %20
  %30 = load i64, ptr %1, align 8, !tbaa !34
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %41, %32 ], [ %22, %29 ]
  %34 = phi i64 [ %45, %32 ], [ 0, %29 ]
  %35 = phi ptr [ %44, %32 ], [ %27, %29 ]
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  %37 = load i16, ptr %33, align 2, !tbaa !56
  store i16 %37, ptr %35, align 2, !tbaa !38
  %38 = getelementptr inbounds i16, ptr %33, i64 2
  %39 = load i16, ptr %36, align 2, !tbaa !56
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 1
  store i16 %39, ptr %40, align 2, !tbaa !39
  %41 = getelementptr inbounds i16, ptr %33, i64 3
  %42 = load i16, ptr %38, align 2, !tbaa !56
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 2
  store i16 %42, ptr %43, align 2, !tbaa !40
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %45 = add nuw nsw i64 %34, 1
  %46 = icmp eq i64 %45, %30
  br i1 %46, label %47, label %32, !llvm.loop !263

47:                                               ; preds = %32, %29
  %48 = phi ptr [ %22, %29 ], [ %41, %32 ]
  %49 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %396, label %16

51:                                               ; preds = %6
  %52 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %56 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !35
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %396

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %65

61:                                               ; preds = %96
  %62 = add nuw nsw i64 %66, 1
  %63 = load i64, ptr %56, align 8, !tbaa !35
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %396, !llvm.loop !264

65:                                               ; preds = %59, %61
  %66 = phi i64 [ 0, %59 ], [ %62, %61 ]
  %67 = phi ptr [ %4, %59 ], [ %97, %61 ]
  %68 = load i64, ptr %55, align 8, !tbaa !36
  %69 = load i64, ptr %60, align 8, !tbaa !37
  %70 = add nsw i64 %69, %66
  %71 = load i64, ptr %1, align 8, !tbaa !34
  %72 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %68, i64 noundef %70, i64 noundef %71, i64 noundef 1, ptr noundef %5) #22
  %73 = icmp eq ptr %72, null
  br i1 %73, label %396, label %74

74:                                               ; preds = %65
  %75 = load i64, ptr %1, align 8, !tbaa !34
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74, %77
  %78 = phi ptr [ %89, %77 ], [ %67, %74 ]
  %79 = phi i64 [ %94, %77 ], [ 0, %74 ]
  %80 = phi ptr [ %93, %77 ], [ %72, %74 ]
  %81 = getelementptr inbounds i16, ptr %78, i64 1
  %82 = load i16, ptr %78, align 2, !tbaa !56
  store i16 %82, ptr %80, align 2, !tbaa !38
  %83 = getelementptr inbounds i16, ptr %78, i64 2
  %84 = load i16, ptr %81, align 2, !tbaa !56
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 1
  store i16 %84, ptr %85, align 2, !tbaa !39
  %86 = getelementptr inbounds i16, ptr %78, i64 3
  %87 = load i16, ptr %83, align 2, !tbaa !56
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 2
  store i16 %87, ptr %88, align 2, !tbaa !40
  %89 = getelementptr inbounds i16, ptr %78, i64 4
  %90 = load i16, ptr %86, align 2, !tbaa !56
  %91 = xor i16 %90, -1
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  store i16 %91, ptr %92, align 2, !tbaa !43
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 1
  %94 = add nuw nsw i64 %79, 1
  %95 = icmp eq i64 %94, %75
  br i1 %95, label %96, label %77, !llvm.loop !265

96:                                               ; preds = %77, %74
  %97 = phi ptr [ %67, %74 ], [ %89, %77 ]
  %98 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %396, label %61

100:                                              ; preds = %51
  %101 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %145

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %105 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !35
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %396

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %114

110:                                              ; preds = %141
  %111 = add nuw nsw i64 %115, 1
  %112 = load i64, ptr %105, align 8, !tbaa !35
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %396, !llvm.loop !266

114:                                              ; preds = %108, %110
  %115 = phi i64 [ 0, %108 ], [ %111, %110 ]
  %116 = phi ptr [ %4, %108 ], [ %142, %110 ]
  %117 = load i64, ptr %104, align 8, !tbaa !36
  %118 = load i64, ptr %109, align 8, !tbaa !37
  %119 = add nsw i64 %118, %115
  %120 = load i64, ptr %1, align 8, !tbaa !34
  %121 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %117, i64 noundef %119, i64 noundef %120, i64 noundef 1, ptr noundef %5) #22
  %122 = icmp eq ptr %121, null
  br i1 %122, label %396, label %123

123:                                              ; preds = %114
  %124 = load i64, ptr %1, align 8, !tbaa !34
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %123, %126
  %127 = phi ptr [ %137, %126 ], [ %116, %123 ]
  %128 = phi i64 [ %139, %126 ], [ 0, %123 ]
  %129 = phi ptr [ %138, %126 ], [ %121, %123 ]
  %130 = getelementptr inbounds i16, ptr %127, i64 1
  %131 = load i16, ptr %127, align 2, !tbaa !56
  store i16 %131, ptr %129, align 2, !tbaa !38
  %132 = getelementptr inbounds i16, ptr %127, i64 2
  %133 = load i16, ptr %130, align 2, !tbaa !56
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 1
  store i16 %133, ptr %134, align 2, !tbaa !39
  %135 = load i16, ptr %132, align 2, !tbaa !56
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 2
  store i16 %135, ptr %136, align 2, !tbaa !40
  %137 = getelementptr inbounds i16, ptr %127, i64 4
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %139 = add nuw nsw i64 %128, 1
  %140 = icmp eq i64 %139, %124
  br i1 %140, label %141, label %126, !llvm.loop !267

141:                                              ; preds = %126, %123
  %142 = phi ptr [ %116, %123 ], [ %137, %126 ]
  %143 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %396, label %110

145:                                              ; preds = %100
  %146 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %186

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %150 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !35
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %396

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %159

155:                                              ; preds = %182
  %156 = add nuw nsw i64 %160, 1
  %157 = load i64, ptr %150, align 8, !tbaa !35
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %396, !llvm.loop !268

159:                                              ; preds = %153, %155
  %160 = phi i64 [ 0, %153 ], [ %156, %155 ]
  %161 = phi ptr [ %4, %153 ], [ %183, %155 ]
  %162 = load i64, ptr %149, align 8, !tbaa !36
  %163 = load i64, ptr %154, align 8, !tbaa !37
  %164 = add nsw i64 %163, %160
  %165 = load i64, ptr %1, align 8, !tbaa !34
  %166 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %162, i64 noundef %164, i64 noundef %165, i64 noundef 1, ptr noundef %5) #22
  %167 = icmp eq ptr %166, null
  br i1 %167, label %396, label %168

168:                                              ; preds = %159
  %169 = load i64, ptr %1, align 8, !tbaa !34
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %168, %171
  %172 = phi ptr [ %175, %171 ], [ %161, %168 ]
  %173 = phi i64 [ %180, %171 ], [ 0, %168 ]
  %174 = phi ptr [ %179, %171 ], [ %166, %168 ]
  %175 = getelementptr inbounds i16, ptr %172, i64 1
  %176 = load i16, ptr %172, align 2, !tbaa !56
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 0, i32 2
  store i16 %176, ptr %177, align 2, !tbaa !40
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 0, i32 1
  store i16 %176, ptr %178, align 2, !tbaa !39
  store i16 %176, ptr %174, align 2, !tbaa !38
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 1
  %180 = add nuw nsw i64 %173, 1
  %181 = icmp eq i64 %180, %169
  br i1 %181, label %182, label %171, !llvm.loop !269

182:                                              ; preds = %171, %168
  %183 = phi ptr [ %161, %168 ], [ %175, %171 ]
  %184 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %396, label %155

186:                                              ; preds = %145
  %187 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %231

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %191 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %192 = load i64, ptr %191, align 8, !tbaa !35
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %396

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %200

196:                                              ; preds = %227
  %197 = add nuw nsw i64 %201, 1
  %198 = load i64, ptr %191, align 8, !tbaa !35
  %199 = icmp slt i64 %197, %198
  br i1 %199, label %200, label %396, !llvm.loop !270

200:                                              ; preds = %194, %196
  %201 = phi i64 [ 0, %194 ], [ %197, %196 ]
  %202 = phi ptr [ %4, %194 ], [ %228, %196 ]
  %203 = load i64, ptr %190, align 8, !tbaa !36
  %204 = load i64, ptr %195, align 8, !tbaa !37
  %205 = add nsw i64 %204, %201
  %206 = load i64, ptr %1, align 8, !tbaa !34
  %207 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %203, i64 noundef %205, i64 noundef %206, i64 noundef 1, ptr noundef %5) #22
  %208 = icmp eq ptr %207, null
  br i1 %208, label %396, label %209

209:                                              ; preds = %200
  %210 = load i64, ptr %1, align 8, !tbaa !34
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %209, %212
  %213 = phi ptr [ %222, %212 ], [ %202, %209 ]
  %214 = phi i64 [ %225, %212 ], [ 0, %209 ]
  %215 = phi ptr [ %224, %212 ], [ %207, %209 ]
  %216 = getelementptr inbounds i16, ptr %213, i64 1
  %217 = load i16, ptr %213, align 2, !tbaa !56
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 0, i32 2
  store i16 %217, ptr %218, align 2, !tbaa !40
  %219 = getelementptr inbounds i16, ptr %213, i64 2
  %220 = load i16, ptr %216, align 2, !tbaa !56
  %221 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 0, i32 1
  store i16 %220, ptr %221, align 2, !tbaa !39
  %222 = getelementptr inbounds i16, ptr %213, i64 3
  %223 = load i16, ptr %219, align 2, !tbaa !56
  store i16 %223, ptr %215, align 2, !tbaa !38
  %224 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 1
  %225 = add nuw nsw i64 %214, 1
  %226 = icmp eq i64 %225, %210
  br i1 %226, label %227, label %212, !llvm.loop !271

227:                                              ; preds = %212, %209
  %228 = phi ptr [ %202, %209 ], [ %222, %212 ]
  %229 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %396, label %196

231:                                              ; preds = %186
  %232 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %280

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %236 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %237 = load i64, ptr %236, align 8, !tbaa !35
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %396

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %245

241:                                              ; preds = %276
  %242 = add nuw nsw i64 %246, 1
  %243 = load i64, ptr %236, align 8, !tbaa !35
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %245, label %396, !llvm.loop !272

245:                                              ; preds = %239, %241
  %246 = phi i64 [ 0, %239 ], [ %242, %241 ]
  %247 = phi ptr [ %4, %239 ], [ %277, %241 ]
  %248 = load i64, ptr %235, align 8, !tbaa !36
  %249 = load i64, ptr %240, align 8, !tbaa !37
  %250 = add nsw i64 %249, %246
  %251 = load i64, ptr %1, align 8, !tbaa !34
  %252 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %248, i64 noundef %250, i64 noundef %251, i64 noundef 1, ptr noundef %5) #22
  %253 = icmp eq ptr %252, null
  br i1 %253, label %396, label %254

254:                                              ; preds = %245
  %255 = load i64, ptr %1, align 8, !tbaa !34
  %256 = icmp sgt i64 %255, 0
  br i1 %256, label %257, label %276

257:                                              ; preds = %254, %257
  %258 = phi ptr [ %269, %257 ], [ %247, %254 ]
  %259 = phi i64 [ %274, %257 ], [ 0, %254 ]
  %260 = phi ptr [ %273, %257 ], [ %252, %254 ]
  %261 = getelementptr inbounds i16, ptr %258, i64 1
  %262 = load i16, ptr %258, align 2, !tbaa !56
  %263 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 0, i32 2
  store i16 %262, ptr %263, align 2, !tbaa !40
  %264 = getelementptr inbounds i16, ptr %258, i64 2
  %265 = load i16, ptr %261, align 2, !tbaa !56
  %266 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 0, i32 1
  store i16 %265, ptr %266, align 2, !tbaa !39
  %267 = getelementptr inbounds i16, ptr %258, i64 3
  %268 = load i16, ptr %264, align 2, !tbaa !56
  store i16 %268, ptr %260, align 2, !tbaa !38
  %269 = getelementptr inbounds i16, ptr %258, i64 4
  %270 = load i16, ptr %267, align 2, !tbaa !56
  %271 = xor i16 %270, -1
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 0, i32 3
  store i16 %271, ptr %272, align 2, !tbaa !43
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 1
  %274 = add nuw nsw i64 %259, 1
  %275 = icmp eq i64 %274, %255
  br i1 %275, label %276, label %257, !llvm.loop !273

276:                                              ; preds = %257, %254
  %277 = phi ptr [ %247, %254 ], [ %269, %257 ]
  %278 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %396, label %241

280:                                              ; preds = %231
  %281 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %325

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %285 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %286 = load i64, ptr %285, align 8, !tbaa !35
  %287 = icmp sgt i64 %286, 0
  br i1 %287, label %288, label %396

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %294

290:                                              ; preds = %321
  %291 = add nuw nsw i64 %295, 1
  %292 = load i64, ptr %285, align 8, !tbaa !35
  %293 = icmp slt i64 %291, %292
  br i1 %293, label %294, label %396, !llvm.loop !274

294:                                              ; preds = %288, %290
  %295 = phi i64 [ 0, %288 ], [ %291, %290 ]
  %296 = phi ptr [ %4, %288 ], [ %322, %290 ]
  %297 = load i64, ptr %284, align 8, !tbaa !36
  %298 = load i64, ptr %289, align 8, !tbaa !37
  %299 = add nsw i64 %298, %295
  %300 = load i64, ptr %1, align 8, !tbaa !34
  %301 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %297, i64 noundef %299, i64 noundef %300, i64 noundef 1, ptr noundef %5) #22
  %302 = icmp eq ptr %301, null
  br i1 %302, label %396, label %303

303:                                              ; preds = %294
  %304 = load i64, ptr %1, align 8, !tbaa !34
  %305 = icmp sgt i64 %304, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %303, %306
  %307 = phi ptr [ %317, %306 ], [ %296, %303 ]
  %308 = phi i64 [ %319, %306 ], [ 0, %303 ]
  %309 = phi ptr [ %318, %306 ], [ %301, %303 ]
  %310 = getelementptr inbounds i16, ptr %307, i64 1
  %311 = load i16, ptr %307, align 2, !tbaa !56
  %312 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 0, i32 2
  store i16 %311, ptr %312, align 2, !tbaa !40
  %313 = getelementptr inbounds i16, ptr %307, i64 2
  %314 = load i16, ptr %310, align 2, !tbaa !56
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 0, i32 1
  store i16 %314, ptr %315, align 2, !tbaa !39
  %316 = load i16, ptr %313, align 2, !tbaa !56
  store i16 %316, ptr %309, align 2, !tbaa !38
  %317 = getelementptr inbounds i16, ptr %307, i64 4
  %318 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 1
  %319 = add nuw nsw i64 %308, 1
  %320 = icmp eq i64 %319, %304
  br i1 %320, label %321, label %306, !llvm.loop !275

321:                                              ; preds = %306, %303
  %322 = phi ptr [ %296, %303 ], [ %317, %306 ]
  %323 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %396, label %290

325:                                              ; preds = %280
  %326 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %327 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %328 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %329 = load i64, ptr %328, align 8, !tbaa !35
  %330 = icmp sgt i64 %329, 0
  br i1 %330, label %331, label %396

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %333 = icmp sgt i64 %326, 0
  br label %338

334:                                              ; preds = %392
  %335 = add nuw nsw i64 %339, 1
  %336 = load i64, ptr %328, align 8, !tbaa !35
  %337 = icmp slt i64 %335, %336
  br i1 %337, label %338, label %396, !llvm.loop !276

338:                                              ; preds = %331, %334
  %339 = phi i64 [ 0, %331 ], [ %335, %334 ]
  %340 = phi ptr [ %4, %331 ], [ %393, %334 ]
  %341 = load i64, ptr %327, align 8, !tbaa !36
  %342 = load i64, ptr %332, align 8, !tbaa !37
  %343 = add nsw i64 %342, %339
  %344 = load i64, ptr %1, align 8, !tbaa !34
  %345 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %341, i64 noundef %343, i64 noundef %344, i64 noundef 1, ptr noundef %5) #22
  %346 = icmp eq ptr %345, null
  br i1 %346, label %396, label %347

347:                                              ; preds = %338
  %348 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #22
  %349 = load i64, ptr %1, align 8, !tbaa !34
  %350 = icmp sgt i64 %349, 0
  br i1 %350, label %351, label %392

351:                                              ; preds = %347
  %352 = icmp eq ptr %348, null
  br label %353

353:                                              ; preds = %351, %387
  %354 = phi ptr [ %340, %351 ], [ %388, %387 ]
  %355 = phi i64 [ 0, %351 ], [ %390, %387 ]
  %356 = phi ptr [ %345, %351 ], [ %389, %387 ]
  br i1 %333, label %357, label %387

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct._PixelPacket, ptr %356, i64 0, i32 2
  %359 = getelementptr inbounds %struct._PixelPacket, ptr %356, i64 0, i32 1
  %360 = getelementptr inbounds i16, ptr %348, i64 %355
  %361 = getelementptr inbounds %struct._PixelPacket, ptr %356, i64 0, i32 3
  br label %362

362:                                              ; preds = %357, %383
  %363 = phi i64 [ 0, %357 ], [ %385, %383 ]
  %364 = phi ptr [ %354, %357 ], [ %384, %383 ]
  %365 = getelementptr inbounds i32, ptr %3, i64 %363
  %366 = load i32, ptr %365, align 4, !tbaa !5
  switch i32 %366, label %383 [
    i32 14, label %367
    i32 6, label %367
    i32 9, label %369
    i32 12, label %369
    i32 3, label %371
    i32 19, label %371
    i32 1, label %373
    i32 13, label %376
    i32 2, label %378
    i32 11, label %381
  ]

367:                                              ; preds = %362, %362
  %368 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %368, ptr %358, align 2, !tbaa !40
  br label %383

369:                                              ; preds = %362, %362
  %370 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %370, ptr %359, align 2, !tbaa !39
  br label %383

371:                                              ; preds = %362, %362
  %372 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %372, ptr %356, align 2, !tbaa !38
  br label %383

373:                                              ; preds = %362
  %374 = load i16, ptr %364, align 2, !tbaa !56
  %375 = xor i16 %374, -1
  store i16 %375, ptr %361, align 2, !tbaa !43
  br label %383

376:                                              ; preds = %362
  %377 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %377, ptr %361, align 2, !tbaa !43
  br label %383

378:                                              ; preds = %362
  br i1 %352, label %383, label %379

379:                                              ; preds = %378
  %380 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %380, ptr %360, align 2, !tbaa !56
  br label %383

381:                                              ; preds = %362
  %382 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %382, ptr %358, align 2, !tbaa !40
  store i16 %382, ptr %359, align 2, !tbaa !39
  store i16 %382, ptr %356, align 2, !tbaa !38
  br label %383

383:                                              ; preds = %362, %378, %379, %381, %376, %373, %371, %369, %367
  %384 = getelementptr inbounds i16, ptr %364, i64 1
  %385 = add nuw nsw i64 %363, 1
  %386 = icmp eq i64 %385, %326
  br i1 %386, label %387, label %362, !llvm.loop !277

387:                                              ; preds = %383, %353
  %388 = phi ptr [ %354, %353 ], [ %384, %383 ]
  %389 = getelementptr inbounds %struct._PixelPacket, ptr %356, i64 1
  %390 = add nuw nsw i64 %355, 1
  %391 = icmp eq i64 %390, %349
  br i1 %391, label %392, label %353, !llvm.loop !278

392:                                              ; preds = %387, %347
  %393 = phi ptr [ %340, %347 ], [ %388, %387 ]
  %394 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %334

396:                                              ; preds = %392, %338, %334, %321, %294, %290, %276, %245, %241, %227, %200, %196, %182, %159, %155, %141, %114, %110, %96, %65, %61, %47, %20, %16, %325, %283, %234, %189, %148, %103, %54, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ImportShortPixel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noalias noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.9) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !35
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %396

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %20

16:                                               ; preds = %47
  %17 = add nuw nsw i64 %21, 1
  %18 = load i64, ptr %11, align 8, !tbaa !35
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %396, !llvm.loop !279

20:                                               ; preds = %14, %16
  %21 = phi i64 [ 0, %14 ], [ %17, %16 ]
  %22 = phi ptr [ %4, %14 ], [ %48, %16 ]
  %23 = load i64, ptr %10, align 8, !tbaa !36
  %24 = load i64, ptr %15, align 8, !tbaa !37
  %25 = add nsw i64 %24, %21
  %26 = load i64, ptr %1, align 8, !tbaa !34
  %27 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %23, i64 noundef %25, i64 noundef %26, i64 noundef 1, ptr noundef %5) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %396, label %29

29:                                               ; preds = %20
  %30 = load i64, ptr %1, align 8, !tbaa !34
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %41, %32 ], [ %22, %29 ]
  %34 = phi i64 [ %45, %32 ], [ 0, %29 ]
  %35 = phi ptr [ %44, %32 ], [ %27, %29 ]
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  %37 = load i16, ptr %33, align 2, !tbaa !56
  store i16 %37, ptr %35, align 2, !tbaa !38
  %38 = getelementptr inbounds i16, ptr %33, i64 2
  %39 = load i16, ptr %36, align 2, !tbaa !56
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 1
  store i16 %39, ptr %40, align 2, !tbaa !39
  %41 = getelementptr inbounds i16, ptr %33, i64 3
  %42 = load i16, ptr %38, align 2, !tbaa !56
  %43 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 0, i32 2
  store i16 %42, ptr %43, align 2, !tbaa !40
  %44 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 1
  %45 = add nuw nsw i64 %34, 1
  %46 = icmp eq i64 %45, %30
  br i1 %46, label %47, label %32, !llvm.loop !280

47:                                               ; preds = %32, %29
  %48 = phi ptr [ %22, %29 ], [ %41, %32 ]
  %49 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %396, label %16

51:                                               ; preds = %6
  %52 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.10) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %56 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !35
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %396

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %65

61:                                               ; preds = %96
  %62 = add nuw nsw i64 %66, 1
  %63 = load i64, ptr %56, align 8, !tbaa !35
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %396, !llvm.loop !281

65:                                               ; preds = %59, %61
  %66 = phi i64 [ 0, %59 ], [ %62, %61 ]
  %67 = phi ptr [ %4, %59 ], [ %97, %61 ]
  %68 = load i64, ptr %55, align 8, !tbaa !36
  %69 = load i64, ptr %60, align 8, !tbaa !37
  %70 = add nsw i64 %69, %66
  %71 = load i64, ptr %1, align 8, !tbaa !34
  %72 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %68, i64 noundef %70, i64 noundef %71, i64 noundef 1, ptr noundef %5) #22
  %73 = icmp eq ptr %72, null
  br i1 %73, label %396, label %74

74:                                               ; preds = %65
  %75 = load i64, ptr %1, align 8, !tbaa !34
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %74, %77
  %78 = phi ptr [ %89, %77 ], [ %67, %74 ]
  %79 = phi i64 [ %94, %77 ], [ 0, %74 ]
  %80 = phi ptr [ %93, %77 ], [ %72, %74 ]
  %81 = getelementptr inbounds i16, ptr %78, i64 1
  %82 = load i16, ptr %78, align 2, !tbaa !56
  store i16 %82, ptr %80, align 2, !tbaa !38
  %83 = getelementptr inbounds i16, ptr %78, i64 2
  %84 = load i16, ptr %81, align 2, !tbaa !56
  %85 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 1
  store i16 %84, ptr %85, align 2, !tbaa !39
  %86 = getelementptr inbounds i16, ptr %78, i64 3
  %87 = load i16, ptr %83, align 2, !tbaa !56
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 2
  store i16 %87, ptr %88, align 2, !tbaa !40
  %89 = getelementptr inbounds i16, ptr %78, i64 4
  %90 = load i16, ptr %86, align 2, !tbaa !56
  %91 = xor i16 %90, -1
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 0, i32 3
  store i16 %91, ptr %92, align 2, !tbaa !43
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %80, i64 1
  %94 = add nuw nsw i64 %79, 1
  %95 = icmp eq i64 %94, %75
  br i1 %95, label %96, label %77, !llvm.loop !282

96:                                               ; preds = %77, %74
  %97 = phi ptr [ %67, %74 ], [ %89, %77 ]
  %98 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %396, label %61

100:                                              ; preds = %51
  %101 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.11) #22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %145

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %105 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !35
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %396

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %114

110:                                              ; preds = %141
  %111 = add nuw nsw i64 %115, 1
  %112 = load i64, ptr %105, align 8, !tbaa !35
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %396, !llvm.loop !283

114:                                              ; preds = %108, %110
  %115 = phi i64 [ 0, %108 ], [ %111, %110 ]
  %116 = phi ptr [ %4, %108 ], [ %142, %110 ]
  %117 = load i64, ptr %104, align 8, !tbaa !36
  %118 = load i64, ptr %109, align 8, !tbaa !37
  %119 = add nsw i64 %118, %115
  %120 = load i64, ptr %1, align 8, !tbaa !34
  %121 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %117, i64 noundef %119, i64 noundef %120, i64 noundef 1, ptr noundef %5) #22
  %122 = icmp eq ptr %121, null
  br i1 %122, label %396, label %123

123:                                              ; preds = %114
  %124 = load i64, ptr %1, align 8, !tbaa !34
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %123, %126
  %127 = phi ptr [ %137, %126 ], [ %116, %123 ]
  %128 = phi i64 [ %139, %126 ], [ 0, %123 ]
  %129 = phi ptr [ %138, %126 ], [ %121, %123 ]
  %130 = getelementptr inbounds i16, ptr %127, i64 1
  %131 = load i16, ptr %127, align 2, !tbaa !56
  store i16 %131, ptr %129, align 2, !tbaa !38
  %132 = getelementptr inbounds i16, ptr %127, i64 2
  %133 = load i16, ptr %130, align 2, !tbaa !56
  %134 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 1
  store i16 %133, ptr %134, align 2, !tbaa !39
  %135 = load i16, ptr %132, align 2, !tbaa !56
  %136 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 0, i32 2
  store i16 %135, ptr %136, align 2, !tbaa !40
  %137 = getelementptr inbounds i16, ptr %127, i64 4
  %138 = getelementptr inbounds %struct._PixelPacket, ptr %129, i64 1
  %139 = add nuw nsw i64 %128, 1
  %140 = icmp eq i64 %139, %124
  br i1 %140, label %141, label %126, !llvm.loop !284

141:                                              ; preds = %126, %123
  %142 = phi ptr [ %116, %123 ], [ %137, %126 ]
  %143 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %396, label %110

145:                                              ; preds = %100
  %146 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.12) #22
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %186

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %150 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !35
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %396

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %159

155:                                              ; preds = %182
  %156 = add nuw nsw i64 %160, 1
  %157 = load i64, ptr %150, align 8, !tbaa !35
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %396, !llvm.loop !285

159:                                              ; preds = %153, %155
  %160 = phi i64 [ 0, %153 ], [ %156, %155 ]
  %161 = phi ptr [ %4, %153 ], [ %183, %155 ]
  %162 = load i64, ptr %149, align 8, !tbaa !36
  %163 = load i64, ptr %154, align 8, !tbaa !37
  %164 = add nsw i64 %163, %160
  %165 = load i64, ptr %1, align 8, !tbaa !34
  %166 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %162, i64 noundef %164, i64 noundef %165, i64 noundef 1, ptr noundef %5) #22
  %167 = icmp eq ptr %166, null
  br i1 %167, label %396, label %168

168:                                              ; preds = %159
  %169 = load i64, ptr %1, align 8, !tbaa !34
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %168, %171
  %172 = phi ptr [ %175, %171 ], [ %161, %168 ]
  %173 = phi i64 [ %180, %171 ], [ 0, %168 ]
  %174 = phi ptr [ %179, %171 ], [ %166, %168 ]
  %175 = getelementptr inbounds i16, ptr %172, i64 1
  %176 = load i16, ptr %172, align 2, !tbaa !56
  %177 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 0, i32 2
  store i16 %176, ptr %177, align 2, !tbaa !40
  %178 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 0, i32 1
  store i16 %176, ptr %178, align 2, !tbaa !39
  store i16 %176, ptr %174, align 2, !tbaa !38
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %174, i64 1
  %180 = add nuw nsw i64 %173, 1
  %181 = icmp eq i64 %180, %169
  br i1 %181, label %182, label %171, !llvm.loop !286

182:                                              ; preds = %171, %168
  %183 = phi ptr [ %161, %168 ], [ %175, %171 ]
  %184 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %396, label %155

186:                                              ; preds = %145
  %187 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.13) #22
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %231

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %191 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %192 = load i64, ptr %191, align 8, !tbaa !35
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %396

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %200

196:                                              ; preds = %227
  %197 = add nuw nsw i64 %201, 1
  %198 = load i64, ptr %191, align 8, !tbaa !35
  %199 = icmp slt i64 %197, %198
  br i1 %199, label %200, label %396, !llvm.loop !287

200:                                              ; preds = %194, %196
  %201 = phi i64 [ 0, %194 ], [ %197, %196 ]
  %202 = phi ptr [ %4, %194 ], [ %228, %196 ]
  %203 = load i64, ptr %190, align 8, !tbaa !36
  %204 = load i64, ptr %195, align 8, !tbaa !37
  %205 = add nsw i64 %204, %201
  %206 = load i64, ptr %1, align 8, !tbaa !34
  %207 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %203, i64 noundef %205, i64 noundef %206, i64 noundef 1, ptr noundef %5) #22
  %208 = icmp eq ptr %207, null
  br i1 %208, label %396, label %209

209:                                              ; preds = %200
  %210 = load i64, ptr %1, align 8, !tbaa !34
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %209, %212
  %213 = phi ptr [ %222, %212 ], [ %202, %209 ]
  %214 = phi i64 [ %225, %212 ], [ 0, %209 ]
  %215 = phi ptr [ %224, %212 ], [ %207, %209 ]
  %216 = getelementptr inbounds i16, ptr %213, i64 1
  %217 = load i16, ptr %213, align 2, !tbaa !56
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 0, i32 2
  store i16 %217, ptr %218, align 2, !tbaa !40
  %219 = getelementptr inbounds i16, ptr %213, i64 2
  %220 = load i16, ptr %216, align 2, !tbaa !56
  %221 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 0, i32 1
  store i16 %220, ptr %221, align 2, !tbaa !39
  %222 = getelementptr inbounds i16, ptr %213, i64 3
  %223 = load i16, ptr %219, align 2, !tbaa !56
  store i16 %223, ptr %215, align 2, !tbaa !38
  %224 = getelementptr inbounds %struct._PixelPacket, ptr %215, i64 1
  %225 = add nuw nsw i64 %214, 1
  %226 = icmp eq i64 %225, %210
  br i1 %226, label %227, label %212, !llvm.loop !288

227:                                              ; preds = %212, %209
  %228 = phi ptr [ %202, %209 ], [ %222, %212 ]
  %229 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %396, label %196

231:                                              ; preds = %186
  %232 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.14) #22
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %280

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %236 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %237 = load i64, ptr %236, align 8, !tbaa !35
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %396

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %245

241:                                              ; preds = %276
  %242 = add nuw nsw i64 %246, 1
  %243 = load i64, ptr %236, align 8, !tbaa !35
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %245, label %396, !llvm.loop !289

245:                                              ; preds = %239, %241
  %246 = phi i64 [ 0, %239 ], [ %242, %241 ]
  %247 = phi ptr [ %4, %239 ], [ %277, %241 ]
  %248 = load i64, ptr %235, align 8, !tbaa !36
  %249 = load i64, ptr %240, align 8, !tbaa !37
  %250 = add nsw i64 %249, %246
  %251 = load i64, ptr %1, align 8, !tbaa !34
  %252 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %248, i64 noundef %250, i64 noundef %251, i64 noundef 1, ptr noundef %5) #22
  %253 = icmp eq ptr %252, null
  br i1 %253, label %396, label %254

254:                                              ; preds = %245
  %255 = load i64, ptr %1, align 8, !tbaa !34
  %256 = icmp sgt i64 %255, 0
  br i1 %256, label %257, label %276

257:                                              ; preds = %254, %257
  %258 = phi ptr [ %269, %257 ], [ %247, %254 ]
  %259 = phi i64 [ %274, %257 ], [ 0, %254 ]
  %260 = phi ptr [ %273, %257 ], [ %252, %254 ]
  %261 = getelementptr inbounds i16, ptr %258, i64 1
  %262 = load i16, ptr %258, align 2, !tbaa !56
  %263 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 0, i32 2
  store i16 %262, ptr %263, align 2, !tbaa !40
  %264 = getelementptr inbounds i16, ptr %258, i64 2
  %265 = load i16, ptr %261, align 2, !tbaa !56
  %266 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 0, i32 1
  store i16 %265, ptr %266, align 2, !tbaa !39
  %267 = getelementptr inbounds i16, ptr %258, i64 3
  %268 = load i16, ptr %264, align 2, !tbaa !56
  store i16 %268, ptr %260, align 2, !tbaa !38
  %269 = getelementptr inbounds i16, ptr %258, i64 4
  %270 = load i16, ptr %267, align 2, !tbaa !56
  %271 = xor i16 %270, -1
  %272 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 0, i32 3
  store i16 %271, ptr %272, align 2, !tbaa !43
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %260, i64 1
  %274 = add nuw nsw i64 %259, 1
  %275 = icmp eq i64 %274, %255
  br i1 %275, label %276, label %257, !llvm.loop !290

276:                                              ; preds = %257, %254
  %277 = phi ptr [ %247, %254 ], [ %269, %257 ]
  %278 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %396, label %241

280:                                              ; preds = %231
  %281 = tail call i32 @LocaleCompare(ptr noundef %2, ptr noundef nonnull @.str.15) #22
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %325

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %285 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %286 = load i64, ptr %285, align 8, !tbaa !35
  %287 = icmp sgt i64 %286, 0
  br i1 %287, label %288, label %396

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  br label %294

290:                                              ; preds = %321
  %291 = add nuw nsw i64 %295, 1
  %292 = load i64, ptr %285, align 8, !tbaa !35
  %293 = icmp slt i64 %291, %292
  br i1 %293, label %294, label %396, !llvm.loop !291

294:                                              ; preds = %288, %290
  %295 = phi i64 [ 0, %288 ], [ %291, %290 ]
  %296 = phi ptr [ %4, %288 ], [ %322, %290 ]
  %297 = load i64, ptr %284, align 8, !tbaa !36
  %298 = load i64, ptr %289, align 8, !tbaa !37
  %299 = add nsw i64 %298, %295
  %300 = load i64, ptr %1, align 8, !tbaa !34
  %301 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %297, i64 noundef %299, i64 noundef %300, i64 noundef 1, ptr noundef %5) #22
  %302 = icmp eq ptr %301, null
  br i1 %302, label %396, label %303

303:                                              ; preds = %294
  %304 = load i64, ptr %1, align 8, !tbaa !34
  %305 = icmp sgt i64 %304, 0
  br i1 %305, label %306, label %321

306:                                              ; preds = %303, %306
  %307 = phi ptr [ %317, %306 ], [ %296, %303 ]
  %308 = phi i64 [ %319, %306 ], [ 0, %303 ]
  %309 = phi ptr [ %318, %306 ], [ %301, %303 ]
  %310 = getelementptr inbounds i16, ptr %307, i64 1
  %311 = load i16, ptr %307, align 2, !tbaa !56
  %312 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 0, i32 2
  store i16 %311, ptr %312, align 2, !tbaa !40
  %313 = getelementptr inbounds i16, ptr %307, i64 2
  %314 = load i16, ptr %310, align 2, !tbaa !56
  %315 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 0, i32 1
  store i16 %314, ptr %315, align 2, !tbaa !39
  %316 = load i16, ptr %313, align 2, !tbaa !56
  store i16 %316, ptr %309, align 2, !tbaa !38
  %317 = getelementptr inbounds i16, ptr %307, i64 4
  %318 = getelementptr inbounds %struct._PixelPacket, ptr %309, i64 1
  %319 = add nuw nsw i64 %308, 1
  %320 = icmp eq i64 %319, %304
  br i1 %320, label %321, label %306, !llvm.loop !292

321:                                              ; preds = %306, %303
  %322 = phi ptr [ %296, %303 ], [ %317, %306 ]
  %323 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %396, label %290

325:                                              ; preds = %280
  %326 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %327 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %328 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %329 = load i64, ptr %328, align 8, !tbaa !35
  %330 = icmp sgt i64 %329, 0
  br i1 %330, label %331, label %396

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %333 = icmp sgt i64 %326, 0
  br label %338

334:                                              ; preds = %392
  %335 = add nuw nsw i64 %339, 1
  %336 = load i64, ptr %328, align 8, !tbaa !35
  %337 = icmp slt i64 %335, %336
  br i1 %337, label %338, label %396, !llvm.loop !293

338:                                              ; preds = %331, %334
  %339 = phi i64 [ 0, %331 ], [ %335, %334 ]
  %340 = phi ptr [ %4, %331 ], [ %393, %334 ]
  %341 = load i64, ptr %327, align 8, !tbaa !36
  %342 = load i64, ptr %332, align 8, !tbaa !37
  %343 = add nsw i64 %342, %339
  %344 = load i64, ptr %1, align 8, !tbaa !34
  %345 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %341, i64 noundef %343, i64 noundef %344, i64 noundef 1, ptr noundef %5) #22
  %346 = icmp eq ptr %345, null
  br i1 %346, label %396, label %347

347:                                              ; preds = %338
  %348 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #22
  %349 = load i64, ptr %1, align 8, !tbaa !34
  %350 = icmp sgt i64 %349, 0
  br i1 %350, label %351, label %392

351:                                              ; preds = %347
  %352 = icmp eq ptr %348, null
  br label %353

353:                                              ; preds = %351, %387
  %354 = phi ptr [ %340, %351 ], [ %388, %387 ]
  %355 = phi i64 [ 0, %351 ], [ %390, %387 ]
  %356 = phi ptr [ %345, %351 ], [ %389, %387 ]
  br i1 %333, label %357, label %387

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct._PixelPacket, ptr %356, i64 0, i32 2
  %359 = getelementptr inbounds %struct._PixelPacket, ptr %356, i64 0, i32 1
  %360 = getelementptr inbounds i16, ptr %348, i64 %355
  %361 = getelementptr inbounds %struct._PixelPacket, ptr %356, i64 0, i32 3
  br label %362

362:                                              ; preds = %357, %383
  %363 = phi i64 [ 0, %357 ], [ %385, %383 ]
  %364 = phi ptr [ %354, %357 ], [ %384, %383 ]
  %365 = getelementptr inbounds i32, ptr %3, i64 %363
  %366 = load i32, ptr %365, align 4, !tbaa !5
  switch i32 %366, label %383 [
    i32 14, label %367
    i32 6, label %367
    i32 9, label %369
    i32 12, label %369
    i32 3, label %371
    i32 19, label %371
    i32 1, label %373
    i32 13, label %376
    i32 2, label %378
    i32 11, label %381
  ]

367:                                              ; preds = %362, %362
  %368 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %368, ptr %358, align 2, !tbaa !40
  br label %383

369:                                              ; preds = %362, %362
  %370 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %370, ptr %359, align 2, !tbaa !39
  br label %383

371:                                              ; preds = %362, %362
  %372 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %372, ptr %356, align 2, !tbaa !38
  br label %383

373:                                              ; preds = %362
  %374 = load i16, ptr %364, align 2, !tbaa !56
  %375 = xor i16 %374, -1
  store i16 %375, ptr %361, align 2, !tbaa !43
  br label %383

376:                                              ; preds = %362
  %377 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %377, ptr %361, align 2, !tbaa !43
  br label %383

378:                                              ; preds = %362
  br i1 %352, label %383, label %379

379:                                              ; preds = %378
  %380 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %380, ptr %360, align 2, !tbaa !56
  br label %383

381:                                              ; preds = %362
  %382 = load i16, ptr %364, align 2, !tbaa !56
  store i16 %382, ptr %358, align 2, !tbaa !40
  store i16 %382, ptr %359, align 2, !tbaa !39
  store i16 %382, ptr %356, align 2, !tbaa !38
  br label %383

383:                                              ; preds = %362, %378, %379, %381, %376, %373, %371, %369, %367
  %384 = getelementptr inbounds i16, ptr %364, i64 1
  %385 = add nuw nsw i64 %363, 1
  %386 = icmp eq i64 %385, %326
  br i1 %386, label %387, label %362, !llvm.loop !294

387:                                              ; preds = %383, %353
  %388 = phi ptr [ %354, %353 ], [ %384, %383 ]
  %389 = getelementptr inbounds %struct._PixelPacket, ptr %356, i64 1
  %390 = add nuw nsw i64 %355, 1
  %391 = icmp eq i64 %390, %349
  br i1 %391, label %392, label %353, !llvm.loop !295

392:                                              ; preds = %387, %347
  %393 = phi ptr [ %340, %347 ], [ %388, %387 ]
  %394 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef %5) #22
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %334

396:                                              ; preds = %392, %338, %334, %321, %294, %290, %276, %245, %241, %227, %200, %196, %182, %159, %155, %141, %114, %110, %96, %65, %61, %47, %20, %16, %325, %283, %234, %189, %148, %103, %54, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, ptr nocapture noundef writeonly %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [16 x %struct._MagickPixelPacket], align 16
  %9 = alloca [16 x float], align 16
  %10 = alloca i16, align 2
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x float], align 16
  %13 = alloca %struct._RectangleInfo, align 8
  %14 = alloca %struct._PointInfo, align 8
  %15 = alloca [4 x float], align 16
  %16 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 896, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #21
  %17 = tail call double @llvm.floor.f64(double %3)
  %18 = fptosi double %17 to i64
  %19 = tail call double @llvm.floor.f64(double %4)
  %20 = fptosi double %19 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 70
  %24 = load i32, ptr %23, align 8, !tbaa !296
  br label %25

25:                                               ; preds = %22, %7
  %26 = phi i32 [ %24, %22 ], [ %2, %7 ]
  switch i32 %26, label %106 [
    i32 7, label %809
    i32 6, label %466
    i32 5, label %461
    i32 12, label %104
    i32 8, label %820
    i32 11, label %244
    i32 13, label %346
    i32 2, label %346
    i32 4, label %434
    i32 9, label %27
    i32 10, label %36
    i32 1, label %39
  ]

27:                                               ; preds = %25
  %28 = fadd double %3, 5.000000e-01
  %29 = tail call double @llvm.floor.f64(double %28)
  %30 = fadd double %29, -1.000000e+00
  %31 = fptosi double %30 to i64
  %32 = fadd double %4, 5.000000e-01
  %33 = tail call double @llvm.floor.f64(double %32)
  %34 = fadd double %33, -1.000000e+00
  %35 = fptosi double %34 to i64
  br label %39

36:                                               ; preds = %25
  %37 = add nsw i64 %18, -1
  %38 = add nsw i64 %20, -1
  br label %39

39:                                               ; preds = %25, %36, %27
  %40 = phi i64 [ %35, %27 ], [ %38, %36 ], [ %20, %25 ]
  %41 = phi i64 [ 3, %27 ], [ 4, %36 ], [ 2, %25 ]
  %42 = phi i64 [ %31, %27 ], [ %37, %36 ], [ %18, %25 ]
  %43 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %42, i64 noundef %40, i64 noundef %41, i64 noundef %41, ptr noundef %6) #28
  %44 = icmp eq ptr %43, null
  br i1 %44, label %908, label %45

45:                                               ; preds = %39
  %46 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #22
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %51 = mul nuw nsw i64 %41, %41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %47, i8 0, i64 20, i1 false)
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %8) #25
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  br label %56

56:                                               ; preds = %45, %68
  %57 = phi i64 [ 0, %45 ], [ %89, %68 ]
  %58 = phi float [ 0.000000e+00, %45 ], [ %88, %68 ]
  %59 = phi <2 x float> [ zeroinitializer, %45 ], [ %79, %68 ]
  %60 = phi <2 x float> [ zeroinitializer, %45 ], [ %84, %68 ]
  %61 = getelementptr inbounds %struct._PixelPacket, ptr %43, i64 %57
  %62 = getelementptr inbounds i16, ptr %46, i64 %57
  call fastcc void @AlphaBlendMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %61, ptr noundef %62, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %63 = load float, ptr %9, align 16, !tbaa !14
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = fpext float %63 to double
  %67 = tail call fastcc double @PerceptibleReciprocal(double noundef %66) #25
  br label %68

68:                                               ; preds = %56, %65
  %69 = phi double [ %67, %65 ], [ 0.000000e+00, %56 ]
  %70 = load <4 x float>, ptr %52, align 16
  %71 = shufflevector <4 x float> %70, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %72 = fpext <2 x float> %60 to <2 x double>
  %73 = fpext <2 x float> %59 to <2 x double>
  %74 = load <2 x float>, ptr %53, align 4, !tbaa !14
  %75 = fpext <2 x float> %74 to <2 x double>
  %76 = insertelement <2 x double> poison, double %69, i64 0
  %77 = shufflevector <2 x double> %76, <2 x double> poison, <2 x i32> zeroinitializer
  %78 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %77, <2 x double> %75, <2 x double> %73)
  %79 = fptrunc <2 x double> %78 to <2 x float>
  store <2 x float> %79, ptr %48, align 4, !tbaa !14
  %80 = load float, ptr %54, align 16, !tbaa !297
  %81 = insertelement <2 x float> %71, float %80, i64 1
  %82 = fpext <2 x float> %81 to <2 x double>
  %83 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %77, <2 x double> %82, <2 x double> %72)
  %84 = fptrunc <2 x double> %83 to <2 x float>
  %85 = extractelement <2 x float> %84, i64 0
  store float %85, ptr %47, align 8, !tbaa !298
  %86 = extractelement <2 x float> %84, i64 1
  store float %86, ptr %50, align 8, !tbaa !297
  %87 = load float, ptr %55, align 4, !tbaa !299
  %88 = fadd float %87, %58
  store float %88, ptr %49, align 4, !tbaa !299
  %89 = add nuw nsw i64 %57, 1
  %90 = icmp eq i64 %89, %51
  br i1 %90, label %91, label %56, !llvm.loop !300

91:                                               ; preds = %68
  %92 = sitofp i64 %51 to double
  %93 = fdiv double 1.000000e+00, %92
  %94 = shufflevector <2 x float> %84, <2 x float> %79, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %95 = insertelement <4 x float> %94, float %88, i64 3
  %96 = fpext <4 x float> %95 to <4 x double>
  %97 = fpext float %86 to double
  %98 = fmul double %93, %97
  %99 = fptrunc double %98 to float
  store float %99, ptr %50, align 8, !tbaa !297
  %100 = insertelement <4 x double> poison, double %93, i64 0
  %101 = shufflevector <4 x double> %100, <4 x double> poison, <4 x i32> zeroinitializer
  %102 = fmul <4 x double> %101, %96
  %103 = fptrunc <4 x double> %102 to <4 x float>
  store <4 x float> %103, ptr %47, align 8, !tbaa !14
  br label %908

104:                                              ; preds = %25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #21
  store i16 0, ptr %10, align 2, !tbaa !56
  %105 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %105, ptr noundef nonnull %10, ptr noundef %5) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #21
  br label %908

106:                                              ; preds = %25
  %107 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %18, i64 noundef %20, i64 noundef 2, i64 noundef 2, ptr noundef %6) #28
  %108 = icmp eq ptr %107, null
  br i1 %108, label %908, label %109

109:                                              ; preds = %106
  %110 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #22
  br label %111

111:                                              ; preds = %109, %111
  %112 = phi i64 [ 0, %109 ], [ %117, %111 ]
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %112
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %113) #25
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %107, i64 %112
  %115 = getelementptr inbounds i16, ptr %110, i64 %112
  %116 = getelementptr inbounds float, ptr %9, i64 %112
  call fastcc void @AlphaBlendMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %114, ptr noundef %115, ptr noundef nonnull %113, ptr noundef nonnull %116) #25
  %117 = add nuw nsw i64 %112, 1
  %118 = icmp eq i64 %117, 4
  br i1 %118, label %119, label %111, !llvm.loop !301

119:                                              ; preds = %111
  %120 = sitofp i64 %18 to double
  %121 = fsub double %3, %120
  %122 = sitofp i64 %20 to double
  %123 = fsub double %4, %122
  %124 = fsub double 1.000000e+00, %121
  %125 = fsub double 1.000000e+00, %123
  %126 = load float, ptr %9, align 16, !tbaa !14
  %127 = fpext float %126 to double
  %128 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !14
  %130 = fpext float %129 to double
  %131 = fmul double %121, %130
  %132 = tail call double @llvm.fmuladd.f64(double %124, double %127, double %131)
  %133 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 2
  %134 = load float, ptr %133, align 8, !tbaa !14
  %135 = fpext float %134 to double
  %136 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 3
  %137 = load float, ptr %136, align 4, !tbaa !14
  %138 = fpext float %137 to double
  %139 = fmul double %121, %138
  %140 = tail call double @llvm.fmuladd.f64(double %124, double %135, double %139)
  %141 = fmul double %123, %140
  %142 = tail call double @llvm.fmuladd.f64(double %125, double %132, double %141)
  %143 = fcmp olt double %142, 0.000000e+00
  %144 = select i1 %143, double 0.000000e+00, double %142
  %145 = tail call fastcc double @PerceptibleReciprocal(double noundef %144) #25
  %146 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %147 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 5
  %148 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 5
  %149 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 5
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %151 = load <2 x float>, ptr %146, align 16, !tbaa !14
  %152 = fpext <2 x float> %151 to <2 x double>
  %153 = load <2 x float>, ptr %147, align 8, !tbaa !14
  %154 = fpext <2 x float> %153 to <2 x double>
  %155 = insertelement <2 x double> poison, double %121, i64 0
  %156 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> zeroinitializer
  %157 = fmul <2 x double> %156, %154
  %158 = insertelement <2 x double> poison, double %124, i64 0
  %159 = shufflevector <2 x double> %158, <2 x double> poison, <2 x i32> zeroinitializer
  %160 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %159, <2 x double> %152, <2 x double> %157)
  %161 = load <2 x float>, ptr %148, align 16, !tbaa !14
  %162 = fpext <2 x float> %161 to <2 x double>
  %163 = load <2 x float>, ptr %149, align 8, !tbaa !14
  %164 = fpext <2 x float> %163 to <2 x double>
  %165 = fmul <2 x double> %156, %164
  %166 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %159, <2 x double> %162, <2 x double> %165)
  %167 = insertelement <2 x double> poison, double %123, i64 0
  %168 = shufflevector <2 x double> %167, <2 x double> poison, <2 x i32> zeroinitializer
  %169 = fmul <2 x double> %168, %166
  %170 = insertelement <2 x double> poison, double %125, i64 0
  %171 = shufflevector <2 x double> %170, <2 x double> poison, <2 x i32> zeroinitializer
  %172 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %171, <2 x double> %160, <2 x double> %169)
  %173 = insertelement <2 x double> poison, double %145, i64 0
  %174 = shufflevector <2 x double> %173, <2 x double> poison, <2 x i32> zeroinitializer
  %175 = fmul <2 x double> %174, %172
  %176 = fptrunc <2 x double> %175 to <2 x float>
  store <2 x float> %176, ptr %150, align 8, !tbaa !14
  %177 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %178 = load float, ptr %177, align 8, !tbaa !302
  %179 = fpext float %178 to double
  %180 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 7
  %181 = load float, ptr %180, align 16, !tbaa !302
  %182 = fpext float %181 to double
  %183 = fmul double %121, %182
  %184 = tail call double @llvm.fmuladd.f64(double %124, double %179, double %183)
  %185 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 7
  %186 = load float, ptr %185, align 8, !tbaa !302
  %187 = fpext float %186 to double
  %188 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 7
  %189 = load float, ptr %188, align 16, !tbaa !302
  %190 = fpext float %189 to double
  %191 = fmul double %121, %190
  %192 = tail call double @llvm.fmuladd.f64(double %124, double %187, double %191)
  %193 = fmul double %123, %192
  %194 = tail call double @llvm.fmuladd.f64(double %125, double %184, double %193)
  %195 = fmul double %145, %194
  %196 = fptrunc double %195 to float
  %197 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %196, ptr %197, align 8, !tbaa !302
  %198 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !31
  %200 = icmp eq i32 %199, 12
  br i1 %200, label %201, label %223

201:                                              ; preds = %119
  %202 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %203 = load float, ptr %202, align 16, !tbaa !297
  %204 = fpext float %203 to double
  %205 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 9
  %206 = load float, ptr %205, align 8, !tbaa !297
  %207 = fpext float %206 to double
  %208 = fmul double %121, %207
  %209 = tail call double @llvm.fmuladd.f64(double %124, double %204, double %208)
  %210 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 9
  %211 = load float, ptr %210, align 16, !tbaa !297
  %212 = fpext float %211 to double
  %213 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 9
  %214 = load float, ptr %213, align 8, !tbaa !297
  %215 = fpext float %214 to double
  %216 = fmul double %121, %215
  %217 = tail call double @llvm.fmuladd.f64(double %124, double %212, double %216)
  %218 = fmul double %123, %217
  %219 = tail call double @llvm.fmuladd.f64(double %125, double %209, double %218)
  %220 = fmul double %145, %219
  %221 = fptrunc double %220 to float
  %222 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %221, ptr %222, align 8, !tbaa !297
  br label %223

223:                                              ; preds = %201, %119
  %224 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %225 = load float, ptr %224, align 4, !tbaa !299
  %226 = fpext float %225 to double
  %227 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 8
  %228 = load float, ptr %227, align 4, !tbaa !299
  %229 = fpext float %228 to double
  %230 = fmul double %121, %229
  %231 = tail call double @llvm.fmuladd.f64(double %124, double %226, double %230)
  %232 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 8
  %233 = load float, ptr %232, align 4, !tbaa !299
  %234 = fpext float %233 to double
  %235 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 8
  %236 = load float, ptr %235, align 4, !tbaa !299
  %237 = fpext float %236 to double
  %238 = fmul double %121, %237
  %239 = tail call double @llvm.fmuladd.f64(double %124, double %234, double %238)
  %240 = fmul double %123, %239
  %241 = tail call double @llvm.fmuladd.f64(double %125, double %231, double %240)
  %242 = fptrunc double %241 to float
  %243 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %242, ptr %243, align 4, !tbaa !299
  br label %908

244:                                              ; preds = %25
  %245 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %18, i64 noundef %20, i64 noundef 2, i64 noundef 2, ptr noundef %6) #28
  %246 = icmp eq ptr %245, null
  br i1 %246, label %908, label %247

247:                                              ; preds = %244
  %248 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #22
  br label %254

249:                                              ; preds = %254
  %250 = sitofp i64 %20 to double
  %251 = fsub double %4, %250
  %252 = fcmp ult double %251, 7.500000e-01
  %253 = fcmp ogt double %251, 2.500000e-01
  br label %262

254:                                              ; preds = %247, %254
  %255 = phi i64 [ 0, %247 ], [ %260, %254 ]
  %256 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %255
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %256) #25
  %257 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 %255
  %258 = getelementptr inbounds i16, ptr %248, i64 %255
  %259 = getelementptr inbounds float, ptr %9, i64 %255
  call fastcc void @AlphaBlendMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %257, ptr noundef %258, ptr noundef nonnull %256, ptr noundef nonnull %259) #25
  %260 = add nuw nsw i64 %255, 1
  %261 = icmp eq i64 %260, 4
  br i1 %261, label %249, label %254, !llvm.loop !303

262:                                              ; preds = %249, %291
  %263 = phi double [ 1.000000e+00, %249 ], [ %292, %291 ]
  %264 = phi i1 [ true, %249 ], [ false, %291 ]
  %265 = phi i64 [ 0, %249 ], [ 1, %291 ]
  br i1 %252, label %273, label %266

266:                                              ; preds = %262
  %267 = or disjoint i64 %265, 2
  %268 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 %267
  %269 = load float, ptr %268, align 4, !tbaa !14
  %270 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 %265
  store float %269, ptr %270, align 4, !tbaa !14
  %271 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %265
  %272 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %271, ptr noundef nonnull align 8 dereferenceable(56) %272, i64 56, i1 false), !tbaa.struct !9
  br label %291

273:                                              ; preds = %262
  br i1 %253, label %274, label %291

274:                                              ; preds = %273
  %275 = or disjoint i64 %265, 2
  %276 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 %275
  %277 = load float, ptr %276, align 4, !tbaa !14
  %278 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 %265
  %279 = load float, ptr %278, align 4, !tbaa !14
  %280 = fadd float %277, %279
  store float %280, ptr %278, align 4, !tbaa !14
  %281 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %275, i32 5
  %282 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %265, i32 5
  %283 = load <4 x float>, ptr %281, align 8, !tbaa !14
  %284 = load <4 x float>, ptr %282, align 8, !tbaa !14
  %285 = fadd <4 x float> %283, %284
  store <4 x float> %285, ptr %282, align 8, !tbaa !14
  %286 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %275, i32 9
  %287 = load float, ptr %286, align 8, !tbaa !297
  %288 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %265, i32 9
  %289 = load float, ptr %288, align 8, !tbaa !297
  %290 = fadd float %287, %289
  store float %290, ptr %288, align 8, !tbaa !297
  br label %291

291:                                              ; preds = %266, %274, %273
  %292 = phi double [ %263, %266 ], [ 2.000000e+00, %274 ], [ %263, %273 ]
  br i1 %264, label %262, label %293, !llvm.loop !304

293:                                              ; preds = %291
  %294 = sitofp i64 %18 to double
  %295 = fsub double %3, %294
  %296 = fcmp ult double %295, 7.500000e-01
  br i1 %296, label %301, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %299 = load float, ptr %298, align 4, !tbaa !14
  %300 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %300, i64 56, i1 false), !tbaa.struct !9
  br label %319

301:                                              ; preds = %293
  %302 = fcmp ogt double %295, 2.500000e-01
  %303 = load float, ptr %9, align 16, !tbaa !14
  br i1 %302, label %304, label %319

304:                                              ; preds = %301
  %305 = fmul double %292, 2.000000e+00
  %306 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %307 = load float, ptr %306, align 4, !tbaa !14
  %308 = fadd float %307, %303
  %309 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 5
  %310 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %311 = load <4 x float>, ptr %309, align 8, !tbaa !14
  %312 = load <4 x float>, ptr %310, align 16, !tbaa !14
  %313 = fadd <4 x float> %311, %312
  store <4 x float> %313, ptr %310, align 16, !tbaa !14
  %314 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 9
  %315 = load float, ptr %314, align 8, !tbaa !297
  %316 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %317 = load float, ptr %316, align 16, !tbaa !297
  %318 = fadd float %315, %317
  store float %318, ptr %316, align 16, !tbaa !297
  br label %319

319:                                              ; preds = %301, %304, %297
  %320 = phi float [ %299, %297 ], [ %308, %304 ], [ %303, %301 ]
  %321 = phi double [ %292, %297 ], [ %305, %304 ], [ %292, %301 ]
  %322 = fdiv double 1.000000e+00, %321
  %323 = fpext float %320 to double
  %324 = tail call fastcc double @PerceptibleReciprocal(double noundef %323) #25
  %325 = fptrunc double %324 to float
  %326 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %327 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %328 = load <2 x float>, ptr %326, align 16, !tbaa !14
  %329 = insertelement <2 x float> poison, float %325, i64 0
  %330 = shufflevector <2 x float> %329, <2 x float> poison, <2 x i32> zeroinitializer
  %331 = fmul <2 x float> %328, %330
  store <2 x float> %331, ptr %327, align 8, !tbaa !14
  %332 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %333 = load float, ptr %332, align 8, !tbaa !302
  %334 = fmul float %333, %325
  %335 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %334, ptr %335, align 8, !tbaa !302
  %336 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %337 = load float, ptr %336, align 16, !tbaa !297
  %338 = fmul float %337, %325
  %339 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %338, ptr %339, align 8, !tbaa !297
  %340 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %341 = load float, ptr %340, align 4, !tbaa !299
  %342 = fpext float %341 to double
  %343 = fmul double %322, %342
  %344 = fptrunc double %343 to float
  %345 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %344, ptr %345, align 4, !tbaa !299
  br label %908

346:                                              ; preds = %25, %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #21
  %347 = add nsw i64 %18, -1
  %348 = add nsw i64 %20, -1
  %349 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %347, i64 noundef %348, i64 noundef 4, i64 noundef 4, ptr noundef %6) #28
  %350 = icmp eq ptr %349, null
  br i1 %350, label %432, label %351

351:                                              ; preds = %346
  %352 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #22
  br label %353

353:                                              ; preds = %351, %353
  %354 = phi i64 [ 0, %351 ], [ %359, %353 ]
  %355 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %354
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %355) #25
  %356 = getelementptr inbounds %struct._PixelPacket, ptr %349, i64 %354
  %357 = getelementptr inbounds i16, ptr %352, i64 %354
  %358 = getelementptr inbounds float, ptr %9, i64 %354
  call fastcc void @AlphaBlendMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %356, ptr noundef %357, ptr noundef nonnull %355, ptr noundef nonnull %358) #25
  %359 = add nuw nsw i64 %354, 1
  %360 = icmp eq i64 %359, 16
  br i1 %360, label %361, label %353, !llvm.loop !305

361:                                              ; preds = %353
  %362 = sitofp i64 %18 to double
  %363 = fsub double %3, %362
  %364 = fptrunc double %363 to float
  call fastcc void @CatromWeights(float noundef %364, ptr noundef nonnull %11) #25
  %365 = sitofp i64 %20 to double
  %366 = fsub double %4, %365
  %367 = fptrunc double %366 to float
  call fastcc void @CatromWeights(float noundef %367, ptr noundef nonnull %12) #25
  %368 = load <4 x float>, ptr %12, align 16
  %369 = load <4 x float>, ptr %11, align 16
  %370 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %371 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 5
  %372 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 5
  %373 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 5
  %374 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 4, i32 5
  %375 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 5, i32 5
  %376 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 6, i32 5
  %377 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 7, i32 5
  %378 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 8, i32 5
  %379 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 9, i32 5
  %380 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 10, i32 5
  %381 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 11, i32 5
  %382 = load <4 x float>, ptr %12, align 16
  %383 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 12, i32 5
  %384 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 13, i32 5
  %385 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 14, i32 5
  %386 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 15, i32 5
  %387 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %388 = load <4 x float>, ptr %370, align 16, !tbaa !14
  %389 = load <4 x float>, ptr %371, align 8, !tbaa !14
  %390 = shufflevector <4 x float> %369, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %391 = fmul <4 x float> %390, %389
  %392 = shufflevector <4 x float> %369, <4 x float> poison, <4 x i32> zeroinitializer
  %393 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %392, <4 x float> %388, <4 x float> %391)
  %394 = load <4 x float>, ptr %372, align 16, !tbaa !14
  %395 = shufflevector <4 x float> %369, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %396 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %395, <4 x float> %394, <4 x float> %393)
  %397 = load <4 x float>, ptr %373, align 8, !tbaa !14
  %398 = shufflevector <4 x float> %369, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %399 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %398, <4 x float> %397, <4 x float> %396)
  %400 = load <4 x float>, ptr %374, align 16, !tbaa !14
  %401 = load <4 x float>, ptr %375, align 8, !tbaa !14
  %402 = fmul <4 x float> %390, %401
  %403 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %392, <4 x float> %400, <4 x float> %402)
  %404 = load <4 x float>, ptr %376, align 16, !tbaa !14
  %405 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %395, <4 x float> %404, <4 x float> %403)
  %406 = load <4 x float>, ptr %377, align 8, !tbaa !14
  %407 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %398, <4 x float> %406, <4 x float> %405)
  %408 = shufflevector <4 x float> %368, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %409 = fmul <4 x float> %408, %407
  %410 = shufflevector <4 x float> %368, <4 x float> poison, <4 x i32> zeroinitializer
  %411 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %410, <4 x float> %399, <4 x float> %409)
  %412 = load <4 x float>, ptr %378, align 16, !tbaa !14
  %413 = load <4 x float>, ptr %379, align 8, !tbaa !14
  %414 = fmul <4 x float> %390, %413
  %415 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %392, <4 x float> %412, <4 x float> %414)
  %416 = load <4 x float>, ptr %380, align 16, !tbaa !14
  %417 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %395, <4 x float> %416, <4 x float> %415)
  %418 = load <4 x float>, ptr %381, align 8, !tbaa !14
  %419 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %398, <4 x float> %418, <4 x float> %417)
  %420 = shufflevector <4 x float> %368, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %421 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %420, <4 x float> %419, <4 x float> %411)
  %422 = load <4 x float>, ptr %383, align 16, !tbaa !14
  %423 = load <4 x float>, ptr %384, align 8, !tbaa !14
  %424 = fmul <4 x float> %390, %423
  %425 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %392, <4 x float> %422, <4 x float> %424)
  %426 = load <4 x float>, ptr %385, align 16, !tbaa !14
  %427 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %395, <4 x float> %426, <4 x float> %425)
  %428 = load <4 x float>, ptr %386, align 8, !tbaa !14
  %429 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %398, <4 x float> %428, <4 x float> %427)
  %430 = shufflevector <4 x float> %382, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %431 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %430, <4 x float> %429, <4 x float> %421)
  store <4 x float> %431, ptr %387, align 8, !tbaa !14
  br label %432

432:                                              ; preds = %346, %361
  %433 = phi i32 [ 1, %361 ], [ 0, %346 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #21
  br label %908

434:                                              ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #21
  store i64 4, ptr %13, align 8, !tbaa !34
  %435 = getelementptr inbounds %struct._RectangleInfo, ptr %13, i64 0, i32 1
  store i64 4, ptr %435, align 8, !tbaa !35
  %436 = add nsw i64 %18, -1
  %437 = getelementptr inbounds %struct._RectangleInfo, ptr %13, i64 0, i32 2
  store i64 %436, ptr %437, align 8, !tbaa !36
  %438 = add nsw i64 %20, -1
  %439 = getelementptr inbounds %struct._RectangleInfo, ptr %13, i64 0, i32 3
  store i64 %438, ptr %439, align 8, !tbaa !37
  %440 = call ptr @ExcerptImage(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %6) #22
  %441 = icmp eq ptr %440, null
  br i1 %441, label %459, label %442

442:                                              ; preds = %434
  %443 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %444 = load i32, ptr %443, align 8, !tbaa !306
  %445 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %446 = load double, ptr %445, align 8, !tbaa !307
  %447 = call ptr @ResizeImage(ptr noundef nonnull %440, i64 noundef 1, i64 noundef 1, i32 noundef %444, double noundef %446, ptr noundef %6) #22
  %448 = call ptr @DestroyImage(ptr noundef nonnull %440) #22
  %449 = icmp eq ptr %447, null
  br i1 %449, label %459, label %450

450:                                              ; preds = %442
  %451 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %447, ptr noundef %6) #22
  %452 = call ptr @GetCacheViewVirtualPixels(ptr noundef %451, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %6) #28
  %453 = icmp eq ptr %452, null
  br i1 %453, label %456, label %454

454:                                              ; preds = %450
  %455 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %447) #22
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %452, ptr noundef %455, ptr noundef %5) #25
  br label %456

456:                                              ; preds = %454, %450
  %457 = call ptr @DestroyCacheView(ptr noundef %451) #22
  %458 = call ptr @DestroyImage(ptr noundef nonnull %447) #22
  br label %459

459:                                              ; preds = %442, %434, %456
  %460 = phi i32 [ 1, %456 ], [ 0, %434 ], [ 1, %442 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #21
  br label %908

461:                                              ; preds = %25
  %462 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %18, i64 noundef %20, i64 noundef 1, i64 noundef 1, ptr noundef %6) #28
  %463 = icmp eq ptr %462, null
  br i1 %463, label %908, label %464

464:                                              ; preds = %461
  %465 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #22
  tail call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %462, ptr noundef %465, ptr noundef %5) #25
  br label %908

466:                                              ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #21
  %467 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %18, i64 noundef %20, i64 noundef 2, i64 noundef 2, ptr noundef %6) #28
  %468 = icmp eq ptr %467, null
  br i1 %468, label %807, label %469

469:                                              ; preds = %466
  %470 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #22
  br label %471

471:                                              ; preds = %469, %471
  %472 = phi i64 [ 0, %469 ], [ %477, %471 ]
  %473 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %472
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %473) #25
  %474 = getelementptr inbounds %struct._PixelPacket, ptr %467, i64 %472
  %475 = getelementptr inbounds i16, ptr %470, i64 %472
  %476 = getelementptr inbounds float, ptr %9, i64 %472
  call fastcc void @AlphaBlendMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %474, ptr noundef %475, ptr noundef nonnull %473, ptr noundef nonnull %476) #25
  %477 = add nuw nsw i64 %472, 1
  %478 = icmp eq i64 %477, 4
  br i1 %478, label %479, label %471, !llvm.loop !308

479:                                              ; preds = %471
  %480 = sitofp i64 %18 to double
  %481 = fsub double %3, %480
  store double %481, ptr %14, align 8, !tbaa !309
  %482 = sitofp i64 %20 to double
  %483 = fsub double %4, %482
  %484 = getelementptr inbounds %struct._PointInfo, ptr %14, i64 0, i32 1
  store double %483, ptr %484, align 8, !tbaa !311
  %485 = call fastcc float @MagickPixelLuma(ptr noundef nonnull %8) #25
  %486 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3
  %487 = call fastcc float @MagickPixelLuma(ptr noundef nonnull %486) #25
  %488 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1
  %489 = call fastcc float @MagickPixelLuma(ptr noundef nonnull %488) #25
  %490 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2
  %491 = call fastcc float @MagickPixelLuma(ptr noundef nonnull %490) #25
  %492 = insertelement <2 x float> poison, float %485, i64 0
  %493 = insertelement <2 x float> %492, float %489, i64 1
  %494 = insertelement <2 x float> poison, float %487, i64 0
  %495 = insertelement <2 x float> %494, float %491, i64 1
  %496 = fsub <2 x float> %493, %495
  %497 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %496)
  %498 = extractelement <2 x float> %497, i64 0
  %499 = extractelement <2 x float> %497, i64 1
  %500 = fcmp olt float %498, %499
  br i1 %500, label %501, label %641

501:                                              ; preds = %479
  %502 = fcmp ugt double %481, %483
  br i1 %502, label %572, label %503

503:                                              ; preds = %501
  %504 = fsub double 1.000000e+00, %483
  store double %504, ptr %484, align 8, !tbaa !311
  %505 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 2
  %506 = load float, ptr %505, align 8, !tbaa !14
  %507 = fpext float %506 to double
  %508 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 3
  %509 = load float, ptr %508, align 4, !tbaa !14
  %510 = fpext float %509 to double
  %511 = load float, ptr %9, align 16, !tbaa !14
  %512 = fpext float %511 to double
  %513 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %507, double noundef %510, double noundef %512) #25
  %514 = fcmp olt double %513, 0.000000e+00
  %515 = select i1 %514, double 0.000000e+00, double %513
  %516 = tail call fastcc double @PerceptibleReciprocal(double noundef %515) #25
  %517 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 5
  %518 = load float, ptr %517, align 16, !tbaa !298
  %519 = fpext float %518 to double
  %520 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 5
  %521 = load float, ptr %520, align 8, !tbaa !298
  %522 = fpext float %521 to double
  %523 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %524 = load float, ptr %523, align 16, !tbaa !298
  %525 = fpext float %524 to double
  %526 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %519, double noundef %522, double noundef %525) #25
  %527 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %528 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 6
  %529 = load float, ptr %528, align 4, !tbaa !312
  %530 = fpext float %529 to double
  %531 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 6
  %532 = load float, ptr %531, align 4, !tbaa !312
  %533 = fpext float %532 to double
  %534 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %535 = load float, ptr %534, align 4, !tbaa !312
  %536 = fpext float %535 to double
  %537 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %530, double noundef %533, double noundef %536) #25
  %538 = insertelement <2 x double> poison, double %516, i64 0
  %539 = shufflevector <2 x double> %538, <2 x double> poison, <2 x i32> zeroinitializer
  %540 = insertelement <2 x double> poison, double %526, i64 0
  %541 = insertelement <2 x double> %540, double %537, i64 1
  %542 = fmul <2 x double> %539, %541
  %543 = fptrunc <2 x double> %542 to <2 x float>
  store <2 x float> %543, ptr %527, align 8, !tbaa !14
  %544 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 7
  %545 = load float, ptr %544, align 8, !tbaa !302
  %546 = fpext float %545 to double
  %547 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 7
  %548 = load float, ptr %547, align 16, !tbaa !302
  %549 = fpext float %548 to double
  %550 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %551 = load float, ptr %550, align 8, !tbaa !302
  %552 = fpext float %551 to double
  %553 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %546, double noundef %549, double noundef %552) #25
  %554 = fmul double %516, %553
  %555 = fptrunc double %554 to float
  %556 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %555, ptr %556, align 8, !tbaa !302
  %557 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %558 = load i32, ptr %557, align 4, !tbaa !31
  %559 = icmp eq i32 %558, 12
  br i1 %559, label %560, label %789

560:                                              ; preds = %503
  %561 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 9
  %562 = load float, ptr %561, align 16, !tbaa !297
  %563 = fpext float %562 to double
  %564 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 9
  %565 = load float, ptr %564, align 8, !tbaa !297
  %566 = fpext float %565 to double
  %567 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %568 = load float, ptr %567, align 16, !tbaa !297
  %569 = fpext float %568 to double
  %570 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %563, double noundef %566, double noundef %569) #25
  %571 = fmul double %516, %570
  br label %782

572:                                              ; preds = %501
  %573 = fsub double 1.000000e+00, %481
  store double %573, ptr %14, align 8, !tbaa !309
  %574 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %575 = load float, ptr %574, align 4, !tbaa !14
  %576 = fpext float %575 to double
  %577 = load float, ptr %9, align 16, !tbaa !14
  %578 = fpext float %577 to double
  %579 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 3
  %580 = load float, ptr %579, align 4, !tbaa !14
  %581 = fpext float %580 to double
  %582 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %576, double noundef %578, double noundef %581) #25
  %583 = fcmp olt double %582, 0.000000e+00
  %584 = select i1 %583, double 0.000000e+00, double %582
  %585 = tail call fastcc double @PerceptibleReciprocal(double noundef %584) #25
  %586 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 5
  %587 = load float, ptr %586, align 8, !tbaa !298
  %588 = fpext float %587 to double
  %589 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %590 = load float, ptr %589, align 16, !tbaa !298
  %591 = fpext float %590 to double
  %592 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 5
  %593 = load float, ptr %592, align 8, !tbaa !298
  %594 = fpext float %593 to double
  %595 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %588, double noundef %591, double noundef %594) #25
  %596 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %597 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 6
  %598 = load float, ptr %597, align 4, !tbaa !312
  %599 = fpext float %598 to double
  %600 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %601 = load float, ptr %600, align 4, !tbaa !312
  %602 = fpext float %601 to double
  %603 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 6
  %604 = load float, ptr %603, align 4, !tbaa !312
  %605 = fpext float %604 to double
  %606 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %599, double noundef %602, double noundef %605) #25
  %607 = insertelement <2 x double> poison, double %585, i64 0
  %608 = shufflevector <2 x double> %607, <2 x double> poison, <2 x i32> zeroinitializer
  %609 = insertelement <2 x double> poison, double %595, i64 0
  %610 = insertelement <2 x double> %609, double %606, i64 1
  %611 = fmul <2 x double> %608, %610
  %612 = fptrunc <2 x double> %611 to <2 x float>
  store <2 x float> %612, ptr %596, align 8, !tbaa !14
  %613 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 7
  %614 = load float, ptr %613, align 16, !tbaa !302
  %615 = fpext float %614 to double
  %616 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %617 = load float, ptr %616, align 8, !tbaa !302
  %618 = fpext float %617 to double
  %619 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 7
  %620 = load float, ptr %619, align 16, !tbaa !302
  %621 = fpext float %620 to double
  %622 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %615, double noundef %618, double noundef %621) #25
  %623 = fmul double %585, %622
  %624 = fptrunc double %623 to float
  %625 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %624, ptr %625, align 8, !tbaa !302
  %626 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %627 = load i32, ptr %626, align 4, !tbaa !31
  %628 = icmp eq i32 %627, 12
  br i1 %628, label %629, label %789

629:                                              ; preds = %572
  %630 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 9
  %631 = load float, ptr %630, align 8, !tbaa !297
  %632 = fpext float %631 to double
  %633 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %634 = load float, ptr %633, align 16, !tbaa !297
  %635 = fpext float %634 to double
  %636 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 9
  %637 = load float, ptr %636, align 8, !tbaa !297
  %638 = fpext float %637 to double
  %639 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %632, double noundef %635, double noundef %638) #25
  %640 = fmul double %585, %639
  br label %782

641:                                              ; preds = %479
  %642 = fsub double 1.000000e+00, %483
  %643 = fcmp ugt double %481, %642
  br i1 %643, label %712, label %644

644:                                              ; preds = %641
  %645 = load float, ptr %9, align 16, !tbaa !14
  %646 = fpext float %645 to double
  %647 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %648 = load float, ptr %647, align 4, !tbaa !14
  %649 = fpext float %648 to double
  %650 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 2
  %651 = load float, ptr %650, align 8, !tbaa !14
  %652 = fpext float %651 to double
  %653 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %646, double noundef %649, double noundef %652) #25
  %654 = fcmp olt double %653, 0.000000e+00
  %655 = select i1 %654, double 0.000000e+00, double %653
  %656 = tail call fastcc double @PerceptibleReciprocal(double noundef %655) #25
  %657 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %658 = load float, ptr %657, align 16, !tbaa !298
  %659 = fpext float %658 to double
  %660 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 5
  %661 = load float, ptr %660, align 8, !tbaa !298
  %662 = fpext float %661 to double
  %663 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 5
  %664 = load float, ptr %663, align 16, !tbaa !298
  %665 = fpext float %664 to double
  %666 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %659, double noundef %662, double noundef %665) #25
  %667 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %668 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %669 = load float, ptr %668, align 4, !tbaa !312
  %670 = fpext float %669 to double
  %671 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 6
  %672 = load float, ptr %671, align 4, !tbaa !312
  %673 = fpext float %672 to double
  %674 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 6
  %675 = load float, ptr %674, align 4, !tbaa !312
  %676 = fpext float %675 to double
  %677 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %670, double noundef %673, double noundef %676) #25
  %678 = insertelement <2 x double> poison, double %656, i64 0
  %679 = shufflevector <2 x double> %678, <2 x double> poison, <2 x i32> zeroinitializer
  %680 = insertelement <2 x double> poison, double %666, i64 0
  %681 = insertelement <2 x double> %680, double %677, i64 1
  %682 = fmul <2 x double> %679, %681
  %683 = fptrunc <2 x double> %682 to <2 x float>
  store <2 x float> %683, ptr %667, align 8, !tbaa !14
  %684 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %685 = load float, ptr %684, align 8, !tbaa !302
  %686 = fpext float %685 to double
  %687 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 7
  %688 = load float, ptr %687, align 16, !tbaa !302
  %689 = fpext float %688 to double
  %690 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 7
  %691 = load float, ptr %690, align 8, !tbaa !302
  %692 = fpext float %691 to double
  %693 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %686, double noundef %689, double noundef %692) #25
  %694 = fmul double %656, %693
  %695 = fptrunc double %694 to float
  %696 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %695, ptr %696, align 8, !tbaa !302
  %697 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %698 = load i32, ptr %697, align 4, !tbaa !31
  %699 = icmp eq i32 %698, 12
  br i1 %699, label %700, label %789

700:                                              ; preds = %644
  %701 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %702 = load float, ptr %701, align 16, !tbaa !297
  %703 = fpext float %702 to double
  %704 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 9
  %705 = load float, ptr %704, align 8, !tbaa !297
  %706 = fpext float %705 to double
  %707 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 9
  %708 = load float, ptr %707, align 16, !tbaa !297
  %709 = fpext float %708 to double
  %710 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %703, double noundef %706, double noundef %709) #25
  %711 = fmul double %656, %710
  br label %782

712:                                              ; preds = %641
  %713 = fsub double 1.000000e+00, %481
  store double %713, ptr %14, align 8, !tbaa !309
  store double %642, ptr %484, align 8, !tbaa !311
  %714 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 3
  %715 = load float, ptr %714, align 4, !tbaa !14
  %716 = fpext float %715 to double
  %717 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 2
  %718 = load float, ptr %717, align 8, !tbaa !14
  %719 = fpext float %718 to double
  %720 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %721 = load float, ptr %720, align 4, !tbaa !14
  %722 = fpext float %721 to double
  %723 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %716, double noundef %719, double noundef %722) #25
  %724 = fcmp olt double %723, 0.000000e+00
  %725 = select i1 %724, double 0.000000e+00, double %723
  %726 = tail call fastcc double @PerceptibleReciprocal(double noundef %725) #25
  %727 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 5
  %728 = load float, ptr %727, align 8, !tbaa !298
  %729 = fpext float %728 to double
  %730 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 5
  %731 = load float, ptr %730, align 16, !tbaa !298
  %732 = fpext float %731 to double
  %733 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 5
  %734 = load float, ptr %733, align 8, !tbaa !298
  %735 = fpext float %734 to double
  %736 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %729, double noundef %732, double noundef %735) #25
  %737 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %738 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 6
  %739 = load float, ptr %738, align 4, !tbaa !312
  %740 = fpext float %739 to double
  %741 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 6
  %742 = load float, ptr %741, align 4, !tbaa !312
  %743 = fpext float %742 to double
  %744 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 6
  %745 = load float, ptr %744, align 4, !tbaa !312
  %746 = fpext float %745 to double
  %747 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %740, double noundef %743, double noundef %746) #25
  %748 = insertelement <2 x double> poison, double %726, i64 0
  %749 = shufflevector <2 x double> %748, <2 x double> poison, <2 x i32> zeroinitializer
  %750 = insertelement <2 x double> poison, double %736, i64 0
  %751 = insertelement <2 x double> %750, double %747, i64 1
  %752 = fmul <2 x double> %749, %751
  %753 = fptrunc <2 x double> %752 to <2 x float>
  store <2 x float> %753, ptr %737, align 8, !tbaa !14
  %754 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 7
  %755 = load float, ptr %754, align 16, !tbaa !302
  %756 = fpext float %755 to double
  %757 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 7
  %758 = load float, ptr %757, align 8, !tbaa !302
  %759 = fpext float %758 to double
  %760 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 7
  %761 = load float, ptr %760, align 16, !tbaa !302
  %762 = fpext float %761 to double
  %763 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %756, double noundef %759, double noundef %762) #25
  %764 = fmul double %726, %763
  %765 = fptrunc double %764 to float
  %766 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %765, ptr %766, align 8, !tbaa !302
  %767 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %768 = load i32, ptr %767, align 4, !tbaa !31
  %769 = icmp eq i32 %768, 12
  br i1 %769, label %770, label %789

770:                                              ; preds = %712
  %771 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 9
  %772 = load float, ptr %771, align 8, !tbaa !297
  %773 = fpext float %772 to double
  %774 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 9
  %775 = load float, ptr %774, align 16, !tbaa !297
  %776 = fpext float %775 to double
  %777 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 9
  %778 = load float, ptr %777, align 8, !tbaa !297
  %779 = fpext float %778 to double
  %780 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %773, double noundef %776, double noundef %779) #25
  %781 = fmul double %726, %780
  br label %782

782:                                              ; preds = %560, %629, %700, %770
  %783 = phi double [ %781, %770 ], [ %711, %700 ], [ %640, %629 ], [ %571, %560 ]
  %784 = phi i64 [ 3, %770 ], [ 0, %700 ], [ 1, %629 ], [ 2, %560 ]
  %785 = phi i64 [ 2, %770 ], [ 1, %700 ], [ 0, %629 ], [ 3, %560 ]
  %786 = phi i64 [ 1, %770 ], [ 2, %700 ], [ 3, %629 ], [ 0, %560 ]
  %787 = fptrunc double %783 to float
  %788 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %787, ptr %788, align 8, !tbaa !297
  br label %789

789:                                              ; preds = %782, %712, %644, %572, %503
  %790 = phi i64 [ 2, %503 ], [ 1, %572 ], [ 0, %644 ], [ 3, %712 ], [ %784, %782 ]
  %791 = phi i64 [ 3, %503 ], [ 0, %572 ], [ 1, %644 ], [ 2, %712 ], [ %785, %782 ]
  %792 = phi i64 [ 0, %503 ], [ 3, %572 ], [ 2, %644 ], [ 1, %712 ], [ %786, %782 ]
  %793 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00) #25
  %794 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %790, i32 8
  %795 = load float, ptr %794, align 4, !tbaa !299
  %796 = fpext float %795 to double
  %797 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %791, i32 8
  %798 = load float, ptr %797, align 4, !tbaa !299
  %799 = fpext float %798 to double
  %800 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %792, i32 8
  %801 = load float, ptr %800, align 4, !tbaa !299
  %802 = fpext float %801 to double
  %803 = call fastcc double @MeshInterpolate(ptr noundef nonnull %14, double noundef %796, double noundef %799, double noundef %802) #25
  %804 = fmul double %793, %803
  %805 = fptrunc double %804 to float
  %806 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %805, ptr %806, align 4, !tbaa !299
  br label %807

807:                                              ; preds = %789, %466
  %808 = phi i32 [ 0, %466 ], [ 1, %789 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #21
  br label %908

809:                                              ; preds = %25
  %810 = fadd double %3, 5.000000e-01
  %811 = tail call double @llvm.floor.f64(double %810)
  %812 = fptosi double %811 to i64
  %813 = fadd double %4, 5.000000e-01
  %814 = tail call double @llvm.floor.f64(double %813)
  %815 = fptosi double %814 to i64
  %816 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %812, i64 noundef %815, i64 noundef 1, i64 noundef 1, ptr noundef %6) #28
  %817 = icmp eq ptr %816, null
  br i1 %817, label %908, label %818

818:                                              ; preds = %809
  %819 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #22
  tail call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %816, ptr noundef %819, ptr noundef %5) #25
  br label %908

820:                                              ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #21
  %821 = add nsw i64 %18, -1
  %822 = add nsw i64 %20, -1
  %823 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %821, i64 noundef %822, i64 noundef 4, i64 noundef 4, ptr noundef %6) #28
  %824 = icmp eq ptr %823, null
  br i1 %824, label %906, label %825

825:                                              ; preds = %820
  %826 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #22
  br label %827

827:                                              ; preds = %825, %827
  %828 = phi i64 [ 0, %825 ], [ %833, %827 ]
  %829 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %828
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %829) #25
  %830 = getelementptr inbounds %struct._PixelPacket, ptr %823, i64 %828
  %831 = getelementptr inbounds i16, ptr %826, i64 %828
  %832 = getelementptr inbounds float, ptr %9, i64 %828
  call fastcc void @AlphaBlendMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %830, ptr noundef %831, ptr noundef nonnull %829, ptr noundef nonnull %832) #25
  %833 = add nuw nsw i64 %828, 1
  %834 = icmp eq i64 %833, 16
  br i1 %834, label %835, label %827, !llvm.loop !313

835:                                              ; preds = %827
  %836 = sitofp i64 %18 to double
  %837 = fsub double %3, %836
  %838 = fptrunc double %837 to float
  call fastcc void @SplineWeights(float noundef %838, ptr noundef nonnull %15) #25
  %839 = sitofp i64 %20 to double
  %840 = fsub double %4, %839
  %841 = fptrunc double %840 to float
  call fastcc void @SplineWeights(float noundef %841, ptr noundef nonnull %16) #25
  %842 = load <4 x float>, ptr %16, align 16
  %843 = load <4 x float>, ptr %15, align 16
  %844 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %845 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 5
  %846 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 5
  %847 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 5
  %848 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 4, i32 5
  %849 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 5, i32 5
  %850 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 6, i32 5
  %851 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 7, i32 5
  %852 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 8, i32 5
  %853 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 9, i32 5
  %854 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 10, i32 5
  %855 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 11, i32 5
  %856 = load <4 x float>, ptr %16, align 16
  %857 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 12, i32 5
  %858 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 13, i32 5
  %859 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 14, i32 5
  %860 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 15, i32 5
  %861 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %862 = load <4 x float>, ptr %844, align 16, !tbaa !14
  %863 = load <4 x float>, ptr %845, align 8, !tbaa !14
  %864 = shufflevector <4 x float> %843, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %865 = fmul <4 x float> %864, %863
  %866 = shufflevector <4 x float> %843, <4 x float> poison, <4 x i32> zeroinitializer
  %867 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %866, <4 x float> %862, <4 x float> %865)
  %868 = load <4 x float>, ptr %846, align 16, !tbaa !14
  %869 = shufflevector <4 x float> %843, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %870 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %869, <4 x float> %868, <4 x float> %867)
  %871 = load <4 x float>, ptr %847, align 8, !tbaa !14
  %872 = shufflevector <4 x float> %843, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %873 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %872, <4 x float> %871, <4 x float> %870)
  %874 = load <4 x float>, ptr %848, align 16, !tbaa !14
  %875 = load <4 x float>, ptr %849, align 8, !tbaa !14
  %876 = fmul <4 x float> %864, %875
  %877 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %866, <4 x float> %874, <4 x float> %876)
  %878 = load <4 x float>, ptr %850, align 16, !tbaa !14
  %879 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %869, <4 x float> %878, <4 x float> %877)
  %880 = load <4 x float>, ptr %851, align 8, !tbaa !14
  %881 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %872, <4 x float> %880, <4 x float> %879)
  %882 = shufflevector <4 x float> %842, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %883 = fmul <4 x float> %882, %881
  %884 = shufflevector <4 x float> %842, <4 x float> poison, <4 x i32> zeroinitializer
  %885 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %884, <4 x float> %873, <4 x float> %883)
  %886 = load <4 x float>, ptr %852, align 16, !tbaa !14
  %887 = load <4 x float>, ptr %853, align 8, !tbaa !14
  %888 = fmul <4 x float> %864, %887
  %889 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %866, <4 x float> %886, <4 x float> %888)
  %890 = load <4 x float>, ptr %854, align 16, !tbaa !14
  %891 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %869, <4 x float> %890, <4 x float> %889)
  %892 = load <4 x float>, ptr %855, align 8, !tbaa !14
  %893 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %872, <4 x float> %892, <4 x float> %891)
  %894 = shufflevector <4 x float> %842, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %895 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %894, <4 x float> %893, <4 x float> %885)
  %896 = load <4 x float>, ptr %857, align 16, !tbaa !14
  %897 = load <4 x float>, ptr %858, align 8, !tbaa !14
  %898 = fmul <4 x float> %864, %897
  %899 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %866, <4 x float> %896, <4 x float> %898)
  %900 = load <4 x float>, ptr %859, align 16, !tbaa !14
  %901 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %869, <4 x float> %900, <4 x float> %899)
  %902 = load <4 x float>, ptr %860, align 8, !tbaa !14
  %903 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %872, <4 x float> %902, <4 x float> %901)
  %904 = shufflevector <4 x float> %856, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %905 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %904, <4 x float> %903, <4 x float> %895)
  store <4 x float> %905, ptr %861, align 8, !tbaa !14
  br label %906

906:                                              ; preds = %820, %835
  %907 = phi i32 [ 1, %835 ], [ 0, %820 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #21
  br label %908

908:                                              ; preds = %809, %461, %244, %223, %106, %91, %39, %906, %818, %807, %464, %459, %432, %319, %104
  %909 = phi i32 [ 1, %818 ], [ %808, %807 ], [ 1, %464 ], [ %460, %459 ], [ %433, %432 ], [ 1, %319 ], [ %907, %906 ], [ 1, %104 ], [ 1, %91 ], [ 0, %39 ], [ 1, %223 ], [ 0, %106 ], [ 0, %244 ], [ 0, %461 ], [ 0, %809 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 896, ptr nonnull %8) #21
  ret i32 %909
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @AlphaBlendMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #11 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !168
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  store float 1.000000e+00, ptr %4, align 4, !tbaa !14
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %11 = load <4 x i16>, ptr %1, align 2, !tbaa !56
  %12 = uitofp <4 x i16> %11 to <4 x float>
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %13, ptr %10, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float 0.000000e+00, ptr %14, align 8, !tbaa !297
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !31
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %23, label %18

18:                                               ; preds = %9
  %19 = load i32, ptr %0, align 8, !tbaa !314
  %20 = icmp eq i32 %19, 2
  %21 = icmp ne ptr %2, null
  %22 = and i1 %21, %20
  br i1 %22, label %25, label %69

23:                                               ; preds = %9
  %24 = icmp eq ptr %2, null
  br i1 %24, label %69, label %25

25:                                               ; preds = %23, %18
  %26 = load i16, ptr %2, align 2, !tbaa !56
  %27 = uitofp i16 %26 to float
  store float %27, ptr %14, align 8, !tbaa !297
  br label %69

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %30 = load i16, ptr %29, align 2, !tbaa !43
  %31 = xor i16 %30, -1
  %32 = uitofp i16 %31 to double
  %33 = fmul double %32, 0x3EF0001000100010
  %34 = fptrunc double %33 to float
  store float %34, ptr %4, align 4, !tbaa !14
  %35 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %36 = load i16, ptr %35, align 2, !tbaa !40
  %37 = uitofp i16 %36 to float
  %38 = fmul float %34, %37
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  store float %38, ptr %39, align 8, !tbaa !298
  %40 = load float, ptr %4, align 4, !tbaa !14
  %41 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %42 = load i16, ptr %41, align 2, !tbaa !39
  %43 = uitofp i16 %42 to float
  %44 = fmul float %40, %43
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 6
  store float %44, ptr %45, align 4, !tbaa !312
  %46 = load float, ptr %4, align 4, !tbaa !14
  %47 = load i16, ptr %1, align 2, !tbaa !38
  %48 = uitofp i16 %47 to float
  %49 = fmul float %46, %48
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 7
  store float %49, ptr %50, align 8, !tbaa !302
  %51 = uitofp i16 %30 to float
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 8
  store float %51, ptr %52, align 4, !tbaa !299
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float 0.000000e+00, ptr %53, align 8, !tbaa !297
  %54 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !31
  %56 = icmp eq i32 %55, 12
  br i1 %56, label %62, label %57

57:                                               ; preds = %28
  %58 = load i32, ptr %0, align 8, !tbaa !314
  %59 = icmp eq i32 %58, 2
  %60 = icmp ne ptr %2, null
  %61 = and i1 %60, %59
  br i1 %61, label %64, label %69

62:                                               ; preds = %28
  %63 = icmp eq ptr %2, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %57, %62
  %65 = load float, ptr %4, align 4, !tbaa !14
  %66 = load i16, ptr %2, align 2, !tbaa !56
  %67 = uitofp i16 %66 to float
  %68 = fmul float %65, %67
  store float %68, ptr %53, align 8, !tbaa !297
  br label %69

69:                                               ; preds = %23, %18, %25, %64, %62, %57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #12 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !56
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !31
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !56
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !297
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @CatromWeights(float noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #14 {
  %3 = fsub float 1.000000e+00, %0
  %4 = fmul float %0, -5.000000e-01
  %5 = fmul float %4, %3
  %6 = fmul float %3, %5
  store float %6, ptr %1, align 4, !tbaa !14
  %7 = fmul float %5, %0
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float %7, ptr %8, align 4, !tbaa !14
  %9 = fsub float %7, %6
  %10 = fsub float %3, %6
  %11 = fadd float %10, %9
  %12 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  store float %11, ptr %12, align 4, !tbaa !14
  %13 = fsub float %0, %7
  %14 = fsub float %13, %9
  %15 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  store float %14, ptr %15, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare ptr @ExcerptImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc float @MagickPixelLuma(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !164
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !298
  switch i32 %3, label %18 [
    i32 2, label %33
    i32 13, label %6
  ]

6:                                                ; preds = %1
  %7 = fpext float %5 to double
  %8 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %9 = load float, ptr %8, align 4, !tbaa !312
  %10 = fpext float %9 to double
  %11 = fmul double %10, 0x3FE6E29307AF20EA
  %12 = tail call double @llvm.fmuladd.f64(double %7, double 2.126560e-01, double %11)
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !302
  %15 = fpext float %14 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 7.218600e-02, double %12)
  %17 = fptrunc double %16 to float
  br label %33

18:                                               ; preds = %1
  %19 = tail call float @EncodePixelGamma(float noundef %5) #27
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %21 = load float, ptr %20, align 4, !tbaa !312
  %22 = tail call float @EncodePixelGamma(float noundef %21) #27
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %24 = load float, ptr %23, align 8, !tbaa !302
  %25 = tail call float @EncodePixelGamma(float noundef %24) #27
  %26 = fpext float %19 to double
  %27 = fpext float %22 to double
  %28 = fmul double %27, 0x3FE6E29307AF20EA
  %29 = tail call double @llvm.fmuladd.f64(double %26, double 2.126560e-01, double %28)
  %30 = fpext float %25 to double
  %31 = tail call double @llvm.fmuladd.f64(double %30, double 7.218600e-02, double %29)
  %32 = fptrunc double %31 to float
  br label %33

33:                                               ; preds = %1, %18, %6
  %34 = phi float [ %17, %6 ], [ %32, %18 ], [ %5, %1 ]
  ret float %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc double @MeshInterpolate(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #15 {
  %5 = load double, ptr %0, align 8, !tbaa !309
  %6 = getelementptr inbounds %struct._PointInfo, ptr %0, i64 0, i32 1
  %7 = load double, ptr %6, align 8, !tbaa !311
  %8 = fmul double %7, %3
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %2, double %8)
  %10 = fsub double 1.000000e+00, %5
  %11 = fsub double %10, %7
  %12 = tail call double @llvm.fmuladd.f64(double %11, double %1, double %9)
  ret double %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @SplineWeights(float noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #14 {
  %3 = fsub float 1.000000e+00, %0
  %4 = fmul float %0, 0x3FC5555560000000
  %5 = fmul float %4, %0
  %6 = fmul float %5, %0
  %7 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  store float %6, ptr %7, align 4, !tbaa !14
  %8 = fmul float %3, 0x3FC5555560000000
  %9 = fmul float %3, %8
  %10 = fmul float %3, %9
  store float %10, ptr %1, align 4, !tbaa !14
  %11 = fsub float %6, %10
  %12 = fsub float %3, %10
  %13 = fadd float %12, %11
  %14 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  store float %13, ptr %14, align 4, !tbaa !14
  %15 = fsub float %0, %6
  %16 = fsub float %15, %11
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  store float %16, ptr %17, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare i64 @div(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #12 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #12 {
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
define internal fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %0) unnamed_addr #12 {
  %2 = zext i16 %0 to i32
  %3 = mul nuw i32 %2, 65537
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @GetAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = zext i8 %0 to i16
  %3 = mul nuw i16 %2, 257
  ret i16 %3
}

; Function Attrs: optsize
declare i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleLongToQuantum(i32 noundef %0) unnamed_addr #12 {
  %2 = zext i32 %0 to i64
  %3 = add nuw nsw i64 %2, 32768
  %4 = udiv i64 %3, 65537
  %5 = trunc i64 %4 to i16
  ret i16 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { hot mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind optsize allocsize(0,1) }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind optsize willreturn memory(none) }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize willreturn memory(read) }
attributes #27 = { hot optsize }
attributes #28 = { hot nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 16, i64 8, !10, i64 24, i64 8, !12, i64 32, i64 4, !14, i64 36, i64 4, !14, i64 40, i64 4, !14, i64 44, i64 4, !14, i64 48, i64 4, !14}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!17, !6, i64 12976}
!17 = !{!"_Image", !6, i64 0, !6, i64 4, !6, i64 8, !13, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !18, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !11, i64 104, !21, i64 112, !6, i64 208, !18, i64 216, !6, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !13, i64 256, !11, i64 264, !11, i64 272, !23, i64 280, !23, i64 312, !23, i64 344, !11, i64 376, !11, i64 384, !11, i64 392, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !18, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !24, i64 480, !25, i64 504, !18, i64 568, !18, i64 576, !18, i64 584, !18, i64 592, !18, i64 600, !18, i64 608, !7, i64 616, !7, i64 4712, !7, i64 8808, !13, i64 12904, !13, i64 12912, !27, i64 12920, !6, i64 12976, !13, i64 12984, !18, i64 12992, !28, i64 13000, !28, i64 13032, !18, i64 13064, !13, i64 13072, !13, i64 13080, !18, i64 13088, !18, i64 13096, !18, i64 13104, !6, i64 13112, !6, i64 13116, !19, i64 13120, !18, i64 13128, !23, i64 13136, !18, i64 13168, !18, i64 13176, !6, i64 13184, !6, i64 13188, !29, i64 13192, !6, i64 13200, !13, i64 13208, !13, i64 13216, !6, i64 13224, !13, i64 13232}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_PixelPacket", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6}
!20 = !{!"short", !7, i64 0}
!21 = !{!"_ChromaticityInfo", !22, i64 0, !22, i64 24, !22, i64 48, !22, i64 72}
!22 = !{!"_PrimaryInfo", !11, i64 0, !11, i64 8, !11, i64 16}
!23 = !{!"_RectangleInfo", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!24 = !{!"_ErrorInfo", !11, i64 0, !11, i64 8, !11, i64 16}
!25 = !{!"_TimerInfo", !26, i64 0, !26, i64 24, !6, i64 48, !13, i64 56}
!26 = !{!"_Timer", !11, i64 0, !11, i64 8, !11, i64 16}
!27 = !{!"_ExceptionInfo", !6, i64 0, !6, i64 4, !18, i64 8, !18, i64 16, !18, i64 24, !6, i64 32, !18, i64 40, !13, i64 48}
!28 = !{!"_ProfileInfo", !18, i64 0, !13, i64 8, !18, i64 16, !13, i64 24}
!29 = !{!"long long", !7, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{!17, !6, i64 4}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!23, !13, i64 0}
!35 = !{!23, !13, i64 8}
!36 = !{!23, !13, i64 16}
!37 = !{!23, !13, i64 24}
!38 = !{!19, !20, i64 0}
!39 = !{!19, !20, i64 2}
!40 = !{!19, !20, i64 4}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !33}
!43 = !{!19, !20, i64 6}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !33}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !33}
!56 = !{!20, !20, i64 0}
!57 = distinct !{!57, !33}
!58 = distinct !{!58, !33}
!59 = distinct !{!59, !33}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !33}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !33}
!65 = distinct !{!65, !33}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = distinct !{!74, !33}
!75 = distinct !{!75, !33}
!76 = distinct !{!76, !33}
!77 = distinct !{!77, !33}
!78 = distinct !{!78, !33}
!79 = distinct !{!79, !33}
!80 = distinct !{!80, !33}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = distinct !{!95, !33}
!96 = distinct !{!96, !33}
!97 = distinct !{!97, !33}
!98 = distinct !{!98, !33}
!99 = distinct !{!99, !33}
!100 = distinct !{!100, !33}
!101 = distinct !{!101, !33}
!102 = distinct !{!102, !33}
!103 = distinct !{!103, !33}
!104 = distinct !{!104, !33}
!105 = distinct !{!105, !33}
!106 = distinct !{!106, !33}
!107 = distinct !{!107, !33}
!108 = distinct !{!108, !33}
!109 = distinct !{!109, !33}
!110 = distinct !{!110, !33}
!111 = distinct !{!111, !33}
!112 = distinct !{!112, !33}
!113 = distinct !{!113, !33}
!114 = distinct !{!114, !33}
!115 = distinct !{!115, !33}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33}
!127 = distinct !{!127, !33}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, !33}
!130 = distinct !{!130, !33}
!131 = distinct !{!131, !33}
!132 = distinct !{!132, !33}
!133 = distinct !{!133, !33}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = distinct !{!138, !33}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !33}
!142 = distinct !{!142, !33}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = distinct !{!158, !33}
!159 = distinct !{!159, !33}
!160 = distinct !{!160, !33}
!161 = distinct !{!161, !33}
!162 = !{!163, !6, i64 0}
!163 = !{!"_MagickPixelPacket", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !13, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48}
!164 = !{!163, !6, i64 4}
!165 = !{!163, !6, i64 8}
!166 = !{!163, !11, i64 16}
!167 = !{!163, !13, i64 24}
!168 = !{!17, !6, i64 32}
!169 = !{!17, !13, i64 56}
!170 = !{!17, !11, i64 392}
!171 = !{!17, !6, i64 13224}
!172 = distinct !{!172, !33}
!173 = distinct !{!173, !33}
!174 = distinct !{!174, !33}
!175 = distinct !{!175, !33}
!176 = distinct !{!176, !33}
!177 = distinct !{!177, !33}
!178 = distinct !{!178, !33}
!179 = distinct !{!179, !33}
!180 = distinct !{!180, !33}
!181 = distinct !{!181, !33}
!182 = distinct !{!182, !33}
!183 = distinct !{!183, !33}
!184 = distinct !{!184, !33}
!185 = distinct !{!185, !33}
!186 = distinct !{!186, !33}
!187 = distinct !{!187, !33}
!188 = distinct !{!188, !33}
!189 = distinct !{!189, !33}
!190 = distinct !{!190, !33}
!191 = distinct !{!191, !33}
!192 = distinct !{!192, !33}
!193 = distinct !{!193, !33}
!194 = distinct !{!194, !33}
!195 = distinct !{!195, !33}
!196 = distinct !{!196, !33}
!197 = distinct !{!197, !33}
!198 = distinct !{!198, !33}
!199 = distinct !{!199, !33}
!200 = distinct !{!200, !33}
!201 = distinct !{!201, !33}
!202 = distinct !{!202, !33}
!203 = distinct !{!203, !33}
!204 = distinct !{!204, !33}
!205 = distinct !{!205, !33}
!206 = distinct !{!206, !33}
!207 = distinct !{!207, !33}
!208 = distinct !{!208, !33}
!209 = distinct !{!209, !33}
!210 = distinct !{!210, !33}
!211 = distinct !{!211, !33}
!212 = distinct !{!212, !33}
!213 = distinct !{!213, !33}
!214 = distinct !{!214, !33}
!215 = distinct !{!215, !33}
!216 = distinct !{!216, !33}
!217 = distinct !{!217, !33}
!218 = distinct !{!218, !33}
!219 = distinct !{!219, !33}
!220 = distinct !{!220, !33}
!221 = distinct !{!221, !33}
!222 = distinct !{!222, !33}
!223 = distinct !{!223, !33}
!224 = distinct !{!224, !33}
!225 = distinct !{!225, !33}
!226 = distinct !{!226, !33}
!227 = distinct !{!227, !33}
!228 = distinct !{!228, !33}
!229 = distinct !{!229, !33}
!230 = distinct !{!230, !33}
!231 = distinct !{!231, !33}
!232 = distinct !{!232, !33}
!233 = distinct !{!233, !33}
!234 = distinct !{!234, !33}
!235 = distinct !{!235, !33}
!236 = distinct !{!236, !33}
!237 = distinct !{!237, !33}
!238 = distinct !{!238, !33}
!239 = distinct !{!239, !33}
!240 = distinct !{!240, !33}
!241 = distinct !{!241, !33}
!242 = distinct !{!242, !33}
!243 = distinct !{!243, !33}
!244 = distinct !{!244, !33}
!245 = distinct !{!245, !33}
!246 = distinct !{!246, !33}
!247 = distinct !{!247, !33}
!248 = distinct !{!248, !33}
!249 = distinct !{!249, !33}
!250 = distinct !{!250, !33}
!251 = distinct !{!251, !33}
!252 = distinct !{!252, !33}
!253 = distinct !{!253, !33}
!254 = distinct !{!254, !33}
!255 = distinct !{!255, !33}
!256 = distinct !{!256, !33}
!257 = distinct !{!257, !33}
!258 = distinct !{!258, !33}
!259 = distinct !{!259, !33}
!260 = distinct !{!260, !33}
!261 = distinct !{!261, !33}
!262 = distinct !{!262, !33}
!263 = distinct !{!263, !33}
!264 = distinct !{!264, !33}
!265 = distinct !{!265, !33}
!266 = distinct !{!266, !33}
!267 = distinct !{!267, !33}
!268 = distinct !{!268, !33}
!269 = distinct !{!269, !33}
!270 = distinct !{!270, !33}
!271 = distinct !{!271, !33}
!272 = distinct !{!272, !33}
!273 = distinct !{!273, !33}
!274 = distinct !{!274, !33}
!275 = distinct !{!275, !33}
!276 = distinct !{!276, !33}
!277 = distinct !{!277, !33}
!278 = distinct !{!278, !33}
!279 = distinct !{!279, !33}
!280 = distinct !{!280, !33}
!281 = distinct !{!281, !33}
!282 = distinct !{!282, !33}
!283 = distinct !{!283, !33}
!284 = distinct !{!284, !33}
!285 = distinct !{!285, !33}
!286 = distinct !{!286, !33}
!287 = distinct !{!287, !33}
!288 = distinct !{!288, !33}
!289 = distinct !{!289, !33}
!290 = distinct !{!290, !33}
!291 = distinct !{!291, !33}
!292 = distinct !{!292, !33}
!293 = distinct !{!293, !33}
!294 = distinct !{!294, !33}
!295 = distinct !{!295, !33}
!296 = !{!17, !6, i64 13112}
!297 = !{!163, !15, i64 48}
!298 = !{!163, !15, i64 32}
!299 = !{!163, !15, i64 44}
!300 = distinct !{!300, !33}
!301 = distinct !{!301, !33}
!302 = !{!163, !15, i64 40}
!303 = distinct !{!303, !33}
!304 = distinct !{!304, !33}
!305 = distinct !{!305, !33}
!306 = !{!17, !6, i64 400}
!307 = !{!17, !11, i64 384}
!308 = distinct !{!308, !33}
!309 = !{!310, !11, i64 0}
!310 = !{!"_PointInfo", !11, i64 0, !11, i64 8}
!311 = !{!310, !11, i64 8}
!312 = !{!163, !15, i64 36}
!313 = distinct !{!313, !33}
!314 = !{!17, !6, i64 0}
