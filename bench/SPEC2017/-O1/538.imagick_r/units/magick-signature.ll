; ModuleID = 'magick/signature.c'
source_filename = "magick/signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._SignatureInfo = type { i32, i32, ptr, ptr, ptr, i32, i32, i64, i32, i64, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._QuantumInfo = type { i64, i64, i32, double, double, double, i64, i32, i32, i32, i64, ptr, i64, i32, %struct._QuantumState, ptr, i64 }
%struct._QuantumState = type { double, i32, i64, ptr }

@.str = private unnamed_addr constant [19 x i8] c"magick/signature.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@TransformSignature.K = internal unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireSignatureInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(72) ptr @AcquireMagickMemory(i64 noundef 72) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #12
  call void @GetExceptionInfo(ptr noundef nonnull %1) #12
  %6 = tail call ptr @__errno_location() #13
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #12
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 129, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #12
  %10 = call ptr @DestroyString(ptr noundef %8) #12
  call void @CatchException(ptr noundef nonnull %1) #12
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #12
  call void @MagickCoreTerminus() #12
  call void @_exit(i32 noundef 1) #14
  unreachable

12:                                               ; preds = %0
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 72) #12
  store i32 32, ptr %3, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 1
  store i32 64, ptr %14, align 4, !tbaa !42
  %15 = tail call ptr @AcquireStringInfo(i64 noundef 32) #12
  %16 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !43
  %17 = tail call ptr @AcquireStringInfo(i64 noundef 64) #12
  %18 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !44
  %19 = tail call dereferenceable_or_null(256) ptr @AcquireQuantumMemory(i64 noundef 64, i64 noundef 4) #15
  %20 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !45
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  call void @GetExceptionInfo(ptr noundef nonnull %2) #12
  %23 = tail call ptr @__errno_location() #13
  %24 = load i32, ptr %23, align 4, !tbaa !34
  %25 = call ptr @GetExceptionMessage(i32 noundef %24) #12
  %26 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 138, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %25) #12
  %27 = call ptr @DestroyString(ptr noundef %25) #12
  call void @CatchException(ptr noundef nonnull %2) #12
  %28 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #12
  call void @MagickCoreTerminus() #12
  call void @_exit(i32 noundef 1) #14
  unreachable

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 8
  store i32 1, ptr %30, align 8, !tbaa !46
  %31 = tail call i64 @time(ptr noundef null) #12
  %32 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 9
  store i64 %31, ptr %32, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 10
  store i64 2880220587, ptr %33, align 8, !tbaa !48
  %34 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 401, ptr noundef nonnull @.str.4) #12
  %35 = load ptr, ptr %20, align 8, !tbaa !45
  store i32 1779033703, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds i32, ptr %35, i64 1
  store i32 -1150833019, ptr %36, align 4, !tbaa !34
  %37 = getelementptr inbounds i32, ptr %35, i64 2
  store i32 1013904242, ptr %37, align 4, !tbaa !34
  %38 = getelementptr inbounds i32, ptr %35, i64 3
  store i32 -1521486534, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds i32, ptr %35, i64 4
  store i32 1359893119, ptr %39, align 4, !tbaa !34
  %40 = getelementptr inbounds i32, ptr %35, i64 5
  store i32 -1694144372, ptr %40, align 4, !tbaa !34
  %41 = getelementptr inbounds i32, ptr %35, i64 6
  store i32 528734635, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds i32, ptr %35, i64 7
  store i32 1541459225, ptr %42, align 4, !tbaa !34
  %43 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret ptr %3
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

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @InitializeSignature(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 401, ptr noundef nonnull @.str.4) #12
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  store i32 1779033703, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 -1150833019, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds i32, ptr %4, i64 2
  store i32 1013904242, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds i32, ptr %4, i64 3
  store i32 -1521486534, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds i32, ptr %4, i64 4
  store i32 1359893119, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds i32, ptr %4, i64 5
  store i32 -1694144372, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds i32, ptr %4, i64 6
  store i32 528734635, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds i32, ptr %4, i64 7
  store i32 1541459225, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroySignatureInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 174, ptr noundef nonnull @.str.4) #12
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #12
  store ptr %7, ptr %3, align 8, !tbaa !45
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %10) #12
  store ptr %13, ptr %9, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %16) #12
  store ptr %19, ptr %15, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 10
  store i64 -2880220588, ptr %21, align 8, !tbaa !48
  %22 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #12
  ret ptr %22
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FinalizeSignature(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 234, ptr noundef nonnull @.str.4) #12
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = lshr i32 %4, 3
  %8 = and i32 %7, 63
  %9 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = tail call ptr @GetStringInfoDatum(ptr noundef %10) #12
  %12 = add nuw nsw i32 %8, 1
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  store i8 -128, ptr %14, align 1, !tbaa !51
  %15 = load ptr, ptr %9, align 8, !tbaa !44
  %16 = tail call i64 @GetStringInfoLength(ptr noundef %15) #12
  %17 = trunc i64 %16 to i32
  %18 = add i32 %17, -8
  %19 = icmp ult i32 %8, %18
  %20 = zext nneg i32 %12 to i64
  %21 = getelementptr inbounds i8, ptr %11, i64 %20
  %22 = load ptr, ptr %9, align 8, !tbaa !44
  %23 = tail call i64 @GetStringInfoLength(ptr noundef %22) #12
  %24 = sub i64 %23, %20
  br i1 %19, label %25, label %28

