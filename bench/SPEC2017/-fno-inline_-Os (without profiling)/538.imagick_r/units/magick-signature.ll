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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireSignatureInfo() local_unnamed_addr #0 {
  %1 = alloca %struct._ExceptionInfo, align 8
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call dereferenceable_or_null(72) ptr @AcquireMagickMemory(i64 noundef 72) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #13
  call void @GetExceptionInfo(ptr noundef nonnull %1) #14
  %6 = tail call ptr @__errno_location() #15
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #14
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 129, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %8) #14
  %10 = call ptr @DestroyString(ptr noundef %8) #14
  call void @CatchException(ptr noundef nonnull %1) #14
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %1) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

12:                                               ; preds = %0
  %13 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef 72) #14
  store i32 32, ptr %3, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 1
  store i32 64, ptr %14, align 4, !tbaa !13
  %15 = tail call ptr @AcquireStringInfo(i64 noundef 32) #14
  %16 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !14
  %17 = tail call ptr @AcquireStringInfo(i64 noundef 64) #14
  %18 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !15
  %19 = tail call dereferenceable_or_null(256) ptr @AcquireQuantumMemory(i64 noundef 64, i64 noundef 4) #17
  %20 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 4
  store ptr %19, ptr %20, align 8, !tbaa !16
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @GetExceptionInfo(ptr noundef nonnull %2) #14
  %23 = tail call ptr @__errno_location() #15
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = call ptr @GetExceptionMessage(i32 noundef %24) #14
  %26 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 138, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %25) #14
  %27 = call ptr @DestroyString(ptr noundef %25) #14
  call void @CatchException(ptr noundef nonnull %2) #14
  %28 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #14
  call void @MagickCoreTerminus() #14
  call void @_exit(i32 noundef 1) #16
  unreachable

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 8
  store i32 1, ptr %30, align 8, !tbaa !17
  %31 = tail call i64 @time(ptr noundef null) #14
  %32 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 9
  store i64 %31, ptr %32, align 8, !tbaa !18
  %33 = getelementptr inbounds %struct._SignatureInfo, ptr %3, i64 0, i32 10
  store i64 2880220587, ptr %33, align 8, !tbaa !19
  tail call void @InitializeSignature(ptr noundef nonnull %3) #18
  ret ptr %3
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

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireStringInfo(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @InitializeSignature(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 401, ptr noundef nonnull @.str.4) #14
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %4, align 4, !tbaa !5
  %5 = getelementptr inbounds i32, ptr %4, i64 4
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %5, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroySignatureInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 174, ptr noundef nonnull @.str.4) #14
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #14
  store ptr %7, ptr %3, align 8, !tbaa !16
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %10) #14
  store ptr %13, ptr %9, align 8, !tbaa !15
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @DestroyStringInfo(ptr noundef nonnull %16) #14
  store ptr %19, ptr %15, align 8, !tbaa !14
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 10
  store i64 -2880220588, ptr %21, align 8, !tbaa !19
  %22 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #14
  ret ptr %22
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FinalizeSignature(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 234, ptr noundef nonnull @.str.4) #14
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !21
  %7 = lshr i32 %4, 3
  %8 = and i32 %7, 63
  %9 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = tail call ptr @GetStringInfoDatum(ptr noundef %10) #14
  %12 = add nuw nsw i32 %8, 1
  %13 = zext nneg i32 %8 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  store i8 -128, ptr %14, align 1, !tbaa !22
  %15 = load ptr, ptr %9, align 8, !tbaa !15
  %16 = tail call i64 @GetStringInfoLength(ptr noundef %15) #14
  %17 = trunc i64 %16 to i32
  %18 = add i32 %17, -8
  %19 = icmp ult i32 %8, %18
  %20 = zext nneg i32 %12 to i64
  %21 = getelementptr inbounds i8, ptr %11, i64 %20
  %22 = load ptr, ptr %9, align 8, !tbaa !15
  %23 = tail call i64 @GetStringInfoLength(ptr noundef %22) #14
  %24 = sub i64 %23, %20
  br i1 %19, label %29, label %25

25:                                               ; preds = %1
  %26 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %21, i32 noundef 0, i64 noundef %24) #14
  tail call fastcc void @TransformSignature(ptr noundef nonnull %0) #18
  %27 = load ptr, ptr %9, align 8, !tbaa !15
  %28 = tail call i64 @GetStringInfoLength(ptr noundef %27) #14
  br label %29

