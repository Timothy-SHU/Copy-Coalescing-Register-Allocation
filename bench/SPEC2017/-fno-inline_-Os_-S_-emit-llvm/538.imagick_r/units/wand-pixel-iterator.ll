; ModuleID = 'wand/pixel-iterator.c'
source_filename = "wand/pixel-iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._PixelIterator = type { i64, [4096 x i8], ptr, ptr, %struct._RectangleInfo, i32, i64, ptr, i32, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._MagickWand = type { i64, [4096 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"wand/pixel-iterator.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s-%.20g\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"PixelIterator\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"QuantumDepthMismatch\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ZeroRegionSize\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClearPixelIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 124, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !14
  %13 = tail call ptr @DestroyPixelWands(ptr noundef %10, i64 noundef %12) #10
  store ptr %13, ptr %9, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  tail call void @ClearMagickException(ptr noundef %15) #10
  %16 = load i64, ptr %11, align 8, !tbaa !14
  %17 = tail call ptr @NewPixelWands(i64 noundef %16) #10
  store ptr %17, ptr %9, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 5
  store i32 0, ptr %18, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  store i64 0, ptr %19, align 8, !tbaa !17
  %20 = tail call i32 @IsEventLogging() #10
  store i32 %20, ptr %2, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyPixelWands(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ClearMagickException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @NewPixelWands(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsEventLogging() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ClonePixelIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 164, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %1
  %10 = tail call dereferenceable_or_null(4192) ptr @AcquireMagickMemory(i64 noundef 4192) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  call void @GetExceptionInfo(ptr noundef nonnull %2) #10
  %13 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 168, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #10
  call void @CatchException(ptr noundef nonnull %2) #10
  %15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #13
  unreachable

16:                                               ; preds = %9
  %17 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %10, i32 noundef 0, i64 noundef 4192) #10
  %18 = tail call i64 @AcquireWandId() #10
  store i64 %18, ptr %10, align 8, !tbaa !18
  %19 = getelementptr inbounds %struct._PixelIterator, ptr %10, i64 0, i32 1
  %20 = uitofp i64 %18 to double
  %21 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %19, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %20) #10
  %22 = tail call ptr @AcquireExceptionInfo() #10
  %23 = getelementptr inbounds %struct._PixelIterator, ptr %10, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  tail call void @InheritException(ptr noundef %22, ptr noundef %25) #10
  %26 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = tail call ptr @CloneCacheView(ptr noundef %27) #10
  %29 = getelementptr inbounds %struct._PixelIterator, ptr %10, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct._PixelIterator, ptr %10, i64 0, i32 4
  %31 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %31, i64 32, i1 false), !tbaa.struct !20
  %32 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct._PixelIterator, ptr %10, i64 0, i32 5
  store i32 %33, ptr %34, align 8, !tbaa !16
  %35 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  %36 = load i64, ptr %35, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct._PixelIterator, ptr %10, i64 0, i32 6
  store i64 %36, ptr %37, align 8, !tbaa !17
  %38 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = load i64, ptr %31, align 8, !tbaa !14
  %41 = tail call ptr @ClonePixelWands(ptr noundef %39, i64 noundef %40) #10
  %42 = getelementptr inbounds %struct._PixelIterator, ptr %10, i64 0, i32 7
  store ptr %41, ptr %42, align 8, !tbaa !13
  %43 = load i32, ptr %3, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct._PixelIterator, ptr %10, i64 0, i32 8
  store i32 %43, ptr %44, align 8, !tbaa !5
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %16
  %47 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 183, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #10
  br label %48