25:                                               ; preds = %1
  %26 = add i64 %24, -8
  %27 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %21, i32 noundef 0, i64 noundef %26) #12
  br label %34

28:                                               ; preds = %1
  %29 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %21, i32 noundef 0, i64 noundef %24) #12
  tail call fastcc void @TransformSignature(ptr noundef %0)
  %30 = load ptr, ptr %9, align 8, !tbaa !44
  %31 = tail call i64 @GetStringInfoLength(ptr noundef %30) #12
  %32 = add i64 %31, -8
  %33 = tail call ptr @ResetMagickMemory(ptr noundef %11, i32 noundef 0, i64 noundef %32) #12
  br label %34

34:                                               ; preds = %28, %25
  %35 = lshr i32 %6, 24
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %11, i64 56
  store i8 %36, ptr %37, align 1, !tbaa !51
  %38 = lshr i32 %6, 16
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds i8, ptr %11, i64 57
  store i8 %39, ptr %40, align 1, !tbaa !51
  %41 = lshr i32 %6, 8
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, ptr %11, i64 58
  store i8 %42, ptr %43, align 1, !tbaa !51
  %44 = trunc i32 %6 to i8
  %45 = getelementptr inbounds i8, ptr %11, i64 59
  store i8 %44, ptr %45, align 1, !tbaa !51
  %46 = lshr i32 %4, 24
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %11, i64 60
  store i8 %47, ptr %48, align 1, !tbaa !51
  %49 = lshr i32 %4, 16
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %11, i64 61
  store i8 %50, ptr %51, align 1, !tbaa !51
  %52 = lshr i32 %4, 8
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds i8, ptr %11, i64 62
  store i8 %53, ptr %54, align 1, !tbaa !51
  %55 = trunc i32 %4 to i8
  %56 = getelementptr inbounds i8, ptr %11, i64 63
  store i8 %55, ptr %56, align 1, !tbaa !51
  tail call fastcc void @TransformSignature(ptr noundef %0)
  %57 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !43
  %61 = tail call ptr @GetStringInfoDatum(ptr noundef %60) #12
  br label %62

62:                                               ; preds = %34, %62
  %63 = phi i64 [ 0, %34 ], [ %82, %62 ]
  %64 = phi ptr [ %58, %34 ], [ %81, %62 ]
  %65 = phi ptr [ %61, %34 ], [ %80, %62 ]
  %66 = load i32, ptr %64, align 4, !tbaa !34
  %67 = lshr i32 %66, 24
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %68, ptr %65, align 1, !tbaa !51
  %70 = load i32, ptr %64, align 4, !tbaa !34
  %71 = lshr i32 %70, 16
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %65, i64 2
  store i8 %72, ptr %69, align 1, !tbaa !51
  %74 = load i32, ptr %64, align 4, !tbaa !34
  %75 = lshr i32 %74, 8
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %65, i64 3
  store i8 %76, ptr %73, align 1, !tbaa !51
  %78 = load i32, ptr %64, align 4, !tbaa !34
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %65, i64 4
  store i8 %79, ptr %77, align 1, !tbaa !51
  %81 = getelementptr inbounds i32, ptr %64, i64 1
  %82 = add nuw nsw i64 %63, 1
  %83 = icmp eq i64 %82, 8
  br i1 %83, label %84, label %62, !llvm.loop !52