29:                                               ; preds = %1, %25
  %30 = phi i64 [ %28, %25 ], [ %24, %1 ]
  %31 = phi ptr [ %11, %25 ], [ %21, %1 ]
  %32 = add i64 %30, -8
  %33 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %31, i32 noundef 0, i64 noundef %32) #14
  %34 = lshr i32 %6, 24
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds i8, ptr %11, i64 56
  store i8 %35, ptr %36, align 1, !tbaa !22
  %37 = lshr i32 %6, 16
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, ptr %11, i64 57
  store i8 %38, ptr %39, align 1, !tbaa !22
  %40 = lshr i32 %6, 8
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %11, i64 58
  store i8 %41, ptr %42, align 1, !tbaa !22
  %43 = trunc i32 %6 to i8
  %44 = getelementptr inbounds i8, ptr %11, i64 59
  store i8 %43, ptr %44, align 1, !tbaa !22
  %45 = lshr i32 %4, 24
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, ptr %11, i64 60
  store i8 %46, ptr %47, align 1, !tbaa !22
  %48 = lshr i32 %4, 16
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %11, i64 61
  store i8 %49, ptr %50, align 1, !tbaa !22
  %51 = lshr i32 %4, 8
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds i8, ptr %11, i64 62
  store i8 %52, ptr %53, align 1, !tbaa !22
  %54 = trunc i32 %4 to i8
  %55 = getelementptr inbounds i8, ptr %11, i64 63
  store i8 %54, ptr %55, align 1, !tbaa !22
  tail call fastcc void @TransformSignature(ptr noundef nonnull %0) #18
  %56 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !16
  %58 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !14
  %60 = tail call ptr @GetStringInfoDatum(ptr noundef %59) #14
  br label %61

61:                                               ; preds = %29, %61
  %62 = phi i64 [ 0, %29 ], [ %81, %61 ]
  %63 = phi ptr [ %57, %29 ], [ %80, %61 ]
  %64 = phi ptr [ %60, %29 ], [ %79, %61 ]
  %65 = load i32, ptr %63, align 4, !tbaa !5
  %66 = lshr i32 %65, 24
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds i8, ptr %64, i64 1
  store i8 %67, ptr %64, align 1, !tbaa !22
  %69 = load i32, ptr %63, align 4, !tbaa !5
  %70 = lshr i32 %69, 16
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds i8, ptr %64, i64 2
  store i8 %71, ptr %68, align 1, !tbaa !22
  %73 = load i32, ptr %63, align 4, !tbaa !5
  %74 = lshr i32 %73, 8
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %64, i64 3
  store i8 %75, ptr %72, align 1, !tbaa !22
  %77 = load i32, ptr %63, align 4, !tbaa !5
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %64, i64 4
  store i8 %78, ptr %76, align 1, !tbaa !22
  %80 = getelementptr inbounds i32, ptr %63, i64 1
  %81 = add nuw nsw i64 %62, 1
  %82 = icmp eq i64 %81, 8
  br i1 %82, label %83, label %61, !llvm.loop !23