48:                                               ; preds = %46, %16
  %49 = getelementptr inbounds %struct._PixelIterator, ptr %10, i64 0, i32 9
  store i64 2880220587, ptr %49, align 8, !tbaa !22
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickWandTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @AcquireWandId() local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #1

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CloneCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @ClonePixelWands(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyPixelIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 216, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = tail call ptr @DestroyCacheView(ptr noundef %10) #10
  store ptr %11, ptr %9, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !14
  %16 = tail call ptr @DestroyPixelWands(ptr noundef %13, i64 noundef %15) #10
  store ptr %16, ptr %12, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = tail call ptr @DestroyExceptionInfo(ptr noundef %18) #10
  store ptr %19, ptr %17, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 9
  store i64 -2880220588, ptr %20, align 8, !tbaa !22
  %21 = load i64, ptr %0, align 8, !tbaa !18
  tail call void @RelinquishWandId(i64 noundef %21) #10
  %22 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #10
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RelinquishWandId(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsPixelIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 9
  %5 = load i64, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 2880220587
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %9 = tail call i32 @LocaleNCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.6, i64 noundef 13) #10
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @NewPixelIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 16, ptr %2, align 8, !tbaa !21
  %5 = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %2) #10
  %6 = load i64, ptr %2, align 8, !tbaa !21
  %7 = icmp eq i64 %6, 16
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  call void @GetExceptionInfo(ptr noundef nonnull %3) #10
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 310, i32 noundef 470, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %5) #10
  call void @CatchException(ptr noundef nonnull %3) #10
  %10 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef -229) #13
  unreachable

11:                                               ; preds = %1
  %12 = call ptr @GetImageFromMagickWand(ptr noundef %0) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %11
  %15 = call ptr @AcquireExceptionInfo() #10
  %16 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %12, ptr noundef %15) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %14
  %19 = call dereferenceable_or_null(4192) ptr @AcquireMagickMemory(i64 noundef 4192) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #12
  call void @GetExceptionInfo(ptr noundef nonnull %4) #10
  %22 = tail call ptr @__errno_location() #14
  %23 = load i32, ptr %22, align 4, !tbaa !23
  %24 = call ptr @GetExceptionMessage(i32 noundef %23) #10
  %25 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 322, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %24) #10
  call void @CatchException(ptr noundef nonnull %4) #10
  %26 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #13
  unreachable

27:                                               ; preds = %18
  %28 = call ptr @ResetMagickMemory(ptr noundef nonnull %19, i32 noundef 0, i64 noundef 4192) #10
  %29 = call i64 @AcquireWandId() #10
  store i64 %29, ptr %19, align 8, !tbaa !18
  %30 = getelementptr inbounds %struct._PixelIterator, ptr %19, i64 0, i32 1
  %31 = uitofp i64 %29 to double
  %32 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %30, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %31) #10
  %33 = getelementptr inbounds %struct._PixelIterator, ptr %19, i64 0, i32 2
  store ptr %15, ptr %33, align 8, !tbaa !15
  %34 = getelementptr inbounds %struct._PixelIterator, ptr %19, i64 0, i32 3
  store ptr %16, ptr %34, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct._PixelIterator, ptr %19, i64 0, i32 4
  call void @SetGeometry(ptr noundef nonnull %12, ptr noundef nonnull %35) #10
  %36 = getelementptr inbounds %struct._Image, ptr %12, i64 0, i32 7
  %37 = load <2 x i64>, ptr %36, align 8, !tbaa !21
  store <2 x i64> %37, ptr %35, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct._PixelIterator, ptr %19, i64 0, i32 4, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  %39 = extractelement <2 x i64> %37, i64 0
  %40 = call ptr @NewPixelWands(i64 noundef %39) #10
  %41 = getelementptr inbounds %struct._PixelIterator, ptr %19, i64 0, i32 7
  store ptr %40, ptr %41, align 8, !tbaa !13
  %42 = getelementptr inbounds %struct._PixelIterator, ptr %19, i64 0, i32 6
  store i64 0, ptr %42, align 8, !tbaa !17
  %43 = call i32 @IsEventLogging() #10
  %44 = getelementptr inbounds %struct._PixelIterator, ptr %19, i64 0, i32 8
  store i32 %43, ptr %44, align 8, !tbaa !5
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %27
  %47 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 338, ptr noundef nonnull @.str.2, ptr noundef nonnull %30) #10
  br label %48

48:                                               ; preds = %46, %27
  %49 = getelementptr inbounds %struct._PixelIterator, ptr %19, i64 0, i32 9
  store i64 2880220587, ptr %49, align 8, !tbaa !22
  br label %50