84:                                               ; preds = %62
  ret void
}

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @TransformSignature(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = tail call ptr @GetStringInfoDatum(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1, %9
  %10 = phi i64 [ %15, %9 ], [ 0, %1 ]
  %11 = phi ptr [ %13, %9 ], [ %5, %1 ]
  %12 = load i32, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds i8, ptr %11, i64 4
  %14 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %10
  store i32 %12, ptr %14, align 4, !tbaa !34
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %26, label %9, !llvm.loop !55

17:                                               ; preds = %1, %17
  %18 = phi i64 [ %24, %17 ], [ 0, %1 ]
  %19 = phi ptr [ %21, %17 ], [ %5, %1 ]
  %20 = load i32, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds i8, ptr %19, i64 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %20)
  %23 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %18
  store i32 %22, ptr %23, align 4, !tbaa !34
  %24 = add nuw nsw i64 %18, 1
  %25 = icmp eq i64 %24, 16
  br i1 %25, label %26, label %17, !llvm.loop !56

26:                                               ; preds = %17, %9
  %27 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = load i32, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds i32, ptr %28, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds i32, ptr %28, i64 2
  %33 = load i32, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds i32, ptr %28, i64 3
  %35 = load i32, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds i32, ptr %28, i64 4
  %37 = load i32, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds i32, ptr %28, i64 5
  %39 = load i32, ptr %38, align 4, !tbaa !34
  %40 = getelementptr inbounds i32, ptr %28, i64 6
  %41 = load i32, ptr %40, align 4, !tbaa !34
  %42 = getelementptr inbounds i32, ptr %28, i64 7
  %43 = load i32, ptr %42, align 4, !tbaa !34
  br label %44

44:                                               ; preds = %26, %44
  %45 = phi i64 [ 16, %26 ], [ %72, %44 ]
  %46 = add nsw i64 %45, -2
  %47 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !34
  %49 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 15)
  %50 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 13)
  %51 = xor i32 %49, %50
  %52 = lshr i32 %48, 10
  %53 = xor i32 %51, %52
  %54 = add nsw i64 %45, -7
  %55 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !34
  %57 = add i32 %53, %56
  %58 = add nsw i64 %45, -15
  %59 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !34
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 25)
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 14)
  %63 = xor i32 %61, %62
  %64 = lshr i32 %60, 3
  %65 = xor i32 %63, %64
  %66 = add nsw i64 %45, -16
  %67 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !34
  %69 = add i32 %57, %68
  %70 = add i32 %69, %65
  %71 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %45
  store i32 %70, ptr %71, align 4, !tbaa !34
  %72 = add nuw nsw i64 %45, 1
  %73 = icmp eq i64 %72, 64
  br i1 %73, label %74, label %44, !llvm.loop !57

74:                                               ; preds = %44, %74
  %75 = phi i32 [ %76, %74 ], [ %43, %44 ]
  %76 = phi i32 [ %77, %74 ], [ %41, %44 ]
  %77 = phi i32 [ %78, %74 ], [ %39, %44 ]
  %78 = phi i32 [ %111, %74 ], [ %37, %44 ]
  %79 = phi i32 [ %80, %74 ], [ %35, %44 ]
  %80 = phi i32 [ %81, %74 ], [ %33, %44 ]
  %81 = phi i32 [ %82, %74 ], [ %31, %44 ]
  %82 = phi i32 [ %112, %74 ], [ %29, %44 ]
  %83 = phi i64 [ %113, %74 ], [ 0, %44 ]
  %84 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 26)
  %85 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 21)
  %86 = xor i32 %84, %85
  %87 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 7)
  %88 = xor i32 %86, %87
  %89 = and i32 %77, %78
  %90 = xor i32 %78, -1
  %91 = and i32 %76, %90
  %92 = getelementptr inbounds [64 x i32], ptr @TransformSignature.K, i64 0, i64 %83
  %93 = load i32, ptr %92, align 4, !tbaa !34
  %94 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %83
  %95 = load i32, ptr %94, align 4, !tbaa !34
  %96 = add i32 %88, %89
  %97 = add i32 %96, %75
  %98 = add i32 %97, %91
  %99 = add i32 %98, %93
  %100 = add i32 %99, %95
  %101 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 30)
  %102 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 19)
  %103 = xor i32 %101, %102
  %104 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 10)
  %105 = xor i32 %103, %104
  %106 = xor i32 %80, %81
  %107 = and i32 %106, %82
  %108 = and i32 %80, %81
  %109 = xor i32 %107, %108
  %110 = add i32 %109, %105
  %111 = add i32 %100, %79
  %112 = add i32 %110, %100
  %113 = add nuw nsw i64 %83, 1
  %114 = icmp eq i64 %113, 64
  br i1 %114, label %115, label %74, !llvm.loop !58

