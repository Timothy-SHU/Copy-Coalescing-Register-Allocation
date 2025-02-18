; ModuleID = 'magick/pixel.c'
source_filename = "magick/pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @CloneMagickPixelPacket(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(56) ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 56) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #19
  call void @GetExceptionInfo(ptr noundef nonnull %2) #19
  %6 = tail call ptr @__errno_location() #20
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #19
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 101, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #19
  %10 = call ptr @DestroyString(ptr noundef %8) #19
  call void @CatchException(ptr noundef nonnull %2) #19
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #19
  call void @MagickCoreTerminus() #19
  call void @_exit(i32 noundef 1) #21
  unreachable

12:                                               ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !38
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: hot mustprogress nofree nounwind willreturn uwtable
define dso_local float @DecodePixelGamma(float noundef %0) local_unnamed_addr #7 {
  %2 = alloca i32, align 4
  %3 = fpext float %0 to double
  %4 = fcmp ugt double %3, 0x40A4B58CE259D3F7
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = fdiv float %0, 0x4029D70A40000000
  br label %54

7:                                                ; preds = %1
  %8 = tail call double @llvm.fmuladd.f64(double %3, double 0x3EF0001000100010, double 5.500000e-02)
  %9 = fdiv double %8, 1.055000e+00
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %10 = call double @frexp(double noundef %9, ptr noundef nonnull %2) #19
  %11 = load i32, ptr %2, align 4, !tbaa !34
  %12 = add nsw i32 %11, -1
  %13 = tail call i64 @div(i32 noundef %12, i32 noundef 5) #20
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i64 %13, 0
  %16 = ashr i64 %13, 63
  %17 = trunc i64 %16 to i32
  %18 = add nsw i32 %17, %14
  %19 = tail call double @llvm.fmuladd.f64(double %10, double 4.000000e+00, double -3.000000e+00)
  %20 = fmul double %19, 2.000000e+00
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %19, double -1.000000e+00)
  %22 = fneg double %19
  %23 = tail call double @llvm.fmuladd.f64(double %20, double %21, double %22)
  %24 = fneg double %21
  %25 = tail call double @llvm.fmuladd.f64(double %20, double %23, double %24)
  %26 = fneg double %23
  %27 = tail call double @llvm.fmuladd.f64(double %20, double %25, double %26)
  %28 = fneg double %25
  %29 = tail call double @llvm.fmuladd.f64(double %20, double %27, double %28)
  %30 = fneg double %27
  %31 = tail call double @llvm.fmuladd.f64(double %20, double %29, double %30)
  %32 = fneg double %29
  %33 = tail call double @llvm.fmuladd.f64(double %20, double %31, double %32)
  %34 = fmul double %19, 0x3FEA412D3E228490
  %35 = fadd double %34, 0x3FFCAB00D9F35BCA
  %36 = tail call double @llvm.fmuladd.f64(double %21, double 0x3F9C5BD7A2F5A808, double %35)
  %37 = tail call double @llvm.fmuladd.f64(double %23, double 0xBF4EE1C9AFEBFD20, double %36)
  %38 = tail call double @llvm.fmuladd.f64(double %25, double 0x3F10DED3C62D07CA, double %37)
  %39 = tail call double @llvm.fmuladd.f64(double %27, double 0xBED8006C750E2F47, double %38)
  %40 = tail call double @llvm.fmuladd.f64(double %29, double 0x3EA3B81AB7B960D7, double %39)
  %41 = tail call double @llvm.fmuladd.f64(double %31, double 0xBE71C119C74EC2E0, double %40)
  %42 = tail call double @llvm.fmuladd.f64(double %33, double 0x3E4108D764FFB3F2, double %41)
  %43 = add i64 %13, 21474836480
  %44 = select i1 %15, i64 %43, i64 %13
  %45 = ashr i64 %44, 32
  %46 = getelementptr inbounds [5 x double], ptr @DecodeGamma.powers_of_two, i64 0, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !39
  %48 = fmul double %47, %42
  %49 = mul nsw i32 %18, 7
  %50 = tail call double @ldexp(double noundef %48, i32 noundef %49) #19
  %51 = fmul double %9, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  %52 = fmul double %51, 6.553500e+04
  %53 = fptrunc double %52 to float
  br label %54

54:                                               ; preds = %7, %5
  %55 = phi float [ %6, %5 ], [ %53, %7 ]
  ret float %55
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: hot mustprogress nofree nounwind willreturn uwtable
define dso_local float @EncodePixelGamma(float noundef %0) local_unnamed_addr #7 {
  %2 = alloca i32, align 4
  %3 = fpext float %0 to double
  %4 = fcmp ugt double %3, 0x4069A5632CEAE209
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = fmul float %0, 0x4029D70A40000000
  br label %53

7:                                                ; preds = %1
  %8 = fmul double %3, 0x3EF0001000100010
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %9 = call double @frexp(double noundef %8, ptr noundef nonnull %2) #19
  %10 = load i32, ptr %2, align 4, !tbaa !34
  %11 = add nsw i32 %10, -1
  %12 = tail call i64 @div(i32 noundef %11, i32 noundef 12) #20
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i64 %12, 0
  %15 = ashr i64 %12, 63
  %16 = trunc i64 %15 to i32
  %17 = add nsw i32 %16, %13
  %18 = tail call double @llvm.fmuladd.f64(double %9, double 4.000000e+00, double -3.000000e+00)
  %19 = fmul double %18, 2.000000e+00
  %20 = tail call double @llvm.fmuladd.f64(double %19, double %18, double -1.000000e+00)
  %21 = fneg double %18
  %22 = tail call double @llvm.fmuladd.f64(double %19, double %20, double %21)
  %23 = fneg double %20
  %24 = tail call double @llvm.fmuladd.f64(double %19, double %22, double %23)
  %25 = fneg double %22
  %26 = tail call double @llvm.fmuladd.f64(double %19, double %24, double %25)
  %27 = fneg double %24
  %28 = tail call double @llvm.fmuladd.f64(double %19, double %26, double %27)
  %29 = fneg double %26
  %30 = tail call double @llvm.fmuladd.f64(double %19, double %28, double %29)
  %31 = fneg double %28
  %32 = tail call double @llvm.fmuladd.f64(double %19, double %30, double %31)
  %33 = fmul double %18, 0x3FC555098946F40B
  %34 = fadd double %33, 0x3FF2D028A820DDB5
  %35 = tail call double @llvm.fmuladd.f64(double %20, double 0xBF8107B61B699325, double %34)
  %36 = tail call double @llvm.fmuladd.f64(double %22, double 0x3F48A33981B1F362, double %35)
  %37 = tail call double @llvm.fmuladd.f64(double %24, double 0xBF15D22760B88BEF, double %36)
  %38 = tail call double @llvm.fmuladd.f64(double %26, double 0x3EE573C3D60EF8DD, double %37)
  %39 = tail call double @llvm.fmuladd.f64(double %28, double 0xBEB67B74DD100F57, double %38)
  %40 = tail call double @llvm.fmuladd.f64(double %30, double 0x3E889B50DFE1182E, double %39)
  %41 = tail call double @llvm.fmuladd.f64(double %32, double 0xBE5BC9745AECD534, double %40)
  %42 = add i64 %12, 51539607552
  %43 = select i1 %14, i64 %42, i64 %12
  %44 = ashr i64 %43, 32
  %45 = getelementptr inbounds [12 x double], ptr @EncodeGamma.powers_of_two, i64 0, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !39
  %47 = fmul double %46, %41
  %48 = mul nsw i32 %17, 5
  %49 = tail call double @ldexp(double noundef %47, i32 noundef %48) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  %50 = tail call double @llvm.fmuladd.f64(double %49, double 1.055000e+00, double -5.500000e-02)
  %51 = fmul double %50, 6.553500e+04
  %52 = fptrunc double %51 to float
  br label %53

53:                                               ; preds = %7, %5
  %54 = phi float [ %6, %5 ], [ %52, %7 ]
  ret float %54
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ExportImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef writeonly %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !45
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1845, ptr noundef nonnull @.str.4, ptr noundef nonnull %14) #19
  br label %16

16:                                               ; preds = %13, %9
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22
  %18 = tail call ptr @AcquireQuantumMemory(i64 noundef %17, i64 noundef 4) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = icmp sgt i64 %17, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %30

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1850, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %28) #19
  br label %2643

30:                                               ; preds = %22, %74
  %31 = phi i64 [ 0, %22 ], [ %75, %74 ]
  %32 = getelementptr inbounds i8, ptr %5, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !59
  switch i8 %33, label %68 [
    i8 65, label %71
    i8 97, label %71
    i8 66, label %34
    i8 98, label %34
    i8 67, label %35
    i8 99, label %35
    i8 103, label %42
    i8 71, label %42
    i8 73, label %43
    i8 105, label %43
    i8 75, label %44
    i8 107, label %44
    i8 77, label %51
    i8 109, label %51
    i8 111, label %58
    i8 79, label %58
    i8 80, label %59
    i8 112, label %59
    i8 82, label %60
    i8 114, label %60
    i8 89, label %61
    i8 121, label %61
  ]

34:                                               ; preds = %30, %30
  br label %71

35:                                               ; preds = %30, %30
  %36 = getelementptr inbounds i32, ptr %18, i64 %31
  store i32 6, ptr %36, align 4, !tbaa !34
  %37 = load i32, ptr %26, align 4, !tbaa !60
  %38 = icmp eq i32 %37, 12
  br i1 %38, label %74, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @RelinquishMagickMemory(ptr noundef %18) #19
  %41 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1877, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %5) #19
  br label %2643

42:                                               ; preds = %30, %30
  br label %71

43:                                               ; preds = %30, %30
  br label %71

44:                                               ; preds = %30, %30
  %45 = getelementptr inbounds i32, ptr %18, i64 %31
  store i32 2, ptr %45, align 4, !tbaa !34
  %46 = load i32, ptr %25, align 4, !tbaa !60
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %74, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @RelinquishMagickMemory(ptr noundef %18) #19
  %50 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1900, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %5) #19
  br label %2643

51:                                               ; preds = %30, %30
  %52 = getelementptr inbounds i32, ptr %18, i64 %31
  store i32 12, ptr %52, align 4, !tbaa !34
  %53 = load i32, ptr %24, align 4, !tbaa !60
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %74, label %55

55:                                               ; preds = %51
  %56 = tail call ptr @RelinquishMagickMemory(ptr noundef %18) #19
  %57 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1911, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %5) #19
  br label %2643

58:                                               ; preds = %30, %30
  br label %71

59:                                               ; preds = %30, %30
  br label %71

60:                                               ; preds = %30, %30
  br label %71

61:                                               ; preds = %30, %30
  %62 = getelementptr inbounds i32, ptr %18, i64 %31
  store i32 19, ptr %62, align 4, !tbaa !34
  %63 = load i32, ptr %23, align 4, !tbaa !60
  %64 = icmp eq i32 %63, 12
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @RelinquishMagickMemory(ptr noundef %18) #19
  %67 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1940, i32 noundef 465, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %5) #19
  br label %2643

68:                                               ; preds = %30
  %69 = tail call ptr @RelinquishMagickMemory(ptr noundef %18) #19
  %70 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1947, i32 noundef 410, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %5) #19
  br label %2643

71:                                               ; preds = %30, %30, %60, %59, %58, %43, %42, %34
  %72 = phi i32 [ 3, %34 ], [ 9, %42 ], [ 11, %43 ], [ 13, %58 ], [ 0, %59 ], [ 14, %60 ], [ 1, %30 ], [ 1, %30 ]
  %73 = getelementptr inbounds i32, ptr %18, i64 %31
  store i32 %72, ptr %73, align 4, !tbaa !34
  br label %74

74:                                               ; preds = %71, %35, %44, %51, %61
  %75 = add nuw nsw i64 %31, 1
  %76 = icmp eq i64 %75, %17
  br i1 %76, label %77, label %30, !llvm.loop !61

77:                                               ; preds = %74, %20
  switch i32 %6, label %2637 [
    i32 1, label %78
    i32 2, label %525
    i32 3, label %885
    i32 4, label %1273
    i32 5, label %1648
    i32 6, label %2007
    i32 7, label %2322
  ]

78:                                               ; preds = %77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %79 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %129

81:                                               ; preds = %78
  %82 = icmp sgt i64 %4, 0
  br i1 %82, label %83, label %2640

83:                                               ; preds = %81
  %84 = icmp sgt i64 %3, 0
  br label %85

85:                                               ; preds = %83, %125
  %86 = phi i64 [ 0, %83 ], [ %127, %125 ]
  %87 = phi ptr [ %7, %83 ], [ %126, %125 ]
  %88 = add nsw i64 %86, %2
  %89 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %88, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %90 = icmp eq ptr %89, null
  br i1 %90, label %2640, label %91

91:                                               ; preds = %85
  br i1 %84, label %92, label %125

92:                                               ; preds = %91, %92
  %93 = phi ptr [ %122, %92 ], [ %89, %91 ]
  %94 = phi ptr [ %121, %92 ], [ %87, %91 ]
  %95 = phi i64 [ %123, %92 ], [ 0, %91 ]
  %96 = load i16, ptr %93, align 2, !tbaa !67
  %97 = zext i16 %96 to i64
  %98 = add nuw nsw i64 %97, 128
  %99 = lshr i64 %98, 8
  %100 = sub nsw i64 %98, %99
  %101 = lshr i64 %100, 8
  %102 = trunc i64 %101 to i8
  %103 = getelementptr inbounds i8, ptr %94, i64 1
  store i8 %102, ptr %94, align 1, !tbaa !59, !noalias !64
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 1
  %105 = load i16, ptr %104, align 2, !tbaa !68
  %106 = zext i16 %105 to i64
  %107 = add nuw nsw i64 %106, 128
  %108 = lshr i64 %107, 8
  %109 = sub nsw i64 %107, %108
  %110 = lshr i64 %109, 8
  %111 = trunc i64 %110 to i8
  %112 = getelementptr inbounds i8, ptr %94, i64 2
  store i8 %111, ptr %103, align 1, !tbaa !59, !noalias !64
  %113 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 0, i32 2
  %114 = load i16, ptr %113, align 2, !tbaa !69
  %115 = zext i16 %114 to i64
  %116 = add nuw nsw i64 %115, 128
  %117 = lshr i64 %116, 8
  %118 = sub nsw i64 %116, %117
  %119 = lshr i64 %118, 8
  %120 = trunc i64 %119 to i8
  %121 = getelementptr inbounds i8, ptr %94, i64 3
  store i8 %120, ptr %112, align 1, !tbaa !59, !noalias !64
  %122 = getelementptr inbounds %struct._PixelPacket, ptr %93, i64 1
  %123 = add nuw nsw i64 %95, 1
  %124 = icmp eq i64 %123, %3
  br i1 %124, label %125, label %92, !llvm.loop !70

125:                                              ; preds = %92, %91
  %126 = phi ptr [ %87, %91 ], [ %121, %92 ]
  %127 = add nuw nsw i64 %86, 1
  %128 = icmp eq i64 %127, %4
  br i1 %128, label %2640, label %85, !llvm.loop !71

129:                                              ; preds = %78
  %130 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %190

132:                                              ; preds = %129
  %133 = icmp sgt i64 %4, 0
  br i1 %133, label %134, label %2640

134:                                              ; preds = %132
  %135 = icmp sgt i64 %3, 0
  br label %136

136:                                              ; preds = %134, %186
  %137 = phi i64 [ 0, %134 ], [ %188, %186 ]
  %138 = phi ptr [ %7, %134 ], [ %187, %186 ]
  %139 = add nsw i64 %137, %2
  %140 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %139, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %141 = icmp eq ptr %140, null
  br i1 %141, label %2640, label %142

142:                                              ; preds = %136
  br i1 %135, label %143, label %186

143:                                              ; preds = %142, %143
  %144 = phi ptr [ %183, %143 ], [ %140, %142 ]
  %145 = phi ptr [ %182, %143 ], [ %138, %142 ]
  %146 = phi i64 [ %184, %143 ], [ 0, %142 ]
  %147 = load i16, ptr %144, align 2, !tbaa !67
  %148 = zext i16 %147 to i64
  %149 = add nuw nsw i64 %148, 128
  %150 = lshr i64 %149, 8
  %151 = sub nsw i64 %149, %150
  %152 = lshr i64 %151, 8
  %153 = trunc i64 %152 to i8
  %154 = getelementptr inbounds i8, ptr %145, i64 1
  store i8 %153, ptr %145, align 1, !tbaa !59, !noalias !64
  %155 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 0, i32 1
  %156 = load i16, ptr %155, align 2, !tbaa !68
  %157 = zext i16 %156 to i64
  %158 = add nuw nsw i64 %157, 128
  %159 = lshr i64 %158, 8
  %160 = sub nsw i64 %158, %159
  %161 = lshr i64 %160, 8
  %162 = trunc i64 %161 to i8
  %163 = getelementptr inbounds i8, ptr %145, i64 2
  store i8 %162, ptr %154, align 1, !tbaa !59, !noalias !64
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 0, i32 2
  %165 = load i16, ptr %164, align 2, !tbaa !69
  %166 = zext i16 %165 to i64
  %167 = add nuw nsw i64 %166, 128
  %168 = lshr i64 %167, 8
  %169 = sub nsw i64 %167, %168
  %170 = lshr i64 %169, 8
  %171 = trunc i64 %170 to i8
  %172 = getelementptr inbounds i8, ptr %145, i64 3
  store i8 %171, ptr %163, align 1, !tbaa !59, !noalias !64
  %173 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 0, i32 3
  %174 = load i16, ptr %173, align 2, !tbaa !72
  %175 = xor i16 %174, -1
  %176 = zext i16 %175 to i64
  %177 = add nuw nsw i64 %176, 128
  %178 = lshr i64 %177, 8
  %179 = sub nsw i64 %177, %178
  %180 = lshr i64 %179, 8
  %181 = trunc i64 %180 to i8
  %182 = getelementptr inbounds i8, ptr %145, i64 4
  store i8 %181, ptr %172, align 1, !tbaa !59, !noalias !64
  %183 = getelementptr inbounds %struct._PixelPacket, ptr %144, i64 1
  %184 = add nuw nsw i64 %146, 1
  %185 = icmp eq i64 %184, %3
  br i1 %185, label %186, label %143, !llvm.loop !73

186:                                              ; preds = %143, %142
  %187 = phi ptr [ %138, %142 ], [ %182, %143 ]
  %188 = add nuw nsw i64 %137, 1
  %189 = icmp eq i64 %188, %4
  br i1 %189, label %2640, label %136, !llvm.loop !74

190:                                              ; preds = %129
  %191 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %242

193:                                              ; preds = %190
  %194 = icmp sgt i64 %4, 0
  br i1 %194, label %195, label %2640

195:                                              ; preds = %193
  %196 = icmp sgt i64 %3, 0
  br label %197

197:                                              ; preds = %195, %238
  %198 = phi i64 [ 0, %195 ], [ %240, %238 ]
  %199 = phi ptr [ %7, %195 ], [ %239, %238 ]
  %200 = add nsw i64 %198, %2
  %201 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %200, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %202 = icmp eq ptr %201, null
  br i1 %202, label %2640, label %203

203:                                              ; preds = %197
  br i1 %196, label %204, label %238

204:                                              ; preds = %203, %204
  %205 = phi ptr [ %235, %204 ], [ %201, %203 ]
  %206 = phi ptr [ %234, %204 ], [ %199, %203 ]
  %207 = phi i64 [ %236, %204 ], [ 0, %203 ]
  %208 = load i16, ptr %205, align 2, !tbaa !67
  %209 = zext i16 %208 to i64
  %210 = add nuw nsw i64 %209, 128
  %211 = lshr i64 %210, 8
  %212 = sub nsw i64 %210, %211
  %213 = lshr i64 %212, 8
  %214 = trunc i64 %213 to i8
  %215 = getelementptr inbounds i8, ptr %206, i64 1
  store i8 %214, ptr %206, align 1, !tbaa !59, !noalias !64
  %216 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 0, i32 1
  %217 = load i16, ptr %216, align 2, !tbaa !68
  %218 = zext i16 %217 to i64
  %219 = add nuw nsw i64 %218, 128
  %220 = lshr i64 %219, 8
  %221 = sub nsw i64 %219, %220
  %222 = lshr i64 %221, 8
  %223 = trunc i64 %222 to i8
  %224 = getelementptr inbounds i8, ptr %206, i64 2
  store i8 %223, ptr %215, align 1, !tbaa !59, !noalias !64
  %225 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 0, i32 2
  %226 = load i16, ptr %225, align 2, !tbaa !69
  %227 = zext i16 %226 to i64
  %228 = add nuw nsw i64 %227, 128
  %229 = lshr i64 %228, 8
  %230 = sub nsw i64 %228, %229
  %231 = lshr i64 %230, 8
  %232 = trunc i64 %231 to i8
  %233 = getelementptr inbounds i8, ptr %206, i64 3
  store i8 %232, ptr %224, align 1, !tbaa !59, !noalias !64
  %234 = getelementptr inbounds i8, ptr %206, i64 4
  store i8 0, ptr %233, align 1, !tbaa !59, !noalias !64
  %235 = getelementptr inbounds %struct._PixelPacket, ptr %205, i64 1
  %236 = add nuw nsw i64 %207, 1
  %237 = icmp eq i64 %236, %3
  br i1 %237, label %238, label %204, !llvm.loop !75

238:                                              ; preds = %204, %203
  %239 = phi ptr [ %199, %203 ], [ %234, %204 ]
  %240 = add nuw nsw i64 %198, 1
  %241 = icmp eq i64 %240, %4
  br i1 %241, label %2640, label %197, !llvm.loop !76

242:                                              ; preds = %190
  %243 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %283

245:                                              ; preds = %242
  %246 = icmp sgt i64 %4, 0
  br i1 %246, label %247, label %2640

247:                                              ; preds = %245
  %248 = icmp sgt i64 %3, 0
  br label %249

249:                                              ; preds = %247, %279
  %250 = phi i64 [ 0, %247 ], [ %281, %279 ]
  %251 = phi ptr [ %7, %247 ], [ %280, %279 ]
  %252 = add nsw i64 %250, %2
  %253 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %252, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %254 = icmp eq ptr %253, null
  br i1 %254, label %2640, label %255

255:                                              ; preds = %249
  br i1 %248, label %256, label %279

256:                                              ; preds = %255, %267
  %257 = phi ptr [ %276, %267 ], [ %253, %255 ]
  %258 = phi ptr [ %275, %267 ], [ %251, %255 ]
  %259 = phi i64 [ %277, %267 ], [ 0, %255 ]
  %260 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %257) #23
  %261 = fcmp ugt float %260, 0.000000e+00
  br i1 %261, label %262, label %267

262:                                              ; preds = %256
  %263 = fcmp ult float %260, 6.553500e+04
  br i1 %263, label %264, label %267

264:                                              ; preds = %262
  %265 = fadd float %260, 5.000000e-01
  %266 = fptoui float %265 to i16
  br label %267

267:                                              ; preds = %264, %262, %256
  %268 = phi i16 [ %266, %264 ], [ 0, %256 ], [ -1, %262 ]
  %269 = zext i16 %268 to i64
  %270 = add nuw nsw i64 %269, 128
  %271 = lshr i64 %270, 8
  %272 = sub nsw i64 %270, %271
  %273 = lshr i64 %272, 8
  %274 = trunc i64 %273 to i8
  %275 = getelementptr inbounds i8, ptr %258, i64 1
  store i8 %274, ptr %258, align 1, !tbaa !59, !noalias !64
  %276 = getelementptr inbounds %struct._PixelPacket, ptr %257, i64 1
  %277 = add nuw nsw i64 %259, 1
  %278 = icmp eq i64 %277, %3
  br i1 %278, label %279, label %256, !llvm.loop !77

279:                                              ; preds = %267, %255
  %280 = phi ptr [ %251, %255 ], [ %275, %267 ]
  %281 = add nuw nsw i64 %250, 1
  %282 = icmp eq i64 %281, %4
  br i1 %282, label %2640, label %249, !llvm.loop !78

283:                                              ; preds = %242
  %284 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %334

286:                                              ; preds = %283
  %287 = icmp sgt i64 %4, 0
  br i1 %287, label %288, label %2640

288:                                              ; preds = %286
  %289 = icmp sgt i64 %3, 0
  br label %290

290:                                              ; preds = %288, %330
  %291 = phi i64 [ 0, %288 ], [ %332, %330 ]
  %292 = phi ptr [ %7, %288 ], [ %331, %330 ]
  %293 = add nsw i64 %291, %2
  %294 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %293, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %295 = icmp eq ptr %294, null
  br i1 %295, label %2640, label %296

296:                                              ; preds = %290
  br i1 %289, label %297, label %330

297:                                              ; preds = %296, %297
  %298 = phi ptr [ %327, %297 ], [ %294, %296 ]
  %299 = phi ptr [ %326, %297 ], [ %292, %296 ]
  %300 = phi i64 [ %328, %297 ], [ 0, %296 ]
  %301 = getelementptr inbounds %struct._PixelPacket, ptr %298, i64 0, i32 2
  %302 = load i16, ptr %301, align 2, !tbaa !69
  %303 = zext i16 %302 to i64
  %304 = add nuw nsw i64 %303, 128
  %305 = lshr i64 %304, 8
  %306 = sub nsw i64 %304, %305
  %307 = lshr i64 %306, 8
  %308 = trunc i64 %307 to i8
  %309 = getelementptr inbounds i8, ptr %299, i64 1
  store i8 %308, ptr %299, align 1, !tbaa !59, !noalias !64
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %298, i64 0, i32 1
  %311 = load i16, ptr %310, align 2, !tbaa !68
  %312 = zext i16 %311 to i64
  %313 = add nuw nsw i64 %312, 128
  %314 = lshr i64 %313, 8
  %315 = sub nsw i64 %313, %314
  %316 = lshr i64 %315, 8
  %317 = trunc i64 %316 to i8
  %318 = getelementptr inbounds i8, ptr %299, i64 2
  store i8 %317, ptr %309, align 1, !tbaa !59, !noalias !64
  %319 = load i16, ptr %298, align 2, !tbaa !67
  %320 = zext i16 %319 to i64
  %321 = add nuw nsw i64 %320, 128
  %322 = lshr i64 %321, 8
  %323 = sub nsw i64 %321, %322
  %324 = lshr i64 %323, 8
  %325 = trunc i64 %324 to i8
  %326 = getelementptr inbounds i8, ptr %299, i64 3
  store i8 %325, ptr %318, align 1, !tbaa !59, !noalias !64
  %327 = getelementptr inbounds %struct._PixelPacket, ptr %298, i64 1
  %328 = add nuw nsw i64 %300, 1
  %329 = icmp eq i64 %328, %3
  br i1 %329, label %330, label %297, !llvm.loop !79

330:                                              ; preds = %297, %296
  %331 = phi ptr [ %292, %296 ], [ %326, %297 ]
  %332 = add nuw nsw i64 %291, 1
  %333 = icmp eq i64 %332, %4
  br i1 %333, label %2640, label %290, !llvm.loop !80

334:                                              ; preds = %283
  %335 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %395

337:                                              ; preds = %334
  %338 = icmp sgt i64 %4, 0
  br i1 %338, label %339, label %2640

339:                                              ; preds = %337
  %340 = icmp sgt i64 %3, 0
  br label %341

341:                                              ; preds = %339, %391
  %342 = phi i64 [ 0, %339 ], [ %393, %391 ]
  %343 = phi ptr [ %7, %339 ], [ %392, %391 ]
  %344 = add nsw i64 %342, %2
  %345 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %344, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %346 = icmp eq ptr %345, null
  br i1 %346, label %2640, label %347

347:                                              ; preds = %341
  br i1 %340, label %348, label %391

348:                                              ; preds = %347, %348
  %349 = phi ptr [ %388, %348 ], [ %345, %347 ]
  %350 = phi ptr [ %387, %348 ], [ %343, %347 ]
  %351 = phi i64 [ %389, %348 ], [ 0, %347 ]
  %352 = getelementptr inbounds %struct._PixelPacket, ptr %349, i64 0, i32 2
  %353 = load i16, ptr %352, align 2, !tbaa !69
  %354 = zext i16 %353 to i64
  %355 = add nuw nsw i64 %354, 128
  %356 = lshr i64 %355, 8
  %357 = sub nsw i64 %355, %356
  %358 = lshr i64 %357, 8
  %359 = trunc i64 %358 to i8
  %360 = getelementptr inbounds i8, ptr %350, i64 1
  store i8 %359, ptr %350, align 1, !tbaa !59, !noalias !64
  %361 = getelementptr inbounds %struct._PixelPacket, ptr %349, i64 0, i32 1
  %362 = load i16, ptr %361, align 2, !tbaa !68
  %363 = zext i16 %362 to i64
  %364 = add nuw nsw i64 %363, 128
  %365 = lshr i64 %364, 8
  %366 = sub nsw i64 %364, %365
  %367 = lshr i64 %366, 8
  %368 = trunc i64 %367 to i8
  %369 = getelementptr inbounds i8, ptr %350, i64 2
  store i8 %368, ptr %360, align 1, !tbaa !59, !noalias !64
  %370 = load i16, ptr %349, align 2, !tbaa !67
  %371 = zext i16 %370 to i64
  %372 = add nuw nsw i64 %371, 128
  %373 = lshr i64 %372, 8
  %374 = sub nsw i64 %372, %373
  %375 = lshr i64 %374, 8
  %376 = trunc i64 %375 to i8
  %377 = getelementptr inbounds i8, ptr %350, i64 3
  store i8 %376, ptr %369, align 1, !tbaa !59, !noalias !64
  %378 = getelementptr inbounds %struct._PixelPacket, ptr %349, i64 0, i32 3
  %379 = load i16, ptr %378, align 2, !tbaa !72
  %380 = xor i16 %379, -1
  %381 = zext i16 %380 to i64
  %382 = add nuw nsw i64 %381, 128
  %383 = lshr i64 %382, 8
  %384 = sub nsw i64 %382, %383
  %385 = lshr i64 %384, 8
  %386 = trunc i64 %385 to i8
  %387 = getelementptr inbounds i8, ptr %350, i64 4
  store i8 %386, ptr %377, align 1, !tbaa !59, !noalias !64
  %388 = getelementptr inbounds %struct._PixelPacket, ptr %349, i64 1
  %389 = add nuw nsw i64 %351, 1
  %390 = icmp eq i64 %389, %3
  br i1 %390, label %391, label %348, !llvm.loop !81

391:                                              ; preds = %348, %347
  %392 = phi ptr [ %343, %347 ], [ %387, %348 ]
  %393 = add nuw nsw i64 %342, 1
  %394 = icmp eq i64 %393, %4
  br i1 %394, label %2640, label %341, !llvm.loop !82

395:                                              ; preds = %334
  %396 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %447

398:                                              ; preds = %395
  %399 = icmp sgt i64 %4, 0
  br i1 %399, label %400, label %2640

400:                                              ; preds = %398
  %401 = icmp sgt i64 %3, 0
  br label %402

402:                                              ; preds = %400, %443
  %403 = phi i64 [ 0, %400 ], [ %445, %443 ]
  %404 = phi ptr [ %7, %400 ], [ %444, %443 ]
  %405 = add nsw i64 %403, %2
  %406 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %405, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %407 = icmp eq ptr %406, null
  br i1 %407, label %2640, label %408

408:                                              ; preds = %402
  br i1 %401, label %409, label %443

409:                                              ; preds = %408, %409
  %410 = phi ptr [ %440, %409 ], [ %406, %408 ]
  %411 = phi ptr [ %439, %409 ], [ %404, %408 ]
  %412 = phi i64 [ %441, %409 ], [ 0, %408 ]
  %413 = getelementptr inbounds %struct._PixelPacket, ptr %410, i64 0, i32 2
  %414 = load i16, ptr %413, align 2, !tbaa !69
  %415 = zext i16 %414 to i64
  %416 = add nuw nsw i64 %415, 128
  %417 = lshr i64 %416, 8
  %418 = sub nsw i64 %416, %417
  %419 = lshr i64 %418, 8
  %420 = trunc i64 %419 to i8
  %421 = getelementptr inbounds i8, ptr %411, i64 1
  store i8 %420, ptr %411, align 1, !tbaa !59, !noalias !64
  %422 = getelementptr inbounds %struct._PixelPacket, ptr %410, i64 0, i32 1
  %423 = load i16, ptr %422, align 2, !tbaa !68
  %424 = zext i16 %423 to i64
  %425 = add nuw nsw i64 %424, 128
  %426 = lshr i64 %425, 8
  %427 = sub nsw i64 %425, %426
  %428 = lshr i64 %427, 8
  %429 = trunc i64 %428 to i8
  %430 = getelementptr inbounds i8, ptr %411, i64 2
  store i8 %429, ptr %421, align 1, !tbaa !59, !noalias !64
  %431 = load i16, ptr %410, align 2, !tbaa !67
  %432 = zext i16 %431 to i64
  %433 = add nuw nsw i64 %432, 128
  %434 = lshr i64 %433, 8
  %435 = sub nsw i64 %433, %434
  %436 = lshr i64 %435, 8
  %437 = trunc i64 %436 to i8
  %438 = getelementptr inbounds i8, ptr %411, i64 3
  store i8 %437, ptr %430, align 1, !tbaa !59, !noalias !64
  %439 = getelementptr inbounds i8, ptr %411, i64 4
  store i8 0, ptr %438, align 1, !tbaa !59, !noalias !64
  %440 = getelementptr inbounds %struct._PixelPacket, ptr %410, i64 1
  %441 = add nuw nsw i64 %412, 1
  %442 = icmp eq i64 %441, %3
  br i1 %442, label %443, label %409, !llvm.loop !83

443:                                              ; preds = %409, %408
  %444 = phi ptr [ %404, %408 ], [ %439, %409 ]
  %445 = add nuw nsw i64 %403, 1
  %446 = icmp eq i64 %445, %4
  br i1 %446, label %2640, label %402, !llvm.loop !84

447:                                              ; preds = %395
  %448 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !64
  %449 = icmp sgt i64 %4, 0
  br i1 %449, label %450, label %2640

450:                                              ; preds = %447
  %451 = icmp sgt i64 %3, 0
  %452 = icmp sgt i64 %448, 0
  %453 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %454

454:                                              ; preds = %450, %521
  %455 = phi i64 [ 0, %450 ], [ %523, %521 ]
  %456 = phi ptr [ %7, %450 ], [ %522, %521 ]
  %457 = add nsw i64 %455, %2
  %458 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %457, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %459 = icmp eq ptr %458, null
  br i1 %459, label %2640, label %460

460:                                              ; preds = %454
  %461 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #19
  br i1 %451, label %462, label %521

462:                                              ; preds = %460
  %463 = icmp eq ptr %461, null
  br label %464

464:                                              ; preds = %462, %516
  %465 = phi ptr [ %458, %462 ], [ %518, %516 ]
  %466 = phi ptr [ %456, %462 ], [ %517, %516 ]
  %467 = phi i64 [ 0, %462 ], [ %519, %516 ]
  br i1 %452, label %468, label %516

468:                                              ; preds = %464
  %469 = getelementptr inbounds i16, ptr %461, i64 %467
  %470 = getelementptr inbounds %struct._PixelPacket, ptr %465, i64 0, i32 3
  %471 = getelementptr inbounds %struct._PixelPacket, ptr %465, i64 0, i32 3
  %472 = getelementptr inbounds %struct._PixelPacket, ptr %465, i64 0, i32 1
  %473 = getelementptr inbounds %struct._PixelPacket, ptr %465, i64 0, i32 2
  br label %474

474:                                              ; preds = %468, %512
  %475 = phi i64 [ 0, %468 ], [ %514, %512 ]
  %476 = phi ptr [ %466, %468 ], [ %513, %512 ]
  store i8 0, ptr %476, align 1, !tbaa !59, !noalias !64
  %477 = getelementptr inbounds i32, ptr %18, i64 %475
  %478 = load i32, ptr %477, align 4, !tbaa !34, !noalias !64
  switch i32 %478, label %512 [
    i32 14, label %479
    i32 6, label %479
    i32 9, label %481
    i32 12, label %481
    i32 3, label %483
    i32 19, label %483
    i32 1, label %485
    i32 13, label %488
    i32 2, label %490
    i32 11, label %496
  ]

479:                                              ; preds = %474, %474
  %480 = load i16, ptr %473, align 2, !tbaa !69
  br label %504

481:                                              ; preds = %474, %474
  %482 = load i16, ptr %472, align 2, !tbaa !68
  br label %504

483:                                              ; preds = %474, %474
  %484 = load i16, ptr %465, align 2, !tbaa !67
  br label %504

485:                                              ; preds = %474
  %486 = load i16, ptr %471, align 2, !tbaa !72
  %487 = xor i16 %486, -1
  br label %504

488:                                              ; preds = %474
  %489 = load i16, ptr %470, align 2, !tbaa !72
  br label %504

490:                                              ; preds = %474
  %491 = load i32, ptr %453, align 4, !tbaa !60, !noalias !64
  %492 = icmp eq i32 %491, 12
  br i1 %492, label %493, label %512

493:                                              ; preds = %490
  br i1 %463, label %504, label %494

494:                                              ; preds = %493
  %495 = load i16, ptr %469, align 2, !tbaa !85
  br label %504

496:                                              ; preds = %474
  %497 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %465) #23
  %498 = fcmp ugt float %497, 0.000000e+00
  br i1 %498, label %499, label %504

499:                                              ; preds = %496
  %500 = fcmp ult float %497, 6.553500e+04
  br i1 %500, label %501, label %504

501:                                              ; preds = %499
  %502 = fadd float %497, 5.000000e-01
  %503 = fptoui float %502 to i16
  br label %504

504:                                              ; preds = %496, %499, %501, %493, %494, %479, %481, %483, %485, %488
  %505 = phi i16 [ %480, %479 ], [ %482, %481 ], [ %484, %483 ], [ %487, %485 ], [ %489, %488 ], [ %495, %494 ], [ 0, %493 ], [ %503, %501 ], [ 0, %496 ], [ -1, %499 ]
  %506 = zext i16 %505 to i64
  %507 = add nuw nsw i64 %506, 128
  %508 = lshr i64 %507, 8
  %509 = sub nsw i64 %507, %508
  %510 = lshr i64 %509, 8
  %511 = trunc i64 %510 to i8
  store i8 %511, ptr %476, align 1, !tbaa !59, !noalias !64
  br label %512

512:                                              ; preds = %504, %490, %474
  %513 = getelementptr inbounds i8, ptr %476, i64 1
  %514 = add nuw nsw i64 %475, 1
  %515 = icmp eq i64 %514, %448
  br i1 %515, label %516, label %474, !llvm.loop !86

516:                                              ; preds = %512, %464
  %517 = phi ptr [ %466, %464 ], [ %513, %512 ]
  %518 = getelementptr inbounds %struct._PixelPacket, ptr %465, i64 1
  %519 = add nuw nsw i64 %467, 1
  %520 = icmp eq i64 %519, %3
  br i1 %520, label %521, label %464, !llvm.loop !87

521:                                              ; preds = %516, %460
  %522 = phi ptr [ %456, %460 ], [ %517, %516 ]
  %523 = add nuw nsw i64 %455, 1
  %524 = icmp eq i64 %523, %4
  br i1 %524, label %2640, label %454, !llvm.loop !88

525:                                              ; preds = %77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %526 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %564

528:                                              ; preds = %525
  %529 = icmp sgt i64 %4, 0
  br i1 %529, label %530, label %2640

530:                                              ; preds = %528
  %531 = icmp sgt i64 %3, 0
  br label %532

532:                                              ; preds = %530, %560
  %533 = phi i64 [ 0, %530 ], [ %562, %560 ]
  %534 = phi ptr [ %7, %530 ], [ %561, %560 ]
  %535 = add nsw i64 %533, %2
  %536 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %535, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %537 = icmp eq ptr %536, null
  br i1 %537, label %2640, label %538

538:                                              ; preds = %532
  br i1 %531, label %539, label %560

539:                                              ; preds = %538, %539
  %540 = phi ptr [ %557, %539 ], [ %536, %538 ]
  %541 = phi i64 [ %558, %539 ], [ 0, %538 ]
  %542 = phi ptr [ %556, %539 ], [ %534, %538 ]
  %543 = load i16, ptr %540, align 2, !tbaa !67
  %544 = uitofp i16 %543 to double
  %545 = fmul double %544, 0x3EF0001000100010
  %546 = getelementptr inbounds double, ptr %542, i64 1
  store double %545, ptr %542, align 8, !tbaa !39, !noalias !89
  %547 = getelementptr inbounds %struct._PixelPacket, ptr %540, i64 0, i32 1
  %548 = load i16, ptr %547, align 2, !tbaa !68
  %549 = uitofp i16 %548 to double
  %550 = fmul double %549, 0x3EF0001000100010
  %551 = getelementptr inbounds double, ptr %542, i64 2
  store double %550, ptr %546, align 8, !tbaa !39, !noalias !89
  %552 = getelementptr inbounds %struct._PixelPacket, ptr %540, i64 0, i32 2
  %553 = load i16, ptr %552, align 2, !tbaa !69
  %554 = uitofp i16 %553 to double
  %555 = fmul double %554, 0x3EF0001000100010
  %556 = getelementptr inbounds double, ptr %542, i64 3
  store double %555, ptr %551, align 8, !tbaa !39, !noalias !89
  %557 = getelementptr inbounds %struct._PixelPacket, ptr %540, i64 1
  %558 = add nuw nsw i64 %541, 1
  %559 = icmp eq i64 %558, %3
  br i1 %559, label %560, label %539, !llvm.loop !92

560:                                              ; preds = %539, %538
  %561 = phi ptr [ %534, %538 ], [ %556, %539 ]
  %562 = add nuw nsw i64 %533, 1
  %563 = icmp eq i64 %562, %4
  br i1 %563, label %2640, label %532, !llvm.loop !93

564:                                              ; preds = %525
  %565 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %609

567:                                              ; preds = %564
  %568 = icmp sgt i64 %4, 0
  br i1 %568, label %569, label %2640

569:                                              ; preds = %567
  %570 = icmp sgt i64 %3, 0
  br label %571

571:                                              ; preds = %569, %605
  %572 = phi i64 [ 0, %569 ], [ %607, %605 ]
  %573 = phi ptr [ %7, %569 ], [ %606, %605 ]
  %574 = add nsw i64 %572, %2
  %575 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %574, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %576 = icmp eq ptr %575, null
  br i1 %576, label %2640, label %577

577:                                              ; preds = %571
  br i1 %570, label %578, label %605

578:                                              ; preds = %577, %578
  %579 = phi ptr [ %602, %578 ], [ %575, %577 ]
  %580 = phi i64 [ %603, %578 ], [ 0, %577 ]
  %581 = phi ptr [ %601, %578 ], [ %573, %577 ]
  %582 = load i16, ptr %579, align 2, !tbaa !67
  %583 = uitofp i16 %582 to double
  %584 = fmul double %583, 0x3EF0001000100010
  %585 = getelementptr inbounds double, ptr %581, i64 1
  store double %584, ptr %581, align 8, !tbaa !39, !noalias !89
  %586 = getelementptr inbounds %struct._PixelPacket, ptr %579, i64 0, i32 1
  %587 = load i16, ptr %586, align 2, !tbaa !68
  %588 = uitofp i16 %587 to double
  %589 = fmul double %588, 0x3EF0001000100010
  %590 = getelementptr inbounds double, ptr %581, i64 2
  store double %589, ptr %585, align 8, !tbaa !39, !noalias !89
  %591 = getelementptr inbounds %struct._PixelPacket, ptr %579, i64 0, i32 2
  %592 = load i16, ptr %591, align 2, !tbaa !69
  %593 = uitofp i16 %592 to double
  %594 = fmul double %593, 0x3EF0001000100010
  %595 = getelementptr inbounds double, ptr %581, i64 3
  store double %594, ptr %590, align 8, !tbaa !39, !noalias !89
  %596 = getelementptr inbounds %struct._PixelPacket, ptr %579, i64 0, i32 3
  %597 = load i16, ptr %596, align 2, !tbaa !72
  %598 = xor i16 %597, -1
  %599 = uitofp i16 %598 to double
  %600 = fmul double %599, 0x3EF0001000100010
  %601 = getelementptr inbounds double, ptr %581, i64 4
  store double %600, ptr %595, align 8, !tbaa !39, !noalias !89
  %602 = getelementptr inbounds %struct._PixelPacket, ptr %579, i64 1
  %603 = add nuw nsw i64 %580, 1
  %604 = icmp eq i64 %603, %3
  br i1 %604, label %605, label %578, !llvm.loop !94

605:                                              ; preds = %578, %577
  %606 = phi ptr [ %573, %577 ], [ %601, %578 ]
  %607 = add nuw nsw i64 %572, 1
  %608 = icmp eq i64 %607, %4
  br i1 %608, label %2640, label %571, !llvm.loop !95

609:                                              ; preds = %564
  %610 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %649

612:                                              ; preds = %609
  %613 = icmp sgt i64 %4, 0
  br i1 %613, label %614, label %2640

614:                                              ; preds = %612
  %615 = icmp sgt i64 %3, 0
  br label %616

616:                                              ; preds = %614, %645
  %617 = phi i64 [ 0, %614 ], [ %647, %645 ]
  %618 = phi ptr [ %7, %614 ], [ %646, %645 ]
  %619 = add nsw i64 %617, %2
  %620 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %619, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %621 = icmp eq ptr %620, null
  br i1 %621, label %2640, label %622

622:                                              ; preds = %616
  br i1 %615, label %623, label %645

623:                                              ; preds = %622, %623
  %624 = phi ptr [ %642, %623 ], [ %620, %622 ]
  %625 = phi i64 [ %643, %623 ], [ 0, %622 ]
  %626 = phi ptr [ %641, %623 ], [ %618, %622 ]
  %627 = load i16, ptr %624, align 2, !tbaa !67
  %628 = uitofp i16 %627 to double
  %629 = fmul double %628, 0x3EF0001000100010
  %630 = getelementptr inbounds double, ptr %626, i64 1
  store double %629, ptr %626, align 8, !tbaa !39, !noalias !89
  %631 = getelementptr inbounds %struct._PixelPacket, ptr %624, i64 0, i32 1
  %632 = load i16, ptr %631, align 2, !tbaa !68
  %633 = uitofp i16 %632 to double
  %634 = fmul double %633, 0x3EF0001000100010
  %635 = getelementptr inbounds double, ptr %626, i64 2
  store double %634, ptr %630, align 8, !tbaa !39, !noalias !89
  %636 = getelementptr inbounds %struct._PixelPacket, ptr %624, i64 0, i32 2
  %637 = load i16, ptr %636, align 2, !tbaa !69
  %638 = uitofp i16 %637 to double
  %639 = fmul double %638, 0x3EF0001000100010
  %640 = getelementptr inbounds double, ptr %626, i64 3
  store double %639, ptr %635, align 8, !tbaa !39, !noalias !89
  %641 = getelementptr inbounds double, ptr %626, i64 4
  store double 0.000000e+00, ptr %640, align 8, !tbaa !39, !noalias !89
  %642 = getelementptr inbounds %struct._PixelPacket, ptr %624, i64 1
  %643 = add nuw nsw i64 %625, 1
  %644 = icmp eq i64 %643, %3
  br i1 %644, label %645, label %623, !llvm.loop !96

645:                                              ; preds = %623, %622
  %646 = phi ptr [ %618, %622 ], [ %641, %623 ]
  %647 = add nuw nsw i64 %617, 1
  %648 = icmp eq i64 %647, %4
  br i1 %648, label %2640, label %616, !llvm.loop !97

649:                                              ; preds = %609
  %650 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %652, label %678

652:                                              ; preds = %649
  %653 = icmp sgt i64 %4, 0
  br i1 %653, label %654, label %2640

654:                                              ; preds = %652
  %655 = icmp sgt i64 %3, 0
  br label %656

656:                                              ; preds = %654, %674
  %657 = phi i64 [ 0, %654 ], [ %676, %674 ]
  %658 = phi ptr [ %7, %654 ], [ %675, %674 ]
  %659 = add nsw i64 %657, %2
  %660 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %659, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %661 = icmp eq ptr %660, null
  br i1 %661, label %2640, label %662

662:                                              ; preds = %656
  br i1 %655, label %663, label %674

663:                                              ; preds = %662, %663
  %664 = phi ptr [ %671, %663 ], [ %660, %662 ]
  %665 = phi i64 [ %672, %663 ], [ 0, %662 ]
  %666 = phi ptr [ %670, %663 ], [ %658, %662 ]
  %667 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %664) #23
  %668 = fpext float %667 to double
  %669 = fmul double %668, 0x3EF0001000100010
  %670 = getelementptr inbounds double, ptr %666, i64 1
  store double %669, ptr %666, align 8, !tbaa !39, !noalias !89
  %671 = getelementptr inbounds %struct._PixelPacket, ptr %664, i64 1
  %672 = add nuw nsw i64 %665, 1
  %673 = icmp eq i64 %672, %3
  br i1 %673, label %674, label %663, !llvm.loop !98

674:                                              ; preds = %663, %662
  %675 = phi ptr [ %658, %662 ], [ %670, %663 ]
  %676 = add nuw nsw i64 %657, 1
  %677 = icmp eq i64 %676, %4
  br i1 %677, label %2640, label %656, !llvm.loop !99

678:                                              ; preds = %649
  %679 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %717

681:                                              ; preds = %678
  %682 = icmp sgt i64 %4, 0
  br i1 %682, label %683, label %2640

683:                                              ; preds = %681
  %684 = icmp sgt i64 %3, 0
  br label %685

685:                                              ; preds = %683, %713
  %686 = phi i64 [ 0, %683 ], [ %715, %713 ]
  %687 = phi ptr [ %7, %683 ], [ %714, %713 ]
  %688 = add nsw i64 %686, %2
  %689 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %688, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %690 = icmp eq ptr %689, null
  br i1 %690, label %2640, label %691

691:                                              ; preds = %685
  br i1 %684, label %692, label %713

692:                                              ; preds = %691, %692
  %693 = phi ptr [ %710, %692 ], [ %689, %691 ]
  %694 = phi i64 [ %711, %692 ], [ 0, %691 ]
  %695 = phi ptr [ %709, %692 ], [ %687, %691 ]
  %696 = getelementptr inbounds %struct._PixelPacket, ptr %693, i64 0, i32 2
  %697 = load i16, ptr %696, align 2, !tbaa !69
  %698 = uitofp i16 %697 to double
  %699 = fmul double %698, 0x3EF0001000100010
  %700 = getelementptr inbounds double, ptr %695, i64 1
  store double %699, ptr %695, align 8, !tbaa !39, !noalias !89
  %701 = getelementptr inbounds %struct._PixelPacket, ptr %693, i64 0, i32 1
  %702 = load i16, ptr %701, align 2, !tbaa !68
  %703 = uitofp i16 %702 to double
  %704 = fmul double %703, 0x3EF0001000100010
  %705 = getelementptr inbounds double, ptr %695, i64 2
  store double %704, ptr %700, align 8, !tbaa !39, !noalias !89
  %706 = load i16, ptr %693, align 2, !tbaa !67
  %707 = uitofp i16 %706 to double
  %708 = fmul double %707, 0x3EF0001000100010
  %709 = getelementptr inbounds double, ptr %695, i64 3
  store double %708, ptr %705, align 8, !tbaa !39, !noalias !89
  %710 = getelementptr inbounds %struct._PixelPacket, ptr %693, i64 1
  %711 = add nuw nsw i64 %694, 1
  %712 = icmp eq i64 %711, %3
  br i1 %712, label %713, label %692, !llvm.loop !100

713:                                              ; preds = %692, %691
  %714 = phi ptr [ %687, %691 ], [ %709, %692 ]
  %715 = add nuw nsw i64 %686, 1
  %716 = icmp eq i64 %715, %4
  br i1 %716, label %2640, label %685, !llvm.loop !101

717:                                              ; preds = %678
  %718 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %762

720:                                              ; preds = %717
  %721 = icmp sgt i64 %4, 0
  br i1 %721, label %722, label %2640

722:                                              ; preds = %720
  %723 = icmp sgt i64 %3, 0
  br label %724

724:                                              ; preds = %722, %758
  %725 = phi i64 [ 0, %722 ], [ %760, %758 ]
  %726 = phi ptr [ %7, %722 ], [ %759, %758 ]
  %727 = add nsw i64 %725, %2
  %728 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %727, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %729 = icmp eq ptr %728, null
  br i1 %729, label %2640, label %730

730:                                              ; preds = %724
  br i1 %723, label %731, label %758

731:                                              ; preds = %730, %731
  %732 = phi ptr [ %755, %731 ], [ %728, %730 ]
  %733 = phi i64 [ %756, %731 ], [ 0, %730 ]
  %734 = phi ptr [ %754, %731 ], [ %726, %730 ]
  %735 = getelementptr inbounds %struct._PixelPacket, ptr %732, i64 0, i32 2
  %736 = load i16, ptr %735, align 2, !tbaa !69
  %737 = uitofp i16 %736 to double
  %738 = fmul double %737, 0x3EF0001000100010
  %739 = getelementptr inbounds double, ptr %734, i64 1
  store double %738, ptr %734, align 8, !tbaa !39, !noalias !89
  %740 = getelementptr inbounds %struct._PixelPacket, ptr %732, i64 0, i32 1
  %741 = load i16, ptr %740, align 2, !tbaa !68
  %742 = uitofp i16 %741 to double
  %743 = fmul double %742, 0x3EF0001000100010
  %744 = getelementptr inbounds double, ptr %734, i64 2
  store double %743, ptr %739, align 8, !tbaa !39, !noalias !89
  %745 = load i16, ptr %732, align 2, !tbaa !67
  %746 = uitofp i16 %745 to double
  %747 = fmul double %746, 0x3EF0001000100010
  %748 = getelementptr inbounds double, ptr %734, i64 3
  store double %747, ptr %744, align 8, !tbaa !39, !noalias !89
  %749 = getelementptr inbounds %struct._PixelPacket, ptr %732, i64 0, i32 3
  %750 = load i16, ptr %749, align 2, !tbaa !72
  %751 = xor i16 %750, -1
  %752 = uitofp i16 %751 to double
  %753 = fmul double %752, 0x3EF0001000100010
  %754 = getelementptr inbounds double, ptr %734, i64 4
  store double %753, ptr %748, align 8, !tbaa !39, !noalias !89
  %755 = getelementptr inbounds %struct._PixelPacket, ptr %732, i64 1
  %756 = add nuw nsw i64 %733, 1
  %757 = icmp eq i64 %756, %3
  br i1 %757, label %758, label %731, !llvm.loop !102

758:                                              ; preds = %731, %730
  %759 = phi ptr [ %726, %730 ], [ %754, %731 ]
  %760 = add nuw nsw i64 %725, 1
  %761 = icmp eq i64 %760, %4
  br i1 %761, label %2640, label %724, !llvm.loop !103

762:                                              ; preds = %717
  %763 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %802

765:                                              ; preds = %762
  %766 = icmp sgt i64 %4, 0
  br i1 %766, label %767, label %2640

767:                                              ; preds = %765
  %768 = icmp sgt i64 %3, 0
  br label %769

769:                                              ; preds = %767, %798
  %770 = phi i64 [ 0, %767 ], [ %800, %798 ]
  %771 = phi ptr [ %7, %767 ], [ %799, %798 ]
  %772 = add nsw i64 %770, %2
  %773 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %772, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %774 = icmp eq ptr %773, null
  br i1 %774, label %2640, label %775

775:                                              ; preds = %769
  br i1 %768, label %776, label %798

776:                                              ; preds = %775, %776
  %777 = phi ptr [ %795, %776 ], [ %773, %775 ]
  %778 = phi i64 [ %796, %776 ], [ 0, %775 ]
  %779 = phi ptr [ %794, %776 ], [ %771, %775 ]
  %780 = getelementptr inbounds %struct._PixelPacket, ptr %777, i64 0, i32 2
  %781 = load i16, ptr %780, align 2, !tbaa !69
  %782 = uitofp i16 %781 to double
  %783 = fmul double %782, 0x3EF0001000100010
  %784 = getelementptr inbounds double, ptr %779, i64 1
  store double %783, ptr %779, align 8, !tbaa !39, !noalias !89
  %785 = getelementptr inbounds %struct._PixelPacket, ptr %777, i64 0, i32 1
  %786 = load i16, ptr %785, align 2, !tbaa !68
  %787 = uitofp i16 %786 to double
  %788 = fmul double %787, 0x3EF0001000100010
  %789 = getelementptr inbounds double, ptr %779, i64 2
  store double %788, ptr %784, align 8, !tbaa !39, !noalias !89
  %790 = load i16, ptr %777, align 2, !tbaa !67
  %791 = uitofp i16 %790 to double
  %792 = fmul double %791, 0x3EF0001000100010
  %793 = getelementptr inbounds double, ptr %779, i64 3
  store double %792, ptr %789, align 8, !tbaa !39, !noalias !89
  %794 = getelementptr inbounds double, ptr %779, i64 4
  store double 0.000000e+00, ptr %793, align 8, !tbaa !39, !noalias !89
  %795 = getelementptr inbounds %struct._PixelPacket, ptr %777, i64 1
  %796 = add nuw nsw i64 %778, 1
  %797 = icmp eq i64 %796, %3
  br i1 %797, label %798, label %776, !llvm.loop !104

798:                                              ; preds = %776, %775
  %799 = phi ptr [ %771, %775 ], [ %794, %776 ]
  %800 = add nuw nsw i64 %770, 1
  %801 = icmp eq i64 %800, %4
  br i1 %801, label %2640, label %769, !llvm.loop !105

802:                                              ; preds = %762
  %803 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !89
  %804 = icmp sgt i64 %4, 0
  br i1 %804, label %805, label %2640

805:                                              ; preds = %802
  %806 = icmp sgt i64 %3, 0
  %807 = icmp sgt i64 %803, 0
  %808 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %809

809:                                              ; preds = %805, %881
  %810 = phi i64 [ 0, %805 ], [ %883, %881 ]
  %811 = phi ptr [ %7, %805 ], [ %882, %881 ]
  %812 = add nsw i64 %810, %2
  %813 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %812, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %814 = icmp eq ptr %813, null
  br i1 %814, label %2640, label %815

815:                                              ; preds = %809
  %816 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #19
  br i1 %806, label %817, label %881

817:                                              ; preds = %815
  %818 = icmp eq ptr %816, null
  br label %819

819:                                              ; preds = %817, %876
  %820 = phi ptr [ %813, %817 ], [ %878, %876 ]
  %821 = phi i64 [ 0, %817 ], [ %879, %876 ]
  %822 = phi ptr [ %811, %817 ], [ %877, %876 ]
  br i1 %807, label %823, label %876

823:                                              ; preds = %819
  %824 = getelementptr inbounds i16, ptr %816, i64 %821
  %825 = getelementptr inbounds %struct._PixelPacket, ptr %820, i64 0, i32 3
  %826 = getelementptr inbounds %struct._PixelPacket, ptr %820, i64 0, i32 3
  %827 = getelementptr inbounds %struct._PixelPacket, ptr %820, i64 0, i32 1
  %828 = getelementptr inbounds %struct._PixelPacket, ptr %820, i64 0, i32 2
  br label %829

829:                                              ; preds = %823, %872
  %830 = phi i64 [ 0, %823 ], [ %874, %872 ]
  %831 = phi ptr [ %822, %823 ], [ %873, %872 ]
  store double 0.000000e+00, ptr %831, align 8, !tbaa !39, !noalias !89
  %832 = getelementptr inbounds i32, ptr %18, i64 %830
  %833 = load i32, ptr %832, align 4, !tbaa !34, !noalias !89
  switch i32 %833, label %870 [
    i32 14, label %834
    i32 6, label %834
    i32 9, label %838
    i32 12, label %838
    i32 3, label %842
    i32 19, label %842
    i32 1, label %846
    i32 13, label %851
    i32 2, label %855
    i32 11, label %866
  ]

834:                                              ; preds = %829, %829
  %835 = load i16, ptr %828, align 2, !tbaa !69
  %836 = uitofp i16 %835 to double
  %837 = fmul double %836, 0x3EF0001000100010
  br label %870

838:                                              ; preds = %829, %829
  %839 = load i16, ptr %827, align 2, !tbaa !68
  %840 = uitofp i16 %839 to double
  %841 = fmul double %840, 0x3EF0001000100010
  br label %870

842:                                              ; preds = %829, %829
  %843 = load i16, ptr %820, align 2, !tbaa !67
  %844 = uitofp i16 %843 to double
  %845 = fmul double %844, 0x3EF0001000100010
  br label %870

846:                                              ; preds = %829
  %847 = load i16, ptr %826, align 2, !tbaa !72
  %848 = xor i16 %847, -1
  %849 = uitofp i16 %848 to double
  %850 = fmul double %849, 0x3EF0001000100010
  br label %870

851:                                              ; preds = %829
  %852 = load i16, ptr %825, align 2, !tbaa !72
  %853 = uitofp i16 %852 to double
  %854 = fmul double %853, 0x3EF0001000100010
  br label %870

855:                                              ; preds = %829
  %856 = load i32, ptr %808, align 4, !tbaa !60, !noalias !89
  %857 = icmp eq i32 %856, 12
  br i1 %857, label %858, label %872

858:                                              ; preds = %855
  br i1 %818, label %862, label %859

859:                                              ; preds = %858
  %860 = load i16, ptr %824, align 2, !tbaa !85
  %861 = zext i16 %860 to i32
  br label %862

862:                                              ; preds = %859, %858
  %863 = phi i32 [ %861, %859 ], [ 0, %858 ]
  %864 = sitofp i32 %863 to double
  %865 = fmul double %864, 0x3EF0001000100010
  br label %870

866:                                              ; preds = %829
  %867 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %820) #23
  %868 = fpext float %867 to double
  %869 = fmul double %868, 0x3EF0001000100010
  br label %870

870:                                              ; preds = %829, %834, %838, %842, %846, %851, %862, %866
  %871 = phi double [ %869, %866 ], [ %865, %862 ], [ %854, %851 ], [ %850, %846 ], [ %845, %842 ], [ %841, %838 ], [ %837, %834 ], [ 0.000000e+00, %829 ]
  store double %871, ptr %831, align 8, !tbaa !39, !noalias !89
  br label %872

872:                                              ; preds = %870, %855
  %873 = getelementptr inbounds double, ptr %831, i64 1
  %874 = add nuw nsw i64 %830, 1
  %875 = icmp eq i64 %874, %803
  br i1 %875, label %876, label %829, !llvm.loop !106

876:                                              ; preds = %872, %819
  %877 = phi ptr [ %822, %819 ], [ %873, %872 ]
  %878 = getelementptr inbounds %struct._PixelPacket, ptr %820, i64 1
  %879 = add nuw nsw i64 %821, 1
  %880 = icmp eq i64 %879, %3
  br i1 %880, label %881, label %819, !llvm.loop !107

881:                                              ; preds = %876, %815
  %882 = phi ptr [ %811, %815 ], [ %877, %876 ]
  %883 = add nuw nsw i64 %810, 1
  %884 = icmp eq i64 %883, %4
  br i1 %884, label %2640, label %809, !llvm.loop !108

885:                                              ; preds = %77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %886 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %927

888:                                              ; preds = %885
  %889 = icmp sgt i64 %4, 0
  br i1 %889, label %890, label %2640

890:                                              ; preds = %888
  %891 = icmp sgt i64 %3, 0
  br label %892

892:                                              ; preds = %890, %923
  %893 = phi i64 [ 0, %890 ], [ %925, %923 ]
  %894 = phi ptr [ %7, %890 ], [ %924, %923 ]
  %895 = add nsw i64 %893, %2
  %896 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %895, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %897 = icmp eq ptr %896, null
  br i1 %897, label %2640, label %898

898:                                              ; preds = %892
  br i1 %891, label %899, label %923

899:                                              ; preds = %898, %899
  %900 = phi ptr [ %920, %899 ], [ %896, %898 ]
  %901 = phi i64 [ %921, %899 ], [ 0, %898 ]
  %902 = phi ptr [ %919, %899 ], [ %894, %898 ]
  %903 = load i16, ptr %900, align 2, !tbaa !67
  %904 = uitofp i16 %903 to double
  %905 = fmul double %904, 0x3EF0001000100010
  %906 = fptrunc double %905 to float
  %907 = getelementptr inbounds float, ptr %902, i64 1
  store float %906, ptr %902, align 4, !tbaa !43, !noalias !109
  %908 = getelementptr inbounds %struct._PixelPacket, ptr %900, i64 0, i32 1
  %909 = load i16, ptr %908, align 2, !tbaa !68
  %910 = uitofp i16 %909 to double
  %911 = fmul double %910, 0x3EF0001000100010
  %912 = fptrunc double %911 to float
  %913 = getelementptr inbounds float, ptr %902, i64 2
  store float %912, ptr %907, align 4, !tbaa !43, !noalias !109
  %914 = getelementptr inbounds %struct._PixelPacket, ptr %900, i64 0, i32 2
  %915 = load i16, ptr %914, align 2, !tbaa !69
  %916 = uitofp i16 %915 to double
  %917 = fmul double %916, 0x3EF0001000100010
  %918 = fptrunc double %917 to float
  %919 = getelementptr inbounds float, ptr %902, i64 3
  store float %918, ptr %913, align 4, !tbaa !43, !noalias !109
  %920 = getelementptr inbounds %struct._PixelPacket, ptr %900, i64 1
  %921 = add nuw nsw i64 %901, 1
  %922 = icmp eq i64 %921, %3
  br i1 %922, label %923, label %899, !llvm.loop !112

923:                                              ; preds = %899, %898
  %924 = phi ptr [ %894, %898 ], [ %919, %899 ]
  %925 = add nuw nsw i64 %893, 1
  %926 = icmp eq i64 %925, %4
  br i1 %926, label %2640, label %892, !llvm.loop !113

927:                                              ; preds = %885
  %928 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %930, label %976

930:                                              ; preds = %927
  %931 = icmp sgt i64 %4, 0
  br i1 %931, label %932, label %2640

932:                                              ; preds = %930
  %933 = icmp sgt i64 %3, 0
  br label %934

934:                                              ; preds = %932, %972
  %935 = phi i64 [ 0, %932 ], [ %974, %972 ]
  %936 = phi ptr [ %7, %932 ], [ %973, %972 ]
  %937 = add nsw i64 %935, %2
  %938 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %937, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %939 = icmp eq ptr %938, null
  br i1 %939, label %2640, label %940

940:                                              ; preds = %934
  br i1 %933, label %941, label %972

941:                                              ; preds = %940, %941
  %942 = phi ptr [ %969, %941 ], [ %938, %940 ]
  %943 = phi i64 [ %970, %941 ], [ 0, %940 ]
  %944 = phi ptr [ %968, %941 ], [ %936, %940 ]
  %945 = load i16, ptr %942, align 2, !tbaa !67
  %946 = uitofp i16 %945 to double
  %947 = fmul double %946, 0x3EF0001000100010
  %948 = fptrunc double %947 to float
  %949 = getelementptr inbounds float, ptr %944, i64 1
  store float %948, ptr %944, align 4, !tbaa !43, !noalias !109
  %950 = getelementptr inbounds %struct._PixelPacket, ptr %942, i64 0, i32 1
  %951 = load i16, ptr %950, align 2, !tbaa !68
  %952 = uitofp i16 %951 to double
  %953 = fmul double %952, 0x3EF0001000100010
  %954 = fptrunc double %953 to float
  %955 = getelementptr inbounds float, ptr %944, i64 2
  store float %954, ptr %949, align 4, !tbaa !43, !noalias !109
  %956 = getelementptr inbounds %struct._PixelPacket, ptr %942, i64 0, i32 2
  %957 = load i16, ptr %956, align 2, !tbaa !69
  %958 = uitofp i16 %957 to double
  %959 = fmul double %958, 0x3EF0001000100010
  %960 = fptrunc double %959 to float
  %961 = getelementptr inbounds float, ptr %944, i64 3
  store float %960, ptr %955, align 4, !tbaa !43, !noalias !109
  %962 = getelementptr inbounds %struct._PixelPacket, ptr %942, i64 0, i32 3
  %963 = load i16, ptr %962, align 2, !tbaa !72
  %964 = xor i16 %963, -1
  %965 = uitofp i16 %964 to double
  %966 = fmul double %965, 0x3EF0001000100010
  %967 = fptrunc double %966 to float
  %968 = getelementptr inbounds float, ptr %944, i64 4
  store float %967, ptr %961, align 4, !tbaa !43, !noalias !109
  %969 = getelementptr inbounds %struct._PixelPacket, ptr %942, i64 1
  %970 = add nuw nsw i64 %943, 1
  %971 = icmp eq i64 %970, %3
  br i1 %971, label %972, label %941, !llvm.loop !114

972:                                              ; preds = %941, %940
  %973 = phi ptr [ %936, %940 ], [ %968, %941 ]
  %974 = add nuw nsw i64 %935, 1
  %975 = icmp eq i64 %974, %4
  br i1 %975, label %2640, label %934, !llvm.loop !115

976:                                              ; preds = %927
  %977 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %979, label %1019

979:                                              ; preds = %976
  %980 = icmp sgt i64 %4, 0
  br i1 %980, label %981, label %2640

981:                                              ; preds = %979
  %982 = icmp sgt i64 %3, 0
  br label %983

983:                                              ; preds = %981, %1015
  %984 = phi i64 [ 0, %981 ], [ %1017, %1015 ]
  %985 = phi ptr [ %7, %981 ], [ %1016, %1015 ]
  %986 = add nsw i64 %984, %2
  %987 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %986, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %988 = icmp eq ptr %987, null
  br i1 %988, label %2640, label %989

989:                                              ; preds = %983
  br i1 %982, label %990, label %1015

990:                                              ; preds = %989, %990
  %991 = phi ptr [ %1012, %990 ], [ %987, %989 ]
  %992 = phi i64 [ %1013, %990 ], [ 0, %989 ]
  %993 = phi ptr [ %1011, %990 ], [ %985, %989 ]
  %994 = load i16, ptr %991, align 2, !tbaa !67
  %995 = uitofp i16 %994 to double
  %996 = fmul double %995, 0x3EF0001000100010
  %997 = fptrunc double %996 to float
  %998 = getelementptr inbounds float, ptr %993, i64 1
  store float %997, ptr %993, align 4, !tbaa !43, !noalias !109
  %999 = getelementptr inbounds %struct._PixelPacket, ptr %991, i64 0, i32 1
  %1000 = load i16, ptr %999, align 2, !tbaa !68
  %1001 = uitofp i16 %1000 to double
  %1002 = fmul double %1001, 0x3EF0001000100010
  %1003 = fptrunc double %1002 to float
  %1004 = getelementptr inbounds float, ptr %993, i64 2
  store float %1003, ptr %998, align 4, !tbaa !43, !noalias !109
  %1005 = getelementptr inbounds %struct._PixelPacket, ptr %991, i64 0, i32 2
  %1006 = load i16, ptr %1005, align 2, !tbaa !69
  %1007 = uitofp i16 %1006 to double
  %1008 = fmul double %1007, 0x3EF0001000100010
  %1009 = fptrunc double %1008 to float
  %1010 = getelementptr inbounds float, ptr %993, i64 3
  store float %1009, ptr %1004, align 4, !tbaa !43, !noalias !109
  %1011 = getelementptr inbounds float, ptr %993, i64 4
  store float 0.000000e+00, ptr %1010, align 4, !tbaa !43, !noalias !109
  %1012 = getelementptr inbounds %struct._PixelPacket, ptr %991, i64 1
  %1013 = add nuw nsw i64 %992, 1
  %1014 = icmp eq i64 %1013, %3
  br i1 %1014, label %1015, label %990, !llvm.loop !116

1015:                                             ; preds = %990, %989
  %1016 = phi ptr [ %985, %989 ], [ %1011, %990 ]
  %1017 = add nuw nsw i64 %984, 1
  %1018 = icmp eq i64 %1017, %4
  br i1 %1018, label %2640, label %983, !llvm.loop !117

1019:                                             ; preds = %976
  %1020 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1049

1022:                                             ; preds = %1019
  %1023 = icmp sgt i64 %4, 0
  br i1 %1023, label %1024, label %2640

1024:                                             ; preds = %1022
  %1025 = icmp sgt i64 %3, 0
  br label %1026

1026:                                             ; preds = %1024, %1045
  %1027 = phi i64 [ 0, %1024 ], [ %1047, %1045 ]
  %1028 = phi ptr [ %7, %1024 ], [ %1046, %1045 ]
  %1029 = add nsw i64 %1027, %2
  %1030 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1029, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1031 = icmp eq ptr %1030, null
  br i1 %1031, label %2640, label %1032

1032:                                             ; preds = %1026
  br i1 %1025, label %1033, label %1045

1033:                                             ; preds = %1032, %1033
  %1034 = phi ptr [ %1042, %1033 ], [ %1030, %1032 ]
  %1035 = phi i64 [ %1043, %1033 ], [ 0, %1032 ]
  %1036 = phi ptr [ %1041, %1033 ], [ %1028, %1032 ]
  %1037 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %1034) #23
  %1038 = fpext float %1037 to double
  %1039 = fmul double %1038, 0x3EF0001000100010
  %1040 = fptrunc double %1039 to float
  %1041 = getelementptr inbounds float, ptr %1036, i64 1
  store float %1040, ptr %1036, align 4, !tbaa !43, !noalias !109
  %1042 = getelementptr inbounds %struct._PixelPacket, ptr %1034, i64 1
  %1043 = add nuw nsw i64 %1035, 1
  %1044 = icmp eq i64 %1043, %3
  br i1 %1044, label %1045, label %1033, !llvm.loop !118

1045:                                             ; preds = %1033, %1032
  %1046 = phi ptr [ %1028, %1032 ], [ %1041, %1033 ]
  %1047 = add nuw nsw i64 %1027, 1
  %1048 = icmp eq i64 %1047, %4
  br i1 %1048, label %2640, label %1026, !llvm.loop !119

1049:                                             ; preds = %1019
  %1050 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1052, label %1091

1052:                                             ; preds = %1049
  %1053 = icmp sgt i64 %4, 0
  br i1 %1053, label %1054, label %2640

1054:                                             ; preds = %1052
  %1055 = icmp sgt i64 %3, 0
  br label %1056

1056:                                             ; preds = %1054, %1087
  %1057 = phi i64 [ 0, %1054 ], [ %1089, %1087 ]
  %1058 = phi ptr [ %7, %1054 ], [ %1088, %1087 ]
  %1059 = add nsw i64 %1057, %2
  %1060 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1059, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %2640, label %1062

1062:                                             ; preds = %1056
  br i1 %1055, label %1063, label %1087

1063:                                             ; preds = %1062, %1063
  %1064 = phi ptr [ %1084, %1063 ], [ %1060, %1062 ]
  %1065 = phi i64 [ %1085, %1063 ], [ 0, %1062 ]
  %1066 = phi ptr [ %1083, %1063 ], [ %1058, %1062 ]
  %1067 = getelementptr inbounds %struct._PixelPacket, ptr %1064, i64 0, i32 2
  %1068 = load i16, ptr %1067, align 2, !tbaa !69
  %1069 = uitofp i16 %1068 to double
  %1070 = fmul double %1069, 0x3EF0001000100010
  %1071 = fptrunc double %1070 to float
  %1072 = getelementptr inbounds float, ptr %1066, i64 1
  store float %1071, ptr %1066, align 4, !tbaa !43, !noalias !109
  %1073 = getelementptr inbounds %struct._PixelPacket, ptr %1064, i64 0, i32 1
  %1074 = load i16, ptr %1073, align 2, !tbaa !68
  %1075 = uitofp i16 %1074 to double
  %1076 = fmul double %1075, 0x3EF0001000100010
  %1077 = fptrunc double %1076 to float
  %1078 = getelementptr inbounds float, ptr %1066, i64 2
  store float %1077, ptr %1072, align 4, !tbaa !43, !noalias !109
  %1079 = load i16, ptr %1064, align 2, !tbaa !67
  %1080 = uitofp i16 %1079 to double
  %1081 = fmul double %1080, 0x3EF0001000100010
  %1082 = fptrunc double %1081 to float
  %1083 = getelementptr inbounds float, ptr %1066, i64 3
  store float %1082, ptr %1078, align 4, !tbaa !43, !noalias !109
  %1084 = getelementptr inbounds %struct._PixelPacket, ptr %1064, i64 1
  %1085 = add nuw nsw i64 %1065, 1
  %1086 = icmp eq i64 %1085, %3
  br i1 %1086, label %1087, label %1063, !llvm.loop !120

1087:                                             ; preds = %1063, %1062
  %1088 = phi ptr [ %1058, %1062 ], [ %1083, %1063 ]
  %1089 = add nuw nsw i64 %1057, 1
  %1090 = icmp eq i64 %1089, %4
  br i1 %1090, label %2640, label %1056, !llvm.loop !121

1091:                                             ; preds = %1049
  %1092 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1094, label %1140

1094:                                             ; preds = %1091
  %1095 = icmp sgt i64 %4, 0
  br i1 %1095, label %1096, label %2640

1096:                                             ; preds = %1094
  %1097 = icmp sgt i64 %3, 0
  br label %1098

1098:                                             ; preds = %1096, %1136
  %1099 = phi i64 [ 0, %1096 ], [ %1138, %1136 ]
  %1100 = phi ptr [ %7, %1096 ], [ %1137, %1136 ]
  %1101 = add nsw i64 %1099, %2
  %1102 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1101, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1103 = icmp eq ptr %1102, null
  br i1 %1103, label %2640, label %1104

1104:                                             ; preds = %1098
  br i1 %1097, label %1105, label %1136

1105:                                             ; preds = %1104, %1105
  %1106 = phi ptr [ %1133, %1105 ], [ %1102, %1104 ]
  %1107 = phi i64 [ %1134, %1105 ], [ 0, %1104 ]
  %1108 = phi ptr [ %1132, %1105 ], [ %1100, %1104 ]
  %1109 = getelementptr inbounds %struct._PixelPacket, ptr %1106, i64 0, i32 2
  %1110 = load i16, ptr %1109, align 2, !tbaa !69
  %1111 = uitofp i16 %1110 to double
  %1112 = fmul double %1111, 0x3EF0001000100010
  %1113 = fptrunc double %1112 to float
  %1114 = getelementptr inbounds float, ptr %1108, i64 1
  store float %1113, ptr %1108, align 4, !tbaa !43, !noalias !109
  %1115 = getelementptr inbounds %struct._PixelPacket, ptr %1106, i64 0, i32 1
  %1116 = load i16, ptr %1115, align 2, !tbaa !68
  %1117 = uitofp i16 %1116 to double
  %1118 = fmul double %1117, 0x3EF0001000100010
  %1119 = fptrunc double %1118 to float
  %1120 = getelementptr inbounds float, ptr %1108, i64 2
  store float %1119, ptr %1114, align 4, !tbaa !43, !noalias !109
  %1121 = load i16, ptr %1106, align 2, !tbaa !67
  %1122 = uitofp i16 %1121 to double
  %1123 = fmul double %1122, 0x3EF0001000100010
  %1124 = fptrunc double %1123 to float
  %1125 = getelementptr inbounds float, ptr %1108, i64 3
  store float %1124, ptr %1120, align 4, !tbaa !43, !noalias !109
  %1126 = getelementptr inbounds %struct._PixelPacket, ptr %1106, i64 0, i32 3
  %1127 = load i16, ptr %1126, align 2, !tbaa !72
  %1128 = xor i16 %1127, -1
  %1129 = uitofp i16 %1128 to double
  %1130 = fmul double %1129, 0x3EF0001000100010
  %1131 = fptrunc double %1130 to float
  %1132 = getelementptr inbounds float, ptr %1108, i64 4
  store float %1131, ptr %1125, align 4, !tbaa !43, !noalias !109
  %1133 = getelementptr inbounds %struct._PixelPacket, ptr %1106, i64 1
  %1134 = add nuw nsw i64 %1107, 1
  %1135 = icmp eq i64 %1134, %3
  br i1 %1135, label %1136, label %1105, !llvm.loop !122

1136:                                             ; preds = %1105, %1104
  %1137 = phi ptr [ %1100, %1104 ], [ %1132, %1105 ]
  %1138 = add nuw nsw i64 %1099, 1
  %1139 = icmp eq i64 %1138, %4
  br i1 %1139, label %2640, label %1098, !llvm.loop !123

1140:                                             ; preds = %1091
  %1141 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1143, label %1183

1143:                                             ; preds = %1140
  %1144 = icmp sgt i64 %4, 0
  br i1 %1144, label %1145, label %2640

1145:                                             ; preds = %1143
  %1146 = icmp sgt i64 %3, 0
  br label %1147

1147:                                             ; preds = %1145, %1179
  %1148 = phi i64 [ 0, %1145 ], [ %1181, %1179 ]
  %1149 = phi ptr [ %7, %1145 ], [ %1180, %1179 ]
  %1150 = add nsw i64 %1148, %2
  %1151 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1150, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1152 = icmp eq ptr %1151, null
  br i1 %1152, label %2640, label %1153

1153:                                             ; preds = %1147
  br i1 %1146, label %1154, label %1179

1154:                                             ; preds = %1153, %1154
  %1155 = phi ptr [ %1176, %1154 ], [ %1151, %1153 ]
  %1156 = phi i64 [ %1177, %1154 ], [ 0, %1153 ]
  %1157 = phi ptr [ %1175, %1154 ], [ %1149, %1153 ]
  %1158 = getelementptr inbounds %struct._PixelPacket, ptr %1155, i64 0, i32 2
  %1159 = load i16, ptr %1158, align 2, !tbaa !69
  %1160 = uitofp i16 %1159 to double
  %1161 = fmul double %1160, 0x3EF0001000100010
  %1162 = fptrunc double %1161 to float
  %1163 = getelementptr inbounds float, ptr %1157, i64 1
  store float %1162, ptr %1157, align 4, !tbaa !43, !noalias !109
  %1164 = getelementptr inbounds %struct._PixelPacket, ptr %1155, i64 0, i32 1
  %1165 = load i16, ptr %1164, align 2, !tbaa !68
  %1166 = uitofp i16 %1165 to double
  %1167 = fmul double %1166, 0x3EF0001000100010
  %1168 = fptrunc double %1167 to float
  %1169 = getelementptr inbounds float, ptr %1157, i64 2
  store float %1168, ptr %1163, align 4, !tbaa !43, !noalias !109
  %1170 = load i16, ptr %1155, align 2, !tbaa !67
  %1171 = uitofp i16 %1170 to double
  %1172 = fmul double %1171, 0x3EF0001000100010
  %1173 = fptrunc double %1172 to float
  %1174 = getelementptr inbounds float, ptr %1157, i64 3
  store float %1173, ptr %1169, align 4, !tbaa !43, !noalias !109
  %1175 = getelementptr inbounds float, ptr %1157, i64 4
  store float 0.000000e+00, ptr %1174, align 4, !tbaa !43, !noalias !109
  %1176 = getelementptr inbounds %struct._PixelPacket, ptr %1155, i64 1
  %1177 = add nuw nsw i64 %1156, 1
  %1178 = icmp eq i64 %1177, %3
  br i1 %1178, label %1179, label %1154, !llvm.loop !124

1179:                                             ; preds = %1154, %1153
  %1180 = phi ptr [ %1149, %1153 ], [ %1175, %1154 ]
  %1181 = add nuw nsw i64 %1148, 1
  %1182 = icmp eq i64 %1181, %4
  br i1 %1182, label %2640, label %1147, !llvm.loop !125

1183:                                             ; preds = %1140
  %1184 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !109
  %1185 = icmp sgt i64 %4, 0
  br i1 %1185, label %1186, label %2640

1186:                                             ; preds = %1183
  %1187 = icmp sgt i64 %3, 0
  %1188 = icmp sgt i64 %1184, 0
  %1189 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %1190

1190:                                             ; preds = %1186, %1269
  %1191 = phi i64 [ 0, %1186 ], [ %1271, %1269 ]
  %1192 = phi ptr [ %7, %1186 ], [ %1270, %1269 ]
  %1193 = add nsw i64 %1191, %2
  %1194 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1193, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %2640, label %1196

1196:                                             ; preds = %1190
  %1197 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #19
  br i1 %1187, label %1198, label %1269

1198:                                             ; preds = %1196
  %1199 = icmp eq ptr %1197, null
  br label %1200

1200:                                             ; preds = %1198, %1264
  %1201 = phi ptr [ %1194, %1198 ], [ %1266, %1264 ]
  %1202 = phi i64 [ 0, %1198 ], [ %1267, %1264 ]
  %1203 = phi ptr [ %1192, %1198 ], [ %1265, %1264 ]
  br i1 %1188, label %1204, label %1264

1204:                                             ; preds = %1200
  %1205 = getelementptr inbounds i16, ptr %1197, i64 %1202
  %1206 = getelementptr inbounds %struct._PixelPacket, ptr %1201, i64 0, i32 3
  %1207 = getelementptr inbounds %struct._PixelPacket, ptr %1201, i64 0, i32 3
  %1208 = getelementptr inbounds %struct._PixelPacket, ptr %1201, i64 0, i32 1
  %1209 = getelementptr inbounds %struct._PixelPacket, ptr %1201, i64 0, i32 2
  br label %1210

1210:                                             ; preds = %1204, %1260
  %1211 = phi i64 [ 0, %1204 ], [ %1262, %1260 ]
  %1212 = phi ptr [ %1203, %1204 ], [ %1261, %1260 ]
  store float 0.000000e+00, ptr %1212, align 4, !tbaa !43, !noalias !109
  %1213 = getelementptr inbounds i32, ptr %18, i64 %1211
  %1214 = load i32, ptr %1213, align 4, !tbaa !34, !noalias !109
  switch i32 %1214, label %1258 [
    i32 14, label %1215
    i32 6, label %1215
    i32 9, label %1220
    i32 12, label %1220
    i32 3, label %1225
    i32 19, label %1225
    i32 1, label %1230
    i32 13, label %1236
    i32 2, label %1241
    i32 11, label %1253
  ]

1215:                                             ; preds = %1210, %1210
  %1216 = load i16, ptr %1209, align 2, !tbaa !69
  %1217 = uitofp i16 %1216 to double
  %1218 = fmul double %1217, 0x3EF0001000100010
  %1219 = fptrunc double %1218 to float
  br label %1258

1220:                                             ; preds = %1210, %1210
  %1221 = load i16, ptr %1208, align 2, !tbaa !68
  %1222 = uitofp i16 %1221 to double
  %1223 = fmul double %1222, 0x3EF0001000100010
  %1224 = fptrunc double %1223 to float
  br label %1258

1225:                                             ; preds = %1210, %1210
  %1226 = load i16, ptr %1201, align 2, !tbaa !67
  %1227 = uitofp i16 %1226 to double
  %1228 = fmul double %1227, 0x3EF0001000100010
  %1229 = fptrunc double %1228 to float
  br label %1258

1230:                                             ; preds = %1210
  %1231 = load i16, ptr %1207, align 2, !tbaa !72
  %1232 = xor i16 %1231, -1
  %1233 = uitofp i16 %1232 to double
  %1234 = fmul double %1233, 0x3EF0001000100010
  %1235 = fptrunc double %1234 to float
  br label %1258

1236:                                             ; preds = %1210
  %1237 = load i16, ptr %1206, align 2, !tbaa !72
  %1238 = uitofp i16 %1237 to double
  %1239 = fmul double %1238, 0x3EF0001000100010
  %1240 = fptrunc double %1239 to float
  br label %1258

1241:                                             ; preds = %1210
  %1242 = load i32, ptr %1189, align 4, !tbaa !60, !noalias !109
  %1243 = icmp eq i32 %1242, 12
  br i1 %1243, label %1244, label %1260

1244:                                             ; preds = %1241
  br i1 %1199, label %1248, label %1245

1245:                                             ; preds = %1244
  %1246 = load i16, ptr %1205, align 2, !tbaa !85
  %1247 = zext i16 %1246 to i32
  br label %1248

1248:                                             ; preds = %1245, %1244
  %1249 = phi i32 [ %1247, %1245 ], [ 0, %1244 ]
  %1250 = sitofp i32 %1249 to double
  %1251 = fmul double %1250, 0x3EF0001000100010
  %1252 = fptrunc double %1251 to float
  br label %1258

1253:                                             ; preds = %1210
  %1254 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %1201) #23
  %1255 = fpext float %1254 to double
  %1256 = fmul double %1255, 0x3EF0001000100010
  %1257 = fptrunc double %1256 to float
  br label %1258

1258:                                             ; preds = %1210, %1215, %1220, %1225, %1230, %1236, %1248, %1253
  %1259 = phi float [ %1257, %1253 ], [ %1252, %1248 ], [ %1240, %1236 ], [ %1235, %1230 ], [ %1229, %1225 ], [ %1224, %1220 ], [ %1219, %1215 ], [ 0.000000e+00, %1210 ]
  store float %1259, ptr %1212, align 4, !tbaa !43, !noalias !109
  br label %1260

1260:                                             ; preds = %1258, %1241
  %1261 = getelementptr inbounds float, ptr %1212, i64 1
  %1262 = add nuw nsw i64 %1211, 1
  %1263 = icmp eq i64 %1262, %1184
  br i1 %1263, label %1264, label %1210, !llvm.loop !126

1264:                                             ; preds = %1260, %1200
  %1265 = phi ptr [ %1203, %1200 ], [ %1261, %1260 ]
  %1266 = getelementptr inbounds %struct._PixelPacket, ptr %1201, i64 1
  %1267 = add nuw nsw i64 %1202, 1
  %1268 = icmp eq i64 %1267, %3
  br i1 %1268, label %1269, label %1200, !llvm.loop !127

1269:                                             ; preds = %1264, %1196
  %1270 = phi ptr [ %1192, %1196 ], [ %1265, %1264 ]
  %1271 = add nuw nsw i64 %1191, 1
  %1272 = icmp eq i64 %1271, %4
  br i1 %1272, label %2640, label %1190, !llvm.loop !128

1273:                                             ; preds = %77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %1274 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1276, label %1312

1276:                                             ; preds = %1273
  %1277 = icmp sgt i64 %4, 0
  br i1 %1277, label %1278, label %2640

1278:                                             ; preds = %1276
  %1279 = icmp sgt i64 %3, 0
  br label %1280

1280:                                             ; preds = %1278, %1308
  %1281 = phi i64 [ 0, %1278 ], [ %1310, %1308 ]
  %1282 = phi ptr [ %7, %1278 ], [ %1309, %1308 ]
  %1283 = add nsw i64 %1281, %2
  %1284 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1283, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1285 = icmp eq ptr %1284, null
  br i1 %1285, label %2640, label %1286

1286:                                             ; preds = %1280
  br i1 %1279, label %1287, label %1308

1287:                                             ; preds = %1286, %1287
  %1288 = phi ptr [ %1305, %1287 ], [ %1284, %1286 ]
  %1289 = phi ptr [ %1304, %1287 ], [ %1282, %1286 ]
  %1290 = phi i64 [ %1306, %1287 ], [ 0, %1286 ]
  %1291 = load i16, ptr %1288, align 2, !tbaa !67
  %1292 = zext i16 %1291 to i32
  %1293 = mul nuw i32 %1292, 65537
  %1294 = getelementptr inbounds i32, ptr %1289, i64 1
  store i32 %1293, ptr %1289, align 4, !tbaa !34, !noalias !129
  %1295 = getelementptr inbounds %struct._PixelPacket, ptr %1288, i64 0, i32 1
  %1296 = load i16, ptr %1295, align 2, !tbaa !68
  %1297 = zext i16 %1296 to i32
  %1298 = mul nuw i32 %1297, 65537
  %1299 = getelementptr inbounds i32, ptr %1289, i64 2
  store i32 %1298, ptr %1294, align 4, !tbaa !34, !noalias !129
  %1300 = getelementptr inbounds %struct._PixelPacket, ptr %1288, i64 0, i32 2
  %1301 = load i16, ptr %1300, align 2, !tbaa !69
  %1302 = zext i16 %1301 to i32
  %1303 = mul nuw i32 %1302, 65537
  %1304 = getelementptr inbounds i32, ptr %1289, i64 3
  store i32 %1303, ptr %1299, align 4, !tbaa !34, !noalias !129
  %1305 = getelementptr inbounds %struct._PixelPacket, ptr %1288, i64 1
  %1306 = add nuw nsw i64 %1290, 1
  %1307 = icmp eq i64 %1306, %3
  br i1 %1307, label %1308, label %1287, !llvm.loop !132

1308:                                             ; preds = %1287, %1286
  %1309 = phi ptr [ %1282, %1286 ], [ %1304, %1287 ]
  %1310 = add nuw nsw i64 %1281, 1
  %1311 = icmp eq i64 %1310, %4
  br i1 %1311, label %2640, label %1280, !llvm.loop !133

1312:                                             ; preds = %1273
  %1313 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1315, label %1357

1315:                                             ; preds = %1312
  %1316 = icmp sgt i64 %4, 0
  br i1 %1316, label %1317, label %2640

1317:                                             ; preds = %1315
  %1318 = icmp sgt i64 %3, 0
  br label %1319

1319:                                             ; preds = %1317, %1353
  %1320 = phi i64 [ 0, %1317 ], [ %1355, %1353 ]
  %1321 = phi ptr [ %7, %1317 ], [ %1354, %1353 ]
  %1322 = add nsw i64 %1320, %2
  %1323 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1322, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1324 = icmp eq ptr %1323, null
  br i1 %1324, label %2640, label %1325

1325:                                             ; preds = %1319
  br i1 %1318, label %1326, label %1353

1326:                                             ; preds = %1325, %1326
  %1327 = phi ptr [ %1350, %1326 ], [ %1323, %1325 ]
  %1328 = phi ptr [ %1349, %1326 ], [ %1321, %1325 ]
  %1329 = phi i64 [ %1351, %1326 ], [ 0, %1325 ]
  %1330 = load i16, ptr %1327, align 2, !tbaa !67
  %1331 = zext i16 %1330 to i32
  %1332 = mul nuw i32 %1331, 65537
  %1333 = getelementptr inbounds i32, ptr %1328, i64 1
  store i32 %1332, ptr %1328, align 4, !tbaa !34, !noalias !129
  %1334 = getelementptr inbounds %struct._PixelPacket, ptr %1327, i64 0, i32 1
  %1335 = load i16, ptr %1334, align 2, !tbaa !68
  %1336 = zext i16 %1335 to i32
  %1337 = mul nuw i32 %1336, 65537
  %1338 = getelementptr inbounds i32, ptr %1328, i64 2
  store i32 %1337, ptr %1333, align 4, !tbaa !34, !noalias !129
  %1339 = getelementptr inbounds %struct._PixelPacket, ptr %1327, i64 0, i32 2
  %1340 = load i16, ptr %1339, align 2, !tbaa !69
  %1341 = zext i16 %1340 to i32
  %1342 = mul nuw i32 %1341, 65537
  %1343 = getelementptr inbounds i32, ptr %1328, i64 3
  store i32 %1342, ptr %1338, align 4, !tbaa !34, !noalias !129
  %1344 = getelementptr inbounds %struct._PixelPacket, ptr %1327, i64 0, i32 3
  %1345 = load i16, ptr %1344, align 2, !tbaa !72
  %1346 = xor i16 %1345, -1
  %1347 = zext i16 %1346 to i32
  %1348 = mul nuw i32 %1347, 65537
  %1349 = getelementptr inbounds i32, ptr %1328, i64 4
  store i32 %1348, ptr %1343, align 4, !tbaa !34, !noalias !129
  %1350 = getelementptr inbounds %struct._PixelPacket, ptr %1327, i64 1
  %1351 = add nuw nsw i64 %1329, 1
  %1352 = icmp eq i64 %1351, %3
  br i1 %1352, label %1353, label %1326, !llvm.loop !134

1353:                                             ; preds = %1326, %1325
  %1354 = phi ptr [ %1321, %1325 ], [ %1349, %1326 ]
  %1355 = add nuw nsw i64 %1320, 1
  %1356 = icmp eq i64 %1355, %4
  br i1 %1356, label %2640, label %1319, !llvm.loop !135

1357:                                             ; preds = %1312
  %1358 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1360, label %1397

1360:                                             ; preds = %1357
  %1361 = icmp sgt i64 %4, 0
  br i1 %1361, label %1362, label %2640

1362:                                             ; preds = %1360
  %1363 = icmp sgt i64 %3, 0
  br label %1364

1364:                                             ; preds = %1362, %1393
  %1365 = phi i64 [ 0, %1362 ], [ %1395, %1393 ]
  %1366 = phi ptr [ %7, %1362 ], [ %1394, %1393 ]
  %1367 = add nsw i64 %1365, %2
  %1368 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1367, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1369 = icmp eq ptr %1368, null
  br i1 %1369, label %2640, label %1370

1370:                                             ; preds = %1364
  br i1 %1363, label %1371, label %1393

1371:                                             ; preds = %1370, %1371
  %1372 = phi ptr [ %1390, %1371 ], [ %1368, %1370 ]
  %1373 = phi ptr [ %1389, %1371 ], [ %1366, %1370 ]
  %1374 = phi i64 [ %1391, %1371 ], [ 0, %1370 ]
  %1375 = load i16, ptr %1372, align 2, !tbaa !67
  %1376 = zext i16 %1375 to i32
  %1377 = mul nuw i32 %1376, 65537
  %1378 = getelementptr inbounds i32, ptr %1373, i64 1
  store i32 %1377, ptr %1373, align 4, !tbaa !34, !noalias !129
  %1379 = getelementptr inbounds %struct._PixelPacket, ptr %1372, i64 0, i32 1
  %1380 = load i16, ptr %1379, align 2, !tbaa !68
  %1381 = zext i16 %1380 to i32
  %1382 = mul nuw i32 %1381, 65537
  %1383 = getelementptr inbounds i32, ptr %1373, i64 2
  store i32 %1382, ptr %1378, align 4, !tbaa !34, !noalias !129
  %1384 = getelementptr inbounds %struct._PixelPacket, ptr %1372, i64 0, i32 2
  %1385 = load i16, ptr %1384, align 2, !tbaa !69
  %1386 = zext i16 %1385 to i32
  %1387 = mul nuw i32 %1386, 65537
  %1388 = getelementptr inbounds i32, ptr %1373, i64 3
  store i32 %1387, ptr %1383, align 4, !tbaa !34, !noalias !129
  %1389 = getelementptr inbounds i32, ptr %1373, i64 4
  store i32 0, ptr %1388, align 4, !tbaa !34, !noalias !129
  %1390 = getelementptr inbounds %struct._PixelPacket, ptr %1372, i64 1
  %1391 = add nuw nsw i64 %1374, 1
  %1392 = icmp eq i64 %1391, %3
  br i1 %1392, label %1393, label %1371, !llvm.loop !136

1393:                                             ; preds = %1371, %1370
  %1394 = phi ptr [ %1366, %1370 ], [ %1389, %1371 ]
  %1395 = add nuw nsw i64 %1365, 1
  %1396 = icmp eq i64 %1395, %4
  br i1 %1396, label %2640, label %1364, !llvm.loop !137

1397:                                             ; preds = %1357
  %1398 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1400, label %1434

1400:                                             ; preds = %1397
  %1401 = icmp sgt i64 %4, 0
  br i1 %1401, label %1402, label %2640

1402:                                             ; preds = %1400
  %1403 = icmp sgt i64 %3, 0
  br label %1404

1404:                                             ; preds = %1402, %1430
  %1405 = phi i64 [ 0, %1402 ], [ %1432, %1430 ]
  %1406 = phi ptr [ %7, %1402 ], [ %1431, %1430 ]
  %1407 = add nsw i64 %1405, %2
  %1408 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1407, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1409 = icmp eq ptr %1408, null
  br i1 %1409, label %2640, label %1410

1410:                                             ; preds = %1404
  br i1 %1403, label %1411, label %1430

1411:                                             ; preds = %1410, %1422
  %1412 = phi ptr [ %1427, %1422 ], [ %1408, %1410 ]
  %1413 = phi ptr [ %1426, %1422 ], [ %1406, %1410 ]
  %1414 = phi i64 [ %1428, %1422 ], [ 0, %1410 ]
  %1415 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %1412) #23
  %1416 = fcmp ugt float %1415, 0.000000e+00
  br i1 %1416, label %1417, label %1422

1417:                                             ; preds = %1411
  %1418 = fcmp ult float %1415, 6.553500e+04
  br i1 %1418, label %1419, label %1422

1419:                                             ; preds = %1417
  %1420 = fadd float %1415, 5.000000e-01
  %1421 = fptoui float %1420 to i16
  br label %1422

1422:                                             ; preds = %1419, %1417, %1411
  %1423 = phi i16 [ %1421, %1419 ], [ 0, %1411 ], [ -1, %1417 ]
  %1424 = zext i16 %1423 to i32
  %1425 = mul nuw i32 %1424, 65537
  %1426 = getelementptr inbounds i32, ptr %1413, i64 1
  store i32 %1425, ptr %1413, align 4, !tbaa !34, !noalias !129
  %1427 = getelementptr inbounds %struct._PixelPacket, ptr %1412, i64 1
  %1428 = add nuw nsw i64 %1414, 1
  %1429 = icmp eq i64 %1428, %3
  br i1 %1429, label %1430, label %1411, !llvm.loop !138

1430:                                             ; preds = %1422, %1410
  %1431 = phi ptr [ %1406, %1410 ], [ %1426, %1422 ]
  %1432 = add nuw nsw i64 %1405, 1
  %1433 = icmp eq i64 %1432, %4
  br i1 %1433, label %2640, label %1404, !llvm.loop !139

1434:                                             ; preds = %1397
  %1435 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1437, label %1473

1437:                                             ; preds = %1434
  %1438 = icmp sgt i64 %4, 0
  br i1 %1438, label %1439, label %2640

1439:                                             ; preds = %1437
  %1440 = icmp sgt i64 %3, 0
  br label %1441

1441:                                             ; preds = %1439, %1469
  %1442 = phi i64 [ 0, %1439 ], [ %1471, %1469 ]
  %1443 = phi ptr [ %7, %1439 ], [ %1470, %1469 ]
  %1444 = add nsw i64 %1442, %2
  %1445 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1444, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1446 = icmp eq ptr %1445, null
  br i1 %1446, label %2640, label %1447

1447:                                             ; preds = %1441
  br i1 %1440, label %1448, label %1469

1448:                                             ; preds = %1447, %1448
  %1449 = phi ptr [ %1466, %1448 ], [ %1445, %1447 ]
  %1450 = phi ptr [ %1465, %1448 ], [ %1443, %1447 ]
  %1451 = phi i64 [ %1467, %1448 ], [ 0, %1447 ]
  %1452 = getelementptr inbounds %struct._PixelPacket, ptr %1449, i64 0, i32 2
  %1453 = load i16, ptr %1452, align 2, !tbaa !69
  %1454 = zext i16 %1453 to i32
  %1455 = mul nuw i32 %1454, 65537
  %1456 = getelementptr inbounds i32, ptr %1450, i64 1
  store i32 %1455, ptr %1450, align 4, !tbaa !34, !noalias !129
  %1457 = getelementptr inbounds %struct._PixelPacket, ptr %1449, i64 0, i32 1
  %1458 = load i16, ptr %1457, align 2, !tbaa !68
  %1459 = zext i16 %1458 to i32
  %1460 = mul nuw i32 %1459, 65537
  %1461 = getelementptr inbounds i32, ptr %1450, i64 2
  store i32 %1460, ptr %1456, align 4, !tbaa !34, !noalias !129
  %1462 = load i16, ptr %1449, align 2, !tbaa !67
  %1463 = zext i16 %1462 to i32
  %1464 = mul nuw i32 %1463, 65537
  %1465 = getelementptr inbounds i32, ptr %1450, i64 3
  store i32 %1464, ptr %1461, align 4, !tbaa !34, !noalias !129
  %1466 = getelementptr inbounds %struct._PixelPacket, ptr %1449, i64 1
  %1467 = add nuw nsw i64 %1451, 1
  %1468 = icmp eq i64 %1467, %3
  br i1 %1468, label %1469, label %1448, !llvm.loop !140

1469:                                             ; preds = %1448, %1447
  %1470 = phi ptr [ %1443, %1447 ], [ %1465, %1448 ]
  %1471 = add nuw nsw i64 %1442, 1
  %1472 = icmp eq i64 %1471, %4
  br i1 %1472, label %2640, label %1441, !llvm.loop !141

1473:                                             ; preds = %1434
  %1474 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1476, label %1518

1476:                                             ; preds = %1473
  %1477 = icmp sgt i64 %4, 0
  br i1 %1477, label %1478, label %2640

1478:                                             ; preds = %1476
  %1479 = icmp sgt i64 %3, 0
  br label %1480

1480:                                             ; preds = %1478, %1514
  %1481 = phi i64 [ 0, %1478 ], [ %1516, %1514 ]
  %1482 = phi ptr [ %7, %1478 ], [ %1515, %1514 ]
  %1483 = add nsw i64 %1481, %2
  %1484 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1483, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1485 = icmp eq ptr %1484, null
  br i1 %1485, label %2640, label %1486

1486:                                             ; preds = %1480
  br i1 %1479, label %1487, label %1514

1487:                                             ; preds = %1486, %1487
  %1488 = phi ptr [ %1511, %1487 ], [ %1484, %1486 ]
  %1489 = phi ptr [ %1510, %1487 ], [ %1482, %1486 ]
  %1490 = phi i64 [ %1512, %1487 ], [ 0, %1486 ]
  %1491 = getelementptr inbounds %struct._PixelPacket, ptr %1488, i64 0, i32 2
  %1492 = load i16, ptr %1491, align 2, !tbaa !69
  %1493 = zext i16 %1492 to i32
  %1494 = mul nuw i32 %1493, 65537
  %1495 = getelementptr inbounds i32, ptr %1489, i64 1
  store i32 %1494, ptr %1489, align 4, !tbaa !34, !noalias !129
  %1496 = getelementptr inbounds %struct._PixelPacket, ptr %1488, i64 0, i32 1
  %1497 = load i16, ptr %1496, align 2, !tbaa !68
  %1498 = zext i16 %1497 to i32
  %1499 = mul nuw i32 %1498, 65537
  %1500 = getelementptr inbounds i32, ptr %1489, i64 2
  store i32 %1499, ptr %1495, align 4, !tbaa !34, !noalias !129
  %1501 = load i16, ptr %1488, align 2, !tbaa !67
  %1502 = zext i16 %1501 to i32
  %1503 = mul nuw i32 %1502, 65537
  %1504 = getelementptr inbounds i32, ptr %1489, i64 3
  store i32 %1503, ptr %1500, align 4, !tbaa !34, !noalias !129
  %1505 = getelementptr inbounds %struct._PixelPacket, ptr %1488, i64 0, i32 3
  %1506 = load i16, ptr %1505, align 2, !tbaa !72
  %1507 = xor i16 %1506, -1
  %1508 = zext i16 %1507 to i32
  %1509 = mul nuw i32 %1508, 65537
  %1510 = getelementptr inbounds i32, ptr %1489, i64 4
  store i32 %1509, ptr %1504, align 4, !tbaa !34, !noalias !129
  %1511 = getelementptr inbounds %struct._PixelPacket, ptr %1488, i64 1
  %1512 = add nuw nsw i64 %1490, 1
  %1513 = icmp eq i64 %1512, %3
  br i1 %1513, label %1514, label %1487, !llvm.loop !142

1514:                                             ; preds = %1487, %1486
  %1515 = phi ptr [ %1482, %1486 ], [ %1510, %1487 ]
  %1516 = add nuw nsw i64 %1481, 1
  %1517 = icmp eq i64 %1516, %4
  br i1 %1517, label %2640, label %1480, !llvm.loop !143

1518:                                             ; preds = %1473
  %1519 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1521, label %1558

1521:                                             ; preds = %1518
  %1522 = icmp sgt i64 %4, 0
  br i1 %1522, label %1523, label %2640

1523:                                             ; preds = %1521
  %1524 = icmp sgt i64 %3, 0
  br label %1525

1525:                                             ; preds = %1523, %1554
  %1526 = phi i64 [ 0, %1523 ], [ %1556, %1554 ]
  %1527 = phi ptr [ %7, %1523 ], [ %1555, %1554 ]
  %1528 = add nsw i64 %1526, %2
  %1529 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1528, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1530 = icmp eq ptr %1529, null
  br i1 %1530, label %2640, label %1531

1531:                                             ; preds = %1525
  br i1 %1524, label %1532, label %1554

1532:                                             ; preds = %1531, %1532
  %1533 = phi ptr [ %1551, %1532 ], [ %1529, %1531 ]
  %1534 = phi ptr [ %1550, %1532 ], [ %1527, %1531 ]
  %1535 = phi i64 [ %1552, %1532 ], [ 0, %1531 ]
  %1536 = getelementptr inbounds %struct._PixelPacket, ptr %1533, i64 0, i32 2
  %1537 = load i16, ptr %1536, align 2, !tbaa !69
  %1538 = zext i16 %1537 to i32
  %1539 = mul nuw i32 %1538, 65537
  %1540 = getelementptr inbounds i32, ptr %1534, i64 1
  store i32 %1539, ptr %1534, align 4, !tbaa !34, !noalias !129
  %1541 = getelementptr inbounds %struct._PixelPacket, ptr %1533, i64 0, i32 1
  %1542 = load i16, ptr %1541, align 2, !tbaa !68
  %1543 = zext i16 %1542 to i32
  %1544 = mul nuw i32 %1543, 65537
  %1545 = getelementptr inbounds i32, ptr %1534, i64 2
  store i32 %1544, ptr %1540, align 4, !tbaa !34, !noalias !129
  %1546 = load i16, ptr %1533, align 2, !tbaa !67
  %1547 = zext i16 %1546 to i32
  %1548 = mul nuw i32 %1547, 65537
  %1549 = getelementptr inbounds i32, ptr %1534, i64 3
  store i32 %1548, ptr %1545, align 4, !tbaa !34, !noalias !129
  %1550 = getelementptr inbounds i32, ptr %1534, i64 4
  store i32 0, ptr %1549, align 4, !tbaa !34, !noalias !129
  %1551 = getelementptr inbounds %struct._PixelPacket, ptr %1533, i64 1
  %1552 = add nuw nsw i64 %1535, 1
  %1553 = icmp eq i64 %1552, %3
  br i1 %1553, label %1554, label %1532, !llvm.loop !144

1554:                                             ; preds = %1532, %1531
  %1555 = phi ptr [ %1527, %1531 ], [ %1550, %1532 ]
  %1556 = add nuw nsw i64 %1526, 1
  %1557 = icmp eq i64 %1556, %4
  br i1 %1557, label %2640, label %1525, !llvm.loop !145

1558:                                             ; preds = %1518
  %1559 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !129
  %1560 = icmp sgt i64 %4, 0
  br i1 %1560, label %1561, label %2640

1561:                                             ; preds = %1558
  %1562 = icmp sgt i64 %3, 0
  %1563 = icmp sgt i64 %1559, 0
  %1564 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %1565

1565:                                             ; preds = %1561, %1644
  %1566 = phi i64 [ 0, %1561 ], [ %1646, %1644 ]
  %1567 = phi ptr [ %7, %1561 ], [ %1645, %1644 ]
  %1568 = add nsw i64 %1566, %2
  %1569 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1568, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1570 = icmp eq ptr %1569, null
  br i1 %1570, label %2640, label %1571

1571:                                             ; preds = %1565
  %1572 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #19
  br i1 %1562, label %1573, label %1644

1573:                                             ; preds = %1571
  %1574 = icmp eq ptr %1572, null
  br label %1575

1575:                                             ; preds = %1573, %1639
  %1576 = phi ptr [ %1569, %1573 ], [ %1641, %1639 ]
  %1577 = phi ptr [ %1567, %1573 ], [ %1640, %1639 ]
  %1578 = phi i64 [ 0, %1573 ], [ %1642, %1639 ]
  br i1 %1563, label %1579, label %1639

1579:                                             ; preds = %1575
  %1580 = getelementptr inbounds i16, ptr %1572, i64 %1578
  %1581 = getelementptr inbounds %struct._PixelPacket, ptr %1576, i64 0, i32 3
  %1582 = getelementptr inbounds %struct._PixelPacket, ptr %1576, i64 0, i32 3
  %1583 = getelementptr inbounds %struct._PixelPacket, ptr %1576, i64 0, i32 1
  %1584 = getelementptr inbounds %struct._PixelPacket, ptr %1576, i64 0, i32 2
  br label %1585

1585:                                             ; preds = %1579, %1635
  %1586 = phi i64 [ 0, %1579 ], [ %1637, %1635 ]
  %1587 = phi ptr [ %1577, %1579 ], [ %1636, %1635 ]
  store i32 0, ptr %1587, align 4, !tbaa !34, !noalias !129
  %1588 = getelementptr inbounds i32, ptr %18, i64 %1586
  %1589 = load i32, ptr %1588, align 4, !tbaa !34, !noalias !129
  switch i32 %1589, label %1633 [
    i32 14, label %1590
    i32 6, label %1590
    i32 9, label %1594
    i32 12, label %1594
    i32 3, label %1598
    i32 19, label %1598
    i32 1, label %1602
    i32 13, label %1607
    i32 2, label %1611
    i32 11, label %1621
  ]

1590:                                             ; preds = %1585, %1585
  %1591 = load i16, ptr %1584, align 2, !tbaa !69
  %1592 = zext i16 %1591 to i32
  %1593 = mul nuw i32 %1592, 65537
  br label %1633

1594:                                             ; preds = %1585, %1585
  %1595 = load i16, ptr %1583, align 2, !tbaa !68
  %1596 = zext i16 %1595 to i32
  %1597 = mul nuw i32 %1596, 65537
  br label %1633

1598:                                             ; preds = %1585, %1585
  %1599 = load i16, ptr %1576, align 2, !tbaa !67
  %1600 = zext i16 %1599 to i32
  %1601 = mul nuw i32 %1600, 65537
  br label %1633

1602:                                             ; preds = %1585
  %1603 = load i16, ptr %1582, align 2, !tbaa !72
  %1604 = xor i16 %1603, -1
  %1605 = zext i16 %1604 to i32
  %1606 = mul nuw i32 %1605, 65537
  br label %1633

1607:                                             ; preds = %1585
  %1608 = load i16, ptr %1581, align 2, !tbaa !72
  %1609 = zext i16 %1608 to i32
  %1610 = mul nuw i32 %1609, 65537
  br label %1633

1611:                                             ; preds = %1585
  %1612 = load i32, ptr %1564, align 4, !tbaa !60, !noalias !129
  %1613 = icmp eq i32 %1612, 12
  br i1 %1613, label %1614, label %1635

1614:                                             ; preds = %1611
  br i1 %1574, label %1617, label %1615

1615:                                             ; preds = %1614
  %1616 = load i16, ptr %1580, align 2, !tbaa !85
  br label %1617

1617:                                             ; preds = %1615, %1614
  %1618 = phi i16 [ %1616, %1615 ], [ 0, %1614 ]
  %1619 = zext i16 %1618 to i32
  %1620 = mul nuw i32 %1619, 65537
  br label %1633

1621:                                             ; preds = %1585
  %1622 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %1576) #23
  %1623 = fcmp ugt float %1622, 0.000000e+00
  br i1 %1623, label %1624, label %1629

1624:                                             ; preds = %1621
  %1625 = fcmp ult float %1622, 6.553500e+04
  br i1 %1625, label %1626, label %1629

1626:                                             ; preds = %1624
  %1627 = fadd float %1622, 5.000000e-01
  %1628 = fptoui float %1627 to i16
  br label %1629

1629:                                             ; preds = %1626, %1624, %1621
  %1630 = phi i16 [ %1628, %1626 ], [ 0, %1621 ], [ -1, %1624 ]
  %1631 = zext i16 %1630 to i32
  %1632 = mul nuw i32 %1631, 65537
  br label %1633

1633:                                             ; preds = %1585, %1590, %1594, %1598, %1602, %1607, %1617, %1629
  %1634 = phi i32 [ %1632, %1629 ], [ %1620, %1617 ], [ %1610, %1607 ], [ %1606, %1602 ], [ %1601, %1598 ], [ %1597, %1594 ], [ %1593, %1590 ], [ 0, %1585 ]
  store i32 %1634, ptr %1587, align 4, !tbaa !34, !noalias !129
  br label %1635

1635:                                             ; preds = %1633, %1611
  %1636 = getelementptr inbounds i32, ptr %1587, i64 1
  %1637 = add nuw nsw i64 %1586, 1
  %1638 = icmp eq i64 %1637, %1559
  br i1 %1638, label %1639, label %1585, !llvm.loop !146

1639:                                             ; preds = %1635, %1575
  %1640 = phi ptr [ %1577, %1575 ], [ %1636, %1635 ]
  %1641 = getelementptr inbounds %struct._PixelPacket, ptr %1576, i64 1
  %1642 = add nuw nsw i64 %1578, 1
  %1643 = icmp eq i64 %1642, %3
  br i1 %1643, label %1644, label %1575, !llvm.loop !147

1644:                                             ; preds = %1639, %1571
  %1645 = phi ptr [ %1567, %1571 ], [ %1640, %1639 ]
  %1646 = add nuw nsw i64 %1566, 1
  %1647 = icmp eq i64 %1646, %4
  br i1 %1647, label %2640, label %1565, !llvm.loop !148

1648:                                             ; preds = %77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %1649 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %1650 = icmp eq i32 %1649, 0
  br i1 %1650, label %1651, label %1687

1651:                                             ; preds = %1648
  %1652 = icmp sgt i64 %4, 0
  br i1 %1652, label %1653, label %2640

1653:                                             ; preds = %1651
  %1654 = icmp sgt i64 %3, 0
  br label %1655

1655:                                             ; preds = %1653, %1683
  %1656 = phi i64 [ 0, %1653 ], [ %1685, %1683 ]
  %1657 = phi ptr [ %7, %1653 ], [ %1684, %1683 ]
  %1658 = add nsw i64 %1656, %2
  %1659 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1658, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1660 = icmp eq ptr %1659, null
  br i1 %1660, label %2640, label %1661

1661:                                             ; preds = %1655
  br i1 %1654, label %1662, label %1683

1662:                                             ; preds = %1661, %1662
  %1663 = phi ptr [ %1680, %1662 ], [ %1659, %1661 ]
  %1664 = phi i64 [ %1681, %1662 ], [ 0, %1661 ]
  %1665 = phi ptr [ %1679, %1662 ], [ %1657, %1661 ]
  %1666 = load i16, ptr %1663, align 2, !tbaa !67
  %1667 = zext i16 %1666 to i32
  %1668 = mul nuw i32 %1667, 65537
  %1669 = getelementptr inbounds i32, ptr %1665, i64 1
  store i32 %1668, ptr %1665, align 4, !tbaa !34, !noalias !149
  %1670 = getelementptr inbounds %struct._PixelPacket, ptr %1663, i64 0, i32 1
  %1671 = load i16, ptr %1670, align 2, !tbaa !68
  %1672 = zext i16 %1671 to i32
  %1673 = mul nuw i32 %1672, 65537
  %1674 = getelementptr inbounds i32, ptr %1665, i64 2
  store i32 %1673, ptr %1669, align 4, !tbaa !34, !noalias !149
  %1675 = getelementptr inbounds %struct._PixelPacket, ptr %1663, i64 0, i32 2
  %1676 = load i16, ptr %1675, align 2, !tbaa !69
  %1677 = zext i16 %1676 to i32
  %1678 = mul nuw i32 %1677, 65537
  %1679 = getelementptr inbounds i32, ptr %1665, i64 3
  store i32 %1678, ptr %1674, align 4, !tbaa !34, !noalias !149
  %1680 = getelementptr inbounds %struct._PixelPacket, ptr %1663, i64 1
  %1681 = add nuw nsw i64 %1664, 1
  %1682 = icmp eq i64 %1681, %3
  br i1 %1682, label %1683, label %1662, !llvm.loop !152

1683:                                             ; preds = %1662, %1661
  %1684 = phi ptr [ %1657, %1661 ], [ %1679, %1662 ]
  %1685 = add nuw nsw i64 %1656, 1
  %1686 = icmp eq i64 %1685, %4
  br i1 %1686, label %2640, label %1655, !llvm.loop !153

1687:                                             ; preds = %1648
  %1688 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %1689 = icmp eq i32 %1688, 0
  br i1 %1689, label %1690, label %1732

1690:                                             ; preds = %1687
  %1691 = icmp sgt i64 %4, 0
  br i1 %1691, label %1692, label %2640

1692:                                             ; preds = %1690
  %1693 = icmp sgt i64 %3, 0
  br label %1694

1694:                                             ; preds = %1692, %1728
  %1695 = phi i64 [ 0, %1692 ], [ %1730, %1728 ]
  %1696 = phi ptr [ %7, %1692 ], [ %1729, %1728 ]
  %1697 = add nsw i64 %1695, %2
  %1698 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1697, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1699 = icmp eq ptr %1698, null
  br i1 %1699, label %2640, label %1700

1700:                                             ; preds = %1694
  br i1 %1693, label %1701, label %1728

1701:                                             ; preds = %1700, %1701
  %1702 = phi ptr [ %1725, %1701 ], [ %1698, %1700 ]
  %1703 = phi i64 [ %1726, %1701 ], [ 0, %1700 ]
  %1704 = phi ptr [ %1724, %1701 ], [ %1696, %1700 ]
  %1705 = load i16, ptr %1702, align 2, !tbaa !67
  %1706 = zext i16 %1705 to i32
  %1707 = mul nuw i32 %1706, 65537
  %1708 = getelementptr inbounds i32, ptr %1704, i64 1
  store i32 %1707, ptr %1704, align 4, !tbaa !34, !noalias !149
  %1709 = getelementptr inbounds %struct._PixelPacket, ptr %1702, i64 0, i32 1
  %1710 = load i16, ptr %1709, align 2, !tbaa !68
  %1711 = zext i16 %1710 to i32
  %1712 = mul nuw i32 %1711, 65537
  %1713 = getelementptr inbounds i32, ptr %1704, i64 2
  store i32 %1712, ptr %1708, align 4, !tbaa !34, !noalias !149
  %1714 = getelementptr inbounds %struct._PixelPacket, ptr %1702, i64 0, i32 2
  %1715 = load i16, ptr %1714, align 2, !tbaa !69
  %1716 = zext i16 %1715 to i32
  %1717 = mul nuw i32 %1716, 65537
  %1718 = getelementptr inbounds i32, ptr %1704, i64 3
  store i32 %1717, ptr %1713, align 4, !tbaa !34, !noalias !149
  %1719 = getelementptr inbounds %struct._PixelPacket, ptr %1702, i64 0, i32 3
  %1720 = load i16, ptr %1719, align 2, !tbaa !72
  %1721 = xor i16 %1720, -1
  %1722 = zext i16 %1721 to i32
  %1723 = mul nuw i32 %1722, 65537
  %1724 = getelementptr inbounds i32, ptr %1704, i64 4
  store i32 %1723, ptr %1718, align 4, !tbaa !34, !noalias !149
  %1725 = getelementptr inbounds %struct._PixelPacket, ptr %1702, i64 1
  %1726 = add nuw nsw i64 %1703, 1
  %1727 = icmp eq i64 %1726, %3
  br i1 %1727, label %1728, label %1701, !llvm.loop !154

1728:                                             ; preds = %1701, %1700
  %1729 = phi ptr [ %1696, %1700 ], [ %1724, %1701 ]
  %1730 = add nuw nsw i64 %1695, 1
  %1731 = icmp eq i64 %1730, %4
  br i1 %1731, label %2640, label %1694, !llvm.loop !155

1732:                                             ; preds = %1687
  %1733 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %1734 = icmp eq i32 %1733, 0
  br i1 %1734, label %1735, label %1772

1735:                                             ; preds = %1732
  %1736 = icmp sgt i64 %4, 0
  br i1 %1736, label %1737, label %2640

1737:                                             ; preds = %1735
  %1738 = icmp sgt i64 %3, 0
  br label %1739

1739:                                             ; preds = %1737, %1768
  %1740 = phi i64 [ 0, %1737 ], [ %1770, %1768 ]
  %1741 = phi ptr [ %7, %1737 ], [ %1769, %1768 ]
  %1742 = add nsw i64 %1740, %2
  %1743 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1742, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1744 = icmp eq ptr %1743, null
  br i1 %1744, label %2640, label %1745

1745:                                             ; preds = %1739
  br i1 %1738, label %1746, label %1768

1746:                                             ; preds = %1745, %1746
  %1747 = phi ptr [ %1765, %1746 ], [ %1743, %1745 ]
  %1748 = phi i64 [ %1766, %1746 ], [ 0, %1745 ]
  %1749 = phi ptr [ %1764, %1746 ], [ %1741, %1745 ]
  %1750 = load i16, ptr %1747, align 2, !tbaa !67
  %1751 = zext i16 %1750 to i32
  %1752 = mul nuw i32 %1751, 65537
  %1753 = getelementptr inbounds i32, ptr %1749, i64 1
  store i32 %1752, ptr %1749, align 4, !tbaa !34, !noalias !149
  %1754 = getelementptr inbounds %struct._PixelPacket, ptr %1747, i64 0, i32 1
  %1755 = load i16, ptr %1754, align 2, !tbaa !68
  %1756 = zext i16 %1755 to i32
  %1757 = mul nuw i32 %1756, 65537
  %1758 = getelementptr inbounds i32, ptr %1749, i64 2
  store i32 %1757, ptr %1753, align 4, !tbaa !34, !noalias !149
  %1759 = getelementptr inbounds %struct._PixelPacket, ptr %1747, i64 0, i32 2
  %1760 = load i16, ptr %1759, align 2, !tbaa !69
  %1761 = zext i16 %1760 to i32
  %1762 = mul nuw i32 %1761, 65537
  %1763 = getelementptr inbounds i32, ptr %1749, i64 3
  store i32 %1762, ptr %1758, align 4, !tbaa !34, !noalias !149
  %1764 = getelementptr inbounds i32, ptr %1749, i64 4
  store i32 0, ptr %1763, align 4, !tbaa !34, !noalias !149
  %1765 = getelementptr inbounds %struct._PixelPacket, ptr %1747, i64 1
  %1766 = add nuw nsw i64 %1748, 1
  %1767 = icmp eq i64 %1766, %3
  br i1 %1767, label %1768, label %1746, !llvm.loop !156

1768:                                             ; preds = %1746, %1745
  %1769 = phi ptr [ %1741, %1745 ], [ %1764, %1746 ]
  %1770 = add nuw nsw i64 %1740, 1
  %1771 = icmp eq i64 %1770, %4
  br i1 %1771, label %2640, label %1739, !llvm.loop !157

1772:                                             ; preds = %1732
  %1773 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %1774 = icmp eq i32 %1773, 0
  br i1 %1774, label %1775, label %1809

1775:                                             ; preds = %1772
  %1776 = icmp sgt i64 %4, 0
  br i1 %1776, label %1777, label %2640

1777:                                             ; preds = %1775
  %1778 = icmp sgt i64 %3, 0
  br label %1779

1779:                                             ; preds = %1777, %1805
  %1780 = phi i64 [ 0, %1777 ], [ %1807, %1805 ]
  %1781 = phi ptr [ %7, %1777 ], [ %1806, %1805 ]
  %1782 = add nsw i64 %1780, %2
  %1783 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1782, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1784 = icmp eq ptr %1783, null
  br i1 %1784, label %2640, label %1785

1785:                                             ; preds = %1779
  br i1 %1778, label %1786, label %1805

1786:                                             ; preds = %1785, %1797
  %1787 = phi ptr [ %1802, %1797 ], [ %1783, %1785 ]
  %1788 = phi i64 [ %1803, %1797 ], [ 0, %1785 ]
  %1789 = phi ptr [ %1801, %1797 ], [ %1781, %1785 ]
  %1790 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %1787) #23
  %1791 = fcmp ugt float %1790, 0.000000e+00
  br i1 %1791, label %1792, label %1797

1792:                                             ; preds = %1786
  %1793 = fcmp ult float %1790, 6.553500e+04
  br i1 %1793, label %1794, label %1797

1794:                                             ; preds = %1792
  %1795 = fadd float %1790, 5.000000e-01
  %1796 = fptoui float %1795 to i16
  br label %1797

1797:                                             ; preds = %1794, %1792, %1786
  %1798 = phi i16 [ %1796, %1794 ], [ 0, %1786 ], [ -1, %1792 ]
  %1799 = zext i16 %1798 to i32
  %1800 = mul nuw i32 %1799, 65537
  %1801 = getelementptr inbounds i32, ptr %1789, i64 1
  store i32 %1800, ptr %1789, align 4, !tbaa !34, !noalias !149
  %1802 = getelementptr inbounds %struct._PixelPacket, ptr %1787, i64 1
  %1803 = add nuw nsw i64 %1788, 1
  %1804 = icmp eq i64 %1803, %3
  br i1 %1804, label %1805, label %1786, !llvm.loop !158

1805:                                             ; preds = %1797, %1785
  %1806 = phi ptr [ %1781, %1785 ], [ %1801, %1797 ]
  %1807 = add nuw nsw i64 %1780, 1
  %1808 = icmp eq i64 %1807, %4
  br i1 %1808, label %2640, label %1779, !llvm.loop !159

1809:                                             ; preds = %1772
  %1810 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %1811 = icmp eq i32 %1810, 0
  br i1 %1811, label %1812, label %1848

1812:                                             ; preds = %1809
  %1813 = icmp sgt i64 %4, 0
  br i1 %1813, label %1814, label %2640

1814:                                             ; preds = %1812
  %1815 = icmp sgt i64 %3, 0
  br label %1816

1816:                                             ; preds = %1814, %1844
  %1817 = phi i64 [ 0, %1814 ], [ %1846, %1844 ]
  %1818 = phi ptr [ %7, %1814 ], [ %1845, %1844 ]
  %1819 = add nsw i64 %1817, %2
  %1820 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1819, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1821 = icmp eq ptr %1820, null
  br i1 %1821, label %2640, label %1822

1822:                                             ; preds = %1816
  br i1 %1815, label %1823, label %1844

1823:                                             ; preds = %1822, %1823
  %1824 = phi ptr [ %1841, %1823 ], [ %1820, %1822 ]
  %1825 = phi i64 [ %1842, %1823 ], [ 0, %1822 ]
  %1826 = phi ptr [ %1840, %1823 ], [ %1818, %1822 ]
  %1827 = getelementptr inbounds %struct._PixelPacket, ptr %1824, i64 0, i32 2
  %1828 = load i16, ptr %1827, align 2, !tbaa !69
  %1829 = zext i16 %1828 to i32
  %1830 = mul nuw i32 %1829, 65537
  %1831 = getelementptr inbounds i32, ptr %1826, i64 1
  store i32 %1830, ptr %1826, align 4, !tbaa !34, !noalias !149
  %1832 = getelementptr inbounds %struct._PixelPacket, ptr %1824, i64 0, i32 1
  %1833 = load i16, ptr %1832, align 2, !tbaa !68
  %1834 = zext i16 %1833 to i32
  %1835 = mul nuw i32 %1834, 65537
  %1836 = getelementptr inbounds i32, ptr %1826, i64 2
  store i32 %1835, ptr %1831, align 4, !tbaa !34, !noalias !149
  %1837 = load i16, ptr %1824, align 2, !tbaa !67
  %1838 = zext i16 %1837 to i32
  %1839 = mul nuw i32 %1838, 65537
  %1840 = getelementptr inbounds i32, ptr %1826, i64 3
  store i32 %1839, ptr %1836, align 4, !tbaa !34, !noalias !149
  %1841 = getelementptr inbounds %struct._PixelPacket, ptr %1824, i64 1
  %1842 = add nuw nsw i64 %1825, 1
  %1843 = icmp eq i64 %1842, %3
  br i1 %1843, label %1844, label %1823, !llvm.loop !160

1844:                                             ; preds = %1823, %1822
  %1845 = phi ptr [ %1818, %1822 ], [ %1840, %1823 ]
  %1846 = add nuw nsw i64 %1817, 1
  %1847 = icmp eq i64 %1846, %4
  br i1 %1847, label %2640, label %1816, !llvm.loop !161

1848:                                             ; preds = %1809
  %1849 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %1850 = icmp eq i32 %1849, 0
  br i1 %1850, label %1851, label %1893

1851:                                             ; preds = %1848
  %1852 = icmp sgt i64 %4, 0
  br i1 %1852, label %1853, label %2640

1853:                                             ; preds = %1851
  %1854 = icmp sgt i64 %3, 0
  br label %1855

1855:                                             ; preds = %1853, %1889
  %1856 = phi i64 [ 0, %1853 ], [ %1891, %1889 ]
  %1857 = phi ptr [ %7, %1853 ], [ %1890, %1889 ]
  %1858 = add nsw i64 %1856, %2
  %1859 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1858, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1860 = icmp eq ptr %1859, null
  br i1 %1860, label %2640, label %1861

1861:                                             ; preds = %1855
  br i1 %1854, label %1862, label %1889

1862:                                             ; preds = %1861, %1862
  %1863 = phi ptr [ %1886, %1862 ], [ %1859, %1861 ]
  %1864 = phi i64 [ %1887, %1862 ], [ 0, %1861 ]
  %1865 = phi ptr [ %1885, %1862 ], [ %1857, %1861 ]
  %1866 = getelementptr inbounds %struct._PixelPacket, ptr %1863, i64 0, i32 2
  %1867 = load i16, ptr %1866, align 2, !tbaa !69
  %1868 = zext i16 %1867 to i32
  %1869 = mul nuw i32 %1868, 65537
  %1870 = getelementptr inbounds i32, ptr %1865, i64 1
  store i32 %1869, ptr %1865, align 4, !tbaa !34, !noalias !149
  %1871 = getelementptr inbounds %struct._PixelPacket, ptr %1863, i64 0, i32 1
  %1872 = load i16, ptr %1871, align 2, !tbaa !68
  %1873 = zext i16 %1872 to i32
  %1874 = mul nuw i32 %1873, 65537
  %1875 = getelementptr inbounds i32, ptr %1865, i64 2
  store i32 %1874, ptr %1870, align 4, !tbaa !34, !noalias !149
  %1876 = load i16, ptr %1863, align 2, !tbaa !67
  %1877 = zext i16 %1876 to i32
  %1878 = mul nuw i32 %1877, 65537
  %1879 = getelementptr inbounds i32, ptr %1865, i64 3
  store i32 %1878, ptr %1875, align 4, !tbaa !34, !noalias !149
  %1880 = getelementptr inbounds %struct._PixelPacket, ptr %1863, i64 0, i32 3
  %1881 = load i16, ptr %1880, align 2, !tbaa !72
  %1882 = xor i16 %1881, -1
  %1883 = zext i16 %1882 to i32
  %1884 = mul nuw i32 %1883, 65537
  %1885 = getelementptr inbounds i32, ptr %1865, i64 4
  store i32 %1884, ptr %1879, align 4, !tbaa !34, !noalias !149
  %1886 = getelementptr inbounds %struct._PixelPacket, ptr %1863, i64 1
  %1887 = add nuw nsw i64 %1864, 1
  %1888 = icmp eq i64 %1887, %3
  br i1 %1888, label %1889, label %1862, !llvm.loop !162

1889:                                             ; preds = %1862, %1861
  %1890 = phi ptr [ %1857, %1861 ], [ %1885, %1862 ]
  %1891 = add nuw nsw i64 %1856, 1
  %1892 = icmp eq i64 %1891, %4
  br i1 %1892, label %2640, label %1855, !llvm.loop !163

1893:                                             ; preds = %1848
  %1894 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %1895 = icmp eq i32 %1894, 0
  br i1 %1895, label %1896, label %1933

1896:                                             ; preds = %1893
  %1897 = icmp sgt i64 %4, 0
  br i1 %1897, label %1898, label %2640

1898:                                             ; preds = %1896
  %1899 = icmp sgt i64 %3, 0
  br label %1900

1900:                                             ; preds = %1898, %1929
  %1901 = phi i64 [ 0, %1898 ], [ %1931, %1929 ]
  %1902 = phi ptr [ %7, %1898 ], [ %1930, %1929 ]
  %1903 = add nsw i64 %1901, %2
  %1904 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1903, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1905 = icmp eq ptr %1904, null
  br i1 %1905, label %2640, label %1906

1906:                                             ; preds = %1900
  br i1 %1899, label %1907, label %1929

1907:                                             ; preds = %1906, %1907
  %1908 = phi ptr [ %1926, %1907 ], [ %1904, %1906 ]
  %1909 = phi i64 [ %1927, %1907 ], [ 0, %1906 ]
  %1910 = phi ptr [ %1925, %1907 ], [ %1902, %1906 ]
  %1911 = getelementptr inbounds %struct._PixelPacket, ptr %1908, i64 0, i32 2
  %1912 = load i16, ptr %1911, align 2, !tbaa !69
  %1913 = zext i16 %1912 to i32
  %1914 = mul nuw i32 %1913, 65537
  %1915 = getelementptr inbounds i32, ptr %1910, i64 1
  store i32 %1914, ptr %1910, align 4, !tbaa !34, !noalias !149
  %1916 = getelementptr inbounds %struct._PixelPacket, ptr %1908, i64 0, i32 1
  %1917 = load i16, ptr %1916, align 2, !tbaa !68
  %1918 = zext i16 %1917 to i32
  %1919 = mul nuw i32 %1918, 65537
  %1920 = getelementptr inbounds i32, ptr %1910, i64 2
  store i32 %1919, ptr %1915, align 4, !tbaa !34, !noalias !149
  %1921 = load i16, ptr %1908, align 2, !tbaa !67
  %1922 = zext i16 %1921 to i32
  %1923 = mul nuw i32 %1922, 65537
  %1924 = getelementptr inbounds i32, ptr %1910, i64 3
  store i32 %1923, ptr %1920, align 4, !tbaa !34, !noalias !149
  %1925 = getelementptr inbounds i32, ptr %1910, i64 4
  store i32 0, ptr %1924, align 4, !tbaa !34, !noalias !149
  %1926 = getelementptr inbounds %struct._PixelPacket, ptr %1908, i64 1
  %1927 = add nuw nsw i64 %1909, 1
  %1928 = icmp eq i64 %1927, %3
  br i1 %1928, label %1929, label %1907, !llvm.loop !164

1929:                                             ; preds = %1907, %1906
  %1930 = phi ptr [ %1902, %1906 ], [ %1925, %1907 ]
  %1931 = add nuw nsw i64 %1901, 1
  %1932 = icmp eq i64 %1931, %4
  br i1 %1932, label %2640, label %1900, !llvm.loop !165

1933:                                             ; preds = %1893
  %1934 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !149
  %1935 = icmp sgt i64 %4, 0
  br i1 %1935, label %1936, label %2640

1936:                                             ; preds = %1933
  %1937 = icmp sgt i64 %3, 0
  %1938 = icmp sgt i64 %1934, 0
  %1939 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %1940

1940:                                             ; preds = %1936, %2003
  %1941 = phi i64 [ 0, %1936 ], [ %2005, %2003 ]
  %1942 = phi ptr [ %7, %1936 ], [ %2004, %2003 ]
  %1943 = add nsw i64 %1941, %2
  %1944 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1943, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %1945 = icmp eq ptr %1944, null
  br i1 %1945, label %2640, label %1946

1946:                                             ; preds = %1940
  %1947 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #19
  br i1 %1937, label %1948, label %2003

1948:                                             ; preds = %1946
  %1949 = icmp eq ptr %1947, null
  br label %1950

1950:                                             ; preds = %1948, %1998
  %1951 = phi ptr [ %1944, %1948 ], [ %2000, %1998 ]
  %1952 = phi i64 [ 0, %1948 ], [ %2001, %1998 ]
  %1953 = phi ptr [ %1942, %1948 ], [ %1999, %1998 ]
  br i1 %1938, label %1954, label %1998

1954:                                             ; preds = %1950
  %1955 = getelementptr inbounds i16, ptr %1947, i64 %1952
  %1956 = getelementptr inbounds %struct._PixelPacket, ptr %1951, i64 0, i32 3
  %1957 = getelementptr inbounds %struct._PixelPacket, ptr %1951, i64 0, i32 3
  %1958 = getelementptr inbounds %struct._PixelPacket, ptr %1951, i64 0, i32 1
  %1959 = getelementptr inbounds %struct._PixelPacket, ptr %1951, i64 0, i32 2
  br label %1960

1960:                                             ; preds = %1954, %1994
  %1961 = phi i64 [ 0, %1954 ], [ %1996, %1994 ]
  %1962 = phi ptr [ %1953, %1954 ], [ %1995, %1994 ]
  store i32 0, ptr %1962, align 4, !tbaa !34, !noalias !149
  %1963 = getelementptr inbounds i32, ptr %18, i64 %1961
  %1964 = load i32, ptr %1963, align 4, !tbaa !34, !noalias !149
  switch i32 %1964, label %1994 [
    i32 14, label %1965
    i32 6, label %1965
    i32 9, label %1967
    i32 12, label %1967
    i32 3, label %1969
    i32 19, label %1969
    i32 1, label %1971
    i32 13, label %1974
    i32 2, label %1976
    i32 11, label %1982
  ]

1965:                                             ; preds = %1960, %1960
  %1966 = load i16, ptr %1959, align 2, !tbaa !69
  br label %1990

1967:                                             ; preds = %1960, %1960
  %1968 = load i16, ptr %1958, align 2, !tbaa !68
  br label %1990

1969:                                             ; preds = %1960, %1960
  %1970 = load i16, ptr %1951, align 2, !tbaa !67
  br label %1990

1971:                                             ; preds = %1960
  %1972 = load i16, ptr %1957, align 2, !tbaa !72
  %1973 = xor i16 %1972, -1
  br label %1990

1974:                                             ; preds = %1960
  %1975 = load i16, ptr %1956, align 2, !tbaa !72
  br label %1990

1976:                                             ; preds = %1960
  %1977 = load i32, ptr %1939, align 4, !tbaa !60, !noalias !149
  %1978 = icmp eq i32 %1977, 12
  br i1 %1978, label %1979, label %1994

1979:                                             ; preds = %1976
  br i1 %1949, label %1990, label %1980

1980:                                             ; preds = %1979
  %1981 = load i16, ptr %1955, align 2, !tbaa !85
  br label %1990

1982:                                             ; preds = %1960
  %1983 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %1951) #23
  %1984 = fcmp ugt float %1983, 0.000000e+00
  br i1 %1984, label %1985, label %1990

1985:                                             ; preds = %1982
  %1986 = fcmp ult float %1983, 6.553500e+04
  br i1 %1986, label %1987, label %1990

1987:                                             ; preds = %1985
  %1988 = fadd float %1983, 5.000000e-01
  %1989 = fptoui float %1988 to i16
  br label %1990

1990:                                             ; preds = %1982, %1985, %1987, %1979, %1980, %1965, %1967, %1969, %1971, %1974
  %1991 = phi i16 [ %1975, %1974 ], [ %1973, %1971 ], [ %1970, %1969 ], [ %1968, %1967 ], [ %1966, %1965 ], [ %1981, %1980 ], [ 0, %1979 ], [ %1989, %1987 ], [ 0, %1982 ], [ -1, %1985 ]
  %1992 = zext i16 %1991 to i32
  %1993 = mul nuw i32 %1992, 65537
  store i32 %1993, ptr %1962, align 4, !tbaa !34, !noalias !149
  br label %1994

1994:                                             ; preds = %1990, %1976, %1960
  %1995 = getelementptr inbounds i32, ptr %1962, i64 1
  %1996 = add nuw nsw i64 %1961, 1
  %1997 = icmp eq i64 %1996, %1934
  br i1 %1997, label %1998, label %1960, !llvm.loop !166

1998:                                             ; preds = %1994, %1950
  %1999 = phi ptr [ %1953, %1950 ], [ %1995, %1994 ]
  %2000 = getelementptr inbounds %struct._PixelPacket, ptr %1951, i64 1
  %2001 = add nuw nsw i64 %1952, 1
  %2002 = icmp eq i64 %2001, %3
  br i1 %2002, label %2003, label %1950, !llvm.loop !167

2003:                                             ; preds = %1998, %1946
  %2004 = phi ptr [ %1942, %1946 ], [ %1999, %1998 ]
  %2005 = add nuw nsw i64 %1941, 1
  %2006 = icmp eq i64 %2005, %4
  br i1 %2006, label %2640, label %1940, !llvm.loop !168

2007:                                             ; preds = %77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %2008 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %2009 = icmp eq i32 %2008, 0
  br i1 %2009, label %2010, label %2040

2010:                                             ; preds = %2007
  %2011 = icmp sgt i64 %4, 0
  br i1 %2011, label %2012, label %2640

2012:                                             ; preds = %2010
  %2013 = icmp sgt i64 %3, 0
  br label %2014

2014:                                             ; preds = %2012, %2036
  %2015 = phi i64 [ 0, %2012 ], [ %2038, %2036 ]
  %2016 = phi ptr [ %7, %2012 ], [ %2037, %2036 ]
  %2017 = add nsw i64 %2015, %2
  %2018 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2017, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2019 = icmp eq ptr %2018, null
  br i1 %2019, label %2640, label %2020

2020:                                             ; preds = %2014
  br i1 %2013, label %2021, label %2036

2021:                                             ; preds = %2020, %2021
  %2022 = phi ptr [ %2033, %2021 ], [ %2018, %2020 ]
  %2023 = phi i64 [ %2034, %2021 ], [ 0, %2020 ]
  %2024 = phi ptr [ %2032, %2021 ], [ %2016, %2020 ]
  %2025 = load i16, ptr %2022, align 2, !tbaa !67
  %2026 = getelementptr inbounds i16, ptr %2024, i64 1
  store i16 %2025, ptr %2024, align 2, !tbaa !85, !noalias !169
  %2027 = getelementptr inbounds %struct._PixelPacket, ptr %2022, i64 0, i32 1
  %2028 = load i16, ptr %2027, align 2, !tbaa !68
  %2029 = getelementptr inbounds i16, ptr %2024, i64 2
  store i16 %2028, ptr %2026, align 2, !tbaa !85, !noalias !169
  %2030 = getelementptr inbounds %struct._PixelPacket, ptr %2022, i64 0, i32 2
  %2031 = load i16, ptr %2030, align 2, !tbaa !69
  %2032 = getelementptr inbounds i16, ptr %2024, i64 3
  store i16 %2031, ptr %2029, align 2, !tbaa !85, !noalias !169
  %2033 = getelementptr inbounds %struct._PixelPacket, ptr %2022, i64 1
  %2034 = add nuw nsw i64 %2023, 1
  %2035 = icmp eq i64 %2034, %3
  br i1 %2035, label %2036, label %2021, !llvm.loop !172

2036:                                             ; preds = %2021, %2020
  %2037 = phi ptr [ %2016, %2020 ], [ %2032, %2021 ]
  %2038 = add nuw nsw i64 %2015, 1
  %2039 = icmp eq i64 %2038, %4
  br i1 %2039, label %2640, label %2014, !llvm.loop !173

2040:                                             ; preds = %2007
  %2041 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2043, label %2077

2043:                                             ; preds = %2040
  %2044 = icmp sgt i64 %4, 0
  br i1 %2044, label %2045, label %2640

2045:                                             ; preds = %2043
  %2046 = icmp sgt i64 %3, 0
  br label %2047

2047:                                             ; preds = %2045, %2073
  %2048 = phi i64 [ 0, %2045 ], [ %2075, %2073 ]
  %2049 = phi ptr [ %7, %2045 ], [ %2074, %2073 ]
  %2050 = add nsw i64 %2048, %2
  %2051 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2050, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2052 = icmp eq ptr %2051, null
  br i1 %2052, label %2640, label %2053

2053:                                             ; preds = %2047
  br i1 %2046, label %2054, label %2073

2054:                                             ; preds = %2053, %2054
  %2055 = phi ptr [ %2070, %2054 ], [ %2051, %2053 ]
  %2056 = phi i64 [ %2071, %2054 ], [ 0, %2053 ]
  %2057 = phi ptr [ %2069, %2054 ], [ %2049, %2053 ]
  %2058 = load i16, ptr %2055, align 2, !tbaa !67
  %2059 = getelementptr inbounds i16, ptr %2057, i64 1
  store i16 %2058, ptr %2057, align 2, !tbaa !85, !noalias !169
  %2060 = getelementptr inbounds %struct._PixelPacket, ptr %2055, i64 0, i32 1
  %2061 = load i16, ptr %2060, align 2, !tbaa !68
  %2062 = getelementptr inbounds i16, ptr %2057, i64 2
  store i16 %2061, ptr %2059, align 2, !tbaa !85, !noalias !169
  %2063 = getelementptr inbounds %struct._PixelPacket, ptr %2055, i64 0, i32 2
  %2064 = load i16, ptr %2063, align 2, !tbaa !69
  %2065 = getelementptr inbounds i16, ptr %2057, i64 3
  store i16 %2064, ptr %2062, align 2, !tbaa !85, !noalias !169
  %2066 = getelementptr inbounds %struct._PixelPacket, ptr %2055, i64 0, i32 3
  %2067 = load i16, ptr %2066, align 2, !tbaa !72
  %2068 = xor i16 %2067, -1
  %2069 = getelementptr inbounds i16, ptr %2057, i64 4
  store i16 %2068, ptr %2065, align 2, !tbaa !85, !noalias !169
  %2070 = getelementptr inbounds %struct._PixelPacket, ptr %2055, i64 1
  %2071 = add nuw nsw i64 %2056, 1
  %2072 = icmp eq i64 %2071, %3
  br i1 %2072, label %2073, label %2054, !llvm.loop !174

2073:                                             ; preds = %2054, %2053
  %2074 = phi ptr [ %2049, %2053 ], [ %2069, %2054 ]
  %2075 = add nuw nsw i64 %2048, 1
  %2076 = icmp eq i64 %2075, %4
  br i1 %2076, label %2640, label %2047, !llvm.loop !175

2077:                                             ; preds = %2040
  %2078 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %2079 = icmp eq i32 %2078, 0
  br i1 %2079, label %2080, label %2111

2080:                                             ; preds = %2077
  %2081 = icmp sgt i64 %4, 0
  br i1 %2081, label %2082, label %2640

2082:                                             ; preds = %2080
  %2083 = icmp sgt i64 %3, 0
  br label %2084

2084:                                             ; preds = %2082, %2107
  %2085 = phi i64 [ 0, %2082 ], [ %2109, %2107 ]
  %2086 = phi ptr [ %7, %2082 ], [ %2108, %2107 ]
  %2087 = add nsw i64 %2085, %2
  %2088 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2087, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2089 = icmp eq ptr %2088, null
  br i1 %2089, label %2640, label %2090

2090:                                             ; preds = %2084
  br i1 %2083, label %2091, label %2107

2091:                                             ; preds = %2090, %2091
  %2092 = phi ptr [ %2104, %2091 ], [ %2088, %2090 ]
  %2093 = phi i64 [ %2105, %2091 ], [ 0, %2090 ]
  %2094 = phi ptr [ %2103, %2091 ], [ %2086, %2090 ]
  %2095 = load i16, ptr %2092, align 2, !tbaa !67
  %2096 = getelementptr inbounds i16, ptr %2094, i64 1
  store i16 %2095, ptr %2094, align 2, !tbaa !85, !noalias !169
  %2097 = getelementptr inbounds %struct._PixelPacket, ptr %2092, i64 0, i32 1
  %2098 = load i16, ptr %2097, align 2, !tbaa !68
  %2099 = getelementptr inbounds i16, ptr %2094, i64 2
  store i16 %2098, ptr %2096, align 2, !tbaa !85, !noalias !169
  %2100 = getelementptr inbounds %struct._PixelPacket, ptr %2092, i64 0, i32 2
  %2101 = load i16, ptr %2100, align 2, !tbaa !69
  %2102 = getelementptr inbounds i16, ptr %2094, i64 3
  store i16 %2101, ptr %2099, align 2, !tbaa !85, !noalias !169
  %2103 = getelementptr inbounds i16, ptr %2094, i64 4
  store i16 0, ptr %2102, align 2, !tbaa !85, !noalias !169
  %2104 = getelementptr inbounds %struct._PixelPacket, ptr %2092, i64 1
  %2105 = add nuw nsw i64 %2093, 1
  %2106 = icmp eq i64 %2105, %3
  br i1 %2106, label %2107, label %2091, !llvm.loop !176

2107:                                             ; preds = %2091, %2090
  %2108 = phi ptr [ %2086, %2090 ], [ %2103, %2091 ]
  %2109 = add nuw nsw i64 %2085, 1
  %2110 = icmp eq i64 %2109, %4
  br i1 %2110, label %2640, label %2084, !llvm.loop !177

2111:                                             ; preds = %2077
  %2112 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2114, label %2146

2114:                                             ; preds = %2111
  %2115 = icmp sgt i64 %4, 0
  br i1 %2115, label %2116, label %2640

2116:                                             ; preds = %2114
  %2117 = icmp sgt i64 %3, 0
  br label %2118

2118:                                             ; preds = %2116, %2142
  %2119 = phi i64 [ 0, %2116 ], [ %2144, %2142 ]
  %2120 = phi ptr [ %7, %2116 ], [ %2143, %2142 ]
  %2121 = add nsw i64 %2119, %2
  %2122 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2121, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2123 = icmp eq ptr %2122, null
  br i1 %2123, label %2640, label %2124

2124:                                             ; preds = %2118
  br i1 %2117, label %2125, label %2142

2125:                                             ; preds = %2124, %2136
  %2126 = phi ptr [ %2139, %2136 ], [ %2122, %2124 ]
  %2127 = phi i64 [ %2140, %2136 ], [ 0, %2124 ]
  %2128 = phi ptr [ %2138, %2136 ], [ %2120, %2124 ]
  %2129 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %2126) #23
  %2130 = fcmp ugt float %2129, 0.000000e+00
  br i1 %2130, label %2131, label %2136

2131:                                             ; preds = %2125
  %2132 = fcmp ult float %2129, 6.553500e+04
  br i1 %2132, label %2133, label %2136

2133:                                             ; preds = %2131
  %2134 = fadd float %2129, 5.000000e-01
  %2135 = fptoui float %2134 to i16
  br label %2136

2136:                                             ; preds = %2133, %2131, %2125
  %2137 = phi i16 [ %2135, %2133 ], [ 0, %2125 ], [ -1, %2131 ]
  %2138 = getelementptr inbounds i16, ptr %2128, i64 1
  store i16 %2137, ptr %2128, align 2, !tbaa !85, !noalias !169
  %2139 = getelementptr inbounds %struct._PixelPacket, ptr %2126, i64 1
  %2140 = add nuw nsw i64 %2127, 1
  %2141 = icmp eq i64 %2140, %3
  br i1 %2141, label %2142, label %2125, !llvm.loop !178

2142:                                             ; preds = %2136, %2124
  %2143 = phi ptr [ %2120, %2124 ], [ %2138, %2136 ]
  %2144 = add nuw nsw i64 %2119, 1
  %2145 = icmp eq i64 %2144, %4
  br i1 %2145, label %2640, label %2118, !llvm.loop !179

2146:                                             ; preds = %2111
  %2147 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2149, label %2179

2149:                                             ; preds = %2146
  %2150 = icmp sgt i64 %4, 0
  br i1 %2150, label %2151, label %2640

2151:                                             ; preds = %2149
  %2152 = icmp sgt i64 %3, 0
  br label %2153

2153:                                             ; preds = %2151, %2175
  %2154 = phi i64 [ 0, %2151 ], [ %2177, %2175 ]
  %2155 = phi ptr [ %7, %2151 ], [ %2176, %2175 ]
  %2156 = add nsw i64 %2154, %2
  %2157 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2156, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2158 = icmp eq ptr %2157, null
  br i1 %2158, label %2640, label %2159

2159:                                             ; preds = %2153
  br i1 %2152, label %2160, label %2175

2160:                                             ; preds = %2159, %2160
  %2161 = phi ptr [ %2172, %2160 ], [ %2157, %2159 ]
  %2162 = phi i64 [ %2173, %2160 ], [ 0, %2159 ]
  %2163 = phi ptr [ %2171, %2160 ], [ %2155, %2159 ]
  %2164 = getelementptr inbounds %struct._PixelPacket, ptr %2161, i64 0, i32 2
  %2165 = load i16, ptr %2164, align 2, !tbaa !69
  %2166 = getelementptr inbounds i16, ptr %2163, i64 1
  store i16 %2165, ptr %2163, align 2, !tbaa !85, !noalias !169
  %2167 = getelementptr inbounds %struct._PixelPacket, ptr %2161, i64 0, i32 1
  %2168 = load i16, ptr %2167, align 2, !tbaa !68
  %2169 = getelementptr inbounds i16, ptr %2163, i64 2
  store i16 %2168, ptr %2166, align 2, !tbaa !85, !noalias !169
  %2170 = load i16, ptr %2161, align 2, !tbaa !67
  %2171 = getelementptr inbounds i16, ptr %2163, i64 3
  store i16 %2170, ptr %2169, align 2, !tbaa !85, !noalias !169
  %2172 = getelementptr inbounds %struct._PixelPacket, ptr %2161, i64 1
  %2173 = add nuw nsw i64 %2162, 1
  %2174 = icmp eq i64 %2173, %3
  br i1 %2174, label %2175, label %2160, !llvm.loop !180

2175:                                             ; preds = %2160, %2159
  %2176 = phi ptr [ %2155, %2159 ], [ %2171, %2160 ]
  %2177 = add nuw nsw i64 %2154, 1
  %2178 = icmp eq i64 %2177, %4
  br i1 %2178, label %2640, label %2153, !llvm.loop !181

2179:                                             ; preds = %2146
  %2180 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2182, label %2216

2182:                                             ; preds = %2179
  %2183 = icmp sgt i64 %4, 0
  br i1 %2183, label %2184, label %2640

2184:                                             ; preds = %2182
  %2185 = icmp sgt i64 %3, 0
  br label %2186

2186:                                             ; preds = %2184, %2212
  %2187 = phi i64 [ 0, %2184 ], [ %2214, %2212 ]
  %2188 = phi ptr [ %7, %2184 ], [ %2213, %2212 ]
  %2189 = add nsw i64 %2187, %2
  %2190 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2189, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2191 = icmp eq ptr %2190, null
  br i1 %2191, label %2640, label %2192

2192:                                             ; preds = %2186
  br i1 %2185, label %2193, label %2212

2193:                                             ; preds = %2192, %2193
  %2194 = phi ptr [ %2209, %2193 ], [ %2190, %2192 ]
  %2195 = phi i64 [ %2210, %2193 ], [ 0, %2192 ]
  %2196 = phi ptr [ %2208, %2193 ], [ %2188, %2192 ]
  %2197 = getelementptr inbounds %struct._PixelPacket, ptr %2194, i64 0, i32 2
  %2198 = load i16, ptr %2197, align 2, !tbaa !69
  %2199 = getelementptr inbounds i16, ptr %2196, i64 1
  store i16 %2198, ptr %2196, align 2, !tbaa !85, !noalias !169
  %2200 = getelementptr inbounds %struct._PixelPacket, ptr %2194, i64 0, i32 1
  %2201 = load i16, ptr %2200, align 2, !tbaa !68
  %2202 = getelementptr inbounds i16, ptr %2196, i64 2
  store i16 %2201, ptr %2199, align 2, !tbaa !85, !noalias !169
  %2203 = load i16, ptr %2194, align 2, !tbaa !67
  %2204 = getelementptr inbounds i16, ptr %2196, i64 3
  store i16 %2203, ptr %2202, align 2, !tbaa !85, !noalias !169
  %2205 = getelementptr inbounds %struct._PixelPacket, ptr %2194, i64 0, i32 3
  %2206 = load i16, ptr %2205, align 2, !tbaa !72
  %2207 = xor i16 %2206, -1
  %2208 = getelementptr inbounds i16, ptr %2196, i64 4
  store i16 %2207, ptr %2204, align 2, !tbaa !85, !noalias !169
  %2209 = getelementptr inbounds %struct._PixelPacket, ptr %2194, i64 1
  %2210 = add nuw nsw i64 %2195, 1
  %2211 = icmp eq i64 %2210, %3
  br i1 %2211, label %2212, label %2193, !llvm.loop !182

2212:                                             ; preds = %2193, %2192
  %2213 = phi ptr [ %2188, %2192 ], [ %2208, %2193 ]
  %2214 = add nuw nsw i64 %2187, 1
  %2215 = icmp eq i64 %2214, %4
  br i1 %2215, label %2640, label %2186, !llvm.loop !183

2216:                                             ; preds = %2179
  %2217 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2219, label %2250

2219:                                             ; preds = %2216
  %2220 = icmp sgt i64 %4, 0
  br i1 %2220, label %2221, label %2640

2221:                                             ; preds = %2219
  %2222 = icmp sgt i64 %3, 0
  br label %2223

2223:                                             ; preds = %2221, %2246
  %2224 = phi i64 [ 0, %2221 ], [ %2248, %2246 ]
  %2225 = phi ptr [ %7, %2221 ], [ %2247, %2246 ]
  %2226 = add nsw i64 %2224, %2
  %2227 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2226, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2228 = icmp eq ptr %2227, null
  br i1 %2228, label %2640, label %2229

2229:                                             ; preds = %2223
  br i1 %2222, label %2230, label %2246

2230:                                             ; preds = %2229, %2230
  %2231 = phi ptr [ %2243, %2230 ], [ %2227, %2229 ]
  %2232 = phi i64 [ %2244, %2230 ], [ 0, %2229 ]
  %2233 = phi ptr [ %2242, %2230 ], [ %2225, %2229 ]
  %2234 = getelementptr inbounds %struct._PixelPacket, ptr %2231, i64 0, i32 2
  %2235 = load i16, ptr %2234, align 2, !tbaa !69
  %2236 = getelementptr inbounds i16, ptr %2233, i64 1
  store i16 %2235, ptr %2233, align 2, !tbaa !85, !noalias !169
  %2237 = getelementptr inbounds %struct._PixelPacket, ptr %2231, i64 0, i32 1
  %2238 = load i16, ptr %2237, align 2, !tbaa !68
  %2239 = getelementptr inbounds i16, ptr %2233, i64 2
  store i16 %2238, ptr %2236, align 2, !tbaa !85, !noalias !169
  %2240 = load i16, ptr %2231, align 2, !tbaa !67
  %2241 = getelementptr inbounds i16, ptr %2233, i64 3
  store i16 %2240, ptr %2239, align 2, !tbaa !85, !noalias !169
  %2242 = getelementptr inbounds i16, ptr %2233, i64 4
  store i16 0, ptr %2241, align 2, !tbaa !85, !noalias !169
  %2243 = getelementptr inbounds %struct._PixelPacket, ptr %2231, i64 1
  %2244 = add nuw nsw i64 %2232, 1
  %2245 = icmp eq i64 %2244, %3
  br i1 %2245, label %2246, label %2230, !llvm.loop !184

2246:                                             ; preds = %2230, %2229
  %2247 = phi ptr [ %2225, %2229 ], [ %2242, %2230 ]
  %2248 = add nuw nsw i64 %2224, 1
  %2249 = icmp eq i64 %2248, %4
  br i1 %2249, label %2640, label %2223, !llvm.loop !185

2250:                                             ; preds = %2216
  %2251 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !169
  %2252 = icmp sgt i64 %4, 0
  br i1 %2252, label %2253, label %2640

2253:                                             ; preds = %2250
  %2254 = icmp sgt i64 %3, 0
  %2255 = icmp sgt i64 %2251, 0
  %2256 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %2257

2257:                                             ; preds = %2253, %2318
  %2258 = phi i64 [ 0, %2253 ], [ %2320, %2318 ]
  %2259 = phi ptr [ %7, %2253 ], [ %2319, %2318 ]
  %2260 = add nsw i64 %2258, %2
  %2261 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2260, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2262 = icmp eq ptr %2261, null
  br i1 %2262, label %2640, label %2263

2263:                                             ; preds = %2257
  %2264 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #19
  br i1 %2254, label %2265, label %2318

2265:                                             ; preds = %2263
  %2266 = icmp eq ptr %2264, null
  br label %2267

2267:                                             ; preds = %2265, %2313
  %2268 = phi ptr [ %2261, %2265 ], [ %2315, %2313 ]
  %2269 = phi i64 [ 0, %2265 ], [ %2316, %2313 ]
  %2270 = phi ptr [ %2259, %2265 ], [ %2314, %2313 ]
  br i1 %2255, label %2271, label %2313

2271:                                             ; preds = %2267
  %2272 = getelementptr inbounds i16, ptr %2264, i64 %2269
  %2273 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 0, i32 3
  %2274 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 0, i32 3
  %2275 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 0, i32 1
  %2276 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 0, i32 2
  br label %2277

2277:                                             ; preds = %2271, %2309
  %2278 = phi i64 [ 0, %2271 ], [ %2311, %2309 ]
  %2279 = phi ptr [ %2270, %2271 ], [ %2310, %2309 ]
  store i16 0, ptr %2279, align 2, !tbaa !85, !noalias !169
  %2280 = getelementptr inbounds i32, ptr %18, i64 %2278
  %2281 = load i32, ptr %2280, align 4, !tbaa !34, !noalias !169
  switch i32 %2281, label %2307 [
    i32 14, label %2282
    i32 6, label %2282
    i32 9, label %2284
    i32 12, label %2284
    i32 3, label %2286
    i32 19, label %2286
    i32 1, label %2288
    i32 13, label %2291
    i32 2, label %2293
    i32 11, label %2299
  ]

2282:                                             ; preds = %2277, %2277
  %2283 = load i16, ptr %2276, align 2, !tbaa !69
  br label %2307

2284:                                             ; preds = %2277, %2277
  %2285 = load i16, ptr %2275, align 2, !tbaa !68
  br label %2307

2286:                                             ; preds = %2277, %2277
  %2287 = load i16, ptr %2268, align 2, !tbaa !67
  br label %2307

2288:                                             ; preds = %2277
  %2289 = load i16, ptr %2274, align 2, !tbaa !72
  %2290 = xor i16 %2289, -1
  br label %2307

2291:                                             ; preds = %2277
  %2292 = load i16, ptr %2273, align 2, !tbaa !72
  br label %2307

2293:                                             ; preds = %2277
  %2294 = load i32, ptr %2256, align 4, !tbaa !60, !noalias !169
  %2295 = icmp eq i32 %2294, 12
  br i1 %2295, label %2296, label %2309

2296:                                             ; preds = %2293
  br i1 %2266, label %2307, label %2297

2297:                                             ; preds = %2296
  %2298 = load i16, ptr %2272, align 2, !tbaa !85
  br label %2307

2299:                                             ; preds = %2277
  %2300 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %2268) #23
  %2301 = fcmp ugt float %2300, 0.000000e+00
  br i1 %2301, label %2302, label %2307

2302:                                             ; preds = %2299
  %2303 = fcmp ult float %2300, 6.553500e+04
  br i1 %2303, label %2304, label %2307

2304:                                             ; preds = %2302
  %2305 = fadd float %2300, 5.000000e-01
  %2306 = fptoui float %2305 to i16
  br label %2307

2307:                                             ; preds = %2277, %2299, %2302, %2304, %2296, %2297, %2282, %2284, %2286, %2288, %2291
  %2308 = phi i16 [ %2292, %2291 ], [ %2290, %2288 ], [ %2287, %2286 ], [ %2285, %2284 ], [ %2283, %2282 ], [ %2298, %2297 ], [ 0, %2296 ], [ %2306, %2304 ], [ 0, %2299 ], [ -1, %2302 ], [ 0, %2277 ]
  store i16 %2308, ptr %2279, align 2, !tbaa !85, !noalias !169
  br label %2309

2309:                                             ; preds = %2307, %2293
  %2310 = getelementptr inbounds i16, ptr %2279, i64 1
  %2311 = add nuw nsw i64 %2278, 1
  %2312 = icmp eq i64 %2311, %2251
  br i1 %2312, label %2313, label %2277, !llvm.loop !186

2313:                                             ; preds = %2309, %2267
  %2314 = phi ptr [ %2270, %2267 ], [ %2310, %2309 ]
  %2315 = getelementptr inbounds %struct._PixelPacket, ptr %2268, i64 1
  %2316 = add nuw nsw i64 %2269, 1
  %2317 = icmp eq i64 %2316, %3
  br i1 %2317, label %2318, label %2267, !llvm.loop !187

2318:                                             ; preds = %2313, %2263
  %2319 = phi ptr [ %2259, %2263 ], [ %2314, %2313 ]
  %2320 = add nuw nsw i64 %2258, 1
  %2321 = icmp eq i64 %2320, %4
  br i1 %2321, label %2640, label %2257, !llvm.loop !188

2322:                                             ; preds = %77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %2323 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %2324 = icmp eq i32 %2323, 0
  br i1 %2324, label %2325, label %2355

2325:                                             ; preds = %2322
  %2326 = icmp sgt i64 %4, 0
  br i1 %2326, label %2327, label %2640

2327:                                             ; preds = %2325
  %2328 = icmp sgt i64 %3, 0
  br label %2329

2329:                                             ; preds = %2327, %2351
  %2330 = phi i64 [ 0, %2327 ], [ %2353, %2351 ]
  %2331 = phi ptr [ %7, %2327 ], [ %2352, %2351 ]
  %2332 = add nsw i64 %2330, %2
  %2333 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2332, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2334 = icmp eq ptr %2333, null
  br i1 %2334, label %2640, label %2335

2335:                                             ; preds = %2329
  br i1 %2328, label %2336, label %2351

2336:                                             ; preds = %2335, %2336
  %2337 = phi ptr [ %2348, %2336 ], [ %2333, %2335 ]
  %2338 = phi ptr [ %2347, %2336 ], [ %2331, %2335 ]
  %2339 = phi i64 [ %2349, %2336 ], [ 0, %2335 ]
  %2340 = load i16, ptr %2337, align 2, !tbaa !67
  %2341 = getelementptr inbounds i16, ptr %2338, i64 1
  store i16 %2340, ptr %2338, align 2, !tbaa !85, !noalias !189
  %2342 = getelementptr inbounds %struct._PixelPacket, ptr %2337, i64 0, i32 1
  %2343 = load i16, ptr %2342, align 2, !tbaa !68
  %2344 = getelementptr inbounds i16, ptr %2338, i64 2
  store i16 %2343, ptr %2341, align 2, !tbaa !85, !noalias !189
  %2345 = getelementptr inbounds %struct._PixelPacket, ptr %2337, i64 0, i32 2
  %2346 = load i16, ptr %2345, align 2, !tbaa !69
  %2347 = getelementptr inbounds i16, ptr %2338, i64 3
  store i16 %2346, ptr %2344, align 2, !tbaa !85, !noalias !189
  %2348 = getelementptr inbounds %struct._PixelPacket, ptr %2337, i64 1
  %2349 = add nuw nsw i64 %2339, 1
  %2350 = icmp eq i64 %2349, %3
  br i1 %2350, label %2351, label %2336, !llvm.loop !192

2351:                                             ; preds = %2336, %2335
  %2352 = phi ptr [ %2331, %2335 ], [ %2347, %2336 ]
  %2353 = add nuw nsw i64 %2330, 1
  %2354 = icmp eq i64 %2353, %4
  br i1 %2354, label %2640, label %2329, !llvm.loop !193

2355:                                             ; preds = %2322
  %2356 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2358, label %2392

2358:                                             ; preds = %2355
  %2359 = icmp sgt i64 %4, 0
  br i1 %2359, label %2360, label %2640

2360:                                             ; preds = %2358
  %2361 = icmp sgt i64 %3, 0
  br label %2362

2362:                                             ; preds = %2360, %2388
  %2363 = phi i64 [ 0, %2360 ], [ %2390, %2388 ]
  %2364 = phi ptr [ %7, %2360 ], [ %2389, %2388 ]
  %2365 = add nsw i64 %2363, %2
  %2366 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2365, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2367 = icmp eq ptr %2366, null
  br i1 %2367, label %2640, label %2368

2368:                                             ; preds = %2362
  br i1 %2361, label %2369, label %2388

2369:                                             ; preds = %2368, %2369
  %2370 = phi ptr [ %2385, %2369 ], [ %2366, %2368 ]
  %2371 = phi ptr [ %2384, %2369 ], [ %2364, %2368 ]
  %2372 = phi i64 [ %2386, %2369 ], [ 0, %2368 ]
  %2373 = load i16, ptr %2370, align 2, !tbaa !67
  %2374 = getelementptr inbounds i16, ptr %2371, i64 1
  store i16 %2373, ptr %2371, align 2, !tbaa !85, !noalias !189
  %2375 = getelementptr inbounds %struct._PixelPacket, ptr %2370, i64 0, i32 1
  %2376 = load i16, ptr %2375, align 2, !tbaa !68
  %2377 = getelementptr inbounds i16, ptr %2371, i64 2
  store i16 %2376, ptr %2374, align 2, !tbaa !85, !noalias !189
  %2378 = getelementptr inbounds %struct._PixelPacket, ptr %2370, i64 0, i32 2
  %2379 = load i16, ptr %2378, align 2, !tbaa !69
  %2380 = getelementptr inbounds i16, ptr %2371, i64 3
  store i16 %2379, ptr %2377, align 2, !tbaa !85, !noalias !189
  %2381 = getelementptr inbounds %struct._PixelPacket, ptr %2370, i64 0, i32 3
  %2382 = load i16, ptr %2381, align 2, !tbaa !72
  %2383 = xor i16 %2382, -1
  %2384 = getelementptr inbounds i16, ptr %2371, i64 4
  store i16 %2383, ptr %2380, align 2, !tbaa !85, !noalias !189
  %2385 = getelementptr inbounds %struct._PixelPacket, ptr %2370, i64 1
  %2386 = add nuw nsw i64 %2372, 1
  %2387 = icmp eq i64 %2386, %3
  br i1 %2387, label %2388, label %2369, !llvm.loop !194

2388:                                             ; preds = %2369, %2368
  %2389 = phi ptr [ %2364, %2368 ], [ %2384, %2369 ]
  %2390 = add nuw nsw i64 %2363, 1
  %2391 = icmp eq i64 %2390, %4
  br i1 %2391, label %2640, label %2362, !llvm.loop !195

2392:                                             ; preds = %2355
  %2393 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %2394 = icmp eq i32 %2393, 0
  br i1 %2394, label %2395, label %2426

2395:                                             ; preds = %2392
  %2396 = icmp sgt i64 %4, 0
  br i1 %2396, label %2397, label %2640

2397:                                             ; preds = %2395
  %2398 = icmp sgt i64 %3, 0
  br label %2399

2399:                                             ; preds = %2397, %2422
  %2400 = phi i64 [ 0, %2397 ], [ %2424, %2422 ]
  %2401 = phi ptr [ %7, %2397 ], [ %2423, %2422 ]
  %2402 = add nsw i64 %2400, %2
  %2403 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2402, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2404 = icmp eq ptr %2403, null
  br i1 %2404, label %2640, label %2405

2405:                                             ; preds = %2399
  br i1 %2398, label %2406, label %2422

2406:                                             ; preds = %2405, %2406
  %2407 = phi ptr [ %2419, %2406 ], [ %2403, %2405 ]
  %2408 = phi ptr [ %2418, %2406 ], [ %2401, %2405 ]
  %2409 = phi i64 [ %2420, %2406 ], [ 0, %2405 ]
  %2410 = load i16, ptr %2407, align 2, !tbaa !67
  %2411 = getelementptr inbounds i16, ptr %2408, i64 1
  store i16 %2410, ptr %2408, align 2, !tbaa !85, !noalias !189
  %2412 = getelementptr inbounds %struct._PixelPacket, ptr %2407, i64 0, i32 1
  %2413 = load i16, ptr %2412, align 2, !tbaa !68
  %2414 = getelementptr inbounds i16, ptr %2408, i64 2
  store i16 %2413, ptr %2411, align 2, !tbaa !85, !noalias !189
  %2415 = getelementptr inbounds %struct._PixelPacket, ptr %2407, i64 0, i32 2
  %2416 = load i16, ptr %2415, align 2, !tbaa !69
  %2417 = getelementptr inbounds i16, ptr %2408, i64 3
  store i16 %2416, ptr %2414, align 2, !tbaa !85, !noalias !189
  %2418 = getelementptr inbounds i16, ptr %2408, i64 4
  store i16 0, ptr %2417, align 2, !tbaa !85, !noalias !189
  %2419 = getelementptr inbounds %struct._PixelPacket, ptr %2407, i64 1
  %2420 = add nuw nsw i64 %2409, 1
  %2421 = icmp eq i64 %2420, %3
  br i1 %2421, label %2422, label %2406, !llvm.loop !196

2422:                                             ; preds = %2406, %2405
  %2423 = phi ptr [ %2401, %2405 ], [ %2418, %2406 ]
  %2424 = add nuw nsw i64 %2400, 1
  %2425 = icmp eq i64 %2424, %4
  br i1 %2425, label %2640, label %2399, !llvm.loop !197

2426:                                             ; preds = %2392
  %2427 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2429, label %2461

2429:                                             ; preds = %2426
  %2430 = icmp sgt i64 %4, 0
  br i1 %2430, label %2431, label %2640

2431:                                             ; preds = %2429
  %2432 = icmp sgt i64 %3, 0
  br label %2433

2433:                                             ; preds = %2431, %2457
  %2434 = phi i64 [ 0, %2431 ], [ %2459, %2457 ]
  %2435 = phi ptr [ %7, %2431 ], [ %2458, %2457 ]
  %2436 = add nsw i64 %2434, %2
  %2437 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2436, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2438 = icmp eq ptr %2437, null
  br i1 %2438, label %2640, label %2439

2439:                                             ; preds = %2433
  br i1 %2432, label %2440, label %2457

2440:                                             ; preds = %2439, %2451
  %2441 = phi ptr [ %2454, %2451 ], [ %2437, %2439 ]
  %2442 = phi ptr [ %2453, %2451 ], [ %2435, %2439 ]
  %2443 = phi i64 [ %2455, %2451 ], [ 0, %2439 ]
  %2444 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %2441) #23
  %2445 = fcmp ugt float %2444, 0.000000e+00
  br i1 %2445, label %2446, label %2451

2446:                                             ; preds = %2440
  %2447 = fcmp ult float %2444, 6.553500e+04
  br i1 %2447, label %2448, label %2451

2448:                                             ; preds = %2446
  %2449 = fadd float %2444, 5.000000e-01
  %2450 = fptoui float %2449 to i16
  br label %2451

2451:                                             ; preds = %2448, %2446, %2440
  %2452 = phi i16 [ %2450, %2448 ], [ 0, %2440 ], [ -1, %2446 ]
  %2453 = getelementptr inbounds i16, ptr %2442, i64 1
  store i16 %2452, ptr %2442, align 2, !tbaa !85, !noalias !189
  %2454 = getelementptr inbounds %struct._PixelPacket, ptr %2441, i64 1
  %2455 = add nuw nsw i64 %2443, 1
  %2456 = icmp eq i64 %2455, %3
  br i1 %2456, label %2457, label %2440, !llvm.loop !198

2457:                                             ; preds = %2451, %2439
  %2458 = phi ptr [ %2435, %2439 ], [ %2453, %2451 ]
  %2459 = add nuw nsw i64 %2434, 1
  %2460 = icmp eq i64 %2459, %4
  br i1 %2460, label %2640, label %2433, !llvm.loop !199

2461:                                             ; preds = %2426
  %2462 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %2463 = icmp eq i32 %2462, 0
  br i1 %2463, label %2464, label %2494

2464:                                             ; preds = %2461
  %2465 = icmp sgt i64 %4, 0
  br i1 %2465, label %2466, label %2640

2466:                                             ; preds = %2464
  %2467 = icmp sgt i64 %3, 0
  br label %2468

2468:                                             ; preds = %2466, %2490
  %2469 = phi i64 [ 0, %2466 ], [ %2492, %2490 ]
  %2470 = phi ptr [ %7, %2466 ], [ %2491, %2490 ]
  %2471 = add nsw i64 %2469, %2
  %2472 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2471, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2473 = icmp eq ptr %2472, null
  br i1 %2473, label %2640, label %2474

2474:                                             ; preds = %2468
  br i1 %2467, label %2475, label %2490

2475:                                             ; preds = %2474, %2475
  %2476 = phi ptr [ %2487, %2475 ], [ %2472, %2474 ]
  %2477 = phi ptr [ %2486, %2475 ], [ %2470, %2474 ]
  %2478 = phi i64 [ %2488, %2475 ], [ 0, %2474 ]
  %2479 = getelementptr inbounds %struct._PixelPacket, ptr %2476, i64 0, i32 2
  %2480 = load i16, ptr %2479, align 2, !tbaa !69
  %2481 = getelementptr inbounds i16, ptr %2477, i64 1
  store i16 %2480, ptr %2477, align 2, !tbaa !85, !noalias !189
  %2482 = getelementptr inbounds %struct._PixelPacket, ptr %2476, i64 0, i32 1
  %2483 = load i16, ptr %2482, align 2, !tbaa !68
  %2484 = getelementptr inbounds i16, ptr %2477, i64 2
  store i16 %2483, ptr %2481, align 2, !tbaa !85, !noalias !189
  %2485 = load i16, ptr %2476, align 2, !tbaa !67
  %2486 = getelementptr inbounds i16, ptr %2477, i64 3
  store i16 %2485, ptr %2484, align 2, !tbaa !85, !noalias !189
  %2487 = getelementptr inbounds %struct._PixelPacket, ptr %2476, i64 1
  %2488 = add nuw nsw i64 %2478, 1
  %2489 = icmp eq i64 %2488, %3
  br i1 %2489, label %2490, label %2475, !llvm.loop !200

2490:                                             ; preds = %2475, %2474
  %2491 = phi ptr [ %2470, %2474 ], [ %2486, %2475 ]
  %2492 = add nuw nsw i64 %2469, 1
  %2493 = icmp eq i64 %2492, %4
  br i1 %2493, label %2640, label %2468, !llvm.loop !201

2494:                                             ; preds = %2461
  %2495 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %2496 = icmp eq i32 %2495, 0
  br i1 %2496, label %2497, label %2531

2497:                                             ; preds = %2494
  %2498 = icmp sgt i64 %4, 0
  br i1 %2498, label %2499, label %2640

2499:                                             ; preds = %2497
  %2500 = icmp sgt i64 %3, 0
  br label %2501

2501:                                             ; preds = %2499, %2527
  %2502 = phi i64 [ 0, %2499 ], [ %2529, %2527 ]
  %2503 = phi ptr [ %7, %2499 ], [ %2528, %2527 ]
  %2504 = add nsw i64 %2502, %2
  %2505 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2504, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2506 = icmp eq ptr %2505, null
  br i1 %2506, label %2640, label %2507

2507:                                             ; preds = %2501
  br i1 %2500, label %2508, label %2527

2508:                                             ; preds = %2507, %2508
  %2509 = phi ptr [ %2524, %2508 ], [ %2505, %2507 ]
  %2510 = phi ptr [ %2523, %2508 ], [ %2503, %2507 ]
  %2511 = phi i64 [ %2525, %2508 ], [ 0, %2507 ]
  %2512 = getelementptr inbounds %struct._PixelPacket, ptr %2509, i64 0, i32 2
  %2513 = load i16, ptr %2512, align 2, !tbaa !69
  %2514 = getelementptr inbounds i16, ptr %2510, i64 1
  store i16 %2513, ptr %2510, align 2, !tbaa !85, !noalias !189
  %2515 = getelementptr inbounds %struct._PixelPacket, ptr %2509, i64 0, i32 1
  %2516 = load i16, ptr %2515, align 2, !tbaa !68
  %2517 = getelementptr inbounds i16, ptr %2510, i64 2
  store i16 %2516, ptr %2514, align 2, !tbaa !85, !noalias !189
  %2518 = load i16, ptr %2509, align 2, !tbaa !67
  %2519 = getelementptr inbounds i16, ptr %2510, i64 3
  store i16 %2518, ptr %2517, align 2, !tbaa !85, !noalias !189
  %2520 = getelementptr inbounds %struct._PixelPacket, ptr %2509, i64 0, i32 3
  %2521 = load i16, ptr %2520, align 2, !tbaa !72
  %2522 = xor i16 %2521, -1
  %2523 = getelementptr inbounds i16, ptr %2510, i64 4
  store i16 %2522, ptr %2519, align 2, !tbaa !85, !noalias !189
  %2524 = getelementptr inbounds %struct._PixelPacket, ptr %2509, i64 1
  %2525 = add nuw nsw i64 %2511, 1
  %2526 = icmp eq i64 %2525, %3
  br i1 %2526, label %2527, label %2508, !llvm.loop !202

2527:                                             ; preds = %2508, %2507
  %2528 = phi ptr [ %2503, %2507 ], [ %2523, %2508 ]
  %2529 = add nuw nsw i64 %2502, 1
  %2530 = icmp eq i64 %2529, %4
  br i1 %2530, label %2640, label %2501, !llvm.loop !203

2531:                                             ; preds = %2494
  %2532 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %2533 = icmp eq i32 %2532, 0
  br i1 %2533, label %2534, label %2565

2534:                                             ; preds = %2531
  %2535 = icmp sgt i64 %4, 0
  br i1 %2535, label %2536, label %2640

2536:                                             ; preds = %2534
  %2537 = icmp sgt i64 %3, 0
  br label %2538

2538:                                             ; preds = %2536, %2561
  %2539 = phi i64 [ 0, %2536 ], [ %2563, %2561 ]
  %2540 = phi ptr [ %7, %2536 ], [ %2562, %2561 ]
  %2541 = add nsw i64 %2539, %2
  %2542 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2541, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2543 = icmp eq ptr %2542, null
  br i1 %2543, label %2640, label %2544

2544:                                             ; preds = %2538
  br i1 %2537, label %2545, label %2561

2545:                                             ; preds = %2544, %2545
  %2546 = phi ptr [ %2558, %2545 ], [ %2542, %2544 ]
  %2547 = phi ptr [ %2557, %2545 ], [ %2540, %2544 ]
  %2548 = phi i64 [ %2559, %2545 ], [ 0, %2544 ]
  %2549 = getelementptr inbounds %struct._PixelPacket, ptr %2546, i64 0, i32 2
  %2550 = load i16, ptr %2549, align 2, !tbaa !69
  %2551 = getelementptr inbounds i16, ptr %2547, i64 1
  store i16 %2550, ptr %2547, align 2, !tbaa !85, !noalias !189
  %2552 = getelementptr inbounds %struct._PixelPacket, ptr %2546, i64 0, i32 1
  %2553 = load i16, ptr %2552, align 2, !tbaa !68
  %2554 = getelementptr inbounds i16, ptr %2547, i64 2
  store i16 %2553, ptr %2551, align 2, !tbaa !85, !noalias !189
  %2555 = load i16, ptr %2546, align 2, !tbaa !67
  %2556 = getelementptr inbounds i16, ptr %2547, i64 3
  store i16 %2555, ptr %2554, align 2, !tbaa !85, !noalias !189
  %2557 = getelementptr inbounds i16, ptr %2547, i64 4
  store i16 0, ptr %2556, align 2, !tbaa !85, !noalias !189
  %2558 = getelementptr inbounds %struct._PixelPacket, ptr %2546, i64 1
  %2559 = add nuw nsw i64 %2548, 1
  %2560 = icmp eq i64 %2559, %3
  br i1 %2560, label %2561, label %2545, !llvm.loop !204

2561:                                             ; preds = %2545, %2544
  %2562 = phi ptr [ %2540, %2544 ], [ %2557, %2545 ]
  %2563 = add nuw nsw i64 %2539, 1
  %2564 = icmp eq i64 %2563, %4
  br i1 %2564, label %2640, label %2538, !llvm.loop !205

2565:                                             ; preds = %2531
  %2566 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !189
  %2567 = icmp sgt i64 %4, 0
  br i1 %2567, label %2568, label %2640

2568:                                             ; preds = %2565
  %2569 = icmp sgt i64 %3, 0
  %2570 = icmp sgt i64 %2566, 0
  %2571 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  br label %2572

2572:                                             ; preds = %2568, %2633
  %2573 = phi i64 [ 0, %2568 ], [ %2635, %2633 ]
  %2574 = phi ptr [ %7, %2568 ], [ %2634, %2633 ]
  %2575 = add nsw i64 %2573, %2
  %2576 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2575, i64 noundef %3, i64 noundef 1, ptr noundef %8) #19
  %2577 = icmp eq ptr %2576, null
  br i1 %2577, label %2640, label %2578

2578:                                             ; preds = %2572
  %2579 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #19
  br i1 %2569, label %2580, label %2633

2580:                                             ; preds = %2578
  %2581 = icmp eq ptr %2579, null
  br label %2582

2582:                                             ; preds = %2580, %2628
  %2583 = phi ptr [ %2576, %2580 ], [ %2630, %2628 ]
  %2584 = phi ptr [ %2574, %2580 ], [ %2629, %2628 ]
  %2585 = phi i64 [ 0, %2580 ], [ %2631, %2628 ]
  br i1 %2570, label %2586, label %2628

2586:                                             ; preds = %2582
  %2587 = getelementptr inbounds i16, ptr %2579, i64 %2585
  %2588 = getelementptr inbounds %struct._PixelPacket, ptr %2583, i64 0, i32 3
  %2589 = getelementptr inbounds %struct._PixelPacket, ptr %2583, i64 0, i32 3
  %2590 = getelementptr inbounds %struct._PixelPacket, ptr %2583, i64 0, i32 1
  %2591 = getelementptr inbounds %struct._PixelPacket, ptr %2583, i64 0, i32 2
  br label %2592

2592:                                             ; preds = %2586, %2624
  %2593 = phi i64 [ 0, %2586 ], [ %2626, %2624 ]
  %2594 = phi ptr [ %2584, %2586 ], [ %2625, %2624 ]
  store i16 0, ptr %2594, align 2, !tbaa !85, !noalias !189
  %2595 = getelementptr inbounds i32, ptr %18, i64 %2593
  %2596 = load i32, ptr %2595, align 4, !tbaa !34, !noalias !189
  switch i32 %2596, label %2624 [
    i32 14, label %2597
    i32 6, label %2597
    i32 9, label %2599
    i32 12, label %2599
    i32 3, label %2601
    i32 19, label %2601
    i32 1, label %2603
    i32 13, label %2606
    i32 2, label %2608
    i32 11, label %2614
  ]

2597:                                             ; preds = %2592, %2592
  %2598 = load i16, ptr %2591, align 2, !tbaa !69
  br label %2622

2599:                                             ; preds = %2592, %2592
  %2600 = load i16, ptr %2590, align 2, !tbaa !68
  br label %2622

2601:                                             ; preds = %2592, %2592
  %2602 = load i16, ptr %2583, align 2, !tbaa !67
  br label %2622

2603:                                             ; preds = %2592
  %2604 = load i16, ptr %2589, align 2, !tbaa !72
  %2605 = xor i16 %2604, -1
  br label %2622

2606:                                             ; preds = %2592
  %2607 = load i16, ptr %2588, align 2, !tbaa !72
  br label %2622

2608:                                             ; preds = %2592
  %2609 = load i32, ptr %2571, align 4, !tbaa !60, !noalias !189
  %2610 = icmp eq i32 %2609, 12
  br i1 %2610, label %2611, label %2624

2611:                                             ; preds = %2608
  br i1 %2581, label %2622, label %2612

2612:                                             ; preds = %2611
  %2613 = load i16, ptr %2587, align 2, !tbaa !85
  br label %2622

2614:                                             ; preds = %2592
  %2615 = tail call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %2583) #23
  %2616 = fcmp ugt float %2615, 0.000000e+00
  br i1 %2616, label %2617, label %2622

2617:                                             ; preds = %2614
  %2618 = fcmp ult float %2615, 6.553500e+04
  br i1 %2618, label %2619, label %2622

2619:                                             ; preds = %2617
  %2620 = fadd float %2615, 5.000000e-01
  %2621 = fptoui float %2620 to i16
  br label %2622

2622:                                             ; preds = %2614, %2617, %2619, %2611, %2612, %2597, %2599, %2601, %2603, %2606
  %2623 = phi i16 [ %2607, %2606 ], [ %2605, %2603 ], [ %2602, %2601 ], [ %2600, %2599 ], [ %2598, %2597 ], [ %2613, %2612 ], [ 0, %2611 ], [ %2621, %2619 ], [ 0, %2614 ], [ -1, %2617 ]
  store i16 %2623, ptr %2594, align 2, !tbaa !85, !noalias !189
  br label %2624

2624:                                             ; preds = %2622, %2608, %2592
  %2625 = getelementptr inbounds i16, ptr %2594, i64 1
  %2626 = add nuw nsw i64 %2593, 1
  %2627 = icmp eq i64 %2626, %2566
  br i1 %2627, label %2628, label %2592, !llvm.loop !206

2628:                                             ; preds = %2624, %2582
  %2629 = phi ptr [ %2584, %2582 ], [ %2625, %2624 ]
  %2630 = getelementptr inbounds %struct._PixelPacket, ptr %2583, i64 1
  %2631 = add nuw nsw i64 %2585, 1
  %2632 = icmp eq i64 %2631, %3
  br i1 %2632, label %2633, label %2582, !llvm.loop !207

2633:                                             ; preds = %2628, %2578
  %2634 = phi ptr [ %2574, %2578 ], [ %2629, %2628 ]
  %2635 = add nuw nsw i64 %2573, 1
  %2636 = icmp eq i64 %2635, %4
  br i1 %2636, label %2640, label %2572, !llvm.loop !208

2637:                                             ; preds = %77
  %2638 = tail call ptr @RelinquishMagickMemory(ptr noundef %18) #19
  %2639 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1997, i32 noundef 410, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %5) #19
  br label %2640

2640:                                             ; preds = %2633, %2572, %2561, %2538, %2527, %2501, %2490, %2468, %2457, %2433, %2422, %2399, %2388, %2362, %2351, %2329, %2318, %2257, %2246, %2223, %2212, %2186, %2175, %2153, %2142, %2118, %2107, %2084, %2073, %2047, %2036, %2014, %2003, %1940, %1929, %1900, %1889, %1855, %1844, %1816, %1805, %1779, %1768, %1739, %1728, %1694, %1683, %1655, %1644, %1565, %1554, %1525, %1514, %1480, %1469, %1441, %1430, %1404, %1393, %1364, %1353, %1319, %1308, %1280, %1269, %1190, %1179, %1147, %1136, %1098, %1087, %1056, %1045, %1026, %1015, %983, %972, %934, %923, %892, %881, %809, %798, %769, %758, %724, %713, %685, %674, %656, %645, %616, %605, %571, %560, %532, %521, %454, %443, %402, %391, %341, %330, %290, %279, %249, %238, %197, %186, %136, %125, %85, %2565, %2534, %2497, %2464, %2429, %2395, %2358, %2325, %2250, %2219, %2182, %2149, %2114, %2080, %2043, %2010, %1933, %1896, %1851, %1812, %1775, %1735, %1690, %1651, %1558, %1521, %1476, %1437, %1400, %1360, %1315, %1276, %1183, %1143, %1094, %1052, %1022, %979, %930, %888, %802, %765, %720, %681, %652, %612, %567, %528, %447, %398, %337, %286, %245, %193, %132, %81, %2637
  %2641 = phi ptr [ %2638, %2637 ], [ %18, %81 ], [ %18, %132 ], [ %18, %193 ], [ %18, %245 ], [ %18, %286 ], [ %18, %337 ], [ %18, %398 ], [ %18, %447 ], [ %18, %528 ], [ %18, %567 ], [ %18, %612 ], [ %18, %652 ], [ %18, %681 ], [ %18, %720 ], [ %18, %765 ], [ %18, %802 ], [ %18, %888 ], [ %18, %930 ], [ %18, %979 ], [ %18, %1022 ], [ %18, %1052 ], [ %18, %1094 ], [ %18, %1143 ], [ %18, %1183 ], [ %18, %1276 ], [ %18, %1315 ], [ %18, %1360 ], [ %18, %1400 ], [ %18, %1437 ], [ %18, %1476 ], [ %18, %1521 ], [ %18, %1558 ], [ %18, %1651 ], [ %18, %1690 ], [ %18, %1735 ], [ %18, %1775 ], [ %18, %1812 ], [ %18, %1851 ], [ %18, %1896 ], [ %18, %1933 ], [ %18, %2010 ], [ %18, %2043 ], [ %18, %2080 ], [ %18, %2114 ], [ %18, %2149 ], [ %18, %2182 ], [ %18, %2219 ], [ %18, %2250 ], [ %18, %2325 ], [ %18, %2358 ], [ %18, %2395 ], [ %18, %2429 ], [ %18, %2464 ], [ %18, %2497 ], [ %18, %2534 ], [ %18, %2565 ], [ %18, %85 ], [ %18, %125 ], [ %18, %136 ], [ %18, %186 ], [ %18, %197 ], [ %18, %238 ], [ %18, %249 ], [ %18, %279 ], [ %18, %290 ], [ %18, %330 ], [ %18, %341 ], [ %18, %391 ], [ %18, %402 ], [ %18, %443 ], [ %18, %454 ], [ %18, %521 ], [ %18, %532 ], [ %18, %560 ], [ %18, %571 ], [ %18, %605 ], [ %18, %616 ], [ %18, %645 ], [ %18, %656 ], [ %18, %674 ], [ %18, %685 ], [ %18, %713 ], [ %18, %724 ], [ %18, %758 ], [ %18, %769 ], [ %18, %798 ], [ %18, %809 ], [ %18, %881 ], [ %18, %892 ], [ %18, %923 ], [ %18, %934 ], [ %18, %972 ], [ %18, %983 ], [ %18, %1015 ], [ %18, %1026 ], [ %18, %1045 ], [ %18, %1056 ], [ %18, %1087 ], [ %18, %1098 ], [ %18, %1136 ], [ %18, %1147 ], [ %18, %1179 ], [ %18, %1190 ], [ %18, %1269 ], [ %18, %1280 ], [ %18, %1308 ], [ %18, %1319 ], [ %18, %1353 ], [ %18, %1364 ], [ %18, %1393 ], [ %18, %1404 ], [ %18, %1430 ], [ %18, %1441 ], [ %18, %1469 ], [ %18, %1480 ], [ %18, %1514 ], [ %18, %1525 ], [ %18, %1554 ], [ %18, %1565 ], [ %18, %1644 ], [ %18, %1655 ], [ %18, %1683 ], [ %18, %1694 ], [ %18, %1728 ], [ %18, %1739 ], [ %18, %1768 ], [ %18, %1779 ], [ %18, %1805 ], [ %18, %1816 ], [ %18, %1844 ], [ %18, %1855 ], [ %18, %1889 ], [ %18, %1900 ], [ %18, %1929 ], [ %18, %1940 ], [ %18, %2003 ], [ %18, %2014 ], [ %18, %2036 ], [ %18, %2047 ], [ %18, %2073 ], [ %18, %2084 ], [ %18, %2107 ], [ %18, %2118 ], [ %18, %2142 ], [ %18, %2153 ], [ %18, %2175 ], [ %18, %2186 ], [ %18, %2212 ], [ %18, %2223 ], [ %18, %2246 ], [ %18, %2257 ], [ %18, %2318 ], [ %18, %2329 ], [ %18, %2351 ], [ %18, %2362 ], [ %18, %2388 ], [ %18, %2399 ], [ %18, %2422 ], [ %18, %2433 ], [ %18, %2457 ], [ %18, %2468 ], [ %18, %2490 ], [ %18, %2501 ], [ %18, %2527 ], [ %18, %2538 ], [ %18, %2561 ], [ %18, %2572 ], [ %18, %2633 ]
  %2642 = tail call ptr @RelinquishMagickMemory(ptr noundef %2641) #19
  br label %2643

2643:                                             ; preds = %2640, %68, %65, %55, %48, %39, %27
  %2644 = phi i32 [ 0, %27 ], [ 0, %68 ], [ 0, %65 ], [ 0, %55 ], [ 0, %48 ], [ 0, %39 ], [ 1, %2640 ]
  ret i32 %2644
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GetMagickPixelPacket(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  store i32 1, ptr %1, align 8, !tbaa !209
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 1
  store i32 13, ptr %3, align 4, !tbaa !211
  %4 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !212
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 3
  store double 0.000000e+00, ptr %5, align 8, !tbaa !213
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 4
  store i64 16, ptr %6, align 8, !tbaa !214
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %8 = icmp eq ptr %0, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %0, align 8, !tbaa !215
  store i32 %10, ptr %1, align 8, !tbaa !209
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !60
  store i32 %12, ptr %3, align 4, !tbaa !211
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !216
  store i32 %14, ptr %4, align 8, !tbaa !212
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %16 = load i64, ptr %15, align 8, !tbaa !217
  store i64 %16, ptr %6, align 8, !tbaa !214
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %18 = load double, ptr %17, align 8, !tbaa !218
  store double %18, ptr %5, align 8, !tbaa !213
  br label %19

19:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: hot mustprogress nofree nounwind willreturn uwtable
define dso_local float @GetPixelIntensity(ptr nocapture noundef readonly %0, ptr noalias nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp eq i32 %4, 2
  %6 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !69
  %8 = uitofp i16 %7 to float
  br i1 %5, label %126, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !68
  %12 = uitofp i16 %11 to float
  %13 = load i16, ptr %1, align 2, !tbaa !67
  %14 = uitofp i16 %13 to float
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  %16 = load i32, ptr %15, align 8, !tbaa !219
  switch i32 %16, label %81 [
    i32 1, label %17
    i32 2, label %21
    i32 3, label %26
    i32 9, label %37
    i32 4, label %47
    i32 5, label %64
    i32 8, label %115
    i32 7, label %98
  ]

17:                                               ; preds = %9
  %18 = fadd float %8, %12
  %19 = fadd float %18, %14
  %20 = fdiv float %19, 3.000000e+00
  br label %126

21:                                               ; preds = %9
  %22 = fcmp ogt float %8, %12
  %23 = select i1 %22, float %8, float %12
  %24 = fcmp ogt float %23, %14
  %25 = select i1 %24, float %23, float %14
  br label %126

26:                                               ; preds = %9
  %27 = fcmp olt float %8, %12
  %28 = select i1 %27, float %8, float %12
  %29 = fcmp olt float %28, %14
  %30 = select i1 %29, float %28, float %14
  %31 = fcmp ogt float %8, %12
  %32 = select i1 %31, float %8, float %12
  %33 = fcmp ogt float %32, %14
  %34 = select i1 %33, float %32, float %14
  %35 = fadd float %30, %34
  %36 = fmul float %35, 5.000000e-01
  br label %126

37:                                               ; preds = %9
  %38 = uitofp i16 %7 to double
  %39 = fmul float %12, %12
  %40 = fpext float %39 to double
  %41 = tail call double @llvm.fmuladd.f64(double %38, double %38, double %40)
  %42 = fmul float %14, %14
  %43 = fpext float %42 to double
  %44 = fadd double %41, %43
  %45 = fdiv double %44, 1.966050e+05
  %46 = fptrunc double %45 to float
  br label %126

47:                                               ; preds = %9
  %48 = icmp eq i32 %4, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = tail call float @EncodePixelGamma(float noundef %8) #23
  %51 = tail call float @EncodePixelGamma(float noundef %12) #23
  %52 = tail call float @EncodePixelGamma(float noundef %14) #23
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi float [ %52, %49 ], [ %14, %47 ]
  %55 = phi float [ %51, %49 ], [ %12, %47 ]
  %56 = phi float [ %50, %49 ], [ %8, %47 ]
  %57 = fpext float %56 to double
  %58 = fpext float %55 to double
  %59 = fmul double %58, 5.868110e-01
  %60 = tail call double @llvm.fmuladd.f64(double %57, double 2.988390e-01, double %59)
  %61 = fpext float %54 to double
  %62 = tail call double @llvm.fmuladd.f64(double %61, double 1.143500e-01, double %60)
  %63 = fptrunc double %62 to float
  br label %126

64:                                               ; preds = %9
  %65 = icmp eq i32 %4, 13
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = tail call float @DecodePixelGamma(float noundef %8) #23
  %68 = tail call float @DecodePixelGamma(float noundef %12) #23
  %69 = tail call float @DecodePixelGamma(float noundef %14) #23
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi float [ %69, %66 ], [ %14, %64 ]
  %72 = phi float [ %68, %66 ], [ %12, %64 ]
  %73 = phi float [ %67, %66 ], [ %8, %64 ]
  %74 = fpext float %73 to double
  %75 = fpext float %72 to double
  %76 = fmul double %75, 5.868110e-01
  %77 = tail call double @llvm.fmuladd.f64(double %74, double 2.988390e-01, double %76)
  %78 = fpext float %71 to double
  %79 = tail call double @llvm.fmuladd.f64(double %78, double 1.143500e-01, double %77)
  %80 = fptrunc double %79 to float
  br label %126

81:                                               ; preds = %9
  %82 = icmp eq i32 %4, 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = tail call float @EncodePixelGamma(float noundef %8) #23
  %85 = tail call float @EncodePixelGamma(float noundef %12) #23
  %86 = tail call float @EncodePixelGamma(float noundef %14) #23
  br label %87

87:                                               ; preds = %83, %81
  %88 = phi float [ %86, %83 ], [ %14, %81 ]
  %89 = phi float [ %85, %83 ], [ %12, %81 ]
  %90 = phi float [ %84, %83 ], [ %8, %81 ]
  %91 = fpext float %90 to double
  %92 = fpext float %89 to double
  %93 = fmul double %92, 0x3FE6E29307AF20EA
  %94 = tail call double @llvm.fmuladd.f64(double %91, double 2.126560e-01, double %93)
  %95 = fpext float %88 to double
  %96 = tail call double @llvm.fmuladd.f64(double %95, double 7.218600e-02, double %94)
  %97 = fptrunc double %96 to float
  br label %126

98:                                               ; preds = %9
  %99 = icmp eq i32 %4, 13
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  %101 = tail call float @DecodePixelGamma(float noundef %8) #23
  %102 = tail call float @DecodePixelGamma(float noundef %12) #23
  %103 = tail call float @DecodePixelGamma(float noundef %14) #23
  br label %104

104:                                              ; preds = %100, %98
  %105 = phi float [ %103, %100 ], [ %14, %98 ]
  %106 = phi float [ %102, %100 ], [ %12, %98 ]
  %107 = phi float [ %101, %100 ], [ %8, %98 ]
  %108 = fpext float %107 to double
  %109 = fpext float %106 to double
  %110 = fmul double %109, 0x3FE6E29307AF20EA
  %111 = tail call double @llvm.fmuladd.f64(double %108, double 2.126560e-01, double %110)
  %112 = fpext float %105 to double
  %113 = tail call double @llvm.fmuladd.f64(double %112, double 7.218600e-02, double %111)
  %114 = fptrunc double %113 to float
  br label %126

115:                                              ; preds = %9
  %116 = uitofp i16 %7 to double
  %117 = fmul float %12, %12
  %118 = fpext float %117 to double
  %119 = tail call double @llvm.fmuladd.f64(double %116, double %116, double %118)
  %120 = fmul float %14, %14
  %121 = fpext float %120 to double
  %122 = fadd double %119, %121
  %123 = tail call double @sqrt(double noundef %122) #19
  %124 = fdiv double %123, 0x3FFBB67AE8584CAA
  %125 = fptrunc double %124 to float
  br label %126

126:                                              ; preds = %2, %17, %21, %26, %37, %53, %70, %87, %104, %115
  %127 = phi float [ %97, %87 ], [ %114, %104 ], [ %125, %115 ], [ %80, %70 ], [ %63, %53 ], [ %46, %37 ], [ %36, %26 ], [ %25, %21 ], [ %20, %17 ], [ %8, %2 ]
  ret float %127
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ImportImagePixels(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef readonly %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !45
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3962, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #19
  br label %15

15:                                               ; preds = %12, %8
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22
  %17 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 4) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = icmp sgt i64 %16, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  br label %30

24:                                               ; preds = %15
  %25 = icmp eq ptr %0, null
  br i1 %25, label %3232, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %28 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %29 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %27, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3967, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %28) #19
  br label %3232

30:                                               ; preds = %21, %65
  %31 = phi i64 [ 0, %21 ], [ %66, %65 ]
  %32 = getelementptr inbounds i8, ptr %5, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !59
  switch i8 %33, label %61 [
    i8 97, label %34
    i8 65, label %34
    i8 66, label %36
    i8 98, label %36
    i8 67, label %38
    i8 99, label %38
    i8 103, label %41
    i8 71, label %41
    i8 75, label %43
    i8 107, label %43
    i8 73, label %46
    i8 105, label %46
    i8 109, label %49
    i8 77, label %49
    i8 79, label %52
    i8 111, label %52
    i8 80, label %54
    i8 112, label %54
    i8 82, label %56
    i8 114, label %56
    i8 89, label %58
    i8 121, label %58
  ]

34:                                               ; preds = %30, %30
  %35 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 1, ptr %35, align 4, !tbaa !34
  store i32 1, ptr %23, align 8, !tbaa !216
  br label %65

36:                                               ; preds = %30, %30
  %37 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 3, ptr %37, align 4, !tbaa !34
  br label %65

38:                                               ; preds = %30, %30
  %39 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 6, ptr %39, align 4, !tbaa !34
  %40 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 12) #19
  br label %65

41:                                               ; preds = %30, %30
  %42 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 9, ptr %42, align 4, !tbaa !34
  br label %65

43:                                               ; preds = %30, %30
  %44 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 2, ptr %44, align 4, !tbaa !34
  %45 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 12) #19
  br label %65

46:                                               ; preds = %30, %30
  %47 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 11, ptr %47, align 4, !tbaa !34
  %48 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 2) #19
  br label %65

49:                                               ; preds = %30, %30
  %50 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 12, ptr %50, align 4, !tbaa !34
  %51 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 12) #19
  br label %65

52:                                               ; preds = %30, %30
  %53 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 13, ptr %53, align 4, !tbaa !34
  store i32 1, ptr %22, align 8, !tbaa !216
  br label %65

54:                                               ; preds = %30, %30
  %55 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 0, ptr %55, align 4, !tbaa !34
  br label %65

56:                                               ; preds = %30, %30
  %57 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 14, ptr %57, align 4, !tbaa !34
  br label %65

58:                                               ; preds = %30, %30
  %59 = getelementptr inbounds i32, ptr %17, i64 %31
  store i32 19, ptr %59, align 4, !tbaa !34
  %60 = tail call i32 @SetImageColorspace(ptr noundef %0, i32 noundef 12) #19
  br label %65

61:                                               ; preds = %30
  %62 = tail call ptr @RelinquishMagickMemory(ptr noundef %17) #19
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %64 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %63, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4048, i32 noundef 410, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %5) #19
  br label %3232

65:                                               ; preds = %34, %36, %38, %41, %43, %46, %49, %52, %54, %56, %58
  %66 = add nuw nsw i64 %31, 1
  %67 = icmp eq i64 %66, %16
  br i1 %67, label %68, label %30, !llvm.loop !220

68:                                               ; preds = %65, %19
  %69 = tail call i32 @SetImageStorageClass(ptr noundef %0, i32 noundef 1) #19
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %3232, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  switch i32 %6, label %3226 [
    i32 1, label %73
    i32 2, label %544
    i32 3, label %1145
    i32 4, label %1718
    i32 5, label %2151
    i32 6, label %2584
    i32 7, label %2905
  ]

73:                                               ; preds = %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %74 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %115

76:                                               ; preds = %73
  %77 = icmp sgt i64 %4, 0
  br i1 %77, label %78, label %3229

78:                                               ; preds = %76
  %79 = icmp sgt i64 %3, 0
  br label %80

80:                                               ; preds = %108, %78
  %81 = phi i64 [ 0, %78 ], [ %112, %108 ]
  %82 = phi ptr [ %7, %78 ], [ %109, %108 ]
  %83 = add nsw i64 %81, %2
  %84 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %83, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %85 = icmp eq ptr %84, null
  br i1 %85, label %3229, label %86

86:                                               ; preds = %80
  br i1 %79, label %87, label %108

87:                                               ; preds = %86, %87
  %88 = phi ptr [ %100, %87 ], [ %82, %86 ]
  %89 = phi i64 [ %106, %87 ], [ 0, %86 ]
  %90 = phi ptr [ %105, %87 ], [ %84, %86 ]
  %91 = getelementptr inbounds i8, ptr %88, i64 1
  %92 = load i8, ptr %88, align 1, !tbaa !59, !noalias !221
  %93 = zext i8 %92 to i16
  %94 = mul nuw i16 %93, 257
  store i16 %94, ptr %90, align 2, !tbaa !67
  %95 = getelementptr inbounds i8, ptr %88, i64 2
  %96 = load i8, ptr %91, align 1, !tbaa !59, !noalias !221
  %97 = zext i8 %96 to i16
  %98 = mul nuw i16 %97, 257
  %99 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 1
  store i16 %98, ptr %99, align 2, !tbaa !68
  %100 = getelementptr inbounds i8, ptr %88, i64 3
  %101 = load i8, ptr %95, align 1, !tbaa !59, !noalias !221
  %102 = zext i8 %101 to i16
  %103 = mul nuw i16 %102, 257
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 0, i32 2
  store i16 %103, ptr %104, align 2, !tbaa !69
  %105 = getelementptr inbounds %struct._PixelPacket, ptr %90, i64 1
  %106 = add nuw nsw i64 %89, 1
  %107 = icmp eq i64 %106, %3
  br i1 %107, label %108, label %87, !llvm.loop !224

108:                                              ; preds = %87, %86
  %109 = phi ptr [ %82, %86 ], [ %100, %87 ]
  %110 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %111 = icmp eq i32 %110, 0
  %112 = add nuw nsw i64 %81, 1
  %113 = icmp eq i64 %112, %4
  %114 = select i1 %111, i1 true, i1 %113
  br i1 %114, label %3229, label %80, !llvm.loop !225

115:                                              ; preds = %73
  %116 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %163

118:                                              ; preds = %115
  %119 = icmp sgt i64 %4, 0
  br i1 %119, label %120, label %3229

120:                                              ; preds = %118
  %121 = icmp sgt i64 %3, 0
  br label %122

122:                                              ; preds = %156, %120
  %123 = phi i64 [ 0, %120 ], [ %160, %156 ]
  %124 = phi ptr [ %7, %120 ], [ %157, %156 ]
  %125 = add nsw i64 %123, %2
  %126 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %125, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %127 = icmp eq ptr %126, null
  br i1 %127, label %3229, label %128

128:                                              ; preds = %122
  br i1 %121, label %129, label %156

129:                                              ; preds = %128, %129
  %130 = phi ptr [ %147, %129 ], [ %124, %128 ]
  %131 = phi i64 [ %154, %129 ], [ 0, %128 ]
  %132 = phi ptr [ %153, %129 ], [ %126, %128 ]
  %133 = getelementptr inbounds i8, ptr %130, i64 1
  %134 = load i8, ptr %130, align 1, !tbaa !59, !noalias !221
  %135 = zext i8 %134 to i16
  %136 = mul nuw i16 %135, 257
  store i16 %136, ptr %132, align 2, !tbaa !67
  %137 = getelementptr inbounds i8, ptr %130, i64 2
  %138 = load i8, ptr %133, align 1, !tbaa !59, !noalias !221
  %139 = zext i8 %138 to i16
  %140 = mul nuw i16 %139, 257
  %141 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 0, i32 1
  store i16 %140, ptr %141, align 2, !tbaa !68
  %142 = getelementptr inbounds i8, ptr %130, i64 3
  %143 = load i8, ptr %137, align 1, !tbaa !59, !noalias !221
  %144 = zext i8 %143 to i16
  %145 = mul nuw i16 %144, 257
  %146 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 0, i32 2
  store i16 %145, ptr %146, align 2, !tbaa !69
  %147 = getelementptr inbounds i8, ptr %130, i64 4
  %148 = load i8, ptr %142, align 1, !tbaa !59, !noalias !221
  %149 = zext i8 %148 to i16
  %150 = mul nuw i16 %149, 257
  %151 = xor i16 %150, -1
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 0, i32 3
  store i16 %151, ptr %152, align 2, !tbaa !72
  %153 = getelementptr inbounds %struct._PixelPacket, ptr %132, i64 1
  %154 = add nuw nsw i64 %131, 1
  %155 = icmp eq i64 %154, %3
  br i1 %155, label %156, label %129, !llvm.loop !226

156:                                              ; preds = %129, %128
  %157 = phi ptr [ %124, %128 ], [ %147, %129 ]
  %158 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %159 = icmp eq i32 %158, 0
  %160 = add nuw nsw i64 %123, 1
  %161 = icmp eq i64 %160, %4
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %3229, label %122, !llvm.loop !227

163:                                              ; preds = %115
  %164 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.16) #19
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %210

166:                                              ; preds = %163
  %167 = icmp sgt i64 %4, 0
  br i1 %167, label %168, label %3229

168:                                              ; preds = %166
  %169 = icmp sgt i64 %3, 0
  br label %170

170:                                              ; preds = %203, %168
  %171 = phi i64 [ 0, %168 ], [ %207, %203 ]
  %172 = phi ptr [ %7, %168 ], [ %204, %203 ]
  %173 = add nsw i64 %171, %2
  %174 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %173, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %175 = icmp eq ptr %174, null
  br i1 %175, label %3229, label %176

176:                                              ; preds = %170
  br i1 %169, label %177, label %203

177:                                              ; preds = %176, %177
  %178 = phi ptr [ %195, %177 ], [ %172, %176 ]
  %179 = phi i64 [ %201, %177 ], [ 0, %176 ]
  %180 = phi ptr [ %200, %177 ], [ %174, %176 ]
  %181 = getelementptr inbounds i8, ptr %178, i64 1
  %182 = load i8, ptr %178, align 1, !tbaa !59, !noalias !221
  %183 = zext i8 %182 to i16
  %184 = mul nuw i16 %183, 257
  store i16 %184, ptr %180, align 2, !tbaa !67
  %185 = getelementptr inbounds i8, ptr %178, i64 2
  %186 = load i8, ptr %181, align 1, !tbaa !59, !noalias !221
  %187 = zext i8 %186 to i16
  %188 = mul nuw i16 %187, 257
  %189 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 0, i32 1
  store i16 %188, ptr %189, align 2, !tbaa !68
  %190 = getelementptr inbounds i8, ptr %178, i64 3
  %191 = load i8, ptr %185, align 1, !tbaa !59, !noalias !221
  %192 = zext i8 %191 to i16
  %193 = mul nuw i16 %192, 257
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 0, i32 2
  store i16 %193, ptr %194, align 2, !tbaa !69
  %195 = getelementptr inbounds i8, ptr %178, i64 4
  %196 = load i8, ptr %190, align 1, !tbaa !59, !noalias !221
  %197 = zext i8 %196 to i16
  %198 = mul nuw i16 %197, 257
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 0, i32 3
  store i16 %198, ptr %199, align 2, !tbaa !72
  %200 = getelementptr inbounds %struct._PixelPacket, ptr %180, i64 1
  %201 = add nuw nsw i64 %179, 1
  %202 = icmp eq i64 %201, %3
  br i1 %202, label %203, label %177, !llvm.loop !228

203:                                              ; preds = %177, %176
  %204 = phi ptr [ %172, %176 ], [ %195, %177 ]
  %205 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %206 = icmp eq i32 %205, 0
  %207 = add nuw nsw i64 %171, 1
  %208 = icmp eq i64 %207, %4
  %209 = select i1 %206, i1 true, i1 %208
  br i1 %209, label %3229, label %170, !llvm.loop !229

210:                                              ; preds = %163
  %211 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %252

213:                                              ; preds = %210
  %214 = icmp sgt i64 %4, 0
  br i1 %214, label %215, label %3229

215:                                              ; preds = %213
  %216 = icmp sgt i64 %3, 0
  br label %217

217:                                              ; preds = %245, %215
  %218 = phi i64 [ 0, %215 ], [ %249, %245 ]
  %219 = phi ptr [ %7, %215 ], [ %246, %245 ]
  %220 = add nsw i64 %218, %2
  %221 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %220, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %222 = icmp eq ptr %221, null
  br i1 %222, label %3229, label %223

223:                                              ; preds = %217
  br i1 %216, label %224, label %245

224:                                              ; preds = %223, %224
  %225 = phi ptr [ %241, %224 ], [ %219, %223 ]
  %226 = phi i64 [ %243, %224 ], [ 0, %223 ]
  %227 = phi ptr [ %242, %224 ], [ %221, %223 ]
  %228 = getelementptr inbounds i8, ptr %225, i64 1
  %229 = load i8, ptr %225, align 1, !tbaa !59, !noalias !221
  %230 = zext i8 %229 to i16
  %231 = mul nuw i16 %230, 257
  store i16 %231, ptr %227, align 2, !tbaa !67
  %232 = getelementptr inbounds i8, ptr %225, i64 2
  %233 = load i8, ptr %228, align 1, !tbaa !59, !noalias !221
  %234 = zext i8 %233 to i16
  %235 = mul nuw i16 %234, 257
  %236 = getelementptr inbounds %struct._PixelPacket, ptr %227, i64 0, i32 1
  store i16 %235, ptr %236, align 2, !tbaa !68
  %237 = load i8, ptr %232, align 1, !tbaa !59, !noalias !221
  %238 = zext i8 %237 to i16
  %239 = mul nuw i16 %238, 257
  %240 = getelementptr inbounds %struct._PixelPacket, ptr %227, i64 0, i32 2
  store i16 %239, ptr %240, align 2, !tbaa !69
  %241 = getelementptr inbounds i8, ptr %225, i64 4
  %242 = getelementptr inbounds %struct._PixelPacket, ptr %227, i64 1
  %243 = add nuw nsw i64 %226, 1
  %244 = icmp eq i64 %243, %3
  br i1 %244, label %245, label %224, !llvm.loop !230

245:                                              ; preds = %224, %223
  %246 = phi ptr [ %219, %223 ], [ %241, %224 ]
  %247 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %248 = icmp eq i32 %247, 0
  %249 = add nuw nsw i64 %218, 1
  %250 = icmp eq i64 %249, %4
  %251 = select i1 %248, i1 true, i1 %250
  br i1 %251, label %3229, label %217, !llvm.loop !231

252:                                              ; preds = %210
  %253 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %286

255:                                              ; preds = %252
  %256 = icmp sgt i64 %4, 0
  br i1 %256, label %257, label %3229

257:                                              ; preds = %255
  %258 = icmp sgt i64 %3, 0
  br label %259

259:                                              ; preds = %279, %257
  %260 = phi i64 [ 0, %257 ], [ %283, %279 ]
  %261 = phi ptr [ %7, %257 ], [ %280, %279 ]
  %262 = add nsw i64 %260, %2
  %263 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %262, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %264 = icmp eq ptr %263, null
  br i1 %264, label %3229, label %265

265:                                              ; preds = %259
  br i1 %258, label %266, label %279

266:                                              ; preds = %265, %266
  %267 = phi ptr [ %270, %266 ], [ %261, %265 ]
  %268 = phi i64 [ %277, %266 ], [ 0, %265 ]
  %269 = phi ptr [ %276, %266 ], [ %263, %265 ]
  %270 = getelementptr inbounds i8, ptr %267, i64 1
  %271 = load i8, ptr %267, align 1, !tbaa !59, !noalias !221
  %272 = zext i8 %271 to i16
  %273 = mul nuw i16 %272, 257
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 2
  store i16 %273, ptr %274, align 2, !tbaa !69
  %275 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 0, i32 1
  store i16 %273, ptr %275, align 2, !tbaa !68
  store i16 %273, ptr %269, align 2, !tbaa !67
  %276 = getelementptr inbounds %struct._PixelPacket, ptr %269, i64 1
  %277 = add nuw nsw i64 %268, 1
  %278 = icmp eq i64 %277, %3
  br i1 %278, label %279, label %266, !llvm.loop !232

279:                                              ; preds = %266, %265
  %280 = phi ptr [ %261, %265 ], [ %270, %266 ]
  %281 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %282 = icmp eq i32 %281, 0
  %283 = add nuw nsw i64 %260, 1
  %284 = icmp eq i64 %283, %4
  %285 = select i1 %282, i1 true, i1 %284
  br i1 %285, label %3229, label %259, !llvm.loop !233

286:                                              ; preds = %252
  %287 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %328

289:                                              ; preds = %286
  %290 = icmp sgt i64 %4, 0
  br i1 %290, label %291, label %3229

291:                                              ; preds = %289
  %292 = icmp sgt i64 %3, 0
  br label %293

293:                                              ; preds = %321, %291
  %294 = phi i64 [ 0, %291 ], [ %325, %321 ]
  %295 = phi ptr [ %7, %291 ], [ %322, %321 ]
  %296 = add nsw i64 %294, %2
  %297 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %296, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %298 = icmp eq ptr %297, null
  br i1 %298, label %3229, label %299

299:                                              ; preds = %293
  br i1 %292, label %300, label %321

300:                                              ; preds = %299, %300
  %301 = phi ptr [ %314, %300 ], [ %295, %299 ]
  %302 = phi i64 [ %319, %300 ], [ 0, %299 ]
  %303 = phi ptr [ %318, %300 ], [ %297, %299 ]
  %304 = getelementptr inbounds i8, ptr %301, i64 1
  %305 = load i8, ptr %301, align 1, !tbaa !59, !noalias !221
  %306 = zext i8 %305 to i16
  %307 = mul nuw i16 %306, 257
  %308 = getelementptr inbounds %struct._PixelPacket, ptr %303, i64 0, i32 2
  store i16 %307, ptr %308, align 2, !tbaa !69
  %309 = getelementptr inbounds i8, ptr %301, i64 2
  %310 = load i8, ptr %304, align 1, !tbaa !59, !noalias !221
  %311 = zext i8 %310 to i16
  %312 = mul nuw i16 %311, 257
  %313 = getelementptr inbounds %struct._PixelPacket, ptr %303, i64 0, i32 1
  store i16 %312, ptr %313, align 2, !tbaa !68
  %314 = getelementptr inbounds i8, ptr %301, i64 3
  %315 = load i8, ptr %309, align 1, !tbaa !59, !noalias !221
  %316 = zext i8 %315 to i16
  %317 = mul nuw i16 %316, 257
  store i16 %317, ptr %303, align 2, !tbaa !67
  %318 = getelementptr inbounds %struct._PixelPacket, ptr %303, i64 1
  %319 = add nuw nsw i64 %302, 1
  %320 = icmp eq i64 %319, %3
  br i1 %320, label %321, label %300, !llvm.loop !234

321:                                              ; preds = %300, %299
  %322 = phi ptr [ %295, %299 ], [ %314, %300 ]
  %323 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %324 = icmp eq i32 %323, 0
  %325 = add nuw nsw i64 %294, 1
  %326 = icmp eq i64 %325, %4
  %327 = select i1 %324, i1 true, i1 %326
  br i1 %327, label %3229, label %293, !llvm.loop !235

328:                                              ; preds = %286
  %329 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %376

331:                                              ; preds = %328
  %332 = icmp sgt i64 %4, 0
  br i1 %332, label %333, label %3229

333:                                              ; preds = %331
  %334 = icmp sgt i64 %3, 0
  br label %335

335:                                              ; preds = %369, %333
  %336 = phi i64 [ 0, %333 ], [ %373, %369 ]
  %337 = phi ptr [ %7, %333 ], [ %370, %369 ]
  %338 = add nsw i64 %336, %2
  %339 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %338, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %340 = icmp eq ptr %339, null
  br i1 %340, label %3229, label %341

341:                                              ; preds = %335
  br i1 %334, label %342, label %369

342:                                              ; preds = %341, %342
  %343 = phi ptr [ %360, %342 ], [ %337, %341 ]
  %344 = phi i64 [ %367, %342 ], [ 0, %341 ]
  %345 = phi ptr [ %366, %342 ], [ %339, %341 ]
  %346 = getelementptr inbounds i8, ptr %343, i64 1
  %347 = load i8, ptr %343, align 1, !tbaa !59, !noalias !221
  %348 = zext i8 %347 to i16
  %349 = mul nuw i16 %348, 257
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %345, i64 0, i32 2
  store i16 %349, ptr %350, align 2, !tbaa !69
  %351 = getelementptr inbounds i8, ptr %343, i64 2
  %352 = load i8, ptr %346, align 1, !tbaa !59, !noalias !221
  %353 = zext i8 %352 to i16
  %354 = mul nuw i16 %353, 257
  %355 = getelementptr inbounds %struct._PixelPacket, ptr %345, i64 0, i32 1
  store i16 %354, ptr %355, align 2, !tbaa !68
  %356 = getelementptr inbounds i8, ptr %343, i64 3
  %357 = load i8, ptr %351, align 1, !tbaa !59, !noalias !221
  %358 = zext i8 %357 to i16
  %359 = mul nuw i16 %358, 257
  store i16 %359, ptr %345, align 2, !tbaa !67
  %360 = getelementptr inbounds i8, ptr %343, i64 4
  %361 = load i8, ptr %356, align 1, !tbaa !59, !noalias !221
  %362 = zext i8 %361 to i16
  %363 = mul nuw i16 %362, 257
  %364 = xor i16 %363, -1
  %365 = getelementptr inbounds %struct._PixelPacket, ptr %345, i64 0, i32 3
  store i16 %364, ptr %365, align 2, !tbaa !72
  %366 = getelementptr inbounds %struct._PixelPacket, ptr %345, i64 1
  %367 = add nuw nsw i64 %344, 1
  %368 = icmp eq i64 %367, %3
  br i1 %368, label %369, label %342, !llvm.loop !236

369:                                              ; preds = %342, %341
  %370 = phi ptr [ %337, %341 ], [ %360, %342 ]
  %371 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %372 = icmp eq i32 %371, 0
  %373 = add nuw nsw i64 %336, 1
  %374 = icmp eq i64 %373, %4
  %375 = select i1 %372, i1 true, i1 %374
  br i1 %375, label %3229, label %335, !llvm.loop !237

376:                                              ; preds = %328
  %377 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.17) #19
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %423

379:                                              ; preds = %376
  %380 = icmp sgt i64 %4, 0
  br i1 %380, label %381, label %3229

381:                                              ; preds = %379
  %382 = icmp sgt i64 %3, 0
  br label %383

383:                                              ; preds = %416, %381
  %384 = phi i64 [ 0, %381 ], [ %420, %416 ]
  %385 = phi ptr [ %7, %381 ], [ %417, %416 ]
  %386 = add nsw i64 %384, %2
  %387 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %386, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %388 = icmp eq ptr %387, null
  br i1 %388, label %3229, label %389

389:                                              ; preds = %383
  br i1 %382, label %390, label %416

390:                                              ; preds = %389, %390
  %391 = phi ptr [ %408, %390 ], [ %385, %389 ]
  %392 = phi i64 [ %414, %390 ], [ 0, %389 ]
  %393 = phi ptr [ %413, %390 ], [ %387, %389 ]
  %394 = getelementptr inbounds i8, ptr %391, i64 1
  %395 = load i8, ptr %391, align 1, !tbaa !59, !noalias !221
  %396 = zext i8 %395 to i16
  %397 = mul nuw i16 %396, 257
  %398 = getelementptr inbounds %struct._PixelPacket, ptr %393, i64 0, i32 2
  store i16 %397, ptr %398, align 2, !tbaa !69
  %399 = getelementptr inbounds i8, ptr %391, i64 2
  %400 = load i8, ptr %394, align 1, !tbaa !59, !noalias !221
  %401 = zext i8 %400 to i16
  %402 = mul nuw i16 %401, 257
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %393, i64 0, i32 1
  store i16 %402, ptr %403, align 2, !tbaa !68
  %404 = getelementptr inbounds i8, ptr %391, i64 3
  %405 = load i8, ptr %399, align 1, !tbaa !59, !noalias !221
  %406 = zext i8 %405 to i16
  %407 = mul nuw i16 %406, 257
  store i16 %407, ptr %393, align 2, !tbaa !67
  %408 = getelementptr inbounds i8, ptr %391, i64 4
  %409 = load i8, ptr %404, align 1, !tbaa !59, !noalias !221
  %410 = zext i8 %409 to i16
  %411 = mul nuw i16 %410, 257
  %412 = getelementptr inbounds %struct._PixelPacket, ptr %393, i64 0, i32 3
  store i16 %411, ptr %412, align 2, !tbaa !72
  %413 = getelementptr inbounds %struct._PixelPacket, ptr %393, i64 1
  %414 = add nuw nsw i64 %392, 1
  %415 = icmp eq i64 %414, %3
  br i1 %415, label %416, label %390, !llvm.loop !238

416:                                              ; preds = %390, %389
  %417 = phi ptr [ %385, %389 ], [ %408, %390 ]
  %418 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %419 = icmp eq i32 %418, 0
  %420 = add nuw nsw i64 %384, 1
  %421 = icmp eq i64 %420, %4
  %422 = select i1 %419, i1 true, i1 %421
  br i1 %422, label %3229, label %383, !llvm.loop !239

423:                                              ; preds = %376
  %424 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %465

426:                                              ; preds = %423
  %427 = icmp sgt i64 %4, 0
  br i1 %427, label %428, label %3229

428:                                              ; preds = %426
  %429 = icmp sgt i64 %3, 0
  br label %430

430:                                              ; preds = %458, %428
  %431 = phi i64 [ 0, %428 ], [ %462, %458 ]
  %432 = phi ptr [ %7, %428 ], [ %459, %458 ]
  %433 = add nsw i64 %431, %2
  %434 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %433, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %435 = icmp eq ptr %434, null
  br i1 %435, label %3229, label %436

436:                                              ; preds = %430
  br i1 %429, label %437, label %458

437:                                              ; preds = %436, %437
  %438 = phi ptr [ %454, %437 ], [ %432, %436 ]
  %439 = phi i64 [ %456, %437 ], [ 0, %436 ]
  %440 = phi ptr [ %455, %437 ], [ %434, %436 ]
  %441 = getelementptr inbounds i8, ptr %438, i64 1
  %442 = load i8, ptr %438, align 1, !tbaa !59, !noalias !221
  %443 = zext i8 %442 to i16
  %444 = mul nuw i16 %443, 257
  %445 = getelementptr inbounds %struct._PixelPacket, ptr %440, i64 0, i32 2
  store i16 %444, ptr %445, align 2, !tbaa !69
  %446 = getelementptr inbounds i8, ptr %438, i64 2
  %447 = load i8, ptr %441, align 1, !tbaa !59, !noalias !221
  %448 = zext i8 %447 to i16
  %449 = mul nuw i16 %448, 257
  %450 = getelementptr inbounds %struct._PixelPacket, ptr %440, i64 0, i32 1
  store i16 %449, ptr %450, align 2, !tbaa !68
  %451 = load i8, ptr %446, align 1, !tbaa !59, !noalias !221
  %452 = zext i8 %451 to i16
  %453 = mul nuw i16 %452, 257
  store i16 %453, ptr %440, align 2, !tbaa !67
  %454 = getelementptr inbounds i8, ptr %438, i64 4
  %455 = getelementptr inbounds %struct._PixelPacket, ptr %440, i64 1
  %456 = add nuw nsw i64 %439, 1
  %457 = icmp eq i64 %456, %3
  br i1 %457, label %458, label %437, !llvm.loop !240

458:                                              ; preds = %437, %436
  %459 = phi ptr [ %432, %436 ], [ %454, %437 ]
  %460 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %461 = icmp eq i32 %460, 0
  %462 = add nuw nsw i64 %431, 1
  %463 = icmp eq i64 %462, %4
  %464 = select i1 %461, i1 true, i1 %463
  br i1 %464, label %3229, label %430, !llvm.loop !241

465:                                              ; preds = %423
  %466 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !221
  %467 = icmp sgt i64 %4, 0
  br i1 %467, label %468, label %3229

468:                                              ; preds = %465
  %469 = icmp sgt i64 %3, 0
  %470 = icmp sgt i64 %466, 0
  br label %471

471:                                              ; preds = %537, %468
  %472 = phi i64 [ 0, %468 ], [ %541, %537 ]
  %473 = phi ptr [ %7, %468 ], [ %538, %537 ]
  %474 = add nsw i64 %472, %2
  %475 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %474, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %476 = icmp eq ptr %475, null
  br i1 %476, label %3229, label %477

477:                                              ; preds = %471
  %478 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #19
  br i1 %469, label %479, label %537

479:                                              ; preds = %477
  %480 = icmp eq ptr %478, null
  br label %481

481:                                              ; preds = %479, %532
  %482 = phi ptr [ %473, %479 ], [ %533, %532 ]
  %483 = phi i64 [ 0, %479 ], [ %535, %532 ]
  %484 = phi ptr [ %475, %479 ], [ %534, %532 ]
  br i1 %470, label %485, label %532

485:                                              ; preds = %481
  %486 = getelementptr inbounds %struct._PixelPacket, ptr %484, i64 0, i32 2
  %487 = getelementptr inbounds %struct._PixelPacket, ptr %484, i64 0, i32 1
  %488 = getelementptr inbounds i16, ptr %478, i64 %483
  %489 = getelementptr inbounds %struct._PixelPacket, ptr %484, i64 0, i32 3
  %490 = getelementptr inbounds %struct._PixelPacket, ptr %484, i64 0, i32 3
  %491 = getelementptr inbounds %struct._PixelPacket, ptr %484, i64 0, i32 1
  %492 = getelementptr inbounds %struct._PixelPacket, ptr %484, i64 0, i32 2
  br label %493

493:                                              ; preds = %485, %528
  %494 = phi i64 [ 0, %485 ], [ %530, %528 ]
  %495 = phi ptr [ %482, %485 ], [ %529, %528 ]
  %496 = getelementptr inbounds i32, ptr %17, i64 %494
  %497 = load i32, ptr %496, align 4, !tbaa !34, !noalias !221
  switch i32 %497, label %528 [
    i32 14, label %498
    i32 6, label %498
    i32 9, label %502
    i32 12, label %502
    i32 3, label %506
    i32 19, label %506
    i32 1, label %510
    i32 13, label %515
    i32 2, label %519
    i32 11, label %524
  ]

498:                                              ; preds = %493, %493
  %499 = load i8, ptr %495, align 1, !tbaa !59, !noalias !221
  %500 = zext i8 %499 to i16
  %501 = mul nuw i16 %500, 257
  store i16 %501, ptr %492, align 2, !tbaa !69
  br label %528

502:                                              ; preds = %493, %493
  %503 = load i8, ptr %495, align 1, !tbaa !59, !noalias !221
  %504 = zext i8 %503 to i16
  %505 = mul nuw i16 %504, 257
  store i16 %505, ptr %491, align 2, !tbaa !68
  br label %528

506:                                              ; preds = %493, %493
  %507 = load i8, ptr %495, align 1, !tbaa !59, !noalias !221
  %508 = zext i8 %507 to i16
  %509 = mul nuw i16 %508, 257
  store i16 %509, ptr %484, align 2, !tbaa !67
  br label %528

510:                                              ; preds = %493
  %511 = load i8, ptr %495, align 1, !tbaa !59, !noalias !221
  %512 = zext i8 %511 to i16
  %513 = mul nuw i16 %512, 257
  %514 = xor i16 %513, -1
  store i16 %514, ptr %490, align 2, !tbaa !72
  br label %528

515:                                              ; preds = %493
  %516 = load i8, ptr %495, align 1, !tbaa !59, !noalias !221
  %517 = zext i8 %516 to i16
  %518 = mul nuw i16 %517, 257
  store i16 %518, ptr %489, align 2, !tbaa !72
  br label %528

519:                                              ; preds = %493
  br i1 %480, label %528, label %520

520:                                              ; preds = %519
  %521 = load i8, ptr %495, align 1, !tbaa !59, !noalias !221
  %522 = zext i8 %521 to i16
  %523 = mul nuw i16 %522, 257
  store i16 %523, ptr %488, align 2, !tbaa !85
  br label %528

524:                                              ; preds = %493
  %525 = load i8, ptr %495, align 1, !tbaa !59, !noalias !221
  %526 = zext i8 %525 to i16
  %527 = mul nuw i16 %526, 257
  store i16 %527, ptr %486, align 2, !tbaa !69
  store i16 %527, ptr %487, align 2, !tbaa !68
  store i16 %527, ptr %484, align 2, !tbaa !67
  br label %528

528:                                              ; preds = %524, %520, %519, %515, %510, %506, %502, %498, %493
  %529 = getelementptr inbounds i8, ptr %495, i64 1
  %530 = add nuw nsw i64 %494, 1
  %531 = icmp eq i64 %530, %466
  br i1 %531, label %532, label %493, !llvm.loop !242

532:                                              ; preds = %528, %481
  %533 = phi ptr [ %482, %481 ], [ %529, %528 ]
  %534 = getelementptr inbounds %struct._PixelPacket, ptr %484, i64 1
  %535 = add nuw nsw i64 %483, 1
  %536 = icmp eq i64 %535, %3
  br i1 %536, label %537, label %481, !llvm.loop !243

537:                                              ; preds = %532, %477
  %538 = phi ptr [ %473, %477 ], [ %533, %532 ]
  %539 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %540 = icmp eq i32 %539, 0
  %541 = add nuw nsw i64 %472, 1
  %542 = icmp eq i64 %541, %4
  %543 = select i1 %540, i1 true, i1 %542
  br i1 %543, label %3229, label %471, !llvm.loop !244

544:                                              ; preds = %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %545 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %610

547:                                              ; preds = %544
  %548 = icmp sgt i64 %4, 0
  br i1 %548, label %549, label %3229

549:                                              ; preds = %547
  %550 = icmp sgt i64 %3, 0
  br label %551

551:                                              ; preds = %603, %549
  %552 = phi i64 [ 0, %549 ], [ %607, %603 ]
  %553 = phi ptr [ %7, %549 ], [ %604, %603 ]
  %554 = add nsw i64 %552, %2
  %555 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %554, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %556 = icmp eq ptr %555, null
  br i1 %556, label %3229, label %557

557:                                              ; preds = %551
  br i1 %550, label %558, label %603

558:                                              ; preds = %557, %596
  %559 = phi ptr [ %599, %596 ], [ %553, %557 ]
  %560 = phi i64 [ %601, %596 ], [ 0, %557 ]
  %561 = phi ptr [ %600, %596 ], [ %555, %557 ]
  %562 = load double, ptr %559, align 8, !tbaa !39, !noalias !245
  %563 = fmul double %562, 6.553500e+04
  %564 = fptrunc double %563 to float
  %565 = fcmp ugt float %564, 0.000000e+00
  br i1 %565, label %566, label %571

566:                                              ; preds = %558
  %567 = fcmp ult float %564, 6.553500e+04
  br i1 %567, label %568, label %571

568:                                              ; preds = %566
  %569 = fadd float %564, 5.000000e-01
  %570 = fptoui float %569 to i16
  br label %571

571:                                              ; preds = %568, %566, %558
  %572 = phi i16 [ %570, %568 ], [ 0, %558 ], [ -1, %566 ]
  store i16 %572, ptr %561, align 2, !tbaa !67
  %573 = getelementptr inbounds double, ptr %559, i64 1
  %574 = load double, ptr %573, align 8, !tbaa !39, !noalias !245
  %575 = fmul double %574, 6.553500e+04
  %576 = fptrunc double %575 to float
  %577 = fcmp ugt float %576, 0.000000e+00
  br i1 %577, label %578, label %583

578:                                              ; preds = %571
  %579 = fcmp ult float %576, 6.553500e+04
  br i1 %579, label %580, label %583

580:                                              ; preds = %578
  %581 = fadd float %576, 5.000000e-01
  %582 = fptoui float %581 to i16
  br label %583

583:                                              ; preds = %580, %578, %571
  %584 = phi i16 [ %582, %580 ], [ 0, %571 ], [ -1, %578 ]
  %585 = getelementptr inbounds %struct._PixelPacket, ptr %561, i64 0, i32 1
  store i16 %584, ptr %585, align 2, !tbaa !68
  %586 = getelementptr inbounds double, ptr %559, i64 2
  %587 = load double, ptr %586, align 8, !tbaa !39, !noalias !245
  %588 = fmul double %587, 6.553500e+04
  %589 = fptrunc double %588 to float
  %590 = fcmp ugt float %589, 0.000000e+00
  br i1 %590, label %591, label %596

591:                                              ; preds = %583
  %592 = fcmp ult float %589, 6.553500e+04
  br i1 %592, label %593, label %596

593:                                              ; preds = %591
  %594 = fadd float %589, 5.000000e-01
  %595 = fptoui float %594 to i16
  br label %596

596:                                              ; preds = %593, %591, %583
  %597 = phi i16 [ %595, %593 ], [ 0, %583 ], [ -1, %591 ]
  %598 = getelementptr inbounds %struct._PixelPacket, ptr %561, i64 0, i32 2
  store i16 %597, ptr %598, align 2, !tbaa !69
  %599 = getelementptr inbounds double, ptr %559, i64 3
  %600 = getelementptr inbounds %struct._PixelPacket, ptr %561, i64 1
  %601 = add nuw nsw i64 %560, 1
  %602 = icmp eq i64 %601, %3
  br i1 %602, label %603, label %558, !llvm.loop !248

603:                                              ; preds = %596, %557
  %604 = phi ptr [ %553, %557 ], [ %599, %596 ]
  %605 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %606 = icmp eq i32 %605, 0
  %607 = add nuw nsw i64 %552, 1
  %608 = icmp eq i64 %607, %4
  %609 = select i1 %606, i1 true, i1 %608
  br i1 %609, label %3229, label %551, !llvm.loop !249

610:                                              ; preds = %544
  %611 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %690

613:                                              ; preds = %610
  %614 = icmp sgt i64 %4, 0
  br i1 %614, label %615, label %3229

615:                                              ; preds = %613
  %616 = icmp sgt i64 %3, 0
  br label %617

617:                                              ; preds = %683, %615
  %618 = phi i64 [ 0, %615 ], [ %687, %683 ]
  %619 = phi ptr [ %7, %615 ], [ %684, %683 ]
  %620 = add nsw i64 %618, %2
  %621 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %620, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %622 = icmp eq ptr %621, null
  br i1 %622, label %3229, label %623

623:                                              ; preds = %617
  br i1 %616, label %624, label %683

624:                                              ; preds = %623, %675
  %625 = phi ptr [ %679, %675 ], [ %619, %623 ]
  %626 = phi i64 [ %681, %675 ], [ 0, %623 ]
  %627 = phi ptr [ %680, %675 ], [ %621, %623 ]
  %628 = load double, ptr %625, align 8, !tbaa !39, !noalias !245
  %629 = fmul double %628, 6.553500e+04
  %630 = fptrunc double %629 to float
  %631 = fcmp ugt float %630, 0.000000e+00
  br i1 %631, label %632, label %637

632:                                              ; preds = %624
  %633 = fcmp ult float %630, 6.553500e+04
  br i1 %633, label %634, label %637

634:                                              ; preds = %632
  %635 = fadd float %630, 5.000000e-01
  %636 = fptoui float %635 to i16
  br label %637

637:                                              ; preds = %634, %632, %624
  %638 = phi i16 [ %636, %634 ], [ 0, %624 ], [ -1, %632 ]
  store i16 %638, ptr %627, align 2, !tbaa !67
  %639 = getelementptr inbounds double, ptr %625, i64 1
  %640 = load double, ptr %639, align 8, !tbaa !39, !noalias !245
  %641 = fmul double %640, 6.553500e+04
  %642 = fptrunc double %641 to float
  %643 = fcmp ugt float %642, 0.000000e+00
  br i1 %643, label %644, label %649

644:                                              ; preds = %637
  %645 = fcmp ult float %642, 6.553500e+04
  br i1 %645, label %646, label %649

646:                                              ; preds = %644
  %647 = fadd float %642, 5.000000e-01
  %648 = fptoui float %647 to i16
  br label %649

649:                                              ; preds = %646, %644, %637
  %650 = phi i16 [ %648, %646 ], [ 0, %637 ], [ -1, %644 ]
  %651 = getelementptr inbounds %struct._PixelPacket, ptr %627, i64 0, i32 1
  store i16 %650, ptr %651, align 2, !tbaa !68
  %652 = getelementptr inbounds double, ptr %625, i64 2
  %653 = load double, ptr %652, align 8, !tbaa !39, !noalias !245
  %654 = fmul double %653, 6.553500e+04
  %655 = fptrunc double %654 to float
  %656 = fcmp ugt float %655, 0.000000e+00
  br i1 %656, label %657, label %662

657:                                              ; preds = %649
  %658 = fcmp ult float %655, 6.553500e+04
  br i1 %658, label %659, label %662

659:                                              ; preds = %657
  %660 = fadd float %655, 5.000000e-01
  %661 = fptoui float %660 to i16
  br label %662

662:                                              ; preds = %659, %657, %649
  %663 = phi i16 [ %661, %659 ], [ 0, %649 ], [ -1, %657 ]
  %664 = getelementptr inbounds %struct._PixelPacket, ptr %627, i64 0, i32 2
  store i16 %663, ptr %664, align 2, !tbaa !69
  %665 = getelementptr inbounds double, ptr %625, i64 3
  %666 = load double, ptr %665, align 8, !tbaa !39, !noalias !245
  %667 = fmul double %666, 6.553500e+04
  %668 = fptrunc double %667 to float
  %669 = fcmp ugt float %668, 0.000000e+00
  br i1 %669, label %670, label %675

670:                                              ; preds = %662
  %671 = fcmp ult float %668, 6.553500e+04
  br i1 %671, label %672, label %675

672:                                              ; preds = %670
  %673 = fadd float %668, 5.000000e-01
  %674 = fptoui float %673 to i16
  br label %675

675:                                              ; preds = %672, %670, %662
  %676 = phi i16 [ %674, %672 ], [ 0, %662 ], [ -1, %670 ]
  %677 = xor i16 %676, -1
  %678 = getelementptr inbounds %struct._PixelPacket, ptr %627, i64 0, i32 3
  store i16 %677, ptr %678, align 2, !tbaa !72
  %679 = getelementptr inbounds double, ptr %625, i64 4
  %680 = getelementptr inbounds %struct._PixelPacket, ptr %627, i64 1
  %681 = add nuw nsw i64 %626, 1
  %682 = icmp eq i64 %681, %3
  br i1 %682, label %683, label %624, !llvm.loop !250

683:                                              ; preds = %675, %623
  %684 = phi ptr [ %619, %623 ], [ %679, %675 ]
  %685 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %686 = icmp eq i32 %685, 0
  %687 = add nuw nsw i64 %618, 1
  %688 = icmp eq i64 %687, %4
  %689 = select i1 %686, i1 true, i1 %688
  br i1 %689, label %3229, label %617, !llvm.loop !251

690:                                              ; preds = %610
  %691 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %693, label %756

693:                                              ; preds = %690
  %694 = icmp sgt i64 %4, 0
  br i1 %694, label %695, label %3229

695:                                              ; preds = %693
  %696 = icmp sgt i64 %3, 0
  br label %697

697:                                              ; preds = %749, %695
  %698 = phi i64 [ 0, %695 ], [ %753, %749 ]
  %699 = phi ptr [ %7, %695 ], [ %750, %749 ]
  %700 = add nsw i64 %698, %2
  %701 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %700, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %702 = icmp eq ptr %701, null
  br i1 %702, label %3229, label %703

703:                                              ; preds = %697
  br i1 %696, label %704, label %749

704:                                              ; preds = %703, %742
  %705 = phi ptr [ %745, %742 ], [ %699, %703 ]
  %706 = phi i64 [ %747, %742 ], [ 0, %703 ]
  %707 = phi ptr [ %746, %742 ], [ %701, %703 ]
  %708 = load double, ptr %705, align 8, !tbaa !39, !noalias !245
  %709 = fmul double %708, 6.553500e+04
  %710 = fptrunc double %709 to float
  %711 = fcmp ugt float %710, 0.000000e+00
  br i1 %711, label %712, label %717

712:                                              ; preds = %704
  %713 = fcmp ult float %710, 6.553500e+04
  br i1 %713, label %714, label %717

714:                                              ; preds = %712
  %715 = fadd float %710, 5.000000e-01
  %716 = fptoui float %715 to i16
  br label %717

717:                                              ; preds = %714, %712, %704
  %718 = phi i16 [ %716, %714 ], [ 0, %704 ], [ -1, %712 ]
  store i16 %718, ptr %707, align 2, !tbaa !67
  %719 = getelementptr inbounds double, ptr %705, i64 1
  %720 = load double, ptr %719, align 8, !tbaa !39, !noalias !245
  %721 = fmul double %720, 6.553500e+04
  %722 = fptrunc double %721 to float
  %723 = fcmp ugt float %722, 0.000000e+00
  br i1 %723, label %724, label %729

724:                                              ; preds = %717
  %725 = fcmp ult float %722, 6.553500e+04
  br i1 %725, label %726, label %729

726:                                              ; preds = %724
  %727 = fadd float %722, 5.000000e-01
  %728 = fptoui float %727 to i16
  br label %729

729:                                              ; preds = %726, %724, %717
  %730 = phi i16 [ %728, %726 ], [ 0, %717 ], [ -1, %724 ]
  %731 = getelementptr inbounds %struct._PixelPacket, ptr %707, i64 0, i32 1
  store i16 %730, ptr %731, align 2, !tbaa !68
  %732 = getelementptr inbounds double, ptr %705, i64 2
  %733 = load double, ptr %732, align 8, !tbaa !39, !noalias !245
  %734 = fmul double %733, 6.553500e+04
  %735 = fptrunc double %734 to float
  %736 = fcmp ugt float %735, 0.000000e+00
  br i1 %736, label %737, label %742

737:                                              ; preds = %729
  %738 = fcmp ult float %735, 6.553500e+04
  br i1 %738, label %739, label %742

739:                                              ; preds = %737
  %740 = fadd float %735, 5.000000e-01
  %741 = fptoui float %740 to i16
  br label %742

742:                                              ; preds = %739, %737, %729
  %743 = phi i16 [ %741, %739 ], [ 0, %729 ], [ -1, %737 ]
  %744 = getelementptr inbounds %struct._PixelPacket, ptr %707, i64 0, i32 2
  store i16 %743, ptr %744, align 2, !tbaa !69
  %745 = getelementptr inbounds double, ptr %705, i64 4
  %746 = getelementptr inbounds %struct._PixelPacket, ptr %707, i64 1
  %747 = add nuw nsw i64 %706, 1
  %748 = icmp eq i64 %747, %3
  br i1 %748, label %749, label %704, !llvm.loop !252

749:                                              ; preds = %742, %703
  %750 = phi ptr [ %699, %703 ], [ %745, %742 ]
  %751 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %752 = icmp eq i32 %751, 0
  %753 = add nuw nsw i64 %698, 1
  %754 = icmp eq i64 %753, %4
  %755 = select i1 %752, i1 true, i1 %754
  br i1 %755, label %3229, label %697, !llvm.loop !253

756:                                              ; preds = %690
  %757 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %798

759:                                              ; preds = %756
  %760 = icmp sgt i64 %4, 0
  br i1 %760, label %761, label %3229

761:                                              ; preds = %759
  %762 = icmp sgt i64 %3, 0
  br label %763

763:                                              ; preds = %791, %761
  %764 = phi i64 [ 0, %761 ], [ %795, %791 ]
  %765 = phi ptr [ %7, %761 ], [ %792, %791 ]
  %766 = add nsw i64 %764, %2
  %767 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %766, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %768 = icmp eq ptr %767, null
  br i1 %768, label %3229, label %769

769:                                              ; preds = %763
  br i1 %762, label %770, label %791

770:                                              ; preds = %769, %783
  %771 = phi ptr [ %787, %783 ], [ %765, %769 ]
  %772 = phi i64 [ %789, %783 ], [ 0, %769 ]
  %773 = phi ptr [ %788, %783 ], [ %767, %769 ]
  %774 = load double, ptr %771, align 8, !tbaa !39, !noalias !245
  %775 = fmul double %774, 6.553500e+04
  %776 = fptrunc double %775 to float
  %777 = fcmp ugt float %776, 0.000000e+00
  br i1 %777, label %778, label %783

778:                                              ; preds = %770
  %779 = fcmp ult float %776, 6.553500e+04
  br i1 %779, label %780, label %783

780:                                              ; preds = %778
  %781 = fadd float %776, 5.000000e-01
  %782 = fptoui float %781 to i16
  br label %783

783:                                              ; preds = %780, %778, %770
  %784 = phi i16 [ %782, %780 ], [ 0, %770 ], [ -1, %778 ]
  %785 = getelementptr inbounds %struct._PixelPacket, ptr %773, i64 0, i32 2
  store i16 %784, ptr %785, align 2, !tbaa !69
  %786 = getelementptr inbounds %struct._PixelPacket, ptr %773, i64 0, i32 1
  store i16 %784, ptr %786, align 2, !tbaa !68
  store i16 %784, ptr %773, align 2, !tbaa !67
  %787 = getelementptr inbounds double, ptr %771, i64 1
  %788 = getelementptr inbounds %struct._PixelPacket, ptr %773, i64 1
  %789 = add nuw nsw i64 %772, 1
  %790 = icmp eq i64 %789, %3
  br i1 %790, label %791, label %770, !llvm.loop !254

791:                                              ; preds = %783, %769
  %792 = phi ptr [ %765, %769 ], [ %787, %783 ]
  %793 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %794 = icmp eq i32 %793, 0
  %795 = add nuw nsw i64 %764, 1
  %796 = icmp eq i64 %795, %4
  %797 = select i1 %794, i1 true, i1 %796
  br i1 %797, label %3229, label %763, !llvm.loop !255

798:                                              ; preds = %756
  %799 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %864

801:                                              ; preds = %798
  %802 = icmp sgt i64 %4, 0
  br i1 %802, label %803, label %3229

803:                                              ; preds = %801
  %804 = icmp sgt i64 %3, 0
  br label %805

805:                                              ; preds = %857, %803
  %806 = phi i64 [ 0, %803 ], [ %861, %857 ]
  %807 = phi ptr [ %7, %803 ], [ %858, %857 ]
  %808 = add nsw i64 %806, %2
  %809 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %808, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %810 = icmp eq ptr %809, null
  br i1 %810, label %3229, label %811

811:                                              ; preds = %805
  br i1 %804, label %812, label %857

812:                                              ; preds = %811, %851
  %813 = phi ptr [ %853, %851 ], [ %807, %811 ]
  %814 = phi i64 [ %855, %851 ], [ 0, %811 ]
  %815 = phi ptr [ %854, %851 ], [ %809, %811 ]
  %816 = load double, ptr %813, align 8, !tbaa !39, !noalias !245
  %817 = fmul double %816, 6.553500e+04
  %818 = fptrunc double %817 to float
  %819 = fcmp ugt float %818, 0.000000e+00
  br i1 %819, label %820, label %825

820:                                              ; preds = %812
  %821 = fcmp ult float %818, 6.553500e+04
  br i1 %821, label %822, label %825

822:                                              ; preds = %820
  %823 = fadd float %818, 5.000000e-01
  %824 = fptoui float %823 to i16
  br label %825

825:                                              ; preds = %822, %820, %812
  %826 = phi i16 [ %824, %822 ], [ 0, %812 ], [ -1, %820 ]
  %827 = getelementptr inbounds %struct._PixelPacket, ptr %815, i64 0, i32 2
  store i16 %826, ptr %827, align 2, !tbaa !69
  %828 = getelementptr inbounds double, ptr %813, i64 1
  %829 = load double, ptr %828, align 8, !tbaa !39, !noalias !245
  %830 = fmul double %829, 6.553500e+04
  %831 = fptrunc double %830 to float
  %832 = fcmp ugt float %831, 0.000000e+00
  br i1 %832, label %833, label %838

833:                                              ; preds = %825
  %834 = fcmp ult float %831, 6.553500e+04
  br i1 %834, label %835, label %838

835:                                              ; preds = %833
  %836 = fadd float %831, 5.000000e-01
  %837 = fptoui float %836 to i16
  br label %838

838:                                              ; preds = %835, %833, %825
  %839 = phi i16 [ %837, %835 ], [ 0, %825 ], [ -1, %833 ]
  %840 = getelementptr inbounds %struct._PixelPacket, ptr %815, i64 0, i32 1
  store i16 %839, ptr %840, align 2, !tbaa !68
  %841 = getelementptr inbounds double, ptr %813, i64 2
  %842 = load double, ptr %841, align 8, !tbaa !39, !noalias !245
  %843 = fmul double %842, 6.553500e+04
  %844 = fptrunc double %843 to float
  %845 = fcmp ugt float %844, 0.000000e+00
  br i1 %845, label %846, label %851

846:                                              ; preds = %838
  %847 = fcmp ult float %844, 6.553500e+04
  br i1 %847, label %848, label %851

848:                                              ; preds = %846
  %849 = fadd float %844, 5.000000e-01
  %850 = fptoui float %849 to i16
  br label %851

851:                                              ; preds = %848, %846, %838
  %852 = phi i16 [ %850, %848 ], [ 0, %838 ], [ -1, %846 ]
  store i16 %852, ptr %815, align 2, !tbaa !67
  %853 = getelementptr inbounds double, ptr %813, i64 3
  %854 = getelementptr inbounds %struct._PixelPacket, ptr %815, i64 1
  %855 = add nuw nsw i64 %814, 1
  %856 = icmp eq i64 %855, %3
  br i1 %856, label %857, label %812, !llvm.loop !256

857:                                              ; preds = %851, %811
  %858 = phi ptr [ %807, %811 ], [ %853, %851 ]
  %859 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %860 = icmp eq i32 %859, 0
  %861 = add nuw nsw i64 %806, 1
  %862 = icmp eq i64 %861, %4
  %863 = select i1 %860, i1 true, i1 %862
  br i1 %863, label %3229, label %805, !llvm.loop !257

864:                                              ; preds = %798
  %865 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %867, label %944

867:                                              ; preds = %864
  %868 = icmp sgt i64 %4, 0
  br i1 %868, label %869, label %3229

869:                                              ; preds = %867
  %870 = icmp sgt i64 %3, 0
  br label %871

871:                                              ; preds = %937, %869
  %872 = phi i64 [ 0, %869 ], [ %941, %937 ]
  %873 = phi ptr [ %7, %869 ], [ %938, %937 ]
  %874 = add nsw i64 %872, %2
  %875 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %874, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %876 = icmp eq ptr %875, null
  br i1 %876, label %3229, label %877

877:                                              ; preds = %871
  br i1 %870, label %878, label %937

878:                                              ; preds = %877, %929
  %879 = phi ptr [ %933, %929 ], [ %873, %877 ]
  %880 = phi i64 [ %935, %929 ], [ 0, %877 ]
  %881 = phi ptr [ %934, %929 ], [ %875, %877 ]
  %882 = load double, ptr %879, align 8, !tbaa !39, !noalias !245
  %883 = fmul double %882, 6.553500e+04
  %884 = fptrunc double %883 to float
  %885 = fcmp ugt float %884, 0.000000e+00
  br i1 %885, label %886, label %891

886:                                              ; preds = %878
  %887 = fcmp ult float %884, 6.553500e+04
  br i1 %887, label %888, label %891

888:                                              ; preds = %886
  %889 = fadd float %884, 5.000000e-01
  %890 = fptoui float %889 to i16
  br label %891

891:                                              ; preds = %888, %886, %878
  %892 = phi i16 [ %890, %888 ], [ 0, %878 ], [ -1, %886 ]
  %893 = getelementptr inbounds %struct._PixelPacket, ptr %881, i64 0, i32 2
  store i16 %892, ptr %893, align 2, !tbaa !69
  %894 = getelementptr inbounds double, ptr %879, i64 1
  %895 = load double, ptr %894, align 8, !tbaa !39, !noalias !245
  %896 = fmul double %895, 6.553500e+04
  %897 = fptrunc double %896 to float
  %898 = fcmp ugt float %897, 0.000000e+00
  br i1 %898, label %899, label %904

899:                                              ; preds = %891
  %900 = fcmp ult float %897, 6.553500e+04
  br i1 %900, label %901, label %904

901:                                              ; preds = %899
  %902 = fadd float %897, 5.000000e-01
  %903 = fptoui float %902 to i16
  br label %904

904:                                              ; preds = %901, %899, %891
  %905 = phi i16 [ %903, %901 ], [ 0, %891 ], [ -1, %899 ]
  %906 = getelementptr inbounds %struct._PixelPacket, ptr %881, i64 0, i32 1
  store i16 %905, ptr %906, align 2, !tbaa !68
  %907 = getelementptr inbounds double, ptr %879, i64 2
  %908 = load double, ptr %907, align 8, !tbaa !39, !noalias !245
  %909 = fmul double %908, 6.553500e+04
  %910 = fptrunc double %909 to float
  %911 = fcmp ugt float %910, 0.000000e+00
  br i1 %911, label %912, label %917

912:                                              ; preds = %904
  %913 = fcmp ult float %910, 6.553500e+04
  br i1 %913, label %914, label %917

914:                                              ; preds = %912
  %915 = fadd float %910, 5.000000e-01
  %916 = fptoui float %915 to i16
  br label %917

917:                                              ; preds = %914, %912, %904
  %918 = phi i16 [ %916, %914 ], [ 0, %904 ], [ -1, %912 ]
  store i16 %918, ptr %881, align 2, !tbaa !67
  %919 = getelementptr inbounds double, ptr %879, i64 3
  %920 = load double, ptr %919, align 8, !tbaa !39, !noalias !245
  %921 = fmul double %920, 6.553500e+04
  %922 = fptrunc double %921 to float
  %923 = fcmp ugt float %922, 0.000000e+00
  br i1 %923, label %924, label %929

924:                                              ; preds = %917
  %925 = fcmp ult float %922, 6.553500e+04
  br i1 %925, label %926, label %929

926:                                              ; preds = %924
  %927 = fadd float %922, 5.000000e-01
  %928 = fptoui float %927 to i16
  br label %929

929:                                              ; preds = %926, %924, %917
  %930 = phi i16 [ %928, %926 ], [ 0, %917 ], [ -1, %924 ]
  %931 = xor i16 %930, -1
  %932 = getelementptr inbounds %struct._PixelPacket, ptr %881, i64 0, i32 3
  store i16 %931, ptr %932, align 2, !tbaa !72
  %933 = getelementptr inbounds double, ptr %879, i64 4
  %934 = getelementptr inbounds %struct._PixelPacket, ptr %881, i64 1
  %935 = add nuw nsw i64 %880, 1
  %936 = icmp eq i64 %935, %3
  br i1 %936, label %937, label %878, !llvm.loop !258

937:                                              ; preds = %929, %877
  %938 = phi ptr [ %873, %877 ], [ %933, %929 ]
  %939 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %940 = icmp eq i32 %939, 0
  %941 = add nuw nsw i64 %872, 1
  %942 = icmp eq i64 %941, %4
  %943 = select i1 %940, i1 true, i1 %942
  br i1 %943, label %3229, label %871, !llvm.loop !259

944:                                              ; preds = %864
  %945 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %1010

947:                                              ; preds = %944
  %948 = icmp sgt i64 %4, 0
  br i1 %948, label %949, label %3229

949:                                              ; preds = %947
  %950 = icmp sgt i64 %3, 0
  br label %951

951:                                              ; preds = %1003, %949
  %952 = phi i64 [ 0, %949 ], [ %1007, %1003 ]
  %953 = phi ptr [ %7, %949 ], [ %1004, %1003 ]
  %954 = add nsw i64 %952, %2
  %955 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %954, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %956 = icmp eq ptr %955, null
  br i1 %956, label %3229, label %957

957:                                              ; preds = %951
  br i1 %950, label %958, label %1003

958:                                              ; preds = %957, %997
  %959 = phi ptr [ %999, %997 ], [ %953, %957 ]
  %960 = phi i64 [ %1001, %997 ], [ 0, %957 ]
  %961 = phi ptr [ %1000, %997 ], [ %955, %957 ]
  %962 = load double, ptr %959, align 8, !tbaa !39, !noalias !245
  %963 = fmul double %962, 6.553500e+04
  %964 = fptrunc double %963 to float
  %965 = fcmp ugt float %964, 0.000000e+00
  br i1 %965, label %966, label %971

966:                                              ; preds = %958
  %967 = fcmp ult float %964, 6.553500e+04
  br i1 %967, label %968, label %971

968:                                              ; preds = %966
  %969 = fadd float %964, 5.000000e-01
  %970 = fptoui float %969 to i16
  br label %971

971:                                              ; preds = %968, %966, %958
  %972 = phi i16 [ %970, %968 ], [ 0, %958 ], [ -1, %966 ]
  %973 = getelementptr inbounds %struct._PixelPacket, ptr %961, i64 0, i32 2
  store i16 %972, ptr %973, align 2, !tbaa !69
  %974 = getelementptr inbounds double, ptr %959, i64 1
  %975 = load double, ptr %974, align 8, !tbaa !39, !noalias !245
  %976 = fmul double %975, 6.553500e+04
  %977 = fptrunc double %976 to float
  %978 = fcmp ugt float %977, 0.000000e+00
  br i1 %978, label %979, label %984

979:                                              ; preds = %971
  %980 = fcmp ult float %977, 6.553500e+04
  br i1 %980, label %981, label %984

981:                                              ; preds = %979
  %982 = fadd float %977, 5.000000e-01
  %983 = fptoui float %982 to i16
  br label %984

984:                                              ; preds = %981, %979, %971
  %985 = phi i16 [ %983, %981 ], [ 0, %971 ], [ -1, %979 ]
  %986 = getelementptr inbounds %struct._PixelPacket, ptr %961, i64 0, i32 1
  store i16 %985, ptr %986, align 2, !tbaa !68
  %987 = getelementptr inbounds double, ptr %959, i64 2
  %988 = load double, ptr %987, align 8, !tbaa !39, !noalias !245
  %989 = fmul double %988, 6.553500e+04
  %990 = fptrunc double %989 to float
  %991 = fcmp ugt float %990, 0.000000e+00
  br i1 %991, label %992, label %997

992:                                              ; preds = %984
  %993 = fcmp ult float %990, 6.553500e+04
  br i1 %993, label %994, label %997

994:                                              ; preds = %992
  %995 = fadd float %990, 5.000000e-01
  %996 = fptoui float %995 to i16
  br label %997

997:                                              ; preds = %994, %992, %984
  %998 = phi i16 [ %996, %994 ], [ 0, %984 ], [ -1, %992 ]
  store i16 %998, ptr %961, align 2, !tbaa !67
  %999 = getelementptr inbounds double, ptr %959, i64 3
  %1000 = getelementptr inbounds %struct._PixelPacket, ptr %961, i64 1
  %1001 = add nuw nsw i64 %960, 1
  %1002 = icmp eq i64 %1001, %3
  br i1 %1002, label %1003, label %958, !llvm.loop !260

1003:                                             ; preds = %997, %957
  %1004 = phi ptr [ %953, %957 ], [ %999, %997 ]
  %1005 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1006 = icmp eq i32 %1005, 0
  %1007 = add nuw nsw i64 %952, 1
  %1008 = icmp eq i64 %1007, %4
  %1009 = select i1 %1006, i1 true, i1 %1008
  br i1 %1009, label %3229, label %951, !llvm.loop !261

1010:                                             ; preds = %944
  %1011 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !245
  %1012 = icmp sgt i64 %4, 0
  br i1 %1012, label %1013, label %3229

1013:                                             ; preds = %1010
  %1014 = icmp sgt i64 %3, 0
  %1015 = icmp sgt i64 %1011, 0
  br label %1016

1016:                                             ; preds = %1138, %1013
  %1017 = phi i64 [ 0, %1013 ], [ %1142, %1138 ]
  %1018 = phi ptr [ %7, %1013 ], [ %1139, %1138 ]
  %1019 = add nsw i64 %1017, %2
  %1020 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1019, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1021 = icmp eq ptr %1020, null
  br i1 %1021, label %3229, label %1022

1022:                                             ; preds = %1016
  %1023 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #19
  br i1 %1014, label %1024, label %1138

1024:                                             ; preds = %1022
  %1025 = icmp eq ptr %1023, null
  br label %1026

1026:                                             ; preds = %1024, %1133
  %1027 = phi ptr [ %1018, %1024 ], [ %1134, %1133 ]
  %1028 = phi i64 [ 0, %1024 ], [ %1136, %1133 ]
  %1029 = phi ptr [ %1020, %1024 ], [ %1135, %1133 ]
  br i1 %1015, label %1030, label %1133

1030:                                             ; preds = %1026
  %1031 = getelementptr inbounds %struct._PixelPacket, ptr %1029, i64 0, i32 2
  %1032 = getelementptr inbounds %struct._PixelPacket, ptr %1029, i64 0, i32 1
  %1033 = getelementptr inbounds i16, ptr %1023, i64 %1028
  %1034 = getelementptr inbounds %struct._PixelPacket, ptr %1029, i64 0, i32 3
  %1035 = getelementptr inbounds %struct._PixelPacket, ptr %1029, i64 0, i32 3
  %1036 = getelementptr inbounds %struct._PixelPacket, ptr %1029, i64 0, i32 1
  %1037 = getelementptr inbounds %struct._PixelPacket, ptr %1029, i64 0, i32 2
  br label %1038

1038:                                             ; preds = %1030, %1129
  %1039 = phi i64 [ 0, %1030 ], [ %1131, %1129 ]
  %1040 = phi ptr [ %1027, %1030 ], [ %1130, %1129 ]
  %1041 = getelementptr inbounds i32, ptr %17, i64 %1039
  %1042 = load i32, ptr %1041, align 4, !tbaa !34, !noalias !245
  switch i32 %1042, label %1129 [
    i32 14, label %1043
    i32 6, label %1043
    i32 9, label %1055
    i32 12, label %1055
    i32 3, label %1067
    i32 19, label %1067
    i32 1, label %1079
    i32 13, label %1092
    i32 2, label %1104
    i32 11, label %1117
  ]

1043:                                             ; preds = %1038, %1038
  %1044 = load double, ptr %1040, align 8, !tbaa !39, !noalias !245
  %1045 = fmul double %1044, 6.553500e+04
  %1046 = fptrunc double %1045 to float
  %1047 = fcmp ugt float %1046, 0.000000e+00
  br i1 %1047, label %1048, label %1053

1048:                                             ; preds = %1043
  %1049 = fcmp ult float %1046, 6.553500e+04
  br i1 %1049, label %1050, label %1053

1050:                                             ; preds = %1048
  %1051 = fadd float %1046, 5.000000e-01
  %1052 = fptoui float %1051 to i16
  br label %1053

1053:                                             ; preds = %1050, %1048, %1043
  %1054 = phi i16 [ %1052, %1050 ], [ 0, %1043 ], [ -1, %1048 ]
  store i16 %1054, ptr %1037, align 2, !tbaa !69
  br label %1129

1055:                                             ; preds = %1038, %1038
  %1056 = load double, ptr %1040, align 8, !tbaa !39, !noalias !245
  %1057 = fmul double %1056, 6.553500e+04
  %1058 = fptrunc double %1057 to float
  %1059 = fcmp ugt float %1058, 0.000000e+00
  br i1 %1059, label %1060, label %1065

1060:                                             ; preds = %1055
  %1061 = fcmp ult float %1058, 6.553500e+04
  br i1 %1061, label %1062, label %1065

1062:                                             ; preds = %1060
  %1063 = fadd float %1058, 5.000000e-01
  %1064 = fptoui float %1063 to i16
  br label %1065

1065:                                             ; preds = %1062, %1060, %1055
  %1066 = phi i16 [ %1064, %1062 ], [ 0, %1055 ], [ -1, %1060 ]
  store i16 %1066, ptr %1036, align 2, !tbaa !68
  br label %1129

1067:                                             ; preds = %1038, %1038
  %1068 = load double, ptr %1040, align 8, !tbaa !39, !noalias !245
  %1069 = fmul double %1068, 6.553500e+04
  %1070 = fptrunc double %1069 to float
  %1071 = fcmp ugt float %1070, 0.000000e+00
  br i1 %1071, label %1072, label %1077

1072:                                             ; preds = %1067
  %1073 = fcmp ult float %1070, 6.553500e+04
  br i1 %1073, label %1074, label %1077

1074:                                             ; preds = %1072
  %1075 = fadd float %1070, 5.000000e-01
  %1076 = fptoui float %1075 to i16
  br label %1077

1077:                                             ; preds = %1074, %1072, %1067
  %1078 = phi i16 [ %1076, %1074 ], [ 0, %1067 ], [ -1, %1072 ]
  store i16 %1078, ptr %1029, align 2, !tbaa !67
  br label %1129

1079:                                             ; preds = %1038
  %1080 = load double, ptr %1040, align 8, !tbaa !39, !noalias !245
  %1081 = fmul double %1080, 6.553500e+04
  %1082 = fptrunc double %1081 to float
  %1083 = fcmp ugt float %1082, 0.000000e+00
  br i1 %1083, label %1084, label %1089

1084:                                             ; preds = %1079
  %1085 = fcmp ult float %1082, 6.553500e+04
  br i1 %1085, label %1086, label %1089

1086:                                             ; preds = %1084
  %1087 = fadd float %1082, 5.000000e-01
  %1088 = fptoui float %1087 to i16
  br label %1089

1089:                                             ; preds = %1086, %1084, %1079
  %1090 = phi i16 [ %1088, %1086 ], [ 0, %1079 ], [ -1, %1084 ]
  %1091 = xor i16 %1090, -1
  store i16 %1091, ptr %1035, align 2, !tbaa !72
  br label %1129

1092:                                             ; preds = %1038
  %1093 = load double, ptr %1040, align 8, !tbaa !39, !noalias !245
  %1094 = fmul double %1093, 6.553500e+04
  %1095 = fptrunc double %1094 to float
  %1096 = fcmp ugt float %1095, 0.000000e+00
  br i1 %1096, label %1097, label %1102

1097:                                             ; preds = %1092
  %1098 = fcmp ult float %1095, 6.553500e+04
  br i1 %1098, label %1099, label %1102

1099:                                             ; preds = %1097
  %1100 = fadd float %1095, 5.000000e-01
  %1101 = fptoui float %1100 to i16
  br label %1102

1102:                                             ; preds = %1099, %1097, %1092
  %1103 = phi i16 [ %1101, %1099 ], [ 0, %1092 ], [ -1, %1097 ]
  store i16 %1103, ptr %1034, align 2, !tbaa !72
  br label %1129

1104:                                             ; preds = %1038
  br i1 %1025, label %1129, label %1105

1105:                                             ; preds = %1104
  %1106 = load double, ptr %1040, align 8, !tbaa !39, !noalias !245
  %1107 = fmul double %1106, 6.553500e+04
  %1108 = fptrunc double %1107 to float
  %1109 = fcmp ugt float %1108, 0.000000e+00
  br i1 %1109, label %1110, label %1115

1110:                                             ; preds = %1105
  %1111 = fcmp ult float %1108, 6.553500e+04
  br i1 %1111, label %1112, label %1115

1112:                                             ; preds = %1110
  %1113 = fadd float %1108, 5.000000e-01
  %1114 = fptoui float %1113 to i16
  br label %1115

1115:                                             ; preds = %1112, %1110, %1105
  %1116 = phi i16 [ %1114, %1112 ], [ 0, %1105 ], [ -1, %1110 ]
  store i16 %1116, ptr %1033, align 2, !tbaa !85
  br label %1129

1117:                                             ; preds = %1038
  %1118 = load double, ptr %1040, align 8, !tbaa !39, !noalias !245
  %1119 = fmul double %1118, 6.553500e+04
  %1120 = fptrunc double %1119 to float
  %1121 = fcmp ugt float %1120, 0.000000e+00
  br i1 %1121, label %1122, label %1127

1122:                                             ; preds = %1117
  %1123 = fcmp ult float %1120, 6.553500e+04
  br i1 %1123, label %1124, label %1127

1124:                                             ; preds = %1122
  %1125 = fadd float %1120, 5.000000e-01
  %1126 = fptoui float %1125 to i16
  br label %1127

1127:                                             ; preds = %1124, %1122, %1117
  %1128 = phi i16 [ %1126, %1124 ], [ 0, %1117 ], [ -1, %1122 ]
  store i16 %1128, ptr %1031, align 2, !tbaa !69
  store i16 %1128, ptr %1032, align 2, !tbaa !68
  store i16 %1128, ptr %1029, align 2, !tbaa !67
  br label %1129

1129:                                             ; preds = %1127, %1115, %1104, %1102, %1089, %1077, %1065, %1053, %1038
  %1130 = getelementptr inbounds double, ptr %1040, i64 1
  %1131 = add nuw nsw i64 %1039, 1
  %1132 = icmp eq i64 %1131, %1011
  br i1 %1132, label %1133, label %1038, !llvm.loop !262

1133:                                             ; preds = %1129, %1026
  %1134 = phi ptr [ %1027, %1026 ], [ %1130, %1129 ]
  %1135 = getelementptr inbounds %struct._PixelPacket, ptr %1029, i64 1
  %1136 = add nuw nsw i64 %1028, 1
  %1137 = icmp eq i64 %1136, %3
  br i1 %1137, label %1138, label %1026, !llvm.loop !263

1138:                                             ; preds = %1133, %1022
  %1139 = phi ptr [ %1018, %1022 ], [ %1134, %1133 ]
  %1140 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1141 = icmp eq i32 %1140, 0
  %1142 = add nuw nsw i64 %1017, 1
  %1143 = icmp eq i64 %1142, %4
  %1144 = select i1 %1141, i1 true, i1 %1143
  br i1 %1144, label %3229, label %1016, !llvm.loop !264

1145:                                             ; preds = %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %1146 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1148, label %1208

1148:                                             ; preds = %1145
  %1149 = icmp sgt i64 %4, 0
  br i1 %1149, label %1150, label %3229

1150:                                             ; preds = %1148
  %1151 = icmp sgt i64 %3, 0
  br label %1152

1152:                                             ; preds = %1201, %1150
  %1153 = phi i64 [ 0, %1150 ], [ %1205, %1201 ]
  %1154 = phi ptr [ %7, %1150 ], [ %1202, %1201 ]
  %1155 = add nsw i64 %1153, %2
  %1156 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1155, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1157 = icmp eq ptr %1156, null
  br i1 %1157, label %3229, label %1158

1158:                                             ; preds = %1152
  br i1 %1151, label %1159, label %1201

1159:                                             ; preds = %1158, %1194
  %1160 = phi ptr [ %1197, %1194 ], [ %1154, %1158 ]
  %1161 = phi i64 [ %1199, %1194 ], [ 0, %1158 ]
  %1162 = phi ptr [ %1198, %1194 ], [ %1156, %1158 ]
  %1163 = load float, ptr %1160, align 4, !tbaa !43, !noalias !265
  %1164 = fmul float %1163, 6.553500e+04
  %1165 = fcmp ugt float %1164, 0.000000e+00
  br i1 %1165, label %1166, label %1171

1166:                                             ; preds = %1159
  %1167 = fcmp ult float %1164, 6.553500e+04
  br i1 %1167, label %1168, label %1171

1168:                                             ; preds = %1166
  %1169 = fadd float %1164, 5.000000e-01
  %1170 = fptoui float %1169 to i16
  br label %1171

1171:                                             ; preds = %1168, %1166, %1159
  %1172 = phi i16 [ %1170, %1168 ], [ 0, %1159 ], [ -1, %1166 ]
  store i16 %1172, ptr %1162, align 2, !tbaa !67
  %1173 = getelementptr inbounds float, ptr %1160, i64 1
  %1174 = load float, ptr %1173, align 4, !tbaa !43, !noalias !265
  %1175 = fmul float %1174, 6.553500e+04
  %1176 = fcmp ugt float %1175, 0.000000e+00
  br i1 %1176, label %1177, label %1182

1177:                                             ; preds = %1171
  %1178 = fcmp ult float %1175, 6.553500e+04
  br i1 %1178, label %1179, label %1182

1179:                                             ; preds = %1177
  %1180 = fadd float %1175, 5.000000e-01
  %1181 = fptoui float %1180 to i16
  br label %1182

1182:                                             ; preds = %1179, %1177, %1171
  %1183 = phi i16 [ %1181, %1179 ], [ 0, %1171 ], [ -1, %1177 ]
  %1184 = getelementptr inbounds %struct._PixelPacket, ptr %1162, i64 0, i32 1
  store i16 %1183, ptr %1184, align 2, !tbaa !68
  %1185 = getelementptr inbounds float, ptr %1160, i64 2
  %1186 = load float, ptr %1185, align 4, !tbaa !43, !noalias !265
  %1187 = fmul float %1186, 6.553500e+04
  %1188 = fcmp ugt float %1187, 0.000000e+00
  br i1 %1188, label %1189, label %1194

1189:                                             ; preds = %1182
  %1190 = fcmp ult float %1187, 6.553500e+04
  br i1 %1190, label %1191, label %1194

1191:                                             ; preds = %1189
  %1192 = fadd float %1187, 5.000000e-01
  %1193 = fptoui float %1192 to i16
  br label %1194

1194:                                             ; preds = %1191, %1189, %1182
  %1195 = phi i16 [ %1193, %1191 ], [ 0, %1182 ], [ -1, %1189 ]
  %1196 = getelementptr inbounds %struct._PixelPacket, ptr %1162, i64 0, i32 2
  store i16 %1195, ptr %1196, align 2, !tbaa !69
  %1197 = getelementptr inbounds float, ptr %1160, i64 3
  %1198 = getelementptr inbounds %struct._PixelPacket, ptr %1162, i64 1
  %1199 = add nuw nsw i64 %1161, 1
  %1200 = icmp eq i64 %1199, %3
  br i1 %1200, label %1201, label %1159, !llvm.loop !268

1201:                                             ; preds = %1194, %1158
  %1202 = phi ptr [ %1154, %1158 ], [ %1197, %1194 ]
  %1203 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1204 = icmp eq i32 %1203, 0
  %1205 = add nuw nsw i64 %1153, 1
  %1206 = icmp eq i64 %1205, %4
  %1207 = select i1 %1204, i1 true, i1 %1206
  br i1 %1207, label %3229, label %1152, !llvm.loop !269

1208:                                             ; preds = %1145
  %1209 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1211, label %1284

1211:                                             ; preds = %1208
  %1212 = icmp sgt i64 %4, 0
  br i1 %1212, label %1213, label %3229

1213:                                             ; preds = %1211
  %1214 = icmp sgt i64 %3, 0
  br label %1215

1215:                                             ; preds = %1277, %1213
  %1216 = phi i64 [ 0, %1213 ], [ %1281, %1277 ]
  %1217 = phi ptr [ %7, %1213 ], [ %1278, %1277 ]
  %1218 = add nsw i64 %1216, %2
  %1219 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1218, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1220 = icmp eq ptr %1219, null
  br i1 %1220, label %3229, label %1221

1221:                                             ; preds = %1215
  br i1 %1214, label %1222, label %1277

1222:                                             ; preds = %1221, %1269
  %1223 = phi ptr [ %1273, %1269 ], [ %1217, %1221 ]
  %1224 = phi i64 [ %1275, %1269 ], [ 0, %1221 ]
  %1225 = phi ptr [ %1274, %1269 ], [ %1219, %1221 ]
  %1226 = load float, ptr %1223, align 4, !tbaa !43, !noalias !265
  %1227 = fmul float %1226, 6.553500e+04
  %1228 = fcmp ugt float %1227, 0.000000e+00
  br i1 %1228, label %1229, label %1234

1229:                                             ; preds = %1222
  %1230 = fcmp ult float %1227, 6.553500e+04
  br i1 %1230, label %1231, label %1234

1231:                                             ; preds = %1229
  %1232 = fadd float %1227, 5.000000e-01
  %1233 = fptoui float %1232 to i16
  br label %1234

1234:                                             ; preds = %1231, %1229, %1222
  %1235 = phi i16 [ %1233, %1231 ], [ 0, %1222 ], [ -1, %1229 ]
  store i16 %1235, ptr %1225, align 2, !tbaa !67
  %1236 = getelementptr inbounds float, ptr %1223, i64 1
  %1237 = load float, ptr %1236, align 4, !tbaa !43, !noalias !265
  %1238 = fmul float %1237, 6.553500e+04
  %1239 = fcmp ugt float %1238, 0.000000e+00
  br i1 %1239, label %1240, label %1245

1240:                                             ; preds = %1234
  %1241 = fcmp ult float %1238, 6.553500e+04
  br i1 %1241, label %1242, label %1245

1242:                                             ; preds = %1240
  %1243 = fadd float %1238, 5.000000e-01
  %1244 = fptoui float %1243 to i16
  br label %1245

1245:                                             ; preds = %1242, %1240, %1234
  %1246 = phi i16 [ %1244, %1242 ], [ 0, %1234 ], [ -1, %1240 ]
  %1247 = getelementptr inbounds %struct._PixelPacket, ptr %1225, i64 0, i32 1
  store i16 %1246, ptr %1247, align 2, !tbaa !68
  %1248 = getelementptr inbounds float, ptr %1223, i64 2
  %1249 = load float, ptr %1248, align 4, !tbaa !43, !noalias !265
  %1250 = fmul float %1249, 6.553500e+04
  %1251 = fcmp ugt float %1250, 0.000000e+00
  br i1 %1251, label %1252, label %1257

1252:                                             ; preds = %1245
  %1253 = fcmp ult float %1250, 6.553500e+04
  br i1 %1253, label %1254, label %1257

1254:                                             ; preds = %1252
  %1255 = fadd float %1250, 5.000000e-01
  %1256 = fptoui float %1255 to i16
  br label %1257

1257:                                             ; preds = %1254, %1252, %1245
  %1258 = phi i16 [ %1256, %1254 ], [ 0, %1245 ], [ -1, %1252 ]
  %1259 = getelementptr inbounds %struct._PixelPacket, ptr %1225, i64 0, i32 2
  store i16 %1258, ptr %1259, align 2, !tbaa !69
  %1260 = getelementptr inbounds float, ptr %1223, i64 3
  %1261 = load float, ptr %1260, align 4, !tbaa !43, !noalias !265
  %1262 = fmul float %1261, 6.553500e+04
  %1263 = fcmp ugt float %1262, 0.000000e+00
  br i1 %1263, label %1264, label %1269

1264:                                             ; preds = %1257
  %1265 = fcmp ult float %1262, 6.553500e+04
  br i1 %1265, label %1266, label %1269

1266:                                             ; preds = %1264
  %1267 = fadd float %1262, 5.000000e-01
  %1268 = fptoui float %1267 to i16
  br label %1269

1269:                                             ; preds = %1266, %1264, %1257
  %1270 = phi i16 [ %1268, %1266 ], [ 0, %1257 ], [ -1, %1264 ]
  %1271 = xor i16 %1270, -1
  %1272 = getelementptr inbounds %struct._PixelPacket, ptr %1225, i64 0, i32 3
  store i16 %1271, ptr %1272, align 2, !tbaa !72
  %1273 = getelementptr inbounds float, ptr %1223, i64 4
  %1274 = getelementptr inbounds %struct._PixelPacket, ptr %1225, i64 1
  %1275 = add nuw nsw i64 %1224, 1
  %1276 = icmp eq i64 %1275, %3
  br i1 %1276, label %1277, label %1222, !llvm.loop !270

1277:                                             ; preds = %1269, %1221
  %1278 = phi ptr [ %1217, %1221 ], [ %1273, %1269 ]
  %1279 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1280 = icmp eq i32 %1279, 0
  %1281 = add nuw nsw i64 %1216, 1
  %1282 = icmp eq i64 %1281, %4
  %1283 = select i1 %1280, i1 true, i1 %1282
  br i1 %1283, label %3229, label %1215, !llvm.loop !271

1284:                                             ; preds = %1208
  %1285 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1287, label %1347

1287:                                             ; preds = %1284
  %1288 = icmp sgt i64 %4, 0
  br i1 %1288, label %1289, label %3229

1289:                                             ; preds = %1287
  %1290 = icmp sgt i64 %3, 0
  br label %1291

1291:                                             ; preds = %1340, %1289
  %1292 = phi i64 [ 0, %1289 ], [ %1344, %1340 ]
  %1293 = phi ptr [ %7, %1289 ], [ %1341, %1340 ]
  %1294 = add nsw i64 %1292, %2
  %1295 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1294, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1296 = icmp eq ptr %1295, null
  br i1 %1296, label %3229, label %1297

1297:                                             ; preds = %1291
  br i1 %1290, label %1298, label %1340

1298:                                             ; preds = %1297, %1333
  %1299 = phi ptr [ %1336, %1333 ], [ %1293, %1297 ]
  %1300 = phi i64 [ %1338, %1333 ], [ 0, %1297 ]
  %1301 = phi ptr [ %1337, %1333 ], [ %1295, %1297 ]
  %1302 = load float, ptr %1299, align 4, !tbaa !43, !noalias !265
  %1303 = fmul float %1302, 6.553500e+04
  %1304 = fcmp ugt float %1303, 0.000000e+00
  br i1 %1304, label %1305, label %1310

1305:                                             ; preds = %1298
  %1306 = fcmp ult float %1303, 6.553500e+04
  br i1 %1306, label %1307, label %1310

1307:                                             ; preds = %1305
  %1308 = fadd float %1303, 5.000000e-01
  %1309 = fptoui float %1308 to i16
  br label %1310

1310:                                             ; preds = %1307, %1305, %1298
  %1311 = phi i16 [ %1309, %1307 ], [ 0, %1298 ], [ -1, %1305 ]
  store i16 %1311, ptr %1301, align 2, !tbaa !67
  %1312 = getelementptr inbounds float, ptr %1299, i64 1
  %1313 = load float, ptr %1312, align 4, !tbaa !43, !noalias !265
  %1314 = fmul float %1313, 6.553500e+04
  %1315 = fcmp ugt float %1314, 0.000000e+00
  br i1 %1315, label %1316, label %1321

1316:                                             ; preds = %1310
  %1317 = fcmp ult float %1314, 6.553500e+04
  br i1 %1317, label %1318, label %1321

1318:                                             ; preds = %1316
  %1319 = fadd float %1314, 5.000000e-01
  %1320 = fptoui float %1319 to i16
  br label %1321

1321:                                             ; preds = %1318, %1316, %1310
  %1322 = phi i16 [ %1320, %1318 ], [ 0, %1310 ], [ -1, %1316 ]
  %1323 = getelementptr inbounds %struct._PixelPacket, ptr %1301, i64 0, i32 1
  store i16 %1322, ptr %1323, align 2, !tbaa !68
  %1324 = getelementptr inbounds float, ptr %1299, i64 2
  %1325 = load float, ptr %1324, align 4, !tbaa !43, !noalias !265
  %1326 = fmul float %1325, 6.553500e+04
  %1327 = fcmp ugt float %1326, 0.000000e+00
  br i1 %1327, label %1328, label %1333

1328:                                             ; preds = %1321
  %1329 = fcmp ult float %1326, 6.553500e+04
  br i1 %1329, label %1330, label %1333

1330:                                             ; preds = %1328
  %1331 = fadd float %1326, 5.000000e-01
  %1332 = fptoui float %1331 to i16
  br label %1333

1333:                                             ; preds = %1330, %1328, %1321
  %1334 = phi i16 [ %1332, %1330 ], [ 0, %1321 ], [ -1, %1328 ]
  %1335 = getelementptr inbounds %struct._PixelPacket, ptr %1301, i64 0, i32 2
  store i16 %1334, ptr %1335, align 2, !tbaa !69
  %1336 = getelementptr inbounds float, ptr %1299, i64 4
  %1337 = getelementptr inbounds %struct._PixelPacket, ptr %1301, i64 1
  %1338 = add nuw nsw i64 %1300, 1
  %1339 = icmp eq i64 %1338, %3
  br i1 %1339, label %1340, label %1298, !llvm.loop !272

1340:                                             ; preds = %1333, %1297
  %1341 = phi ptr [ %1293, %1297 ], [ %1336, %1333 ]
  %1342 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1343 = icmp eq i32 %1342, 0
  %1344 = add nuw nsw i64 %1292, 1
  %1345 = icmp eq i64 %1344, %4
  %1346 = select i1 %1343, i1 true, i1 %1345
  br i1 %1346, label %3229, label %1291, !llvm.loop !273

1347:                                             ; preds = %1284
  %1348 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1350, label %1388

1350:                                             ; preds = %1347
  %1351 = icmp sgt i64 %4, 0
  br i1 %1351, label %1352, label %3229

1352:                                             ; preds = %1350
  %1353 = icmp sgt i64 %3, 0
  br label %1354

1354:                                             ; preds = %1381, %1352
  %1355 = phi i64 [ 0, %1352 ], [ %1385, %1381 ]
  %1356 = phi ptr [ %7, %1352 ], [ %1382, %1381 ]
  %1357 = add nsw i64 %1355, %2
  %1358 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1357, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1359 = icmp eq ptr %1358, null
  br i1 %1359, label %3229, label %1360

1360:                                             ; preds = %1354
  br i1 %1353, label %1361, label %1381

1361:                                             ; preds = %1360, %1373
  %1362 = phi ptr [ %1377, %1373 ], [ %1356, %1360 ]
  %1363 = phi i64 [ %1379, %1373 ], [ 0, %1360 ]
  %1364 = phi ptr [ %1378, %1373 ], [ %1358, %1360 ]
  %1365 = load float, ptr %1362, align 4, !tbaa !43, !noalias !265
  %1366 = fmul float %1365, 6.553500e+04
  %1367 = fcmp ugt float %1366, 0.000000e+00
  br i1 %1367, label %1368, label %1373

1368:                                             ; preds = %1361
  %1369 = fcmp ult float %1366, 6.553500e+04
  br i1 %1369, label %1370, label %1373

1370:                                             ; preds = %1368
  %1371 = fadd float %1366, 5.000000e-01
  %1372 = fptoui float %1371 to i16
  br label %1373

1373:                                             ; preds = %1370, %1368, %1361
  %1374 = phi i16 [ %1372, %1370 ], [ 0, %1361 ], [ -1, %1368 ]
  %1375 = getelementptr inbounds %struct._PixelPacket, ptr %1364, i64 0, i32 2
  store i16 %1374, ptr %1375, align 2, !tbaa !69
  %1376 = getelementptr inbounds %struct._PixelPacket, ptr %1364, i64 0, i32 1
  store i16 %1374, ptr %1376, align 2, !tbaa !68
  store i16 %1374, ptr %1364, align 2, !tbaa !67
  %1377 = getelementptr inbounds float, ptr %1362, i64 1
  %1378 = getelementptr inbounds %struct._PixelPacket, ptr %1364, i64 1
  %1379 = add nuw nsw i64 %1363, 1
  %1380 = icmp eq i64 %1379, %3
  br i1 %1380, label %1381, label %1361, !llvm.loop !274

1381:                                             ; preds = %1373, %1360
  %1382 = phi ptr [ %1356, %1360 ], [ %1377, %1373 ]
  %1383 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1384 = icmp eq i32 %1383, 0
  %1385 = add nuw nsw i64 %1355, 1
  %1386 = icmp eq i64 %1385, %4
  %1387 = select i1 %1384, i1 true, i1 %1386
  br i1 %1387, label %3229, label %1354, !llvm.loop !275

1388:                                             ; preds = %1347
  %1389 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1391, label %1451

1391:                                             ; preds = %1388
  %1392 = icmp sgt i64 %4, 0
  br i1 %1392, label %1393, label %3229

1393:                                             ; preds = %1391
  %1394 = icmp sgt i64 %3, 0
  br label %1395

1395:                                             ; preds = %1444, %1393
  %1396 = phi i64 [ 0, %1393 ], [ %1448, %1444 ]
  %1397 = phi ptr [ %7, %1393 ], [ %1445, %1444 ]
  %1398 = add nsw i64 %1396, %2
  %1399 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1398, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %3229, label %1401

1401:                                             ; preds = %1395
  br i1 %1394, label %1402, label %1444

1402:                                             ; preds = %1401, %1438
  %1403 = phi ptr [ %1440, %1438 ], [ %1397, %1401 ]
  %1404 = phi i64 [ %1442, %1438 ], [ 0, %1401 ]
  %1405 = phi ptr [ %1441, %1438 ], [ %1399, %1401 ]
  %1406 = load float, ptr %1403, align 4, !tbaa !43, !noalias !265
  %1407 = fmul float %1406, 6.553500e+04
  %1408 = fcmp ugt float %1407, 0.000000e+00
  br i1 %1408, label %1409, label %1414

1409:                                             ; preds = %1402
  %1410 = fcmp ult float %1407, 6.553500e+04
  br i1 %1410, label %1411, label %1414

1411:                                             ; preds = %1409
  %1412 = fadd float %1407, 5.000000e-01
  %1413 = fptoui float %1412 to i16
  br label %1414

1414:                                             ; preds = %1411, %1409, %1402
  %1415 = phi i16 [ %1413, %1411 ], [ 0, %1402 ], [ -1, %1409 ]
  %1416 = getelementptr inbounds %struct._PixelPacket, ptr %1405, i64 0, i32 2
  store i16 %1415, ptr %1416, align 2, !tbaa !69
  %1417 = getelementptr inbounds float, ptr %1403, i64 1
  %1418 = load float, ptr %1417, align 4, !tbaa !43, !noalias !265
  %1419 = fmul float %1418, 6.553500e+04
  %1420 = fcmp ugt float %1419, 0.000000e+00
  br i1 %1420, label %1421, label %1426

1421:                                             ; preds = %1414
  %1422 = fcmp ult float %1419, 6.553500e+04
  br i1 %1422, label %1423, label %1426

1423:                                             ; preds = %1421
  %1424 = fadd float %1419, 5.000000e-01
  %1425 = fptoui float %1424 to i16
  br label %1426

1426:                                             ; preds = %1423, %1421, %1414
  %1427 = phi i16 [ %1425, %1423 ], [ 0, %1414 ], [ -1, %1421 ]
  %1428 = getelementptr inbounds %struct._PixelPacket, ptr %1405, i64 0, i32 1
  store i16 %1427, ptr %1428, align 2, !tbaa !68
  %1429 = getelementptr inbounds float, ptr %1403, i64 2
  %1430 = load float, ptr %1429, align 4, !tbaa !43, !noalias !265
  %1431 = fmul float %1430, 6.553500e+04
  %1432 = fcmp ugt float %1431, 0.000000e+00
  br i1 %1432, label %1433, label %1438

1433:                                             ; preds = %1426
  %1434 = fcmp ult float %1431, 6.553500e+04
  br i1 %1434, label %1435, label %1438

1435:                                             ; preds = %1433
  %1436 = fadd float %1431, 5.000000e-01
  %1437 = fptoui float %1436 to i16
  br label %1438

1438:                                             ; preds = %1435, %1433, %1426
  %1439 = phi i16 [ %1437, %1435 ], [ 0, %1426 ], [ -1, %1433 ]
  store i16 %1439, ptr %1405, align 2, !tbaa !67
  %1440 = getelementptr inbounds float, ptr %1403, i64 3
  %1441 = getelementptr inbounds %struct._PixelPacket, ptr %1405, i64 1
  %1442 = add nuw nsw i64 %1404, 1
  %1443 = icmp eq i64 %1442, %3
  br i1 %1443, label %1444, label %1402, !llvm.loop !276

1444:                                             ; preds = %1438, %1401
  %1445 = phi ptr [ %1397, %1401 ], [ %1440, %1438 ]
  %1446 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1447 = icmp eq i32 %1446, 0
  %1448 = add nuw nsw i64 %1396, 1
  %1449 = icmp eq i64 %1448, %4
  %1450 = select i1 %1447, i1 true, i1 %1449
  br i1 %1450, label %3229, label %1395, !llvm.loop !277

1451:                                             ; preds = %1388
  %1452 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1454, label %1527

1454:                                             ; preds = %1451
  %1455 = icmp sgt i64 %4, 0
  br i1 %1455, label %1456, label %3229

1456:                                             ; preds = %1454
  %1457 = icmp sgt i64 %3, 0
  br label %1458

1458:                                             ; preds = %1520, %1456
  %1459 = phi i64 [ 0, %1456 ], [ %1524, %1520 ]
  %1460 = phi ptr [ %7, %1456 ], [ %1521, %1520 ]
  %1461 = add nsw i64 %1459, %2
  %1462 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1461, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1463 = icmp eq ptr %1462, null
  br i1 %1463, label %3229, label %1464

1464:                                             ; preds = %1458
  br i1 %1457, label %1465, label %1520

1465:                                             ; preds = %1464, %1512
  %1466 = phi ptr [ %1516, %1512 ], [ %1460, %1464 ]
  %1467 = phi i64 [ %1518, %1512 ], [ 0, %1464 ]
  %1468 = phi ptr [ %1517, %1512 ], [ %1462, %1464 ]
  %1469 = load float, ptr %1466, align 4, !tbaa !43, !noalias !265
  %1470 = fmul float %1469, 6.553500e+04
  %1471 = fcmp ugt float %1470, 0.000000e+00
  br i1 %1471, label %1472, label %1477

1472:                                             ; preds = %1465
  %1473 = fcmp ult float %1470, 6.553500e+04
  br i1 %1473, label %1474, label %1477

1474:                                             ; preds = %1472
  %1475 = fadd float %1470, 5.000000e-01
  %1476 = fptoui float %1475 to i16
  br label %1477

1477:                                             ; preds = %1474, %1472, %1465
  %1478 = phi i16 [ %1476, %1474 ], [ 0, %1465 ], [ -1, %1472 ]
  %1479 = getelementptr inbounds %struct._PixelPacket, ptr %1468, i64 0, i32 2
  store i16 %1478, ptr %1479, align 2, !tbaa !69
  %1480 = getelementptr inbounds float, ptr %1466, i64 1
  %1481 = load float, ptr %1480, align 4, !tbaa !43, !noalias !265
  %1482 = fmul float %1481, 6.553500e+04
  %1483 = fcmp ugt float %1482, 0.000000e+00
  br i1 %1483, label %1484, label %1489

1484:                                             ; preds = %1477
  %1485 = fcmp ult float %1482, 6.553500e+04
  br i1 %1485, label %1486, label %1489

1486:                                             ; preds = %1484
  %1487 = fadd float %1482, 5.000000e-01
  %1488 = fptoui float %1487 to i16
  br label %1489

1489:                                             ; preds = %1486, %1484, %1477
  %1490 = phi i16 [ %1488, %1486 ], [ 0, %1477 ], [ -1, %1484 ]
  %1491 = getelementptr inbounds %struct._PixelPacket, ptr %1468, i64 0, i32 1
  store i16 %1490, ptr %1491, align 2, !tbaa !68
  %1492 = getelementptr inbounds float, ptr %1466, i64 2
  %1493 = load float, ptr %1492, align 4, !tbaa !43, !noalias !265
  %1494 = fmul float %1493, 6.553500e+04
  %1495 = fcmp ugt float %1494, 0.000000e+00
  br i1 %1495, label %1496, label %1501

1496:                                             ; preds = %1489
  %1497 = fcmp ult float %1494, 6.553500e+04
  br i1 %1497, label %1498, label %1501

1498:                                             ; preds = %1496
  %1499 = fadd float %1494, 5.000000e-01
  %1500 = fptoui float %1499 to i16
  br label %1501

1501:                                             ; preds = %1498, %1496, %1489
  %1502 = phi i16 [ %1500, %1498 ], [ 0, %1489 ], [ -1, %1496 ]
  store i16 %1502, ptr %1468, align 2, !tbaa !67
  %1503 = getelementptr inbounds float, ptr %1466, i64 3
  %1504 = load float, ptr %1503, align 4, !tbaa !43, !noalias !265
  %1505 = fmul float %1504, 6.553500e+04
  %1506 = fcmp ugt float %1505, 0.000000e+00
  br i1 %1506, label %1507, label %1512

1507:                                             ; preds = %1501
  %1508 = fcmp ult float %1505, 6.553500e+04
  br i1 %1508, label %1509, label %1512

1509:                                             ; preds = %1507
  %1510 = fadd float %1505, 5.000000e-01
  %1511 = fptoui float %1510 to i16
  br label %1512

1512:                                             ; preds = %1509, %1507, %1501
  %1513 = phi i16 [ %1511, %1509 ], [ 0, %1501 ], [ -1, %1507 ]
  %1514 = xor i16 %1513, -1
  %1515 = getelementptr inbounds %struct._PixelPacket, ptr %1468, i64 0, i32 3
  store i16 %1514, ptr %1515, align 2, !tbaa !72
  %1516 = getelementptr inbounds float, ptr %1466, i64 4
  %1517 = getelementptr inbounds %struct._PixelPacket, ptr %1468, i64 1
  %1518 = add nuw nsw i64 %1467, 1
  %1519 = icmp eq i64 %1518, %3
  br i1 %1519, label %1520, label %1465, !llvm.loop !278

1520:                                             ; preds = %1512, %1464
  %1521 = phi ptr [ %1460, %1464 ], [ %1516, %1512 ]
  %1522 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1523 = icmp eq i32 %1522, 0
  %1524 = add nuw nsw i64 %1459, 1
  %1525 = icmp eq i64 %1524, %4
  %1526 = select i1 %1523, i1 true, i1 %1525
  br i1 %1526, label %3229, label %1458, !llvm.loop !279

1527:                                             ; preds = %1451
  %1528 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %1529 = icmp eq i32 %1528, 0
  br i1 %1529, label %1530, label %1590

1530:                                             ; preds = %1527
  %1531 = icmp sgt i64 %4, 0
  br i1 %1531, label %1532, label %3229

1532:                                             ; preds = %1530
  %1533 = icmp sgt i64 %3, 0
  br label %1534

1534:                                             ; preds = %1583, %1532
  %1535 = phi i64 [ 0, %1532 ], [ %1587, %1583 ]
  %1536 = phi ptr [ %7, %1532 ], [ %1584, %1583 ]
  %1537 = add nsw i64 %1535, %2
  %1538 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1537, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1539 = icmp eq ptr %1538, null
  br i1 %1539, label %3229, label %1540

1540:                                             ; preds = %1534
  br i1 %1533, label %1541, label %1583

1541:                                             ; preds = %1540, %1577
  %1542 = phi ptr [ %1579, %1577 ], [ %1536, %1540 ]
  %1543 = phi i64 [ %1581, %1577 ], [ 0, %1540 ]
  %1544 = phi ptr [ %1580, %1577 ], [ %1538, %1540 ]
  %1545 = load float, ptr %1542, align 4, !tbaa !43, !noalias !265
  %1546 = fmul float %1545, 6.553500e+04
  %1547 = fcmp ugt float %1546, 0.000000e+00
  br i1 %1547, label %1548, label %1553

1548:                                             ; preds = %1541
  %1549 = fcmp ult float %1546, 6.553500e+04
  br i1 %1549, label %1550, label %1553

1550:                                             ; preds = %1548
  %1551 = fadd float %1546, 5.000000e-01
  %1552 = fptoui float %1551 to i16
  br label %1553

1553:                                             ; preds = %1550, %1548, %1541
  %1554 = phi i16 [ %1552, %1550 ], [ 0, %1541 ], [ -1, %1548 ]
  %1555 = getelementptr inbounds %struct._PixelPacket, ptr %1544, i64 0, i32 2
  store i16 %1554, ptr %1555, align 2, !tbaa !69
  %1556 = getelementptr inbounds float, ptr %1542, i64 1
  %1557 = load float, ptr %1556, align 4, !tbaa !43, !noalias !265
  %1558 = fmul float %1557, 6.553500e+04
  %1559 = fcmp ugt float %1558, 0.000000e+00
  br i1 %1559, label %1560, label %1565

1560:                                             ; preds = %1553
  %1561 = fcmp ult float %1558, 6.553500e+04
  br i1 %1561, label %1562, label %1565

1562:                                             ; preds = %1560
  %1563 = fadd float %1558, 5.000000e-01
  %1564 = fptoui float %1563 to i16
  br label %1565

1565:                                             ; preds = %1562, %1560, %1553
  %1566 = phi i16 [ %1564, %1562 ], [ 0, %1553 ], [ -1, %1560 ]
  %1567 = getelementptr inbounds %struct._PixelPacket, ptr %1544, i64 0, i32 1
  store i16 %1566, ptr %1567, align 2, !tbaa !68
  %1568 = getelementptr inbounds float, ptr %1542, i64 2
  %1569 = load float, ptr %1568, align 4, !tbaa !43, !noalias !265
  %1570 = fmul float %1569, 6.553500e+04
  %1571 = fcmp ugt float %1570, 0.000000e+00
  br i1 %1571, label %1572, label %1577

1572:                                             ; preds = %1565
  %1573 = fcmp ult float %1570, 6.553500e+04
  br i1 %1573, label %1574, label %1577

1574:                                             ; preds = %1572
  %1575 = fadd float %1570, 5.000000e-01
  %1576 = fptoui float %1575 to i16
  br label %1577

1577:                                             ; preds = %1574, %1572, %1565
  %1578 = phi i16 [ %1576, %1574 ], [ 0, %1565 ], [ -1, %1572 ]
  store i16 %1578, ptr %1544, align 2, !tbaa !67
  %1579 = getelementptr inbounds float, ptr %1542, i64 3
  %1580 = getelementptr inbounds %struct._PixelPacket, ptr %1544, i64 1
  %1581 = add nuw nsw i64 %1543, 1
  %1582 = icmp eq i64 %1581, %3
  br i1 %1582, label %1583, label %1541, !llvm.loop !280

1583:                                             ; preds = %1577, %1540
  %1584 = phi ptr [ %1536, %1540 ], [ %1579, %1577 ]
  %1585 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1586 = icmp eq i32 %1585, 0
  %1587 = add nuw nsw i64 %1535, 1
  %1588 = icmp eq i64 %1587, %4
  %1589 = select i1 %1586, i1 true, i1 %1588
  br i1 %1589, label %3229, label %1534, !llvm.loop !281

1590:                                             ; preds = %1527
  %1591 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !265
  %1592 = icmp sgt i64 %4, 0
  br i1 %1592, label %1593, label %3229

1593:                                             ; preds = %1590
  %1594 = icmp sgt i64 %3, 0
  %1595 = icmp sgt i64 %1591, 0
  br label %1596

1596:                                             ; preds = %1711, %1593
  %1597 = phi i64 [ 0, %1593 ], [ %1715, %1711 ]
  %1598 = phi ptr [ %7, %1593 ], [ %1712, %1711 ]
  %1599 = add nsw i64 %1597, %2
  %1600 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1599, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1601 = icmp eq ptr %1600, null
  br i1 %1601, label %3229, label %1602

1602:                                             ; preds = %1596
  %1603 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #19
  br i1 %1594, label %1604, label %1711

1604:                                             ; preds = %1602
  %1605 = icmp eq ptr %1603, null
  br label %1606

1606:                                             ; preds = %1604, %1706
  %1607 = phi ptr [ %1598, %1604 ], [ %1707, %1706 ]
  %1608 = phi i64 [ 0, %1604 ], [ %1709, %1706 ]
  %1609 = phi ptr [ %1600, %1604 ], [ %1708, %1706 ]
  br i1 %1595, label %1610, label %1706

1610:                                             ; preds = %1606
  %1611 = getelementptr inbounds %struct._PixelPacket, ptr %1609, i64 0, i32 2
  %1612 = getelementptr inbounds %struct._PixelPacket, ptr %1609, i64 0, i32 1
  %1613 = getelementptr inbounds i16, ptr %1603, i64 %1608
  %1614 = getelementptr inbounds %struct._PixelPacket, ptr %1609, i64 0, i32 3
  %1615 = getelementptr inbounds %struct._PixelPacket, ptr %1609, i64 0, i32 3
  %1616 = getelementptr inbounds %struct._PixelPacket, ptr %1609, i64 0, i32 1
  %1617 = getelementptr inbounds %struct._PixelPacket, ptr %1609, i64 0, i32 2
  br label %1618

1618:                                             ; preds = %1610, %1702
  %1619 = phi i64 [ 0, %1610 ], [ %1704, %1702 ]
  %1620 = phi ptr [ %1607, %1610 ], [ %1703, %1702 ]
  %1621 = getelementptr inbounds i32, ptr %17, i64 %1619
  %1622 = load i32, ptr %1621, align 4, !tbaa !34, !noalias !265
  switch i32 %1622, label %1702 [
    i32 14, label %1623
    i32 6, label %1623
    i32 9, label %1634
    i32 12, label %1634
    i32 3, label %1645
    i32 19, label %1645
    i32 1, label %1656
    i32 13, label %1668
    i32 2, label %1679
    i32 11, label %1691
  ]

1623:                                             ; preds = %1618, %1618
  %1624 = load float, ptr %1620, align 4, !tbaa !43, !noalias !265
  %1625 = fmul float %1624, 6.553500e+04
  %1626 = fcmp ugt float %1625, 0.000000e+00
  br i1 %1626, label %1627, label %1632

1627:                                             ; preds = %1623
  %1628 = fcmp ult float %1625, 6.553500e+04
  br i1 %1628, label %1629, label %1632

1629:                                             ; preds = %1627
  %1630 = fadd float %1625, 5.000000e-01
  %1631 = fptoui float %1630 to i16
  br label %1632

1632:                                             ; preds = %1629, %1627, %1623
  %1633 = phi i16 [ %1631, %1629 ], [ 0, %1623 ], [ -1, %1627 ]
  store i16 %1633, ptr %1617, align 2, !tbaa !69
  br label %1702

1634:                                             ; preds = %1618, %1618
  %1635 = load float, ptr %1620, align 4, !tbaa !43, !noalias !265
  %1636 = fmul float %1635, 6.553500e+04
  %1637 = fcmp ugt float %1636, 0.000000e+00
  br i1 %1637, label %1638, label %1643

1638:                                             ; preds = %1634
  %1639 = fcmp ult float %1636, 6.553500e+04
  br i1 %1639, label %1640, label %1643

1640:                                             ; preds = %1638
  %1641 = fadd float %1636, 5.000000e-01
  %1642 = fptoui float %1641 to i16
  br label %1643

1643:                                             ; preds = %1640, %1638, %1634
  %1644 = phi i16 [ %1642, %1640 ], [ 0, %1634 ], [ -1, %1638 ]
  store i16 %1644, ptr %1616, align 2, !tbaa !68
  br label %1702

1645:                                             ; preds = %1618, %1618
  %1646 = load float, ptr %1620, align 4, !tbaa !43, !noalias !265
  %1647 = fmul float %1646, 6.553500e+04
  %1648 = fcmp ugt float %1647, 0.000000e+00
  br i1 %1648, label %1649, label %1654

1649:                                             ; preds = %1645
  %1650 = fcmp ult float %1647, 6.553500e+04
  br i1 %1650, label %1651, label %1654

1651:                                             ; preds = %1649
  %1652 = fadd float %1647, 5.000000e-01
  %1653 = fptoui float %1652 to i16
  br label %1654

1654:                                             ; preds = %1651, %1649, %1645
  %1655 = phi i16 [ %1653, %1651 ], [ 0, %1645 ], [ -1, %1649 ]
  store i16 %1655, ptr %1609, align 2, !tbaa !67
  br label %1702

1656:                                             ; preds = %1618
  %1657 = load float, ptr %1620, align 4, !tbaa !43, !noalias !265
  %1658 = fmul float %1657, 6.553500e+04
  %1659 = fcmp ugt float %1658, 0.000000e+00
  br i1 %1659, label %1660, label %1665

1660:                                             ; preds = %1656
  %1661 = fcmp ult float %1658, 6.553500e+04
  br i1 %1661, label %1662, label %1665

1662:                                             ; preds = %1660
  %1663 = fadd float %1658, 5.000000e-01
  %1664 = fptoui float %1663 to i16
  br label %1665

1665:                                             ; preds = %1662, %1660, %1656
  %1666 = phi i16 [ %1664, %1662 ], [ 0, %1656 ], [ -1, %1660 ]
  %1667 = xor i16 %1666, -1
  store i16 %1667, ptr %1615, align 2, !tbaa !72
  br label %1702

1668:                                             ; preds = %1618
  %1669 = load float, ptr %1620, align 4, !tbaa !43, !noalias !265
  %1670 = fmul float %1669, 6.553500e+04
  %1671 = fcmp ugt float %1670, 0.000000e+00
  br i1 %1671, label %1672, label %1677

1672:                                             ; preds = %1668
  %1673 = fcmp ult float %1670, 6.553500e+04
  br i1 %1673, label %1674, label %1677

1674:                                             ; preds = %1672
  %1675 = fadd float %1670, 5.000000e-01
  %1676 = fptoui float %1675 to i16
  br label %1677

1677:                                             ; preds = %1674, %1672, %1668
  %1678 = phi i16 [ %1676, %1674 ], [ 0, %1668 ], [ -1, %1672 ]
  store i16 %1678, ptr %1614, align 2, !tbaa !72
  br label %1702

1679:                                             ; preds = %1618
  br i1 %1605, label %1702, label %1680

1680:                                             ; preds = %1679
  %1681 = load float, ptr %1620, align 4, !tbaa !43, !noalias !265
  %1682 = fmul float %1681, 6.553500e+04
  %1683 = fcmp ugt float %1682, 0.000000e+00
  br i1 %1683, label %1684, label %1689

1684:                                             ; preds = %1680
  %1685 = fcmp ult float %1682, 6.553500e+04
  br i1 %1685, label %1686, label %1689

1686:                                             ; preds = %1684
  %1687 = fadd float %1682, 5.000000e-01
  %1688 = fptoui float %1687 to i16
  br label %1689

1689:                                             ; preds = %1686, %1684, %1680
  %1690 = phi i16 [ %1688, %1686 ], [ 0, %1680 ], [ -1, %1684 ]
  store i16 %1690, ptr %1613, align 2, !tbaa !85
  br label %1702

1691:                                             ; preds = %1618
  %1692 = load float, ptr %1620, align 4, !tbaa !43, !noalias !265
  %1693 = fmul float %1692, 6.553500e+04
  %1694 = fcmp ugt float %1693, 0.000000e+00
  br i1 %1694, label %1695, label %1700

1695:                                             ; preds = %1691
  %1696 = fcmp ult float %1693, 6.553500e+04
  br i1 %1696, label %1697, label %1700

1697:                                             ; preds = %1695
  %1698 = fadd float %1693, 5.000000e-01
  %1699 = fptoui float %1698 to i16
  br label %1700

1700:                                             ; preds = %1697, %1695, %1691
  %1701 = phi i16 [ %1699, %1697 ], [ 0, %1691 ], [ -1, %1695 ]
  store i16 %1701, ptr %1611, align 2, !tbaa !69
  store i16 %1701, ptr %1612, align 2, !tbaa !68
  store i16 %1701, ptr %1609, align 2, !tbaa !67
  br label %1702

1702:                                             ; preds = %1700, %1689, %1679, %1677, %1665, %1654, %1643, %1632, %1618
  %1703 = getelementptr inbounds float, ptr %1620, i64 1
  %1704 = add nuw nsw i64 %1619, 1
  %1705 = icmp eq i64 %1704, %1591
  br i1 %1705, label %1706, label %1618, !llvm.loop !282

1706:                                             ; preds = %1702, %1606
  %1707 = phi ptr [ %1607, %1606 ], [ %1703, %1702 ]
  %1708 = getelementptr inbounds %struct._PixelPacket, ptr %1609, i64 1
  %1709 = add nuw nsw i64 %1608, 1
  %1710 = icmp eq i64 %1709, %3
  br i1 %1710, label %1711, label %1606, !llvm.loop !283

1711:                                             ; preds = %1706, %1602
  %1712 = phi ptr [ %1598, %1602 ], [ %1707, %1706 ]
  %1713 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1714 = icmp eq i32 %1713, 0
  %1715 = add nuw nsw i64 %1597, 1
  %1716 = icmp eq i64 %1715, %4
  %1717 = select i1 %1714, i1 true, i1 %1716
  br i1 %1717, label %3229, label %1596, !llvm.loop !284

1718:                                             ; preds = %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %1719 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1721, label %1766

1721:                                             ; preds = %1718
  %1722 = icmp sgt i64 %4, 0
  br i1 %1722, label %1723, label %3229

1723:                                             ; preds = %1721
  %1724 = icmp sgt i64 %3, 0
  br label %1725

1725:                                             ; preds = %1759, %1723
  %1726 = phi i64 [ 0, %1723 ], [ %1763, %1759 ]
  %1727 = phi ptr [ %7, %1723 ], [ %1760, %1759 ]
  %1728 = add nsw i64 %1726, %2
  %1729 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1728, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1730 = icmp eq ptr %1729, null
  br i1 %1730, label %3229, label %1731

1731:                                             ; preds = %1725
  br i1 %1724, label %1732, label %1759

1732:                                             ; preds = %1731, %1732
  %1733 = phi ptr [ %1749, %1732 ], [ %1727, %1731 ]
  %1734 = phi i64 [ %1757, %1732 ], [ 0, %1731 ]
  %1735 = phi ptr [ %1756, %1732 ], [ %1729, %1731 ]
  %1736 = getelementptr inbounds i32, ptr %1733, i64 1
  %1737 = load i32, ptr %1733, align 4, !tbaa !34, !noalias !285
  %1738 = zext i32 %1737 to i64
  %1739 = add nuw nsw i64 %1738, 32768
  %1740 = udiv i64 %1739, 65537
  %1741 = trunc i64 %1740 to i16
  store i16 %1741, ptr %1735, align 2, !tbaa !67
  %1742 = getelementptr inbounds i32, ptr %1733, i64 2
  %1743 = load i32, ptr %1736, align 4, !tbaa !34, !noalias !285
  %1744 = zext i32 %1743 to i64
  %1745 = add nuw nsw i64 %1744, 32768
  %1746 = udiv i64 %1745, 65537
  %1747 = trunc i64 %1746 to i16
  %1748 = getelementptr inbounds %struct._PixelPacket, ptr %1735, i64 0, i32 1
  store i16 %1747, ptr %1748, align 2, !tbaa !68
  %1749 = getelementptr inbounds i32, ptr %1733, i64 3
  %1750 = load i32, ptr %1742, align 4, !tbaa !34, !noalias !285
  %1751 = zext i32 %1750 to i64
  %1752 = add nuw nsw i64 %1751, 32768
  %1753 = udiv i64 %1752, 65537
  %1754 = trunc i64 %1753 to i16
  %1755 = getelementptr inbounds %struct._PixelPacket, ptr %1735, i64 0, i32 2
  store i16 %1754, ptr %1755, align 2, !tbaa !69
  %1756 = getelementptr inbounds %struct._PixelPacket, ptr %1735, i64 1
  %1757 = add nuw nsw i64 %1734, 1
  %1758 = icmp eq i64 %1757, %3
  br i1 %1758, label %1759, label %1732, !llvm.loop !288

1759:                                             ; preds = %1732, %1731
  %1760 = phi ptr [ %1727, %1731 ], [ %1749, %1732 ]
  %1761 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1762 = icmp eq i32 %1761, 0
  %1763 = add nuw nsw i64 %1726, 1
  %1764 = icmp eq i64 %1763, %4
  %1765 = select i1 %1762, i1 true, i1 %1764
  br i1 %1765, label %3229, label %1725, !llvm.loop !289

1766:                                             ; preds = %1718
  %1767 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1769, label %1822

1769:                                             ; preds = %1766
  %1770 = icmp sgt i64 %4, 0
  br i1 %1770, label %1771, label %3229

1771:                                             ; preds = %1769
  %1772 = icmp sgt i64 %3, 0
  br label %1773

1773:                                             ; preds = %1815, %1771
  %1774 = phi i64 [ 0, %1771 ], [ %1819, %1815 ]
  %1775 = phi ptr [ %7, %1771 ], [ %1816, %1815 ]
  %1776 = add nsw i64 %1774, %2
  %1777 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1776, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1778 = icmp eq ptr %1777, null
  br i1 %1778, label %3229, label %1779

1779:                                             ; preds = %1773
  br i1 %1772, label %1780, label %1815

1780:                                             ; preds = %1779, %1780
  %1781 = phi ptr [ %1804, %1780 ], [ %1775, %1779 ]
  %1782 = phi i64 [ %1813, %1780 ], [ 0, %1779 ]
  %1783 = phi ptr [ %1812, %1780 ], [ %1777, %1779 ]
  %1784 = getelementptr inbounds i32, ptr %1781, i64 1
  %1785 = load i32, ptr %1781, align 4, !tbaa !34, !noalias !285
  %1786 = zext i32 %1785 to i64
  %1787 = add nuw nsw i64 %1786, 32768
  %1788 = udiv i64 %1787, 65537
  %1789 = trunc i64 %1788 to i16
  store i16 %1789, ptr %1783, align 2, !tbaa !67
  %1790 = getelementptr inbounds i32, ptr %1781, i64 2
  %1791 = load i32, ptr %1784, align 4, !tbaa !34, !noalias !285
  %1792 = zext i32 %1791 to i64
  %1793 = add nuw nsw i64 %1792, 32768
  %1794 = udiv i64 %1793, 65537
  %1795 = trunc i64 %1794 to i16
  %1796 = getelementptr inbounds %struct._PixelPacket, ptr %1783, i64 0, i32 1
  store i16 %1795, ptr %1796, align 2, !tbaa !68
  %1797 = getelementptr inbounds i32, ptr %1781, i64 3
  %1798 = load i32, ptr %1790, align 4, !tbaa !34, !noalias !285
  %1799 = zext i32 %1798 to i64
  %1800 = add nuw nsw i64 %1799, 32768
  %1801 = udiv i64 %1800, 65537
  %1802 = trunc i64 %1801 to i16
  %1803 = getelementptr inbounds %struct._PixelPacket, ptr %1783, i64 0, i32 2
  store i16 %1802, ptr %1803, align 2, !tbaa !69
  %1804 = getelementptr inbounds i32, ptr %1781, i64 4
  %1805 = load i32, ptr %1797, align 4, !tbaa !34, !noalias !285
  %1806 = zext i32 %1805 to i64
  %1807 = add nuw nsw i64 %1806, 32768
  %1808 = udiv i64 %1807, 65537
  %1809 = trunc i64 %1808 to i16
  %1810 = xor i16 %1809, -1
  %1811 = getelementptr inbounds %struct._PixelPacket, ptr %1783, i64 0, i32 3
  store i16 %1810, ptr %1811, align 2, !tbaa !72
  %1812 = getelementptr inbounds %struct._PixelPacket, ptr %1783, i64 1
  %1813 = add nuw nsw i64 %1782, 1
  %1814 = icmp eq i64 %1813, %3
  br i1 %1814, label %1815, label %1780, !llvm.loop !290

1815:                                             ; preds = %1780, %1779
  %1816 = phi ptr [ %1775, %1779 ], [ %1804, %1780 ]
  %1817 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1818 = icmp eq i32 %1817, 0
  %1819 = add nuw nsw i64 %1774, 1
  %1820 = icmp eq i64 %1819, %4
  %1821 = select i1 %1818, i1 true, i1 %1820
  br i1 %1821, label %3229, label %1773, !llvm.loop !291

1822:                                             ; preds = %1766
  %1823 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1825, label %1870

1825:                                             ; preds = %1822
  %1826 = icmp sgt i64 %4, 0
  br i1 %1826, label %1827, label %3229

1827:                                             ; preds = %1825
  %1828 = icmp sgt i64 %3, 0
  br label %1829

1829:                                             ; preds = %1863, %1827
  %1830 = phi i64 [ 0, %1827 ], [ %1867, %1863 ]
  %1831 = phi ptr [ %7, %1827 ], [ %1864, %1863 ]
  %1832 = add nsw i64 %1830, %2
  %1833 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1832, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1834 = icmp eq ptr %1833, null
  br i1 %1834, label %3229, label %1835

1835:                                             ; preds = %1829
  br i1 %1828, label %1836, label %1863

1836:                                             ; preds = %1835, %1836
  %1837 = phi ptr [ %1859, %1836 ], [ %1831, %1835 ]
  %1838 = phi i64 [ %1861, %1836 ], [ 0, %1835 ]
  %1839 = phi ptr [ %1860, %1836 ], [ %1833, %1835 ]
  %1840 = getelementptr inbounds i32, ptr %1837, i64 1
  %1841 = load i32, ptr %1837, align 4, !tbaa !34, !noalias !285
  %1842 = zext i32 %1841 to i64
  %1843 = add nuw nsw i64 %1842, 32768
  %1844 = udiv i64 %1843, 65537
  %1845 = trunc i64 %1844 to i16
  store i16 %1845, ptr %1839, align 2, !tbaa !67
  %1846 = getelementptr inbounds i32, ptr %1837, i64 2
  %1847 = load i32, ptr %1840, align 4, !tbaa !34, !noalias !285
  %1848 = zext i32 %1847 to i64
  %1849 = add nuw nsw i64 %1848, 32768
  %1850 = udiv i64 %1849, 65537
  %1851 = trunc i64 %1850 to i16
  %1852 = getelementptr inbounds %struct._PixelPacket, ptr %1839, i64 0, i32 1
  store i16 %1851, ptr %1852, align 2, !tbaa !68
  %1853 = load i32, ptr %1846, align 4, !tbaa !34, !noalias !285
  %1854 = zext i32 %1853 to i64
  %1855 = add nuw nsw i64 %1854, 32768
  %1856 = udiv i64 %1855, 65537
  %1857 = trunc i64 %1856 to i16
  %1858 = getelementptr inbounds %struct._PixelPacket, ptr %1839, i64 0, i32 2
  store i16 %1857, ptr %1858, align 2, !tbaa !69
  %1859 = getelementptr inbounds i32, ptr %1837, i64 4
  %1860 = getelementptr inbounds %struct._PixelPacket, ptr %1839, i64 1
  %1861 = add nuw nsw i64 %1838, 1
  %1862 = icmp eq i64 %1861, %3
  br i1 %1862, label %1863, label %1836, !llvm.loop !292

1863:                                             ; preds = %1836, %1835
  %1864 = phi ptr [ %1831, %1835 ], [ %1859, %1836 ]
  %1865 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1866 = icmp eq i32 %1865, 0
  %1867 = add nuw nsw i64 %1830, 1
  %1868 = icmp eq i64 %1867, %4
  %1869 = select i1 %1866, i1 true, i1 %1868
  br i1 %1869, label %3229, label %1829, !llvm.loop !293

1870:                                             ; preds = %1822
  %1871 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %1872 = icmp eq i32 %1871, 0
  br i1 %1872, label %1873, label %1906

1873:                                             ; preds = %1870
  %1874 = icmp sgt i64 %4, 0
  br i1 %1874, label %1875, label %3229

1875:                                             ; preds = %1873
  %1876 = icmp sgt i64 %3, 0
  br label %1877

1877:                                             ; preds = %1899, %1875
  %1878 = phi i64 [ 0, %1875 ], [ %1903, %1899 ]
  %1879 = phi ptr [ %7, %1875 ], [ %1900, %1899 ]
  %1880 = add nsw i64 %1878, %2
  %1881 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1880, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1882 = icmp eq ptr %1881, null
  br i1 %1882, label %3229, label %1883

1883:                                             ; preds = %1877
  br i1 %1876, label %1884, label %1899

1884:                                             ; preds = %1883, %1884
  %1885 = phi ptr [ %1888, %1884 ], [ %1879, %1883 ]
  %1886 = phi i64 [ %1897, %1884 ], [ 0, %1883 ]
  %1887 = phi ptr [ %1896, %1884 ], [ %1881, %1883 ]
  %1888 = getelementptr inbounds i32, ptr %1885, i64 1
  %1889 = load i32, ptr %1885, align 4, !tbaa !34, !noalias !285
  %1890 = zext i32 %1889 to i64
  %1891 = add nuw nsw i64 %1890, 32768
  %1892 = udiv i64 %1891, 65537
  %1893 = trunc i64 %1892 to i16
  %1894 = getelementptr inbounds %struct._PixelPacket, ptr %1887, i64 0, i32 2
  store i16 %1893, ptr %1894, align 2, !tbaa !69
  %1895 = getelementptr inbounds %struct._PixelPacket, ptr %1887, i64 0, i32 1
  store i16 %1893, ptr %1895, align 2, !tbaa !68
  store i16 %1893, ptr %1887, align 2, !tbaa !67
  %1896 = getelementptr inbounds %struct._PixelPacket, ptr %1887, i64 1
  %1897 = add nuw nsw i64 %1886, 1
  %1898 = icmp eq i64 %1897, %3
  br i1 %1898, label %1899, label %1884, !llvm.loop !294

1899:                                             ; preds = %1884, %1883
  %1900 = phi ptr [ %1879, %1883 ], [ %1888, %1884 ]
  %1901 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1902 = icmp eq i32 %1901, 0
  %1903 = add nuw nsw i64 %1878, 1
  %1904 = icmp eq i64 %1903, %4
  %1905 = select i1 %1902, i1 true, i1 %1904
  br i1 %1905, label %3229, label %1877, !llvm.loop !295

1906:                                             ; preds = %1870
  %1907 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %1908 = icmp eq i32 %1907, 0
  br i1 %1908, label %1909, label %1954

1909:                                             ; preds = %1906
  %1910 = icmp sgt i64 %4, 0
  br i1 %1910, label %1911, label %3229

1911:                                             ; preds = %1909
  %1912 = icmp sgt i64 %3, 0
  br label %1913

1913:                                             ; preds = %1947, %1911
  %1914 = phi i64 [ 0, %1911 ], [ %1951, %1947 ]
  %1915 = phi ptr [ %7, %1911 ], [ %1948, %1947 ]
  %1916 = add nsw i64 %1914, %2
  %1917 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1916, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1918 = icmp eq ptr %1917, null
  br i1 %1918, label %3229, label %1919

1919:                                             ; preds = %1913
  br i1 %1912, label %1920, label %1947

1920:                                             ; preds = %1919, %1920
  %1921 = phi ptr [ %1938, %1920 ], [ %1915, %1919 ]
  %1922 = phi i64 [ %1945, %1920 ], [ 0, %1919 ]
  %1923 = phi ptr [ %1944, %1920 ], [ %1917, %1919 ]
  %1924 = getelementptr inbounds i32, ptr %1921, i64 1
  %1925 = load i32, ptr %1921, align 4, !tbaa !34, !noalias !285
  %1926 = zext i32 %1925 to i64
  %1927 = add nuw nsw i64 %1926, 32768
  %1928 = udiv i64 %1927, 65537
  %1929 = trunc i64 %1928 to i16
  %1930 = getelementptr inbounds %struct._PixelPacket, ptr %1923, i64 0, i32 2
  store i16 %1929, ptr %1930, align 2, !tbaa !69
  %1931 = getelementptr inbounds i32, ptr %1921, i64 2
  %1932 = load i32, ptr %1924, align 4, !tbaa !34, !noalias !285
  %1933 = zext i32 %1932 to i64
  %1934 = add nuw nsw i64 %1933, 32768
  %1935 = udiv i64 %1934, 65537
  %1936 = trunc i64 %1935 to i16
  %1937 = getelementptr inbounds %struct._PixelPacket, ptr %1923, i64 0, i32 1
  store i16 %1936, ptr %1937, align 2, !tbaa !68
  %1938 = getelementptr inbounds i32, ptr %1921, i64 3
  %1939 = load i32, ptr %1931, align 4, !tbaa !34, !noalias !285
  %1940 = zext i32 %1939 to i64
  %1941 = add nuw nsw i64 %1940, 32768
  %1942 = udiv i64 %1941, 65537
  %1943 = trunc i64 %1942 to i16
  store i16 %1943, ptr %1923, align 2, !tbaa !67
  %1944 = getelementptr inbounds %struct._PixelPacket, ptr %1923, i64 1
  %1945 = add nuw nsw i64 %1922, 1
  %1946 = icmp eq i64 %1945, %3
  br i1 %1946, label %1947, label %1920, !llvm.loop !296

1947:                                             ; preds = %1920, %1919
  %1948 = phi ptr [ %1915, %1919 ], [ %1938, %1920 ]
  %1949 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %1950 = icmp eq i32 %1949, 0
  %1951 = add nuw nsw i64 %1914, 1
  %1952 = icmp eq i64 %1951, %4
  %1953 = select i1 %1950, i1 true, i1 %1952
  br i1 %1953, label %3229, label %1913, !llvm.loop !297

1954:                                             ; preds = %1906
  %1955 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %1956 = icmp eq i32 %1955, 0
  br i1 %1956, label %1957, label %2010

1957:                                             ; preds = %1954
  %1958 = icmp sgt i64 %4, 0
  br i1 %1958, label %1959, label %3229

1959:                                             ; preds = %1957
  %1960 = icmp sgt i64 %3, 0
  br label %1961

1961:                                             ; preds = %2003, %1959
  %1962 = phi i64 [ 0, %1959 ], [ %2007, %2003 ]
  %1963 = phi ptr [ %7, %1959 ], [ %2004, %2003 ]
  %1964 = add nsw i64 %1962, %2
  %1965 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %1964, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %1966 = icmp eq ptr %1965, null
  br i1 %1966, label %3229, label %1967

1967:                                             ; preds = %1961
  br i1 %1960, label %1968, label %2003

1968:                                             ; preds = %1967, %1968
  %1969 = phi ptr [ %1992, %1968 ], [ %1963, %1967 ]
  %1970 = phi i64 [ %2001, %1968 ], [ 0, %1967 ]
  %1971 = phi ptr [ %2000, %1968 ], [ %1965, %1967 ]
  %1972 = getelementptr inbounds i32, ptr %1969, i64 1
  %1973 = load i32, ptr %1969, align 4, !tbaa !34, !noalias !285
  %1974 = zext i32 %1973 to i64
  %1975 = add nuw nsw i64 %1974, 32768
  %1976 = udiv i64 %1975, 65537
  %1977 = trunc i64 %1976 to i16
  %1978 = getelementptr inbounds %struct._PixelPacket, ptr %1971, i64 0, i32 2
  store i16 %1977, ptr %1978, align 2, !tbaa !69
  %1979 = getelementptr inbounds i32, ptr %1969, i64 2
  %1980 = load i32, ptr %1972, align 4, !tbaa !34, !noalias !285
  %1981 = zext i32 %1980 to i64
  %1982 = add nuw nsw i64 %1981, 32768
  %1983 = udiv i64 %1982, 65537
  %1984 = trunc i64 %1983 to i16
  %1985 = getelementptr inbounds %struct._PixelPacket, ptr %1971, i64 0, i32 1
  store i16 %1984, ptr %1985, align 2, !tbaa !68
  %1986 = getelementptr inbounds i32, ptr %1969, i64 3
  %1987 = load i32, ptr %1979, align 4, !tbaa !34, !noalias !285
  %1988 = zext i32 %1987 to i64
  %1989 = add nuw nsw i64 %1988, 32768
  %1990 = udiv i64 %1989, 65537
  %1991 = trunc i64 %1990 to i16
  store i16 %1991, ptr %1971, align 2, !tbaa !67
  %1992 = getelementptr inbounds i32, ptr %1969, i64 4
  %1993 = load i32, ptr %1986, align 4, !tbaa !34, !noalias !285
  %1994 = zext i32 %1993 to i64
  %1995 = add nuw nsw i64 %1994, 32768
  %1996 = udiv i64 %1995, 65537
  %1997 = trunc i64 %1996 to i16
  %1998 = xor i16 %1997, -1
  %1999 = getelementptr inbounds %struct._PixelPacket, ptr %1971, i64 0, i32 3
  store i16 %1998, ptr %1999, align 2, !tbaa !72
  %2000 = getelementptr inbounds %struct._PixelPacket, ptr %1971, i64 1
  %2001 = add nuw nsw i64 %1970, 1
  %2002 = icmp eq i64 %2001, %3
  br i1 %2002, label %2003, label %1968, !llvm.loop !298

2003:                                             ; preds = %1968, %1967
  %2004 = phi ptr [ %1963, %1967 ], [ %1992, %1968 ]
  %2005 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2006 = icmp eq i32 %2005, 0
  %2007 = add nuw nsw i64 %1962, 1
  %2008 = icmp eq i64 %2007, %4
  %2009 = select i1 %2006, i1 true, i1 %2008
  br i1 %2009, label %3229, label %1961, !llvm.loop !299

2010:                                             ; preds = %1954
  %2011 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %2012 = icmp eq i32 %2011, 0
  br i1 %2012, label %2013, label %2058

2013:                                             ; preds = %2010
  %2014 = icmp sgt i64 %4, 0
  br i1 %2014, label %2015, label %3229

2015:                                             ; preds = %2013
  %2016 = icmp sgt i64 %3, 0
  br label %2017

2017:                                             ; preds = %2051, %2015
  %2018 = phi i64 [ 0, %2015 ], [ %2055, %2051 ]
  %2019 = phi ptr [ %7, %2015 ], [ %2052, %2051 ]
  %2020 = add nsw i64 %2018, %2
  %2021 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2020, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2022 = icmp eq ptr %2021, null
  br i1 %2022, label %3229, label %2023

2023:                                             ; preds = %2017
  br i1 %2016, label %2024, label %2051

2024:                                             ; preds = %2023, %2024
  %2025 = phi ptr [ %2047, %2024 ], [ %2019, %2023 ]
  %2026 = phi i64 [ %2049, %2024 ], [ 0, %2023 ]
  %2027 = phi ptr [ %2048, %2024 ], [ %2021, %2023 ]
  %2028 = getelementptr inbounds i32, ptr %2025, i64 1
  %2029 = load i32, ptr %2025, align 4, !tbaa !34, !noalias !285
  %2030 = zext i32 %2029 to i64
  %2031 = add nuw nsw i64 %2030, 32768
  %2032 = udiv i64 %2031, 65537
  %2033 = trunc i64 %2032 to i16
  %2034 = getelementptr inbounds %struct._PixelPacket, ptr %2027, i64 0, i32 2
  store i16 %2033, ptr %2034, align 2, !tbaa !69
  %2035 = getelementptr inbounds i32, ptr %2025, i64 2
  %2036 = load i32, ptr %2028, align 4, !tbaa !34, !noalias !285
  %2037 = zext i32 %2036 to i64
  %2038 = add nuw nsw i64 %2037, 32768
  %2039 = udiv i64 %2038, 65537
  %2040 = trunc i64 %2039 to i16
  %2041 = getelementptr inbounds %struct._PixelPacket, ptr %2027, i64 0, i32 1
  store i16 %2040, ptr %2041, align 2, !tbaa !68
  %2042 = load i32, ptr %2035, align 4, !tbaa !34, !noalias !285
  %2043 = zext i32 %2042 to i64
  %2044 = add nuw nsw i64 %2043, 32768
  %2045 = udiv i64 %2044, 65537
  %2046 = trunc i64 %2045 to i16
  store i16 %2046, ptr %2027, align 2, !tbaa !67
  %2047 = getelementptr inbounds i32, ptr %2025, i64 4
  %2048 = getelementptr inbounds %struct._PixelPacket, ptr %2027, i64 1
  %2049 = add nuw nsw i64 %2026, 1
  %2050 = icmp eq i64 %2049, %3
  br i1 %2050, label %2051, label %2024, !llvm.loop !300

2051:                                             ; preds = %2024, %2023
  %2052 = phi ptr [ %2019, %2023 ], [ %2047, %2024 ]
  %2053 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2054 = icmp eq i32 %2053, 0
  %2055 = add nuw nsw i64 %2018, 1
  %2056 = icmp eq i64 %2055, %4
  %2057 = select i1 %2054, i1 true, i1 %2056
  br i1 %2057, label %3229, label %2017, !llvm.loop !301

2058:                                             ; preds = %2010
  %2059 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !285
  %2060 = icmp sgt i64 %4, 0
  br i1 %2060, label %2061, label %3229

2061:                                             ; preds = %2058
  %2062 = icmp sgt i64 %3, 0
  %2063 = icmp sgt i64 %2059, 0
  br label %2064

2064:                                             ; preds = %2144, %2061
  %2065 = phi i64 [ 0, %2061 ], [ %2148, %2144 ]
  %2066 = phi ptr [ %7, %2061 ], [ %2145, %2144 ]
  %2067 = add nsw i64 %2065, %2
  %2068 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2067, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2069 = icmp eq ptr %2068, null
  br i1 %2069, label %3229, label %2070

2070:                                             ; preds = %2064
  %2071 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #19
  br i1 %2062, label %2072, label %2144

2072:                                             ; preds = %2070
  %2073 = icmp eq ptr %2071, null
  br label %2074

2074:                                             ; preds = %2072, %2139
  %2075 = phi ptr [ %2066, %2072 ], [ %2140, %2139 ]
  %2076 = phi i64 [ 0, %2072 ], [ %2142, %2139 ]
  %2077 = phi ptr [ %2068, %2072 ], [ %2141, %2139 ]
  br i1 %2063, label %2078, label %2139

2078:                                             ; preds = %2074
  %2079 = getelementptr inbounds %struct._PixelPacket, ptr %2077, i64 0, i32 2
  %2080 = getelementptr inbounds %struct._PixelPacket, ptr %2077, i64 0, i32 1
  %2081 = getelementptr inbounds i16, ptr %2071, i64 %2076
  %2082 = getelementptr inbounds %struct._PixelPacket, ptr %2077, i64 0, i32 3
  %2083 = getelementptr inbounds %struct._PixelPacket, ptr %2077, i64 0, i32 3
  %2084 = getelementptr inbounds %struct._PixelPacket, ptr %2077, i64 0, i32 1
  %2085 = getelementptr inbounds %struct._PixelPacket, ptr %2077, i64 0, i32 2
  br label %2086

2086:                                             ; preds = %2078, %2135
  %2087 = phi i64 [ 0, %2078 ], [ %2137, %2135 ]
  %2088 = phi ptr [ %2075, %2078 ], [ %2136, %2135 ]
  %2089 = getelementptr inbounds i32, ptr %17, i64 %2087
  %2090 = load i32, ptr %2089, align 4, !tbaa !34, !noalias !285
  switch i32 %2090, label %2135 [
    i32 14, label %2091
    i32 6, label %2091
    i32 9, label %2097
    i32 12, label %2097
    i32 3, label %2103
    i32 19, label %2103
    i32 1, label %2109
    i32 13, label %2116
    i32 2, label %2122
    i32 11, label %2129
  ]

2091:                                             ; preds = %2086, %2086
  %2092 = load i32, ptr %2088, align 4, !tbaa !34, !noalias !285
  %2093 = zext i32 %2092 to i64
  %2094 = add nuw nsw i64 %2093, 32768
  %2095 = udiv i64 %2094, 65537
  %2096 = trunc i64 %2095 to i16
  store i16 %2096, ptr %2085, align 2, !tbaa !69
  br label %2135

2097:                                             ; preds = %2086, %2086
  %2098 = load i32, ptr %2088, align 4, !tbaa !34, !noalias !285
  %2099 = zext i32 %2098 to i64
  %2100 = add nuw nsw i64 %2099, 32768
  %2101 = udiv i64 %2100, 65537
  %2102 = trunc i64 %2101 to i16
  store i16 %2102, ptr %2084, align 2, !tbaa !68
  br label %2135

2103:                                             ; preds = %2086, %2086
  %2104 = load i32, ptr %2088, align 4, !tbaa !34, !noalias !285
  %2105 = zext i32 %2104 to i64
  %2106 = add nuw nsw i64 %2105, 32768
  %2107 = udiv i64 %2106, 65537
  %2108 = trunc i64 %2107 to i16
  store i16 %2108, ptr %2077, align 2, !tbaa !67
  br label %2135

2109:                                             ; preds = %2086
  %2110 = load i32, ptr %2088, align 4, !tbaa !34, !noalias !285
  %2111 = zext i32 %2110 to i64
  %2112 = add nuw nsw i64 %2111, 32768
  %2113 = udiv i64 %2112, 65537
  %2114 = trunc i64 %2113 to i16
  %2115 = xor i16 %2114, -1
  store i16 %2115, ptr %2083, align 2, !tbaa !72
  br label %2135

2116:                                             ; preds = %2086
  %2117 = load i32, ptr %2088, align 4, !tbaa !34, !noalias !285
  %2118 = zext i32 %2117 to i64
  %2119 = add nuw nsw i64 %2118, 32768
  %2120 = udiv i64 %2119, 65537
  %2121 = trunc i64 %2120 to i16
  store i16 %2121, ptr %2082, align 2, !tbaa !72
  br label %2135

2122:                                             ; preds = %2086
  br i1 %2073, label %2135, label %2123

2123:                                             ; preds = %2122
  %2124 = load i32, ptr %2088, align 4, !tbaa !34, !noalias !285
  %2125 = zext i32 %2124 to i64
  %2126 = add nuw nsw i64 %2125, 32768
  %2127 = udiv i64 %2126, 65537
  %2128 = trunc i64 %2127 to i16
  store i16 %2128, ptr %2081, align 2, !tbaa !85
  br label %2135

2129:                                             ; preds = %2086
  %2130 = load i32, ptr %2088, align 4, !tbaa !34, !noalias !285
  %2131 = zext i32 %2130 to i64
  %2132 = add nuw nsw i64 %2131, 32768
  %2133 = udiv i64 %2132, 65537
  %2134 = trunc i64 %2133 to i16
  store i16 %2134, ptr %2079, align 2, !tbaa !69
  store i16 %2134, ptr %2080, align 2, !tbaa !68
  store i16 %2134, ptr %2077, align 2, !tbaa !67
  br label %2135

2135:                                             ; preds = %2129, %2123, %2122, %2116, %2109, %2103, %2097, %2091, %2086
  %2136 = getelementptr inbounds i32, ptr %2088, i64 1
  %2137 = add nuw nsw i64 %2087, 1
  %2138 = icmp eq i64 %2137, %2059
  br i1 %2138, label %2139, label %2086, !llvm.loop !302

2139:                                             ; preds = %2135, %2074
  %2140 = phi ptr [ %2075, %2074 ], [ %2136, %2135 ]
  %2141 = getelementptr inbounds %struct._PixelPacket, ptr %2077, i64 1
  %2142 = add nuw nsw i64 %2076, 1
  %2143 = icmp eq i64 %2142, %3
  br i1 %2143, label %2144, label %2074, !llvm.loop !303

2144:                                             ; preds = %2139, %2070
  %2145 = phi ptr [ %2066, %2070 ], [ %2140, %2139 ]
  %2146 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2147 = icmp eq i32 %2146, 0
  %2148 = add nuw nsw i64 %2065, 1
  %2149 = icmp eq i64 %2148, %4
  %2150 = select i1 %2147, i1 true, i1 %2149
  br i1 %2150, label %3229, label %2064, !llvm.loop !304

2151:                                             ; preds = %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %2152 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %2153 = icmp eq i32 %2152, 0
  br i1 %2153, label %2154, label %2199

2154:                                             ; preds = %2151
  %2155 = icmp sgt i64 %4, 0
  br i1 %2155, label %2156, label %3229

2156:                                             ; preds = %2154
  %2157 = icmp sgt i64 %3, 0
  br label %2158

2158:                                             ; preds = %2192, %2156
  %2159 = phi i64 [ 0, %2156 ], [ %2196, %2192 ]
  %2160 = phi ptr [ %7, %2156 ], [ %2193, %2192 ]
  %2161 = add nsw i64 %2159, %2
  %2162 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2161, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2163 = icmp eq ptr %2162, null
  br i1 %2163, label %3229, label %2164

2164:                                             ; preds = %2158
  br i1 %2157, label %2165, label %2192

2165:                                             ; preds = %2164, %2165
  %2166 = phi ptr [ %2182, %2165 ], [ %2160, %2164 ]
  %2167 = phi i64 [ %2190, %2165 ], [ 0, %2164 ]
  %2168 = phi ptr [ %2189, %2165 ], [ %2162, %2164 ]
  %2169 = getelementptr inbounds i32, ptr %2166, i64 1
  %2170 = load i32, ptr %2166, align 4, !tbaa !34, !noalias !305
  %2171 = zext i32 %2170 to i64
  %2172 = add nuw nsw i64 %2171, 32768
  %2173 = udiv i64 %2172, 65537
  %2174 = trunc i64 %2173 to i16
  store i16 %2174, ptr %2168, align 2, !tbaa !67
  %2175 = getelementptr inbounds i32, ptr %2166, i64 2
  %2176 = load i32, ptr %2169, align 4, !tbaa !34, !noalias !305
  %2177 = zext i32 %2176 to i64
  %2178 = add nuw nsw i64 %2177, 32768
  %2179 = udiv i64 %2178, 65537
  %2180 = trunc i64 %2179 to i16
  %2181 = getelementptr inbounds %struct._PixelPacket, ptr %2168, i64 0, i32 1
  store i16 %2180, ptr %2181, align 2, !tbaa !68
  %2182 = getelementptr inbounds i32, ptr %2166, i64 3
  %2183 = load i32, ptr %2175, align 4, !tbaa !34, !noalias !305
  %2184 = zext i32 %2183 to i64
  %2185 = add nuw nsw i64 %2184, 32768
  %2186 = udiv i64 %2185, 65537
  %2187 = trunc i64 %2186 to i16
  %2188 = getelementptr inbounds %struct._PixelPacket, ptr %2168, i64 0, i32 2
  store i16 %2187, ptr %2188, align 2, !tbaa !69
  %2189 = getelementptr inbounds %struct._PixelPacket, ptr %2168, i64 1
  %2190 = add nuw nsw i64 %2167, 1
  %2191 = icmp eq i64 %2190, %3
  br i1 %2191, label %2192, label %2165, !llvm.loop !308

2192:                                             ; preds = %2165, %2164
  %2193 = phi ptr [ %2160, %2164 ], [ %2182, %2165 ]
  %2194 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2195 = icmp eq i32 %2194, 0
  %2196 = add nuw nsw i64 %2159, 1
  %2197 = icmp eq i64 %2196, %4
  %2198 = select i1 %2195, i1 true, i1 %2197
  br i1 %2198, label %3229, label %2158, !llvm.loop !309

2199:                                             ; preds = %2151
  %2200 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2202, label %2255

2202:                                             ; preds = %2199
  %2203 = icmp sgt i64 %4, 0
  br i1 %2203, label %2204, label %3229

2204:                                             ; preds = %2202
  %2205 = icmp sgt i64 %3, 0
  br label %2206

2206:                                             ; preds = %2248, %2204
  %2207 = phi i64 [ 0, %2204 ], [ %2252, %2248 ]
  %2208 = phi ptr [ %7, %2204 ], [ %2249, %2248 ]
  %2209 = add nsw i64 %2207, %2
  %2210 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2209, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2211 = icmp eq ptr %2210, null
  br i1 %2211, label %3229, label %2212

2212:                                             ; preds = %2206
  br i1 %2205, label %2213, label %2248

2213:                                             ; preds = %2212, %2213
  %2214 = phi ptr [ %2237, %2213 ], [ %2208, %2212 ]
  %2215 = phi i64 [ %2246, %2213 ], [ 0, %2212 ]
  %2216 = phi ptr [ %2245, %2213 ], [ %2210, %2212 ]
  %2217 = getelementptr inbounds i32, ptr %2214, i64 1
  %2218 = load i32, ptr %2214, align 4, !tbaa !34, !noalias !305
  %2219 = zext i32 %2218 to i64
  %2220 = add nuw nsw i64 %2219, 32768
  %2221 = udiv i64 %2220, 65537
  %2222 = trunc i64 %2221 to i16
  store i16 %2222, ptr %2216, align 2, !tbaa !67
  %2223 = getelementptr inbounds i32, ptr %2214, i64 2
  %2224 = load i32, ptr %2217, align 4, !tbaa !34, !noalias !305
  %2225 = zext i32 %2224 to i64
  %2226 = add nuw nsw i64 %2225, 32768
  %2227 = udiv i64 %2226, 65537
  %2228 = trunc i64 %2227 to i16
  %2229 = getelementptr inbounds %struct._PixelPacket, ptr %2216, i64 0, i32 1
  store i16 %2228, ptr %2229, align 2, !tbaa !68
  %2230 = getelementptr inbounds i32, ptr %2214, i64 3
  %2231 = load i32, ptr %2223, align 4, !tbaa !34, !noalias !305
  %2232 = zext i32 %2231 to i64
  %2233 = add nuw nsw i64 %2232, 32768
  %2234 = udiv i64 %2233, 65537
  %2235 = trunc i64 %2234 to i16
  %2236 = getelementptr inbounds %struct._PixelPacket, ptr %2216, i64 0, i32 2
  store i16 %2235, ptr %2236, align 2, !tbaa !69
  %2237 = getelementptr inbounds i32, ptr %2214, i64 4
  %2238 = load i32, ptr %2230, align 4, !tbaa !34, !noalias !305
  %2239 = zext i32 %2238 to i64
  %2240 = add nuw nsw i64 %2239, 32768
  %2241 = udiv i64 %2240, 65537
  %2242 = trunc i64 %2241 to i16
  %2243 = xor i16 %2242, -1
  %2244 = getelementptr inbounds %struct._PixelPacket, ptr %2216, i64 0, i32 3
  store i16 %2243, ptr %2244, align 2, !tbaa !72
  %2245 = getelementptr inbounds %struct._PixelPacket, ptr %2216, i64 1
  %2246 = add nuw nsw i64 %2215, 1
  %2247 = icmp eq i64 %2246, %3
  br i1 %2247, label %2248, label %2213, !llvm.loop !310

2248:                                             ; preds = %2213, %2212
  %2249 = phi ptr [ %2208, %2212 ], [ %2237, %2213 ]
  %2250 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2251 = icmp eq i32 %2250, 0
  %2252 = add nuw nsw i64 %2207, 1
  %2253 = icmp eq i64 %2252, %4
  %2254 = select i1 %2251, i1 true, i1 %2253
  br i1 %2254, label %3229, label %2206, !llvm.loop !311

2255:                                             ; preds = %2199
  %2256 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %2257 = icmp eq i32 %2256, 0
  br i1 %2257, label %2258, label %2303

2258:                                             ; preds = %2255
  %2259 = icmp sgt i64 %4, 0
  br i1 %2259, label %2260, label %3229

2260:                                             ; preds = %2258
  %2261 = icmp sgt i64 %3, 0
  br label %2262

2262:                                             ; preds = %2296, %2260
  %2263 = phi i64 [ 0, %2260 ], [ %2300, %2296 ]
  %2264 = phi ptr [ %7, %2260 ], [ %2297, %2296 ]
  %2265 = add nsw i64 %2263, %2
  %2266 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2265, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2267 = icmp eq ptr %2266, null
  br i1 %2267, label %3229, label %2268

2268:                                             ; preds = %2262
  br i1 %2261, label %2269, label %2296

2269:                                             ; preds = %2268, %2269
  %2270 = phi ptr [ %2292, %2269 ], [ %2264, %2268 ]
  %2271 = phi i64 [ %2294, %2269 ], [ 0, %2268 ]
  %2272 = phi ptr [ %2293, %2269 ], [ %2266, %2268 ]
  %2273 = getelementptr inbounds i32, ptr %2270, i64 1
  %2274 = load i32, ptr %2270, align 4, !tbaa !34, !noalias !305
  %2275 = zext i32 %2274 to i64
  %2276 = add nuw nsw i64 %2275, 32768
  %2277 = udiv i64 %2276, 65537
  %2278 = trunc i64 %2277 to i16
  store i16 %2278, ptr %2272, align 2, !tbaa !67
  %2279 = getelementptr inbounds i32, ptr %2270, i64 2
  %2280 = load i32, ptr %2273, align 4, !tbaa !34, !noalias !305
  %2281 = zext i32 %2280 to i64
  %2282 = add nuw nsw i64 %2281, 32768
  %2283 = udiv i64 %2282, 65537
  %2284 = trunc i64 %2283 to i16
  %2285 = getelementptr inbounds %struct._PixelPacket, ptr %2272, i64 0, i32 1
  store i16 %2284, ptr %2285, align 2, !tbaa !68
  %2286 = load i32, ptr %2279, align 4, !tbaa !34, !noalias !305
  %2287 = zext i32 %2286 to i64
  %2288 = add nuw nsw i64 %2287, 32768
  %2289 = udiv i64 %2288, 65537
  %2290 = trunc i64 %2289 to i16
  %2291 = getelementptr inbounds %struct._PixelPacket, ptr %2272, i64 0, i32 2
  store i16 %2290, ptr %2291, align 2, !tbaa !69
  %2292 = getelementptr inbounds i32, ptr %2270, i64 4
  %2293 = getelementptr inbounds %struct._PixelPacket, ptr %2272, i64 1
  %2294 = add nuw nsw i64 %2271, 1
  %2295 = icmp eq i64 %2294, %3
  br i1 %2295, label %2296, label %2269, !llvm.loop !312

2296:                                             ; preds = %2269, %2268
  %2297 = phi ptr [ %2264, %2268 ], [ %2292, %2269 ]
  %2298 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2299 = icmp eq i32 %2298, 0
  %2300 = add nuw nsw i64 %2263, 1
  %2301 = icmp eq i64 %2300, %4
  %2302 = select i1 %2299, i1 true, i1 %2301
  br i1 %2302, label %3229, label %2262, !llvm.loop !313

2303:                                             ; preds = %2255
  %2304 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2306, label %2339

2306:                                             ; preds = %2303
  %2307 = icmp sgt i64 %4, 0
  br i1 %2307, label %2308, label %3229

2308:                                             ; preds = %2306
  %2309 = icmp sgt i64 %3, 0
  br label %2310

2310:                                             ; preds = %2332, %2308
  %2311 = phi i64 [ 0, %2308 ], [ %2336, %2332 ]
  %2312 = phi ptr [ %7, %2308 ], [ %2333, %2332 ]
  %2313 = add nsw i64 %2311, %2
  %2314 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2313, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2315 = icmp eq ptr %2314, null
  br i1 %2315, label %3229, label %2316

2316:                                             ; preds = %2310
  br i1 %2309, label %2317, label %2332

2317:                                             ; preds = %2316, %2317
  %2318 = phi ptr [ %2321, %2317 ], [ %2312, %2316 ]
  %2319 = phi i64 [ %2330, %2317 ], [ 0, %2316 ]
  %2320 = phi ptr [ %2329, %2317 ], [ %2314, %2316 ]
  %2321 = getelementptr inbounds i32, ptr %2318, i64 1
  %2322 = load i32, ptr %2318, align 4, !tbaa !34, !noalias !305
  %2323 = zext i32 %2322 to i64
  %2324 = add nuw nsw i64 %2323, 32768
  %2325 = udiv i64 %2324, 65537
  %2326 = trunc i64 %2325 to i16
  %2327 = getelementptr inbounds %struct._PixelPacket, ptr %2320, i64 0, i32 2
  store i16 %2326, ptr %2327, align 2, !tbaa !69
  %2328 = getelementptr inbounds %struct._PixelPacket, ptr %2320, i64 0, i32 1
  store i16 %2326, ptr %2328, align 2, !tbaa !68
  store i16 %2326, ptr %2320, align 2, !tbaa !67
  %2329 = getelementptr inbounds %struct._PixelPacket, ptr %2320, i64 1
  %2330 = add nuw nsw i64 %2319, 1
  %2331 = icmp eq i64 %2330, %3
  br i1 %2331, label %2332, label %2317, !llvm.loop !314

2332:                                             ; preds = %2317, %2316
  %2333 = phi ptr [ %2312, %2316 ], [ %2321, %2317 ]
  %2334 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2335 = icmp eq i32 %2334, 0
  %2336 = add nuw nsw i64 %2311, 1
  %2337 = icmp eq i64 %2336, %4
  %2338 = select i1 %2335, i1 true, i1 %2337
  br i1 %2338, label %3229, label %2310, !llvm.loop !315

2339:                                             ; preds = %2303
  %2340 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2342, label %2387

2342:                                             ; preds = %2339
  %2343 = icmp sgt i64 %4, 0
  br i1 %2343, label %2344, label %3229

2344:                                             ; preds = %2342
  %2345 = icmp sgt i64 %3, 0
  br label %2346

2346:                                             ; preds = %2380, %2344
  %2347 = phi i64 [ 0, %2344 ], [ %2384, %2380 ]
  %2348 = phi ptr [ %7, %2344 ], [ %2381, %2380 ]
  %2349 = add nsw i64 %2347, %2
  %2350 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2349, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2351 = icmp eq ptr %2350, null
  br i1 %2351, label %3229, label %2352

2352:                                             ; preds = %2346
  br i1 %2345, label %2353, label %2380

2353:                                             ; preds = %2352, %2353
  %2354 = phi ptr [ %2371, %2353 ], [ %2348, %2352 ]
  %2355 = phi i64 [ %2378, %2353 ], [ 0, %2352 ]
  %2356 = phi ptr [ %2377, %2353 ], [ %2350, %2352 ]
  %2357 = getelementptr inbounds i32, ptr %2354, i64 1
  %2358 = load i32, ptr %2354, align 4, !tbaa !34, !noalias !305
  %2359 = zext i32 %2358 to i64
  %2360 = add nuw nsw i64 %2359, 32768
  %2361 = udiv i64 %2360, 65537
  %2362 = trunc i64 %2361 to i16
  %2363 = getelementptr inbounds %struct._PixelPacket, ptr %2356, i64 0, i32 2
  store i16 %2362, ptr %2363, align 2, !tbaa !69
  %2364 = getelementptr inbounds i32, ptr %2354, i64 2
  %2365 = load i32, ptr %2357, align 4, !tbaa !34, !noalias !305
  %2366 = zext i32 %2365 to i64
  %2367 = add nuw nsw i64 %2366, 32768
  %2368 = udiv i64 %2367, 65537
  %2369 = trunc i64 %2368 to i16
  %2370 = getelementptr inbounds %struct._PixelPacket, ptr %2356, i64 0, i32 1
  store i16 %2369, ptr %2370, align 2, !tbaa !68
  %2371 = getelementptr inbounds i32, ptr %2354, i64 3
  %2372 = load i32, ptr %2364, align 4, !tbaa !34, !noalias !305
  %2373 = zext i32 %2372 to i64
  %2374 = add nuw nsw i64 %2373, 32768
  %2375 = udiv i64 %2374, 65537
  %2376 = trunc i64 %2375 to i16
  store i16 %2376, ptr %2356, align 2, !tbaa !67
  %2377 = getelementptr inbounds %struct._PixelPacket, ptr %2356, i64 1
  %2378 = add nuw nsw i64 %2355, 1
  %2379 = icmp eq i64 %2378, %3
  br i1 %2379, label %2380, label %2353, !llvm.loop !316

2380:                                             ; preds = %2353, %2352
  %2381 = phi ptr [ %2348, %2352 ], [ %2371, %2353 ]
  %2382 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2383 = icmp eq i32 %2382, 0
  %2384 = add nuw nsw i64 %2347, 1
  %2385 = icmp eq i64 %2384, %4
  %2386 = select i1 %2383, i1 true, i1 %2385
  br i1 %2386, label %3229, label %2346, !llvm.loop !317

2387:                                             ; preds = %2339
  %2388 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %2389 = icmp eq i32 %2388, 0
  br i1 %2389, label %2390, label %2443

2390:                                             ; preds = %2387
  %2391 = icmp sgt i64 %4, 0
  br i1 %2391, label %2392, label %3229

2392:                                             ; preds = %2390
  %2393 = icmp sgt i64 %3, 0
  br label %2394

2394:                                             ; preds = %2436, %2392
  %2395 = phi i64 [ 0, %2392 ], [ %2440, %2436 ]
  %2396 = phi ptr [ %7, %2392 ], [ %2437, %2436 ]
  %2397 = add nsw i64 %2395, %2
  %2398 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2397, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2399 = icmp eq ptr %2398, null
  br i1 %2399, label %3229, label %2400

2400:                                             ; preds = %2394
  br i1 %2393, label %2401, label %2436

2401:                                             ; preds = %2400, %2401
  %2402 = phi ptr [ %2425, %2401 ], [ %2396, %2400 ]
  %2403 = phi i64 [ %2434, %2401 ], [ 0, %2400 ]
  %2404 = phi ptr [ %2433, %2401 ], [ %2398, %2400 ]
  %2405 = getelementptr inbounds i32, ptr %2402, i64 1
  %2406 = load i32, ptr %2402, align 4, !tbaa !34, !noalias !305
  %2407 = zext i32 %2406 to i64
  %2408 = add nuw nsw i64 %2407, 32768
  %2409 = udiv i64 %2408, 65537
  %2410 = trunc i64 %2409 to i16
  %2411 = getelementptr inbounds %struct._PixelPacket, ptr %2404, i64 0, i32 2
  store i16 %2410, ptr %2411, align 2, !tbaa !69
  %2412 = getelementptr inbounds i32, ptr %2402, i64 2
  %2413 = load i32, ptr %2405, align 4, !tbaa !34, !noalias !305
  %2414 = zext i32 %2413 to i64
  %2415 = add nuw nsw i64 %2414, 32768
  %2416 = udiv i64 %2415, 65537
  %2417 = trunc i64 %2416 to i16
  %2418 = getelementptr inbounds %struct._PixelPacket, ptr %2404, i64 0, i32 1
  store i16 %2417, ptr %2418, align 2, !tbaa !68
  %2419 = getelementptr inbounds i32, ptr %2402, i64 3
  %2420 = load i32, ptr %2412, align 4, !tbaa !34, !noalias !305
  %2421 = zext i32 %2420 to i64
  %2422 = add nuw nsw i64 %2421, 32768
  %2423 = udiv i64 %2422, 65537
  %2424 = trunc i64 %2423 to i16
  store i16 %2424, ptr %2404, align 2, !tbaa !67
  %2425 = getelementptr inbounds i32, ptr %2402, i64 4
  %2426 = load i32, ptr %2419, align 4, !tbaa !34, !noalias !305
  %2427 = zext i32 %2426 to i64
  %2428 = add nuw nsw i64 %2427, 32768
  %2429 = udiv i64 %2428, 65537
  %2430 = trunc i64 %2429 to i16
  %2431 = xor i16 %2430, -1
  %2432 = getelementptr inbounds %struct._PixelPacket, ptr %2404, i64 0, i32 3
  store i16 %2431, ptr %2432, align 2, !tbaa !72
  %2433 = getelementptr inbounds %struct._PixelPacket, ptr %2404, i64 1
  %2434 = add nuw nsw i64 %2403, 1
  %2435 = icmp eq i64 %2434, %3
  br i1 %2435, label %2436, label %2401, !llvm.loop !318

2436:                                             ; preds = %2401, %2400
  %2437 = phi ptr [ %2396, %2400 ], [ %2425, %2401 ]
  %2438 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2439 = icmp eq i32 %2438, 0
  %2440 = add nuw nsw i64 %2395, 1
  %2441 = icmp eq i64 %2440, %4
  %2442 = select i1 %2439, i1 true, i1 %2441
  br i1 %2442, label %3229, label %2394, !llvm.loop !319

2443:                                             ; preds = %2387
  %2444 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %2445 = icmp eq i32 %2444, 0
  br i1 %2445, label %2446, label %2491

2446:                                             ; preds = %2443
  %2447 = icmp sgt i64 %4, 0
  br i1 %2447, label %2448, label %3229

2448:                                             ; preds = %2446
  %2449 = icmp sgt i64 %3, 0
  br label %2450

2450:                                             ; preds = %2484, %2448
  %2451 = phi i64 [ 0, %2448 ], [ %2488, %2484 ]
  %2452 = phi ptr [ %7, %2448 ], [ %2485, %2484 ]
  %2453 = add nsw i64 %2451, %2
  %2454 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2453, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2455 = icmp eq ptr %2454, null
  br i1 %2455, label %3229, label %2456

2456:                                             ; preds = %2450
  br i1 %2449, label %2457, label %2484

2457:                                             ; preds = %2456, %2457
  %2458 = phi ptr [ %2480, %2457 ], [ %2452, %2456 ]
  %2459 = phi i64 [ %2482, %2457 ], [ 0, %2456 ]
  %2460 = phi ptr [ %2481, %2457 ], [ %2454, %2456 ]
  %2461 = getelementptr inbounds i32, ptr %2458, i64 1
  %2462 = load i32, ptr %2458, align 4, !tbaa !34, !noalias !305
  %2463 = zext i32 %2462 to i64
  %2464 = add nuw nsw i64 %2463, 32768
  %2465 = udiv i64 %2464, 65537
  %2466 = trunc i64 %2465 to i16
  %2467 = getelementptr inbounds %struct._PixelPacket, ptr %2460, i64 0, i32 2
  store i16 %2466, ptr %2467, align 2, !tbaa !69
  %2468 = getelementptr inbounds i32, ptr %2458, i64 2
  %2469 = load i32, ptr %2461, align 4, !tbaa !34, !noalias !305
  %2470 = zext i32 %2469 to i64
  %2471 = add nuw nsw i64 %2470, 32768
  %2472 = udiv i64 %2471, 65537
  %2473 = trunc i64 %2472 to i16
  %2474 = getelementptr inbounds %struct._PixelPacket, ptr %2460, i64 0, i32 1
  store i16 %2473, ptr %2474, align 2, !tbaa !68
  %2475 = load i32, ptr %2468, align 4, !tbaa !34, !noalias !305
  %2476 = zext i32 %2475 to i64
  %2477 = add nuw nsw i64 %2476, 32768
  %2478 = udiv i64 %2477, 65537
  %2479 = trunc i64 %2478 to i16
  store i16 %2479, ptr %2460, align 2, !tbaa !67
  %2480 = getelementptr inbounds i32, ptr %2458, i64 4
  %2481 = getelementptr inbounds %struct._PixelPacket, ptr %2460, i64 1
  %2482 = add nuw nsw i64 %2459, 1
  %2483 = icmp eq i64 %2482, %3
  br i1 %2483, label %2484, label %2457, !llvm.loop !320

2484:                                             ; preds = %2457, %2456
  %2485 = phi ptr [ %2452, %2456 ], [ %2480, %2457 ]
  %2486 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2487 = icmp eq i32 %2486, 0
  %2488 = add nuw nsw i64 %2451, 1
  %2489 = icmp eq i64 %2488, %4
  %2490 = select i1 %2487, i1 true, i1 %2489
  br i1 %2490, label %3229, label %2450, !llvm.loop !321

2491:                                             ; preds = %2443
  %2492 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !305
  %2493 = icmp sgt i64 %4, 0
  br i1 %2493, label %2494, label %3229

2494:                                             ; preds = %2491
  %2495 = icmp sgt i64 %3, 0
  %2496 = icmp sgt i64 %2492, 0
  br label %2497

2497:                                             ; preds = %2577, %2494
  %2498 = phi i64 [ 0, %2494 ], [ %2581, %2577 ]
  %2499 = phi ptr [ %7, %2494 ], [ %2578, %2577 ]
  %2500 = add nsw i64 %2498, %2
  %2501 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2500, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2502 = icmp eq ptr %2501, null
  br i1 %2502, label %3229, label %2503

2503:                                             ; preds = %2497
  %2504 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #19
  br i1 %2495, label %2505, label %2577

2505:                                             ; preds = %2503
  %2506 = icmp eq ptr %2504, null
  br label %2507

2507:                                             ; preds = %2505, %2572
  %2508 = phi ptr [ %2499, %2505 ], [ %2573, %2572 ]
  %2509 = phi i64 [ 0, %2505 ], [ %2575, %2572 ]
  %2510 = phi ptr [ %2501, %2505 ], [ %2574, %2572 ]
  br i1 %2496, label %2511, label %2572

2511:                                             ; preds = %2507
  %2512 = getelementptr inbounds %struct._PixelPacket, ptr %2510, i64 0, i32 2
  %2513 = getelementptr inbounds %struct._PixelPacket, ptr %2510, i64 0, i32 1
  %2514 = getelementptr inbounds i16, ptr %2504, i64 %2509
  %2515 = getelementptr inbounds %struct._PixelPacket, ptr %2510, i64 0, i32 3
  %2516 = getelementptr inbounds %struct._PixelPacket, ptr %2510, i64 0, i32 3
  %2517 = getelementptr inbounds %struct._PixelPacket, ptr %2510, i64 0, i32 1
  %2518 = getelementptr inbounds %struct._PixelPacket, ptr %2510, i64 0, i32 2
  br label %2519

2519:                                             ; preds = %2511, %2568
  %2520 = phi i64 [ 0, %2511 ], [ %2570, %2568 ]
  %2521 = phi ptr [ %2508, %2511 ], [ %2569, %2568 ]
  %2522 = getelementptr inbounds i32, ptr %17, i64 %2520
  %2523 = load i32, ptr %2522, align 4, !tbaa !34, !noalias !305
  switch i32 %2523, label %2568 [
    i32 14, label %2524
    i32 6, label %2524
    i32 9, label %2530
    i32 12, label %2530
    i32 3, label %2536
    i32 19, label %2536
    i32 1, label %2542
    i32 13, label %2549
    i32 2, label %2555
    i32 11, label %2562
  ]

2524:                                             ; preds = %2519, %2519
  %2525 = load i32, ptr %2521, align 4, !tbaa !34, !noalias !305
  %2526 = zext i32 %2525 to i64
  %2527 = add nuw nsw i64 %2526, 32768
  %2528 = udiv i64 %2527, 65537
  %2529 = trunc i64 %2528 to i16
  store i16 %2529, ptr %2518, align 2, !tbaa !69
  br label %2568

2530:                                             ; preds = %2519, %2519
  %2531 = load i32, ptr %2521, align 4, !tbaa !34, !noalias !305
  %2532 = zext i32 %2531 to i64
  %2533 = add nuw nsw i64 %2532, 32768
  %2534 = udiv i64 %2533, 65537
  %2535 = trunc i64 %2534 to i16
  store i16 %2535, ptr %2517, align 2, !tbaa !68
  br label %2568

2536:                                             ; preds = %2519, %2519
  %2537 = load i32, ptr %2521, align 4, !tbaa !34, !noalias !305
  %2538 = zext i32 %2537 to i64
  %2539 = add nuw nsw i64 %2538, 32768
  %2540 = udiv i64 %2539, 65537
  %2541 = trunc i64 %2540 to i16
  store i16 %2541, ptr %2510, align 2, !tbaa !67
  br label %2568

2542:                                             ; preds = %2519
  %2543 = load i32, ptr %2521, align 4, !tbaa !34, !noalias !305
  %2544 = zext i32 %2543 to i64
  %2545 = add nuw nsw i64 %2544, 32768
  %2546 = udiv i64 %2545, 65537
  %2547 = trunc i64 %2546 to i16
  %2548 = xor i16 %2547, -1
  store i16 %2548, ptr %2516, align 2, !tbaa !72
  br label %2568

2549:                                             ; preds = %2519
  %2550 = load i32, ptr %2521, align 4, !tbaa !34, !noalias !305
  %2551 = zext i32 %2550 to i64
  %2552 = add nuw nsw i64 %2551, 32768
  %2553 = udiv i64 %2552, 65537
  %2554 = trunc i64 %2553 to i16
  store i16 %2554, ptr %2515, align 2, !tbaa !72
  br label %2568

2555:                                             ; preds = %2519
  br i1 %2506, label %2568, label %2556

2556:                                             ; preds = %2555
  %2557 = load i32, ptr %2521, align 4, !tbaa !34, !noalias !305
  %2558 = zext i32 %2557 to i64
  %2559 = add nuw nsw i64 %2558, 32768
  %2560 = udiv i64 %2559, 65537
  %2561 = trunc i64 %2560 to i16
  store i16 %2561, ptr %2514, align 2, !tbaa !85
  br label %2568

2562:                                             ; preds = %2519
  %2563 = load i32, ptr %2521, align 4, !tbaa !34, !noalias !305
  %2564 = zext i32 %2563 to i64
  %2565 = add nuw nsw i64 %2564, 32768
  %2566 = udiv i64 %2565, 65537
  %2567 = trunc i64 %2566 to i16
  store i16 %2567, ptr %2512, align 2, !tbaa !69
  store i16 %2567, ptr %2513, align 2, !tbaa !68
  store i16 %2567, ptr %2510, align 2, !tbaa !67
  br label %2568

2568:                                             ; preds = %2562, %2556, %2555, %2549, %2542, %2536, %2530, %2524, %2519
  %2569 = getelementptr inbounds i32, ptr %2521, i64 1
  %2570 = add nuw nsw i64 %2520, 1
  %2571 = icmp eq i64 %2570, %2492
  br i1 %2571, label %2572, label %2519, !llvm.loop !322

2572:                                             ; preds = %2568, %2507
  %2573 = phi ptr [ %2508, %2507 ], [ %2569, %2568 ]
  %2574 = getelementptr inbounds %struct._PixelPacket, ptr %2510, i64 1
  %2575 = add nuw nsw i64 %2509, 1
  %2576 = icmp eq i64 %2575, %3
  br i1 %2576, label %2577, label %2507, !llvm.loop !323

2577:                                             ; preds = %2572, %2503
  %2578 = phi ptr [ %2499, %2503 ], [ %2573, %2572 ]
  %2579 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2580 = icmp eq i32 %2579, 0
  %2581 = add nuw nsw i64 %2498, 1
  %2582 = icmp eq i64 %2581, %4
  %2583 = select i1 %2580, i1 true, i1 %2582
  br i1 %2583, label %3229, label %2497, !llvm.loop !324

2584:                                             ; preds = %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %2585 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %2586 = icmp eq i32 %2585, 0
  br i1 %2586, label %2587, label %2620

2587:                                             ; preds = %2584
  %2588 = icmp sgt i64 %4, 0
  br i1 %2588, label %2589, label %3229

2589:                                             ; preds = %2587
  %2590 = icmp sgt i64 %3, 0
  br label %2591

2591:                                             ; preds = %2613, %2589
  %2592 = phi i64 [ 0, %2589 ], [ %2617, %2613 ]
  %2593 = phi ptr [ %7, %2589 ], [ %2614, %2613 ]
  %2594 = add nsw i64 %2592, %2
  %2595 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2594, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2596 = icmp eq ptr %2595, null
  br i1 %2596, label %3229, label %2597

2597:                                             ; preds = %2591
  br i1 %2590, label %2598, label %2613

2598:                                             ; preds = %2597, %2598
  %2599 = phi ptr [ %2607, %2598 ], [ %2593, %2597 ]
  %2600 = phi i64 [ %2611, %2598 ], [ 0, %2597 ]
  %2601 = phi ptr [ %2610, %2598 ], [ %2595, %2597 ]
  %2602 = getelementptr inbounds i16, ptr %2599, i64 1
  %2603 = load i16, ptr %2599, align 2, !tbaa !85, !noalias !325
  store i16 %2603, ptr %2601, align 2, !tbaa !67
  %2604 = getelementptr inbounds i16, ptr %2599, i64 2
  %2605 = load i16, ptr %2602, align 2, !tbaa !85, !noalias !325
  %2606 = getelementptr inbounds %struct._PixelPacket, ptr %2601, i64 0, i32 1
  store i16 %2605, ptr %2606, align 2, !tbaa !68
  %2607 = getelementptr inbounds i16, ptr %2599, i64 3
  %2608 = load i16, ptr %2604, align 2, !tbaa !85, !noalias !325
  %2609 = getelementptr inbounds %struct._PixelPacket, ptr %2601, i64 0, i32 2
  store i16 %2608, ptr %2609, align 2, !tbaa !69
  %2610 = getelementptr inbounds %struct._PixelPacket, ptr %2601, i64 1
  %2611 = add nuw nsw i64 %2600, 1
  %2612 = icmp eq i64 %2611, %3
  br i1 %2612, label %2613, label %2598, !llvm.loop !328

2613:                                             ; preds = %2598, %2597
  %2614 = phi ptr [ %2593, %2597 ], [ %2607, %2598 ]
  %2615 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2616 = icmp eq i32 %2615, 0
  %2617 = add nuw nsw i64 %2592, 1
  %2618 = icmp eq i64 %2617, %4
  %2619 = select i1 %2616, i1 true, i1 %2618
  br i1 %2619, label %3229, label %2591, !llvm.loop !329

2620:                                             ; preds = %2584
  %2621 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %2622 = icmp eq i32 %2621, 0
  br i1 %2622, label %2623, label %2660

2623:                                             ; preds = %2620
  %2624 = icmp sgt i64 %4, 0
  br i1 %2624, label %2625, label %3229

2625:                                             ; preds = %2623
  %2626 = icmp sgt i64 %3, 0
  br label %2627

2627:                                             ; preds = %2653, %2625
  %2628 = phi i64 [ 0, %2625 ], [ %2657, %2653 ]
  %2629 = phi ptr [ %7, %2625 ], [ %2654, %2653 ]
  %2630 = add nsw i64 %2628, %2
  %2631 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2630, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2632 = icmp eq ptr %2631, null
  br i1 %2632, label %3229, label %2633

2633:                                             ; preds = %2627
  br i1 %2626, label %2634, label %2653

2634:                                             ; preds = %2633, %2634
  %2635 = phi ptr [ %2646, %2634 ], [ %2629, %2633 ]
  %2636 = phi i64 [ %2651, %2634 ], [ 0, %2633 ]
  %2637 = phi ptr [ %2650, %2634 ], [ %2631, %2633 ]
  %2638 = getelementptr inbounds i16, ptr %2635, i64 1
  %2639 = load i16, ptr %2635, align 2, !tbaa !85, !noalias !325
  store i16 %2639, ptr %2637, align 2, !tbaa !67
  %2640 = getelementptr inbounds i16, ptr %2635, i64 2
  %2641 = load i16, ptr %2638, align 2, !tbaa !85, !noalias !325
  %2642 = getelementptr inbounds %struct._PixelPacket, ptr %2637, i64 0, i32 1
  store i16 %2641, ptr %2642, align 2, !tbaa !68
  %2643 = getelementptr inbounds i16, ptr %2635, i64 3
  %2644 = load i16, ptr %2640, align 2, !tbaa !85, !noalias !325
  %2645 = getelementptr inbounds %struct._PixelPacket, ptr %2637, i64 0, i32 2
  store i16 %2644, ptr %2645, align 2, !tbaa !69
  %2646 = getelementptr inbounds i16, ptr %2635, i64 4
  %2647 = load i16, ptr %2643, align 2, !tbaa !85, !noalias !325
  %2648 = xor i16 %2647, -1
  %2649 = getelementptr inbounds %struct._PixelPacket, ptr %2637, i64 0, i32 3
  store i16 %2648, ptr %2649, align 2, !tbaa !72
  %2650 = getelementptr inbounds %struct._PixelPacket, ptr %2637, i64 1
  %2651 = add nuw nsw i64 %2636, 1
  %2652 = icmp eq i64 %2651, %3
  br i1 %2652, label %2653, label %2634, !llvm.loop !330

2653:                                             ; preds = %2634, %2633
  %2654 = phi ptr [ %2629, %2633 ], [ %2646, %2634 ]
  %2655 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2656 = icmp eq i32 %2655, 0
  %2657 = add nuw nsw i64 %2628, 1
  %2658 = icmp eq i64 %2657, %4
  %2659 = select i1 %2656, i1 true, i1 %2658
  br i1 %2659, label %3229, label %2627, !llvm.loop !331

2660:                                             ; preds = %2620
  %2661 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %2663, label %2696

2663:                                             ; preds = %2660
  %2664 = icmp sgt i64 %4, 0
  br i1 %2664, label %2665, label %3229

2665:                                             ; preds = %2663
  %2666 = icmp sgt i64 %3, 0
  br label %2667

2667:                                             ; preds = %2689, %2665
  %2668 = phi i64 [ 0, %2665 ], [ %2693, %2689 ]
  %2669 = phi ptr [ %7, %2665 ], [ %2690, %2689 ]
  %2670 = add nsw i64 %2668, %2
  %2671 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2670, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2672 = icmp eq ptr %2671, null
  br i1 %2672, label %3229, label %2673

2673:                                             ; preds = %2667
  br i1 %2666, label %2674, label %2689

2674:                                             ; preds = %2673, %2674
  %2675 = phi ptr [ %2685, %2674 ], [ %2669, %2673 ]
  %2676 = phi i64 [ %2687, %2674 ], [ 0, %2673 ]
  %2677 = phi ptr [ %2686, %2674 ], [ %2671, %2673 ]
  %2678 = getelementptr inbounds i16, ptr %2675, i64 1
  %2679 = load i16, ptr %2675, align 2, !tbaa !85, !noalias !325
  store i16 %2679, ptr %2677, align 2, !tbaa !67
  %2680 = getelementptr inbounds i16, ptr %2675, i64 2
  %2681 = load i16, ptr %2678, align 2, !tbaa !85, !noalias !325
  %2682 = getelementptr inbounds %struct._PixelPacket, ptr %2677, i64 0, i32 1
  store i16 %2681, ptr %2682, align 2, !tbaa !68
  %2683 = load i16, ptr %2680, align 2, !tbaa !85, !noalias !325
  %2684 = getelementptr inbounds %struct._PixelPacket, ptr %2677, i64 0, i32 2
  store i16 %2683, ptr %2684, align 2, !tbaa !69
  %2685 = getelementptr inbounds i16, ptr %2675, i64 4
  %2686 = getelementptr inbounds %struct._PixelPacket, ptr %2677, i64 1
  %2687 = add nuw nsw i64 %2676, 1
  %2688 = icmp eq i64 %2687, %3
  br i1 %2688, label %2689, label %2674, !llvm.loop !332

2689:                                             ; preds = %2674, %2673
  %2690 = phi ptr [ %2669, %2673 ], [ %2685, %2674 ]
  %2691 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2692 = icmp eq i32 %2691, 0
  %2693 = add nuw nsw i64 %2668, 1
  %2694 = icmp eq i64 %2693, %4
  %2695 = select i1 %2692, i1 true, i1 %2694
  br i1 %2695, label %3229, label %2667, !llvm.loop !333

2696:                                             ; preds = %2660
  %2697 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %2698 = icmp eq i32 %2697, 0
  br i1 %2698, label %2699, label %2728

2699:                                             ; preds = %2696
  %2700 = icmp sgt i64 %4, 0
  br i1 %2700, label %2701, label %3229

2701:                                             ; preds = %2699
  %2702 = icmp sgt i64 %3, 0
  br label %2703

2703:                                             ; preds = %2721, %2701
  %2704 = phi i64 [ 0, %2701 ], [ %2725, %2721 ]
  %2705 = phi ptr [ %7, %2701 ], [ %2722, %2721 ]
  %2706 = add nsw i64 %2704, %2
  %2707 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2706, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2708 = icmp eq ptr %2707, null
  br i1 %2708, label %3229, label %2709

2709:                                             ; preds = %2703
  br i1 %2702, label %2710, label %2721

2710:                                             ; preds = %2709, %2710
  %2711 = phi ptr [ %2714, %2710 ], [ %2705, %2709 ]
  %2712 = phi i64 [ %2719, %2710 ], [ 0, %2709 ]
  %2713 = phi ptr [ %2718, %2710 ], [ %2707, %2709 ]
  %2714 = getelementptr inbounds i16, ptr %2711, i64 1
  %2715 = load i16, ptr %2711, align 2, !tbaa !85, !noalias !325
  %2716 = getelementptr inbounds %struct._PixelPacket, ptr %2713, i64 0, i32 2
  store i16 %2715, ptr %2716, align 2, !tbaa !69
  %2717 = getelementptr inbounds %struct._PixelPacket, ptr %2713, i64 0, i32 1
  store i16 %2715, ptr %2717, align 2, !tbaa !68
  store i16 %2715, ptr %2713, align 2, !tbaa !67
  %2718 = getelementptr inbounds %struct._PixelPacket, ptr %2713, i64 1
  %2719 = add nuw nsw i64 %2712, 1
  %2720 = icmp eq i64 %2719, %3
  br i1 %2720, label %2721, label %2710, !llvm.loop !334

2721:                                             ; preds = %2710, %2709
  %2722 = phi ptr [ %2705, %2709 ], [ %2714, %2710 ]
  %2723 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2724 = icmp eq i32 %2723, 0
  %2725 = add nuw nsw i64 %2704, 1
  %2726 = icmp eq i64 %2725, %4
  %2727 = select i1 %2724, i1 true, i1 %2726
  br i1 %2727, label %3229, label %2703, !llvm.loop !335

2728:                                             ; preds = %2696
  %2729 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2731, label %2764

2731:                                             ; preds = %2728
  %2732 = icmp sgt i64 %4, 0
  br i1 %2732, label %2733, label %3229

2733:                                             ; preds = %2731
  %2734 = icmp sgt i64 %3, 0
  br label %2735

2735:                                             ; preds = %2757, %2733
  %2736 = phi i64 [ 0, %2733 ], [ %2761, %2757 ]
  %2737 = phi ptr [ %7, %2733 ], [ %2758, %2757 ]
  %2738 = add nsw i64 %2736, %2
  %2739 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2738, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2740 = icmp eq ptr %2739, null
  br i1 %2740, label %3229, label %2741

2741:                                             ; preds = %2735
  br i1 %2734, label %2742, label %2757

2742:                                             ; preds = %2741, %2742
  %2743 = phi ptr [ %2752, %2742 ], [ %2737, %2741 ]
  %2744 = phi i64 [ %2755, %2742 ], [ 0, %2741 ]
  %2745 = phi ptr [ %2754, %2742 ], [ %2739, %2741 ]
  %2746 = getelementptr inbounds i16, ptr %2743, i64 1
  %2747 = load i16, ptr %2743, align 2, !tbaa !85, !noalias !325
  %2748 = getelementptr inbounds %struct._PixelPacket, ptr %2745, i64 0, i32 2
  store i16 %2747, ptr %2748, align 2, !tbaa !69
  %2749 = getelementptr inbounds i16, ptr %2743, i64 2
  %2750 = load i16, ptr %2746, align 2, !tbaa !85, !noalias !325
  %2751 = getelementptr inbounds %struct._PixelPacket, ptr %2745, i64 0, i32 1
  store i16 %2750, ptr %2751, align 2, !tbaa !68
  %2752 = getelementptr inbounds i16, ptr %2743, i64 3
  %2753 = load i16, ptr %2749, align 2, !tbaa !85, !noalias !325
  store i16 %2753, ptr %2745, align 2, !tbaa !67
  %2754 = getelementptr inbounds %struct._PixelPacket, ptr %2745, i64 1
  %2755 = add nuw nsw i64 %2744, 1
  %2756 = icmp eq i64 %2755, %3
  br i1 %2756, label %2757, label %2742, !llvm.loop !336

2757:                                             ; preds = %2742, %2741
  %2758 = phi ptr [ %2737, %2741 ], [ %2752, %2742 ]
  %2759 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2760 = icmp eq i32 %2759, 0
  %2761 = add nuw nsw i64 %2736, 1
  %2762 = icmp eq i64 %2761, %4
  %2763 = select i1 %2760, i1 true, i1 %2762
  br i1 %2763, label %3229, label %2735, !llvm.loop !337

2764:                                             ; preds = %2728
  %2765 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %2766 = icmp eq i32 %2765, 0
  br i1 %2766, label %2767, label %2804

2767:                                             ; preds = %2764
  %2768 = icmp sgt i64 %4, 0
  br i1 %2768, label %2769, label %3229

2769:                                             ; preds = %2767
  %2770 = icmp sgt i64 %3, 0
  br label %2771

2771:                                             ; preds = %2797, %2769
  %2772 = phi i64 [ 0, %2769 ], [ %2801, %2797 ]
  %2773 = phi ptr [ %7, %2769 ], [ %2798, %2797 ]
  %2774 = add nsw i64 %2772, %2
  %2775 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2774, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2776 = icmp eq ptr %2775, null
  br i1 %2776, label %3229, label %2777

2777:                                             ; preds = %2771
  br i1 %2770, label %2778, label %2797

2778:                                             ; preds = %2777, %2778
  %2779 = phi ptr [ %2790, %2778 ], [ %2773, %2777 ]
  %2780 = phi i64 [ %2795, %2778 ], [ 0, %2777 ]
  %2781 = phi ptr [ %2794, %2778 ], [ %2775, %2777 ]
  %2782 = getelementptr inbounds i16, ptr %2779, i64 1
  %2783 = load i16, ptr %2779, align 2, !tbaa !85, !noalias !325
  %2784 = getelementptr inbounds %struct._PixelPacket, ptr %2781, i64 0, i32 2
  store i16 %2783, ptr %2784, align 2, !tbaa !69
  %2785 = getelementptr inbounds i16, ptr %2779, i64 2
  %2786 = load i16, ptr %2782, align 2, !tbaa !85, !noalias !325
  %2787 = getelementptr inbounds %struct._PixelPacket, ptr %2781, i64 0, i32 1
  store i16 %2786, ptr %2787, align 2, !tbaa !68
  %2788 = getelementptr inbounds i16, ptr %2779, i64 3
  %2789 = load i16, ptr %2785, align 2, !tbaa !85, !noalias !325
  store i16 %2789, ptr %2781, align 2, !tbaa !67
  %2790 = getelementptr inbounds i16, ptr %2779, i64 4
  %2791 = load i16, ptr %2788, align 2, !tbaa !85, !noalias !325
  %2792 = xor i16 %2791, -1
  %2793 = getelementptr inbounds %struct._PixelPacket, ptr %2781, i64 0, i32 3
  store i16 %2792, ptr %2793, align 2, !tbaa !72
  %2794 = getelementptr inbounds %struct._PixelPacket, ptr %2781, i64 1
  %2795 = add nuw nsw i64 %2780, 1
  %2796 = icmp eq i64 %2795, %3
  br i1 %2796, label %2797, label %2778, !llvm.loop !338

2797:                                             ; preds = %2778, %2777
  %2798 = phi ptr [ %2773, %2777 ], [ %2790, %2778 ]
  %2799 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2800 = icmp eq i32 %2799, 0
  %2801 = add nuw nsw i64 %2772, 1
  %2802 = icmp eq i64 %2801, %4
  %2803 = select i1 %2800, i1 true, i1 %2802
  br i1 %2803, label %3229, label %2771, !llvm.loop !339

2804:                                             ; preds = %2764
  %2805 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %2806 = icmp eq i32 %2805, 0
  br i1 %2806, label %2807, label %2840

2807:                                             ; preds = %2804
  %2808 = icmp sgt i64 %4, 0
  br i1 %2808, label %2809, label %3229

2809:                                             ; preds = %2807
  %2810 = icmp sgt i64 %3, 0
  br label %2811

2811:                                             ; preds = %2833, %2809
  %2812 = phi i64 [ 0, %2809 ], [ %2837, %2833 ]
  %2813 = phi ptr [ %7, %2809 ], [ %2834, %2833 ]
  %2814 = add nsw i64 %2812, %2
  %2815 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2814, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2816 = icmp eq ptr %2815, null
  br i1 %2816, label %3229, label %2817

2817:                                             ; preds = %2811
  br i1 %2810, label %2818, label %2833

2818:                                             ; preds = %2817, %2818
  %2819 = phi ptr [ %2829, %2818 ], [ %2813, %2817 ]
  %2820 = phi i64 [ %2831, %2818 ], [ 0, %2817 ]
  %2821 = phi ptr [ %2830, %2818 ], [ %2815, %2817 ]
  %2822 = getelementptr inbounds i16, ptr %2819, i64 1
  %2823 = load i16, ptr %2819, align 2, !tbaa !85, !noalias !325
  %2824 = getelementptr inbounds %struct._PixelPacket, ptr %2821, i64 0, i32 2
  store i16 %2823, ptr %2824, align 2, !tbaa !69
  %2825 = getelementptr inbounds i16, ptr %2819, i64 2
  %2826 = load i16, ptr %2822, align 2, !tbaa !85, !noalias !325
  %2827 = getelementptr inbounds %struct._PixelPacket, ptr %2821, i64 0, i32 1
  store i16 %2826, ptr %2827, align 2, !tbaa !68
  %2828 = load i16, ptr %2825, align 2, !tbaa !85, !noalias !325
  store i16 %2828, ptr %2821, align 2, !tbaa !67
  %2829 = getelementptr inbounds i16, ptr %2819, i64 4
  %2830 = getelementptr inbounds %struct._PixelPacket, ptr %2821, i64 1
  %2831 = add nuw nsw i64 %2820, 1
  %2832 = icmp eq i64 %2831, %3
  br i1 %2832, label %2833, label %2818, !llvm.loop !340

2833:                                             ; preds = %2818, %2817
  %2834 = phi ptr [ %2813, %2817 ], [ %2829, %2818 ]
  %2835 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2836 = icmp eq i32 %2835, 0
  %2837 = add nuw nsw i64 %2812, 1
  %2838 = icmp eq i64 %2837, %4
  %2839 = select i1 %2836, i1 true, i1 %2838
  br i1 %2839, label %3229, label %2811, !llvm.loop !341

2840:                                             ; preds = %2804
  %2841 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !325
  %2842 = icmp sgt i64 %4, 0
  br i1 %2842, label %2843, label %3229

2843:                                             ; preds = %2840
  %2844 = icmp sgt i64 %3, 0
  %2845 = icmp sgt i64 %2841, 0
  br label %2846

2846:                                             ; preds = %2898, %2843
  %2847 = phi i64 [ 0, %2843 ], [ %2902, %2898 ]
  %2848 = phi ptr [ %7, %2843 ], [ %2899, %2898 ]
  %2849 = add nsw i64 %2847, %2
  %2850 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2849, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2851 = icmp eq ptr %2850, null
  br i1 %2851, label %3229, label %2852

2852:                                             ; preds = %2846
  %2853 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #19
  br i1 %2844, label %2854, label %2898

2854:                                             ; preds = %2852
  %2855 = icmp eq ptr %2853, null
  br label %2856

2856:                                             ; preds = %2854, %2893
  %2857 = phi ptr [ %2848, %2854 ], [ %2894, %2893 ]
  %2858 = phi i64 [ 0, %2854 ], [ %2896, %2893 ]
  %2859 = phi ptr [ %2850, %2854 ], [ %2895, %2893 ]
  br i1 %2845, label %2860, label %2893

2860:                                             ; preds = %2856
  %2861 = getelementptr inbounds %struct._PixelPacket, ptr %2859, i64 0, i32 2
  %2862 = getelementptr inbounds %struct._PixelPacket, ptr %2859, i64 0, i32 1
  %2863 = getelementptr inbounds i16, ptr %2853, i64 %2858
  %2864 = getelementptr inbounds %struct._PixelPacket, ptr %2859, i64 0, i32 3
  %2865 = getelementptr inbounds %struct._PixelPacket, ptr %2859, i64 0, i32 3
  %2866 = getelementptr inbounds %struct._PixelPacket, ptr %2859, i64 0, i32 1
  %2867 = getelementptr inbounds %struct._PixelPacket, ptr %2859, i64 0, i32 2
  br label %2868

2868:                                             ; preds = %2860, %2889
  %2869 = phi i64 [ 0, %2860 ], [ %2891, %2889 ]
  %2870 = phi ptr [ %2857, %2860 ], [ %2890, %2889 ]
  %2871 = getelementptr inbounds i32, ptr %17, i64 %2869
  %2872 = load i32, ptr %2871, align 4, !tbaa !34, !noalias !325
  switch i32 %2872, label %2889 [
    i32 14, label %2873
    i32 6, label %2873
    i32 9, label %2875
    i32 12, label %2875
    i32 3, label %2877
    i32 19, label %2877
    i32 1, label %2879
    i32 13, label %2882
    i32 2, label %2884
    i32 11, label %2887
  ]

2873:                                             ; preds = %2868, %2868
  %2874 = load i16, ptr %2870, align 2, !tbaa !85, !noalias !325
  store i16 %2874, ptr %2867, align 2, !tbaa !69
  br label %2889

2875:                                             ; preds = %2868, %2868
  %2876 = load i16, ptr %2870, align 2, !tbaa !85, !noalias !325
  store i16 %2876, ptr %2866, align 2, !tbaa !68
  br label %2889

2877:                                             ; preds = %2868, %2868
  %2878 = load i16, ptr %2870, align 2, !tbaa !85, !noalias !325
  store i16 %2878, ptr %2859, align 2, !tbaa !67
  br label %2889

2879:                                             ; preds = %2868
  %2880 = load i16, ptr %2870, align 2, !tbaa !85, !noalias !325
  %2881 = xor i16 %2880, -1
  store i16 %2881, ptr %2865, align 2, !tbaa !72
  br label %2889

2882:                                             ; preds = %2868
  %2883 = load i16, ptr %2870, align 2, !tbaa !85, !noalias !325
  store i16 %2883, ptr %2864, align 2, !tbaa !72
  br label %2889

2884:                                             ; preds = %2868
  br i1 %2855, label %2889, label %2885

2885:                                             ; preds = %2884
  %2886 = load i16, ptr %2870, align 2, !tbaa !85, !noalias !325
  store i16 %2886, ptr %2863, align 2, !tbaa !85
  br label %2889

2887:                                             ; preds = %2868
  %2888 = load i16, ptr %2870, align 2, !tbaa !85, !noalias !325
  store i16 %2888, ptr %2861, align 2, !tbaa !69
  store i16 %2888, ptr %2862, align 2, !tbaa !68
  store i16 %2888, ptr %2859, align 2, !tbaa !67
  br label %2889

2889:                                             ; preds = %2887, %2885, %2884, %2882, %2879, %2877, %2875, %2873, %2868
  %2890 = getelementptr inbounds i16, ptr %2870, i64 1
  %2891 = add nuw nsw i64 %2869, 1
  %2892 = icmp eq i64 %2891, %2841
  br i1 %2892, label %2893, label %2868, !llvm.loop !342

2893:                                             ; preds = %2889, %2856
  %2894 = phi ptr [ %2857, %2856 ], [ %2890, %2889 ]
  %2895 = getelementptr inbounds %struct._PixelPacket, ptr %2859, i64 1
  %2896 = add nuw nsw i64 %2858, 1
  %2897 = icmp eq i64 %2896, %3
  br i1 %2897, label %2898, label %2856, !llvm.loop !343

2898:                                             ; preds = %2893, %2852
  %2899 = phi ptr [ %2848, %2852 ], [ %2894, %2893 ]
  %2900 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2901 = icmp eq i32 %2900, 0
  %2902 = add nuw nsw i64 %2847, 1
  %2903 = icmp eq i64 %2902, %4
  %2904 = select i1 %2901, i1 true, i1 %2903
  br i1 %2904, label %3229, label %2846, !llvm.loop !344

2905:                                             ; preds = %71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %2906 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %2907 = icmp eq i32 %2906, 0
  br i1 %2907, label %2908, label %2941

2908:                                             ; preds = %2905
  %2909 = icmp sgt i64 %4, 0
  br i1 %2909, label %2910, label %3229

2910:                                             ; preds = %2908
  %2911 = icmp sgt i64 %3, 0
  br label %2912

2912:                                             ; preds = %2934, %2910
  %2913 = phi i64 [ 0, %2910 ], [ %2938, %2934 ]
  %2914 = phi ptr [ %7, %2910 ], [ %2935, %2934 ]
  %2915 = add nsw i64 %2913, %2
  %2916 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2915, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2917 = icmp eq ptr %2916, null
  br i1 %2917, label %3229, label %2918

2918:                                             ; preds = %2912
  br i1 %2911, label %2919, label %2934

2919:                                             ; preds = %2918, %2919
  %2920 = phi ptr [ %2928, %2919 ], [ %2914, %2918 ]
  %2921 = phi i64 [ %2932, %2919 ], [ 0, %2918 ]
  %2922 = phi ptr [ %2931, %2919 ], [ %2916, %2918 ]
  %2923 = getelementptr inbounds i16, ptr %2920, i64 1
  %2924 = load i16, ptr %2920, align 2, !tbaa !85, !noalias !345
  store i16 %2924, ptr %2922, align 2, !tbaa !67
  %2925 = getelementptr inbounds i16, ptr %2920, i64 2
  %2926 = load i16, ptr %2923, align 2, !tbaa !85, !noalias !345
  %2927 = getelementptr inbounds %struct._PixelPacket, ptr %2922, i64 0, i32 1
  store i16 %2926, ptr %2927, align 2, !tbaa !68
  %2928 = getelementptr inbounds i16, ptr %2920, i64 3
  %2929 = load i16, ptr %2925, align 2, !tbaa !85, !noalias !345
  %2930 = getelementptr inbounds %struct._PixelPacket, ptr %2922, i64 0, i32 2
  store i16 %2929, ptr %2930, align 2, !tbaa !69
  %2931 = getelementptr inbounds %struct._PixelPacket, ptr %2922, i64 1
  %2932 = add nuw nsw i64 %2921, 1
  %2933 = icmp eq i64 %2932, %3
  br i1 %2933, label %2934, label %2919, !llvm.loop !348

2934:                                             ; preds = %2919, %2918
  %2935 = phi ptr [ %2914, %2918 ], [ %2928, %2919 ]
  %2936 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2937 = icmp eq i32 %2936, 0
  %2938 = add nuw nsw i64 %2913, 1
  %2939 = icmp eq i64 %2938, %4
  %2940 = select i1 %2937, i1 true, i1 %2939
  br i1 %2940, label %3229, label %2912, !llvm.loop !349

2941:                                             ; preds = %2905
  %2942 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.10) #19
  %2943 = icmp eq i32 %2942, 0
  br i1 %2943, label %2944, label %2981

2944:                                             ; preds = %2941
  %2945 = icmp sgt i64 %4, 0
  br i1 %2945, label %2946, label %3229

2946:                                             ; preds = %2944
  %2947 = icmp sgt i64 %3, 0
  br label %2948

2948:                                             ; preds = %2974, %2946
  %2949 = phi i64 [ 0, %2946 ], [ %2978, %2974 ]
  %2950 = phi ptr [ %7, %2946 ], [ %2975, %2974 ]
  %2951 = add nsw i64 %2949, %2
  %2952 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2951, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2953 = icmp eq ptr %2952, null
  br i1 %2953, label %3229, label %2954

2954:                                             ; preds = %2948
  br i1 %2947, label %2955, label %2974

2955:                                             ; preds = %2954, %2955
  %2956 = phi ptr [ %2967, %2955 ], [ %2950, %2954 ]
  %2957 = phi i64 [ %2972, %2955 ], [ 0, %2954 ]
  %2958 = phi ptr [ %2971, %2955 ], [ %2952, %2954 ]
  %2959 = getelementptr inbounds i16, ptr %2956, i64 1
  %2960 = load i16, ptr %2956, align 2, !tbaa !85, !noalias !345
  store i16 %2960, ptr %2958, align 2, !tbaa !67
  %2961 = getelementptr inbounds i16, ptr %2956, i64 2
  %2962 = load i16, ptr %2959, align 2, !tbaa !85, !noalias !345
  %2963 = getelementptr inbounds %struct._PixelPacket, ptr %2958, i64 0, i32 1
  store i16 %2962, ptr %2963, align 2, !tbaa !68
  %2964 = getelementptr inbounds i16, ptr %2956, i64 3
  %2965 = load i16, ptr %2961, align 2, !tbaa !85, !noalias !345
  %2966 = getelementptr inbounds %struct._PixelPacket, ptr %2958, i64 0, i32 2
  store i16 %2965, ptr %2966, align 2, !tbaa !69
  %2967 = getelementptr inbounds i16, ptr %2956, i64 4
  %2968 = load i16, ptr %2964, align 2, !tbaa !85, !noalias !345
  %2969 = xor i16 %2968, -1
  %2970 = getelementptr inbounds %struct._PixelPacket, ptr %2958, i64 0, i32 3
  store i16 %2969, ptr %2970, align 2, !tbaa !72
  %2971 = getelementptr inbounds %struct._PixelPacket, ptr %2958, i64 1
  %2972 = add nuw nsw i64 %2957, 1
  %2973 = icmp eq i64 %2972, %3
  br i1 %2973, label %2974, label %2955, !llvm.loop !350

2974:                                             ; preds = %2955, %2954
  %2975 = phi ptr [ %2950, %2954 ], [ %2967, %2955 ]
  %2976 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %2977 = icmp eq i32 %2976, 0
  %2978 = add nuw nsw i64 %2949, 1
  %2979 = icmp eq i64 %2978, %4
  %2980 = select i1 %2977, i1 true, i1 %2979
  br i1 %2980, label %3229, label %2948, !llvm.loop !351

2981:                                             ; preds = %2941
  %2982 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.11) #19
  %2983 = icmp eq i32 %2982, 0
  br i1 %2983, label %2984, label %3017

2984:                                             ; preds = %2981
  %2985 = icmp sgt i64 %4, 0
  br i1 %2985, label %2986, label %3229

2986:                                             ; preds = %2984
  %2987 = icmp sgt i64 %3, 0
  br label %2988

2988:                                             ; preds = %3010, %2986
  %2989 = phi i64 [ 0, %2986 ], [ %3014, %3010 ]
  %2990 = phi ptr [ %7, %2986 ], [ %3011, %3010 ]
  %2991 = add nsw i64 %2989, %2
  %2992 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %2991, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %2993 = icmp eq ptr %2992, null
  br i1 %2993, label %3229, label %2994

2994:                                             ; preds = %2988
  br i1 %2987, label %2995, label %3010

2995:                                             ; preds = %2994, %2995
  %2996 = phi ptr [ %3006, %2995 ], [ %2990, %2994 ]
  %2997 = phi i64 [ %3008, %2995 ], [ 0, %2994 ]
  %2998 = phi ptr [ %3007, %2995 ], [ %2992, %2994 ]
  %2999 = getelementptr inbounds i16, ptr %2996, i64 1
  %3000 = load i16, ptr %2996, align 2, !tbaa !85, !noalias !345
  store i16 %3000, ptr %2998, align 2, !tbaa !67
  %3001 = getelementptr inbounds i16, ptr %2996, i64 2
  %3002 = load i16, ptr %2999, align 2, !tbaa !85, !noalias !345
  %3003 = getelementptr inbounds %struct._PixelPacket, ptr %2998, i64 0, i32 1
  store i16 %3002, ptr %3003, align 2, !tbaa !68
  %3004 = load i16, ptr %3001, align 2, !tbaa !85, !noalias !345
  %3005 = getelementptr inbounds %struct._PixelPacket, ptr %2998, i64 0, i32 2
  store i16 %3004, ptr %3005, align 2, !tbaa !69
  %3006 = getelementptr inbounds i16, ptr %2996, i64 4
  %3007 = getelementptr inbounds %struct._PixelPacket, ptr %2998, i64 1
  %3008 = add nuw nsw i64 %2997, 1
  %3009 = icmp eq i64 %3008, %3
  br i1 %3009, label %3010, label %2995, !llvm.loop !352

3010:                                             ; preds = %2995, %2994
  %3011 = phi ptr [ %2990, %2994 ], [ %3006, %2995 ]
  %3012 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %3013 = icmp eq i32 %3012, 0
  %3014 = add nuw nsw i64 %2989, 1
  %3015 = icmp eq i64 %3014, %4
  %3016 = select i1 %3013, i1 true, i1 %3015
  br i1 %3016, label %3229, label %2988, !llvm.loop !353

3017:                                             ; preds = %2981
  %3018 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.12) #19
  %3019 = icmp eq i32 %3018, 0
  br i1 %3019, label %3020, label %3049

3020:                                             ; preds = %3017
  %3021 = icmp sgt i64 %4, 0
  br i1 %3021, label %3022, label %3229

3022:                                             ; preds = %3020
  %3023 = icmp sgt i64 %3, 0
  br label %3024

3024:                                             ; preds = %3042, %3022
  %3025 = phi i64 [ 0, %3022 ], [ %3046, %3042 ]
  %3026 = phi ptr [ %7, %3022 ], [ %3043, %3042 ]
  %3027 = add nsw i64 %3025, %2
  %3028 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %3027, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %3029 = icmp eq ptr %3028, null
  br i1 %3029, label %3229, label %3030

3030:                                             ; preds = %3024
  br i1 %3023, label %3031, label %3042

3031:                                             ; preds = %3030, %3031
  %3032 = phi ptr [ %3035, %3031 ], [ %3026, %3030 ]
  %3033 = phi i64 [ %3040, %3031 ], [ 0, %3030 ]
  %3034 = phi ptr [ %3039, %3031 ], [ %3028, %3030 ]
  %3035 = getelementptr inbounds i16, ptr %3032, i64 1
  %3036 = load i16, ptr %3032, align 2, !tbaa !85, !noalias !345
  %3037 = getelementptr inbounds %struct._PixelPacket, ptr %3034, i64 0, i32 2
  store i16 %3036, ptr %3037, align 2, !tbaa !69
  %3038 = getelementptr inbounds %struct._PixelPacket, ptr %3034, i64 0, i32 1
  store i16 %3036, ptr %3038, align 2, !tbaa !68
  store i16 %3036, ptr %3034, align 2, !tbaa !67
  %3039 = getelementptr inbounds %struct._PixelPacket, ptr %3034, i64 1
  %3040 = add nuw nsw i64 %3033, 1
  %3041 = icmp eq i64 %3040, %3
  br i1 %3041, label %3042, label %3031, !llvm.loop !354

3042:                                             ; preds = %3031, %3030
  %3043 = phi ptr [ %3026, %3030 ], [ %3035, %3031 ]
  %3044 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %3045 = icmp eq i32 %3044, 0
  %3046 = add nuw nsw i64 %3025, 1
  %3047 = icmp eq i64 %3046, %4
  %3048 = select i1 %3045, i1 true, i1 %3047
  br i1 %3048, label %3229, label %3024, !llvm.loop !355

3049:                                             ; preds = %3017
  %3050 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.13) #19
  %3051 = icmp eq i32 %3050, 0
  br i1 %3051, label %3052, label %3085

3052:                                             ; preds = %3049
  %3053 = icmp sgt i64 %4, 0
  br i1 %3053, label %3054, label %3229

3054:                                             ; preds = %3052
  %3055 = icmp sgt i64 %3, 0
  br label %3056

3056:                                             ; preds = %3078, %3054
  %3057 = phi i64 [ 0, %3054 ], [ %3082, %3078 ]
  %3058 = phi ptr [ %7, %3054 ], [ %3079, %3078 ]
  %3059 = add nsw i64 %3057, %2
  %3060 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %3059, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %3061 = icmp eq ptr %3060, null
  br i1 %3061, label %3229, label %3062

3062:                                             ; preds = %3056
  br i1 %3055, label %3063, label %3078

3063:                                             ; preds = %3062, %3063
  %3064 = phi ptr [ %3073, %3063 ], [ %3058, %3062 ]
  %3065 = phi i64 [ %3076, %3063 ], [ 0, %3062 ]
  %3066 = phi ptr [ %3075, %3063 ], [ %3060, %3062 ]
  %3067 = getelementptr inbounds i16, ptr %3064, i64 1
  %3068 = load i16, ptr %3064, align 2, !tbaa !85, !noalias !345
  %3069 = getelementptr inbounds %struct._PixelPacket, ptr %3066, i64 0, i32 2
  store i16 %3068, ptr %3069, align 2, !tbaa !69
  %3070 = getelementptr inbounds i16, ptr %3064, i64 2
  %3071 = load i16, ptr %3067, align 2, !tbaa !85, !noalias !345
  %3072 = getelementptr inbounds %struct._PixelPacket, ptr %3066, i64 0, i32 1
  store i16 %3071, ptr %3072, align 2, !tbaa !68
  %3073 = getelementptr inbounds i16, ptr %3064, i64 3
  %3074 = load i16, ptr %3070, align 2, !tbaa !85, !noalias !345
  store i16 %3074, ptr %3066, align 2, !tbaa !67
  %3075 = getelementptr inbounds %struct._PixelPacket, ptr %3066, i64 1
  %3076 = add nuw nsw i64 %3065, 1
  %3077 = icmp eq i64 %3076, %3
  br i1 %3077, label %3078, label %3063, !llvm.loop !356

3078:                                             ; preds = %3063, %3062
  %3079 = phi ptr [ %3058, %3062 ], [ %3073, %3063 ]
  %3080 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %3081 = icmp eq i32 %3080, 0
  %3082 = add nuw nsw i64 %3057, 1
  %3083 = icmp eq i64 %3082, %4
  %3084 = select i1 %3081, i1 true, i1 %3083
  br i1 %3084, label %3229, label %3056, !llvm.loop !357

3085:                                             ; preds = %3049
  %3086 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.14) #19
  %3087 = icmp eq i32 %3086, 0
  br i1 %3087, label %3088, label %3125

3088:                                             ; preds = %3085
  %3089 = icmp sgt i64 %4, 0
  br i1 %3089, label %3090, label %3229

3090:                                             ; preds = %3088
  %3091 = icmp sgt i64 %3, 0
  br label %3092

3092:                                             ; preds = %3118, %3090
  %3093 = phi i64 [ 0, %3090 ], [ %3122, %3118 ]
  %3094 = phi ptr [ %7, %3090 ], [ %3119, %3118 ]
  %3095 = add nsw i64 %3093, %2
  %3096 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %3095, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %3097 = icmp eq ptr %3096, null
  br i1 %3097, label %3229, label %3098

3098:                                             ; preds = %3092
  br i1 %3091, label %3099, label %3118

3099:                                             ; preds = %3098, %3099
  %3100 = phi ptr [ %3111, %3099 ], [ %3094, %3098 ]
  %3101 = phi i64 [ %3116, %3099 ], [ 0, %3098 ]
  %3102 = phi ptr [ %3115, %3099 ], [ %3096, %3098 ]
  %3103 = getelementptr inbounds i16, ptr %3100, i64 1
  %3104 = load i16, ptr %3100, align 2, !tbaa !85, !noalias !345
  %3105 = getelementptr inbounds %struct._PixelPacket, ptr %3102, i64 0, i32 2
  store i16 %3104, ptr %3105, align 2, !tbaa !69
  %3106 = getelementptr inbounds i16, ptr %3100, i64 2
  %3107 = load i16, ptr %3103, align 2, !tbaa !85, !noalias !345
  %3108 = getelementptr inbounds %struct._PixelPacket, ptr %3102, i64 0, i32 1
  store i16 %3107, ptr %3108, align 2, !tbaa !68
  %3109 = getelementptr inbounds i16, ptr %3100, i64 3
  %3110 = load i16, ptr %3106, align 2, !tbaa !85, !noalias !345
  store i16 %3110, ptr %3102, align 2, !tbaa !67
  %3111 = getelementptr inbounds i16, ptr %3100, i64 4
  %3112 = load i16, ptr %3109, align 2, !tbaa !85, !noalias !345
  %3113 = xor i16 %3112, -1
  %3114 = getelementptr inbounds %struct._PixelPacket, ptr %3102, i64 0, i32 3
  store i16 %3113, ptr %3114, align 2, !tbaa !72
  %3115 = getelementptr inbounds %struct._PixelPacket, ptr %3102, i64 1
  %3116 = add nuw nsw i64 %3101, 1
  %3117 = icmp eq i64 %3116, %3
  br i1 %3117, label %3118, label %3099, !llvm.loop !358

3118:                                             ; preds = %3099, %3098
  %3119 = phi ptr [ %3094, %3098 ], [ %3111, %3099 ]
  %3120 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %3121 = icmp eq i32 %3120, 0
  %3122 = add nuw nsw i64 %3093, 1
  %3123 = icmp eq i64 %3122, %4
  %3124 = select i1 %3121, i1 true, i1 %3123
  br i1 %3124, label %3229, label %3092, !llvm.loop !359

3125:                                             ; preds = %3085
  %3126 = tail call i32 @LocaleCompare(ptr noundef %5, ptr noundef nonnull @.str.15) #19
  %3127 = icmp eq i32 %3126, 0
  br i1 %3127, label %3128, label %3161

3128:                                             ; preds = %3125
  %3129 = icmp sgt i64 %4, 0
  br i1 %3129, label %3130, label %3229

3130:                                             ; preds = %3128
  %3131 = icmp sgt i64 %3, 0
  br label %3132

3132:                                             ; preds = %3154, %3130
  %3133 = phi i64 [ 0, %3130 ], [ %3158, %3154 ]
  %3134 = phi ptr [ %7, %3130 ], [ %3155, %3154 ]
  %3135 = add nsw i64 %3133, %2
  %3136 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %3135, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %3137 = icmp eq ptr %3136, null
  br i1 %3137, label %3229, label %3138

3138:                                             ; preds = %3132
  br i1 %3131, label %3139, label %3154

3139:                                             ; preds = %3138, %3139
  %3140 = phi ptr [ %3150, %3139 ], [ %3134, %3138 ]
  %3141 = phi i64 [ %3152, %3139 ], [ 0, %3138 ]
  %3142 = phi ptr [ %3151, %3139 ], [ %3136, %3138 ]
  %3143 = getelementptr inbounds i16, ptr %3140, i64 1
  %3144 = load i16, ptr %3140, align 2, !tbaa !85, !noalias !345
  %3145 = getelementptr inbounds %struct._PixelPacket, ptr %3142, i64 0, i32 2
  store i16 %3144, ptr %3145, align 2, !tbaa !69
  %3146 = getelementptr inbounds i16, ptr %3140, i64 2
  %3147 = load i16, ptr %3143, align 2, !tbaa !85, !noalias !345
  %3148 = getelementptr inbounds %struct._PixelPacket, ptr %3142, i64 0, i32 1
  store i16 %3147, ptr %3148, align 2, !tbaa !68
  %3149 = load i16, ptr %3146, align 2, !tbaa !85, !noalias !345
  store i16 %3149, ptr %3142, align 2, !tbaa !67
  %3150 = getelementptr inbounds i16, ptr %3140, i64 4
  %3151 = getelementptr inbounds %struct._PixelPacket, ptr %3142, i64 1
  %3152 = add nuw nsw i64 %3141, 1
  %3153 = icmp eq i64 %3152, %3
  br i1 %3153, label %3154, label %3139, !llvm.loop !360

3154:                                             ; preds = %3139, %3138
  %3155 = phi ptr [ %3134, %3138 ], [ %3150, %3139 ]
  %3156 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %3157 = icmp eq i32 %3156, 0
  %3158 = add nuw nsw i64 %3133, 1
  %3159 = icmp eq i64 %3158, %4
  %3160 = select i1 %3157, i1 true, i1 %3159
  br i1 %3160, label %3229, label %3132, !llvm.loop !361

3161:                                             ; preds = %3125
  %3162 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #22, !alias.scope !345
  %3163 = icmp sgt i64 %4, 0
  br i1 %3163, label %3164, label %3229

3164:                                             ; preds = %3161
  %3165 = icmp sgt i64 %3, 0
  %3166 = icmp sgt i64 %3162, 0
  br label %3167

3167:                                             ; preds = %3219, %3164
  %3168 = phi i64 [ 0, %3164 ], [ %3223, %3219 ]
  %3169 = phi ptr [ %7, %3164 ], [ %3220, %3219 ]
  %3170 = add nsw i64 %3168, %2
  %3171 = tail call ptr @GetAuthenticPixels(ptr noundef %0, i64 noundef %1, i64 noundef %3170, i64 noundef %3, i64 noundef 1, ptr noundef nonnull %72) #19
  %3172 = icmp eq ptr %3171, null
  br i1 %3172, label %3229, label %3173

3173:                                             ; preds = %3167
  %3174 = tail call ptr @GetAuthenticIndexQueue(ptr noundef %0) #19
  br i1 %3165, label %3175, label %3219

3175:                                             ; preds = %3173
  %3176 = icmp eq ptr %3174, null
  br label %3177

3177:                                             ; preds = %3175, %3214
  %3178 = phi ptr [ %3169, %3175 ], [ %3215, %3214 ]
  %3179 = phi i64 [ 0, %3175 ], [ %3217, %3214 ]
  %3180 = phi ptr [ %3171, %3175 ], [ %3216, %3214 ]
  br i1 %3166, label %3181, label %3214

3181:                                             ; preds = %3177
  %3182 = getelementptr inbounds %struct._PixelPacket, ptr %3180, i64 0, i32 2
  %3183 = getelementptr inbounds %struct._PixelPacket, ptr %3180, i64 0, i32 1
  %3184 = getelementptr inbounds i16, ptr %3174, i64 %3179
  %3185 = getelementptr inbounds %struct._PixelPacket, ptr %3180, i64 0, i32 3
  %3186 = getelementptr inbounds %struct._PixelPacket, ptr %3180, i64 0, i32 3
  %3187 = getelementptr inbounds %struct._PixelPacket, ptr %3180, i64 0, i32 1
  %3188 = getelementptr inbounds %struct._PixelPacket, ptr %3180, i64 0, i32 2
  br label %3189

3189:                                             ; preds = %3181, %3210
  %3190 = phi i64 [ 0, %3181 ], [ %3212, %3210 ]
  %3191 = phi ptr [ %3178, %3181 ], [ %3211, %3210 ]
  %3192 = getelementptr inbounds i32, ptr %17, i64 %3190
  %3193 = load i32, ptr %3192, align 4, !tbaa !34, !noalias !345
  switch i32 %3193, label %3210 [
    i32 14, label %3194
    i32 6, label %3194
    i32 9, label %3196
    i32 12, label %3196
    i32 3, label %3198
    i32 19, label %3198
    i32 1, label %3200
    i32 13, label %3203
    i32 2, label %3205
    i32 11, label %3208
  ]

3194:                                             ; preds = %3189, %3189
  %3195 = load i16, ptr %3191, align 2, !tbaa !85, !noalias !345
  store i16 %3195, ptr %3188, align 2, !tbaa !69
  br label %3210

3196:                                             ; preds = %3189, %3189
  %3197 = load i16, ptr %3191, align 2, !tbaa !85, !noalias !345
  store i16 %3197, ptr %3187, align 2, !tbaa !68
  br label %3210

3198:                                             ; preds = %3189, %3189
  %3199 = load i16, ptr %3191, align 2, !tbaa !85, !noalias !345
  store i16 %3199, ptr %3180, align 2, !tbaa !67
  br label %3210

3200:                                             ; preds = %3189
  %3201 = load i16, ptr %3191, align 2, !tbaa !85, !noalias !345
  %3202 = xor i16 %3201, -1
  store i16 %3202, ptr %3186, align 2, !tbaa !72
  br label %3210

3203:                                             ; preds = %3189
  %3204 = load i16, ptr %3191, align 2, !tbaa !85, !noalias !345
  store i16 %3204, ptr %3185, align 2, !tbaa !72
  br label %3210

3205:                                             ; preds = %3189
  br i1 %3176, label %3210, label %3206

3206:                                             ; preds = %3205
  %3207 = load i16, ptr %3191, align 2, !tbaa !85, !noalias !345
  store i16 %3207, ptr %3184, align 2, !tbaa !85
  br label %3210

3208:                                             ; preds = %3189
  %3209 = load i16, ptr %3191, align 2, !tbaa !85, !noalias !345
  store i16 %3209, ptr %3182, align 2, !tbaa !69
  store i16 %3209, ptr %3183, align 2, !tbaa !68
  store i16 %3209, ptr %3180, align 2, !tbaa !67
  br label %3210

3210:                                             ; preds = %3208, %3206, %3205, %3203, %3200, %3198, %3196, %3194, %3189
  %3211 = getelementptr inbounds i16, ptr %3191, i64 1
  %3212 = add nuw nsw i64 %3190, 1
  %3213 = icmp eq i64 %3212, %3162
  br i1 %3213, label %3214, label %3189, !llvm.loop !362

3214:                                             ; preds = %3210, %3177
  %3215 = phi ptr [ %3178, %3177 ], [ %3211, %3210 ]
  %3216 = getelementptr inbounds %struct._PixelPacket, ptr %3180, i64 1
  %3217 = add nuw nsw i64 %3179, 1
  %3218 = icmp eq i64 %3217, %3
  br i1 %3218, label %3219, label %3177, !llvm.loop !363

3219:                                             ; preds = %3214, %3173
  %3220 = phi ptr [ %3169, %3173 ], [ %3215, %3214 ]
  %3221 = tail call i32 @SyncAuthenticPixels(ptr noundef %0, ptr noundef nonnull %72) #19
  %3222 = icmp eq i32 %3221, 0
  %3223 = add nuw nsw i64 %3168, 1
  %3224 = icmp eq i64 %3223, %4
  %3225 = select i1 %3222, i1 true, i1 %3224
  br i1 %3225, label %3229, label %3167, !llvm.loop !364

3226:                                             ; preds = %71
  %3227 = tail call ptr @RelinquishMagickMemory(ptr noundef %17) #19
  %3228 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %72, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 4104, i32 noundef 410, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %6) #19
  br label %3229

3229:                                             ; preds = %3167, %3219, %3132, %3154, %3092, %3118, %3056, %3078, %3024, %3042, %2988, %3010, %2948, %2974, %2912, %2934, %2846, %2898, %2811, %2833, %2771, %2797, %2735, %2757, %2703, %2721, %2667, %2689, %2627, %2653, %2591, %2613, %2497, %2577, %2450, %2484, %2394, %2436, %2346, %2380, %2310, %2332, %2262, %2296, %2206, %2248, %2158, %2192, %2064, %2144, %2017, %2051, %1961, %2003, %1913, %1947, %1877, %1899, %1829, %1863, %1773, %1815, %1725, %1759, %1596, %1711, %1534, %1583, %1458, %1520, %1395, %1444, %1354, %1381, %1291, %1340, %1215, %1277, %1152, %1201, %1016, %1138, %951, %1003, %871, %937, %805, %857, %763, %791, %697, %749, %617, %683, %551, %603, %471, %537, %430, %458, %383, %416, %335, %369, %293, %321, %259, %279, %217, %245, %170, %203, %122, %156, %80, %108, %3161, %3128, %3088, %3052, %3020, %2984, %2944, %2908, %2840, %2807, %2767, %2731, %2699, %2663, %2623, %2587, %2491, %2446, %2390, %2342, %2306, %2258, %2202, %2154, %2058, %2013, %1957, %1909, %1873, %1825, %1769, %1721, %1590, %1530, %1454, %1391, %1350, %1287, %1211, %1148, %1010, %947, %867, %801, %759, %693, %613, %547, %465, %426, %379, %331, %289, %255, %213, %166, %118, %76, %3226
  %3230 = phi ptr [ %3227, %3226 ], [ %17, %76 ], [ %17, %118 ], [ %17, %166 ], [ %17, %213 ], [ %17, %255 ], [ %17, %289 ], [ %17, %331 ], [ %17, %379 ], [ %17, %426 ], [ %17, %465 ], [ %17, %547 ], [ %17, %613 ], [ %17, %693 ], [ %17, %759 ], [ %17, %801 ], [ %17, %867 ], [ %17, %947 ], [ %17, %1010 ], [ %17, %1148 ], [ %17, %1211 ], [ %17, %1287 ], [ %17, %1350 ], [ %17, %1391 ], [ %17, %1454 ], [ %17, %1530 ], [ %17, %1590 ], [ %17, %1721 ], [ %17, %1769 ], [ %17, %1825 ], [ %17, %1873 ], [ %17, %1909 ], [ %17, %1957 ], [ %17, %2013 ], [ %17, %2058 ], [ %17, %2154 ], [ %17, %2202 ], [ %17, %2258 ], [ %17, %2306 ], [ %17, %2342 ], [ %17, %2390 ], [ %17, %2446 ], [ %17, %2491 ], [ %17, %2587 ], [ %17, %2623 ], [ %17, %2663 ], [ %17, %2699 ], [ %17, %2731 ], [ %17, %2767 ], [ %17, %2807 ], [ %17, %2840 ], [ %17, %2908 ], [ %17, %2944 ], [ %17, %2984 ], [ %17, %3020 ], [ %17, %3052 ], [ %17, %3088 ], [ %17, %3128 ], [ %17, %3161 ], [ %17, %108 ], [ %17, %80 ], [ %17, %156 ], [ %17, %122 ], [ %17, %203 ], [ %17, %170 ], [ %17, %245 ], [ %17, %217 ], [ %17, %279 ], [ %17, %259 ], [ %17, %321 ], [ %17, %293 ], [ %17, %369 ], [ %17, %335 ], [ %17, %416 ], [ %17, %383 ], [ %17, %458 ], [ %17, %430 ], [ %17, %537 ], [ %17, %471 ], [ %17, %603 ], [ %17, %551 ], [ %17, %683 ], [ %17, %617 ], [ %17, %749 ], [ %17, %697 ], [ %17, %791 ], [ %17, %763 ], [ %17, %857 ], [ %17, %805 ], [ %17, %937 ], [ %17, %871 ], [ %17, %1003 ], [ %17, %951 ], [ %17, %1138 ], [ %17, %1016 ], [ %17, %1201 ], [ %17, %1152 ], [ %17, %1277 ], [ %17, %1215 ], [ %17, %1340 ], [ %17, %1291 ], [ %17, %1381 ], [ %17, %1354 ], [ %17, %1444 ], [ %17, %1395 ], [ %17, %1520 ], [ %17, %1458 ], [ %17, %1583 ], [ %17, %1534 ], [ %17, %1711 ], [ %17, %1596 ], [ %17, %1759 ], [ %17, %1725 ], [ %17, %1815 ], [ %17, %1773 ], [ %17, %1863 ], [ %17, %1829 ], [ %17, %1899 ], [ %17, %1877 ], [ %17, %1947 ], [ %17, %1913 ], [ %17, %2003 ], [ %17, %1961 ], [ %17, %2051 ], [ %17, %2017 ], [ %17, %2144 ], [ %17, %2064 ], [ %17, %2192 ], [ %17, %2158 ], [ %17, %2248 ], [ %17, %2206 ], [ %17, %2296 ], [ %17, %2262 ], [ %17, %2332 ], [ %17, %2310 ], [ %17, %2380 ], [ %17, %2346 ], [ %17, %2436 ], [ %17, %2394 ], [ %17, %2484 ], [ %17, %2450 ], [ %17, %2577 ], [ %17, %2497 ], [ %17, %2613 ], [ %17, %2591 ], [ %17, %2653 ], [ %17, %2627 ], [ %17, %2689 ], [ %17, %2667 ], [ %17, %2721 ], [ %17, %2703 ], [ %17, %2757 ], [ %17, %2735 ], [ %17, %2797 ], [ %17, %2771 ], [ %17, %2833 ], [ %17, %2811 ], [ %17, %2898 ], [ %17, %2846 ], [ %17, %2934 ], [ %17, %2912 ], [ %17, %2974 ], [ %17, %2948 ], [ %17, %3010 ], [ %17, %2988 ], [ %17, %3042 ], [ %17, %3024 ], [ %17, %3078 ], [ %17, %3056 ], [ %17, %3118 ], [ %17, %3092 ], [ %17, %3154 ], [ %17, %3132 ], [ %17, %3219 ], [ %17, %3167 ]
  %3231 = tail call ptr @RelinquishMagickMemory(ptr noundef %3230) #19
  br label %3232

3232:                                             ; preds = %68, %24, %26, %3229, %61
  %3233 = phi i32 [ 0, %61 ], [ 1, %3229 ], [ 0, %26 ], [ 0, %24 ], [ 0, %68 ]
  ret i32 %3233
}

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [16 x %struct._MagickPixelPacket], align 16
  %9 = alloca [16 x float], align 16
  %10 = alloca %struct._RectangleInfo, align 8
  call void @llvm.lifetime.start.p0(i64 896, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #19
  %11 = tail call double @llvm.floor.f64(double %3)
  %12 = fptosi double %11 to i64
  %13 = tail call double @llvm.floor.f64(double %4)
  %14 = fptosi double %13 to i64
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 70
  %18 = load i32, ptr %17, align 8, !tbaa !365
  br label %19

19:                                               ; preds = %16, %7
  %20 = phi i32 [ %18, %16 ], [ %2, %7 ]
  switch i32 %20, label %229 [
    i32 7, label %1763
    i32 6, label %1110
    i32 5, label %1081
    i32 12, label %207
    i32 8, label %1798
    i32 11, label %465
    i32 13, label %691
    i32 2, label %691
    i32 4, label %1030
    i32 9, label %21
    i32 10, label %30
    i32 1, label %33
  ]

21:                                               ; preds = %19
  %22 = fadd double %3, 5.000000e-01
  %23 = tail call double @llvm.floor.f64(double %22)
  %24 = fadd double %23, -1.000000e+00
  %25 = fptosi double %24 to i64
  %26 = fadd double %4, 5.000000e-01
  %27 = tail call double @llvm.floor.f64(double %26)
  %28 = fadd double %27, -1.000000e+00
  %29 = fptosi double %28 to i64
  br label %33

30:                                               ; preds = %19
  %31 = add nsw i64 %12, -1
  %32 = add nsw i64 %14, -1
  br label %33

33:                                               ; preds = %19, %30, %21
  %34 = phi i64 [ %29, %21 ], [ %32, %30 ], [ %14, %19 ]
  %35 = phi i64 [ 3, %21 ], [ 4, %30 ], [ 2, %19 ]
  %36 = phi i64 [ %25, %21 ], [ %31, %30 ], [ %12, %19 ]
  %37 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %36, i64 noundef %34, i64 noundef %35, i64 noundef %35, ptr noundef %6) #24
  %38 = icmp eq ptr %37, null
  br i1 %38, label %2141, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #19
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %44 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %46 = mul nuw nsw i64 %35, %35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %41, i8 0, i64 20, i1 false)
  store i32 1, ptr %8, align 16, !tbaa !209
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 1
  store i32 13, ptr %47, align 4, !tbaa !211
  %48 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 2
  store i32 0, ptr %48, align 8, !tbaa !212
  %49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 3
  store double 0.000000e+00, ptr %49, align 16, !tbaa !213
  %50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 4
  store i64 16, ptr %50, align 8, !tbaa !214
  %51 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %52 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %56 = icmp eq ptr %0, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %51, i8 0, i64 20, i1 false)
  br i1 %56, label %67, label %57

57:                                               ; preds = %39
  %58 = load i32, ptr %0, align 8, !tbaa !215
  store i32 %58, ptr %8, align 16, !tbaa !209
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !60
  store i32 %60, ptr %47, align 4, !tbaa !211
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !216
  store i32 %62, ptr %48, align 8, !tbaa !212
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %64 = load i64, ptr %63, align 8, !tbaa !217
  store i64 %64, ptr %50, align 8, !tbaa !214
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %66 = load double, ptr %65, align 8, !tbaa !218
  store double %66, ptr %49, align 16, !tbaa !213
  br label %67

67:                                               ; preds = %39, %57
  %68 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !216
  %70 = icmp eq i32 %69, 0
  %71 = load float, ptr %41, align 8, !tbaa !366
  %72 = load float, ptr %42, align 4, !tbaa !367
  %73 = load float, ptr %43, align 8, !tbaa !368
  %74 = load float, ptr %45, align 8, !tbaa !369
  %75 = load float, ptr %44, align 4, !tbaa !370
  %76 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %77 = icmp ne ptr %40, null
  %78 = icmp eq ptr %40, null
  %79 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %80 = icmp ne ptr %40, null
  %81 = icmp eq ptr %40, null
  br label %82

82:                                               ; preds = %67, %163
  %83 = phi i64 [ 0, %67 ], [ %182, %163 ]
  %84 = phi float [ %71, %67 ], [ %168, %163 ]
  %85 = phi float [ %72, %67 ], [ %172, %163 ]
  %86 = phi float [ %73, %67 ], [ %176, %163 ]
  %87 = phi float [ %74, %67 ], [ %180, %163 ]
  %88 = phi float [ %75, %67 ], [ %181, %163 ]
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %83
  %90 = getelementptr inbounds i16, ptr %40, i64 %83
  br i1 %70, label %91, label %113

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %83, i32 2
  %93 = load i16, ptr %92, align 2, !tbaa !69
  %94 = uitofp i16 %93 to float
  store float %94, ptr %51, align 16, !tbaa !366
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %83, i32 1
  %96 = load i16, ptr %95, align 2, !tbaa !68
  %97 = uitofp i16 %96 to float
  store float %97, ptr %52, align 4, !tbaa !367
  %98 = load i16, ptr %89, align 2, !tbaa !67
  %99 = uitofp i16 %98 to float
  store float %99, ptr %53, align 8, !tbaa !368
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %83, i32 3
  %101 = load i16, ptr %100, align 2, !tbaa !72
  %102 = uitofp i16 %101 to float
  store float %102, ptr %54, align 4, !tbaa !370
  store float 0.000000e+00, ptr %55, align 16, !tbaa !369
  %103 = load i32, ptr %79, align 4, !tbaa !60
  %104 = icmp eq i32 %103, 12
  br i1 %104, label %109, label %105

105:                                              ; preds = %91
  %106 = load i32, ptr %0, align 8, !tbaa !215
  %107 = icmp eq i32 %106, 2
  %108 = and i1 %80, %107
  br i1 %108, label %110, label %150

109:                                              ; preds = %91
  br i1 %81, label %150, label %110

110:                                              ; preds = %109, %105
  %111 = load i16, ptr %90, align 2, !tbaa !85
  %112 = uitofp i16 %111 to float
  br label %143

113:                                              ; preds = %82
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %83, i32 3
  %115 = load i16, ptr %114, align 2, !tbaa !72
  %116 = xor i16 %115, -1
  %117 = uitofp i16 %116 to double
  %118 = fmul double %117, 0x3EF0001000100010
  %119 = fptrunc double %118 to float
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %83, i32 2
  %121 = load i16, ptr %120, align 2, !tbaa !69
  %122 = uitofp i16 %121 to float
  %123 = fmul float %119, %122
  store float %123, ptr %51, align 16, !tbaa !366
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %37, i64 %83, i32 1
  %125 = load i16, ptr %124, align 2, !tbaa !68
  %126 = uitofp i16 %125 to float
  %127 = fmul float %119, %126
  store float %127, ptr %52, align 4, !tbaa !367
  %128 = load i16, ptr %89, align 2, !tbaa !67
  %129 = uitofp i16 %128 to float
  %130 = fmul float %119, %129
  store float %130, ptr %53, align 8, !tbaa !368
  %131 = uitofp i16 %115 to float
  store float %131, ptr %54, align 4, !tbaa !370
  store float 0.000000e+00, ptr %55, align 16, !tbaa !369
  %132 = load i32, ptr %76, align 4, !tbaa !60
  %133 = icmp eq i32 %132, 12
  br i1 %133, label %138, label %134

134:                                              ; preds = %113
  %135 = load i32, ptr %0, align 8, !tbaa !215
  %136 = icmp eq i32 %135, 2
  %137 = and i1 %77, %136
  br i1 %137, label %139, label %150

138:                                              ; preds = %113
  br i1 %78, label %150, label %139

139:                                              ; preds = %138, %134
  %140 = load i16, ptr %90, align 2, !tbaa !85
  %141 = uitofp i16 %140 to float
  %142 = fmul float %119, %141
  br label %143

143:                                              ; preds = %139, %110
  %144 = phi float [ %112, %110 ], [ %142, %139 ]
  %145 = phi float [ %102, %110 ], [ %131, %139 ]
  %146 = phi float [ %99, %110 ], [ %130, %139 ]
  %147 = phi float [ %97, %110 ], [ %127, %139 ]
  %148 = phi float [ %94, %110 ], [ %123, %139 ]
  %149 = phi float [ 1.000000e+00, %110 ], [ %119, %139 ]
  store float %144, ptr %55, align 16, !tbaa !369
  br label %150

150:                                              ; preds = %143, %138, %105, %109, %134
  %151 = phi float [ 0.000000e+00, %138 ], [ 0.000000e+00, %105 ], [ 0.000000e+00, %109 ], [ 0.000000e+00, %134 ], [ %144, %143 ]
  %152 = phi float [ %131, %138 ], [ %102, %105 ], [ %102, %109 ], [ %131, %134 ], [ %145, %143 ]
  %153 = phi float [ %130, %138 ], [ %99, %105 ], [ %99, %109 ], [ %130, %134 ], [ %146, %143 ]
  %154 = phi float [ %127, %138 ], [ %97, %105 ], [ %97, %109 ], [ %127, %134 ], [ %147, %143 ]
  %155 = phi float [ %123, %138 ], [ %94, %105 ], [ %94, %109 ], [ %123, %134 ], [ %148, %143 ]
  %156 = phi float [ %119, %138 ], [ 1.000000e+00, %105 ], [ 1.000000e+00, %109 ], [ %119, %134 ], [ %149, %143 ]
  %157 = fcmp olt float %156, 0.000000e+00
  br i1 %157, label %163, label %158

158:                                              ; preds = %150
  %159 = fpext float %156 to double
  %160 = fcmp ult double %159, 1.000000e-15
  %161 = fdiv double 1.000000e+00, %159
  %162 = select i1 %160, double 0x430C6BF52633FFFF, double %161
  br label %163

163:                                              ; preds = %150, %158
  %164 = phi double [ %162, %158 ], [ 0.000000e+00, %150 ]
  %165 = fpext float %155 to double
  %166 = fpext float %84 to double
  %167 = tail call double @llvm.fmuladd.f64(double %164, double %165, double %166)
  %168 = fptrunc double %167 to float
  %169 = fpext float %154 to double
  %170 = fpext float %85 to double
  %171 = tail call double @llvm.fmuladd.f64(double %164, double %169, double %170)
  %172 = fptrunc double %171 to float
  %173 = fpext float %153 to double
  %174 = fpext float %86 to double
  %175 = tail call double @llvm.fmuladd.f64(double %164, double %173, double %174)
  %176 = fptrunc double %175 to float
  %177 = fpext float %151 to double
  %178 = fpext float %87 to double
  %179 = tail call double @llvm.fmuladd.f64(double %164, double %177, double %178)
  %180 = fptrunc double %179 to float
  %181 = fadd float %152, %88
  %182 = add nuw nsw i64 %83, 1
  %183 = icmp eq i64 %182, %46
  br i1 %183, label %184, label %82, !llvm.loop !371

184:                                              ; preds = %163
  store float %156, ptr %9, align 16, !tbaa !43
  store float %168, ptr %41, align 8, !tbaa !366
  store float %172, ptr %42, align 4, !tbaa !367
  store float %176, ptr %43, align 8, !tbaa !368
  store float %180, ptr %45, align 8, !tbaa !369
  store float %181, ptr %44, align 4, !tbaa !370
  %185 = sitofp i64 %46 to double
  %186 = fdiv double 1.000000e+00, %185
  %187 = load float, ptr %41, align 8, !tbaa !366
  %188 = fpext float %187 to double
  %189 = fmul double %186, %188
  %190 = fptrunc double %189 to float
  store float %190, ptr %41, align 8, !tbaa !366
  %191 = load float, ptr %42, align 4, !tbaa !367
  %192 = fpext float %191 to double
  %193 = fmul double %186, %192
  %194 = fptrunc double %193 to float
  store float %194, ptr %42, align 4, !tbaa !367
  %195 = load float, ptr %43, align 8, !tbaa !368
  %196 = fpext float %195 to double
  %197 = fmul double %186, %196
  %198 = fptrunc double %197 to float
  store float %198, ptr %43, align 8, !tbaa !368
  %199 = load float, ptr %45, align 8, !tbaa !369
  %200 = fpext float %199 to double
  %201 = fmul double %186, %200
  %202 = fptrunc double %201 to float
  store float %202, ptr %45, align 8, !tbaa !369
  %203 = load float, ptr %44, align 4, !tbaa !370
  %204 = fpext float %203 to double
  %205 = fmul double %186, %204
  %206 = fptrunc double %205 to float
  store float %206, ptr %44, align 4, !tbaa !370
  br label %2141

207:                                              ; preds = %19
  %208 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %209 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 2
  %210 = load i16, ptr %209, align 2, !tbaa !69
  %211 = uitofp i16 %210 to float
  %212 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %211, ptr %212, align 8, !tbaa !366
  %213 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 1
  %214 = load i16, ptr %213, align 2, !tbaa !68
  %215 = uitofp i16 %214 to float
  %216 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %215, ptr %216, align 4, !tbaa !367
  %217 = load i16, ptr %208, align 2, !tbaa !67
  %218 = uitofp i16 %217 to float
  %219 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %218, ptr %219, align 8, !tbaa !368
  %220 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12, i32 3
  %221 = load i16, ptr %220, align 2, !tbaa !72
  %222 = uitofp i16 %221 to float
  %223 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %222, ptr %223, align 4, !tbaa !370
  %224 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %225 = load i32, ptr %224, align 4, !tbaa !60
  %226 = icmp eq i32 %225, 12
  br i1 %226, label %227, label %2141

227:                                              ; preds = %207
  %228 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float 0.000000e+00, ptr %228, align 8, !tbaa !369
  br label %2141

229:                                              ; preds = %19
  %230 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %12, i64 noundef %14, i64 noundef 2, i64 noundef 2, ptr noundef %6) #24
  %231 = icmp eq ptr %230, null
  br i1 %231, label %2141, label %232

232:                                              ; preds = %229
  %233 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #19
  %234 = icmp eq ptr %0, null
  %235 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %236 = load i32, ptr %235, align 8, !tbaa !216
  %237 = icmp eq i32 %236, 0
  %238 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %239 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %240 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %241 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %242 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %243 = icmp ne ptr %233, null
  %244 = icmp eq ptr %233, null
  %245 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %246 = icmp ne ptr %233, null
  %247 = icmp eq ptr %233, null
  br label %248

248:                                              ; preds = %232, %324
  %249 = phi i64 [ 0, %232 ], [ %325, %324 ]
  %250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %249
  store i32 1, ptr %250, align 8, !tbaa !209
  %251 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %249, i32 1
  store i32 13, ptr %251, align 4, !tbaa !211
  %252 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %249, i32 2
  store i32 0, ptr %252, align 8, !tbaa !212
  %253 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %249, i32 3
  store double 0.000000e+00, ptr %253, align 8, !tbaa !213
  %254 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %249, i32 4
  store i64 16, ptr %254, align 8, !tbaa !214
  %255 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %249, i32 5
  %256 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %249, i32 6
  %257 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %249, i32 7
  %258 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %249, i32 8
  %259 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %249, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %255, i8 0, i64 20, i1 false)
  br i1 %234, label %266, label %260

260:                                              ; preds = %248
  %261 = load i32, ptr %0, align 8, !tbaa !215
  store i32 %261, ptr %250, align 8, !tbaa !209
  %262 = load i32, ptr %238, align 4, !tbaa !60
  store i32 %262, ptr %251, align 4, !tbaa !211
  %263 = load i32, ptr %239, align 8, !tbaa !216
  store i32 %263, ptr %252, align 8, !tbaa !212
  %264 = load i64, ptr %240, align 8, !tbaa !217
  store i64 %264, ptr %254, align 8, !tbaa !214
  %265 = load double, ptr %241, align 8, !tbaa !218
  store double %265, ptr %253, align 8, !tbaa !213
  br label %266

266:                                              ; preds = %248, %260
  %267 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 %249
  %268 = getelementptr inbounds i16, ptr %233, i64 %249
  %269 = getelementptr inbounds float, ptr %9, i64 %249
  br i1 %237, label %270, label %292

270:                                              ; preds = %266
  store float 1.000000e+00, ptr %269, align 4, !tbaa !43
  %271 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 %249, i32 2
  %272 = load i16, ptr %271, align 2, !tbaa !69
  %273 = uitofp i16 %272 to float
  store float %273, ptr %255, align 8, !tbaa !366
  %274 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 %249, i32 1
  %275 = load i16, ptr %274, align 2, !tbaa !68
  %276 = uitofp i16 %275 to float
  store float %276, ptr %256, align 4, !tbaa !367
  %277 = load i16, ptr %267, align 2, !tbaa !67
  %278 = uitofp i16 %277 to float
  store float %278, ptr %257, align 8, !tbaa !368
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 %249, i32 3
  %280 = load i16, ptr %279, align 2, !tbaa !72
  %281 = uitofp i16 %280 to float
  store float %281, ptr %258, align 4, !tbaa !370
  store float 0.000000e+00, ptr %259, align 8, !tbaa !369
  %282 = load i32, ptr %245, align 4, !tbaa !60
  %283 = icmp eq i32 %282, 12
  br i1 %283, label %288, label %284

284:                                              ; preds = %270
  %285 = load i32, ptr %0, align 8, !tbaa !215
  %286 = icmp eq i32 %285, 2
  %287 = and i1 %246, %286
  br i1 %287, label %289, label %324

288:                                              ; preds = %270
  br i1 %247, label %324, label %289

289:                                              ; preds = %288, %284
  %290 = load i16, ptr %268, align 2, !tbaa !85
  %291 = uitofp i16 %290 to float
  br label %322

292:                                              ; preds = %266
  %293 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 %249, i32 3
  %294 = load i16, ptr %293, align 2, !tbaa !72
  %295 = xor i16 %294, -1
  %296 = uitofp i16 %295 to double
  %297 = fmul double %296, 0x3EF0001000100010
  %298 = fptrunc double %297 to float
  store float %298, ptr %269, align 4, !tbaa !43
  %299 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 %249, i32 2
  %300 = load i16, ptr %299, align 2, !tbaa !69
  %301 = uitofp i16 %300 to float
  %302 = fmul float %298, %301
  store float %302, ptr %255, align 8, !tbaa !366
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %230, i64 %249, i32 1
  %304 = load i16, ptr %303, align 2, !tbaa !68
  %305 = uitofp i16 %304 to float
  %306 = fmul float %298, %305
  store float %306, ptr %256, align 4, !tbaa !367
  %307 = load i16, ptr %267, align 2, !tbaa !67
  %308 = uitofp i16 %307 to float
  %309 = fmul float %298, %308
  store float %309, ptr %257, align 8, !tbaa !368
  %310 = uitofp i16 %294 to float
  store float %310, ptr %258, align 4, !tbaa !370
  store float 0.000000e+00, ptr %259, align 8, !tbaa !369
  %311 = load i32, ptr %242, align 4, !tbaa !60
  %312 = icmp eq i32 %311, 12
  br i1 %312, label %317, label %313

313:                                              ; preds = %292
  %314 = load i32, ptr %0, align 8, !tbaa !215
  %315 = icmp eq i32 %314, 2
  %316 = and i1 %243, %315
  br i1 %316, label %318, label %324

317:                                              ; preds = %292
  br i1 %244, label %324, label %318

318:                                              ; preds = %317, %313
  %319 = load i16, ptr %268, align 2, !tbaa !85
  %320 = uitofp i16 %319 to float
  %321 = fmul float %298, %320
  br label %322

322:                                              ; preds = %318, %289
  %323 = phi float [ %291, %289 ], [ %321, %318 ]
  store float %323, ptr %259, align 8, !tbaa !369
  br label %324

324:                                              ; preds = %322, %317, %284, %288, %313
  %325 = add nuw nsw i64 %249, 1
  %326 = icmp eq i64 %325, 4
  br i1 %326, label %327, label %248, !llvm.loop !372

327:                                              ; preds = %324
  %328 = sitofp i64 %12 to double
  %329 = fsub double %3, %328
  %330 = sitofp i64 %14 to double
  %331 = fsub double %4, %330
  %332 = fsub double 1.000000e+00, %329
  %333 = fsub double 1.000000e+00, %331
  %334 = load float, ptr %9, align 16, !tbaa !43
  %335 = fpext float %334 to double
  %336 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %337 = load float, ptr %336, align 4, !tbaa !43
  %338 = fpext float %337 to double
  %339 = fmul double %329, %338
  %340 = tail call double @llvm.fmuladd.f64(double %332, double %335, double %339)
  %341 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 2
  %342 = load float, ptr %341, align 8, !tbaa !43
  %343 = fpext float %342 to double
  %344 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 3
  %345 = load float, ptr %344, align 4, !tbaa !43
  %346 = fpext float %345 to double
  %347 = fmul double %329, %346
  %348 = tail call double @llvm.fmuladd.f64(double %332, double %343, double %347)
  %349 = fmul double %331, %348
  %350 = tail call double @llvm.fmuladd.f64(double %333, double %340, double %349)
  %351 = fcmp olt double %350, 0.000000e+00
  %352 = select i1 %351, double 0.000000e+00, double %350
  %353 = fcmp ult double %352, 1.000000e-15
  %354 = fdiv double 1.000000e+00, %352
  %355 = select i1 %353, double 0x430C6BF52633FFFF, double %354
  %356 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %357 = load float, ptr %356, align 16, !tbaa !366
  %358 = fpext float %357 to double
  %359 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 5
  %360 = load float, ptr %359, align 8, !tbaa !366
  %361 = fpext float %360 to double
  %362 = fmul double %329, %361
  %363 = tail call double @llvm.fmuladd.f64(double %332, double %358, double %362)
  %364 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 5
  %365 = load float, ptr %364, align 16, !tbaa !366
  %366 = fpext float %365 to double
  %367 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 5
  %368 = load float, ptr %367, align 8, !tbaa !366
  %369 = fpext float %368 to double
  %370 = fmul double %329, %369
  %371 = tail call double @llvm.fmuladd.f64(double %332, double %366, double %370)
  %372 = fmul double %331, %371
  %373 = tail call double @llvm.fmuladd.f64(double %333, double %363, double %372)
  %374 = fmul double %355, %373
  %375 = fptrunc double %374 to float
  %376 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %375, ptr %376, align 8, !tbaa !366
  %377 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %378 = load float, ptr %377, align 4, !tbaa !367
  %379 = fpext float %378 to double
  %380 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 6
  %381 = load float, ptr %380, align 4, !tbaa !367
  %382 = fpext float %381 to double
  %383 = fmul double %329, %382
  %384 = tail call double @llvm.fmuladd.f64(double %332, double %379, double %383)
  %385 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 6
  %386 = load float, ptr %385, align 4, !tbaa !367
  %387 = fpext float %386 to double
  %388 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 6
  %389 = load float, ptr %388, align 4, !tbaa !367
  %390 = fpext float %389 to double
  %391 = fmul double %329, %390
  %392 = tail call double @llvm.fmuladd.f64(double %332, double %387, double %391)
  %393 = fmul double %331, %392
  %394 = tail call double @llvm.fmuladd.f64(double %333, double %384, double %393)
  %395 = fmul double %355, %394
  %396 = fptrunc double %395 to float
  %397 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %396, ptr %397, align 4, !tbaa !367
  %398 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %399 = load float, ptr %398, align 8, !tbaa !368
  %400 = fpext float %399 to double
  %401 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 7
  %402 = load float, ptr %401, align 16, !tbaa !368
  %403 = fpext float %402 to double
  %404 = fmul double %329, %403
  %405 = tail call double @llvm.fmuladd.f64(double %332, double %400, double %404)
  %406 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 7
  %407 = load float, ptr %406, align 8, !tbaa !368
  %408 = fpext float %407 to double
  %409 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 7
  %410 = load float, ptr %409, align 16, !tbaa !368
  %411 = fpext float %410 to double
  %412 = fmul double %329, %411
  %413 = tail call double @llvm.fmuladd.f64(double %332, double %408, double %412)
  %414 = fmul double %331, %413
  %415 = tail call double @llvm.fmuladd.f64(double %333, double %405, double %414)
  %416 = fmul double %355, %415
  %417 = fptrunc double %416 to float
  %418 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %417, ptr %418, align 8, !tbaa !368
  %419 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %420 = load i32, ptr %419, align 4, !tbaa !60
  %421 = icmp eq i32 %420, 12
  br i1 %421, label %422, label %444

422:                                              ; preds = %327
  %423 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %424 = load float, ptr %423, align 16, !tbaa !369
  %425 = fpext float %424 to double
  %426 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 9
  %427 = load float, ptr %426, align 8, !tbaa !369
  %428 = fpext float %427 to double
  %429 = fmul double %329, %428
  %430 = tail call double @llvm.fmuladd.f64(double %332, double %425, double %429)
  %431 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 9
  %432 = load float, ptr %431, align 16, !tbaa !369
  %433 = fpext float %432 to double
  %434 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 9
  %435 = load float, ptr %434, align 8, !tbaa !369
  %436 = fpext float %435 to double
  %437 = fmul double %329, %436
  %438 = tail call double @llvm.fmuladd.f64(double %332, double %433, double %437)
  %439 = fmul double %331, %438
  %440 = tail call double @llvm.fmuladd.f64(double %333, double %430, double %439)
  %441 = fmul double %355, %440
  %442 = fptrunc double %441 to float
  %443 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %442, ptr %443, align 8, !tbaa !369
  br label %444

444:                                              ; preds = %422, %327
  %445 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %446 = load float, ptr %445, align 4, !tbaa !370
  %447 = fpext float %446 to double
  %448 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 8
  %449 = load float, ptr %448, align 4, !tbaa !370
  %450 = fpext float %449 to double
  %451 = fmul double %329, %450
  %452 = tail call double @llvm.fmuladd.f64(double %332, double %447, double %451)
  %453 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 8
  %454 = load float, ptr %453, align 4, !tbaa !370
  %455 = fpext float %454 to double
  %456 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 8
  %457 = load float, ptr %456, align 4, !tbaa !370
  %458 = fpext float %457 to double
  %459 = fmul double %329, %458
  %460 = tail call double @llvm.fmuladd.f64(double %332, double %455, double %459)
  %461 = fmul double %331, %460
  %462 = tail call double @llvm.fmuladd.f64(double %333, double %452, double %461)
  %463 = fptrunc double %462 to float
  %464 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %463, ptr %464, align 4, !tbaa !370
  br label %2141

465:                                              ; preds = %19
  %466 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %12, i64 noundef %14, i64 noundef 2, i64 noundef 2, ptr noundef %6) #24
  %467 = icmp eq ptr %466, null
  br i1 %467, label %2141, label %468

468:                                              ; preds = %465
  %469 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #19
  %470 = icmp eq ptr %0, null
  %471 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %472 = load i32, ptr %471, align 8, !tbaa !216
  %473 = icmp eq i32 %472, 0
  %474 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %475 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %476 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %477 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %478 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %479 = icmp ne ptr %469, null
  %480 = icmp eq ptr %469, null
  %481 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %482 = icmp ne ptr %469, null
  %483 = icmp eq ptr %469, null
  br label %489

484:                                              ; preds = %565
  %485 = sitofp i64 %14 to double
  %486 = fsub double %4, %485
  %487 = fcmp ult double %486, 7.500000e-01
  %488 = fcmp ogt double %486, 2.500000e-01
  br label %568

489:                                              ; preds = %468, %565
  %490 = phi i64 [ 0, %468 ], [ %566, %565 ]
  %491 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %490
  store i32 1, ptr %491, align 8, !tbaa !209
  %492 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %490, i32 1
  store i32 13, ptr %492, align 4, !tbaa !211
  %493 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %490, i32 2
  store i32 0, ptr %493, align 8, !tbaa !212
  %494 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %490, i32 3
  store double 0.000000e+00, ptr %494, align 8, !tbaa !213
  %495 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %490, i32 4
  store i64 16, ptr %495, align 8, !tbaa !214
  %496 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %490, i32 5
  %497 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %490, i32 6
  %498 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %490, i32 7
  %499 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %490, i32 8
  %500 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %490, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %496, i8 0, i64 20, i1 false)
  br i1 %470, label %507, label %501

501:                                              ; preds = %489
  %502 = load i32, ptr %0, align 8, !tbaa !215
  store i32 %502, ptr %491, align 8, !tbaa !209
  %503 = load i32, ptr %474, align 4, !tbaa !60
  store i32 %503, ptr %492, align 4, !tbaa !211
  %504 = load i32, ptr %475, align 8, !tbaa !216
  store i32 %504, ptr %493, align 8, !tbaa !212
  %505 = load i64, ptr %476, align 8, !tbaa !217
  store i64 %505, ptr %495, align 8, !tbaa !214
  %506 = load double, ptr %477, align 8, !tbaa !218
  store double %506, ptr %494, align 8, !tbaa !213
  br label %507

507:                                              ; preds = %489, %501
  %508 = getelementptr inbounds %struct._PixelPacket, ptr %466, i64 %490
  %509 = getelementptr inbounds i16, ptr %469, i64 %490
  %510 = getelementptr inbounds float, ptr %9, i64 %490
  br i1 %473, label %511, label %533

511:                                              ; preds = %507
  store float 1.000000e+00, ptr %510, align 4, !tbaa !43
  %512 = getelementptr inbounds %struct._PixelPacket, ptr %466, i64 %490, i32 2
  %513 = load i16, ptr %512, align 2, !tbaa !69
  %514 = uitofp i16 %513 to float
  store float %514, ptr %496, align 8, !tbaa !366
  %515 = getelementptr inbounds %struct._PixelPacket, ptr %466, i64 %490, i32 1
  %516 = load i16, ptr %515, align 2, !tbaa !68
  %517 = uitofp i16 %516 to float
  store float %517, ptr %497, align 4, !tbaa !367
  %518 = load i16, ptr %508, align 2, !tbaa !67
  %519 = uitofp i16 %518 to float
  store float %519, ptr %498, align 8, !tbaa !368
  %520 = getelementptr inbounds %struct._PixelPacket, ptr %466, i64 %490, i32 3
  %521 = load i16, ptr %520, align 2, !tbaa !72
  %522 = uitofp i16 %521 to float
  store float %522, ptr %499, align 4, !tbaa !370
  store float 0.000000e+00, ptr %500, align 8, !tbaa !369
  %523 = load i32, ptr %481, align 4, !tbaa !60
  %524 = icmp eq i32 %523, 12
  br i1 %524, label %529, label %525

525:                                              ; preds = %511
  %526 = load i32, ptr %0, align 8, !tbaa !215
  %527 = icmp eq i32 %526, 2
  %528 = and i1 %482, %527
  br i1 %528, label %530, label %565

529:                                              ; preds = %511
  br i1 %483, label %565, label %530

530:                                              ; preds = %529, %525
  %531 = load i16, ptr %509, align 2, !tbaa !85
  %532 = uitofp i16 %531 to float
  br label %563

533:                                              ; preds = %507
  %534 = getelementptr inbounds %struct._PixelPacket, ptr %466, i64 %490, i32 3
  %535 = load i16, ptr %534, align 2, !tbaa !72
  %536 = xor i16 %535, -1
  %537 = uitofp i16 %536 to double
  %538 = fmul double %537, 0x3EF0001000100010
  %539 = fptrunc double %538 to float
  store float %539, ptr %510, align 4, !tbaa !43
  %540 = getelementptr inbounds %struct._PixelPacket, ptr %466, i64 %490, i32 2
  %541 = load i16, ptr %540, align 2, !tbaa !69
  %542 = uitofp i16 %541 to float
  %543 = fmul float %539, %542
  store float %543, ptr %496, align 8, !tbaa !366
  %544 = getelementptr inbounds %struct._PixelPacket, ptr %466, i64 %490, i32 1
  %545 = load i16, ptr %544, align 2, !tbaa !68
  %546 = uitofp i16 %545 to float
  %547 = fmul float %539, %546
  store float %547, ptr %497, align 4, !tbaa !367
  %548 = load i16, ptr %508, align 2, !tbaa !67
  %549 = uitofp i16 %548 to float
  %550 = fmul float %539, %549
  store float %550, ptr %498, align 8, !tbaa !368
  %551 = uitofp i16 %535 to float
  store float %551, ptr %499, align 4, !tbaa !370
  store float 0.000000e+00, ptr %500, align 8, !tbaa !369
  %552 = load i32, ptr %478, align 4, !tbaa !60
  %553 = icmp eq i32 %552, 12
  br i1 %553, label %558, label %554

554:                                              ; preds = %533
  %555 = load i32, ptr %0, align 8, !tbaa !215
  %556 = icmp eq i32 %555, 2
  %557 = and i1 %479, %556
  br i1 %557, label %559, label %565

558:                                              ; preds = %533
  br i1 %480, label %565, label %559

559:                                              ; preds = %558, %554
  %560 = load i16, ptr %509, align 2, !tbaa !85
  %561 = uitofp i16 %560 to float
  %562 = fmul float %539, %561
  br label %563

563:                                              ; preds = %559, %530
  %564 = phi float [ %532, %530 ], [ %562, %559 ]
  store float %564, ptr %500, align 8, !tbaa !369
  br label %565

565:                                              ; preds = %563, %558, %525, %529, %554
  %566 = add nuw nsw i64 %490, 1
  %567 = icmp eq i64 %566, 4
  br i1 %567, label %484, label %489, !llvm.loop !373

568:                                              ; preds = %484, %611
  %569 = phi double [ 1.000000e+00, %484 ], [ %612, %611 ]
  %570 = phi i64 [ 0, %484 ], [ %613, %611 ]
  br i1 %487, label %578, label %571

571:                                              ; preds = %568
  %572 = or disjoint i64 %570, 2
  %573 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 %572
  %574 = load float, ptr %573, align 4, !tbaa !43
  %575 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 %570
  store float %574, ptr %575, align 4, !tbaa !43
  %576 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %570
  %577 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %576, ptr noundef nonnull align 8 dereferenceable(56) %577, i64 56, i1 false), !tbaa.struct !38
  br label %611

578:                                              ; preds = %568
  br i1 %488, label %579, label %611

579:                                              ; preds = %578
  %580 = or disjoint i64 %570, 2
  %581 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 %580
  %582 = load float, ptr %581, align 4, !tbaa !43
  %583 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 %570
  %584 = load float, ptr %583, align 4, !tbaa !43
  %585 = fadd float %582, %584
  store float %585, ptr %583, align 4, !tbaa !43
  %586 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %580, i32 5
  %587 = load float, ptr %586, align 8, !tbaa !366
  %588 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %570, i32 5
  %589 = load float, ptr %588, align 8, !tbaa !366
  %590 = fadd float %587, %589
  store float %590, ptr %588, align 8, !tbaa !366
  %591 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %580, i32 6
  %592 = load float, ptr %591, align 4, !tbaa !367
  %593 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %570, i32 6
  %594 = load float, ptr %593, align 4, !tbaa !367
  %595 = fadd float %592, %594
  store float %595, ptr %593, align 4, !tbaa !367
  %596 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %580, i32 7
  %597 = load float, ptr %596, align 8, !tbaa !368
  %598 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %570, i32 7
  %599 = load float, ptr %598, align 8, !tbaa !368
  %600 = fadd float %597, %599
  store float %600, ptr %598, align 8, !tbaa !368
  %601 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %580, i32 8
  %602 = load float, ptr %601, align 4, !tbaa !370
  %603 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %570, i32 8
  %604 = load float, ptr %603, align 4, !tbaa !370
  %605 = fadd float %602, %604
  store float %605, ptr %603, align 4, !tbaa !370
  %606 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %580, i32 9
  %607 = load float, ptr %606, align 8, !tbaa !369
  %608 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 %570, i32 9
  %609 = load float, ptr %608, align 8, !tbaa !369
  %610 = fadd float %607, %609
  store float %610, ptr %608, align 8, !tbaa !369
  br label %611

611:                                              ; preds = %571, %579, %578
  %612 = phi double [ %569, %571 ], [ 2.000000e+00, %579 ], [ %569, %578 ]
  %613 = add nuw nsw i64 %570, 1
  %614 = icmp eq i64 %570, 0
  br i1 %614, label %568, label %615, !llvm.loop !374

615:                                              ; preds = %611
  %616 = sitofp i64 %12 to double
  %617 = fsub double %3, %616
  %618 = fcmp ult double %617, 7.500000e-01
  br i1 %618, label %623, label %619

619:                                              ; preds = %615
  %620 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %621 = load float, ptr %620, align 4, !tbaa !43
  store float %621, ptr %9, align 16, !tbaa !43
  %622 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %622, i64 56, i1 false), !tbaa.struct !38
  br label %656

623:                                              ; preds = %615
  %624 = fcmp ogt double %617, 2.500000e-01
  br i1 %624, label %625, label %656

625:                                              ; preds = %623
  %626 = fmul double %612, 2.000000e+00
  %627 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %628 = load float, ptr %627, align 4, !tbaa !43
  %629 = load float, ptr %9, align 16, !tbaa !43
  %630 = fadd float %628, %629
  store float %630, ptr %9, align 16, !tbaa !43
  %631 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 5
  %632 = load float, ptr %631, align 8, !tbaa !366
  %633 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %634 = load float, ptr %633, align 16, !tbaa !366
  %635 = fadd float %632, %634
  store float %635, ptr %633, align 16, !tbaa !366
  %636 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 6
  %637 = load float, ptr %636, align 4, !tbaa !367
  %638 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %639 = load float, ptr %638, align 4, !tbaa !367
  %640 = fadd float %637, %639
  store float %640, ptr %638, align 4, !tbaa !367
  %641 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 7
  %642 = load float, ptr %641, align 16, !tbaa !368
  %643 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %644 = load float, ptr %643, align 8, !tbaa !368
  %645 = fadd float %642, %644
  store float %645, ptr %643, align 8, !tbaa !368
  %646 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 8
  %647 = load float, ptr %646, align 4, !tbaa !370
  %648 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %649 = load float, ptr %648, align 4, !tbaa !370
  %650 = fadd float %647, %649
  store float %650, ptr %648, align 4, !tbaa !370
  %651 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 9
  %652 = load float, ptr %651, align 8, !tbaa !369
  %653 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %654 = load float, ptr %653, align 16, !tbaa !369
  %655 = fadd float %652, %654
  store float %655, ptr %653, align 16, !tbaa !369
  br label %656

656:                                              ; preds = %623, %625, %619
  %657 = phi double [ %612, %619 ], [ %626, %625 ], [ %612, %623 ]
  %658 = fdiv double 1.000000e+00, %657
  %659 = load float, ptr %9, align 16, !tbaa !43
  %660 = fpext float %659 to double
  %661 = fcmp olt float %659, 0.000000e+00
  %662 = select i1 %661, double -1.000000e+00, double 1.000000e+00
  %663 = fmul double %662, %660
  %664 = fcmp ult double %663, 1.000000e-15
  %665 = fdiv double 1.000000e+00, %660
  %666 = fdiv double %662, 1.000000e-15
  %667 = select i1 %664, double %666, double %665
  %668 = fptrunc double %667 to float
  store float %668, ptr %9, align 16, !tbaa !43
  %669 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %670 = load float, ptr %669, align 16, !tbaa !366
  %671 = fmul float %670, %668
  %672 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %671, ptr %672, align 8, !tbaa !366
  %673 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %674 = load float, ptr %673, align 4, !tbaa !367
  %675 = fmul float %674, %668
  %676 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %675, ptr %676, align 4, !tbaa !367
  %677 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %678 = load float, ptr %677, align 8, !tbaa !368
  %679 = fmul float %678, %668
  %680 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %679, ptr %680, align 8, !tbaa !368
  %681 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %682 = load float, ptr %681, align 16, !tbaa !369
  %683 = fmul float %682, %668
  %684 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %683, ptr %684, align 8, !tbaa !369
  %685 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %686 = load float, ptr %685, align 4, !tbaa !370
  %687 = fpext float %686 to double
  %688 = fmul double %658, %687
  %689 = fptrunc double %688 to float
  %690 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %689, ptr %690, align 4, !tbaa !370
  br label %2141

691:                                              ; preds = %19, %19
  %692 = add nsw i64 %12, -1
  %693 = add nsw i64 %14, -1
  %694 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %692, i64 noundef %693, i64 noundef 4, i64 noundef 4, ptr noundef %6) #24
  %695 = icmp eq ptr %694, null
  br i1 %695, label %2141, label %696

696:                                              ; preds = %691
  %697 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #19
  %698 = icmp eq ptr %0, null
  %699 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %700 = load i32, ptr %699, align 8, !tbaa !216
  %701 = icmp eq i32 %700, 0
  %702 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %703 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %704 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %705 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %706 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %707 = icmp ne ptr %697, null
  %708 = icmp eq ptr %697, null
  %709 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %710 = icmp ne ptr %697, null
  %711 = icmp eq ptr %697, null
  br label %712

712:                                              ; preds = %696, %788
  %713 = phi i64 [ 0, %696 ], [ %789, %788 ]
  %714 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %713
  store i32 1, ptr %714, align 8, !tbaa !209
  %715 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %713, i32 1
  store i32 13, ptr %715, align 4, !tbaa !211
  %716 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %713, i32 2
  store i32 0, ptr %716, align 8, !tbaa !212
  %717 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %713, i32 3
  store double 0.000000e+00, ptr %717, align 8, !tbaa !213
  %718 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %713, i32 4
  store i64 16, ptr %718, align 8, !tbaa !214
  %719 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %713, i32 5
  %720 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %713, i32 6
  %721 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %713, i32 7
  %722 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %713, i32 8
  %723 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %713, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %719, i8 0, i64 20, i1 false)
  br i1 %698, label %730, label %724

724:                                              ; preds = %712
  %725 = load i32, ptr %0, align 8, !tbaa !215
  store i32 %725, ptr %714, align 8, !tbaa !209
  %726 = load i32, ptr %702, align 4, !tbaa !60
  store i32 %726, ptr %715, align 4, !tbaa !211
  %727 = load i32, ptr %703, align 8, !tbaa !216
  store i32 %727, ptr %716, align 8, !tbaa !212
  %728 = load i64, ptr %704, align 8, !tbaa !217
  store i64 %728, ptr %718, align 8, !tbaa !214
  %729 = load double, ptr %705, align 8, !tbaa !218
  store double %729, ptr %717, align 8, !tbaa !213
  br label %730

730:                                              ; preds = %712, %724
  %731 = getelementptr inbounds %struct._PixelPacket, ptr %694, i64 %713
  %732 = getelementptr inbounds i16, ptr %697, i64 %713
  %733 = getelementptr inbounds float, ptr %9, i64 %713
  br i1 %701, label %734, label %756

734:                                              ; preds = %730
  store float 1.000000e+00, ptr %733, align 4, !tbaa !43
  %735 = getelementptr inbounds %struct._PixelPacket, ptr %694, i64 %713, i32 2
  %736 = load i16, ptr %735, align 2, !tbaa !69
  %737 = uitofp i16 %736 to float
  store float %737, ptr %719, align 8, !tbaa !366
  %738 = getelementptr inbounds %struct._PixelPacket, ptr %694, i64 %713, i32 1
  %739 = load i16, ptr %738, align 2, !tbaa !68
  %740 = uitofp i16 %739 to float
  store float %740, ptr %720, align 4, !tbaa !367
  %741 = load i16, ptr %731, align 2, !tbaa !67
  %742 = uitofp i16 %741 to float
  store float %742, ptr %721, align 8, !tbaa !368
  %743 = getelementptr inbounds %struct._PixelPacket, ptr %694, i64 %713, i32 3
  %744 = load i16, ptr %743, align 2, !tbaa !72
  %745 = uitofp i16 %744 to float
  store float %745, ptr %722, align 4, !tbaa !370
  store float 0.000000e+00, ptr %723, align 8, !tbaa !369
  %746 = load i32, ptr %709, align 4, !tbaa !60
  %747 = icmp eq i32 %746, 12
  br i1 %747, label %752, label %748

748:                                              ; preds = %734
  %749 = load i32, ptr %0, align 8, !tbaa !215
  %750 = icmp eq i32 %749, 2
  %751 = and i1 %710, %750
  br i1 %751, label %753, label %788

752:                                              ; preds = %734
  br i1 %711, label %788, label %753

753:                                              ; preds = %752, %748
  %754 = load i16, ptr %732, align 2, !tbaa !85
  %755 = uitofp i16 %754 to float
  br label %786

756:                                              ; preds = %730
  %757 = getelementptr inbounds %struct._PixelPacket, ptr %694, i64 %713, i32 3
  %758 = load i16, ptr %757, align 2, !tbaa !72
  %759 = xor i16 %758, -1
  %760 = uitofp i16 %759 to double
  %761 = fmul double %760, 0x3EF0001000100010
  %762 = fptrunc double %761 to float
  store float %762, ptr %733, align 4, !tbaa !43
  %763 = getelementptr inbounds %struct._PixelPacket, ptr %694, i64 %713, i32 2
  %764 = load i16, ptr %763, align 2, !tbaa !69
  %765 = uitofp i16 %764 to float
  %766 = fmul float %762, %765
  store float %766, ptr %719, align 8, !tbaa !366
  %767 = getelementptr inbounds %struct._PixelPacket, ptr %694, i64 %713, i32 1
  %768 = load i16, ptr %767, align 2, !tbaa !68
  %769 = uitofp i16 %768 to float
  %770 = fmul float %762, %769
  store float %770, ptr %720, align 4, !tbaa !367
  %771 = load i16, ptr %731, align 2, !tbaa !67
  %772 = uitofp i16 %771 to float
  %773 = fmul float %762, %772
  store float %773, ptr %721, align 8, !tbaa !368
  %774 = uitofp i16 %758 to float
  store float %774, ptr %722, align 4, !tbaa !370
  store float 0.000000e+00, ptr %723, align 8, !tbaa !369
  %775 = load i32, ptr %706, align 4, !tbaa !60
  %776 = icmp eq i32 %775, 12
  br i1 %776, label %781, label %777

777:                                              ; preds = %756
  %778 = load i32, ptr %0, align 8, !tbaa !215
  %779 = icmp eq i32 %778, 2
  %780 = and i1 %707, %779
  br i1 %780, label %782, label %788

781:                                              ; preds = %756
  br i1 %708, label %788, label %782

782:                                              ; preds = %781, %777
  %783 = load i16, ptr %732, align 2, !tbaa !85
  %784 = uitofp i16 %783 to float
  %785 = fmul float %762, %784
  br label %786

786:                                              ; preds = %782, %753
  %787 = phi float [ %755, %753 ], [ %785, %782 ]
  store float %787, ptr %723, align 8, !tbaa !369
  br label %788

788:                                              ; preds = %786, %781, %748, %752, %777
  %789 = add nuw nsw i64 %713, 1
  %790 = icmp eq i64 %789, 16
  br i1 %790, label %791, label %712, !llvm.loop !375

791:                                              ; preds = %788
  %792 = sitofp i64 %12 to double
  %793 = fsub double %3, %792
  %794 = fptrunc double %793 to float
  %795 = fsub float 1.000000e+00, %794
  %796 = fmul float %794, -5.000000e-01
  %797 = fmul float %796, %795
  %798 = fmul float %795, %797
  %799 = fmul float %797, %794
  %800 = fsub float %799, %798
  %801 = fsub float %795, %798
  %802 = fadd float %801, %800
  %803 = fsub float %794, %799
  %804 = fsub float %803, %800
  %805 = sitofp i64 %14 to double
  %806 = fsub double %4, %805
  %807 = fptrunc double %806 to float
  %808 = fsub float 1.000000e+00, %807
  %809 = fmul float %807, -5.000000e-01
  %810 = fmul float %809, %808
  %811 = fmul float %808, %810
  %812 = fmul float %810, %807
  %813 = fsub float %812, %811
  %814 = fsub float %808, %811
  %815 = fadd float %814, %813
  %816 = fsub float %807, %812
  %817 = fsub float %816, %813
  %818 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %819 = load float, ptr %818, align 16, !tbaa !366
  %820 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 5
  %821 = load float, ptr %820, align 8, !tbaa !366
  %822 = fmul float %802, %821
  %823 = tail call float @llvm.fmuladd.f32(float %798, float %819, float %822)
  %824 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 5
  %825 = load float, ptr %824, align 16, !tbaa !366
  %826 = tail call float @llvm.fmuladd.f32(float %804, float %825, float %823)
  %827 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 5
  %828 = load float, ptr %827, align 8, !tbaa !366
  %829 = tail call float @llvm.fmuladd.f32(float %799, float %828, float %826)
  %830 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 4, i32 5
  %831 = load float, ptr %830, align 16, !tbaa !366
  %832 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 5, i32 5
  %833 = load float, ptr %832, align 8, !tbaa !366
  %834 = fmul float %802, %833
  %835 = tail call float @llvm.fmuladd.f32(float %798, float %831, float %834)
  %836 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 6, i32 5
  %837 = load float, ptr %836, align 16, !tbaa !366
  %838 = tail call float @llvm.fmuladd.f32(float %804, float %837, float %835)
  %839 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 7, i32 5
  %840 = load float, ptr %839, align 8, !tbaa !366
  %841 = tail call float @llvm.fmuladd.f32(float %799, float %840, float %838)
  %842 = fmul float %815, %841
  %843 = tail call float @llvm.fmuladd.f32(float %811, float %829, float %842)
  %844 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 8, i32 5
  %845 = load float, ptr %844, align 16, !tbaa !366
  %846 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 9, i32 5
  %847 = load float, ptr %846, align 8, !tbaa !366
  %848 = fmul float %802, %847
  %849 = tail call float @llvm.fmuladd.f32(float %798, float %845, float %848)
  %850 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 10, i32 5
  %851 = load float, ptr %850, align 16, !tbaa !366
  %852 = tail call float @llvm.fmuladd.f32(float %804, float %851, float %849)
  %853 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 11, i32 5
  %854 = load float, ptr %853, align 8, !tbaa !366
  %855 = tail call float @llvm.fmuladd.f32(float %799, float %854, float %852)
  %856 = tail call float @llvm.fmuladd.f32(float %817, float %855, float %843)
  %857 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 12, i32 5
  %858 = load float, ptr %857, align 16, !tbaa !366
  %859 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 13, i32 5
  %860 = load float, ptr %859, align 8, !tbaa !366
  %861 = fmul float %802, %860
  %862 = tail call float @llvm.fmuladd.f32(float %798, float %858, float %861)
  %863 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 14, i32 5
  %864 = load float, ptr %863, align 16, !tbaa !366
  %865 = tail call float @llvm.fmuladd.f32(float %804, float %864, float %862)
  %866 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 15, i32 5
  %867 = load float, ptr %866, align 8, !tbaa !366
  %868 = tail call float @llvm.fmuladd.f32(float %799, float %867, float %865)
  %869 = tail call float @llvm.fmuladd.f32(float %812, float %868, float %856)
  %870 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %869, ptr %870, align 8, !tbaa !366
  %871 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %872 = load float, ptr %871, align 4, !tbaa !367
  %873 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 6
  %874 = load float, ptr %873, align 4, !tbaa !367
  %875 = fmul float %802, %874
  %876 = tail call float @llvm.fmuladd.f32(float %798, float %872, float %875)
  %877 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 6
  %878 = load float, ptr %877, align 4, !tbaa !367
  %879 = tail call float @llvm.fmuladd.f32(float %804, float %878, float %876)
  %880 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 6
  %881 = load float, ptr %880, align 4, !tbaa !367
  %882 = tail call float @llvm.fmuladd.f32(float %799, float %881, float %879)
  %883 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 4, i32 6
  %884 = load float, ptr %883, align 4, !tbaa !367
  %885 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 5, i32 6
  %886 = load float, ptr %885, align 4, !tbaa !367
  %887 = fmul float %802, %886
  %888 = tail call float @llvm.fmuladd.f32(float %798, float %884, float %887)
  %889 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 6, i32 6
  %890 = load float, ptr %889, align 4, !tbaa !367
  %891 = tail call float @llvm.fmuladd.f32(float %804, float %890, float %888)
  %892 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 7, i32 6
  %893 = load float, ptr %892, align 4, !tbaa !367
  %894 = tail call float @llvm.fmuladd.f32(float %799, float %893, float %891)
  %895 = fmul float %815, %894
  %896 = tail call float @llvm.fmuladd.f32(float %811, float %882, float %895)
  %897 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 8, i32 6
  %898 = load float, ptr %897, align 4, !tbaa !367
  %899 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 9, i32 6
  %900 = load float, ptr %899, align 4, !tbaa !367
  %901 = fmul float %802, %900
  %902 = tail call float @llvm.fmuladd.f32(float %798, float %898, float %901)
  %903 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 10, i32 6
  %904 = load float, ptr %903, align 4, !tbaa !367
  %905 = tail call float @llvm.fmuladd.f32(float %804, float %904, float %902)
  %906 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 11, i32 6
  %907 = load float, ptr %906, align 4, !tbaa !367
  %908 = tail call float @llvm.fmuladd.f32(float %799, float %907, float %905)
  %909 = tail call float @llvm.fmuladd.f32(float %817, float %908, float %896)
  %910 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 12, i32 6
  %911 = load float, ptr %910, align 4, !tbaa !367
  %912 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 13, i32 6
  %913 = load float, ptr %912, align 4, !tbaa !367
  %914 = fmul float %802, %913
  %915 = tail call float @llvm.fmuladd.f32(float %798, float %911, float %914)
  %916 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 14, i32 6
  %917 = load float, ptr %916, align 4, !tbaa !367
  %918 = tail call float @llvm.fmuladd.f32(float %804, float %917, float %915)
  %919 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 15, i32 6
  %920 = load float, ptr %919, align 4, !tbaa !367
  %921 = tail call float @llvm.fmuladd.f32(float %799, float %920, float %918)
  %922 = tail call float @llvm.fmuladd.f32(float %812, float %921, float %909)
  %923 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %922, ptr %923, align 4, !tbaa !367
  %924 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %925 = load float, ptr %924, align 8, !tbaa !368
  %926 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 7
  %927 = load float, ptr %926, align 16, !tbaa !368
  %928 = fmul float %802, %927
  %929 = tail call float @llvm.fmuladd.f32(float %798, float %925, float %928)
  %930 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 7
  %931 = load float, ptr %930, align 8, !tbaa !368
  %932 = tail call float @llvm.fmuladd.f32(float %804, float %931, float %929)
  %933 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 7
  %934 = load float, ptr %933, align 16, !tbaa !368
  %935 = tail call float @llvm.fmuladd.f32(float %799, float %934, float %932)
  %936 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 4, i32 7
  %937 = load float, ptr %936, align 8, !tbaa !368
  %938 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 5, i32 7
  %939 = load float, ptr %938, align 16, !tbaa !368
  %940 = fmul float %802, %939
  %941 = tail call float @llvm.fmuladd.f32(float %798, float %937, float %940)
  %942 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 6, i32 7
  %943 = load float, ptr %942, align 8, !tbaa !368
  %944 = tail call float @llvm.fmuladd.f32(float %804, float %943, float %941)
  %945 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 7, i32 7
  %946 = load float, ptr %945, align 16, !tbaa !368
  %947 = tail call float @llvm.fmuladd.f32(float %799, float %946, float %944)
  %948 = fmul float %815, %947
  %949 = tail call float @llvm.fmuladd.f32(float %811, float %935, float %948)
  %950 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 8, i32 7
  %951 = load float, ptr %950, align 8, !tbaa !368
  %952 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 9, i32 7
  %953 = load float, ptr %952, align 16, !tbaa !368
  %954 = fmul float %802, %953
  %955 = tail call float @llvm.fmuladd.f32(float %798, float %951, float %954)
  %956 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 10, i32 7
  %957 = load float, ptr %956, align 8, !tbaa !368
  %958 = tail call float @llvm.fmuladd.f32(float %804, float %957, float %955)
  %959 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 11, i32 7
  %960 = load float, ptr %959, align 16, !tbaa !368
  %961 = tail call float @llvm.fmuladd.f32(float %799, float %960, float %958)
  %962 = tail call float @llvm.fmuladd.f32(float %817, float %961, float %949)
  %963 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 12, i32 7
  %964 = load float, ptr %963, align 8, !tbaa !368
  %965 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 13, i32 7
  %966 = load float, ptr %965, align 16, !tbaa !368
  %967 = fmul float %802, %966
  %968 = tail call float @llvm.fmuladd.f32(float %798, float %964, float %967)
  %969 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 14, i32 7
  %970 = load float, ptr %969, align 8, !tbaa !368
  %971 = tail call float @llvm.fmuladd.f32(float %804, float %970, float %968)
  %972 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 15, i32 7
  %973 = load float, ptr %972, align 16, !tbaa !368
  %974 = tail call float @llvm.fmuladd.f32(float %799, float %973, float %971)
  %975 = tail call float @llvm.fmuladd.f32(float %812, float %974, float %962)
  %976 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %975, ptr %976, align 8, !tbaa !368
  %977 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %978 = load float, ptr %977, align 4, !tbaa !370
  %979 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 8
  %980 = load float, ptr %979, align 4, !tbaa !370
  %981 = fmul float %802, %980
  %982 = tail call float @llvm.fmuladd.f32(float %798, float %978, float %981)
  %983 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 8
  %984 = load float, ptr %983, align 4, !tbaa !370
  %985 = tail call float @llvm.fmuladd.f32(float %804, float %984, float %982)
  %986 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 8
  %987 = load float, ptr %986, align 4, !tbaa !370
  %988 = tail call float @llvm.fmuladd.f32(float %799, float %987, float %985)
  %989 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 4, i32 8
  %990 = load float, ptr %989, align 4, !tbaa !370
  %991 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 5, i32 8
  %992 = load float, ptr %991, align 4, !tbaa !370
  %993 = fmul float %802, %992
  %994 = tail call float @llvm.fmuladd.f32(float %798, float %990, float %993)
  %995 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 6, i32 8
  %996 = load float, ptr %995, align 4, !tbaa !370
  %997 = tail call float @llvm.fmuladd.f32(float %804, float %996, float %994)
  %998 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 7, i32 8
  %999 = load float, ptr %998, align 4, !tbaa !370
  %1000 = tail call float @llvm.fmuladd.f32(float %799, float %999, float %997)
  %1001 = fmul float %815, %1000
  %1002 = tail call float @llvm.fmuladd.f32(float %811, float %988, float %1001)
  %1003 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 8, i32 8
  %1004 = load float, ptr %1003, align 4, !tbaa !370
  %1005 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 9, i32 8
  %1006 = load float, ptr %1005, align 4, !tbaa !370
  %1007 = fmul float %802, %1006
  %1008 = tail call float @llvm.fmuladd.f32(float %798, float %1004, float %1007)
  %1009 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 10, i32 8
  %1010 = load float, ptr %1009, align 4, !tbaa !370
  %1011 = tail call float @llvm.fmuladd.f32(float %804, float %1010, float %1008)
  %1012 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 11, i32 8
  %1013 = load float, ptr %1012, align 4, !tbaa !370
  %1014 = tail call float @llvm.fmuladd.f32(float %799, float %1013, float %1011)
  %1015 = tail call float @llvm.fmuladd.f32(float %817, float %1014, float %1002)
  %1016 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 12, i32 8
  %1017 = load float, ptr %1016, align 4, !tbaa !370
  %1018 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 13, i32 8
  %1019 = load float, ptr %1018, align 4, !tbaa !370
  %1020 = fmul float %802, %1019
  %1021 = tail call float @llvm.fmuladd.f32(float %798, float %1017, float %1020)
  %1022 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 14, i32 8
  %1023 = load float, ptr %1022, align 4, !tbaa !370
  %1024 = tail call float @llvm.fmuladd.f32(float %804, float %1023, float %1021)
  %1025 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 15, i32 8
  %1026 = load float, ptr %1025, align 4, !tbaa !370
  %1027 = tail call float @llvm.fmuladd.f32(float %799, float %1026, float %1024)
  %1028 = tail call float @llvm.fmuladd.f32(float %812, float %1027, float %1015)
  %1029 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %1028, ptr %1029, align 4, !tbaa !370
  br label %2141

1030:                                             ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #19
  store i64 4, ptr %10, align 8, !tbaa !376
  %1031 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 1
  store i64 4, ptr %1031, align 8, !tbaa !377
  %1032 = add nsw i64 %12, -1
  %1033 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 2
  store i64 %1032, ptr %1033, align 8, !tbaa !378
  %1034 = add nsw i64 %14, -1
  %1035 = getelementptr inbounds %struct._RectangleInfo, ptr %10, i64 0, i32 3
  store i64 %1034, ptr %1035, align 8, !tbaa !379
  %1036 = call ptr @ExcerptImage(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %6) #19
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %1079, label %1038

1038:                                             ; preds = %1030
  %1039 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %1040 = load i32, ptr %1039, align 8, !tbaa !380
  %1041 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %1042 = load double, ptr %1041, align 8, !tbaa !381
  %1043 = call ptr @ResizeImage(ptr noundef nonnull %1036, i64 noundef 1, i64 noundef 1, i32 noundef %1040, double noundef %1042, ptr noundef %6) #19
  %1044 = call ptr @DestroyImage(ptr noundef nonnull %1036) #19
  %1045 = icmp eq ptr %1043, null
  br i1 %1045, label %1079, label %1046

1046:                                             ; preds = %1038
  %1047 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %1043, ptr noundef %6) #19
  %1048 = call ptr @GetCacheViewVirtualPixels(ptr noundef %1047, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %6) #24
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1076, label %1050

1050:                                             ; preds = %1046
  %1051 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %1043) #19
  %1052 = getelementptr inbounds %struct._PixelPacket, ptr %1048, i64 0, i32 2
  %1053 = load i16, ptr %1052, align 2, !tbaa !69
  %1054 = uitofp i16 %1053 to float
  %1055 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %1054, ptr %1055, align 8, !tbaa !366
  %1056 = getelementptr inbounds %struct._PixelPacket, ptr %1048, i64 0, i32 1
  %1057 = load i16, ptr %1056, align 2, !tbaa !68
  %1058 = uitofp i16 %1057 to float
  %1059 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %1058, ptr %1059, align 4, !tbaa !367
  %1060 = load i16, ptr %1048, align 2, !tbaa !67
  %1061 = uitofp i16 %1060 to float
  %1062 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %1061, ptr %1062, align 8, !tbaa !368
  %1063 = getelementptr inbounds %struct._PixelPacket, ptr %1048, i64 0, i32 3
  %1064 = load i16, ptr %1063, align 2, !tbaa !72
  %1065 = uitofp i16 %1064 to float
  %1066 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %1065, ptr %1066, align 4, !tbaa !370
  %1067 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1068 = load i32, ptr %1067, align 4, !tbaa !60
  %1069 = icmp eq i32 %1068, 12
  %1070 = icmp ne ptr %1051, null
  %1071 = and i1 %1070, %1069
  br i1 %1071, label %1072, label %1076

1072:                                             ; preds = %1050
  %1073 = load i16, ptr %1051, align 2, !tbaa !85
  %1074 = uitofp i16 %1073 to float
  %1075 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %1074, ptr %1075, align 8, !tbaa !369
  br label %1076

1076:                                             ; preds = %1072, %1050, %1046
  %1077 = call ptr @DestroyCacheView(ptr noundef %1047) #19
  %1078 = call ptr @DestroyImage(ptr noundef nonnull %1043) #19
  br label %1079

1079:                                             ; preds = %1038, %1030, %1076
  %1080 = phi i32 [ 1, %1076 ], [ 0, %1030 ], [ 1, %1038 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #19
  br label %2141

1081:                                             ; preds = %19
  %1082 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %12, i64 noundef %14, i64 noundef 1, i64 noundef 1, ptr noundef %6) #24
  %1083 = icmp eq ptr %1082, null
  br i1 %1083, label %2141, label %1084

1084:                                             ; preds = %1081
  %1085 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #19
  %1086 = getelementptr inbounds %struct._PixelPacket, ptr %1082, i64 0, i32 2
  %1087 = load i16, ptr %1086, align 2, !tbaa !69
  %1088 = uitofp i16 %1087 to float
  %1089 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %1088, ptr %1089, align 8, !tbaa !366
  %1090 = getelementptr inbounds %struct._PixelPacket, ptr %1082, i64 0, i32 1
  %1091 = load i16, ptr %1090, align 2, !tbaa !68
  %1092 = uitofp i16 %1091 to float
  %1093 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %1092, ptr %1093, align 4, !tbaa !367
  %1094 = load i16, ptr %1082, align 2, !tbaa !67
  %1095 = uitofp i16 %1094 to float
  %1096 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %1095, ptr %1096, align 8, !tbaa !368
  %1097 = getelementptr inbounds %struct._PixelPacket, ptr %1082, i64 0, i32 3
  %1098 = load i16, ptr %1097, align 2, !tbaa !72
  %1099 = uitofp i16 %1098 to float
  %1100 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %1099, ptr %1100, align 4, !tbaa !370
  %1101 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1102 = load i32, ptr %1101, align 4, !tbaa !60
  %1103 = icmp eq i32 %1102, 12
  %1104 = icmp ne ptr %1085, null
  %1105 = and i1 %1104, %1103
  br i1 %1105, label %1106, label %2141

1106:                                             ; preds = %1084
  %1107 = load i16, ptr %1085, align 2, !tbaa !85
  %1108 = uitofp i16 %1107 to float
  %1109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %1108, ptr %1109, align 8, !tbaa !369
  br label %2141

1110:                                             ; preds = %19
  %1111 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %12, i64 noundef %14, i64 noundef 2, i64 noundef 2, ptr noundef %6) #24
  %1112 = icmp eq ptr %1111, null
  br i1 %1112, label %2141, label %1113

1113:                                             ; preds = %1110
  %1114 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #19
  %1115 = icmp eq ptr %0, null
  %1116 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %1117 = load i32, ptr %1116, align 8, !tbaa !216
  %1118 = icmp eq i32 %1117, 0
  %1119 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1120 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %1121 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %1122 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %1123 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1124 = icmp ne ptr %1114, null
  %1125 = icmp eq ptr %1114, null
  %1126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1127 = icmp ne ptr %1114, null
  %1128 = icmp eq ptr %1114, null
  br label %1129

1129:                                             ; preds = %1113, %1205
  %1130 = phi i64 [ 0, %1113 ], [ %1206, %1205 ]
  %1131 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1130
  store i32 1, ptr %1131, align 8, !tbaa !209
  %1132 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1130, i32 1
  store i32 13, ptr %1132, align 4, !tbaa !211
  %1133 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1130, i32 2
  store i32 0, ptr %1133, align 8, !tbaa !212
  %1134 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1130, i32 3
  store double 0.000000e+00, ptr %1134, align 8, !tbaa !213
  %1135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1130, i32 4
  store i64 16, ptr %1135, align 8, !tbaa !214
  %1136 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1130, i32 5
  %1137 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1130, i32 6
  %1138 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1130, i32 7
  %1139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1130, i32 8
  %1140 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1130, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1136, i8 0, i64 20, i1 false)
  br i1 %1115, label %1147, label %1141

1141:                                             ; preds = %1129
  %1142 = load i32, ptr %0, align 8, !tbaa !215
  store i32 %1142, ptr %1131, align 8, !tbaa !209
  %1143 = load i32, ptr %1119, align 4, !tbaa !60
  store i32 %1143, ptr %1132, align 4, !tbaa !211
  %1144 = load i32, ptr %1120, align 8, !tbaa !216
  store i32 %1144, ptr %1133, align 8, !tbaa !212
  %1145 = load i64, ptr %1121, align 8, !tbaa !217
  store i64 %1145, ptr %1135, align 8, !tbaa !214
  %1146 = load double, ptr %1122, align 8, !tbaa !218
  store double %1146, ptr %1134, align 8, !tbaa !213
  br label %1147

1147:                                             ; preds = %1129, %1141
  %1148 = getelementptr inbounds %struct._PixelPacket, ptr %1111, i64 %1130
  %1149 = getelementptr inbounds i16, ptr %1114, i64 %1130
  %1150 = getelementptr inbounds float, ptr %9, i64 %1130
  br i1 %1118, label %1151, label %1173

1151:                                             ; preds = %1147
  store float 1.000000e+00, ptr %1150, align 4, !tbaa !43
  %1152 = getelementptr inbounds %struct._PixelPacket, ptr %1111, i64 %1130, i32 2
  %1153 = load i16, ptr %1152, align 2, !tbaa !69
  %1154 = uitofp i16 %1153 to float
  store float %1154, ptr %1136, align 8, !tbaa !366
  %1155 = getelementptr inbounds %struct._PixelPacket, ptr %1111, i64 %1130, i32 1
  %1156 = load i16, ptr %1155, align 2, !tbaa !68
  %1157 = uitofp i16 %1156 to float
  store float %1157, ptr %1137, align 4, !tbaa !367
  %1158 = load i16, ptr %1148, align 2, !tbaa !67
  %1159 = uitofp i16 %1158 to float
  store float %1159, ptr %1138, align 8, !tbaa !368
  %1160 = getelementptr inbounds %struct._PixelPacket, ptr %1111, i64 %1130, i32 3
  %1161 = load i16, ptr %1160, align 2, !tbaa !72
  %1162 = uitofp i16 %1161 to float
  store float %1162, ptr %1139, align 4, !tbaa !370
  store float 0.000000e+00, ptr %1140, align 8, !tbaa !369
  %1163 = load i32, ptr %1126, align 4, !tbaa !60
  %1164 = icmp eq i32 %1163, 12
  br i1 %1164, label %1169, label %1165

1165:                                             ; preds = %1151
  %1166 = load i32, ptr %0, align 8, !tbaa !215
  %1167 = icmp eq i32 %1166, 2
  %1168 = and i1 %1127, %1167
  br i1 %1168, label %1170, label %1205

1169:                                             ; preds = %1151
  br i1 %1128, label %1205, label %1170

1170:                                             ; preds = %1169, %1165
  %1171 = load i16, ptr %1149, align 2, !tbaa !85
  %1172 = uitofp i16 %1171 to float
  br label %1203

1173:                                             ; preds = %1147
  %1174 = getelementptr inbounds %struct._PixelPacket, ptr %1111, i64 %1130, i32 3
  %1175 = load i16, ptr %1174, align 2, !tbaa !72
  %1176 = xor i16 %1175, -1
  %1177 = uitofp i16 %1176 to double
  %1178 = fmul double %1177, 0x3EF0001000100010
  %1179 = fptrunc double %1178 to float
  store float %1179, ptr %1150, align 4, !tbaa !43
  %1180 = getelementptr inbounds %struct._PixelPacket, ptr %1111, i64 %1130, i32 2
  %1181 = load i16, ptr %1180, align 2, !tbaa !69
  %1182 = uitofp i16 %1181 to float
  %1183 = fmul float %1179, %1182
  store float %1183, ptr %1136, align 8, !tbaa !366
  %1184 = getelementptr inbounds %struct._PixelPacket, ptr %1111, i64 %1130, i32 1
  %1185 = load i16, ptr %1184, align 2, !tbaa !68
  %1186 = uitofp i16 %1185 to float
  %1187 = fmul float %1179, %1186
  store float %1187, ptr %1137, align 4, !tbaa !367
  %1188 = load i16, ptr %1148, align 2, !tbaa !67
  %1189 = uitofp i16 %1188 to float
  %1190 = fmul float %1179, %1189
  store float %1190, ptr %1138, align 8, !tbaa !368
  %1191 = uitofp i16 %1175 to float
  store float %1191, ptr %1139, align 4, !tbaa !370
  store float 0.000000e+00, ptr %1140, align 8, !tbaa !369
  %1192 = load i32, ptr %1123, align 4, !tbaa !60
  %1193 = icmp eq i32 %1192, 12
  br i1 %1193, label %1198, label %1194

1194:                                             ; preds = %1173
  %1195 = load i32, ptr %0, align 8, !tbaa !215
  %1196 = icmp eq i32 %1195, 2
  %1197 = and i1 %1124, %1196
  br i1 %1197, label %1199, label %1205

1198:                                             ; preds = %1173
  br i1 %1125, label %1205, label %1199

1199:                                             ; preds = %1198, %1194
  %1200 = load i16, ptr %1149, align 2, !tbaa !85
  %1201 = uitofp i16 %1200 to float
  %1202 = fmul float %1179, %1201
  br label %1203

1203:                                             ; preds = %1199, %1170
  %1204 = phi float [ %1172, %1170 ], [ %1202, %1199 ]
  store float %1204, ptr %1140, align 8, !tbaa !369
  br label %1205

1205:                                             ; preds = %1203, %1198, %1165, %1169, %1194
  %1206 = add nuw nsw i64 %1130, 1
  %1207 = icmp eq i64 %1206, 4
  br i1 %1207, label %1208, label %1129, !llvm.loop !382

1208:                                             ; preds = %1205
  %1209 = sitofp i64 %12 to double
  %1210 = fsub double %3, %1209
  %1211 = sitofp i64 %14 to double
  %1212 = fsub double %4, %1211
  %1213 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 1
  %1214 = load i32, ptr %1213, align 4, !tbaa !211
  %1215 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %1216 = load float, ptr %1215, align 16, !tbaa !366
  switch i32 %1214, label %1229 [
    i32 2, label %1244
    i32 13, label %1217
  ]

1217:                                             ; preds = %1208
  %1218 = fpext float %1216 to double
  %1219 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %1220 = load float, ptr %1219, align 4, !tbaa !367
  %1221 = fpext float %1220 to double
  %1222 = fmul double %1221, 0x3FE6E29307AF20EA
  %1223 = tail call double @llvm.fmuladd.f64(double %1218, double 2.126560e-01, double %1222)
  %1224 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %1225 = load float, ptr %1224, align 8, !tbaa !368
  %1226 = fpext float %1225 to double
  %1227 = tail call double @llvm.fmuladd.f64(double %1226, double 7.218600e-02, double %1223)
  %1228 = fptrunc double %1227 to float
  br label %1244

1229:                                             ; preds = %1208
  %1230 = tail call float @EncodePixelGamma(float noundef %1216) #23
  %1231 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %1232 = load float, ptr %1231, align 4, !tbaa !367
  %1233 = tail call float @EncodePixelGamma(float noundef %1232) #23
  %1234 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %1235 = load float, ptr %1234, align 8, !tbaa !368
  %1236 = tail call float @EncodePixelGamma(float noundef %1235) #23
  %1237 = fpext float %1230 to double
  %1238 = fpext float %1233 to double
  %1239 = fmul double %1238, 0x3FE6E29307AF20EA
  %1240 = tail call double @llvm.fmuladd.f64(double %1237, double 2.126560e-01, double %1239)
  %1241 = fpext float %1236 to double
  %1242 = tail call double @llvm.fmuladd.f64(double %1241, double 7.218600e-02, double %1240)
  %1243 = fptrunc double %1242 to float
  br label %1244

1244:                                             ; preds = %1208, %1217, %1229
  %1245 = phi float [ %1228, %1217 ], [ %1243, %1229 ], [ %1216, %1208 ]
  %1246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 1
  %1247 = load i32, ptr %1246, align 4, !tbaa !211
  %1248 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 5
  %1249 = load float, ptr %1248, align 8, !tbaa !366
  switch i32 %1247, label %1262 [
    i32 2, label %1277
    i32 13, label %1250
  ]

1250:                                             ; preds = %1244
  %1251 = fpext float %1249 to double
  %1252 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 6
  %1253 = load float, ptr %1252, align 4, !tbaa !367
  %1254 = fpext float %1253 to double
  %1255 = fmul double %1254, 0x3FE6E29307AF20EA
  %1256 = tail call double @llvm.fmuladd.f64(double %1251, double 2.126560e-01, double %1255)
  %1257 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 7
  %1258 = load float, ptr %1257, align 16, !tbaa !368
  %1259 = fpext float %1258 to double
  %1260 = tail call double @llvm.fmuladd.f64(double %1259, double 7.218600e-02, double %1256)
  %1261 = fptrunc double %1260 to float
  br label %1277

1262:                                             ; preds = %1244
  %1263 = tail call float @EncodePixelGamma(float noundef %1249) #23
  %1264 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 6
  %1265 = load float, ptr %1264, align 4, !tbaa !367
  %1266 = tail call float @EncodePixelGamma(float noundef %1265) #23
  %1267 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 7
  %1268 = load float, ptr %1267, align 16, !tbaa !368
  %1269 = tail call float @EncodePixelGamma(float noundef %1268) #23
  %1270 = fpext float %1263 to double
  %1271 = fpext float %1266 to double
  %1272 = fmul double %1271, 0x3FE6E29307AF20EA
  %1273 = tail call double @llvm.fmuladd.f64(double %1270, double 2.126560e-01, double %1272)
  %1274 = fpext float %1269 to double
  %1275 = tail call double @llvm.fmuladd.f64(double %1274, double 7.218600e-02, double %1273)
  %1276 = fptrunc double %1275 to float
  br label %1277

1277:                                             ; preds = %1244, %1250, %1262
  %1278 = phi float [ %1261, %1250 ], [ %1276, %1262 ], [ %1249, %1244 ]
  %1279 = fsub float %1245, %1278
  %1280 = tail call float @llvm.fabs.f32(float %1279)
  %1281 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 1
  %1282 = load i32, ptr %1281, align 4, !tbaa !211
  %1283 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 5
  %1284 = load float, ptr %1283, align 8, !tbaa !366
  switch i32 %1282, label %1297 [
    i32 2, label %1312
    i32 13, label %1285
  ]

1285:                                             ; preds = %1277
  %1286 = fpext float %1284 to double
  %1287 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 6
  %1288 = load float, ptr %1287, align 4, !tbaa !367
  %1289 = fpext float %1288 to double
  %1290 = fmul double %1289, 0x3FE6E29307AF20EA
  %1291 = tail call double @llvm.fmuladd.f64(double %1286, double 2.126560e-01, double %1290)
  %1292 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 7
  %1293 = load float, ptr %1292, align 16, !tbaa !368
  %1294 = fpext float %1293 to double
  %1295 = tail call double @llvm.fmuladd.f64(double %1294, double 7.218600e-02, double %1291)
  %1296 = fptrunc double %1295 to float
  br label %1312

1297:                                             ; preds = %1277
  %1298 = tail call float @EncodePixelGamma(float noundef %1284) #23
  %1299 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 6
  %1300 = load float, ptr %1299, align 4, !tbaa !367
  %1301 = tail call float @EncodePixelGamma(float noundef %1300) #23
  %1302 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 7
  %1303 = load float, ptr %1302, align 16, !tbaa !368
  %1304 = tail call float @EncodePixelGamma(float noundef %1303) #23
  %1305 = fpext float %1298 to double
  %1306 = fpext float %1301 to double
  %1307 = fmul double %1306, 0x3FE6E29307AF20EA
  %1308 = tail call double @llvm.fmuladd.f64(double %1305, double 2.126560e-01, double %1307)
  %1309 = fpext float %1304 to double
  %1310 = tail call double @llvm.fmuladd.f64(double %1309, double 7.218600e-02, double %1308)
  %1311 = fptrunc double %1310 to float
  br label %1312

1312:                                             ; preds = %1277, %1285, %1297
  %1313 = phi float [ %1296, %1285 ], [ %1311, %1297 ], [ %1284, %1277 ]
  %1314 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 1
  %1315 = load i32, ptr %1314, align 4, !tbaa !211
  %1316 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 5
  %1317 = load float, ptr %1316, align 16, !tbaa !366
  switch i32 %1315, label %1330 [
    i32 2, label %1345
    i32 13, label %1318
  ]

1318:                                             ; preds = %1312
  %1319 = fpext float %1317 to double
  %1320 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 6
  %1321 = load float, ptr %1320, align 4, !tbaa !367
  %1322 = fpext float %1321 to double
  %1323 = fmul double %1322, 0x3FE6E29307AF20EA
  %1324 = tail call double @llvm.fmuladd.f64(double %1319, double 2.126560e-01, double %1323)
  %1325 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 7
  %1326 = load float, ptr %1325, align 8, !tbaa !368
  %1327 = fpext float %1326 to double
  %1328 = tail call double @llvm.fmuladd.f64(double %1327, double 7.218600e-02, double %1324)
  %1329 = fptrunc double %1328 to float
  br label %1345

1330:                                             ; preds = %1312
  %1331 = tail call float @EncodePixelGamma(float noundef %1317) #23
  %1332 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 6
  %1333 = load float, ptr %1332, align 4, !tbaa !367
  %1334 = tail call float @EncodePixelGamma(float noundef %1333) #23
  %1335 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 7
  %1336 = load float, ptr %1335, align 8, !tbaa !368
  %1337 = tail call float @EncodePixelGamma(float noundef %1336) #23
  %1338 = fpext float %1331 to double
  %1339 = fpext float %1334 to double
  %1340 = fmul double %1339, 0x3FE6E29307AF20EA
  %1341 = tail call double @llvm.fmuladd.f64(double %1338, double 2.126560e-01, double %1340)
  %1342 = fpext float %1337 to double
  %1343 = tail call double @llvm.fmuladd.f64(double %1342, double 7.218600e-02, double %1341)
  %1344 = fptrunc double %1343 to float
  br label %1345

1345:                                             ; preds = %1312, %1318, %1330
  %1346 = phi float [ %1329, %1318 ], [ %1344, %1330 ], [ %1317, %1312 ]
  %1347 = fsub float %1313, %1346
  %1348 = tail call float @llvm.fabs.f32(float %1347)
  %1349 = fcmp olt float %1280, %1348
  br i1 %1349, label %1350, label %1556

1350:                                             ; preds = %1345
  %1351 = fcmp ugt double %1210, %1212
  br i1 %1351, label %1454, label %1352

1352:                                             ; preds = %1350
  %1353 = fsub double 1.000000e+00, %1212
  %1354 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 2
  %1355 = load float, ptr %1354, align 8, !tbaa !43
  %1356 = fpext float %1355 to double
  %1357 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 3
  %1358 = load float, ptr %1357, align 4, !tbaa !43
  %1359 = fpext float %1358 to double
  %1360 = load float, ptr %9, align 16, !tbaa !43
  %1361 = fpext float %1360 to double
  %1362 = fmul double %1353, %1361
  %1363 = tail call double @llvm.fmuladd.f64(double %1210, double %1359, double %1362)
  %1364 = fsub double 1.000000e+00, %1210
  %1365 = fsub double %1364, %1353
  %1366 = tail call double @llvm.fmuladd.f64(double %1365, double %1356, double %1363)
  %1367 = fcmp olt double %1366, 0.000000e+00
  %1368 = select i1 %1367, double 0.000000e+00, double %1366
  %1369 = fcmp ult double %1368, 1.000000e-15
  %1370 = fdiv double 1.000000e+00, %1368
  %1371 = select i1 %1369, double 0x430C6BF52633FFFF, double %1370
  %1372 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 5
  %1373 = load float, ptr %1372, align 16, !tbaa !366
  %1374 = fpext float %1373 to double
  %1375 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 5
  %1376 = load float, ptr %1375, align 8, !tbaa !366
  %1377 = fpext float %1376 to double
  %1378 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %1379 = load float, ptr %1378, align 16, !tbaa !366
  %1380 = fpext float %1379 to double
  %1381 = fmul double %1353, %1380
  %1382 = tail call double @llvm.fmuladd.f64(double %1210, double %1377, double %1381)
  %1383 = tail call double @llvm.fmuladd.f64(double %1365, double %1374, double %1382)
  %1384 = fmul double %1383, %1371
  %1385 = fptrunc double %1384 to float
  %1386 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %1385, ptr %1386, align 8, !tbaa !366
  %1387 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 6
  %1388 = load float, ptr %1387, align 4, !tbaa !367
  %1389 = fpext float %1388 to double
  %1390 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 6
  %1391 = load float, ptr %1390, align 4, !tbaa !367
  %1392 = fpext float %1391 to double
  %1393 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %1394 = load float, ptr %1393, align 4, !tbaa !367
  %1395 = fpext float %1394 to double
  %1396 = fmul double %1353, %1395
  %1397 = tail call double @llvm.fmuladd.f64(double %1210, double %1392, double %1396)
  %1398 = tail call double @llvm.fmuladd.f64(double %1365, double %1389, double %1397)
  %1399 = fmul double %1371, %1398
  %1400 = fptrunc double %1399 to float
  %1401 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %1400, ptr %1401, align 4, !tbaa !367
  %1402 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 7
  %1403 = load float, ptr %1402, align 8, !tbaa !368
  %1404 = fpext float %1403 to double
  %1405 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 7
  %1406 = load float, ptr %1405, align 16, !tbaa !368
  %1407 = fpext float %1406 to double
  %1408 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %1409 = load float, ptr %1408, align 8, !tbaa !368
  %1410 = fpext float %1409 to double
  %1411 = fmul double %1353, %1410
  %1412 = tail call double @llvm.fmuladd.f64(double %1210, double %1407, double %1411)
  %1413 = tail call double @llvm.fmuladd.f64(double %1365, double %1404, double %1412)
  %1414 = fmul double %1371, %1413
  %1415 = fptrunc double %1414 to float
  %1416 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %1415, ptr %1416, align 8, !tbaa !368
  %1417 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1418 = load i32, ptr %1417, align 4, !tbaa !60
  %1419 = icmp eq i32 %1418, 12
  br i1 %1419, label %1420, label %1436

1420:                                             ; preds = %1352
  %1421 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 9
  %1422 = load float, ptr %1421, align 16, !tbaa !369
  %1423 = fpext float %1422 to double
  %1424 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 9
  %1425 = load float, ptr %1424, align 8, !tbaa !369
  %1426 = fpext float %1425 to double
  %1427 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %1428 = load float, ptr %1427, align 16, !tbaa !369
  %1429 = fpext float %1428 to double
  %1430 = fmul double %1353, %1429
  %1431 = tail call double @llvm.fmuladd.f64(double %1210, double %1426, double %1430)
  %1432 = tail call double @llvm.fmuladd.f64(double %1365, double %1423, double %1431)
  %1433 = fmul double %1371, %1432
  %1434 = fptrunc double %1433 to float
  %1435 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %1434, ptr %1435, align 8, !tbaa !369
  br label %1436

1436:                                             ; preds = %1420, %1352
  %1437 = fadd double %1210, %1353
  %1438 = fadd double %1365, %1437
  %1439 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 8
  %1440 = load float, ptr %1439, align 4, !tbaa !370
  %1441 = fpext float %1440 to double
  %1442 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 8
  %1443 = load float, ptr %1442, align 4, !tbaa !370
  %1444 = fpext float %1443 to double
  %1445 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %1446 = load float, ptr %1445, align 4, !tbaa !370
  %1447 = fpext float %1446 to double
  %1448 = fmul double %1353, %1447
  %1449 = tail call double @llvm.fmuladd.f64(double %1210, double %1444, double %1448)
  %1450 = tail call double @llvm.fmuladd.f64(double %1365, double %1441, double %1449)
  %1451 = fmul double %1438, %1450
  %1452 = fptrunc double %1451 to float
  %1453 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %1452, ptr %1453, align 4, !tbaa !370
  br label %2141

1454:                                             ; preds = %1350
  %1455 = fsub double 1.000000e+00, %1210
  %1456 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %1457 = load float, ptr %1456, align 4, !tbaa !43
  %1458 = fpext float %1457 to double
  %1459 = load float, ptr %9, align 16, !tbaa !43
  %1460 = fpext float %1459 to double
  %1461 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 3
  %1462 = load float, ptr %1461, align 4, !tbaa !43
  %1463 = fpext float %1462 to double
  %1464 = fmul double %1212, %1463
  %1465 = tail call double @llvm.fmuladd.f64(double %1455, double %1460, double %1464)
  %1466 = fsub double 1.000000e+00, %1455
  %1467 = fsub double %1466, %1212
  %1468 = tail call double @llvm.fmuladd.f64(double %1467, double %1458, double %1465)
  %1469 = fcmp olt double %1468, 0.000000e+00
  %1470 = select i1 %1469, double 0.000000e+00, double %1468
  %1471 = fcmp ult double %1470, 1.000000e-15
  %1472 = fdiv double 1.000000e+00, %1470
  %1473 = select i1 %1471, double 0x430C6BF52633FFFF, double %1472
  %1474 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 5
  %1475 = load float, ptr %1474, align 8, !tbaa !366
  %1476 = fpext float %1475 to double
  %1477 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %1478 = load float, ptr %1477, align 16, !tbaa !366
  %1479 = fpext float %1478 to double
  %1480 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 5
  %1481 = load float, ptr %1480, align 8, !tbaa !366
  %1482 = fpext float %1481 to double
  %1483 = fmul double %1212, %1482
  %1484 = tail call double @llvm.fmuladd.f64(double %1455, double %1479, double %1483)
  %1485 = tail call double @llvm.fmuladd.f64(double %1467, double %1476, double %1484)
  %1486 = fmul double %1485, %1473
  %1487 = fptrunc double %1486 to float
  %1488 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %1487, ptr %1488, align 8, !tbaa !366
  %1489 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 6
  %1490 = load float, ptr %1489, align 4, !tbaa !367
  %1491 = fpext float %1490 to double
  %1492 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %1493 = load float, ptr %1492, align 4, !tbaa !367
  %1494 = fpext float %1493 to double
  %1495 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 6
  %1496 = load float, ptr %1495, align 4, !tbaa !367
  %1497 = fpext float %1496 to double
  %1498 = fmul double %1212, %1497
  %1499 = tail call double @llvm.fmuladd.f64(double %1455, double %1494, double %1498)
  %1500 = tail call double @llvm.fmuladd.f64(double %1467, double %1491, double %1499)
  %1501 = fmul double %1473, %1500
  %1502 = fptrunc double %1501 to float
  %1503 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %1502, ptr %1503, align 4, !tbaa !367
  %1504 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 7
  %1505 = load float, ptr %1504, align 16, !tbaa !368
  %1506 = fpext float %1505 to double
  %1507 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %1508 = load float, ptr %1507, align 8, !tbaa !368
  %1509 = fpext float %1508 to double
  %1510 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 7
  %1511 = load float, ptr %1510, align 16, !tbaa !368
  %1512 = fpext float %1511 to double
  %1513 = fmul double %1212, %1512
  %1514 = tail call double @llvm.fmuladd.f64(double %1455, double %1509, double %1513)
  %1515 = tail call double @llvm.fmuladd.f64(double %1467, double %1506, double %1514)
  %1516 = fmul double %1473, %1515
  %1517 = fptrunc double %1516 to float
  %1518 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %1517, ptr %1518, align 8, !tbaa !368
  %1519 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1520 = load i32, ptr %1519, align 4, !tbaa !60
  %1521 = icmp eq i32 %1520, 12
  br i1 %1521, label %1522, label %1538

1522:                                             ; preds = %1454
  %1523 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 9
  %1524 = load float, ptr %1523, align 8, !tbaa !369
  %1525 = fpext float %1524 to double
  %1526 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %1527 = load float, ptr %1526, align 16, !tbaa !369
  %1528 = fpext float %1527 to double
  %1529 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 9
  %1530 = load float, ptr %1529, align 8, !tbaa !369
  %1531 = fpext float %1530 to double
  %1532 = fmul double %1212, %1531
  %1533 = tail call double @llvm.fmuladd.f64(double %1455, double %1528, double %1532)
  %1534 = tail call double @llvm.fmuladd.f64(double %1467, double %1525, double %1533)
  %1535 = fmul double %1473, %1534
  %1536 = fptrunc double %1535 to float
  %1537 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %1536, ptr %1537, align 8, !tbaa !369
  br label %1538

1538:                                             ; preds = %1522, %1454
  %1539 = fadd double %1455, %1212
  %1540 = fadd double %1539, %1467
  %1541 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 8
  %1542 = load float, ptr %1541, align 4, !tbaa !370
  %1543 = fpext float %1542 to double
  %1544 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %1545 = load float, ptr %1544, align 4, !tbaa !370
  %1546 = fpext float %1545 to double
  %1547 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 8
  %1548 = load float, ptr %1547, align 4, !tbaa !370
  %1549 = fpext float %1548 to double
  %1550 = fmul double %1212, %1549
  %1551 = tail call double @llvm.fmuladd.f64(double %1455, double %1546, double %1550)
  %1552 = tail call double @llvm.fmuladd.f64(double %1467, double %1543, double %1551)
  %1553 = fmul double %1540, %1552
  %1554 = fptrunc double %1553 to float
  %1555 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %1554, ptr %1555, align 4, !tbaa !370
  br label %2141

1556:                                             ; preds = %1345
  %1557 = fsub double 1.000000e+00, %1212
  %1558 = fcmp ugt double %1210, %1557
  br i1 %1558, label %1660, label %1559

1559:                                             ; preds = %1556
  %1560 = load float, ptr %9, align 16, !tbaa !43
  %1561 = fpext float %1560 to double
  %1562 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %1563 = load float, ptr %1562, align 4, !tbaa !43
  %1564 = fpext float %1563 to double
  %1565 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 2
  %1566 = load float, ptr %1565, align 8, !tbaa !43
  %1567 = fpext float %1566 to double
  %1568 = fmul double %1212, %1567
  %1569 = tail call double @llvm.fmuladd.f64(double %1210, double %1564, double %1568)
  %1570 = fsub double 1.000000e+00, %1210
  %1571 = fsub double %1570, %1212
  %1572 = tail call double @llvm.fmuladd.f64(double %1571, double %1561, double %1569)
  %1573 = fcmp olt double %1572, 0.000000e+00
  %1574 = select i1 %1573, double 0.000000e+00, double %1572
  %1575 = fcmp ult double %1574, 1.000000e-15
  %1576 = fdiv double 1.000000e+00, %1574
  %1577 = select i1 %1575, double 0x430C6BF52633FFFF, double %1576
  %1578 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %1579 = load float, ptr %1578, align 16, !tbaa !366
  %1580 = fpext float %1579 to double
  %1581 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 5
  %1582 = load float, ptr %1581, align 8, !tbaa !366
  %1583 = fpext float %1582 to double
  %1584 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 5
  %1585 = load float, ptr %1584, align 16, !tbaa !366
  %1586 = fpext float %1585 to double
  %1587 = fmul double %1212, %1586
  %1588 = tail call double @llvm.fmuladd.f64(double %1210, double %1583, double %1587)
  %1589 = tail call double @llvm.fmuladd.f64(double %1571, double %1580, double %1588)
  %1590 = fmul double %1589, %1577
  %1591 = fptrunc double %1590 to float
  %1592 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %1591, ptr %1592, align 8, !tbaa !366
  %1593 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %1594 = load float, ptr %1593, align 4, !tbaa !367
  %1595 = fpext float %1594 to double
  %1596 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 6
  %1597 = load float, ptr %1596, align 4, !tbaa !367
  %1598 = fpext float %1597 to double
  %1599 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 6
  %1600 = load float, ptr %1599, align 4, !tbaa !367
  %1601 = fpext float %1600 to double
  %1602 = fmul double %1212, %1601
  %1603 = tail call double @llvm.fmuladd.f64(double %1210, double %1598, double %1602)
  %1604 = tail call double @llvm.fmuladd.f64(double %1571, double %1595, double %1603)
  %1605 = fmul double %1577, %1604
  %1606 = fptrunc double %1605 to float
  %1607 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %1606, ptr %1607, align 4, !tbaa !367
  %1608 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %1609 = load float, ptr %1608, align 8, !tbaa !368
  %1610 = fpext float %1609 to double
  %1611 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 7
  %1612 = load float, ptr %1611, align 16, !tbaa !368
  %1613 = fpext float %1612 to double
  %1614 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 7
  %1615 = load float, ptr %1614, align 8, !tbaa !368
  %1616 = fpext float %1615 to double
  %1617 = fmul double %1212, %1616
  %1618 = tail call double @llvm.fmuladd.f64(double %1210, double %1613, double %1617)
  %1619 = tail call double @llvm.fmuladd.f64(double %1571, double %1610, double %1618)
  %1620 = fmul double %1577, %1619
  %1621 = fptrunc double %1620 to float
  %1622 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %1621, ptr %1622, align 8, !tbaa !368
  %1623 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1624 = load i32, ptr %1623, align 4, !tbaa !60
  %1625 = icmp eq i32 %1624, 12
  br i1 %1625, label %1626, label %1642

1626:                                             ; preds = %1559
  %1627 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %1628 = load float, ptr %1627, align 16, !tbaa !369
  %1629 = fpext float %1628 to double
  %1630 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 9
  %1631 = load float, ptr %1630, align 8, !tbaa !369
  %1632 = fpext float %1631 to double
  %1633 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 9
  %1634 = load float, ptr %1633, align 16, !tbaa !369
  %1635 = fpext float %1634 to double
  %1636 = fmul double %1212, %1635
  %1637 = tail call double @llvm.fmuladd.f64(double %1210, double %1632, double %1636)
  %1638 = tail call double @llvm.fmuladd.f64(double %1571, double %1629, double %1637)
  %1639 = fmul double %1577, %1638
  %1640 = fptrunc double %1639 to float
  %1641 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %1640, ptr %1641, align 8, !tbaa !369
  br label %1642

1642:                                             ; preds = %1626, %1559
  %1643 = fadd double %1210, %1212
  %1644 = fadd double %1571, %1643
  %1645 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %1646 = load float, ptr %1645, align 4, !tbaa !370
  %1647 = fpext float %1646 to double
  %1648 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 8
  %1649 = load float, ptr %1648, align 4, !tbaa !370
  %1650 = fpext float %1649 to double
  %1651 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 8
  %1652 = load float, ptr %1651, align 4, !tbaa !370
  %1653 = fpext float %1652 to double
  %1654 = fmul double %1212, %1653
  %1655 = tail call double @llvm.fmuladd.f64(double %1210, double %1650, double %1654)
  %1656 = tail call double @llvm.fmuladd.f64(double %1571, double %1647, double %1655)
  %1657 = fmul double %1644, %1656
  %1658 = fptrunc double %1657 to float
  %1659 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %1658, ptr %1659, align 4, !tbaa !370
  br label %2141

1660:                                             ; preds = %1556
  %1661 = fsub double 1.000000e+00, %1210
  %1662 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 3
  %1663 = load float, ptr %1662, align 4, !tbaa !43
  %1664 = fpext float %1663 to double
  %1665 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 2
  %1666 = load float, ptr %1665, align 8, !tbaa !43
  %1667 = fpext float %1666 to double
  %1668 = getelementptr inbounds [16 x float], ptr %9, i64 0, i64 1
  %1669 = load float, ptr %1668, align 4, !tbaa !43
  %1670 = fpext float %1669 to double
  %1671 = fmul double %1557, %1670
  %1672 = tail call double @llvm.fmuladd.f64(double %1661, double %1667, double %1671)
  %1673 = fsub double 1.000000e+00, %1661
  %1674 = fsub double %1673, %1557
  %1675 = tail call double @llvm.fmuladd.f64(double %1674, double %1664, double %1672)
  %1676 = fcmp olt double %1675, 0.000000e+00
  %1677 = select i1 %1676, double 0.000000e+00, double %1675
  %1678 = fcmp ult double %1677, 1.000000e-15
  %1679 = fdiv double 1.000000e+00, %1677
  %1680 = select i1 %1678, double 0x430C6BF52633FFFF, double %1679
  %1681 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 5
  %1682 = load float, ptr %1681, align 8, !tbaa !366
  %1683 = fpext float %1682 to double
  %1684 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 5
  %1685 = load float, ptr %1684, align 16, !tbaa !366
  %1686 = fpext float %1685 to double
  %1687 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 5
  %1688 = load float, ptr %1687, align 8, !tbaa !366
  %1689 = fpext float %1688 to double
  %1690 = fmul double %1557, %1689
  %1691 = tail call double @llvm.fmuladd.f64(double %1661, double %1686, double %1690)
  %1692 = tail call double @llvm.fmuladd.f64(double %1674, double %1683, double %1691)
  %1693 = fmul double %1692, %1680
  %1694 = fptrunc double %1693 to float
  %1695 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %1694, ptr %1695, align 8, !tbaa !366
  %1696 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 6
  %1697 = load float, ptr %1696, align 4, !tbaa !367
  %1698 = fpext float %1697 to double
  %1699 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 6
  %1700 = load float, ptr %1699, align 4, !tbaa !367
  %1701 = fpext float %1700 to double
  %1702 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 6
  %1703 = load float, ptr %1702, align 4, !tbaa !367
  %1704 = fpext float %1703 to double
  %1705 = fmul double %1557, %1704
  %1706 = tail call double @llvm.fmuladd.f64(double %1661, double %1701, double %1705)
  %1707 = tail call double @llvm.fmuladd.f64(double %1674, double %1698, double %1706)
  %1708 = fmul double %1680, %1707
  %1709 = fptrunc double %1708 to float
  %1710 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %1709, ptr %1710, align 4, !tbaa !367
  %1711 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 7
  %1712 = load float, ptr %1711, align 16, !tbaa !368
  %1713 = fpext float %1712 to double
  %1714 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 7
  %1715 = load float, ptr %1714, align 8, !tbaa !368
  %1716 = fpext float %1715 to double
  %1717 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 7
  %1718 = load float, ptr %1717, align 16, !tbaa !368
  %1719 = fpext float %1718 to double
  %1720 = fmul double %1557, %1719
  %1721 = tail call double @llvm.fmuladd.f64(double %1661, double %1716, double %1720)
  %1722 = tail call double @llvm.fmuladd.f64(double %1674, double %1713, double %1721)
  %1723 = fmul double %1680, %1722
  %1724 = fptrunc double %1723 to float
  %1725 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %1724, ptr %1725, align 8, !tbaa !368
  %1726 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1727 = load i32, ptr %1726, align 4, !tbaa !60
  %1728 = icmp eq i32 %1727, 12
  br i1 %1728, label %1729, label %1745

1729:                                             ; preds = %1660
  %1730 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 9
  %1731 = load float, ptr %1730, align 8, !tbaa !369
  %1732 = fpext float %1731 to double
  %1733 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 9
  %1734 = load float, ptr %1733, align 16, !tbaa !369
  %1735 = fpext float %1734 to double
  %1736 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 9
  %1737 = load float, ptr %1736, align 8, !tbaa !369
  %1738 = fpext float %1737 to double
  %1739 = fmul double %1557, %1738
  %1740 = tail call double @llvm.fmuladd.f64(double %1661, double %1735, double %1739)
  %1741 = tail call double @llvm.fmuladd.f64(double %1674, double %1732, double %1740)
  %1742 = fmul double %1680, %1741
  %1743 = fptrunc double %1742 to float
  %1744 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %1743, ptr %1744, align 8, !tbaa !369
  br label %1745

1745:                                             ; preds = %1729, %1660
  %1746 = fadd double %1661, %1557
  %1747 = fadd double %1674, %1746
  %1748 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 3, i32 8
  %1749 = load float, ptr %1748, align 4, !tbaa !370
  %1750 = fpext float %1749 to double
  %1751 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 2, i32 8
  %1752 = load float, ptr %1751, align 4, !tbaa !370
  %1753 = fpext float %1752 to double
  %1754 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 1, i32 8
  %1755 = load float, ptr %1754, align 4, !tbaa !370
  %1756 = fpext float %1755 to double
  %1757 = fmul double %1557, %1756
  %1758 = tail call double @llvm.fmuladd.f64(double %1661, double %1753, double %1757)
  %1759 = tail call double @llvm.fmuladd.f64(double %1674, double %1750, double %1758)
  %1760 = fmul double %1747, %1759
  %1761 = fptrunc double %1760 to float
  %1762 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %1761, ptr %1762, align 4, !tbaa !370
  br label %2141

1763:                                             ; preds = %19
  %1764 = fadd double %3, 5.000000e-01
  %1765 = tail call double @llvm.floor.f64(double %1764)
  %1766 = fptosi double %1765 to i64
  %1767 = fadd double %4, 5.000000e-01
  %1768 = tail call double @llvm.floor.f64(double %1767)
  %1769 = fptosi double %1768 to i64
  %1770 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %1766, i64 noundef %1769, i64 noundef 1, i64 noundef 1, ptr noundef %6) #24
  %1771 = icmp eq ptr %1770, null
  br i1 %1771, label %2141, label %1772

1772:                                             ; preds = %1763
  %1773 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #19
  %1774 = getelementptr inbounds %struct._PixelPacket, ptr %1770, i64 0, i32 2
  %1775 = load i16, ptr %1774, align 2, !tbaa !69
  %1776 = uitofp i16 %1775 to float
  %1777 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %1776, ptr %1777, align 8, !tbaa !366
  %1778 = getelementptr inbounds %struct._PixelPacket, ptr %1770, i64 0, i32 1
  %1779 = load i16, ptr %1778, align 2, !tbaa !68
  %1780 = uitofp i16 %1779 to float
  %1781 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %1780, ptr %1781, align 4, !tbaa !367
  %1782 = load i16, ptr %1770, align 2, !tbaa !67
  %1783 = uitofp i16 %1782 to float
  %1784 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %1783, ptr %1784, align 8, !tbaa !368
  %1785 = getelementptr inbounds %struct._PixelPacket, ptr %1770, i64 0, i32 3
  %1786 = load i16, ptr %1785, align 2, !tbaa !72
  %1787 = uitofp i16 %1786 to float
  %1788 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %1787, ptr %1788, align 4, !tbaa !370
  %1789 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1790 = load i32, ptr %1789, align 4, !tbaa !60
  %1791 = icmp eq i32 %1790, 12
  %1792 = icmp ne ptr %1773, null
  %1793 = and i1 %1792, %1791
  br i1 %1793, label %1794, label %2141

1794:                                             ; preds = %1772
  %1795 = load i16, ptr %1773, align 2, !tbaa !85
  %1796 = uitofp i16 %1795 to float
  %1797 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  store float %1796, ptr %1797, align 8, !tbaa !369
  br label %2141

1798:                                             ; preds = %19
  %1799 = add nsw i64 %12, -1
  %1800 = add nsw i64 %14, -1
  %1801 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %1, i64 noundef %1799, i64 noundef %1800, i64 noundef 4, i64 noundef 4, ptr noundef %6) #24
  %1802 = icmp eq ptr %1801, null
  br i1 %1802, label %2141, label %1803

1803:                                             ; preds = %1798
  %1804 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %1) #19
  %1805 = icmp eq ptr %0, null
  %1806 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %1807 = load i32, ptr %1806, align 8, !tbaa !216
  %1808 = icmp eq i32 %1807, 0
  %1809 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1810 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %1811 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %1812 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %1813 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1814 = icmp ne ptr %1804, null
  %1815 = icmp eq ptr %1804, null
  %1816 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %1817 = icmp ne ptr %1804, null
  %1818 = icmp eq ptr %1804, null
  br label %1819

1819:                                             ; preds = %1803, %1895
  %1820 = phi i64 [ 0, %1803 ], [ %1896, %1895 ]
  %1821 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1820
  store i32 1, ptr %1821, align 8, !tbaa !209
  %1822 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1820, i32 1
  store i32 13, ptr %1822, align 4, !tbaa !211
  %1823 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1820, i32 2
  store i32 0, ptr %1823, align 8, !tbaa !212
  %1824 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1820, i32 3
  store double 0.000000e+00, ptr %1824, align 8, !tbaa !213
  %1825 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1820, i32 4
  store i64 16, ptr %1825, align 8, !tbaa !214
  %1826 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1820, i32 5
  %1827 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1820, i32 6
  %1828 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1820, i32 7
  %1829 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1820, i32 8
  %1830 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 %1820, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1826, i8 0, i64 20, i1 false)
  br i1 %1805, label %1837, label %1831

1831:                                             ; preds = %1819
  %1832 = load i32, ptr %0, align 8, !tbaa !215
  store i32 %1832, ptr %1821, align 8, !tbaa !209
  %1833 = load i32, ptr %1809, align 4, !tbaa !60
  store i32 %1833, ptr %1822, align 4, !tbaa !211
  %1834 = load i32, ptr %1810, align 8, !tbaa !216
  store i32 %1834, ptr %1823, align 8, !tbaa !212
  %1835 = load i64, ptr %1811, align 8, !tbaa !217
  store i64 %1835, ptr %1825, align 8, !tbaa !214
  %1836 = load double, ptr %1812, align 8, !tbaa !218
  store double %1836, ptr %1824, align 8, !tbaa !213
  br label %1837

1837:                                             ; preds = %1819, %1831
  %1838 = getelementptr inbounds %struct._PixelPacket, ptr %1801, i64 %1820
  %1839 = getelementptr inbounds i16, ptr %1804, i64 %1820
  %1840 = getelementptr inbounds float, ptr %9, i64 %1820
  br i1 %1808, label %1841, label %1863

1841:                                             ; preds = %1837
  store float 1.000000e+00, ptr %1840, align 4, !tbaa !43
  %1842 = getelementptr inbounds %struct._PixelPacket, ptr %1801, i64 %1820, i32 2
  %1843 = load i16, ptr %1842, align 2, !tbaa !69
  %1844 = uitofp i16 %1843 to float
  store float %1844, ptr %1826, align 8, !tbaa !366
  %1845 = getelementptr inbounds %struct._PixelPacket, ptr %1801, i64 %1820, i32 1
  %1846 = load i16, ptr %1845, align 2, !tbaa !68
  %1847 = uitofp i16 %1846 to float
  store float %1847, ptr %1827, align 4, !tbaa !367
  %1848 = load i16, ptr %1838, align 2, !tbaa !67
  %1849 = uitofp i16 %1848 to float
  store float %1849, ptr %1828, align 8, !tbaa !368
  %1850 = getelementptr inbounds %struct._PixelPacket, ptr %1801, i64 %1820, i32 3
  %1851 = load i16, ptr %1850, align 2, !tbaa !72
  %1852 = uitofp i16 %1851 to float
  store float %1852, ptr %1829, align 4, !tbaa !370
  store float 0.000000e+00, ptr %1830, align 8, !tbaa !369
  %1853 = load i32, ptr %1816, align 4, !tbaa !60
  %1854 = icmp eq i32 %1853, 12
  br i1 %1854, label %1859, label %1855

1855:                                             ; preds = %1841
  %1856 = load i32, ptr %0, align 8, !tbaa !215
  %1857 = icmp eq i32 %1856, 2
  %1858 = and i1 %1817, %1857
  br i1 %1858, label %1860, label %1895

1859:                                             ; preds = %1841
  br i1 %1818, label %1895, label %1860

1860:                                             ; preds = %1859, %1855
  %1861 = load i16, ptr %1839, align 2, !tbaa !85
  %1862 = uitofp i16 %1861 to float
  br label %1893

1863:                                             ; preds = %1837
  %1864 = getelementptr inbounds %struct._PixelPacket, ptr %1801, i64 %1820, i32 3
  %1865 = load i16, ptr %1864, align 2, !tbaa !72
  %1866 = xor i16 %1865, -1
  %1867 = uitofp i16 %1866 to double
  %1868 = fmul double %1867, 0x3EF0001000100010
  %1869 = fptrunc double %1868 to float
  store float %1869, ptr %1840, align 4, !tbaa !43
  %1870 = getelementptr inbounds %struct._PixelPacket, ptr %1801, i64 %1820, i32 2
  %1871 = load i16, ptr %1870, align 2, !tbaa !69
  %1872 = uitofp i16 %1871 to float
  %1873 = fmul float %1869, %1872
  store float %1873, ptr %1826, align 8, !tbaa !366
  %1874 = getelementptr inbounds %struct._PixelPacket, ptr %1801, i64 %1820, i32 1
  %1875 = load i16, ptr %1874, align 2, !tbaa !68
  %1876 = uitofp i16 %1875 to float
  %1877 = fmul float %1869, %1876
  store float %1877, ptr %1827, align 4, !tbaa !367
  %1878 = load i16, ptr %1838, align 2, !tbaa !67
  %1879 = uitofp i16 %1878 to float
  %1880 = fmul float %1869, %1879
  store float %1880, ptr %1828, align 8, !tbaa !368
  %1881 = uitofp i16 %1865 to float
  store float %1881, ptr %1829, align 4, !tbaa !370
  store float 0.000000e+00, ptr %1830, align 8, !tbaa !369
  %1882 = load i32, ptr %1813, align 4, !tbaa !60
  %1883 = icmp eq i32 %1882, 12
  br i1 %1883, label %1888, label %1884

1884:                                             ; preds = %1863
  %1885 = load i32, ptr %0, align 8, !tbaa !215
  %1886 = icmp eq i32 %1885, 2
  %1887 = and i1 %1814, %1886
  br i1 %1887, label %1889, label %1895

1888:                                             ; preds = %1863
  br i1 %1815, label %1895, label %1889

1889:                                             ; preds = %1888, %1884
  %1890 = load i16, ptr %1839, align 2, !tbaa !85
  %1891 = uitofp i16 %1890 to float
  %1892 = fmul float %1869, %1891
  br label %1893

1893:                                             ; preds = %1889, %1860
  %1894 = phi float [ %1862, %1860 ], [ %1892, %1889 ]
  store float %1894, ptr %1830, align 8, !tbaa !369
  br label %1895

1895:                                             ; preds = %1893, %1888, %1855, %1859, %1884
  %1896 = add nuw nsw i64 %1820, 1
  %1897 = icmp eq i64 %1896, 16
  br i1 %1897, label %1898, label %1819, !llvm.loop !383

1898:                                             ; preds = %1895
  %1899 = sitofp i64 %12 to double
  %1900 = fsub double %3, %1899
  %1901 = fptrunc double %1900 to float
  %1902 = fsub float 1.000000e+00, %1901
  %1903 = fmul float %1901, 0x3FC5555560000000
  %1904 = fmul float %1903, %1901
  %1905 = fmul float %1904, %1901
  %1906 = fmul float %1902, 0x3FC5555560000000
  %1907 = fmul float %1902, %1906
  %1908 = fmul float %1902, %1907
  %1909 = fsub float %1905, %1908
  %1910 = fsub float %1902, %1908
  %1911 = fadd float %1910, %1909
  %1912 = fsub float %1901, %1905
  %1913 = fsub float %1912, %1909
  %1914 = sitofp i64 %14 to double
  %1915 = fsub double %4, %1914
  %1916 = fptrunc double %1915 to float
  %1917 = fsub float 1.000000e+00, %1916
  %1918 = fmul float %1916, 0x3FC5555560000000
  %1919 = fmul float %1918, %1916
  %1920 = fmul float %1919, %1916
  %1921 = fmul float %1917, 0x3FC5555560000000
  %1922 = fmul float %1917, %1921
  %1923 = fmul float %1917, %1922
  %1924 = fsub float %1920, %1923
  %1925 = fsub float %1917, %1923
  %1926 = fadd float %1925, %1924
  %1927 = fsub float %1916, %1920
  %1928 = fsub float %1927, %1924
  %1929 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %1930 = load float, ptr %1929, align 16, !tbaa !366
  %1931 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 5
  %1932 = load float, ptr %1931, align 8, !tbaa !366
  %1933 = fmul float %1911, %1932
  %1934 = tail call float @llvm.fmuladd.f32(float %1908, float %1930, float %1933)
  %1935 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 5
  %1936 = load float, ptr %1935, align 16, !tbaa !366
  %1937 = tail call float @llvm.fmuladd.f32(float %1913, float %1936, float %1934)
  %1938 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 5
  %1939 = load float, ptr %1938, align 8, !tbaa !366
  %1940 = tail call float @llvm.fmuladd.f32(float %1905, float %1939, float %1937)
  %1941 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 4, i32 5
  %1942 = load float, ptr %1941, align 16, !tbaa !366
  %1943 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 5, i32 5
  %1944 = load float, ptr %1943, align 8, !tbaa !366
  %1945 = fmul float %1911, %1944
  %1946 = tail call float @llvm.fmuladd.f32(float %1908, float %1942, float %1945)
  %1947 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 6, i32 5
  %1948 = load float, ptr %1947, align 16, !tbaa !366
  %1949 = tail call float @llvm.fmuladd.f32(float %1913, float %1948, float %1946)
  %1950 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 7, i32 5
  %1951 = load float, ptr %1950, align 8, !tbaa !366
  %1952 = tail call float @llvm.fmuladd.f32(float %1905, float %1951, float %1949)
  %1953 = fmul float %1926, %1952
  %1954 = tail call float @llvm.fmuladd.f32(float %1923, float %1940, float %1953)
  %1955 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 8, i32 5
  %1956 = load float, ptr %1955, align 16, !tbaa !366
  %1957 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 9, i32 5
  %1958 = load float, ptr %1957, align 8, !tbaa !366
  %1959 = fmul float %1911, %1958
  %1960 = tail call float @llvm.fmuladd.f32(float %1908, float %1956, float %1959)
  %1961 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 10, i32 5
  %1962 = load float, ptr %1961, align 16, !tbaa !366
  %1963 = tail call float @llvm.fmuladd.f32(float %1913, float %1962, float %1960)
  %1964 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 11, i32 5
  %1965 = load float, ptr %1964, align 8, !tbaa !366
  %1966 = tail call float @llvm.fmuladd.f32(float %1905, float %1965, float %1963)
  %1967 = tail call float @llvm.fmuladd.f32(float %1928, float %1966, float %1954)
  %1968 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 12, i32 5
  %1969 = load float, ptr %1968, align 16, !tbaa !366
  %1970 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 13, i32 5
  %1971 = load float, ptr %1970, align 8, !tbaa !366
  %1972 = fmul float %1911, %1971
  %1973 = tail call float @llvm.fmuladd.f32(float %1908, float %1969, float %1972)
  %1974 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 14, i32 5
  %1975 = load float, ptr %1974, align 16, !tbaa !366
  %1976 = tail call float @llvm.fmuladd.f32(float %1913, float %1975, float %1973)
  %1977 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 15, i32 5
  %1978 = load float, ptr %1977, align 8, !tbaa !366
  %1979 = tail call float @llvm.fmuladd.f32(float %1905, float %1978, float %1976)
  %1980 = tail call float @llvm.fmuladd.f32(float %1920, float %1979, float %1967)
  %1981 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  store float %1980, ptr %1981, align 8, !tbaa !366
  %1982 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %1983 = load float, ptr %1982, align 4, !tbaa !367
  %1984 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 6
  %1985 = load float, ptr %1984, align 4, !tbaa !367
  %1986 = fmul float %1911, %1985
  %1987 = tail call float @llvm.fmuladd.f32(float %1908, float %1983, float %1986)
  %1988 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 6
  %1989 = load float, ptr %1988, align 4, !tbaa !367
  %1990 = tail call float @llvm.fmuladd.f32(float %1913, float %1989, float %1987)
  %1991 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 6
  %1992 = load float, ptr %1991, align 4, !tbaa !367
  %1993 = tail call float @llvm.fmuladd.f32(float %1905, float %1992, float %1990)
  %1994 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 4, i32 6
  %1995 = load float, ptr %1994, align 4, !tbaa !367
  %1996 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 5, i32 6
  %1997 = load float, ptr %1996, align 4, !tbaa !367
  %1998 = fmul float %1911, %1997
  %1999 = tail call float @llvm.fmuladd.f32(float %1908, float %1995, float %1998)
  %2000 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 6, i32 6
  %2001 = load float, ptr %2000, align 4, !tbaa !367
  %2002 = tail call float @llvm.fmuladd.f32(float %1913, float %2001, float %1999)
  %2003 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 7, i32 6
  %2004 = load float, ptr %2003, align 4, !tbaa !367
  %2005 = tail call float @llvm.fmuladd.f32(float %1905, float %2004, float %2002)
  %2006 = fmul float %1926, %2005
  %2007 = tail call float @llvm.fmuladd.f32(float %1923, float %1993, float %2006)
  %2008 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 8, i32 6
  %2009 = load float, ptr %2008, align 4, !tbaa !367
  %2010 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 9, i32 6
  %2011 = load float, ptr %2010, align 4, !tbaa !367
  %2012 = fmul float %1911, %2011
  %2013 = tail call float @llvm.fmuladd.f32(float %1908, float %2009, float %2012)
  %2014 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 10, i32 6
  %2015 = load float, ptr %2014, align 4, !tbaa !367
  %2016 = tail call float @llvm.fmuladd.f32(float %1913, float %2015, float %2013)
  %2017 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 11, i32 6
  %2018 = load float, ptr %2017, align 4, !tbaa !367
  %2019 = tail call float @llvm.fmuladd.f32(float %1905, float %2018, float %2016)
  %2020 = tail call float @llvm.fmuladd.f32(float %1928, float %2019, float %2007)
  %2021 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 12, i32 6
  %2022 = load float, ptr %2021, align 4, !tbaa !367
  %2023 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 13, i32 6
  %2024 = load float, ptr %2023, align 4, !tbaa !367
  %2025 = fmul float %1911, %2024
  %2026 = tail call float @llvm.fmuladd.f32(float %1908, float %2022, float %2025)
  %2027 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 14, i32 6
  %2028 = load float, ptr %2027, align 4, !tbaa !367
  %2029 = tail call float @llvm.fmuladd.f32(float %1913, float %2028, float %2026)
  %2030 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 15, i32 6
  %2031 = load float, ptr %2030, align 4, !tbaa !367
  %2032 = tail call float @llvm.fmuladd.f32(float %1905, float %2031, float %2029)
  %2033 = tail call float @llvm.fmuladd.f32(float %1920, float %2032, float %2020)
  %2034 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  store float %2033, ptr %2034, align 4, !tbaa !367
  %2035 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %2036 = load float, ptr %2035, align 8, !tbaa !368
  %2037 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 7
  %2038 = load float, ptr %2037, align 16, !tbaa !368
  %2039 = fmul float %1911, %2038
  %2040 = tail call float @llvm.fmuladd.f32(float %1908, float %2036, float %2039)
  %2041 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 7
  %2042 = load float, ptr %2041, align 8, !tbaa !368
  %2043 = tail call float @llvm.fmuladd.f32(float %1913, float %2042, float %2040)
  %2044 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 7
  %2045 = load float, ptr %2044, align 16, !tbaa !368
  %2046 = tail call float @llvm.fmuladd.f32(float %1905, float %2045, float %2043)
  %2047 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 4, i32 7
  %2048 = load float, ptr %2047, align 8, !tbaa !368
  %2049 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 5, i32 7
  %2050 = load float, ptr %2049, align 16, !tbaa !368
  %2051 = fmul float %1911, %2050
  %2052 = tail call float @llvm.fmuladd.f32(float %1908, float %2048, float %2051)
  %2053 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 6, i32 7
  %2054 = load float, ptr %2053, align 8, !tbaa !368
  %2055 = tail call float @llvm.fmuladd.f32(float %1913, float %2054, float %2052)
  %2056 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 7, i32 7
  %2057 = load float, ptr %2056, align 16, !tbaa !368
  %2058 = tail call float @llvm.fmuladd.f32(float %1905, float %2057, float %2055)
  %2059 = fmul float %1926, %2058
  %2060 = tail call float @llvm.fmuladd.f32(float %1923, float %2046, float %2059)
  %2061 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 8, i32 7
  %2062 = load float, ptr %2061, align 8, !tbaa !368
  %2063 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 9, i32 7
  %2064 = load float, ptr %2063, align 16, !tbaa !368
  %2065 = fmul float %1911, %2064
  %2066 = tail call float @llvm.fmuladd.f32(float %1908, float %2062, float %2065)
  %2067 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 10, i32 7
  %2068 = load float, ptr %2067, align 8, !tbaa !368
  %2069 = tail call float @llvm.fmuladd.f32(float %1913, float %2068, float %2066)
  %2070 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 11, i32 7
  %2071 = load float, ptr %2070, align 16, !tbaa !368
  %2072 = tail call float @llvm.fmuladd.f32(float %1905, float %2071, float %2069)
  %2073 = tail call float @llvm.fmuladd.f32(float %1928, float %2072, float %2060)
  %2074 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 12, i32 7
  %2075 = load float, ptr %2074, align 8, !tbaa !368
  %2076 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 13, i32 7
  %2077 = load float, ptr %2076, align 16, !tbaa !368
  %2078 = fmul float %1911, %2077
  %2079 = tail call float @llvm.fmuladd.f32(float %1908, float %2075, float %2078)
  %2080 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 14, i32 7
  %2081 = load float, ptr %2080, align 8, !tbaa !368
  %2082 = tail call float @llvm.fmuladd.f32(float %1913, float %2081, float %2079)
  %2083 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 15, i32 7
  %2084 = load float, ptr %2083, align 16, !tbaa !368
  %2085 = tail call float @llvm.fmuladd.f32(float %1905, float %2084, float %2082)
  %2086 = tail call float @llvm.fmuladd.f32(float %1920, float %2085, float %2073)
  %2087 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  store float %2086, ptr %2087, align 8, !tbaa !368
  %2088 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %2089 = load float, ptr %2088, align 4, !tbaa !370
  %2090 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 1, i32 8
  %2091 = load float, ptr %2090, align 4, !tbaa !370
  %2092 = fmul float %1911, %2091
  %2093 = tail call float @llvm.fmuladd.f32(float %1908, float %2089, float %2092)
  %2094 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 2, i32 8
  %2095 = load float, ptr %2094, align 4, !tbaa !370
  %2096 = tail call float @llvm.fmuladd.f32(float %1913, float %2095, float %2093)
  %2097 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 3, i32 8
  %2098 = load float, ptr %2097, align 4, !tbaa !370
  %2099 = tail call float @llvm.fmuladd.f32(float %1905, float %2098, float %2096)
  %2100 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 4, i32 8
  %2101 = load float, ptr %2100, align 4, !tbaa !370
  %2102 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 5, i32 8
  %2103 = load float, ptr %2102, align 4, !tbaa !370
  %2104 = fmul float %1911, %2103
  %2105 = tail call float @llvm.fmuladd.f32(float %1908, float %2101, float %2104)
  %2106 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 6, i32 8
  %2107 = load float, ptr %2106, align 4, !tbaa !370
  %2108 = tail call float @llvm.fmuladd.f32(float %1913, float %2107, float %2105)
  %2109 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 7, i32 8
  %2110 = load float, ptr %2109, align 4, !tbaa !370
  %2111 = tail call float @llvm.fmuladd.f32(float %1905, float %2110, float %2108)
  %2112 = fmul float %1926, %2111
  %2113 = tail call float @llvm.fmuladd.f32(float %1923, float %2099, float %2112)
  %2114 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 8, i32 8
  %2115 = load float, ptr %2114, align 4, !tbaa !370
  %2116 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 9, i32 8
  %2117 = load float, ptr %2116, align 4, !tbaa !370
  %2118 = fmul float %1911, %2117
  %2119 = tail call float @llvm.fmuladd.f32(float %1908, float %2115, float %2118)
  %2120 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 10, i32 8
  %2121 = load float, ptr %2120, align 4, !tbaa !370
  %2122 = tail call float @llvm.fmuladd.f32(float %1913, float %2121, float %2119)
  %2123 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 11, i32 8
  %2124 = load float, ptr %2123, align 4, !tbaa !370
  %2125 = tail call float @llvm.fmuladd.f32(float %1905, float %2124, float %2122)
  %2126 = tail call float @llvm.fmuladd.f32(float %1928, float %2125, float %2113)
  %2127 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 12, i32 8
  %2128 = load float, ptr %2127, align 4, !tbaa !370
  %2129 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 13, i32 8
  %2130 = load float, ptr %2129, align 4, !tbaa !370
  %2131 = fmul float %1911, %2130
  %2132 = tail call float @llvm.fmuladd.f32(float %1908, float %2128, float %2131)
  %2133 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 14, i32 8
  %2134 = load float, ptr %2133, align 4, !tbaa !370
  %2135 = tail call float @llvm.fmuladd.f32(float %1913, float %2134, float %2132)
  %2136 = getelementptr inbounds [16 x %struct._MagickPixelPacket], ptr %8, i64 0, i64 15, i32 8
  %2137 = load float, ptr %2136, align 4, !tbaa !370
  %2138 = tail call float @llvm.fmuladd.f32(float %1905, float %2137, float %2135)
  %2139 = tail call float @llvm.fmuladd.f32(float %1920, float %2138, float %2126)
  %2140 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  store float %2139, ptr %2140, align 4, !tbaa !370
  br label %2141

2141:                                             ; preds = %1898, %1798, %1794, %1772, %1110, %1642, %1745, %1436, %1538, %1106, %1084, %791, %691, %227, %207, %1763, %1081, %465, %444, %229, %184, %33, %1079, %656
  %2142 = phi i32 [ %1080, %1079 ], [ 1, %656 ], [ 1, %184 ], [ 0, %33 ], [ 1, %444 ], [ 0, %229 ], [ 0, %465 ], [ 0, %1081 ], [ 0, %1763 ], [ 1, %207 ], [ 1, %227 ], [ 1, %791 ], [ 0, %691 ], [ 1, %1084 ], [ 1, %1106 ], [ 0, %1110 ], [ 1, %1642 ], [ 1, %1745 ], [ 1, %1436 ], [ 1, %1538 ], [ 1, %1772 ], [ 1, %1794 ], [ 1, %1898 ], [ 0, %1798 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 896, ptr nonnull %8) #19
  ret i32 %2142
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #12

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare ptr @ExcerptImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ResizeImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @div(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #14

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SyncAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetAuthenticIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { hot mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { hot }
attributes #24 = { hot nounwind }

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
!38 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 16, i64 8, !39, i64 24, i64 8, !41, i64 32, i64 4, !43, i64 36, i64 4, !43, i64 40, i64 4, !43, i64 44, i64 4, !43, i64 48, i64 4, !43}
!39 = !{!40, !40, i64 0}
!40 = !{!"double", !36, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !36, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !36, i64 0}
!45 = !{!46, !35, i64 12976}
!46 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !42, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !47, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !40, i64 104, !50, i64 112, !35, i64 208, !47, i64 216, !35, i64 224, !47, i64 232, !47, i64 240, !47, i64 248, !42, i64 256, !40, i64 264, !40, i64 272, !52, i64 280, !52, i64 312, !52, i64 344, !40, i64 376, !40, i64 384, !40, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !47, i64 424, !42, i64 432, !42, i64 440, !42, i64 448, !42, i64 456, !42, i64 464, !42, i64 472, !53, i64 480, !54, i64 504, !47, i64 568, !47, i64 576, !47, i64 584, !47, i64 592, !47, i64 600, !47, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !42, i64 12904, !42, i64 12912, !56, i64 12920, !35, i64 12976, !42, i64 12984, !47, i64 12992, !57, i64 13000, !57, i64 13032, !47, i64 13064, !42, i64 13072, !42, i64 13080, !47, i64 13088, !47, i64 13096, !47, i64 13104, !35, i64 13112, !35, i64 13116, !48, i64 13120, !47, i64 13128, !52, i64 13136, !47, i64 13168, !47, i64 13176, !35, i64 13184, !35, i64 13188, !58, i64 13192, !35, i64 13200, !42, i64 13208, !42, i64 13216, !35, i64 13224, !42, i64 13232}
!47 = !{!"any pointer", !36, i64 0}
!48 = !{!"_PixelPacket", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6}
!49 = !{!"short", !36, i64 0}
!50 = !{!"_ChromaticityInfo", !51, i64 0, !51, i64 24, !51, i64 48, !51, i64 72}
!51 = !{!"_PrimaryInfo", !40, i64 0, !40, i64 8, !40, i64 16}
!52 = !{!"_RectangleInfo", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!53 = !{!"_ErrorInfo", !40, i64 0, !40, i64 8, !40, i64 16}
!54 = !{!"_TimerInfo", !55, i64 0, !55, i64 24, !35, i64 48, !42, i64 56}
!55 = !{!"_Timer", !40, i64 0, !40, i64 8, !40, i64 16}
!56 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !47, i64 8, !47, i64 16, !47, i64 24, !35, i64 32, !47, i64 40, !42, i64 48}
!57 = !{!"_ProfileInfo", !47, i64 0, !42, i64 8, !47, i64 16, !42, i64 24}
!58 = !{!"long long", !36, i64 0}
!59 = !{!36, !36, i64 0}
!60 = !{!46, !35, i64 4}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"ExportCharPixel: argument 0"}
!66 = distinct !{!66, !"ExportCharPixel"}
!67 = !{!48, !49, i64 0}
!68 = !{!48, !49, i64 2}
!69 = !{!48, !49, i64 4}
!70 = distinct !{!70, !62, !63}
!71 = distinct !{!71, !62, !63}
!72 = !{!48, !49, i64 6}
!73 = distinct !{!73, !62, !63}
!74 = distinct !{!74, !62, !63}
!75 = distinct !{!75, !62, !63}
!76 = distinct !{!76, !62, !63}
!77 = distinct !{!77, !62, !63}
!78 = distinct !{!78, !62, !63}
!79 = distinct !{!79, !62, !63}
!80 = distinct !{!80, !62, !63}
!81 = distinct !{!81, !62, !63}
!82 = distinct !{!82, !62, !63}
!83 = distinct !{!83, !62, !63}
!84 = distinct !{!84, !62, !63}
!85 = !{!49, !49, i64 0}
!86 = distinct !{!86, !62, !63}
!87 = distinct !{!87, !62, !63}
!88 = distinct !{!88, !62, !63}
!89 = !{!90}
!90 = distinct !{!90, !91, !"ExportDoublePixel: argument 0"}
!91 = distinct !{!91, !"ExportDoublePixel"}
!92 = distinct !{!92, !62, !63}
!93 = distinct !{!93, !62, !63}
!94 = distinct !{!94, !62, !63}
!95 = distinct !{!95, !62, !63}
!96 = distinct !{!96, !62, !63}
!97 = distinct !{!97, !62, !63}
!98 = distinct !{!98, !62, !63}
!99 = distinct !{!99, !62, !63}
!100 = distinct !{!100, !62, !63}
!101 = distinct !{!101, !62, !63}
!102 = distinct !{!102, !62, !63}
!103 = distinct !{!103, !62, !63}
!104 = distinct !{!104, !62, !63}
!105 = distinct !{!105, !62, !63}
!106 = distinct !{!106, !62, !63}
!107 = distinct !{!107, !62, !63}
!108 = distinct !{!108, !62, !63}
!109 = !{!110}
!110 = distinct !{!110, !111, !"ExportFloatPixel: argument 0"}
!111 = distinct !{!111, !"ExportFloatPixel"}
!112 = distinct !{!112, !62, !63}
!113 = distinct !{!113, !62, !63}
!114 = distinct !{!114, !62, !63}
!115 = distinct !{!115, !62, !63}
!116 = distinct !{!116, !62, !63}
!117 = distinct !{!117, !62, !63}
!118 = distinct !{!118, !62, !63}
!119 = distinct !{!119, !62, !63}
!120 = distinct !{!120, !62, !63}
!121 = distinct !{!121, !62, !63}
!122 = distinct !{!122, !62, !63}
!123 = distinct !{!123, !62, !63}
!124 = distinct !{!124, !62, !63}
!125 = distinct !{!125, !62, !63}
!126 = distinct !{!126, !62, !63}
!127 = distinct !{!127, !62, !63}
!128 = distinct !{!128, !62, !63}
!129 = !{!130}
!130 = distinct !{!130, !131, !"ExportIntegerPixel: argument 0"}
!131 = distinct !{!131, !"ExportIntegerPixel"}
!132 = distinct !{!132, !62, !63}
!133 = distinct !{!133, !62, !63}
!134 = distinct !{!134, !62, !63}
!135 = distinct !{!135, !62, !63}
!136 = distinct !{!136, !62, !63}
!137 = distinct !{!137, !62, !63}
!138 = distinct !{!138, !62, !63}
!139 = distinct !{!139, !62, !63}
!140 = distinct !{!140, !62, !63}
!141 = distinct !{!141, !62, !63}
!142 = distinct !{!142, !62, !63}
!143 = distinct !{!143, !62, !63}
!144 = distinct !{!144, !62, !63}
!145 = distinct !{!145, !62, !63}
!146 = distinct !{!146, !62, !63}
!147 = distinct !{!147, !62, !63}
!148 = distinct !{!148, !62, !63}
!149 = !{!150}
!150 = distinct !{!150, !151, !"ExportLongPixel: argument 0"}
!151 = distinct !{!151, !"ExportLongPixel"}
!152 = distinct !{!152, !62, !63}
!153 = distinct !{!153, !62, !63}
!154 = distinct !{!154, !62, !63}
!155 = distinct !{!155, !62, !63}
!156 = distinct !{!156, !62, !63}
!157 = distinct !{!157, !62, !63}
!158 = distinct !{!158, !62, !63}
!159 = distinct !{!159, !62, !63}
!160 = distinct !{!160, !62, !63}
!161 = distinct !{!161, !62, !63}
!162 = distinct !{!162, !62, !63}
!163 = distinct !{!163, !62, !63}
!164 = distinct !{!164, !62, !63}
!165 = distinct !{!165, !62, !63}
!166 = distinct !{!166, !62, !63}
!167 = distinct !{!167, !62, !63}
!168 = distinct !{!168, !62, !63}
!169 = !{!170}
!170 = distinct !{!170, !171, !"ExportQuantumPixel: argument 0"}
!171 = distinct !{!171, !"ExportQuantumPixel"}
!172 = distinct !{!172, !62, !63}
!173 = distinct !{!173, !62, !63}
!174 = distinct !{!174, !62, !63}
!175 = distinct !{!175, !62, !63}
!176 = distinct !{!176, !62, !63}
!177 = distinct !{!177, !62, !63}
!178 = distinct !{!178, !62, !63}
!179 = distinct !{!179, !62, !63}
!180 = distinct !{!180, !62, !63}
!181 = distinct !{!181, !62, !63}
!182 = distinct !{!182, !62, !63}
!183 = distinct !{!183, !62, !63}
!184 = distinct !{!184, !62, !63}
!185 = distinct !{!185, !62, !63}
!186 = distinct !{!186, !62, !63}
!187 = distinct !{!187, !62, !63}
!188 = distinct !{!188, !62, !63}
!189 = !{!190}
!190 = distinct !{!190, !191, !"ExportShortPixel: argument 0"}
!191 = distinct !{!191, !"ExportShortPixel"}
!192 = distinct !{!192, !62, !63}
!193 = distinct !{!193, !62, !63}
!194 = distinct !{!194, !62, !63}
!195 = distinct !{!195, !62, !63}
!196 = distinct !{!196, !62, !63}
!197 = distinct !{!197, !62, !63}
!198 = distinct !{!198, !62, !63}
!199 = distinct !{!199, !62, !63}
!200 = distinct !{!200, !62, !63}
!201 = distinct !{!201, !62, !63}
!202 = distinct !{!202, !62, !63}
!203 = distinct !{!203, !62, !63}
!204 = distinct !{!204, !62, !63}
!205 = distinct !{!205, !62, !63}
!206 = distinct !{!206, !62, !63}
!207 = distinct !{!207, !62, !63}
!208 = distinct !{!208, !62, !63}
!209 = !{!210, !35, i64 0}
!210 = !{!"_MagickPixelPacket", !35, i64 0, !35, i64 4, !35, i64 8, !40, i64 16, !42, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48}
!211 = !{!210, !35, i64 4}
!212 = !{!210, !35, i64 8}
!213 = !{!210, !40, i64 16}
!214 = !{!210, !42, i64 24}
!215 = !{!46, !35, i64 0}
!216 = !{!46, !35, i64 32}
!217 = !{!46, !42, i64 56}
!218 = !{!46, !40, i64 392}
!219 = !{!46, !35, i64 13224}
!220 = distinct !{!220, !62, !63}
!221 = !{!222}
!222 = distinct !{!222, !223, !"ImportCharPixel: argument 0"}
!223 = distinct !{!223, !"ImportCharPixel"}
!224 = distinct !{!224, !62, !63}
!225 = distinct !{!225, !62, !63}
!226 = distinct !{!226, !62, !63}
!227 = distinct !{!227, !62, !63}
!228 = distinct !{!228, !62, !63}
!229 = distinct !{!229, !62, !63}
!230 = distinct !{!230, !62, !63}
!231 = distinct !{!231, !62, !63}
!232 = distinct !{!232, !62, !63}
!233 = distinct !{!233, !62, !63}
!234 = distinct !{!234, !62, !63}
!235 = distinct !{!235, !62, !63}
!236 = distinct !{!236, !62, !63}
!237 = distinct !{!237, !62, !63}
!238 = distinct !{!238, !62, !63}
!239 = distinct !{!239, !62, !63}
!240 = distinct !{!240, !62, !63}
!241 = distinct !{!241, !62, !63}
!242 = distinct !{!242, !62, !63}
!243 = distinct !{!243, !62, !63}
!244 = distinct !{!244, !62, !63}
!245 = !{!246}
!246 = distinct !{!246, !247, !"ImportDoublePixel: argument 0"}
!247 = distinct !{!247, !"ImportDoublePixel"}
!248 = distinct !{!248, !62, !63}
!249 = distinct !{!249, !62, !63}
!250 = distinct !{!250, !62, !63}
!251 = distinct !{!251, !62, !63}
!252 = distinct !{!252, !62, !63}
!253 = distinct !{!253, !62, !63}
!254 = distinct !{!254, !62, !63}
!255 = distinct !{!255, !62, !63}
!256 = distinct !{!256, !62, !63}
!257 = distinct !{!257, !62, !63}
!258 = distinct !{!258, !62, !63}
!259 = distinct !{!259, !62, !63}
!260 = distinct !{!260, !62, !63}
!261 = distinct !{!261, !62, !63}
!262 = distinct !{!262, !62, !63}
!263 = distinct !{!263, !62, !63}
!264 = distinct !{!264, !62, !63}
!265 = !{!266}
!266 = distinct !{!266, !267, !"ImportFloatPixel: argument 0"}
!267 = distinct !{!267, !"ImportFloatPixel"}
!268 = distinct !{!268, !62, !63}
!269 = distinct !{!269, !62, !63}
!270 = distinct !{!270, !62, !63}
!271 = distinct !{!271, !62, !63}
!272 = distinct !{!272, !62, !63}
!273 = distinct !{!273, !62, !63}
!274 = distinct !{!274, !62, !63}
!275 = distinct !{!275, !62, !63}
!276 = distinct !{!276, !62, !63}
!277 = distinct !{!277, !62, !63}
!278 = distinct !{!278, !62, !63}
!279 = distinct !{!279, !62, !63}
!280 = distinct !{!280, !62, !63}
!281 = distinct !{!281, !62, !63}
!282 = distinct !{!282, !62, !63}
!283 = distinct !{!283, !62, !63}
!284 = distinct !{!284, !62, !63}
!285 = !{!286}
!286 = distinct !{!286, !287, !"ImportIntegerPixel: argument 0"}
!287 = distinct !{!287, !"ImportIntegerPixel"}
!288 = distinct !{!288, !62, !63}
!289 = distinct !{!289, !62, !63}
!290 = distinct !{!290, !62, !63}
!291 = distinct !{!291, !62, !63}
!292 = distinct !{!292, !62, !63}
!293 = distinct !{!293, !62, !63}
!294 = distinct !{!294, !62, !63}
!295 = distinct !{!295, !62, !63}
!296 = distinct !{!296, !62, !63}
!297 = distinct !{!297, !62, !63}
!298 = distinct !{!298, !62, !63}
!299 = distinct !{!299, !62, !63}
!300 = distinct !{!300, !62, !63}
!301 = distinct !{!301, !62, !63}
!302 = distinct !{!302, !62, !63}
!303 = distinct !{!303, !62, !63}
!304 = distinct !{!304, !62, !63}
!305 = !{!306}
!306 = distinct !{!306, !307, !"ImportLongPixel: argument 0"}
!307 = distinct !{!307, !"ImportLongPixel"}
!308 = distinct !{!308, !62, !63}
!309 = distinct !{!309, !62, !63}
!310 = distinct !{!310, !62, !63}
!311 = distinct !{!311, !62, !63}
!312 = distinct !{!312, !62, !63}
!313 = distinct !{!313, !62, !63}
!314 = distinct !{!314, !62, !63}
!315 = distinct !{!315, !62, !63}
!316 = distinct !{!316, !62, !63}
!317 = distinct !{!317, !62, !63}
!318 = distinct !{!318, !62, !63}
!319 = distinct !{!319, !62, !63}
!320 = distinct !{!320, !62, !63}
!321 = distinct !{!321, !62, !63}
!322 = distinct !{!322, !62, !63}
!323 = distinct !{!323, !62, !63}
!324 = distinct !{!324, !62, !63}
!325 = !{!326}
!326 = distinct !{!326, !327, !"ImportQuantumPixel: argument 0"}
!327 = distinct !{!327, !"ImportQuantumPixel"}
!328 = distinct !{!328, !62, !63}
!329 = distinct !{!329, !62, !63}
!330 = distinct !{!330, !62, !63}
!331 = distinct !{!331, !62, !63}
!332 = distinct !{!332, !62, !63}
!333 = distinct !{!333, !62, !63}
!334 = distinct !{!334, !62, !63}
!335 = distinct !{!335, !62, !63}
!336 = distinct !{!336, !62, !63}
!337 = distinct !{!337, !62, !63}
!338 = distinct !{!338, !62, !63}
!339 = distinct !{!339, !62, !63}
!340 = distinct !{!340, !62, !63}
!341 = distinct !{!341, !62, !63}
!342 = distinct !{!342, !62, !63}
!343 = distinct !{!343, !62, !63}
!344 = distinct !{!344, !62, !63}
!345 = !{!346}
!346 = distinct !{!346, !347, !"ImportShortPixel: argument 0"}
!347 = distinct !{!347, !"ImportShortPixel"}
!348 = distinct !{!348, !62, !63}
!349 = distinct !{!349, !62, !63}
!350 = distinct !{!350, !62, !63}
!351 = distinct !{!351, !62, !63}
!352 = distinct !{!352, !62, !63}
!353 = distinct !{!353, !62, !63}
!354 = distinct !{!354, !62, !63}
!355 = distinct !{!355, !62, !63}
!356 = distinct !{!356, !62, !63}
!357 = distinct !{!357, !62, !63}
!358 = distinct !{!358, !62, !63}
!359 = distinct !{!359, !62, !63}
!360 = distinct !{!360, !62, !63}
!361 = distinct !{!361, !62, !63}
!362 = distinct !{!362, !62, !63}
!363 = distinct !{!363, !62, !63}
!364 = distinct !{!364, !62, !63}
!365 = !{!46, !35, i64 13112}
!366 = !{!210, !44, i64 32}
!367 = !{!210, !44, i64 36}
!368 = !{!210, !44, i64 40}
!369 = !{!210, !44, i64 48}
!370 = !{!210, !44, i64 44}
!371 = distinct !{!371, !62, !63}
!372 = distinct !{!372, !62, !63}
!373 = distinct !{!373, !62, !63}
!374 = distinct !{!374, !62, !63}
!375 = distinct !{!375, !62, !63}
!376 = !{!52, !42, i64 0}
!377 = !{!52, !42, i64 8}
!378 = !{!52, !42, i64 16}
!379 = !{!52, !42, i64 24}
!380 = !{!46, !35, i64 400}
!381 = !{!46, !40, i64 384}
!382 = distinct !{!382, !62, !63}
!383 = distinct !{!383, !62, !63}