50:                                               ; preds = %14, %11, %48
  %51 = phi ptr [ %19, %48 ], [ null, %11 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %51
}

; Function Attrs: optsize
declare ptr @GetMagickQuantumDepth(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetImageFromMagickWand(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: optsize
declare void @SetGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PixelClearIteratorException(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 372, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  tail call void @ClearMagickException(ptr noundef %10) #10
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @NewPixelRegionIterator(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct._ExceptionInfo, align 8
  %8 = alloca %struct._ExceptionInfo, align 8
  %9 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 16, ptr %6, align 8, !tbaa !21
  %10 = call ptr @GetMagickQuantumDepth(ptr noundef nonnull %6) #10
  %11 = load i64, ptr %6, align 8, !tbaa !21
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #12
  call void @GetExceptionInfo(ptr noundef nonnull %7) #10
  %14 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 428, i32 noundef 470, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %10) #10
  call void @CatchException(ptr noundef nonnull %7) #10
  %15 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %7) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef -229) #13
  unreachable

16:                                               ; preds = %5
  %17 = icmp eq i64 %3, 0
  %18 = icmp eq i64 %4, 0
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #12
  call void @GetExceptionInfo(ptr noundef nonnull %8) #10
  %21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 430, i32 noundef 470, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef %10) #10
  call void @CatchException(ptr noundef nonnull %8) #10
  %22 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %8) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef -229) #13
  unreachable

23:                                               ; preds = %16
  %24 = call ptr @GetImageFromMagickWand(ptr noundef %0) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %59, label %26

26:                                               ; preds = %23
  %27 = call ptr @AcquireExceptionInfo() #10
  %28 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %24, ptr noundef %27) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %26
  %31 = call dereferenceable_or_null(4192) ptr @AcquireMagickMemory(i64 noundef 4192) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #12
  call void @GetExceptionInfo(ptr noundef nonnull %9) #10
  %34 = getelementptr inbounds %struct._MagickWand, ptr %0, i64 0, i32 1
  %35 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 441, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %34) #10
  call void @CatchException(ptr noundef nonnull %9) #10
  %36 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #13
  unreachable

37:                                               ; preds = %30
  %38 = call ptr @ResetMagickMemory(ptr noundef nonnull %31, i32 noundef 0, i64 noundef 4192) #10
  %39 = call i64 @AcquireWandId() #10
  store i64 %39, ptr %31, align 8, !tbaa !18
  %40 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 1
  %41 = uitofp i64 %39 to double
  %42 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %40, i64 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, double noundef %41) #10
  %43 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 2
  store ptr %27, ptr %43, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 3
  store ptr %28, ptr %44, align 8, !tbaa !19
  %45 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 4
  call void @SetGeometry(ptr noundef nonnull %24, ptr noundef nonnull %45) #10
  store i64 %3, ptr %45, align 8, !tbaa !14
  %46 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 4, i32 1
  store i64 %4, ptr %46, align 8, !tbaa !24
  %47 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 4, i32 2
  store i64 %1, ptr %47, align 8, !tbaa !25
  %48 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 4, i32 3
  store i64 %2, ptr %48, align 8, !tbaa !26
  %49 = call ptr @NewPixelWands(i64 noundef %3) #10
  %50 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 7
  store ptr %49, ptr %50, align 8, !tbaa !13
  %51 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 6
  store i64 0, ptr %51, align 8, !tbaa !17
  %52 = call i32 @IsEventLogging() #10
  %53 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 8
  store i32 %52, ptr %53, align 8, !tbaa !5
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %37
  %56 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 457, ptr noundef nonnull @.str.2, ptr noundef nonnull %40) #10
  br label %57

57:                                               ; preds = %55, %37
  %58 = getelementptr inbounds %struct._PixelIterator, ptr %31, i64 0, i32 9
  store i64 2880220587, ptr %58, align 8, !tbaa !22
  br label %59