83:                                               ; preds = %61
  ret void
}

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @TransformSignature(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = tail call ptr @GetStringInfoDatum(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1, %9
  %10 = phi i64 [ %15, %9 ], [ 0, %1 ]
  %11 = phi ptr [ %13, %9 ], [ %5, %1 ]
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %11, i64 4
  %14 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %10
  store i32 %12, ptr %14, align 4, !tbaa !5
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %26, label %9, !llvm.loop !25

17:                                               ; preds = %1, %17
  %18 = phi i64 [ %24, %17 ], [ 0, %1 ]
  %19 = phi ptr [ %21, %17 ], [ %5, %1 ]
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i8, ptr %19, i64 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %20)
  %23 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %18
  store i32 %22, ptr %23, align 4, !tbaa !5
  %24 = add nuw nsw i64 %18, 1
  %25 = icmp eq i64 %24, 16
  br i1 %25, label %26, label %17, !llvm.loop !26

26:                                               ; preds = %17, %9
  %27 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = load i32, ptr %28, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, ptr %28, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !5
  %32 = getelementptr inbounds i32, ptr %28, i64 2
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = getelementptr inbounds i32, ptr %28, i64 3
  %35 = load i32, ptr %34, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, ptr %28, i64 4
  %37 = load i32, ptr %36, align 4, !tbaa !5
  %38 = getelementptr inbounds i32, ptr %28, i64 5
  %39 = load i32, ptr %38, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, ptr %28, i64 6
  %41 = load i32, ptr %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, ptr %28, i64 7
  %43 = load i32, ptr %42, align 4, !tbaa !5
  %44 = load i32, ptr %2, align 16, !tbaa !5
  br label %45

45:                                               ; preds = %26, %45
  %46 = phi i32 [ %44, %26 ], [ %62, %45 ]
  %47 = phi i64 [ 16, %26 ], [ %71, %45 ]
  %48 = add nsw i64 %47, -2
  %49 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !5
  %51 = tail call fastcc i32 @RotateRight(i32 noundef %50, i32 noundef 17) #18
  %52 = tail call fastcc i32 @RotateRight(i32 noundef %50, i32 noundef 19) #18
  %53 = lshr i32 %50, 10
  %54 = xor i32 %53, %51
  %55 = xor i32 %54, %52
  %56 = add nsw i64 %47, -7
  %57 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !5
  %59 = add i32 %55, %58
  %60 = add nsw i64 %47, -15
  %61 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !5
  %63 = tail call fastcc i32 @RotateRight(i32 noundef %62, i32 noundef 7) #18
  %64 = tail call fastcc i32 @RotateRight(i32 noundef %62, i32 noundef 18) #18
  %65 = lshr i32 %62, 3
  %66 = xor i32 %65, %63
  %67 = xor i32 %66, %64
  %68 = add i32 %59, %46
  %69 = add i32 %68, %67
  %70 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %47
  store i32 %69, ptr %70, align 4, !tbaa !5
  %71 = add nuw nsw i64 %47, 1
  %72 = icmp eq i64 %71, 64
  br i1 %72, label %73, label %45, !llvm.loop !27

73:                                               ; preds = %45, %73
  %74 = phi i32 [ %75, %73 ], [ %43, %45 ]
  %75 = phi i32 [ %76, %73 ], [ %41, %45 ]
  %76 = phi i32 [ %77, %73 ], [ %39, %45 ]
  %77 = phi i32 [ %103, %73 ], [ %37, %45 ]
  %78 = phi i32 [ %79, %73 ], [ %35, %45 ]
  %79 = phi i32 [ %80, %73 ], [ %33, %45 ]
  %80 = phi i32 [ %81, %73 ], [ %31, %45 ]
  %81 = phi i32 [ %105, %73 ], [ %29, %45 ]
  %82 = phi i64 [ %106, %73 ], [ 0, %45 ]
  %83 = tail call fastcc i32 @RotateRight(i32 noundef %77, i32 noundef 6) #18
  %84 = tail call fastcc i32 @RotateRight(i32 noundef %77, i32 noundef 11) #18
  %85 = xor i32 %84, %83
  %86 = tail call fastcc i32 @RotateRight(i32 noundef %77, i32 noundef 25) #18
  %87 = xor i32 %85, %86
  %88 = add i32 %87, %74
  %89 = tail call fastcc i32 @Ch(i32 noundef %77, i32 noundef %76, i32 noundef %75) #18
  %90 = add i32 %88, %89
  %91 = getelementptr inbounds [64 x i32], ptr @TransformSignature.K, i64 0, i64 %82
  %92 = load i32, ptr %91, align 4, !tbaa !5
  %93 = add i32 %90, %92
  %94 = getelementptr inbounds [64 x i32], ptr %2, i64 0, i64 %82
  %95 = load i32, ptr %94, align 4, !tbaa !5
  %96 = add i32 %93, %95
  %97 = tail call fastcc i32 @RotateRight(i32 noundef %81, i32 noundef 2) #18
  %98 = tail call fastcc i32 @RotateRight(i32 noundef %81, i32 noundef 13) #18
  %99 = xor i32 %98, %97
  %100 = tail call fastcc i32 @RotateRight(i32 noundef %81, i32 noundef 22) #18
  %101 = xor i32 %99, %100
  %102 = tail call fastcc i32 @Maj(i32 noundef %81, i32 noundef %80, i32 noundef %79) #18
  %103 = add i32 %96, %78
  %104 = add i32 %102, %96
  %105 = add i32 %104, %101
  %106 = add nuw nsw i64 %82, 1
  %107 = icmp eq i64 %106, 64
  br i1 %107, label %108, label %73, !llvm.loop !28

108:                                              ; preds = %73
  %109 = add i32 %29, %105
  store i32 %109, ptr %28, align 4, !tbaa !5
  %110 = add i32 %31, %81
  store i32 %110, ptr %30, align 4, !tbaa !5
  %111 = add i32 %33, %80
  store i32 %111, ptr %32, align 4, !tbaa !5
  %112 = add i32 %35, %79
  store i32 %112, ptr %34, align 4, !tbaa !5
  %113 = add i32 %37, %103
  store i32 %113, ptr %36, align 4, !tbaa !5
  %114 = add i32 %39, %77
  store i32 %114, ptr %38, align 4, !tbaa !5
  %115 = add i32 %41, %76
  store i32 %115, ptr %40, align 4, !tbaa !5
  %116 = add i32 %43, %75
  store i32 %116, ptr %42, align 4, !tbaa !5
  %117 = call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 256) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetSignatureBlocksize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 306, ptr noundef nonnull @.str.4) #14
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !13
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetSignatureDigest(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, ptr noundef nonnull @.str.4) #14
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GetSignatureDigestsize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 370, ptr noundef nonnull @.str.4) #14
  %3 = load i32, ptr %0, align 8, !tbaa !9
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetSignatureDigest(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  tail call void @SetStringInfo(ptr noundef %4, ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare void @SetStringInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @SignatureImage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !29
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 521, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #14
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call ptr @AcquireQuantumInfo(ptr noundef null, ptr noundef nonnull %0) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 525, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %13) #14
  br label %56

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !43
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 18, i32 15
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !44
  %22 = icmp eq i32 %21, 12
  %23 = select i1 %18, i32 5, i32 4
  %24 = select i1 %22, i32 %23, i32 %19
  %25 = tail call ptr @AcquireSignatureInfo() #18
  %26 = getelementptr inbounds %struct._QuantumInfo, ptr %9, i64 0, i32 12
  %27 = load i64, ptr %26, align 8, !tbaa !45
  %28 = tail call ptr @AcquireStringInfo(i64 noundef %27) #14
  %29 = tail call ptr @GetQuantumPixels(ptr noundef nonnull %9) #14
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %31 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef nonnull %30) #14
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %34 = load i64, ptr %33, align 8, !tbaa !48
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %15, %41
  %37 = phi i64 [ %43, %41 ], [ 0, %15 ]
  %38 = load i64, ptr %32, align 8, !tbaa !49
  %39 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %31, i64 noundef 0, i64 noundef %37, i64 noundef %38, i64 noundef 1, ptr noundef nonnull %30) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = tail call i64 @ExportQuantumPixels(ptr noundef nonnull %0, ptr noundef %31, ptr noundef nonnull %9, i32 noundef %24, ptr noundef %29, ptr noundef nonnull %30) #14
  tail call void @SetStringInfoLength(ptr noundef %28, i64 noundef %42) #14
  tail call void @SetStringInfoDatum(ptr noundef %28, ptr noundef %29) #14
  tail call void @UpdateSignature(ptr noundef %25, ptr noundef %28) #18
  %43 = add nuw nsw i64 %37, 1
  %44 = load i64, ptr %33, align 8, !tbaa !48
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %36, label %46, !llvm.loop !50