115:                                              ; preds = %74
  %116 = load i32, ptr %28, align 4, !tbaa !34
  %117 = add i32 %116, %112
  store i32 %117, ptr %28, align 4, !tbaa !34
  %118 = load i32, ptr %30, align 4, !tbaa !34
  %119 = add i32 %118, %82
  store i32 %119, ptr %30, align 4, !tbaa !34
  %120 = load i32, ptr %32, align 4, !tbaa !34
  %121 = add i32 %120, %81
  store i32 %121, ptr %32, align 4, !tbaa !34
  %122 = load i32, ptr %34, align 4, !tbaa !34
  %123 = add i32 %122, %80
  store i32 %123, ptr %34, align 4, !tbaa !34
  %124 = load i32, ptr %36, align 4, !tbaa !34
  %125 = add i32 %124, %111
  store i32 %125, ptr %36, align 4, !tbaa !34
  %126 = load i32, ptr %38, align 4, !tbaa !34
  %127 = add i32 %126, %78
  store i32 %127, ptr %38, align 4, !tbaa !34
  %128 = load i32, ptr %40, align 4, !tbaa !34
  %129 = add i32 %128, %77
  store i32 %129, ptr %40, align 4, !tbaa !34
  %130 = load i32, ptr %42, align 4, !tbaa !34
  %131 = add i32 %130, %76
  store i32 %131, ptr %42, align 4, !tbaa !34
  %132 = call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 256) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetSignatureBlocksize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 306, ptr noundef nonnull @.str.4) #12
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !42
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetSignatureDigest(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, ptr noundef nonnull @.str.4) #12
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GetSignatureDigestsize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 370, ptr noundef nonnull @.str.4) #12
  %3 = load i32, ptr %0, align 8, !tbaa !38
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @SetSignatureDigest(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  tail call void @SetStringInfo(ptr noundef %4, ptr noundef %1) #12
  ret void
}

declare void @SetStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @SignatureImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 521, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #12
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call ptr @AcquireQuantumInfo(ptr noundef null, ptr noundef %0) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp eq ptr %0, null
  br i1 %12, label %60, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 525, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %15) #12
  br label %60

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !73
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 18, i32 15
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = icmp eq i32 %23, 12
  %25 = select i1 %20, i32 5, i32 4
  %26 = select i1 %24, i32 %25, i32 %21
  %27 = tail call ptr @AcquireSignatureInfo()
  %28 = getelementptr inbounds %struct._QuantumInfo, ptr %9, i64 0, i32 12
  %29 = load i64, ptr %28, align 8, !tbaa !75
  %30 = tail call ptr @AcquireStringInfo(i64 noundef %29) #12
  %31 = tail call ptr @GetQuantumPixels(ptr noundef nonnull %9) #12
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %33 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef nonnull %32) #12
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %36 = load i64, ptr %35, align 8, !tbaa !78
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %17, %43
  %39 = phi i64 [ %45, %43 ], [ 0, %17 ]
  %40 = load i64, ptr %34, align 8, !tbaa !79
  %41 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %33, i64 noundef 0, i64 noundef %39, i64 noundef %40, i64 noundef 1, ptr noundef nonnull %32) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = tail call i64 @ExportQuantumPixels(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %9, i32 noundef %26, ptr noundef %31, ptr noundef nonnull %32) #12
  tail call void @SetStringInfoLength(ptr noundef %30, i64 noundef %44) #12
  tail call void @SetStringInfoDatum(ptr noundef %30, ptr noundef %31) #12
  tail call void @UpdateSignature(ptr noundef %27, ptr noundef %30)
  %45 = add nuw nsw i64 %39, 1
  %46 = load i64, ptr %35, align 8, !tbaa !78
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %38, label %48, !llvm.loop !80