59:                                               ; preds = %26, %23, %57
  %60 = phi ptr [ %31, %57 ], [ null, %23 ], [ null, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret ptr %60
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PixelGetCurrentIteratorRow(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 503, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  store i64 0, ptr %1, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 5
  store i32 1, ptr %10, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  %19 = load i64, ptr %18, align 8, !tbaa !17
  %20 = add nsw i64 %19, %17
  %21 = load i64, ptr %13, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %12, i64 noundef %15, i64 noundef %20, i64 noundef %21, i64 noundef 1, ptr noundef %23) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %9
  %27 = load ptr, ptr %22, align 8, !tbaa !15
  %28 = load ptr, ptr %11, align 8, !tbaa !19
  %29 = tail call ptr @GetCacheViewException(ptr noundef %28) #10
  tail call void @InheritException(ptr noundef %27, ptr noundef %29) #10
  br label %88

30:                                               ; preds = %9
  %31 = load ptr, ptr %11, align 8, !tbaa !19
  %32 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %31) #10
  %33 = load i64, ptr %13, align 8, !tbaa !14
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 0, %35 ], [ %43, %37 ]
  %39 = load ptr, ptr %36, align 8, !tbaa !13
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct._PixelPacket, ptr %24, i64 %38
  tail call void @PixelSetQuantumColor(ptr noundef %41, ptr noundef nonnull %42) #10
  %43 = add nuw nsw i64 %38, 1
  %44 = load i64, ptr %13, align 8, !tbaa !14
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %37, label %46, !llvm.loop !28

46:                                               ; preds = %37, %30
  %47 = load ptr, ptr %11, align 8, !tbaa !19
  %48 = tail call i32 @GetCacheViewColorspace(ptr noundef %47) #10
  %49 = icmp eq i32 %48, 12
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i64, ptr %13, align 8, !tbaa !14
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  br label %55

55:                                               ; preds = %53, %55
  %56 = phi i64 [ 0, %53 ], [ %62, %55 ]
  %57 = load ptr, ptr %54, align 8, !tbaa !13
  %58 = getelementptr inbounds ptr, ptr %57, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !27
  %60 = getelementptr inbounds i16, ptr %32, i64 %56
  %61 = load i16, ptr %60, align 2, !tbaa !30
  tail call void @PixelSetBlackQuantum(ptr noundef %59, i16 noundef zeroext %61) #10
  %62 = add nuw nsw i64 %56, 1
  %63 = load i64, ptr %13, align 8, !tbaa !14
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %55, label %65, !llvm.loop !32

65:                                               ; preds = %55, %50, %46
  %66 = load ptr, ptr %11, align 8, !tbaa !19
  %67 = tail call i32 @GetCacheViewStorageClass(ptr noundef %66) #10
  %68 = icmp eq i32 %67, 2
  %69 = load i64, ptr %13, align 8, !tbaa !14
  %70 = icmp sgt i64 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i64 [ 0, %72 ], [ %81, %74 ]
  %76 = load ptr, ptr %73, align 8, !tbaa !13
  %77 = getelementptr inbounds ptr, ptr %76, i64 %75
  %78 = load ptr, ptr %77, align 8, !tbaa !27
  %79 = getelementptr inbounds i16, ptr %32, i64 %75
  %80 = load i16, ptr %79, align 2, !tbaa !30
  tail call void @PixelSetIndex(ptr noundef %78, i16 noundef zeroext %80) #10
  %81 = add nuw nsw i64 %75, 1
  %82 = load i64, ptr %13, align 8, !tbaa !14
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %74, label %84, !llvm.loop !33

84:                                               ; preds = %74, %65
  %85 = phi i64 [ %69, %65 ], [ %82, %74 ]
  store i64 %85, ptr %1, align 8, !tbaa !21
  %86 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !13
  br label %88