46:                                               ; preds = %41, %36, %15
  %47 = tail call ptr @DestroyCacheView(ptr noundef %31) #14
  %48 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %9) #14
  tail call void @FinalizeSignature(ptr noundef %25) #18
  %49 = tail call ptr @GetSignatureDigest(ptr noundef %25) #18
  %50 = tail call ptr @StringInfoToHexString(ptr noundef %49) #14
  %51 = tail call i32 @DeleteImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #14
  %52 = tail call i32 @SetImageProperty(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef %50) #14
  %53 = tail call ptr @DestroyString(ptr noundef %50) #14
  %54 = tail call ptr @DestroyStringInfo(ptr noundef %28) #14
  %55 = tail call ptr @DestroySignatureInfo(ptr noundef %25) #18
  br label %56

56:                                               ; preds = %11, %46
  %57 = phi i32 [ 1, %46 ], [ 0, %11 ]
  ret i32 %57
}

; Function Attrs: optsize
declare ptr @AcquireQuantumInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetQuantumPixels(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i64 @ExportQuantumPixels(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @SetStringInfoLength(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @SetStringInfoDatum(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UpdateSignature(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @GetStringInfoLength(ptr noundef %1) #14
  %4 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 3
  %8 = add i32 %7, %5
  %9 = icmp ult i32 %8, %5
  %10 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !21
  %12 = zext i1 %9 to i32
  %13 = add i32 %11, %12
  store i32 %8, ptr %4, align 8, !tbaa !20
  %14 = lshr i64 %3, 29
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 6
  %17 = add i32 %13, %15
  store i32 %17, ptr %16, align 4, !tbaa !21
  %18 = tail call ptr @GetStringInfoDatum(ptr noundef %1) #14
  %19 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !51
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = tail call i64 @GetStringInfoLength(ptr noundef %24) #14
  %26 = load i64, ptr %19, align 8, !tbaa !51
  %27 = sub i64 %25, %26
  %28 = tail call i64 @llvm.umin.i64(i64 %27, i64 %3)
  %29 = load ptr, ptr %23, align 8, !tbaa !15
  %30 = tail call ptr @GetStringInfoDatum(ptr noundef %29) #14
  %31 = load i64, ptr %19, align 8, !tbaa !51
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = tail call ptr @CopyMagickMemory(ptr noundef %32, ptr noundef %18, i64 noundef %28) #14
  %34 = load i64, ptr %19, align 8, !tbaa !51
  %35 = add i64 %34, %28
  store i64 %35, ptr %19, align 8, !tbaa !51
  %36 = load ptr, ptr %23, align 8, !tbaa !15
  %37 = tail call i64 @GetStringInfoLength(ptr noundef %36) #14
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %22
  %40 = getelementptr inbounds i8, ptr %18, i64 %28
  %41 = sub i64 %3, %28
  tail call fastcc void @TransformSignature(ptr noundef nonnull %0) #18
  br label %42

42:                                               ; preds = %39, %2
  %43 = phi ptr [ %40, %39 ], [ %18, %2 ]
  %44 = phi i64 [ %41, %39 ], [ %3, %2 ]
  %45 = getelementptr inbounds %struct._SignatureInfo, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !15
  %47 = tail call i64 @GetStringInfoLength(ptr noundef %46) #14
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %62, label %49

49:                                               ; preds = %42, %49
  %50 = phi i64 [ %58, %49 ], [ %44, %42 ]
  %51 = phi ptr [ %55, %49 ], [ %43, %42 ]
  %52 = load ptr, ptr %45, align 8, !tbaa !15
  tail call void @SetStringInfoDatum(ptr noundef %52, ptr noundef %51) #14
  %53 = load ptr, ptr %45, align 8, !tbaa !15
  %54 = tail call i64 @GetStringInfoLength(ptr noundef %53) #14
  %55 = getelementptr inbounds i8, ptr %51, i64 %54
  %56 = load ptr, ptr %45, align 8, !tbaa !15
  %57 = tail call i64 @GetStringInfoLength(ptr noundef %56) #14
  %58 = sub i64 %50, %57
  tail call fastcc void @TransformSignature(ptr noundef nonnull %0) #18
  %59 = load ptr, ptr %45, align 8, !tbaa !15
  %60 = tail call i64 @GetStringInfoLength(ptr noundef %59) #14
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %49, !llvm.loop !52

62:                                               ; preds = %49, %42
  %63 = phi ptr [ %43, %42 ], [ %55, %49 ]
  %64 = phi i64 [ %44, %42 ], [ %58, %49 ]
  %65 = load ptr, ptr %45, align 8, !tbaa !15
  %66 = tail call ptr @GetStringInfoDatum(ptr noundef %65) #14
  %67 = tail call ptr @CopyMagickMemory(ptr noundef %66, ptr noundef %63, i64 noundef %64) #14
  store i64 %64, ptr %19, align 8, !tbaa !51
  br label %68

68:                                               ; preds = %22, %62
  ret void
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyQuantumInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @StringInfoToHexString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CopyMagickMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @RotateRight(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = lshr i32 %0, %1
  %4 = sub nuw nsw i32 32, %1
  %5 = shl i32 %0, %4
  %6 = or i32 %5, %3
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @Ch(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = and i32 %1, %0
  %5 = xor i32 %0, -1
  %6 = and i32 %5, %2
  %7 = or disjoint i32 %6, %4
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @Maj(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = xor i32 %2, %1
  %5 = and i32 %4, %0
  %6 = and i32 %2, %1
  %7 = xor i32 %5, %6
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { nounwind optsize allocsize(0,1) }
attributes #18 = { optsize }
attributes #19 = { hot nounwind optsize }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"_SignatureInfo", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !12, i64 40, !6, i64 48, !12, i64 56, !12, i64 64}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!10, !6, i64 4}
!14 = !{!10, !11, i64 8}
!15 = !{!10, !11, i64 16}
!16 = !{!10, !11, i64 24}
!17 = !{!10, !6, i64 48}
!18 = !{!10, !12, i64 56}
!19 = !{!10, !12, i64 64}
!20 = !{!10, !6, i64 32}
!21 = !{!10, !6, i64 36}
!22 = !{!7, !7, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = !{!30, !6, i64 12976}
!30 = !{!"_Image", !6, i64 0, !6, i64 4, !6, i64 8, !12, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !11, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !33, i64 104, !34, i64 112, !6, i64 208, !11, i64 216, !6, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !12, i64 256, !33, i64 264, !33, i64 272, !36, i64 280, !36, i64 312, !36, i64 344, !33, i64 376, !33, i64 384, !33, i64 392, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !6, i64 416, !6, i64 420, !11, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !37, i64 480, !38, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !7, i64 616, !7, i64 4712, !7, i64 8808, !12, i64 12904, !12, i64 12912, !40, i64 12920, !6, i64 12976, !12, i64 12984, !11, i64 12992, !41, i64 13000, !41, i64 13032, !11, i64 13064, !12, i64 13072, !12, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !6, i64 13112, !6, i64 13116, !31, i64 13120, !11, i64 13128, !36, i64 13136, !11, i64 13168, !11, i64 13176, !6, i64 13184, !6, i64 13188, !42, i64 13192, !6, i64 13200, !12, i64 13208, !12, i64 13216, !6, i64 13224, !12, i64 13232}
!31 = !{!"_PixelPacket", !32, i64 0, !32, i64 2, !32, i64 4, !32, i64 6}
!32 = !{!"short", !7, i64 0}
!33 = !{!"double", !7, i64 0}
!34 = !{!"_ChromaticityInfo", !35, i64 0, !35, i64 24, !35, i64 48, !35, i64 72}
!35 = !{!"_PrimaryInfo", !33, i64 0, !33, i64 8, !33, i64 16}
!36 = !{!"_RectangleInfo", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!37 = !{!"_ErrorInfo", !33, i64 0, !33, i64 8, !33, i64 16}
!38 = !{!"_TimerInfo", !39, i64 0, !39, i64 24, !6, i64 48, !12, i64 56}
!39 = !{!"_Timer", !33, i64 0, !33, i64 8, !33, i64 16}
!40 = !{!"_ExceptionInfo", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !11, i64 40, !12, i64 48}
!41 = !{!"_ProfileInfo", !11, i64 0, !12, i64 8, !11, i64 16, !12, i64 24}
!42 = !{!"long long", !7, i64 0}
!43 = !{!30, !6, i64 32}
!44 = !{!30, !6, i64 4}
!45 = !{!46, !12, i64 88}
!46 = !{!"_QuantumInfo", !12, i64 0, !12, i64 8, !6, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !12, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !12, i64 72, !11, i64 80, !12, i64 88, !6, i64 96, !47, i64 104, !11, i64 136, !12, i64 144}
!47 = !{!"_QuantumState", !33, i64 0, !6, i64 8, !12, i64 16, !11, i64 24}
!48 = !{!30, !12, i64 48}
!49 = !{!30, !12, i64 40}
!50 = distinct !{!50, !24}
!51 = !{!10, !12, i64 40}
!52 = distinct !{!52, !24}