48:                                               ; preds = %43, %38, %17
  %49 = tail call ptr @DestroyCacheView(ptr noundef %33) #12
  %50 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %9) #12
  tail call void @FinalizeSignature(ptr noundef %27)
  %51 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, ptr noundef nonnull @.str.4) #12
  %52 = getelementptr inbounds %struct._SignatureInfo, ptr %27, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = tail call ptr @StringInfoToHexString(ptr noundef %53) #12
  %55 = tail call i32 @DeleteImageProperty(ptr noundef %0, ptr noundef nonnull @.str.6) #12
  %56 = tail call i32 @SetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %54) #12
  %57 = tail call ptr @DestroyString(ptr noundef %54) #12
  %58 = tail call ptr @DestroyStringInfo(ptr noundef %30) #12
  %59 = tail call ptr @DestroySignatureInfo(ptr noundef %27)
  br label %60

60:                                               ; preds = %11, %13, %48
  %61 = phi i32 [ 1, %48 ], [ 0, %13 ], [ 0, %11 ]
  ret i32 %61
}

declare ptr @AcquireQuantumInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @GetQuantumPixels(ptr noundef) local_unnamed_addr #3

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare i64 @ExportQuantumPixels(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SetStringInfoLength(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @UpdateSignature(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @GetStringInfoLength(ptr noundef %1) #12
  %4 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 3
  %8 = add i32 %7, %5
  %9 = icmp ult i32 %8, %5
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !50
  br label %14

14:                                               ; preds = %10, %2
  store i32 %8, ptr %4, align 8, !tbaa !49
  %15 = lshr i64 %3, 29
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = add i32 %18, %16
  store i32 %19, ptr %17, align 4, !tbaa !50
  %20 = tail call ptr @GetStringInfoDatum(ptr noundef %1) #12
  %21 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !81
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = tail call i64 @GetStringInfoLength(ptr noundef %26) #12
  %28 = load i64, ptr %21, align 8, !tbaa !81
  %29 = sub i64 %27, %28
  %30 = tail call i64 @llvm.umin.i64(i64 %29, i64 %3)
  %31 = load ptr, ptr %25, align 8, !tbaa !44
  %32 = tail call ptr @GetStringInfoDatum(ptr noundef %31) #12
  %33 = load i64, ptr %21, align 8, !tbaa !81
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = tail call ptr @CopyMagickMemory(ptr noundef %34, ptr noundef %20, i64 noundef %30) #12
  %36 = load i64, ptr %21, align 8, !tbaa !81
  %37 = add i64 %36, %30
  store i64 %37, ptr %21, align 8, !tbaa !81
  %38 = load ptr, ptr %25, align 8, !tbaa !44
  %39 = tail call i64 @GetStringInfoLength(ptr noundef %38) #12
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %24
  %42 = getelementptr inbounds i8, ptr %20, i64 %30
  %43 = sub i64 %3, %30
  tail call fastcc void @TransformSignature(ptr noundef %0)
  br label %44

44:                                               ; preds = %41, %14
  %45 = phi ptr [ %42, %41 ], [ %20, %14 ]
  %46 = phi i64 [ %43, %41 ], [ %3, %14 ]
  %47 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = tail call i64 @GetStringInfoLength(ptr noundef %48) #12
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %64, label %51

51:                                               ; preds = %44, %51
  %52 = phi i64 [ %60, %51 ], [ %46, %44 ]
  %53 = phi ptr [ %57, %51 ], [ %45, %44 ]
  %54 = load ptr, ptr %47, align 8, !tbaa !44
  tail call void @SetStringInfoDatum(ptr noundef %54, ptr noundef %53) #12
  %55 = load ptr, ptr %47, align 8, !tbaa !44
  %56 = tail call i64 @GetStringInfoLength(ptr noundef %55) #12
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load ptr, ptr %47, align 8, !tbaa !44
  %59 = tail call i64 @GetStringInfoLength(ptr noundef %58) #12
  %60 = sub i64 %52, %59
  tail call fastcc void @TransformSignature(ptr noundef %0)
  %61 = load ptr, ptr %47, align 8, !tbaa !44
  %62 = tail call i64 @GetStringInfoLength(ptr noundef %61) #12
  %63 = icmp ult i64 %60, %62
  br i1 %63, label %64, label %51, !llvm.loop !82

64:                                               ; preds = %51, %44
  %65 = phi ptr [ %45, %44 ], [ %57, %51 ]
  %66 = phi i64 [ %46, %44 ], [ %60, %51 ]
  %67 = load ptr, ptr %47, align 8, !tbaa !44
  %68 = tail call ptr @GetStringInfoDatum(ptr noundef %67) #12
  %69 = tail call ptr @CopyMagickMemory(ptr noundef %68, ptr noundef %65, i64 noundef %66) #12
  store i64 %66, ptr %21, align 8, !tbaa !81
  br label %70

70:                                               ; preds = %24, %64
  ret void
}

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

declare ptr @DestroyQuantumInfo(ptr noundef) local_unnamed_addr #3

declare ptr @StringInfoToHexString(ptr noundef) local_unnamed_addr #3

declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { hot nounwind }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"_SignatureInfo", !35, i64 0, !35, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !35, i64 32, !35, i64 36, !41, i64 40, !35, i64 48, !41, i64 56, !41, i64 64}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!39, !35, i64 4}
!43 = !{!39, !40, i64 8}
!44 = !{!39, !40, i64 16}
!45 = !{!39, !40, i64 24}
!46 = !{!39, !35, i64 48}
!47 = !{!39, !41, i64 56}
!48 = !{!39, !41, i64 64}
!49 = !{!39, !35, i64 32}
!50 = !{!39, !35, i64 36}
!51 = !{!36, !36, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = distinct !{!56, !53, !54}
!57 = distinct !{!57, !53, !54}
!58 = distinct !{!58, !53, !54}
!59 = !{!60, !35, i64 12976}
!60 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !41, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !40, i64 72, !61, i64 80, !61, i64 88, !61, i64 96, !63, i64 104, !64, i64 112, !35, i64 208, !40, i64 216, !35, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !41, i64 256, !63, i64 264, !63, i64 272, !66, i64 280, !66, i64 312, !66, i64 344, !63, i64 376, !63, i64 384, !63, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !40, i64 424, !41, i64 432, !41, i64 440, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !67, i64 480, !68, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !41, i64 12904, !41, i64 12912, !70, i64 12920, !35, i64 12976, !41, i64 12984, !40, i64 12992, !71, i64 13000, !71, i64 13032, !40, i64 13064, !41, i64 13072, !41, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !35, i64 13112, !35, i64 13116, !61, i64 13120, !40, i64 13128, !66, i64 13136, !40, i64 13168, !40, i64 13176, !35, i64 13184, !35, i64 13188, !72, i64 13192, !35, i64 13200, !41, i64 13208, !41, i64 13216, !35, i64 13224, !41, i64 13232}
!61 = !{!"_PixelPacket", !62, i64 0, !62, i64 2, !62, i64 4, !62, i64 6}
!62 = !{!"short", !36, i64 0}
!63 = !{!"double", !36, i64 0}
!64 = !{!"_ChromaticityInfo", !65, i64 0, !65, i64 24, !65, i64 48, !65, i64 72}
!65 = !{!"_PrimaryInfo", !63, i64 0, !63, i64 8, !63, i64 16}
!66 = !{!"_RectangleInfo", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!67 = !{!"_ErrorInfo", !63, i64 0, !63, i64 8, !63, i64 16}
!68 = !{!"_TimerInfo", !69, i64 0, !69, i64 24, !35, i64 48, !41, i64 56}
!69 = !{!"_Timer", !63, i64 0, !63, i64 8, !63, i64 16}
!70 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !35, i64 32, !40, i64 40, !41, i64 48}
!71 = !{!"_ProfileInfo", !40, i64 0, !41, i64 8, !40, i64 16, !41, i64 24}
!72 = !{!"long long", !36, i64 0}
!73 = !{!60, !35, i64 32}
!74 = !{!60, !35, i64 4}
!75 = !{!76, !41, i64 88}
!76 = !{!"_QuantumInfo", !41, i64 0, !41, i64 8, !35, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !41, i64 48, !35, i64 56, !35, i64 60, !35, i64 64, !41, i64 72, !40, i64 80, !41, i64 88, !35, i64 96, !77, i64 104, !40, i64 136, !41, i64 144}
!77 = !{!"_QuantumState", !63, i64 0, !35, i64 8, !41, i64 16, !40, i64 24}
!78 = !{!60, !41, i64 48}
!79 = !{!60, !41, i64 40}
!80 = distinct !{!80, !53, !54}
!81 = !{!39, !41, i64 40}
!82 = distinct !{!82, !53, !54}