88:                                               ; preds = %84, %26
  %89 = phi ptr [ null, %26 ], [ %87, %84 ]
  ret ptr %89
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @GetCacheViewException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PixelSetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetCacheViewColorspace(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PixelSetBlackQuantum(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetCacheViewStorageClass(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PixelSetIndex(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @PixelGetIteratorException(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 565, ptr noundef nonnull @.str.2, ptr noundef nonnull %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  %13 = load i32, ptr %12, align 8, !tbaa !34
  store i32 %13, ptr %1, align 4, !tbaa !23
  %14 = tail call dereferenceable_or_null(8192) ptr @AcquireQuantumMemory(i64 noundef 8192, i64 noundef 1) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  call void @GetExceptionInfo(ptr noundef nonnull %3) #10
  %17 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 572, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #10
  call void @CatchException(ptr noundef nonnull %3) #10
  %19 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #10
  call void @MagickWandTerminus() #10
  call void @_exit(i32 noundef 1) #13
  unreachable

20:                                               ; preds = %10
  store i8 0, ptr %14, align 1, !tbaa !36
  %21 = load ptr, ptr %11, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct._ExceptionInfo, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %21, align 8, !tbaa !34
  %27 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %26, ptr noundef nonnull %23) #10
  %28 = tail call i64 @CopyMagickString(ptr noundef nonnull %14, ptr noundef %27, i64 noundef 4096) #10
  %29 = load ptr, ptr %11, align 8, !tbaa !15
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi ptr [ %29, %25 ], [ %21, %20 ]
  %32 = getelementptr inbounds %struct._ExceptionInfo, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !38
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.9, i64 noundef 4096) #10
  %37 = load ptr, ptr %11, align 8, !tbaa !15
  %38 = load i32, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct._ExceptionInfo, ptr %37, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !38
  %41 = tail call ptr @GetLocaleExceptionMessage(i32 noundef %38, ptr noundef %40) #10
  %42 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef %41, i64 noundef 4096) #10
  %43 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %14, ptr noundef nonnull @.str.10, i64 noundef 4096) #10
  br label %44

44:                                               ; preds = %35, %30
  ret ptr %14
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetLocaleExceptionMessage(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PixelGetIteratorExceptionType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 618, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = load i32, ptr %10, align 8, !tbaa !34
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @PixelGetIteratorRow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 649, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  %10 = load i64, ptr %9, align 8, !tbaa !17
  ret i64 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PixelGetNextIteratorRow(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 694, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  store i64 0, ptr %1, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  %14 = load i64, ptr %13, align 8, !tbaa !17
  br i1 %12, label %17, label %15

15:                                               ; preds = %9
  %16 = add nsw i64 %14, 1
  store i64 %16, ptr %13, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %9, %15
  %18 = phi i64 [ %16, %15 ], [ %14, %9 ]
  %19 = tail call i32 @PixelSetIteratorRow(ptr noundef nonnull %0, i64 noundef %18) #17, !range !39
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %103, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  %23 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4
  %26 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !26
  %30 = load i64, ptr %22, align 8, !tbaa !17
  %31 = add nsw i64 %30, %29
  %32 = load i64, ptr %25, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %24, i64 noundef %27, i64 noundef %31, i64 noundef %32, i64 noundef 1, ptr noundef %34) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load ptr, ptr %33, align 8, !tbaa !15
  %39 = load ptr, ptr %23, align 8, !tbaa !19
  %40 = tail call ptr @GetCacheViewException(ptr noundef %39) #10
  tail call void @InheritException(ptr noundef %38, ptr noundef %40) #10
  br label %103

41:                                               ; preds = %21
  %42 = load ptr, ptr %23, align 8, !tbaa !19
  %43 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %42) #10
  %44 = load i64, ptr %25, align 8, !tbaa !14
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ 0, %46 ], [ %54, %48 ]
  %50 = load ptr, ptr %47, align 8, !tbaa !13
  %51 = getelementptr inbounds ptr, ptr %50, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !27
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 %49
  tail call void @PixelSetQuantumColor(ptr noundef %52, ptr noundef nonnull %53) #10
  %54 = add nuw nsw i64 %49, 1
  %55 = load i64, ptr %25, align 8, !tbaa !14
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %48, label %57, !llvm.loop !40

57:                                               ; preds = %48, %41
  %58 = load ptr, ptr %23, align 8, !tbaa !19
  %59 = tail call i32 @GetCacheViewColorspace(ptr noundef %58) #10
  %60 = icmp eq i32 %59, 12
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i64, ptr %25, align 8, !tbaa !14
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ 0, %64 ], [ %73, %66 ]
  %68 = load ptr, ptr %65, align 8, !tbaa !13
  %69 = getelementptr inbounds ptr, ptr %68, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !27
  %71 = getelementptr inbounds i16, ptr %43, i64 %67
  %72 = load i16, ptr %71, align 2, !tbaa !30
  tail call void @PixelSetBlackQuantum(ptr noundef %70, i16 noundef zeroext %72) #10
  %73 = add nuw nsw i64 %67, 1
  %74 = load i64, ptr %25, align 8, !tbaa !14
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %66, label %76, !llvm.loop !41

76:                                               ; preds = %66, %61, %57
  %77 = load ptr, ptr %23, align 8, !tbaa !19
  %78 = tail call i32 @GetCacheViewStorageClass(ptr noundef %77) #10
  %79 = icmp eq i32 %78, 2
  %80 = load i64, ptr %25, align 8, !tbaa !14
  %81 = icmp sgt i64 %80, 0
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  %85 = icmp eq ptr %43, null
  br label %86

86:                                               ; preds = %83, %94
  %87 = phi i64 [ 0, %83 ], [ %96, %94 ]
  %88 = load ptr, ptr %84, align 8, !tbaa !13
  %89 = getelementptr inbounds ptr, ptr %88, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !27
  br i1 %85, label %94, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds i16, ptr %43, i64 %87
  %93 = load i16, ptr %92, align 2, !tbaa !30
  br label %94

94:                                               ; preds = %86, %91
  %95 = phi i16 [ %93, %91 ], [ 0, %86 ]
  tail call void @PixelSetIndex(ptr noundef %90, i16 noundef zeroext %95) #10
  %96 = add nuw nsw i64 %87, 1
  %97 = load i64, ptr %25, align 8, !tbaa !14
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %86, label %99, !llvm.loop !42

99:                                               ; preds = %94, %76
  %100 = phi i64 [ %80, %76 ], [ %97, %94 ]
  store i64 %100, ptr %1, align 8, !tbaa !21
  %101 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !13
  br label %103

103:                                              ; preds = %17, %99, %37
  %104 = phi ptr [ null, %37 ], [ %102, %99 ], [ null, %17 ]
  ret ptr %104
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PixelSetIteratorRow(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 899, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp slt i64 %1, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !24
  %14 = icmp sgt i64 %13, %1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 5
  store i32 1, ptr %16, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  store i64 %1, ptr %17, align 8, !tbaa !17
  br label %18

18:                                               ; preds = %9, %11, %15
  %19 = phi i32 [ 1, %15 ], [ 0, %11 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PixelGetPreviousRow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %3 = call ptr @PixelGetPreviousIteratorRow(ptr noundef %0, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PixelGetPreviousIteratorRow(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 774, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  store i64 0, ptr %1, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !16
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  %14 = load i64, ptr %13, align 8, !tbaa !17
  br i1 %12, label %17, label %15

15:                                               ; preds = %9
  %16 = add nsw i64 %14, -1
  store i64 %16, ptr %13, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %9, %15
  %18 = phi i64 [ %16, %15 ], [ %14, %9 ]
  %19 = tail call i32 @PixelSetIteratorRow(ptr noundef nonnull %0, i64 noundef %18) #17, !range !39
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %103, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  %23 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4
  %26 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !26
  %30 = load i64, ptr %22, align 8, !tbaa !17
  %31 = add nsw i64 %30, %29
  %32 = load i64, ptr %25, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = tail call ptr @GetCacheViewVirtualPixels(ptr noundef %24, i64 noundef %27, i64 noundef %31, i64 noundef %32, i64 noundef 1, ptr noundef %34) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load ptr, ptr %33, align 8, !tbaa !15
  %39 = load ptr, ptr %23, align 8, !tbaa !19
  %40 = tail call ptr @GetCacheViewException(ptr noundef %39) #10
  tail call void @InheritException(ptr noundef %38, ptr noundef %40) #10
  br label %103

41:                                               ; preds = %21
  %42 = load ptr, ptr %23, align 8, !tbaa !19
  %43 = tail call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %42) #10
  %44 = load i64, ptr %25, align 8, !tbaa !14
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ 0, %46 ], [ %54, %48 ]
  %50 = load ptr, ptr %47, align 8, !tbaa !13
  %51 = getelementptr inbounds ptr, ptr %50, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !27
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %35, i64 %49
  tail call void @PixelSetQuantumColor(ptr noundef %52, ptr noundef nonnull %53) #10
  %54 = add nuw nsw i64 %49, 1
  %55 = load i64, ptr %25, align 8, !tbaa !14
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %48, label %57, !llvm.loop !43

57:                                               ; preds = %48, %41
  %58 = load ptr, ptr %23, align 8, !tbaa !19
  %59 = tail call i32 @GetCacheViewColorspace(ptr noundef %58) #10
  %60 = icmp eq i32 %59, 12
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i64, ptr %25, align 8, !tbaa !14
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ 0, %64 ], [ %73, %66 ]
  %68 = load ptr, ptr %65, align 8, !tbaa !13
  %69 = getelementptr inbounds ptr, ptr %68, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !27
  %71 = getelementptr inbounds i16, ptr %43, i64 %67
  %72 = load i16, ptr %71, align 2, !tbaa !30
  tail call void @PixelSetBlackQuantum(ptr noundef %70, i16 noundef zeroext %72) #10
  %73 = add nuw nsw i64 %67, 1
  %74 = load i64, ptr %25, align 8, !tbaa !14
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %66, label %76, !llvm.loop !44

76:                                               ; preds = %66, %61, %57
  %77 = load ptr, ptr %23, align 8, !tbaa !19
  %78 = tail call i32 @GetCacheViewStorageClass(ptr noundef %77) #10
  %79 = icmp eq i32 %78, 2
  %80 = load i64, ptr %25, align 8, !tbaa !14
  %81 = icmp sgt i64 %80, 0
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  %85 = icmp eq ptr %43, null
  br label %86

86:                                               ; preds = %83, %94
  %87 = phi i64 [ 0, %83 ], [ %96, %94 ]
  %88 = load ptr, ptr %84, align 8, !tbaa !13
  %89 = getelementptr inbounds ptr, ptr %88, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !27
  br i1 %85, label %94, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds i16, ptr %43, i64 %87
  %93 = load i16, ptr %92, align 2, !tbaa !30
  br label %94

94:                                               ; preds = %86, %91
  %95 = phi i16 [ %93, %91 ], [ 0, %86 ]
  tail call void @PixelSetIndex(ptr noundef %90, i16 noundef zeroext %95) #10
  %96 = add nuw nsw i64 %87, 1
  %97 = load i64, ptr %25, align 8, !tbaa !14
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %86, label %99, !llvm.loop !45

99:                                               ; preds = %94, %76
  %100 = phi i64 [ %80, %76 ], [ %97, %94 ]
  store i64 %100, ptr %1, align 8, !tbaa !21
  %101 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !13
  br label %103

103:                                              ; preds = %17, %99, %37
  %104 = phi ptr [ null, %37 ], [ %102, %99 ], [ null, %17 ]
  ret ptr %104
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelResetIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 833, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  store i64 0, ptr %10, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetFirstIteratorRow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 865, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  store i64 %11, ptr %12, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PixelSetLastIteratorRow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 934, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !24
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  store i64 %12, ptr %13, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PixelSyncIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 1
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 978, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #10
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = tail call i32 @SetCacheViewStorageClass(ptr noundef %10, i32 noundef 1) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %71, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = load ptr, ptr %9, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 4, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !26
  %22 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 6
  %23 = load i64, ptr %22, align 8, !tbaa !17
  %24 = add nsw i64 %23, %21
  %25 = load i64, ptr %17, align 8, !tbaa !14
  %26 = tail call ptr @GetCacheViewAuthenticPixels(ptr noundef %16, i64 noundef %19, i64 noundef %24, i64 noundef %25, i64 noundef 1, ptr noundef %15) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %67, label %28

28:                                               ; preds = %13
  %29 = load ptr, ptr %9, align 8, !tbaa !19
  %30 = tail call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %29) #10
  %31 = load i64, ptr %17, align 8, !tbaa !14
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %41, %35 ]
  %37 = load ptr, ptr %34, align 8, !tbaa !13
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !27
  %40 = getelementptr inbounds %struct._PixelPacket, ptr %26, i64 %36
  tail call void @PixelGetQuantumColor(ptr noundef %39, ptr noundef nonnull %40) #10
  %41 = add nuw nsw i64 %36, 1
  %42 = load i64, ptr %17, align 8, !tbaa !14
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %35, label %44, !llvm.loop !46

44:                                               ; preds = %35, %28
  %45 = load ptr, ptr %9, align 8, !tbaa !19
  %46 = tail call i32 @GetCacheViewColorspace(ptr noundef %45) #10
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i64, ptr %17, align 8, !tbaa !14
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._PixelIterator, ptr %0, i64 0, i32 7
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ 0, %51 ], [ %60, %53 ]
  %55 = load ptr, ptr %52, align 8, !tbaa !13
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  %57 = load ptr, ptr %56, align 8, !tbaa !27
  %58 = tail call zeroext i16 @PixelGetBlackQuantum(ptr noundef %57) #10
  %59 = getelementptr inbounds i16, ptr %30, i64 %54
  store i16 %58, ptr %59, align 2, !tbaa !30
  %60 = add nuw nsw i64 %54, 1
  %61 = load i64, ptr %17, align 8, !tbaa !14
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %53, label %63, !llvm.loop !47

63:                                               ; preds = %53, %48, %44
  %64 = load ptr, ptr %9, align 8, !tbaa !19
  %65 = tail call i32 @SyncCacheViewAuthenticPixels(ptr noundef %64, ptr noundef %15) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63, %13
  %68 = load ptr, ptr %14, align 8, !tbaa !15
  %69 = load ptr, ptr %9, align 8, !tbaa !19
  %70 = tail call ptr @GetCacheViewException(ptr noundef %69) #10
  tail call void @InheritException(ptr noundef %68, ptr noundef %70) #10
  br label %71

71:                                               ; preds = %67, %63, %8
  %72 = phi i32 [ 0, %8 ], [ 1, %63 ], [ 0, %67 ]
  ret i32 %72
}

; Function Attrs: optsize
declare i32 @SetCacheViewStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: hot optsize
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PixelGetQuantumColor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i16 @PixelGetBlackQuantum(ptr noundef) local_unnamed_addr #1

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(none) }
attributes #15 = { hot nounwind optsize }
attributes #16 = { nounwind optsize allocsize(0,1) }
attributes #17 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 4176}
!6 = !{!"_PixelIterator", !7, i64 0, !8, i64 8, !10, i64 4104, !10, i64 4112, !11, i64 4120, !12, i64 4152, !7, i64 4160, !10, i64 4168, !12, i64 4176, !7, i64 4184}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"_RectangleInfo", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"int", !8, i64 0}
!13 = !{!6, !10, i64 4168}
!14 = !{!6, !7, i64 4120}
!15 = !{!6, !10, i64 4104}
!16 = !{!6, !12, i64 4152}
!17 = !{!6, !7, i64 4160}
!18 = !{!6, !7, i64 0}
!19 = !{!6, !10, i64 4112}
!20 = !{i64 0, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 8, !21, i64 24, i64 8, !21}
!21 = !{!7, !7, i64 0}
!22 = !{!6, !7, i64 4184}
!23 = !{!12, !12, i64 0}
!24 = !{!6, !7, i64 4128}
!25 = !{!6, !7, i64 4136}
!26 = !{!6, !7, i64 4144}
!27 = !{!10, !10, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !8, i64 0}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !29}
!34 = !{!35, !12, i64 0}
!35 = !{!"_ExceptionInfo", !12, i64 0, !12, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !12, i64 32, !10, i64 40, !7, i64 48}
!36 = !{!8, !8, i64 0}
!37 = !{!35, !10, i64 8}
!38 = !{!35, !10, i64 16}
!39 = !{i32 0, i32 2}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
