; ModuleID = 'magick/stream.c'
source_filename = "magick/stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._StreamInfo = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct._RectangleInfo, i64, ptr, ptr, i64 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._CacheMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._CacheInfo = type { i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, i32, %struct._MagickPixelPacket, i64, ptr, ptr, ptr, i32, i32, [4096 x i8], [4096 x i8], %struct._CacheMethods, ptr, i64, ptr, i32, i32, i32, i64, ptr, ptr, i64, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._QuantumInfo = type { i64, i64, i32, double, double, double, i64, i32, i32, i32, i64, ptr, i64, i32, %struct._QuantumState, ptr, i64 }
%struct._QuantumState = type { double, i32, i64, ptr }

@.str = private unnamed_addr constant [16 x i8] c"magick/stream.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"ImageDoesNotContainTheStreamGeometry\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"NoStreamHandlerIsDefined\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"ColorSeparatedImageRequired\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"UnrecognizedPixelMap\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"BGR\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"BGRA\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"BGRP\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"RGBP\00", align 1
@switch.table.WriteStreamImage = private unnamed_addr constant [6 x i64] [i64 8, i64 4, i64 4, i64 8, i64 2, i64 2], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireStreamInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = alloca %struct._ExceptionInfo, align 8
  %4 = tail call dereferenceable_or_null(120) ptr @AcquireMagickMemory(i64 noundef 120) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #17
  call void @GetExceptionInfo(ptr noundef nonnull %2) #18
  %7 = tail call ptr @__errno_location() #19
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = call ptr @GetExceptionMessage(i32 noundef %8) #18
  %10 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 158, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %9) #18
  %11 = call ptr @DestroyString(ptr noundef %9) #18
  call void @CatchException(ptr noundef nonnull %2) #18
  %12 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #20
  unreachable

13:                                               ; preds = %1
  %14 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %4, i32 noundef 0, i64 noundef 120) #18
  %15 = tail call dereferenceable_or_null(1) ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef 1) #21
  %16 = getelementptr inbounds %struct._StreamInfo, ptr %4, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !38
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #17
  call void @GetExceptionInfo(ptr noundef nonnull %3) #18
  %19 = tail call ptr @__errno_location() #19
  %20 = load i32, ptr %19, align 4, !tbaa !34
  %21 = call ptr @GetExceptionMessage(i32 noundef %20) #18
  %22 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 163, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %21) #18
  %23 = call ptr @DestroyString(ptr noundef %21) #18
  call void @CatchException(ptr noundef nonnull %3) #18
  %24 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %3) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #20
  unreachable

25:                                               ; preds = %13
  %26 = tail call ptr @ConstantString(ptr noundef nonnull @.str.4) #18
  %27 = getelementptr inbounds %struct._StreamInfo, ptr %4, i64 0, i32 4
  store ptr %26, ptr %27, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct._StreamInfo, ptr %4, i64 0, i32 5
  store i32 1, ptr %28, align 8, !tbaa !44
  %29 = tail call ptr @AcquireImage(ptr noundef %0) #18
  %30 = getelementptr inbounds %struct._StreamInfo, ptr %4, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct._StreamInfo, ptr %4, i64 0, i32 11
  store i64 2880220587, ptr %31, align 8, !tbaa !46
  ret ptr %4
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

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquireImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyStreamInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 265, ptr noundef nonnull @.str.5) #18
  %3 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @DestroyString(ptr noundef nonnull %4) #18
  store ptr %7, ptr %3, align 8, !tbaa !43
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %10) #18
  store ptr %13, ptr %9, align 8, !tbaa !38
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @CloseBlob(ptr noundef nonnull %16) #18
  %20 = load ptr, ptr %15, align 8, !tbaa !45
  %21 = tail call ptr @DestroyImage(ptr noundef %20) #18
  store ptr %21, ptr %15, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @DestroyQuantumInfo(ptr noundef nonnull %24) #18
  store ptr %27, ptr %23, align 8, !tbaa !47
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 11
  store i64 -2880220588, ptr %29, align 8, !tbaa !46
  %30 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #18
  ret ptr %30
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CloseBlob(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyQuantumInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @GetStreamInfoClientData(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @OpenStream(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._StreamInfo, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct._Image, ptr %6, i64 0, i32 53
  %8 = tail call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 4096) #18
  %9 = load ptr, ptr %5, align 8, !tbaa !45
  %10 = tail call i32 @OpenBlob(ptr noundef %0, ptr noundef %9, i32 noundef 4, ptr noundef %3) #18
  ret i32 %10
}

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @OpenBlob(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ReadStream(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._CacheMethods, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 952, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #18
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call ptr @CloneImageInfo(ptr noundef nonnull %0) #18
  %13 = tail call ptr @AcquirePixelCache(i64 noundef 0) #18
  %14 = getelementptr inbounds %struct._ImageInfo, ptr %12, i64 0, i32 43
  store ptr %13, ptr %14, align 8, !tbaa !54
  call void @GetPixelCacheMethods(ptr noundef nonnull %4) #18
  store ptr @GetVirtualPixelStream, ptr %4, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct._CacheMethods, ptr %4, i64 0, i32 2
  store ptr @GetVirtualIndexesFromStream, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct._CacheMethods, ptr %4, i64 0, i32 1
  store ptr @GetVirtualPixelsStream, ptr %16, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct._CacheMethods, ptr %4, i64 0, i32 4
  store ptr @GetAuthenticPixelsStream, ptr %17, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct._CacheMethods, ptr %4, i64 0, i32 8
  store ptr @QueueAuthenticPixelsStream, ptr %18, align 8, !tbaa !60
  %19 = getelementptr inbounds %struct._CacheMethods, ptr %4, i64 0, i32 9
  store ptr @SyncAuthenticPixelsStream, ptr %19, align 8, !tbaa !61
  %20 = getelementptr inbounds %struct._CacheMethods, ptr %4, i64 0, i32 7
  store ptr @GetAuthenticPixelsFromStream, ptr %20, align 8, !tbaa !62
  %21 = getelementptr inbounds %struct._CacheMethods, ptr %4, i64 0, i32 5
  store ptr @GetAuthenticIndexesFromStream, ptr %21, align 8, !tbaa !63
  %22 = getelementptr inbounds %struct._CacheMethods, ptr %4, i64 0, i32 3
  store ptr @GetOneVirtualPixelFromStream, ptr %22, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct._CacheMethods, ptr %4, i64 0, i32 6
  store ptr @GetOneAuthenticPixelFromStream, ptr %23, align 8, !tbaa !65
  %24 = getelementptr inbounds %struct._CacheMethods, ptr %4, i64 0, i32 10
  store ptr @DestroyPixelStream, ptr %24, align 8, !tbaa !66
  %25 = load ptr, ptr %14, align 8, !tbaa !54
  call void @SetPixelCacheMethods(ptr noundef %25, ptr noundef nonnull %4) #18
  %26 = getelementptr inbounds %struct._ImageInfo, ptr %12, i64 0, i32 44
  store ptr %1, ptr %26, align 8, !tbaa !67
  %27 = call ptr @ReadImage(ptr noundef %12, ptr noundef %2) #18
  %28 = call ptr @DestroyImageInfo(ptr noundef %12) #18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #17
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @CloneImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @AcquirePixelCache(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @GetPixelCacheMethods(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @GetVirtualPixelStream(ptr noundef %0, i32 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) #0 !PGOFuncName !68 {
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !69
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 694, ptr noundef nonnull @.str.6, ptr noundef nonnull %12) #18
  br label %14

14:                                               ; preds = %11, %7
  %15 = or i64 %3, %2
  %16 = icmp sgt i64 %15, -1
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = add nsw i64 %4, %2
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !79
  %21 = icmp sgt i64 %18, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = add nsw i64 %5, %3
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !80
  %26 = icmp sgt i64 %23, %25
  %27 = icmp eq i64 %4, 0
  %28 = or i1 %27, %26
  %29 = icmp eq i64 %5, 0
  %30 = or i1 %29, %28
  br i1 %30, label %31, label %34

31:                                               ; preds = %22, %17, %14
  %32 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 700, i32 noundef 440, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull %32) #18
  br label %80

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %36 = load ptr, ptr %35, align 8, !tbaa !81
  %37 = load i32, ptr %0, align 8, !tbaa !82
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 16
  store i32 1, ptr %40, align 8, !tbaa !83
  %41 = mul i64 %5, %4
  %42 = mul i64 %41, 10
  br label %54

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !87
  %46 = freeze i32 %45
  %47 = icmp eq i32 %46, 12
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 16
  store i32 %48, ptr %49, align 8, !tbaa !83
  %50 = mul i64 %5, %4
  %51 = shl i64 %50, 3
  %52 = mul i64 %50, 10
  %53 = select i1 %47, i64 %52, i64 %51
  br label %54

54:                                               ; preds = %43, %39
  %55 = phi i64 [ %41, %39 ], [ %50, %43 ]
  %56 = phi ptr [ %40, %39 ], [ %49, %43 ]
  %57 = phi i64 [ %42, %39 ], [ %53, %43 ]
  %58 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 14
  %59 = load ptr, ptr %58, align 8, !tbaa !88
  %60 = icmp eq ptr %59, null
  %61 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 9
  br i1 %60, label %62, label %66

62:                                               ; preds = %54
  store i64 %57, ptr %61, align 8, !tbaa !89
  %63 = tail call fastcc i32 @AcquireStreamPixels(ptr noundef nonnull %36, ptr noundef %6) #22, !range !90
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  store i64 0, ptr %61, align 8, !tbaa !89
  br label %80

66:                                               ; preds = %54
  %67 = load i64, ptr %61, align 8, !tbaa !89
  %68 = icmp ult i64 %67, %57
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  tail call fastcc void @RelinquishStreamPixels(ptr noundef nonnull %36) #22
  store i64 %57, ptr %61, align 8, !tbaa !89
  %70 = tail call fastcc i32 @AcquireStreamPixels(ptr noundef nonnull %36, ptr noundef %6) #22, !range !90
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i64 0, ptr %61, align 8, !tbaa !89
  br label %80

73:                                               ; preds = %66, %69, %62
  %74 = getelementptr inbounds %struct._CacheInfo, ptr %36, i64 0, i32 15
  store ptr null, ptr %74, align 8, !tbaa !91
  %75 = load i32, ptr %56, align 8, !tbaa !83
  %76 = icmp eq i32 %75, 0
  %77 = load ptr, ptr %58, align 8, !tbaa !88
  br i1 %76, label %80, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct._PixelPacket, ptr %77, i64 %55
  store ptr %79, ptr %74, align 8, !tbaa !91
  br label %80

80:                                               ; preds = %73, %78, %72, %65, %31
  %81 = phi ptr [ null, %31 ], [ null, %65 ], [ null, %72 ], [ %77, %78 ], [ %77, %73 ]
  ret ptr %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @GetVirtualIndexesFromStream(ptr noundef %0) #0 !PGOFuncName !92 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !69
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 603, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @GetVirtualPixelsStream(ptr noundef %0) #0 !PGOFuncName !93 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !69
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 566, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @GetAuthenticPixelsStream(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 !PGOFuncName !94 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !69
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 364, ptr noundef nonnull @.str.6, ptr noundef nonnull %11) #18
  br label %13

13:                                               ; preds = %10, %6
  %14 = tail call ptr @QueueAuthenticPixelsStream(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #22
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @QueueAuthenticPixelsStream(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 !PGOFuncName !95 {
  %7 = or i64 %2, %1
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = add nsw i64 %3, %1
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !79
  %13 = icmp sgt i64 %10, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = add nsw i64 %4, %2
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !80
  %18 = icmp sgt i64 %15, %17
  %19 = icmp eq i64 %3, 0
  %20 = or i1 %19, %18
  %21 = icmp eq i64 %4, 0
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %26

23:                                               ; preds = %14, %9, %6
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 842, i32 noundef 440, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull %24) #18
  br label %98

26:                                               ; preds = %14
  %27 = tail call ptr @GetBlobStreamHandler(ptr noundef nonnull %0) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %31 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 849, i32 noundef 440, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull %30) #18
  br label %98

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %34 = load ptr, ptr %33, align 8, !tbaa !81
  %35 = load i32, ptr %0, align 8, !tbaa !82
  %36 = tail call i32 @GetPixelCacheStorageClass(ptr noundef %34) #18
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !87
  %41 = load ptr, ptr %33, align 8, !tbaa !81
  %42 = tail call i32 @GetPixelCacheColorspace(ptr noundef %41) #18
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, ptr %0, align 8, !tbaa !82
  br label %57

46:                                               ; preds = %38, %32
  %47 = load ptr, ptr %33, align 8, !tbaa !81
  %48 = tail call i32 @GetPixelCacheStorageClass(ptr noundef %47) #18
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 6
  %52 = load i64, ptr %51, align 8, !tbaa !96
  %53 = tail call i64 %27(ptr noundef nonnull %0, ptr noundef null, i64 noundef %52) #18
  br label %54

54:                                               ; preds = %50, %46
  %55 = load <2 x i32>, ptr %0, align 8, !tbaa !34
  store <2 x i32> %55, ptr %34, align 8, !tbaa !34
  store ptr %34, ptr %33, align 8, !tbaa !81
  %56 = extractelement <2 x i32> %55, i64 0
  br label %57

57:                                               ; preds = %44, %54
  %58 = phi i32 [ %45, %44 ], [ %56, %54 ]
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !87
  %63 = freeze i32 %62
  %64 = icmp eq i32 %63, 12
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i32 [ 1, %57 ], [ %65, %60 ]
  %68 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 16
  store i32 %67, ptr %68, align 8, !tbaa !83
  %69 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 6
  store i64 %3, ptr %69, align 8, !tbaa !96
  %70 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 7
  store i64 %4, ptr %70, align 8, !tbaa !97
  %71 = mul i64 %4, %3
  %72 = shl i64 %71, 3
  %73 = icmp eq i32 %67, 0
  %74 = mul i64 %71, 10
  %75 = select i1 %73, i64 %72, i64 %74
  %76 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 14
  %77 = load ptr, ptr %76, align 8, !tbaa !88
  %78 = icmp eq ptr %77, null
  %79 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 9
  br i1 %78, label %80, label %84

80:                                               ; preds = %66
  store i64 %75, ptr %79, align 8, !tbaa !89
  %81 = tail call fastcc i32 @AcquireStreamPixels(ptr noundef nonnull %34, ptr noundef %5) #22, !range !90
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  store i64 0, ptr %79, align 8, !tbaa !89
  br label %98

84:                                               ; preds = %66
  %85 = load i64, ptr %79, align 8, !tbaa !89
  %86 = icmp ult i64 %85, %75
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  tail call fastcc void @RelinquishStreamPixels(ptr noundef nonnull %34) #22
  store i64 %75, ptr %79, align 8, !tbaa !89
  %88 = tail call fastcc i32 @AcquireStreamPixels(ptr noundef nonnull %34, ptr noundef %5) #22, !range !90
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i64 0, ptr %79, align 8, !tbaa !89
  br label %98

91:                                               ; preds = %84, %87, %80
  %92 = getelementptr inbounds %struct._CacheInfo, ptr %34, i64 0, i32 15
  store ptr null, ptr %92, align 8, !tbaa !91
  %93 = load i32, ptr %68, align 8, !tbaa !83
  %94 = icmp eq i32 %93, 0
  %95 = load ptr, ptr %76, align 8, !tbaa !88
  br i1 %94, label %98, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %95, i64 %71
  store ptr %97, ptr %92, align 8, !tbaa !91
  br label %98

98:                                               ; preds = %91, %96, %90, %83, %29, %23
  %99 = phi ptr [ null, %23 ], [ null, %29 ], [ null, %83 ], [ null, %90 ], [ %95, %96 ], [ %95, %91 ]
  ret ptr %99
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @SyncAuthenticPixelsStream(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !98 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !69
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2666, ptr noundef nonnull @.str.6, ptr noundef nonnull %7) #18
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = tail call ptr @GetBlobStreamHandler(ptr noundef nonnull %0) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2672, i32 noundef 440, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull %15) #18
  br label %26

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._CacheInfo, ptr %11, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = getelementptr inbounds %struct._CacheInfo, ptr %11, i64 0, i32 6
  %21 = load i64, ptr %20, align 8, !tbaa !96
  %22 = tail call i64 %12(ptr noundef nonnull %0, ptr noundef %19, i64 noundef %21) #18
  %23 = load i64, ptr %20, align 8, !tbaa !96
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %17, %14
  %27 = phi i32 [ 0, %14 ], [ %25, %17 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @GetAuthenticPixelsFromStream(ptr noundef %0) #0 !PGOFuncName !99 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !69
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 400, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @GetAuthenticIndexesFromStream(ptr noundef %0) #0 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !69
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 316, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @GetOneVirtualPixelFromStream(ptr noundef %0, i32 %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) #0 !PGOFuncName !101 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %4, align 2
  %9 = tail call ptr @GetVirtualPixelStream(ptr noundef %0, i32 poison, i64 noundef %2, i64 noundef %3, i64 noundef 1, i64 noundef 1, ptr noundef %5) #22
  %10 = icmp ne ptr %9, null
  tail call void @llvm.assume(i1 %10)
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @GetOneAuthenticPixelFromStream(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #0 !PGOFuncName !102 {
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %7 = load i64, ptr %6, align 8
  store i64 %7, ptr %3, align 2
  %8 = tail call ptr @GetAuthenticPixelsStream(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 1, ptr noundef %4) #22
  %9 = icmp ne ptr %8, null
  tail call void @llvm.assume(i1 %9)
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @DestroyPixelStream(ptr noundef %0) #0 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %3 = load i32, ptr %2, align 8, !tbaa !69
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %7 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 218, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  tail call void @LockSemaphoreInfo(ptr noundef %12) #18
  %13 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 27
  %14 = load i64, ptr %13, align 8, !tbaa !105
  %15 = add nsw i64 %14, -1
  store i64 %15, ptr %13, align 8, !tbaa !105
  %16 = icmp eq i64 %15, 0
  %17 = load ptr, ptr %11, align 8, !tbaa !104
  tail call void @UnlockSemaphoreInfo(ptr noundef %17) #18
  br i1 %16, label %18, label %37

18:                                               ; preds = %8
  tail call fastcc void @RelinquishStreamPixels(ptr noundef nonnull %10) #22
  %19 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 12
  %24 = load i64, ptr %23, align 8, !tbaa !107
  %25 = tail call ptr @DestroyPixelCacheNexus(ptr noundef nonnull %20, i64 noundef %24) #18
  store ptr %25, ptr %19, align 8, !tbaa !106
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct._CacheInfo, ptr %10, i64 0, i32 29
  %28 = load ptr, ptr %27, align 8, !tbaa !108
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %27) #18
  br label %31

31:                                               ; preds = %30, %26
  %32 = load ptr, ptr %11, align 8, !tbaa !104
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull %11) #18
  br label %35

35:                                               ; preds = %34, %31
  %36 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %10) #18
  br label %37

37:                                               ; preds = %8, %35
  ret void
}

; Function Attrs: optsize
declare void @SetPixelCacheMethods(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SetStreamInfoClientData(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 10
  store ptr %1, ptr %3, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SetStreamInfoMap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 4
  %4 = tail call ptr @CloneString(ptr noundef nonnull %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @SetStreamInfoStorageType(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 5
  store i32 %1, ptr %3, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @StreamImage(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1212, ptr noundef nonnull @.str.6, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @CloneImageInfo(ptr noundef nonnull %0) #18
  store ptr %0, ptr %1, align 8, !tbaa !109
  %12 = tail call ptr @AcquireQuantumInfo(ptr noundef nonnull %0, ptr noundef null) #18
  %13 = getelementptr inbounds %struct._StreamInfo, ptr %1, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct._StreamInfo, ptr %1, i64 0, i32 9
  store ptr %2, ptr %14, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 42
  store ptr %1, ptr %15, align 8, !tbaa !111
  %16 = tail call ptr @ReadStream(ptr noundef %11, ptr noundef nonnull @WriteStreamImage, ptr noundef %2) #22
  %17 = tail call ptr @DestroyImageInfo(ptr noundef %11) #18
  %18 = load ptr, ptr %13, align 8, !tbaa !47
  %19 = tail call ptr @DestroyQuantumInfo(ptr noundef %18) #18
  store ptr %19, ptr %13, align 8, !tbaa !47
  %20 = tail call ptr @AcquireQuantumInfo(ptr noundef nonnull %0, ptr noundef %16) #18
  store ptr %20, ptr %13, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = tail call ptr @DestroyImage(ptr noundef %16) #18
  br label %24

24:                                               ; preds = %22, %10
  %25 = phi ptr [ %23, %22 ], [ %16, %10 ]
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @AcquireQuantumInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i64 @WriteStreamImage(ptr noundef %0, ptr nocapture readnone %1, i64 noundef %2) #0 !PGOFuncName !112 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = add i32 %7, -2
  %9 = icmp ult i32 %8, 6
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = zext nneg i32 %8 to i64
  %12 = getelementptr inbounds [6 x i64], ptr @switch.table.WriteStreamImage, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i64 [ 1, %3 ], [ %13, %10 ]
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 49
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #23
  %21 = mul i64 %20, %15
  %22 = getelementptr inbounds %struct._CacheInfo, ptr %17, i64 0, i32 6
  %23 = load i64, ptr %22, align 8, !tbaa !96
  %24 = mul i64 %21, %23
  %25 = getelementptr inbounds %struct._CacheInfo, ptr %17, i64 0, i32 7
  %26 = load i64, ptr %25, align 8, !tbaa !97
  %27 = mul i64 %24, %26
  %28 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !114
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %53, label %31

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !38
  %34 = tail call ptr @RelinquishAlignedMemory(ptr noundef %33) #18
  %35 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %27) #21
  store ptr %35, ptr %32, align 8, !tbaa !38
  %36 = icmp eq ptr %35, null
  br i1 %36, label %102, label %37

37:                                               ; preds = %31
  %38 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %35, i32 noundef 0, i64 noundef %27) #18
  store ptr %0, ptr %28, align 8, !tbaa !114
  %39 = load ptr, ptr %5, align 8, !tbaa !109
  %40 = tail call ptr @CloneImageInfo(ptr noundef %39) #18
  %41 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !110
  %43 = tail call i32 @SetImageInfo(ptr noundef %40, i32 noundef 1, ptr noundef %42) #18
  %44 = getelementptr inbounds %struct._ImageInfo, ptr %40, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !115
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 7
  %49 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %45, ptr noundef nonnull %48) #18
  br label %50

50:                                               ; preds = %47, %37
  %51 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 8
  store i64 0, ptr %51, align 8, !tbaa !116
  %52 = tail call ptr @DestroyImageInfo(ptr noundef nonnull %40) #18
  br label %53

53:                                               ; preds = %50, %14
  %54 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa.struct !117
  %56 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 7, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa.struct !119
  %58 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 7, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa.struct !120
  %60 = icmp eq i64 %55, 0
  %61 = icmp eq i64 %57, 0
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !110
  tail call fastcc void @StreamImagePixels(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef %65) #22
  %66 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !45
  %68 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !38
  %70 = tail call i64 @WriteBlob(ptr noundef %67, i64 noundef %27, ptr noundef %69) #18
  %71 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 8
  %72 = load i64, ptr %71, align 8, !tbaa !116
  %73 = add nsw i64 %72, 1
  store i64 %73, ptr %71, align 8, !tbaa !116
  %74 = icmp eq i64 %70, 0
  %75 = select i1 %74, i64 0, i64 %2
  br label %102

76:                                               ; preds = %53
  %77 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 7, i32 3
  %78 = load i64, ptr %77, align 8, !tbaa.struct !121
  %79 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 8
  %80 = load i64, ptr %79, align 8, !tbaa !116
  %81 = icmp sge i64 %80, %78
  %82 = add i64 %78, %57
  %83 = icmp slt i64 %80, %82
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = add nsw i64 %80, 1
  store i64 %86, ptr %79, align 8, !tbaa !116
  br label %102

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !110
  tail call fastcc void @StreamImagePixels(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef %89) #22
  %90 = mul i64 %55, %21
  %91 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !45
  %93 = getelementptr inbounds %struct._StreamInfo, ptr %5, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !38
  %95 = mul i64 %59, %21
  %96 = getelementptr inbounds i8, ptr %94, i64 %95
  %97 = tail call i64 @WriteBlob(ptr noundef %92, i64 noundef %90, ptr noundef %96) #18
  %98 = load i64, ptr %79, align 8, !tbaa !116
  %99 = add nsw i64 %98, 1
  store i64 %99, ptr %79, align 8, !tbaa !116
  %100 = icmp eq i64 %97, 0
  %101 = select i1 %100, i64 0, i64 %2
  br label %102

102:                                              ; preds = %31, %87, %85, %63
  %103 = phi i64 [ %75, %63 ], [ %2, %85 ], [ %101, %87 ], [ 0, %31 ]
  ret i64 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WriteStream(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 52
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._ImageInfo, ptr %0, i64 0, i32 51
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2718, ptr noundef nonnull @.str.6, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call ptr @CloneImageInfo(ptr noundef nonnull %0) #18
  %12 = getelementptr inbounds %struct._ImageInfo, ptr %11, i64 0, i32 44
  store ptr %2, ptr %12, align 8, !tbaa !67
  %13 = tail call i32 @WriteImage(ptr noundef %11, ptr noundef %1) #18
  %14 = tail call ptr @DestroyImageInfo(ptr noundef %11) #18
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @WriteImage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @AcquireStreamPixels(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %4 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !123
  %5 = load i64, ptr %3, align 8, !tbaa !89
  %6 = tail call ptr @AcquireAlignedMemory(i64 noundef 1, i64 noundef %5) #21
  %7 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  store ptr %6, ptr %7, align 8, !tbaa !88
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  store i32 1, ptr %4, align 8, !tbaa !123
  %10 = load i64, ptr %3, align 8, !tbaa !89
  %11 = tail call ptr @MapBlob(i32 noundef -1, i32 noundef 2, i64 noundef 0, i64 noundef %10) #18
  store ptr %11, ptr %7, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 18
  %15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 661, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %14) #18
  br label %16

16:                                               ; preds = %2, %9, %13
  %17 = phi i32 [ 0, %13 ], [ 1, %9 ], [ 1, %2 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RelinquishStreamPixels(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !124 {
  %2 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !123
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  br i1 %4, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call ptr @RelinquishAlignedMemory(ptr noundef %6) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  %11 = load i64, ptr %10, align 8, !tbaa !89
  %12 = tail call i32 @UnmapBlob(ptr noundef %6, i64 noundef %11) #18
  br label %13

13:                                               ; preds = %9, %7
  %14 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 14
  %15 = getelementptr inbounds %struct._CacheInfo, ptr %0, i64 0, i32 9
  store i64 0, ptr %15, align 8, !tbaa !89
  store i32 0, ptr %2, align 8, !tbaa !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @MapBlob(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @UnmapBlob(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetBlobStreamHandler(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetPixelCacheStorageClass(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @GetPixelCacheColorspace(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DestroyPixelCacheNexus(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @SetImageInfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @StreamImagePixels(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !125 {
  %4 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 59
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %9 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1287, ptr noundef nonnull @.str.6, ptr noundef nonnull %8) #18
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #23
  %14 = tail call ptr @AcquireQuantumMemory(i64 noundef %13, i64 noundef 4) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = icmp sgt i64 %13, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %16
  %19 = load ptr, ptr %11, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  br label %24

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1292, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %22) #18
  br label %2126

24:                                               ; preds = %18, %73
  %25 = phi i64 [ 0, %18 ], [ %74, %73 ]
  %26 = getelementptr inbounds i8, ptr %19, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !126
  switch i8 %27, label %66 [
    i8 65, label %70
    i8 97, label %70
    i8 66, label %28
    i8 98, label %28
    i8 67, label %29
    i8 99, label %29
    i8 103, label %37
    i8 71, label %37
    i8 73, label %38
    i8 105, label %38
    i8 75, label %39
    i8 107, label %39
    i8 77, label %47
    i8 109, label %47
    i8 111, label %55
    i8 79, label %55
    i8 80, label %56
    i8 112, label %56
    i8 82, label %57
    i8 114, label %57
    i8 89, label %58
    i8 121, label %58
  ]

28:                                               ; preds = %24, %24
  br label %70

29:                                               ; preds = %24, %24
  %30 = getelementptr inbounds i32, ptr %14, i64 %25
  store i32 6, ptr %30, align 4, !tbaa !34
  %31 = load i32, ptr %20, align 4, !tbaa !87
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %73, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #18
  %35 = load ptr, ptr %11, align 8, !tbaa !43
  %36 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1319, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %35) #18
  br label %2126

37:                                               ; preds = %24, %24
  br label %70

38:                                               ; preds = %24, %24
  br label %70

39:                                               ; preds = %24, %24
  %40 = getelementptr inbounds i32, ptr %14, i64 %25
  store i32 2, ptr %40, align 4, !tbaa !34
  %41 = load i32, ptr %20, align 4, !tbaa !87
  %42 = icmp eq i32 %41, 12
  br i1 %42, label %73, label %43

43:                                               ; preds = %39
  %44 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #18
  %45 = load ptr, ptr %11, align 8, !tbaa !43
  %46 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1342, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %45) #18
  br label %2126

47:                                               ; preds = %24, %24
  %48 = getelementptr inbounds i32, ptr %14, i64 %25
  store i32 12, ptr %48, align 4, !tbaa !34
  %49 = load i32, ptr %20, align 4, !tbaa !87
  %50 = icmp eq i32 %49, 12
  br i1 %50, label %73, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #18
  %53 = load ptr, ptr %11, align 8, !tbaa !43
  %54 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1353, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %53) #18
  br label %2126

55:                                               ; preds = %24, %24
  br label %70

56:                                               ; preds = %24, %24
  br label %70

57:                                               ; preds = %24, %24
  br label %70

58:                                               ; preds = %24, %24
  %59 = getelementptr inbounds i32, ptr %14, i64 %25
  store i32 19, ptr %59, align 4, !tbaa !34
  %60 = load i32, ptr %20, align 4, !tbaa !87
  %61 = icmp eq i32 %60, 12
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #18
  %64 = load ptr, ptr %11, align 8, !tbaa !43
  %65 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1382, i32 noundef 465, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %64) #18
  br label %2126

66:                                               ; preds = %24
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #18
  %68 = load ptr, ptr %11, align 8, !tbaa !43
  %69 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1389, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef %68) #18
  br label %2126

70:                                               ; preds = %24, %24, %57, %56, %55, %38, %37, %28
  %71 = phi i32 [ 3, %28 ], [ 9, %37 ], [ 11, %38 ], [ 13, %55 ], [ 0, %56 ], [ 14, %57 ], [ 1, %24 ], [ 1, %24 ]
  %72 = getelementptr inbounds i32, ptr %14, i64 %25
  store i32 %71, ptr %72, align 4, !tbaa !34
  br label %73

73:                                               ; preds = %70, %29, %39, %47, %58
  %74 = add nuw nsw i64 %25, 1
  %75 = icmp eq i64 %74, %13
  br i1 %75, label %76, label %24, !llvm.loop !127

76:                                               ; preds = %73, %16
  %77 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !47
  %79 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 5
  %80 = load i32, ptr %79, align 8, !tbaa !44
  switch i32 %80, label %2119 [
    i32 1, label %81
    i32 2, label %350
    i32 3, label %733
    i32 4, label %1081
    i32 5, label %1346
    i32 6, label %1633
    i32 7, label %1876
  ]

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !38
  %84 = load ptr, ptr %11, align 8, !tbaa !43
  %85 = tail call i32 @LocaleCompare(ptr noundef %84, ptr noundef nonnull @.str.11) #18
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %81
  %88 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %89 = icmp eq ptr %88, null
  br i1 %89, label %2123, label %90

90:                                               ; preds = %87
  %91 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %2123

93:                                               ; preds = %90, %93
  %94 = phi ptr [ %107, %93 ], [ %83, %90 ]
  %95 = phi i64 [ %109, %93 ], [ 0, %90 ]
  %96 = phi ptr [ %108, %93 ], [ %88, %90 ]
  %97 = load i16, ptr %96, align 2, !tbaa !129
  %98 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %97) #22
  %99 = getelementptr inbounds i8, ptr %94, i64 1
  store i8 %98, ptr %94, align 1, !tbaa !126
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 1
  %101 = load i16, ptr %100, align 2, !tbaa !130
  %102 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %101) #22
  %103 = getelementptr inbounds i8, ptr %94, i64 2
  store i8 %102, ptr %99, align 1, !tbaa !126
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 0, i32 2
  %105 = load i16, ptr %104, align 2, !tbaa !131
  %106 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %105) #22
  %107 = getelementptr inbounds i8, ptr %94, i64 3
  store i8 %106, ptr %103, align 1, !tbaa !126
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %96, i64 1
  %109 = add nuw nsw i64 %95, 1
  %110 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %93, label %2123, !llvm.loop !132

112:                                              ; preds = %81
  %113 = load ptr, ptr %11, align 8, !tbaa !43
  %114 = tail call i32 @LocaleCompare(ptr noundef %113, ptr noundef nonnull @.str.12) #18
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %112
  %117 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %118 = icmp eq ptr %117, null
  br i1 %118, label %2123, label %119

119:                                              ; preds = %116
  %120 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %2123

122:                                              ; preds = %119, %122
  %123 = phi ptr [ %141, %122 ], [ %83, %119 ]
  %124 = phi i64 [ %143, %122 ], [ 0, %119 ]
  %125 = phi ptr [ %142, %122 ], [ %117, %119 ]
  %126 = load i16, ptr %125, align 2, !tbaa !129
  %127 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %126) #22
  %128 = getelementptr inbounds i8, ptr %123, i64 1
  store i8 %127, ptr %123, align 1, !tbaa !126
  %129 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 1
  %130 = load i16, ptr %129, align 2, !tbaa !130
  %131 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %130) #22
  %132 = getelementptr inbounds i8, ptr %123, i64 2
  store i8 %131, ptr %128, align 1, !tbaa !126
  %133 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 2
  %134 = load i16, ptr %133, align 2, !tbaa !131
  %135 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %134) #22
  %136 = getelementptr inbounds i8, ptr %123, i64 3
  store i8 %135, ptr %132, align 1, !tbaa !126
  %137 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 0, i32 3
  %138 = load i16, ptr %137, align 2, !tbaa !133
  %139 = xor i16 %138, -1
  %140 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %139) #22
  %141 = getelementptr inbounds i8, ptr %123, i64 4
  store i8 %140, ptr %136, align 1, !tbaa !126
  %142 = getelementptr inbounds %struct._PixelPacket, ptr %125, i64 1
  %143 = add nuw nsw i64 %124, 1
  %144 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %122, label %2123, !llvm.loop !134

146:                                              ; preds = %112
  %147 = load ptr, ptr %11, align 8, !tbaa !43
  %148 = tail call i32 @LocaleCompare(ptr noundef %147, ptr noundef nonnull @.str.13) #18
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %146
  %151 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %152 = icmp eq ptr %151, null
  br i1 %152, label %2123, label %153

153:                                              ; preds = %150
  %154 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %2123

156:                                              ; preds = %153
  %157 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext 0) #22
  br label %158

158:                                              ; preds = %156, %158
  %159 = phi ptr [ %83, %156 ], [ %173, %158 ]
  %160 = phi i64 [ 0, %156 ], [ %175, %158 ]
  %161 = phi ptr [ %151, %156 ], [ %174, %158 ]
  %162 = load i16, ptr %161, align 2, !tbaa !129
  %163 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %162) #22
  %164 = getelementptr inbounds i8, ptr %159, i64 1
  store i8 %163, ptr %159, align 1, !tbaa !126
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %161, i64 0, i32 1
  %166 = load i16, ptr %165, align 2, !tbaa !130
  %167 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %166) #22
  %168 = getelementptr inbounds i8, ptr %159, i64 2
  store i8 %167, ptr %164, align 1, !tbaa !126
  %169 = getelementptr inbounds %struct._PixelPacket, ptr %161, i64 0, i32 2
  %170 = load i16, ptr %169, align 2, !tbaa !131
  %171 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %170) #22
  %172 = getelementptr inbounds i8, ptr %159, i64 3
  store i8 %171, ptr %168, align 1, !tbaa !126
  %173 = getelementptr inbounds i8, ptr %159, i64 4
  store i8 %157, ptr %172, align 1, !tbaa !126
  %174 = getelementptr inbounds %struct._PixelPacket, ptr %161, i64 1
  %175 = add nuw nsw i64 %160, 1
  %176 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %158, label %2123, !llvm.loop !135

178:                                              ; preds = %146
  %179 = load ptr, ptr %11, align 8, !tbaa !43
  %180 = tail call i32 @LocaleCompare(ptr noundef %179, ptr noundef nonnull @.str.14) #18
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %200

182:                                              ; preds = %178
  %183 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %184 = icmp eq ptr %183, null
  br i1 %184, label %2123, label %185

185:                                              ; preds = %182
  %186 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %2123

188:                                              ; preds = %185, %188
  %189 = phi ptr [ %195, %188 ], [ %83, %185 ]
  %190 = phi i64 [ %197, %188 ], [ 0, %185 ]
  %191 = phi ptr [ %196, %188 ], [ %183, %185 ]
  %192 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %191) #24
  %193 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %192) #22
  %194 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %193) #22
  %195 = getelementptr inbounds i8, ptr %189, i64 1
  store i8 %194, ptr %189, align 1, !tbaa !126
  %196 = getelementptr inbounds %struct._PixelPacket, ptr %191, i64 1
  %197 = add nuw nsw i64 %190, 1
  %198 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %199 = icmp slt i64 %197, %198
  br i1 %199, label %188, label %2123, !llvm.loop !136

200:                                              ; preds = %178
  %201 = load ptr, ptr %11, align 8, !tbaa !43
  %202 = tail call i32 @LocaleCompare(ptr noundef %201, ptr noundef nonnull @.str.4) #18
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %229

204:                                              ; preds = %200
  %205 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %206 = icmp eq ptr %205, null
  br i1 %206, label %2123, label %207

207:                                              ; preds = %204
  %208 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %2123

210:                                              ; preds = %207, %210
  %211 = phi ptr [ %224, %210 ], [ %83, %207 ]
  %212 = phi i64 [ %226, %210 ], [ 0, %207 ]
  %213 = phi ptr [ %225, %210 ], [ %205, %207 ]
  %214 = getelementptr inbounds %struct._PixelPacket, ptr %213, i64 0, i32 2
  %215 = load i16, ptr %214, align 2, !tbaa !131
  %216 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %215) #22
  %217 = getelementptr inbounds i8, ptr %211, i64 1
  store i8 %216, ptr %211, align 1, !tbaa !126
  %218 = getelementptr inbounds %struct._PixelPacket, ptr %213, i64 0, i32 1
  %219 = load i16, ptr %218, align 2, !tbaa !130
  %220 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %219) #22
  %221 = getelementptr inbounds i8, ptr %211, i64 2
  store i8 %220, ptr %217, align 1, !tbaa !126
  %222 = load i16, ptr %213, align 2, !tbaa !129
  %223 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %222) #22
  %224 = getelementptr inbounds i8, ptr %211, i64 3
  store i8 %223, ptr %221, align 1, !tbaa !126
  %225 = getelementptr inbounds %struct._PixelPacket, ptr %213, i64 1
  %226 = add nuw nsw i64 %212, 1
  %227 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %210, label %2123, !llvm.loop !137

229:                                              ; preds = %200
  %230 = load ptr, ptr %11, align 8, !tbaa !43
  %231 = tail call i32 @LocaleCompare(ptr noundef %230, ptr noundef nonnull @.str.15) #18
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %263

233:                                              ; preds = %229
  %234 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %235 = icmp eq ptr %234, null
  br i1 %235, label %2123, label %236

236:                                              ; preds = %233
  %237 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %2123

239:                                              ; preds = %236, %239
  %240 = phi ptr [ %258, %239 ], [ %83, %236 ]
  %241 = phi i64 [ %260, %239 ], [ 0, %236 ]
  %242 = phi ptr [ %259, %239 ], [ %234, %236 ]
  %243 = getelementptr inbounds %struct._PixelPacket, ptr %242, i64 0, i32 2
  %244 = load i16, ptr %243, align 2, !tbaa !131
  %245 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %244) #22
  %246 = getelementptr inbounds i8, ptr %240, i64 1
  store i8 %245, ptr %240, align 1, !tbaa !126
  %247 = getelementptr inbounds %struct._PixelPacket, ptr %242, i64 0, i32 1
  %248 = load i16, ptr %247, align 2, !tbaa !130
  %249 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %248) #22
  %250 = getelementptr inbounds i8, ptr %240, i64 2
  store i8 %249, ptr %246, align 1, !tbaa !126
  %251 = load i16, ptr %242, align 2, !tbaa !129
  %252 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %251) #22
  %253 = getelementptr inbounds i8, ptr %240, i64 3
  store i8 %252, ptr %250, align 1, !tbaa !126
  %254 = getelementptr inbounds %struct._PixelPacket, ptr %242, i64 0, i32 3
  %255 = load i16, ptr %254, align 2, !tbaa !133
  %256 = xor i16 %255, -1
  %257 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %256) #22
  %258 = getelementptr inbounds i8, ptr %240, i64 4
  store i8 %257, ptr %253, align 1, !tbaa !126
  %259 = getelementptr inbounds %struct._PixelPacket, ptr %242, i64 1
  %260 = add nuw nsw i64 %241, 1
  %261 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %262 = icmp slt i64 %260, %261
  br i1 %262, label %239, label %2123, !llvm.loop !138

263:                                              ; preds = %229
  %264 = load ptr, ptr %11, align 8, !tbaa !43
  %265 = tail call i32 @LocaleCompare(ptr noundef %264, ptr noundef nonnull @.str.16) #18
  %266 = icmp eq i32 %265, 0
  %267 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %268 = icmp eq ptr %267, null
  br i1 %266, label %269, label %295

269:                                              ; preds = %263
  br i1 %268, label %2123, label %270

270:                                              ; preds = %269
  %271 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %272 = icmp sgt i64 %271, 0
  br i1 %272, label %273, label %2123

273:                                              ; preds = %270
  %274 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext 0) #22
  br label %275

275:                                              ; preds = %273, %275
  %276 = phi ptr [ %83, %273 ], [ %290, %275 ]
  %277 = phi i64 [ 0, %273 ], [ %292, %275 ]
  %278 = phi ptr [ %267, %273 ], [ %291, %275 ]
  %279 = getelementptr inbounds %struct._PixelPacket, ptr %278, i64 0, i32 2
  %280 = load i16, ptr %279, align 2, !tbaa !131
  %281 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %280) #22
  %282 = getelementptr inbounds i8, ptr %276, i64 1
  store i8 %281, ptr %276, align 1, !tbaa !126
  %283 = getelementptr inbounds %struct._PixelPacket, ptr %278, i64 0, i32 1
  %284 = load i16, ptr %283, align 2, !tbaa !130
  %285 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %284) #22
  %286 = getelementptr inbounds i8, ptr %276, i64 2
  store i8 %285, ptr %282, align 1, !tbaa !126
  %287 = load i16, ptr %278, align 2, !tbaa !129
  %288 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %287) #22
  %289 = getelementptr inbounds i8, ptr %276, i64 3
  store i8 %288, ptr %286, align 1, !tbaa !126
  %290 = getelementptr inbounds i8, ptr %276, i64 4
  store i8 %274, ptr %289, align 1, !tbaa !126
  %291 = getelementptr inbounds %struct._PixelPacket, ptr %278, i64 1
  %292 = add nuw nsw i64 %277, 1
  %293 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %294 = icmp slt i64 %292, %293
  br i1 %294, label %275, label %2123, !llvm.loop !139

295:                                              ; preds = %263
  br i1 %268, label %2123, label %296

296:                                              ; preds = %295
  %297 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #18
  %298 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %299 = icmp sgt i64 %298, 0
  br i1 %299, label %300, label %2123

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %302 = icmp eq ptr %297, null
  br label %303

303:                                              ; preds = %300, %344
  %304 = phi ptr [ %83, %300 ], [ %345, %344 ]
  %305 = phi i64 [ 0, %300 ], [ %347, %344 ]
  %306 = phi ptr [ %267, %300 ], [ %346, %344 ]
  br i1 %17, label %307, label %344

307:                                              ; preds = %303
  %308 = getelementptr inbounds i16, ptr %297, i64 %305
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 0, i32 3
  %310 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 0, i32 1
  %311 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 0, i32 2
  br label %312

312:                                              ; preds = %307, %340
  %313 = phi ptr [ %304, %307 ], [ %341, %340 ]
  %314 = phi i64 [ 0, %307 ], [ %342, %340 ]
  store i8 0, ptr %313, align 1, !tbaa !126
  %315 = getelementptr inbounds i32, ptr %14, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !34
  switch i32 %316, label %340 [
    i32 14, label %317
    i32 6, label %317
    i32 9, label %319
    i32 12, label %319
    i32 3, label %321
    i32 19, label %321
    i32 1, label %323
    i32 13, label %326
    i32 2, label %328
    i32 11, label %334
  ]

317:                                              ; preds = %312, %312
  %318 = load i16, ptr %311, align 2, !tbaa !131
  br label %337

319:                                              ; preds = %312, %312
  %320 = load i16, ptr %310, align 2, !tbaa !130
  br label %337

321:                                              ; preds = %312, %312
  %322 = load i16, ptr %306, align 2, !tbaa !129
  br label %337

323:                                              ; preds = %312
  %324 = load i16, ptr %309, align 2, !tbaa !133
  %325 = xor i16 %324, -1
  br label %337

326:                                              ; preds = %312
  %327 = load i16, ptr %309, align 2, !tbaa !133
  br label %337

328:                                              ; preds = %312
  %329 = load i32, ptr %301, align 4, !tbaa !87
  %330 = icmp eq i32 %329, 12
  br i1 %330, label %331, label %340

331:                                              ; preds = %328
  br i1 %302, label %337, label %332

332:                                              ; preds = %331
  %333 = load i16, ptr %308, align 2, !tbaa !140
  br label %337

334:                                              ; preds = %312
  %335 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %306) #24
  %336 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %335) #22
  br label %337

337:                                              ; preds = %332, %331, %317, %319, %321, %323, %326, %334
  %338 = phi i16 [ %336, %334 ], [ %327, %326 ], [ %325, %323 ], [ %322, %321 ], [ %320, %319 ], [ %318, %317 ], [ %333, %332 ], [ 0, %331 ]
  %339 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %338) #22
  store i8 %339, ptr %313, align 1, !tbaa !126
  br label %340

340:                                              ; preds = %337, %312, %328
  %341 = getelementptr inbounds i8, ptr %313, i64 1
  %342 = add nuw nsw i64 %314, 1
  %343 = icmp eq i64 %342, %13
  br i1 %343, label %344, label %312, !llvm.loop !141

344:                                              ; preds = %340, %303
  %345 = phi ptr [ %304, %303 ], [ %341, %340 ]
  %346 = getelementptr inbounds %struct._PixelPacket, ptr %306, i64 1
  %347 = add nuw nsw i64 %305, 1
  %348 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %349 = icmp slt i64 %347, %348
  br i1 %349, label %303, label %2123, !llvm.loop !142

350:                                              ; preds = %76
  %351 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %352 = load ptr, ptr %351, align 8, !tbaa !38
  %353 = load ptr, ptr %11, align 8, !tbaa !43
  %354 = tail call i32 @LocaleCompare(ptr noundef %353, ptr noundef nonnull @.str.11) #18
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %396

356:                                              ; preds = %350
  %357 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %358 = icmp eq ptr %357, null
  br i1 %358, label %2123, label %359

359:                                              ; preds = %356
  %360 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %361 = icmp sgt i64 %360, 0
  br i1 %361, label %362, label %2123

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %364 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %365

365:                                              ; preds = %362, %365
  %366 = phi ptr [ %352, %362 ], [ %391, %365 ]
  %367 = phi i64 [ 0, %362 ], [ %393, %365 ]
  %368 = phi ptr [ %357, %362 ], [ %392, %365 ]
  %369 = load i16, ptr %368, align 2, !tbaa !129
  %370 = uitofp i16 %369 to double
  %371 = fmul double %370, 0x3EF0001000100010
  %372 = load double, ptr %363, align 8, !tbaa !143
  %373 = load double, ptr %364, align 8, !tbaa !146
  %374 = tail call double @llvm.fmuladd.f64(double %371, double %372, double %373)
  %375 = getelementptr inbounds double, ptr %366, i64 1
  store double %374, ptr %366, align 8, !tbaa !147
  %376 = getelementptr inbounds %struct._PixelPacket, ptr %368, i64 0, i32 1
  %377 = load i16, ptr %376, align 2, !tbaa !130
  %378 = uitofp i16 %377 to double
  %379 = fmul double %378, 0x3EF0001000100010
  %380 = load double, ptr %363, align 8, !tbaa !143
  %381 = load double, ptr %364, align 8, !tbaa !146
  %382 = tail call double @llvm.fmuladd.f64(double %379, double %380, double %381)
  %383 = getelementptr inbounds double, ptr %366, i64 2
  store double %382, ptr %375, align 8, !tbaa !147
  %384 = getelementptr inbounds %struct._PixelPacket, ptr %368, i64 0, i32 2
  %385 = load i16, ptr %384, align 2, !tbaa !131
  %386 = uitofp i16 %385 to double
  %387 = fmul double %386, 0x3EF0001000100010
  %388 = load double, ptr %363, align 8, !tbaa !143
  %389 = load double, ptr %364, align 8, !tbaa !146
  %390 = tail call double @llvm.fmuladd.f64(double %387, double %388, double %389)
  %391 = getelementptr inbounds double, ptr %366, i64 3
  store double %390, ptr %383, align 8, !tbaa !147
  %392 = getelementptr inbounds %struct._PixelPacket, ptr %368, i64 1
  %393 = add nuw nsw i64 %367, 1
  %394 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %395 = icmp slt i64 %393, %394
  br i1 %395, label %365, label %2123, !llvm.loop !148

396:                                              ; preds = %350
  %397 = load ptr, ptr %11, align 8, !tbaa !43
  %398 = tail call i32 @LocaleCompare(ptr noundef %397, ptr noundef nonnull @.str.12) #18
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %449

400:                                              ; preds = %396
  %401 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %402 = icmp eq ptr %401, null
  br i1 %402, label %2123, label %403

403:                                              ; preds = %400
  %404 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %405 = icmp sgt i64 %404, 0
  br i1 %405, label %406, label %2123

406:                                              ; preds = %403
  %407 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %408 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %409

409:                                              ; preds = %406, %409
  %410 = phi ptr [ %352, %406 ], [ %444, %409 ]
  %411 = phi i64 [ 0, %406 ], [ %446, %409 ]
  %412 = phi ptr [ %401, %406 ], [ %445, %409 ]
  %413 = load i16, ptr %412, align 2, !tbaa !129
  %414 = uitofp i16 %413 to double
  %415 = fmul double %414, 0x3EF0001000100010
  %416 = load double, ptr %407, align 8, !tbaa !143
  %417 = load double, ptr %408, align 8, !tbaa !146
  %418 = tail call double @llvm.fmuladd.f64(double %415, double %416, double %417)
  %419 = getelementptr inbounds double, ptr %410, i64 1
  store double %418, ptr %410, align 8, !tbaa !147
  %420 = getelementptr inbounds %struct._PixelPacket, ptr %412, i64 0, i32 1
  %421 = load i16, ptr %420, align 2, !tbaa !130
  %422 = uitofp i16 %421 to double
  %423 = fmul double %422, 0x3EF0001000100010
  %424 = load double, ptr %407, align 8, !tbaa !143
  %425 = load double, ptr %408, align 8, !tbaa !146
  %426 = tail call double @llvm.fmuladd.f64(double %423, double %424, double %425)
  %427 = getelementptr inbounds double, ptr %410, i64 2
  store double %426, ptr %419, align 8, !tbaa !147
  %428 = getelementptr inbounds %struct._PixelPacket, ptr %412, i64 0, i32 2
  %429 = load i16, ptr %428, align 2, !tbaa !131
  %430 = uitofp i16 %429 to double
  %431 = fmul double %430, 0x3EF0001000100010
  %432 = load double, ptr %407, align 8, !tbaa !143
  %433 = load double, ptr %408, align 8, !tbaa !146
  %434 = tail call double @llvm.fmuladd.f64(double %431, double %432, double %433)
  %435 = getelementptr inbounds double, ptr %410, i64 3
  store double %434, ptr %427, align 8, !tbaa !147
  %436 = getelementptr inbounds %struct._PixelPacket, ptr %412, i64 0, i32 3
  %437 = load i16, ptr %436, align 2, !tbaa !133
  %438 = xor i16 %437, -1
  %439 = uitofp i16 %438 to double
  %440 = fmul double %439, 0x3EF0001000100010
  %441 = load double, ptr %407, align 8, !tbaa !143
  %442 = load double, ptr %408, align 8, !tbaa !146
  %443 = tail call double @llvm.fmuladd.f64(double %440, double %441, double %442)
  %444 = getelementptr inbounds double, ptr %410, i64 4
  store double %443, ptr %435, align 8, !tbaa !147
  %445 = getelementptr inbounds %struct._PixelPacket, ptr %412, i64 1
  %446 = add nuw nsw i64 %411, 1
  %447 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %448 = icmp slt i64 %446, %447
  br i1 %448, label %409, label %2123, !llvm.loop !149

449:                                              ; preds = %396
  %450 = load ptr, ptr %11, align 8, !tbaa !43
  %451 = tail call i32 @LocaleCompare(ptr noundef %450, ptr noundef nonnull @.str.13) #18
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %494

453:                                              ; preds = %449
  %454 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %455 = icmp eq ptr %454, null
  br i1 %455, label %2123, label %456

456:                                              ; preds = %453
  %457 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %458 = icmp sgt i64 %457, 0
  br i1 %458, label %459, label %2123

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %461 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %462

462:                                              ; preds = %459, %462
  %463 = phi ptr [ %352, %459 ], [ %489, %462 ]
  %464 = phi i64 [ 0, %459 ], [ %491, %462 ]
  %465 = phi ptr [ %454, %459 ], [ %490, %462 ]
  %466 = load i16, ptr %465, align 2, !tbaa !129
  %467 = uitofp i16 %466 to double
  %468 = fmul double %467, 0x3EF0001000100010
  %469 = load double, ptr %460, align 8, !tbaa !143
  %470 = load double, ptr %461, align 8, !tbaa !146
  %471 = tail call double @llvm.fmuladd.f64(double %468, double %469, double %470)
  %472 = getelementptr inbounds double, ptr %463, i64 1
  store double %471, ptr %463, align 8, !tbaa !147
  %473 = getelementptr inbounds %struct._PixelPacket, ptr %465, i64 0, i32 1
  %474 = load i16, ptr %473, align 2, !tbaa !130
  %475 = uitofp i16 %474 to double
  %476 = fmul double %475, 0x3EF0001000100010
  %477 = load double, ptr %460, align 8, !tbaa !143
  %478 = load double, ptr %461, align 8, !tbaa !146
  %479 = tail call double @llvm.fmuladd.f64(double %476, double %477, double %478)
  %480 = getelementptr inbounds double, ptr %463, i64 2
  store double %479, ptr %472, align 8, !tbaa !147
  %481 = getelementptr inbounds %struct._PixelPacket, ptr %465, i64 0, i32 2
  %482 = load i16, ptr %481, align 2, !tbaa !131
  %483 = uitofp i16 %482 to double
  %484 = fmul double %483, 0x3EF0001000100010
  %485 = load double, ptr %460, align 8, !tbaa !143
  %486 = load double, ptr %461, align 8, !tbaa !146
  %487 = tail call double @llvm.fmuladd.f64(double %484, double %485, double %486)
  %488 = getelementptr inbounds double, ptr %463, i64 3
  store double %487, ptr %480, align 8, !tbaa !147
  %489 = getelementptr inbounds double, ptr %463, i64 4
  store double 0.000000e+00, ptr %488, align 8, !tbaa !147
  %490 = getelementptr inbounds %struct._PixelPacket, ptr %465, i64 1
  %491 = add nuw nsw i64 %464, 1
  %492 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %493 = icmp slt i64 %491, %492
  br i1 %493, label %462, label %2123, !llvm.loop !150

494:                                              ; preds = %449
  %495 = load ptr, ptr %11, align 8, !tbaa !43
  %496 = tail call i32 @LocaleCompare(ptr noundef %495, ptr noundef nonnull @.str.14) #18
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %522

498:                                              ; preds = %494
  %499 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %500 = icmp eq ptr %499, null
  br i1 %500, label %2123, label %501

501:                                              ; preds = %498
  %502 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %503 = icmp sgt i64 %502, 0
  br i1 %503, label %504, label %2123

504:                                              ; preds = %501
  %505 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %506 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %507

507:                                              ; preds = %504, %507
  %508 = phi ptr [ %352, %504 ], [ %517, %507 ]
  %509 = phi i64 [ 0, %504 ], [ %519, %507 ]
  %510 = phi ptr [ %499, %504 ], [ %518, %507 ]
  %511 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %510) #24
  %512 = fpext float %511 to double
  %513 = fmul double %512, 0x3EF0001000100010
  %514 = load double, ptr %505, align 8, !tbaa !143
  %515 = load double, ptr %506, align 8, !tbaa !146
  %516 = tail call double @llvm.fmuladd.f64(double %513, double %514, double %515)
  %517 = getelementptr inbounds double, ptr %508, i64 1
  store double %516, ptr %508, align 8, !tbaa !147
  %518 = getelementptr inbounds %struct._PixelPacket, ptr %510, i64 1
  %519 = add nuw nsw i64 %509, 1
  %520 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %521 = icmp slt i64 %519, %520
  br i1 %521, label %507, label %2123, !llvm.loop !151

522:                                              ; preds = %494
  %523 = load ptr, ptr %11, align 8, !tbaa !43
  %524 = tail call i32 @LocaleCompare(ptr noundef %523, ptr noundef nonnull @.str.4) #18
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %566

526:                                              ; preds = %522
  %527 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %528 = icmp eq ptr %527, null
  br i1 %528, label %2123, label %529

529:                                              ; preds = %526
  %530 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %531 = icmp sgt i64 %530, 0
  br i1 %531, label %532, label %2123

532:                                              ; preds = %529
  %533 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %534 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %535

535:                                              ; preds = %532, %535
  %536 = phi ptr [ %352, %532 ], [ %561, %535 ]
  %537 = phi i64 [ 0, %532 ], [ %563, %535 ]
  %538 = phi ptr [ %527, %532 ], [ %562, %535 ]
  %539 = getelementptr inbounds %struct._PixelPacket, ptr %538, i64 0, i32 2
  %540 = load i16, ptr %539, align 2, !tbaa !131
  %541 = uitofp i16 %540 to double
  %542 = fmul double %541, 0x3EF0001000100010
  %543 = load double, ptr %533, align 8, !tbaa !143
  %544 = load double, ptr %534, align 8, !tbaa !146
  %545 = tail call double @llvm.fmuladd.f64(double %542, double %543, double %544)
  %546 = getelementptr inbounds double, ptr %536, i64 1
  store double %545, ptr %536, align 8, !tbaa !147
  %547 = getelementptr inbounds %struct._PixelPacket, ptr %538, i64 0, i32 1
  %548 = load i16, ptr %547, align 2, !tbaa !130
  %549 = uitofp i16 %548 to double
  %550 = fmul double %549, 0x3EF0001000100010
  %551 = load double, ptr %533, align 8, !tbaa !143
  %552 = load double, ptr %534, align 8, !tbaa !146
  %553 = tail call double @llvm.fmuladd.f64(double %550, double %551, double %552)
  %554 = getelementptr inbounds double, ptr %536, i64 2
  store double %553, ptr %546, align 8, !tbaa !147
  %555 = load i16, ptr %538, align 2, !tbaa !129
  %556 = uitofp i16 %555 to double
  %557 = fmul double %556, 0x3EF0001000100010
  %558 = load double, ptr %533, align 8, !tbaa !143
  %559 = load double, ptr %534, align 8, !tbaa !146
  %560 = tail call double @llvm.fmuladd.f64(double %557, double %558, double %559)
  %561 = getelementptr inbounds double, ptr %536, i64 3
  store double %560, ptr %554, align 8, !tbaa !147
  %562 = getelementptr inbounds %struct._PixelPacket, ptr %538, i64 1
  %563 = add nuw nsw i64 %537, 1
  %564 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %565 = icmp slt i64 %563, %564
  br i1 %565, label %535, label %2123, !llvm.loop !152

566:                                              ; preds = %522
  %567 = load ptr, ptr %11, align 8, !tbaa !43
  %568 = tail call i32 @LocaleCompare(ptr noundef %567, ptr noundef nonnull @.str.15) #18
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %619

570:                                              ; preds = %566
  %571 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %572 = icmp eq ptr %571, null
  br i1 %572, label %2123, label %573

573:                                              ; preds = %570
  %574 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %575 = icmp sgt i64 %574, 0
  br i1 %575, label %576, label %2123

576:                                              ; preds = %573
  %577 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %578 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %579

579:                                              ; preds = %576, %579
  %580 = phi ptr [ %352, %576 ], [ %614, %579 ]
  %581 = phi i64 [ 0, %576 ], [ %616, %579 ]
  %582 = phi ptr [ %571, %576 ], [ %615, %579 ]
  %583 = getelementptr inbounds %struct._PixelPacket, ptr %582, i64 0, i32 2
  %584 = load i16, ptr %583, align 2, !tbaa !131
  %585 = uitofp i16 %584 to double
  %586 = fmul double %585, 0x3EF0001000100010
  %587 = load double, ptr %577, align 8, !tbaa !143
  %588 = load double, ptr %578, align 8, !tbaa !146
  %589 = tail call double @llvm.fmuladd.f64(double %586, double %587, double %588)
  %590 = getelementptr inbounds double, ptr %580, i64 1
  store double %589, ptr %580, align 8, !tbaa !147
  %591 = getelementptr inbounds %struct._PixelPacket, ptr %582, i64 0, i32 1
  %592 = load i16, ptr %591, align 2, !tbaa !130
  %593 = uitofp i16 %592 to double
  %594 = fmul double %593, 0x3EF0001000100010
  %595 = load double, ptr %577, align 8, !tbaa !143
  %596 = load double, ptr %578, align 8, !tbaa !146
  %597 = tail call double @llvm.fmuladd.f64(double %594, double %595, double %596)
  %598 = getelementptr inbounds double, ptr %580, i64 2
  store double %597, ptr %590, align 8, !tbaa !147
  %599 = load i16, ptr %582, align 2, !tbaa !129
  %600 = uitofp i16 %599 to double
  %601 = fmul double %600, 0x3EF0001000100010
  %602 = load double, ptr %577, align 8, !tbaa !143
  %603 = load double, ptr %578, align 8, !tbaa !146
  %604 = tail call double @llvm.fmuladd.f64(double %601, double %602, double %603)
  %605 = getelementptr inbounds double, ptr %580, i64 3
  store double %604, ptr %598, align 8, !tbaa !147
  %606 = getelementptr inbounds %struct._PixelPacket, ptr %582, i64 0, i32 3
  %607 = load i16, ptr %606, align 2, !tbaa !133
  %608 = xor i16 %607, -1
  %609 = uitofp i16 %608 to double
  %610 = fmul double %609, 0x3EF0001000100010
  %611 = load double, ptr %577, align 8, !tbaa !143
  %612 = load double, ptr %578, align 8, !tbaa !146
  %613 = tail call double @llvm.fmuladd.f64(double %610, double %611, double %612)
  %614 = getelementptr inbounds double, ptr %580, i64 4
  store double %613, ptr %605, align 8, !tbaa !147
  %615 = getelementptr inbounds %struct._PixelPacket, ptr %582, i64 1
  %616 = add nuw nsw i64 %581, 1
  %617 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %618 = icmp slt i64 %616, %617
  br i1 %618, label %579, label %2123, !llvm.loop !153

619:                                              ; preds = %566
  %620 = load ptr, ptr %11, align 8, !tbaa !43
  %621 = tail call i32 @LocaleCompare(ptr noundef %620, ptr noundef nonnull @.str.16) #18
  %622 = icmp eq i32 %621, 0
  %623 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %624 = icmp eq ptr %623, null
  br i1 %622, label %625, label %664

625:                                              ; preds = %619
  br i1 %624, label %2123, label %626

626:                                              ; preds = %625
  %627 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %628 = icmp sgt i64 %627, 0
  br i1 %628, label %629, label %2123

629:                                              ; preds = %626
  %630 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %631 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %632

632:                                              ; preds = %629, %632
  %633 = phi ptr [ %352, %629 ], [ %659, %632 ]
  %634 = phi i64 [ 0, %629 ], [ %661, %632 ]
  %635 = phi ptr [ %623, %629 ], [ %660, %632 ]
  %636 = getelementptr inbounds %struct._PixelPacket, ptr %635, i64 0, i32 2
  %637 = load i16, ptr %636, align 2, !tbaa !131
  %638 = uitofp i16 %637 to double
  %639 = fmul double %638, 0x3EF0001000100010
  %640 = load double, ptr %630, align 8, !tbaa !143
  %641 = load double, ptr %631, align 8, !tbaa !146
  %642 = tail call double @llvm.fmuladd.f64(double %639, double %640, double %641)
  %643 = getelementptr inbounds double, ptr %633, i64 1
  store double %642, ptr %633, align 8, !tbaa !147
  %644 = getelementptr inbounds %struct._PixelPacket, ptr %635, i64 0, i32 1
  %645 = load i16, ptr %644, align 2, !tbaa !130
  %646 = uitofp i16 %645 to double
  %647 = fmul double %646, 0x3EF0001000100010
  %648 = load double, ptr %630, align 8, !tbaa !143
  %649 = load double, ptr %631, align 8, !tbaa !146
  %650 = tail call double @llvm.fmuladd.f64(double %647, double %648, double %649)
  %651 = getelementptr inbounds double, ptr %633, i64 2
  store double %650, ptr %643, align 8, !tbaa !147
  %652 = load i16, ptr %635, align 2, !tbaa !129
  %653 = uitofp i16 %652 to double
  %654 = fmul double %653, 0x3EF0001000100010
  %655 = load double, ptr %630, align 8, !tbaa !143
  %656 = load double, ptr %631, align 8, !tbaa !146
  %657 = tail call double @llvm.fmuladd.f64(double %654, double %655, double %656)
  %658 = getelementptr inbounds double, ptr %633, i64 3
  store double %657, ptr %651, align 8, !tbaa !147
  %659 = getelementptr inbounds double, ptr %633, i64 4
  store double 0.000000e+00, ptr %658, align 8, !tbaa !147
  %660 = getelementptr inbounds %struct._PixelPacket, ptr %635, i64 1
  %661 = add nuw nsw i64 %634, 1
  %662 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %663 = icmp slt i64 %661, %662
  br i1 %663, label %632, label %2123, !llvm.loop !154

664:                                              ; preds = %619
  br i1 %624, label %2123, label %665

665:                                              ; preds = %664
  %666 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #18
  %667 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %668 = icmp sgt i64 %667, 0
  br i1 %668, label %669, label %2123

669:                                              ; preds = %665
  %670 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %671 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  %672 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %673 = icmp eq ptr %666, null
  br label %674

674:                                              ; preds = %669, %727
  %675 = phi ptr [ %352, %669 ], [ %728, %727 ]
  %676 = phi i64 [ 0, %669 ], [ %730, %727 ]
  %677 = phi ptr [ %623, %669 ], [ %729, %727 ]
  br i1 %17, label %678, label %727

678:                                              ; preds = %674
  %679 = getelementptr inbounds i16, ptr %666, i64 %676
  %680 = getelementptr inbounds %struct._PixelPacket, ptr %677, i64 0, i32 3
  %681 = getelementptr inbounds %struct._PixelPacket, ptr %677, i64 0, i32 1
  %682 = getelementptr inbounds %struct._PixelPacket, ptr %677, i64 0, i32 2
  br label %683

683:                                              ; preds = %678, %723
  %684 = phi ptr [ %675, %678 ], [ %724, %723 ]
  %685 = phi i64 [ 0, %678 ], [ %725, %723 ]
  store double 0.000000e+00, ptr %684, align 8, !tbaa !147
  %686 = getelementptr inbounds i32, ptr %14, i64 %685
  %687 = load i32, ptr %686, align 4, !tbaa !34
  switch i32 %687, label %723 [
    i32 14, label %688
    i32 6, label %688
    i32 9, label %691
    i32 12, label %691
    i32 3, label %694
    i32 19, label %694
    i32 1, label %697
    i32 13, label %701
    i32 2, label %704
    i32 11, label %714
  ]

688:                                              ; preds = %683, %683
  %689 = load i16, ptr %682, align 2, !tbaa !131
  %690 = uitofp i16 %689 to double
  br label %717

691:                                              ; preds = %683, %683
  %692 = load i16, ptr %681, align 2, !tbaa !130
  %693 = uitofp i16 %692 to double
  br label %717

694:                                              ; preds = %683, %683
  %695 = load i16, ptr %677, align 2, !tbaa !129
  %696 = uitofp i16 %695 to double
  br label %717

697:                                              ; preds = %683
  %698 = load i16, ptr %680, align 2, !tbaa !133
  %699 = xor i16 %698, -1
  %700 = uitofp i16 %699 to double
  br label %717

701:                                              ; preds = %683
  %702 = load i16, ptr %680, align 2, !tbaa !133
  %703 = uitofp i16 %702 to double
  br label %717

704:                                              ; preds = %683
  %705 = load i32, ptr %672, align 4, !tbaa !87
  %706 = icmp eq i32 %705, 12
  br i1 %706, label %707, label %723

707:                                              ; preds = %704
  br i1 %673, label %711, label %708

708:                                              ; preds = %707
  %709 = load i16, ptr %679, align 2, !tbaa !140
  %710 = zext i16 %709 to i32
  br label %711

711:                                              ; preds = %707, %708
  %712 = phi i32 [ %710, %708 ], [ 0, %707 ]
  %713 = sitofp i32 %712 to double
  br label %717

714:                                              ; preds = %683
  %715 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %677) #24
  %716 = fpext float %715 to double
  br label %717

717:                                              ; preds = %688, %691, %694, %697, %701, %714, %711
  %718 = phi double [ %713, %711 ], [ %716, %714 ], [ %703, %701 ], [ %700, %697 ], [ %696, %694 ], [ %693, %691 ], [ %690, %688 ]
  %719 = fmul double %718, 0x3EF0001000100010
  %720 = load double, ptr %670, align 8, !tbaa !143
  %721 = load double, ptr %671, align 8, !tbaa !146
  %722 = tail call double @llvm.fmuladd.f64(double %719, double %720, double %721)
  store double %722, ptr %684, align 8, !tbaa !147
  br label %723

723:                                              ; preds = %717, %683, %704
  %724 = getelementptr inbounds double, ptr %684, i64 1
  %725 = add nuw nsw i64 %685, 1
  %726 = icmp eq i64 %725, %13
  br i1 %726, label %727, label %683, !llvm.loop !155

727:                                              ; preds = %723, %674
  %728 = phi ptr [ %675, %674 ], [ %724, %723 ]
  %729 = getelementptr inbounds %struct._PixelPacket, ptr %677, i64 1
  %730 = add nuw nsw i64 %676, 1
  %731 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %732 = icmp slt i64 %730, %731
  br i1 %732, label %674, label %2123, !llvm.loop !156

733:                                              ; preds = %76
  %734 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %735 = load ptr, ptr %734, align 8, !tbaa !38
  %736 = load ptr, ptr %11, align 8, !tbaa !43
  %737 = tail call i32 @LocaleCompare(ptr noundef %736, ptr noundef nonnull @.str.11) #18
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %775

739:                                              ; preds = %733
  %740 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %741 = icmp eq ptr %740, null
  br i1 %741, label %2123, label %742

742:                                              ; preds = %739
  %743 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %744 = icmp sgt i64 %743, 0
  br i1 %744, label %745, label %2123

745:                                              ; preds = %742
  %746 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %747 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %748

748:                                              ; preds = %745, %748
  %749 = phi ptr [ %735, %745 ], [ %770, %748 ]
  %750 = phi i64 [ 0, %745 ], [ %772, %748 ]
  %751 = phi ptr [ %740, %745 ], [ %771, %748 ]
  %752 = load double, ptr %746, align 8, !tbaa !143
  %753 = load double, ptr %747, align 8, !tbaa !146
  %754 = getelementptr inbounds float, ptr %749, i64 2
  %755 = load <2 x i16>, ptr %751, align 2, !tbaa !140
  %756 = uitofp <2 x i16> %755 to <2 x double>
  %757 = fmul <2 x double> %756, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %758 = insertelement <2 x double> poison, double %752, i64 0
  %759 = shufflevector <2 x double> %758, <2 x double> poison, <2 x i32> zeroinitializer
  %760 = insertelement <2 x double> poison, double %753, i64 0
  %761 = shufflevector <2 x double> %760, <2 x double> poison, <2 x i32> zeroinitializer
  %762 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %757, <2 x double> %759, <2 x double> %761)
  %763 = fptrunc <2 x double> %762 to <2 x float>
  store <2 x float> %763, ptr %749, align 4, !tbaa !157
  %764 = getelementptr inbounds %struct._PixelPacket, ptr %751, i64 0, i32 2
  %765 = load i16, ptr %764, align 2, !tbaa !131
  %766 = uitofp i16 %765 to double
  %767 = fmul double %766, 0x3EF0001000100010
  %768 = tail call double @llvm.fmuladd.f64(double %767, double %752, double %753)
  %769 = fptrunc double %768 to float
  %770 = getelementptr inbounds float, ptr %749, i64 3
  store float %769, ptr %754, align 4, !tbaa !157
  %771 = getelementptr inbounds %struct._PixelPacket, ptr %751, i64 1
  %772 = add nuw nsw i64 %750, 1
  %773 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %774 = icmp slt i64 %772, %773
  br i1 %774, label %748, label %2123, !llvm.loop !158

775:                                              ; preds = %733
  %776 = load ptr, ptr %11, align 8, !tbaa !43
  %777 = tail call i32 @LocaleCompare(ptr noundef %776, ptr noundef nonnull @.str.12) #18
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %779, label %817

779:                                              ; preds = %775
  %780 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %781 = icmp eq ptr %780, null
  br i1 %781, label %2123, label %782

782:                                              ; preds = %779
  %783 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %784 = icmp sgt i64 %783, 0
  br i1 %784, label %785, label %2123

785:                                              ; preds = %782
  %786 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %787 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %788

788:                                              ; preds = %785, %788
  %789 = phi ptr [ %735, %785 ], [ %800, %788 ]
  %790 = phi i64 [ 0, %785 ], [ %814, %788 ]
  %791 = phi ptr [ %780, %785 ], [ %813, %788 ]
  %792 = load i16, ptr %791, align 2, !tbaa !129
  %793 = load double, ptr %786, align 8, !tbaa !143
  %794 = load double, ptr %787, align 8, !tbaa !146
  %795 = getelementptr inbounds %struct._PixelPacket, ptr %791, i64 0, i32 1
  %796 = load <2 x i16>, ptr %795, align 2, !tbaa !140
  %797 = getelementptr inbounds %struct._PixelPacket, ptr %791, i64 0, i32 3
  %798 = load i16, ptr %797, align 2, !tbaa !133
  %799 = xor i16 %798, -1
  %800 = getelementptr inbounds float, ptr %789, i64 4
  %801 = insertelement <4 x i16> poison, i16 %792, i64 0
  %802 = shufflevector <2 x i16> %796, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %803 = shufflevector <4 x i16> %801, <4 x i16> %802, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %804 = insertelement <4 x i16> %803, i16 %799, i64 3
  %805 = uitofp <4 x i16> %804 to <4 x double>
  %806 = fmul <4 x double> %805, <double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010>
  %807 = insertelement <4 x double> poison, double %793, i64 0
  %808 = shufflevector <4 x double> %807, <4 x double> poison, <4 x i32> zeroinitializer
  %809 = insertelement <4 x double> poison, double %794, i64 0
  %810 = shufflevector <4 x double> %809, <4 x double> poison, <4 x i32> zeroinitializer
  %811 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %806, <4 x double> %808, <4 x double> %810)
  %812 = fptrunc <4 x double> %811 to <4 x float>
  store <4 x float> %812, ptr %789, align 4, !tbaa !157
  %813 = getelementptr inbounds %struct._PixelPacket, ptr %791, i64 1
  %814 = add nuw nsw i64 %790, 1
  %815 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %816 = icmp slt i64 %814, %815
  br i1 %816, label %788, label %2123, !llvm.loop !159

817:                                              ; preds = %775
  %818 = load ptr, ptr %11, align 8, !tbaa !43
  %819 = tail call i32 @LocaleCompare(ptr noundef %818, ptr noundef nonnull @.str.13) #18
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %858

821:                                              ; preds = %817
  %822 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %823 = icmp eq ptr %822, null
  br i1 %823, label %2123, label %824

824:                                              ; preds = %821
  %825 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %826 = icmp sgt i64 %825, 0
  br i1 %826, label %827, label %2123

827:                                              ; preds = %824
  %828 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %829 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %830

830:                                              ; preds = %827, %830
  %831 = phi ptr [ %735, %827 ], [ %853, %830 ]
  %832 = phi i64 [ 0, %827 ], [ %855, %830 ]
  %833 = phi ptr [ %822, %827 ], [ %854, %830 ]
  %834 = load double, ptr %828, align 8, !tbaa !143
  %835 = load double, ptr %829, align 8, !tbaa !146
  %836 = getelementptr inbounds float, ptr %831, i64 2
  %837 = load <2 x i16>, ptr %833, align 2, !tbaa !140
  %838 = uitofp <2 x i16> %837 to <2 x double>
  %839 = fmul <2 x double> %838, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %840 = insertelement <2 x double> poison, double %834, i64 0
  %841 = shufflevector <2 x double> %840, <2 x double> poison, <2 x i32> zeroinitializer
  %842 = insertelement <2 x double> poison, double %835, i64 0
  %843 = shufflevector <2 x double> %842, <2 x double> poison, <2 x i32> zeroinitializer
  %844 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %839, <2 x double> %841, <2 x double> %843)
  %845 = fptrunc <2 x double> %844 to <2 x float>
  store <2 x float> %845, ptr %831, align 4, !tbaa !157
  %846 = getelementptr inbounds %struct._PixelPacket, ptr %833, i64 0, i32 2
  %847 = load i16, ptr %846, align 2, !tbaa !131
  %848 = uitofp i16 %847 to double
  %849 = fmul double %848, 0x3EF0001000100010
  %850 = tail call double @llvm.fmuladd.f64(double %849, double %834, double %835)
  %851 = fptrunc double %850 to float
  %852 = getelementptr inbounds float, ptr %831, i64 3
  store float %851, ptr %836, align 4, !tbaa !157
  %853 = getelementptr inbounds float, ptr %831, i64 4
  store float 0.000000e+00, ptr %852, align 4, !tbaa !157
  %854 = getelementptr inbounds %struct._PixelPacket, ptr %833, i64 1
  %855 = add nuw nsw i64 %832, 1
  %856 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %857 = icmp slt i64 %855, %856
  br i1 %857, label %830, label %2123, !llvm.loop !160

858:                                              ; preds = %817
  %859 = load ptr, ptr %11, align 8, !tbaa !43
  %860 = tail call i32 @LocaleCompare(ptr noundef %859, ptr noundef nonnull @.str.14) #18
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %862, label %887

862:                                              ; preds = %858
  %863 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %864 = icmp eq ptr %863, null
  br i1 %864, label %2123, label %865

865:                                              ; preds = %862
  %866 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %867 = icmp sgt i64 %866, 0
  br i1 %867, label %868, label %2123

868:                                              ; preds = %865
  %869 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %870 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %871

871:                                              ; preds = %868, %871
  %872 = phi ptr [ %735, %868 ], [ %882, %871 ]
  %873 = phi i64 [ 0, %868 ], [ %884, %871 ]
  %874 = phi ptr [ %863, %868 ], [ %883, %871 ]
  %875 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %874) #24
  %876 = fpext float %875 to double
  %877 = fmul double %876, 0x3EF0001000100010
  %878 = load double, ptr %869, align 8, !tbaa !143
  %879 = load double, ptr %870, align 8, !tbaa !146
  %880 = tail call double @llvm.fmuladd.f64(double %877, double %878, double %879)
  %881 = fptrunc double %880 to float
  %882 = getelementptr inbounds float, ptr %872, i64 1
  store float %881, ptr %872, align 4, !tbaa !157
  %883 = getelementptr inbounds %struct._PixelPacket, ptr %874, i64 1
  %884 = add nuw nsw i64 %873, 1
  %885 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %886 = icmp slt i64 %884, %885
  br i1 %886, label %871, label %2123, !llvm.loop !161

887:                                              ; preds = %858
  %888 = load ptr, ptr %11, align 8, !tbaa !43
  %889 = tail call i32 @LocaleCompare(ptr noundef %888, ptr noundef nonnull @.str.4) #18
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %891, label %928

891:                                              ; preds = %887
  %892 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %893 = icmp eq ptr %892, null
  br i1 %893, label %2123, label %894

894:                                              ; preds = %891
  %895 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %896 = icmp sgt i64 %895, 0
  br i1 %896, label %897, label %2123

897:                                              ; preds = %894
  %898 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %899 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %900

900:                                              ; preds = %897, %900
  %901 = phi ptr [ %735, %897 ], [ %923, %900 ]
  %902 = phi i64 [ 0, %897 ], [ %925, %900 ]
  %903 = phi ptr [ %892, %897 ], [ %924, %900 ]
  %904 = load double, ptr %898, align 8, !tbaa !143
  %905 = load double, ptr %899, align 8, !tbaa !146
  %906 = getelementptr inbounds %struct._PixelPacket, ptr %903, i64 0, i32 1
  %907 = getelementptr inbounds float, ptr %901, i64 2
  %908 = load <2 x i16>, ptr %906, align 2, !tbaa !140
  %909 = uitofp <2 x i16> %908 to <2 x double>
  %910 = fmul <2 x double> %909, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %911 = insertelement <2 x double> poison, double %904, i64 0
  %912 = shufflevector <2 x double> %911, <2 x double> poison, <2 x i32> zeroinitializer
  %913 = insertelement <2 x double> poison, double %905, i64 0
  %914 = shufflevector <2 x double> %913, <2 x double> poison, <2 x i32> zeroinitializer
  %915 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %910, <2 x double> %912, <2 x double> %914)
  %916 = fptrunc <2 x double> %915 to <2 x float>
  %917 = shufflevector <2 x float> %916, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %917, ptr %901, align 4, !tbaa !157
  %918 = load i16, ptr %903, align 2, !tbaa !129
  %919 = uitofp i16 %918 to double
  %920 = fmul double %919, 0x3EF0001000100010
  %921 = tail call double @llvm.fmuladd.f64(double %920, double %904, double %905)
  %922 = fptrunc double %921 to float
  %923 = getelementptr inbounds float, ptr %901, i64 3
  store float %922, ptr %907, align 4, !tbaa !157
  %924 = getelementptr inbounds %struct._PixelPacket, ptr %903, i64 1
  %925 = add nuw nsw i64 %902, 1
  %926 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %927 = icmp slt i64 %925, %926
  br i1 %927, label %900, label %2123, !llvm.loop !162

928:                                              ; preds = %887
  %929 = load ptr, ptr %11, align 8, !tbaa !43
  %930 = tail call i32 @LocaleCompare(ptr noundef %929, ptr noundef nonnull @.str.15) #18
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %932, label %969

932:                                              ; preds = %928
  %933 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %934 = icmp eq ptr %933, null
  br i1 %934, label %2123, label %935

935:                                              ; preds = %932
  %936 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %937 = icmp sgt i64 %936, 0
  br i1 %937, label %938, label %2123

938:                                              ; preds = %935
  %939 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %940 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %941

941:                                              ; preds = %938, %941
  %942 = phi ptr [ %735, %938 ], [ %953, %941 ]
  %943 = phi i64 [ 0, %938 ], [ %966, %941 ]
  %944 = phi ptr [ %933, %938 ], [ %965, %941 ]
  %945 = load double, ptr %939, align 8, !tbaa !143
  %946 = load double, ptr %940, align 8, !tbaa !146
  %947 = getelementptr inbounds %struct._PixelPacket, ptr %944, i64 0, i32 1
  %948 = load <2 x i16>, ptr %947, align 2, !tbaa !140
  %949 = load i16, ptr %944, align 2, !tbaa !129
  %950 = getelementptr inbounds %struct._PixelPacket, ptr %944, i64 0, i32 3
  %951 = load i16, ptr %950, align 2, !tbaa !133
  %952 = xor i16 %951, -1
  %953 = getelementptr inbounds float, ptr %942, i64 4
  %954 = shufflevector <2 x i16> %948, <2 x i16> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %955 = insertelement <4 x i16> %954, i16 %949, i64 2
  %956 = insertelement <4 x i16> %955, i16 %952, i64 3
  %957 = uitofp <4 x i16> %956 to <4 x double>
  %958 = fmul <4 x double> %957, <double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010, double 0x3EF0001000100010>
  %959 = insertelement <4 x double> poison, double %945, i64 0
  %960 = shufflevector <4 x double> %959, <4 x double> poison, <4 x i32> zeroinitializer
  %961 = insertelement <4 x double> poison, double %946, i64 0
  %962 = shufflevector <4 x double> %961, <4 x double> poison, <4 x i32> zeroinitializer
  %963 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %958, <4 x double> %960, <4 x double> %962)
  %964 = fptrunc <4 x double> %963 to <4 x float>
  store <4 x float> %964, ptr %942, align 4, !tbaa !157
  %965 = getelementptr inbounds %struct._PixelPacket, ptr %944, i64 1
  %966 = add nuw nsw i64 %943, 1
  %967 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %968 = icmp slt i64 %966, %967
  br i1 %968, label %941, label %2123, !llvm.loop !163

969:                                              ; preds = %928
  %970 = load ptr, ptr %11, align 8, !tbaa !43
  %971 = tail call i32 @LocaleCompare(ptr noundef %970, ptr noundef nonnull @.str.16) #18
  %972 = icmp eq i32 %971, 0
  %973 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %974 = icmp eq ptr %973, null
  br i1 %972, label %975, label %1011

975:                                              ; preds = %969
  br i1 %974, label %2123, label %976

976:                                              ; preds = %975
  %977 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %978 = icmp sgt i64 %977, 0
  br i1 %978, label %979, label %2123

979:                                              ; preds = %976
  %980 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %981 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  br label %982

982:                                              ; preds = %979, %982
  %983 = phi ptr [ %735, %979 ], [ %1006, %982 ]
  %984 = phi i64 [ 0, %979 ], [ %1008, %982 ]
  %985 = phi ptr [ %973, %979 ], [ %1007, %982 ]
  %986 = load double, ptr %980, align 8, !tbaa !143
  %987 = load double, ptr %981, align 8, !tbaa !146
  %988 = getelementptr inbounds %struct._PixelPacket, ptr %985, i64 0, i32 1
  %989 = getelementptr inbounds float, ptr %983, i64 2
  %990 = load <2 x i16>, ptr %988, align 2, !tbaa !140
  %991 = uitofp <2 x i16> %990 to <2 x double>
  %992 = fmul <2 x double> %991, <double 0x3EF0001000100010, double 0x3EF0001000100010>
  %993 = insertelement <2 x double> poison, double %986, i64 0
  %994 = shufflevector <2 x double> %993, <2 x double> poison, <2 x i32> zeroinitializer
  %995 = insertelement <2 x double> poison, double %987, i64 0
  %996 = shufflevector <2 x double> %995, <2 x double> poison, <2 x i32> zeroinitializer
  %997 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %992, <2 x double> %994, <2 x double> %996)
  %998 = fptrunc <2 x double> %997 to <2 x float>
  %999 = shufflevector <2 x float> %998, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %999, ptr %983, align 4, !tbaa !157
  %1000 = load i16, ptr %985, align 2, !tbaa !129
  %1001 = uitofp i16 %1000 to double
  %1002 = fmul double %1001, 0x3EF0001000100010
  %1003 = tail call double @llvm.fmuladd.f64(double %1002, double %986, double %987)
  %1004 = fptrunc double %1003 to float
  %1005 = getelementptr inbounds float, ptr %983, i64 3
  store float %1004, ptr %989, align 4, !tbaa !157
  %1006 = getelementptr inbounds float, ptr %983, i64 4
  store float 0.000000e+00, ptr %1005, align 4, !tbaa !157
  %1007 = getelementptr inbounds %struct._PixelPacket, ptr %985, i64 1
  %1008 = add nuw nsw i64 %984, 1
  %1009 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1010 = icmp slt i64 %1008, %1009
  br i1 %1010, label %982, label %2123, !llvm.loop !164

1011:                                             ; preds = %969
  br i1 %974, label %2123, label %1012

1012:                                             ; preds = %1011
  %1013 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #18
  %1014 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1015 = icmp sgt i64 %1014, 0
  br i1 %1015, label %1016, label %2123

1016:                                             ; preds = %1012
  %1017 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 5
  %1018 = getelementptr inbounds %struct._QuantumInfo, ptr %78, i64 0, i32 3
  %1019 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %1020 = icmp eq ptr %1013, null
  br label %1021

1021:                                             ; preds = %1016, %1075
  %1022 = phi ptr [ %735, %1016 ], [ %1076, %1075 ]
  %1023 = phi i64 [ 0, %1016 ], [ %1078, %1075 ]
  %1024 = phi ptr [ %973, %1016 ], [ %1077, %1075 ]
  br i1 %17, label %1025, label %1075

1025:                                             ; preds = %1021
  %1026 = getelementptr inbounds i16, ptr %1013, i64 %1023
  %1027 = getelementptr inbounds %struct._PixelPacket, ptr %1024, i64 0, i32 3
  %1028 = getelementptr inbounds %struct._PixelPacket, ptr %1024, i64 0, i32 1
  %1029 = getelementptr inbounds %struct._PixelPacket, ptr %1024, i64 0, i32 2
  br label %1030

1030:                                             ; preds = %1025, %1071
  %1031 = phi ptr [ %1022, %1025 ], [ %1072, %1071 ]
  %1032 = phi i64 [ 0, %1025 ], [ %1073, %1071 ]
  store float 0.000000e+00, ptr %1031, align 4, !tbaa !157
  %1033 = getelementptr inbounds i32, ptr %14, i64 %1032
  %1034 = load i32, ptr %1033, align 4, !tbaa !34
  switch i32 %1034, label %1071 [
    i32 14, label %1035
    i32 6, label %1035
    i32 9, label %1038
    i32 12, label %1038
    i32 3, label %1041
    i32 19, label %1041
    i32 1, label %1044
    i32 13, label %1048
    i32 2, label %1051
    i32 11, label %1061
  ]

1035:                                             ; preds = %1030, %1030
  %1036 = load i16, ptr %1029, align 2, !tbaa !131
  %1037 = uitofp i16 %1036 to double
  br label %1064

1038:                                             ; preds = %1030, %1030
  %1039 = load i16, ptr %1028, align 2, !tbaa !130
  %1040 = uitofp i16 %1039 to double
  br label %1064

1041:                                             ; preds = %1030, %1030
  %1042 = load i16, ptr %1024, align 2, !tbaa !129
  %1043 = uitofp i16 %1042 to double
  br label %1064

1044:                                             ; preds = %1030
  %1045 = load i16, ptr %1027, align 2, !tbaa !133
  %1046 = xor i16 %1045, -1
  %1047 = uitofp i16 %1046 to double
  br label %1064

1048:                                             ; preds = %1030
  %1049 = load i16, ptr %1027, align 2, !tbaa !133
  %1050 = uitofp i16 %1049 to double
  br label %1064

1051:                                             ; preds = %1030
  %1052 = load i32, ptr %1019, align 4, !tbaa !87
  %1053 = icmp eq i32 %1052, 12
  br i1 %1053, label %1054, label %1071

1054:                                             ; preds = %1051
  br i1 %1020, label %1058, label %1055

1055:                                             ; preds = %1054
  %1056 = load i16, ptr %1026, align 2, !tbaa !140
  %1057 = zext i16 %1056 to i32
  br label %1058

1058:                                             ; preds = %1054, %1055
  %1059 = phi i32 [ %1057, %1055 ], [ 0, %1054 ]
  %1060 = sitofp i32 %1059 to double
  br label %1064

1061:                                             ; preds = %1030
  %1062 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1024) #24
  %1063 = fpext float %1062 to double
  br label %1064

1064:                                             ; preds = %1035, %1038, %1041, %1044, %1048, %1061, %1058
  %1065 = phi double [ %1060, %1058 ], [ %1063, %1061 ], [ %1050, %1048 ], [ %1047, %1044 ], [ %1043, %1041 ], [ %1040, %1038 ], [ %1037, %1035 ]
  %1066 = fmul double %1065, 0x3EF0001000100010
  %1067 = load double, ptr %1017, align 8, !tbaa !143
  %1068 = load double, ptr %1018, align 8, !tbaa !146
  %1069 = tail call double @llvm.fmuladd.f64(double %1066, double %1067, double %1068)
  %1070 = fptrunc double %1069 to float
  store float %1070, ptr %1031, align 4, !tbaa !157
  br label %1071

1071:                                             ; preds = %1064, %1030, %1051
  %1072 = getelementptr inbounds float, ptr %1031, i64 1
  %1073 = add nuw nsw i64 %1032, 1
  %1074 = icmp eq i64 %1073, %13
  br i1 %1074, label %1075, label %1030, !llvm.loop !165

1075:                                             ; preds = %1071, %1021
  %1076 = phi ptr [ %1022, %1021 ], [ %1072, %1071 ]
  %1077 = getelementptr inbounds %struct._PixelPacket, ptr %1024, i64 1
  %1078 = add nuw nsw i64 %1023, 1
  %1079 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1080 = icmp slt i64 %1078, %1079
  br i1 %1080, label %1021, label %2123, !llvm.loop !166

1081:                                             ; preds = %76
  %1082 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %1083 = load ptr, ptr %1082, align 8, !tbaa !38
  %1084 = load ptr, ptr %11, align 8, !tbaa !43
  %1085 = tail call i32 @LocaleCompare(ptr noundef %1084, ptr noundef nonnull @.str.11) #18
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1087, label %1112

1087:                                             ; preds = %1081
  %1088 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %2123, label %1090

1090:                                             ; preds = %1087
  %1091 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1092 = icmp sgt i64 %1091, 0
  br i1 %1092, label %1093, label %2123

1093:                                             ; preds = %1090, %1093
  %1094 = phi ptr [ %1107, %1093 ], [ %1083, %1090 ]
  %1095 = phi i64 [ %1109, %1093 ], [ 0, %1090 ]
  %1096 = phi ptr [ %1108, %1093 ], [ %1088, %1090 ]
  %1097 = load i16, ptr %1096, align 2, !tbaa !129
  %1098 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1097) #22
  %1099 = getelementptr inbounds i32, ptr %1094, i64 1
  store i32 %1098, ptr %1094, align 4, !tbaa !34
  %1100 = getelementptr inbounds %struct._PixelPacket, ptr %1096, i64 0, i32 1
  %1101 = load i16, ptr %1100, align 2, !tbaa !130
  %1102 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1101) #22
  %1103 = getelementptr inbounds i32, ptr %1094, i64 2
  store i32 %1102, ptr %1099, align 4, !tbaa !34
  %1104 = getelementptr inbounds %struct._PixelPacket, ptr %1096, i64 0, i32 2
  %1105 = load i16, ptr %1104, align 2, !tbaa !131
  %1106 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1105) #22
  %1107 = getelementptr inbounds i32, ptr %1094, i64 3
  store i32 %1106, ptr %1103, align 4, !tbaa !34
  %1108 = getelementptr inbounds %struct._PixelPacket, ptr %1096, i64 1
  %1109 = add nuw nsw i64 %1095, 1
  %1110 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1111 = icmp slt i64 %1109, %1110
  br i1 %1111, label %1093, label %2123, !llvm.loop !167

1112:                                             ; preds = %1081
  %1113 = load ptr, ptr %11, align 8, !tbaa !43
  %1114 = tail call i32 @LocaleCompare(ptr noundef %1113, ptr noundef nonnull @.str.12) #18
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1116, label %1146

1116:                                             ; preds = %1112
  %1117 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1118 = icmp eq ptr %1117, null
  br i1 %1118, label %2123, label %1119

1119:                                             ; preds = %1116
  %1120 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1121 = icmp sgt i64 %1120, 0
  br i1 %1121, label %1122, label %2123

1122:                                             ; preds = %1119, %1122
  %1123 = phi ptr [ %1141, %1122 ], [ %1083, %1119 ]
  %1124 = phi i64 [ %1143, %1122 ], [ 0, %1119 ]
  %1125 = phi ptr [ %1142, %1122 ], [ %1117, %1119 ]
  %1126 = load i16, ptr %1125, align 2, !tbaa !129
  %1127 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1126) #22
  %1128 = getelementptr inbounds i32, ptr %1123, i64 1
  store i32 %1127, ptr %1123, align 4, !tbaa !34
  %1129 = getelementptr inbounds %struct._PixelPacket, ptr %1125, i64 0, i32 1
  %1130 = load i16, ptr %1129, align 2, !tbaa !130
  %1131 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1130) #22
  %1132 = getelementptr inbounds i32, ptr %1123, i64 2
  store i32 %1131, ptr %1128, align 4, !tbaa !34
  %1133 = getelementptr inbounds %struct._PixelPacket, ptr %1125, i64 0, i32 2
  %1134 = load i16, ptr %1133, align 2, !tbaa !131
  %1135 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1134) #22
  %1136 = getelementptr inbounds i32, ptr %1123, i64 3
  store i32 %1135, ptr %1132, align 4, !tbaa !34
  %1137 = getelementptr inbounds %struct._PixelPacket, ptr %1125, i64 0, i32 3
  %1138 = load i16, ptr %1137, align 2, !tbaa !133
  %1139 = xor i16 %1138, -1
  %1140 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1139) #22
  %1141 = getelementptr inbounds i32, ptr %1123, i64 4
  store i32 %1140, ptr %1136, align 4, !tbaa !34
  %1142 = getelementptr inbounds %struct._PixelPacket, ptr %1125, i64 1
  %1143 = add nuw nsw i64 %1124, 1
  %1144 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1145 = icmp slt i64 %1143, %1144
  br i1 %1145, label %1122, label %2123, !llvm.loop !168

1146:                                             ; preds = %1112
  %1147 = load ptr, ptr %11, align 8, !tbaa !43
  %1148 = tail call i32 @LocaleCompare(ptr noundef %1147, ptr noundef nonnull @.str.13) #18
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1150, label %1176

1150:                                             ; preds = %1146
  %1151 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1152 = icmp eq ptr %1151, null
  br i1 %1152, label %2123, label %1153

1153:                                             ; preds = %1150
  %1154 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1155 = icmp sgt i64 %1154, 0
  br i1 %1155, label %1156, label %2123

1156:                                             ; preds = %1153, %1156
  %1157 = phi ptr [ %1171, %1156 ], [ %1083, %1153 ]
  %1158 = phi i64 [ %1173, %1156 ], [ 0, %1153 ]
  %1159 = phi ptr [ %1172, %1156 ], [ %1151, %1153 ]
  %1160 = load i16, ptr %1159, align 2, !tbaa !129
  %1161 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1160) #22
  %1162 = getelementptr inbounds i32, ptr %1157, i64 1
  store i32 %1161, ptr %1157, align 4, !tbaa !34
  %1163 = getelementptr inbounds %struct._PixelPacket, ptr %1159, i64 0, i32 1
  %1164 = load i16, ptr %1163, align 2, !tbaa !130
  %1165 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1164) #22
  %1166 = getelementptr inbounds i32, ptr %1157, i64 2
  store i32 %1165, ptr %1162, align 4, !tbaa !34
  %1167 = getelementptr inbounds %struct._PixelPacket, ptr %1159, i64 0, i32 2
  %1168 = load i16, ptr %1167, align 2, !tbaa !131
  %1169 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1168) #22
  %1170 = getelementptr inbounds i32, ptr %1157, i64 3
  store i32 %1169, ptr %1166, align 4, !tbaa !34
  %1171 = getelementptr inbounds i32, ptr %1157, i64 4
  store i32 0, ptr %1170, align 4, !tbaa !34
  %1172 = getelementptr inbounds %struct._PixelPacket, ptr %1159, i64 1
  %1173 = add nuw nsw i64 %1158, 1
  %1174 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1175 = icmp slt i64 %1173, %1174
  br i1 %1175, label %1156, label %2123, !llvm.loop !169

1176:                                             ; preds = %1146
  %1177 = load ptr, ptr %11, align 8, !tbaa !43
  %1178 = tail call i32 @LocaleCompare(ptr noundef %1177, ptr noundef nonnull @.str.14) #18
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1180, label %1198

1180:                                             ; preds = %1176
  %1181 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1182 = icmp eq ptr %1181, null
  br i1 %1182, label %2123, label %1183

1183:                                             ; preds = %1180
  %1184 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1185 = icmp sgt i64 %1184, 0
  br i1 %1185, label %1186, label %2123

1186:                                             ; preds = %1183, %1186
  %1187 = phi ptr [ %1193, %1186 ], [ %1083, %1183 ]
  %1188 = phi i64 [ %1195, %1186 ], [ 0, %1183 ]
  %1189 = phi ptr [ %1194, %1186 ], [ %1181, %1183 ]
  %1190 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1189) #24
  %1191 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1190) #22
  %1192 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1191) #22
  %1193 = getelementptr inbounds i32, ptr %1187, i64 1
  store i32 %1192, ptr %1187, align 4, !tbaa !34
  %1194 = getelementptr inbounds %struct._PixelPacket, ptr %1189, i64 1
  %1195 = add nuw nsw i64 %1188, 1
  %1196 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1197 = icmp slt i64 %1195, %1196
  br i1 %1197, label %1186, label %2123, !llvm.loop !170

1198:                                             ; preds = %1176
  %1199 = load ptr, ptr %11, align 8, !tbaa !43
  %1200 = tail call i32 @LocaleCompare(ptr noundef %1199, ptr noundef nonnull @.str.4) #18
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1202, label %1227

1202:                                             ; preds = %1198
  %1203 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1204 = icmp eq ptr %1203, null
  br i1 %1204, label %2123, label %1205

1205:                                             ; preds = %1202
  %1206 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1207 = icmp sgt i64 %1206, 0
  br i1 %1207, label %1208, label %2123

1208:                                             ; preds = %1205, %1208
  %1209 = phi ptr [ %1222, %1208 ], [ %1083, %1205 ]
  %1210 = phi i64 [ %1224, %1208 ], [ 0, %1205 ]
  %1211 = phi ptr [ %1223, %1208 ], [ %1203, %1205 ]
  %1212 = getelementptr inbounds %struct._PixelPacket, ptr %1211, i64 0, i32 2
  %1213 = load i16, ptr %1212, align 2, !tbaa !131
  %1214 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1213) #22
  %1215 = getelementptr inbounds i32, ptr %1209, i64 1
  store i32 %1214, ptr %1209, align 4, !tbaa !34
  %1216 = getelementptr inbounds %struct._PixelPacket, ptr %1211, i64 0, i32 1
  %1217 = load i16, ptr %1216, align 2, !tbaa !130
  %1218 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1217) #22
  %1219 = getelementptr inbounds i32, ptr %1209, i64 2
  store i32 %1218, ptr %1215, align 4, !tbaa !34
  %1220 = load i16, ptr %1211, align 2, !tbaa !129
  %1221 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1220) #22
  %1222 = getelementptr inbounds i32, ptr %1209, i64 3
  store i32 %1221, ptr %1219, align 4, !tbaa !34
  %1223 = getelementptr inbounds %struct._PixelPacket, ptr %1211, i64 1
  %1224 = add nuw nsw i64 %1210, 1
  %1225 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1226 = icmp slt i64 %1224, %1225
  br i1 %1226, label %1208, label %2123, !llvm.loop !171

1227:                                             ; preds = %1198
  %1228 = load ptr, ptr %11, align 8, !tbaa !43
  %1229 = tail call i32 @LocaleCompare(ptr noundef %1228, ptr noundef nonnull @.str.15) #18
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1231, label %1261

1231:                                             ; preds = %1227
  %1232 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1233 = icmp eq ptr %1232, null
  br i1 %1233, label %2123, label %1234

1234:                                             ; preds = %1231
  %1235 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1236 = icmp sgt i64 %1235, 0
  br i1 %1236, label %1237, label %2123

1237:                                             ; preds = %1234, %1237
  %1238 = phi ptr [ %1256, %1237 ], [ %1083, %1234 ]
  %1239 = phi i64 [ %1258, %1237 ], [ 0, %1234 ]
  %1240 = phi ptr [ %1257, %1237 ], [ %1232, %1234 ]
  %1241 = getelementptr inbounds %struct._PixelPacket, ptr %1240, i64 0, i32 2
  %1242 = load i16, ptr %1241, align 2, !tbaa !131
  %1243 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1242) #22
  %1244 = getelementptr inbounds i32, ptr %1238, i64 1
  store i32 %1243, ptr %1238, align 4, !tbaa !34
  %1245 = getelementptr inbounds %struct._PixelPacket, ptr %1240, i64 0, i32 1
  %1246 = load i16, ptr %1245, align 2, !tbaa !130
  %1247 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1246) #22
  %1248 = getelementptr inbounds i32, ptr %1238, i64 2
  store i32 %1247, ptr %1244, align 4, !tbaa !34
  %1249 = load i16, ptr %1240, align 2, !tbaa !129
  %1250 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1249) #22
  %1251 = getelementptr inbounds i32, ptr %1238, i64 3
  store i32 %1250, ptr %1248, align 4, !tbaa !34
  %1252 = getelementptr inbounds %struct._PixelPacket, ptr %1240, i64 0, i32 3
  %1253 = load i16, ptr %1252, align 2, !tbaa !133
  %1254 = xor i16 %1253, -1
  %1255 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1254) #22
  %1256 = getelementptr inbounds i32, ptr %1238, i64 4
  store i32 %1255, ptr %1251, align 4, !tbaa !34
  %1257 = getelementptr inbounds %struct._PixelPacket, ptr %1240, i64 1
  %1258 = add nuw nsw i64 %1239, 1
  %1259 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1260 = icmp slt i64 %1258, %1259
  br i1 %1260, label %1237, label %2123, !llvm.loop !172

1261:                                             ; preds = %1227
  %1262 = load ptr, ptr %11, align 8, !tbaa !43
  %1263 = tail call i32 @LocaleCompare(ptr noundef %1262, ptr noundef nonnull @.str.16) #18
  %1264 = icmp eq i32 %1263, 0
  %1265 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1266 = icmp eq ptr %1265, null
  br i1 %1264, label %1267, label %1291

1267:                                             ; preds = %1261
  br i1 %1266, label %2123, label %1268

1268:                                             ; preds = %1267
  %1269 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1270 = icmp sgt i64 %1269, 0
  br i1 %1270, label %1271, label %2123

1271:                                             ; preds = %1268, %1271
  %1272 = phi ptr [ %1286, %1271 ], [ %1083, %1268 ]
  %1273 = phi i64 [ %1288, %1271 ], [ 0, %1268 ]
  %1274 = phi ptr [ %1287, %1271 ], [ %1265, %1268 ]
  %1275 = getelementptr inbounds %struct._PixelPacket, ptr %1274, i64 0, i32 2
  %1276 = load i16, ptr %1275, align 2, !tbaa !131
  %1277 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1276) #22
  %1278 = getelementptr inbounds i32, ptr %1272, i64 1
  store i32 %1277, ptr %1272, align 4, !tbaa !34
  %1279 = getelementptr inbounds %struct._PixelPacket, ptr %1274, i64 0, i32 1
  %1280 = load i16, ptr %1279, align 2, !tbaa !130
  %1281 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1280) #22
  %1282 = getelementptr inbounds i32, ptr %1272, i64 2
  store i32 %1281, ptr %1278, align 4, !tbaa !34
  %1283 = load i16, ptr %1274, align 2, !tbaa !129
  %1284 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1283) #22
  %1285 = getelementptr inbounds i32, ptr %1272, i64 3
  store i32 %1284, ptr %1282, align 4, !tbaa !34
  %1286 = getelementptr inbounds i32, ptr %1272, i64 4
  store i32 0, ptr %1285, align 4, !tbaa !34
  %1287 = getelementptr inbounds %struct._PixelPacket, ptr %1274, i64 1
  %1288 = add nuw nsw i64 %1273, 1
  %1289 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1290 = icmp slt i64 %1288, %1289
  br i1 %1290, label %1271, label %2123, !llvm.loop !173

1291:                                             ; preds = %1261
  br i1 %1266, label %2123, label %1292

1292:                                             ; preds = %1291
  %1293 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #18
  %1294 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1295 = icmp sgt i64 %1294, 0
  br i1 %1295, label %1296, label %2123

1296:                                             ; preds = %1292
  %1297 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %1298 = icmp eq ptr %1293, null
  br label %1299

1299:                                             ; preds = %1296, %1340
  %1300 = phi ptr [ %1083, %1296 ], [ %1341, %1340 ]
  %1301 = phi i64 [ 0, %1296 ], [ %1343, %1340 ]
  %1302 = phi ptr [ %1265, %1296 ], [ %1342, %1340 ]
  br i1 %17, label %1303, label %1340

1303:                                             ; preds = %1299
  %1304 = getelementptr inbounds i16, ptr %1293, i64 %1301
  %1305 = getelementptr inbounds %struct._PixelPacket, ptr %1302, i64 0, i32 3
  %1306 = getelementptr inbounds %struct._PixelPacket, ptr %1302, i64 0, i32 1
  %1307 = getelementptr inbounds %struct._PixelPacket, ptr %1302, i64 0, i32 2
  br label %1308

1308:                                             ; preds = %1303, %1336
  %1309 = phi ptr [ %1300, %1303 ], [ %1337, %1336 ]
  %1310 = phi i64 [ 0, %1303 ], [ %1338, %1336 ]
  store i32 0, ptr %1309, align 4, !tbaa !34
  %1311 = getelementptr inbounds i32, ptr %14, i64 %1310
  %1312 = load i32, ptr %1311, align 4, !tbaa !34
  switch i32 %1312, label %1336 [
    i32 14, label %1313
    i32 6, label %1313
    i32 9, label %1315
    i32 12, label %1315
    i32 3, label %1317
    i32 19, label %1317
    i32 1, label %1319
    i32 13, label %1322
    i32 2, label %1324
    i32 11, label %1330
  ]

1313:                                             ; preds = %1308, %1308
  %1314 = load i16, ptr %1307, align 2, !tbaa !131
  br label %1333

1315:                                             ; preds = %1308, %1308
  %1316 = load i16, ptr %1306, align 2, !tbaa !130
  br label %1333

1317:                                             ; preds = %1308, %1308
  %1318 = load i16, ptr %1302, align 2, !tbaa !129
  br label %1333

1319:                                             ; preds = %1308
  %1320 = load i16, ptr %1305, align 2, !tbaa !133
  %1321 = xor i16 %1320, -1
  br label %1333

1322:                                             ; preds = %1308
  %1323 = load i16, ptr %1305, align 2, !tbaa !133
  br label %1333

1324:                                             ; preds = %1308
  %1325 = load i32, ptr %1297, align 4, !tbaa !87
  %1326 = icmp eq i32 %1325, 12
  br i1 %1326, label %1327, label %1336

1327:                                             ; preds = %1324
  br i1 %1298, label %1333, label %1328

1328:                                             ; preds = %1327
  %1329 = load i16, ptr %1304, align 2, !tbaa !140
  br label %1333

1330:                                             ; preds = %1308
  %1331 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1302) #24
  %1332 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1331) #22
  br label %1333

1333:                                             ; preds = %1328, %1327, %1313, %1315, %1317, %1319, %1322, %1330
  %1334 = phi i16 [ %1332, %1330 ], [ %1323, %1322 ], [ %1321, %1319 ], [ %1318, %1317 ], [ %1316, %1315 ], [ %1314, %1313 ], [ %1329, %1328 ], [ 0, %1327 ]
  %1335 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1334) #22
  store i32 %1335, ptr %1309, align 4, !tbaa !34
  br label %1336

1336:                                             ; preds = %1333, %1308, %1324
  %1337 = getelementptr inbounds i32, ptr %1309, i64 1
  %1338 = add nuw nsw i64 %1310, 1
  %1339 = icmp eq i64 %1338, %13
  br i1 %1339, label %1340, label %1308, !llvm.loop !174

1340:                                             ; preds = %1336, %1299
  %1341 = phi ptr [ %1300, %1299 ], [ %1337, %1336 ]
  %1342 = getelementptr inbounds %struct._PixelPacket, ptr %1302, i64 1
  %1343 = add nuw nsw i64 %1301, 1
  %1344 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1345 = icmp slt i64 %1343, %1344
  br i1 %1345, label %1299, label %2123, !llvm.loop !175

1346:                                             ; preds = %76
  %1347 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %1348 = load ptr, ptr %1347, align 8, !tbaa !38
  %1349 = load ptr, ptr %11, align 8, !tbaa !43
  %1350 = tail call i32 @LocaleCompare(ptr noundef %1349, ptr noundef nonnull @.str.11) #18
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1352, label %1380

1352:                                             ; preds = %1346
  %1353 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1354 = icmp eq ptr %1353, null
  br i1 %1354, label %2123, label %1355

1355:                                             ; preds = %1352
  %1356 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1357 = icmp sgt i64 %1356, 0
  br i1 %1357, label %1358, label %2123

1358:                                             ; preds = %1355, %1358
  %1359 = phi ptr [ %1375, %1358 ], [ %1348, %1355 ]
  %1360 = phi i64 [ %1377, %1358 ], [ 0, %1355 ]
  %1361 = phi ptr [ %1376, %1358 ], [ %1353, %1355 ]
  %1362 = load i16, ptr %1361, align 2, !tbaa !129
  %1363 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1362) #22
  %1364 = zext i32 %1363 to i64
  %1365 = getelementptr inbounds i64, ptr %1359, i64 1
  store i64 %1364, ptr %1359, align 8, !tbaa !118
  %1366 = getelementptr inbounds %struct._PixelPacket, ptr %1361, i64 0, i32 1
  %1367 = load i16, ptr %1366, align 2, !tbaa !130
  %1368 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1367) #22
  %1369 = zext i32 %1368 to i64
  %1370 = getelementptr inbounds i64, ptr %1359, i64 2
  store i64 %1369, ptr %1365, align 8, !tbaa !118
  %1371 = getelementptr inbounds %struct._PixelPacket, ptr %1361, i64 0, i32 2
  %1372 = load i16, ptr %1371, align 2, !tbaa !131
  %1373 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1372) #22
  %1374 = zext i32 %1373 to i64
  %1375 = getelementptr inbounds i64, ptr %1359, i64 3
  store i64 %1374, ptr %1370, align 8, !tbaa !118
  %1376 = getelementptr inbounds %struct._PixelPacket, ptr %1361, i64 1
  %1377 = add nuw nsw i64 %1360, 1
  %1378 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1379 = icmp slt i64 %1377, %1378
  br i1 %1379, label %1358, label %2123, !llvm.loop !176

1380:                                             ; preds = %1346
  %1381 = load ptr, ptr %11, align 8, !tbaa !43
  %1382 = tail call i32 @LocaleCompare(ptr noundef %1381, ptr noundef nonnull @.str.12) #18
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1384, label %1418

1384:                                             ; preds = %1380
  %1385 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1386 = icmp eq ptr %1385, null
  br i1 %1386, label %2123, label %1387

1387:                                             ; preds = %1384
  %1388 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1389 = icmp sgt i64 %1388, 0
  br i1 %1389, label %1390, label %2123

1390:                                             ; preds = %1387, %1390
  %1391 = phi ptr [ %1413, %1390 ], [ %1348, %1387 ]
  %1392 = phi i64 [ %1415, %1390 ], [ 0, %1387 ]
  %1393 = phi ptr [ %1414, %1390 ], [ %1385, %1387 ]
  %1394 = load i16, ptr %1393, align 2, !tbaa !129
  %1395 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1394) #22
  %1396 = zext i32 %1395 to i64
  %1397 = getelementptr inbounds i64, ptr %1391, i64 1
  store i64 %1396, ptr %1391, align 8, !tbaa !118
  %1398 = getelementptr inbounds %struct._PixelPacket, ptr %1393, i64 0, i32 1
  %1399 = load i16, ptr %1398, align 2, !tbaa !130
  %1400 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1399) #22
  %1401 = zext i32 %1400 to i64
  %1402 = getelementptr inbounds i64, ptr %1391, i64 2
  store i64 %1401, ptr %1397, align 8, !tbaa !118
  %1403 = getelementptr inbounds %struct._PixelPacket, ptr %1393, i64 0, i32 2
  %1404 = load i16, ptr %1403, align 2, !tbaa !131
  %1405 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1404) #22
  %1406 = zext i32 %1405 to i64
  %1407 = getelementptr inbounds i64, ptr %1391, i64 3
  store i64 %1406, ptr %1402, align 8, !tbaa !118
  %1408 = getelementptr inbounds %struct._PixelPacket, ptr %1393, i64 0, i32 3
  %1409 = load i16, ptr %1408, align 2, !tbaa !133
  %1410 = xor i16 %1409, -1
  %1411 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1410) #22
  %1412 = zext i32 %1411 to i64
  %1413 = getelementptr inbounds i64, ptr %1391, i64 4
  store i64 %1412, ptr %1407, align 8, !tbaa !118
  %1414 = getelementptr inbounds %struct._PixelPacket, ptr %1393, i64 1
  %1415 = add nuw nsw i64 %1392, 1
  %1416 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1417 = icmp slt i64 %1415, %1416
  br i1 %1417, label %1390, label %2123, !llvm.loop !177

1418:                                             ; preds = %1380
  %1419 = load ptr, ptr %11, align 8, !tbaa !43
  %1420 = tail call i32 @LocaleCompare(ptr noundef %1419, ptr noundef nonnull @.str.13) #18
  %1421 = icmp eq i32 %1420, 0
  br i1 %1421, label %1422, label %1451

1422:                                             ; preds = %1418
  %1423 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1424 = icmp eq ptr %1423, null
  br i1 %1424, label %2123, label %1425

1425:                                             ; preds = %1422
  %1426 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1427 = icmp sgt i64 %1426, 0
  br i1 %1427, label %1428, label %2123

1428:                                             ; preds = %1425, %1428
  %1429 = phi ptr [ %1446, %1428 ], [ %1348, %1425 ]
  %1430 = phi i64 [ %1448, %1428 ], [ 0, %1425 ]
  %1431 = phi ptr [ %1447, %1428 ], [ %1423, %1425 ]
  %1432 = load i16, ptr %1431, align 2, !tbaa !129
  %1433 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1432) #22
  %1434 = zext i32 %1433 to i64
  %1435 = getelementptr inbounds i64, ptr %1429, i64 1
  store i64 %1434, ptr %1429, align 8, !tbaa !118
  %1436 = getelementptr inbounds %struct._PixelPacket, ptr %1431, i64 0, i32 1
  %1437 = load i16, ptr %1436, align 2, !tbaa !130
  %1438 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1437) #22
  %1439 = zext i32 %1438 to i64
  %1440 = getelementptr inbounds i64, ptr %1429, i64 2
  store i64 %1439, ptr %1435, align 8, !tbaa !118
  %1441 = getelementptr inbounds %struct._PixelPacket, ptr %1431, i64 0, i32 2
  %1442 = load i16, ptr %1441, align 2, !tbaa !131
  %1443 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1442) #22
  %1444 = zext i32 %1443 to i64
  %1445 = getelementptr inbounds i64, ptr %1429, i64 3
  store i64 %1444, ptr %1440, align 8, !tbaa !118
  %1446 = getelementptr inbounds i64, ptr %1429, i64 4
  store i64 0, ptr %1445, align 8, !tbaa !118
  %1447 = getelementptr inbounds %struct._PixelPacket, ptr %1431, i64 1
  %1448 = add nuw nsw i64 %1430, 1
  %1449 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1450 = icmp slt i64 %1448, %1449
  br i1 %1450, label %1428, label %2123, !llvm.loop !178

1451:                                             ; preds = %1418
  %1452 = load ptr, ptr %11, align 8, !tbaa !43
  %1453 = tail call i32 @LocaleCompare(ptr noundef %1452, ptr noundef nonnull @.str.14) #18
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1455, label %1474

1455:                                             ; preds = %1451
  %1456 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1457 = icmp eq ptr %1456, null
  br i1 %1457, label %2123, label %1458

1458:                                             ; preds = %1455
  %1459 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1460 = icmp sgt i64 %1459, 0
  br i1 %1460, label %1461, label %2123

1461:                                             ; preds = %1458, %1461
  %1462 = phi ptr [ %1469, %1461 ], [ %1348, %1458 ]
  %1463 = phi i64 [ %1471, %1461 ], [ 0, %1458 ]
  %1464 = phi ptr [ %1470, %1461 ], [ %1456, %1458 ]
  %1465 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1464) #24
  %1466 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1465) #22
  %1467 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1466) #22
  %1468 = zext i32 %1467 to i64
  %1469 = getelementptr inbounds i64, ptr %1462, i64 1
  store i64 %1468, ptr %1462, align 8, !tbaa !118
  %1470 = getelementptr inbounds %struct._PixelPacket, ptr %1464, i64 1
  %1471 = add nuw nsw i64 %1463, 1
  %1472 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1473 = icmp slt i64 %1471, %1472
  br i1 %1473, label %1461, label %2123, !llvm.loop !179

1474:                                             ; preds = %1451
  %1475 = load ptr, ptr %11, align 8, !tbaa !43
  %1476 = tail call i32 @LocaleCompare(ptr noundef %1475, ptr noundef nonnull @.str.4) #18
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1478, label %1506

1478:                                             ; preds = %1474
  %1479 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1480 = icmp eq ptr %1479, null
  br i1 %1480, label %2123, label %1481

1481:                                             ; preds = %1478
  %1482 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1483 = icmp sgt i64 %1482, 0
  br i1 %1483, label %1484, label %2123

1484:                                             ; preds = %1481, %1484
  %1485 = phi ptr [ %1501, %1484 ], [ %1348, %1481 ]
  %1486 = phi i64 [ %1503, %1484 ], [ 0, %1481 ]
  %1487 = phi ptr [ %1502, %1484 ], [ %1479, %1481 ]
  %1488 = getelementptr inbounds %struct._PixelPacket, ptr %1487, i64 0, i32 2
  %1489 = load i16, ptr %1488, align 2, !tbaa !131
  %1490 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1489) #22
  %1491 = zext i32 %1490 to i64
  %1492 = getelementptr inbounds i64, ptr %1485, i64 1
  store i64 %1491, ptr %1485, align 8, !tbaa !118
  %1493 = getelementptr inbounds %struct._PixelPacket, ptr %1487, i64 0, i32 1
  %1494 = load i16, ptr %1493, align 2, !tbaa !130
  %1495 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1494) #22
  %1496 = zext i32 %1495 to i64
  %1497 = getelementptr inbounds i64, ptr %1485, i64 2
  store i64 %1496, ptr %1492, align 8, !tbaa !118
  %1498 = load i16, ptr %1487, align 2, !tbaa !129
  %1499 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1498) #22
  %1500 = zext i32 %1499 to i64
  %1501 = getelementptr inbounds i64, ptr %1485, i64 3
  store i64 %1500, ptr %1497, align 8, !tbaa !118
  %1502 = getelementptr inbounds %struct._PixelPacket, ptr %1487, i64 1
  %1503 = add nuw nsw i64 %1486, 1
  %1504 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1505 = icmp slt i64 %1503, %1504
  br i1 %1505, label %1484, label %2123, !llvm.loop !180

1506:                                             ; preds = %1474
  %1507 = load ptr, ptr %11, align 8, !tbaa !43
  %1508 = tail call i32 @LocaleCompare(ptr noundef %1507, ptr noundef nonnull @.str.15) #18
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1510, label %1544

1510:                                             ; preds = %1506
  %1511 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1512 = icmp eq ptr %1511, null
  br i1 %1512, label %2123, label %1513

1513:                                             ; preds = %1510
  %1514 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1515 = icmp sgt i64 %1514, 0
  br i1 %1515, label %1516, label %2123

1516:                                             ; preds = %1513, %1516
  %1517 = phi ptr [ %1539, %1516 ], [ %1348, %1513 ]
  %1518 = phi i64 [ %1541, %1516 ], [ 0, %1513 ]
  %1519 = phi ptr [ %1540, %1516 ], [ %1511, %1513 ]
  %1520 = getelementptr inbounds %struct._PixelPacket, ptr %1519, i64 0, i32 2
  %1521 = load i16, ptr %1520, align 2, !tbaa !131
  %1522 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1521) #22
  %1523 = zext i32 %1522 to i64
  %1524 = getelementptr inbounds i64, ptr %1517, i64 1
  store i64 %1523, ptr %1517, align 8, !tbaa !118
  %1525 = getelementptr inbounds %struct._PixelPacket, ptr %1519, i64 0, i32 1
  %1526 = load i16, ptr %1525, align 2, !tbaa !130
  %1527 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1526) #22
  %1528 = zext i32 %1527 to i64
  %1529 = getelementptr inbounds i64, ptr %1517, i64 2
  store i64 %1528, ptr %1524, align 8, !tbaa !118
  %1530 = load i16, ptr %1519, align 2, !tbaa !129
  %1531 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1530) #22
  %1532 = zext i32 %1531 to i64
  %1533 = getelementptr inbounds i64, ptr %1517, i64 3
  store i64 %1532, ptr %1529, align 8, !tbaa !118
  %1534 = getelementptr inbounds %struct._PixelPacket, ptr %1519, i64 0, i32 3
  %1535 = load i16, ptr %1534, align 2, !tbaa !133
  %1536 = xor i16 %1535, -1
  %1537 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1536) #22
  %1538 = zext i32 %1537 to i64
  %1539 = getelementptr inbounds i64, ptr %1517, i64 4
  store i64 %1538, ptr %1533, align 8, !tbaa !118
  %1540 = getelementptr inbounds %struct._PixelPacket, ptr %1519, i64 1
  %1541 = add nuw nsw i64 %1518, 1
  %1542 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1543 = icmp slt i64 %1541, %1542
  br i1 %1543, label %1516, label %2123, !llvm.loop !181

1544:                                             ; preds = %1506
  %1545 = load ptr, ptr %11, align 8, !tbaa !43
  %1546 = tail call i32 @LocaleCompare(ptr noundef %1545, ptr noundef nonnull @.str.16) #18
  %1547 = icmp eq i32 %1546, 0
  %1548 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1549 = icmp eq ptr %1548, null
  br i1 %1547, label %1550, label %1577

1550:                                             ; preds = %1544
  br i1 %1549, label %2123, label %1551

1551:                                             ; preds = %1550
  %1552 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1553 = icmp sgt i64 %1552, 0
  br i1 %1553, label %1554, label %2123

1554:                                             ; preds = %1551, %1554
  %1555 = phi ptr [ %1572, %1554 ], [ %1348, %1551 ]
  %1556 = phi i64 [ %1574, %1554 ], [ 0, %1551 ]
  %1557 = phi ptr [ %1573, %1554 ], [ %1548, %1551 ]
  %1558 = getelementptr inbounds %struct._PixelPacket, ptr %1557, i64 0, i32 2
  %1559 = load i16, ptr %1558, align 2, !tbaa !131
  %1560 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1559) #22
  %1561 = zext i32 %1560 to i64
  %1562 = getelementptr inbounds i64, ptr %1555, i64 1
  store i64 %1561, ptr %1555, align 8, !tbaa !118
  %1563 = getelementptr inbounds %struct._PixelPacket, ptr %1557, i64 0, i32 1
  %1564 = load i16, ptr %1563, align 2, !tbaa !130
  %1565 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1564) #22
  %1566 = zext i32 %1565 to i64
  %1567 = getelementptr inbounds i64, ptr %1555, i64 2
  store i64 %1566, ptr %1562, align 8, !tbaa !118
  %1568 = load i16, ptr %1557, align 2, !tbaa !129
  %1569 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1568) #22
  %1570 = zext i32 %1569 to i64
  %1571 = getelementptr inbounds i64, ptr %1555, i64 3
  store i64 %1570, ptr %1567, align 8, !tbaa !118
  %1572 = getelementptr inbounds i64, ptr %1555, i64 4
  store i64 0, ptr %1571, align 8, !tbaa !118
  %1573 = getelementptr inbounds %struct._PixelPacket, ptr %1557, i64 1
  %1574 = add nuw nsw i64 %1556, 1
  %1575 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1576 = icmp slt i64 %1574, %1575
  br i1 %1576, label %1554, label %2123, !llvm.loop !182

1577:                                             ; preds = %1544
  br i1 %1549, label %2123, label %1578

1578:                                             ; preds = %1577
  %1579 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #18
  %1580 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1581 = icmp sgt i64 %1580, 0
  br i1 %1581, label %1582, label %2123

1582:                                             ; preds = %1578
  %1583 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %1584 = icmp eq ptr %1579, null
  br label %1585

1585:                                             ; preds = %1582, %1627
  %1586 = phi ptr [ %1348, %1582 ], [ %1628, %1627 ]
  %1587 = phi i64 [ 0, %1582 ], [ %1630, %1627 ]
  %1588 = phi ptr [ %1548, %1582 ], [ %1629, %1627 ]
  br i1 %17, label %1589, label %1627

1589:                                             ; preds = %1585
  %1590 = getelementptr inbounds i16, ptr %1579, i64 %1587
  %1591 = getelementptr inbounds %struct._PixelPacket, ptr %1588, i64 0, i32 3
  %1592 = getelementptr inbounds %struct._PixelPacket, ptr %1588, i64 0, i32 1
  %1593 = getelementptr inbounds %struct._PixelPacket, ptr %1588, i64 0, i32 2
  br label %1594

1594:                                             ; preds = %1589, %1623
  %1595 = phi ptr [ %1586, %1589 ], [ %1624, %1623 ]
  %1596 = phi i64 [ 0, %1589 ], [ %1625, %1623 ]
  store i64 0, ptr %1595, align 8, !tbaa !118
  %1597 = getelementptr inbounds i32, ptr %14, i64 %1596
  %1598 = load i32, ptr %1597, align 4, !tbaa !34
  switch i32 %1598, label %1623 [
    i32 14, label %1599
    i32 6, label %1599
    i32 9, label %1601
    i32 12, label %1601
    i32 3, label %1603
    i32 19, label %1603
    i32 1, label %1605
    i32 13, label %1608
    i32 2, label %1610
    i32 11, label %1616
  ]

1599:                                             ; preds = %1594, %1594
  %1600 = load i16, ptr %1593, align 2, !tbaa !131
  br label %1619

1601:                                             ; preds = %1594, %1594
  %1602 = load i16, ptr %1592, align 2, !tbaa !130
  br label %1619

1603:                                             ; preds = %1594, %1594
  %1604 = load i16, ptr %1588, align 2, !tbaa !129
  br label %1619

1605:                                             ; preds = %1594
  %1606 = load i16, ptr %1591, align 2, !tbaa !133
  %1607 = xor i16 %1606, -1
  br label %1619

1608:                                             ; preds = %1594
  %1609 = load i16, ptr %1591, align 2, !tbaa !133
  br label %1619

1610:                                             ; preds = %1594
  %1611 = load i32, ptr %1583, align 4, !tbaa !87
  %1612 = icmp eq i32 %1611, 12
  br i1 %1612, label %1613, label %1623

1613:                                             ; preds = %1610
  br i1 %1584, label %1619, label %1614

1614:                                             ; preds = %1613
  %1615 = load i16, ptr %1590, align 2, !tbaa !140
  br label %1619

1616:                                             ; preds = %1594
  %1617 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1588) #24
  %1618 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1617) #22
  br label %1619

1619:                                             ; preds = %1614, %1613, %1599, %1601, %1603, %1605, %1608, %1616
  %1620 = phi i16 [ %1618, %1616 ], [ %1609, %1608 ], [ %1607, %1605 ], [ %1604, %1603 ], [ %1602, %1601 ], [ %1600, %1599 ], [ %1615, %1614 ], [ 0, %1613 ]
  %1621 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %1620) #22
  %1622 = zext i32 %1621 to i64
  store i64 %1622, ptr %1595, align 8, !tbaa !118
  br label %1623

1623:                                             ; preds = %1619, %1594, %1610
  %1624 = getelementptr inbounds i64, ptr %1595, i64 1
  %1625 = add nuw nsw i64 %1596, 1
  %1626 = icmp eq i64 %1625, %13
  br i1 %1626, label %1627, label %1594, !llvm.loop !183

1627:                                             ; preds = %1623, %1585
  %1628 = phi ptr [ %1586, %1585 ], [ %1624, %1623 ]
  %1629 = getelementptr inbounds %struct._PixelPacket, ptr %1588, i64 1
  %1630 = add nuw nsw i64 %1587, 1
  %1631 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1632 = icmp slt i64 %1630, %1631
  br i1 %1632, label %1585, label %2123, !llvm.loop !184

1633:                                             ; preds = %76
  %1634 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %1635 = load ptr, ptr %1634, align 8, !tbaa !38
  %1636 = load ptr, ptr %11, align 8, !tbaa !43
  %1637 = tail call i32 @LocaleCompare(ptr noundef %1636, ptr noundef nonnull @.str.11) #18
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1639, label %1661

1639:                                             ; preds = %1633
  %1640 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1641 = icmp eq ptr %1640, null
  br i1 %1641, label %2123, label %1642

1642:                                             ; preds = %1639
  %1643 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1644 = icmp sgt i64 %1643, 0
  br i1 %1644, label %1645, label %2123

1645:                                             ; preds = %1642, %1645
  %1646 = phi ptr [ %1656, %1645 ], [ %1635, %1642 ]
  %1647 = phi i64 [ %1658, %1645 ], [ 0, %1642 ]
  %1648 = phi ptr [ %1657, %1645 ], [ %1640, %1642 ]
  %1649 = load i16, ptr %1648, align 2, !tbaa !129
  %1650 = getelementptr inbounds i16, ptr %1646, i64 1
  store i16 %1649, ptr %1646, align 2, !tbaa !140
  %1651 = getelementptr inbounds %struct._PixelPacket, ptr %1648, i64 0, i32 1
  %1652 = load i16, ptr %1651, align 2, !tbaa !130
  %1653 = getelementptr inbounds i16, ptr %1646, i64 2
  store i16 %1652, ptr %1650, align 2, !tbaa !140
  %1654 = getelementptr inbounds %struct._PixelPacket, ptr %1648, i64 0, i32 2
  %1655 = load i16, ptr %1654, align 2, !tbaa !131
  %1656 = getelementptr inbounds i16, ptr %1646, i64 3
  store i16 %1655, ptr %1653, align 2, !tbaa !140
  %1657 = getelementptr inbounds %struct._PixelPacket, ptr %1648, i64 1
  %1658 = add nuw nsw i64 %1647, 1
  %1659 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1660 = icmp slt i64 %1658, %1659
  br i1 %1660, label %1645, label %2123, !llvm.loop !185

1661:                                             ; preds = %1633
  %1662 = load ptr, ptr %11, align 8, !tbaa !43
  %1663 = tail call i32 @LocaleCompare(ptr noundef %1662, ptr noundef nonnull @.str.12) #18
  %1664 = icmp eq i32 %1663, 0
  br i1 %1664, label %1665, label %1691

1665:                                             ; preds = %1661
  %1666 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1667 = icmp eq ptr %1666, null
  br i1 %1667, label %2123, label %1668

1668:                                             ; preds = %1665
  %1669 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1670 = icmp sgt i64 %1669, 0
  br i1 %1670, label %1671, label %2123

1671:                                             ; preds = %1668, %1671
  %1672 = phi ptr [ %1686, %1671 ], [ %1635, %1668 ]
  %1673 = phi i64 [ %1688, %1671 ], [ 0, %1668 ]
  %1674 = phi ptr [ %1687, %1671 ], [ %1666, %1668 ]
  %1675 = load i16, ptr %1674, align 2, !tbaa !129
  %1676 = getelementptr inbounds i16, ptr %1672, i64 1
  store i16 %1675, ptr %1672, align 2, !tbaa !140
  %1677 = getelementptr inbounds %struct._PixelPacket, ptr %1674, i64 0, i32 1
  %1678 = load i16, ptr %1677, align 2, !tbaa !130
  %1679 = getelementptr inbounds i16, ptr %1672, i64 2
  store i16 %1678, ptr %1676, align 2, !tbaa !140
  %1680 = getelementptr inbounds %struct._PixelPacket, ptr %1674, i64 0, i32 2
  %1681 = load i16, ptr %1680, align 2, !tbaa !131
  %1682 = getelementptr inbounds i16, ptr %1672, i64 3
  store i16 %1681, ptr %1679, align 2, !tbaa !140
  %1683 = getelementptr inbounds %struct._PixelPacket, ptr %1674, i64 0, i32 3
  %1684 = load i16, ptr %1683, align 2, !tbaa !133
  %1685 = xor i16 %1684, -1
  %1686 = getelementptr inbounds i16, ptr %1672, i64 4
  store i16 %1685, ptr %1682, align 2, !tbaa !140
  %1687 = getelementptr inbounds %struct._PixelPacket, ptr %1674, i64 1
  %1688 = add nuw nsw i64 %1673, 1
  %1689 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1690 = icmp slt i64 %1688, %1689
  br i1 %1690, label %1671, label %2123, !llvm.loop !186

1691:                                             ; preds = %1661
  %1692 = load ptr, ptr %11, align 8, !tbaa !43
  %1693 = tail call i32 @LocaleCompare(ptr noundef %1692, ptr noundef nonnull @.str.13) #18
  %1694 = icmp eq i32 %1693, 0
  br i1 %1694, label %1695, label %1718

1695:                                             ; preds = %1691
  %1696 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1697 = icmp eq ptr %1696, null
  br i1 %1697, label %2123, label %1698

1698:                                             ; preds = %1695
  %1699 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1700 = icmp sgt i64 %1699, 0
  br i1 %1700, label %1701, label %2123

1701:                                             ; preds = %1698, %1701
  %1702 = phi ptr [ %1713, %1701 ], [ %1635, %1698 ]
  %1703 = phi i64 [ %1715, %1701 ], [ 0, %1698 ]
  %1704 = phi ptr [ %1714, %1701 ], [ %1696, %1698 ]
  %1705 = load i16, ptr %1704, align 2, !tbaa !129
  %1706 = getelementptr inbounds i16, ptr %1702, i64 1
  store i16 %1705, ptr %1702, align 2, !tbaa !140
  %1707 = getelementptr inbounds %struct._PixelPacket, ptr %1704, i64 0, i32 1
  %1708 = load i16, ptr %1707, align 2, !tbaa !130
  %1709 = getelementptr inbounds i16, ptr %1702, i64 2
  store i16 %1708, ptr %1706, align 2, !tbaa !140
  %1710 = getelementptr inbounds %struct._PixelPacket, ptr %1704, i64 0, i32 2
  %1711 = load i16, ptr %1710, align 2, !tbaa !131
  %1712 = getelementptr inbounds i16, ptr %1702, i64 3
  store i16 %1711, ptr %1709, align 2, !tbaa !140
  %1713 = getelementptr inbounds i16, ptr %1702, i64 4
  store i16 0, ptr %1712, align 2, !tbaa !140
  %1714 = getelementptr inbounds %struct._PixelPacket, ptr %1704, i64 1
  %1715 = add nuw nsw i64 %1703, 1
  %1716 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1717 = icmp slt i64 %1715, %1716
  br i1 %1717, label %1701, label %2123, !llvm.loop !187

1718:                                             ; preds = %1691
  %1719 = load ptr, ptr %11, align 8, !tbaa !43
  %1720 = tail call i32 @LocaleCompare(ptr noundef %1719, ptr noundef nonnull @.str.14) #18
  %1721 = icmp eq i32 %1720, 0
  br i1 %1721, label %1722, label %1739

1722:                                             ; preds = %1718
  %1723 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1724 = icmp eq ptr %1723, null
  br i1 %1724, label %2123, label %1725

1725:                                             ; preds = %1722
  %1726 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1727 = icmp sgt i64 %1726, 0
  br i1 %1727, label %1728, label %2123

1728:                                             ; preds = %1725, %1728
  %1729 = phi ptr [ %1734, %1728 ], [ %1635, %1725 ]
  %1730 = phi i64 [ %1736, %1728 ], [ 0, %1725 ]
  %1731 = phi ptr [ %1735, %1728 ], [ %1723, %1725 ]
  %1732 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1731) #24
  %1733 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1732) #22
  %1734 = getelementptr inbounds i16, ptr %1729, i64 1
  store i16 %1733, ptr %1729, align 2, !tbaa !140
  %1735 = getelementptr inbounds %struct._PixelPacket, ptr %1731, i64 1
  %1736 = add nuw nsw i64 %1730, 1
  %1737 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1738 = icmp slt i64 %1736, %1737
  br i1 %1738, label %1728, label %2123, !llvm.loop !188

1739:                                             ; preds = %1718
  %1740 = load ptr, ptr %11, align 8, !tbaa !43
  %1741 = tail call i32 @LocaleCompare(ptr noundef %1740, ptr noundef nonnull @.str.4) #18
  %1742 = icmp eq i32 %1741, 0
  br i1 %1742, label %1743, label %1765

1743:                                             ; preds = %1739
  %1744 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1745 = icmp eq ptr %1744, null
  br i1 %1745, label %2123, label %1746

1746:                                             ; preds = %1743
  %1747 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1748 = icmp sgt i64 %1747, 0
  br i1 %1748, label %1749, label %2123

1749:                                             ; preds = %1746, %1749
  %1750 = phi ptr [ %1760, %1749 ], [ %1635, %1746 ]
  %1751 = phi i64 [ %1762, %1749 ], [ 0, %1746 ]
  %1752 = phi ptr [ %1761, %1749 ], [ %1744, %1746 ]
  %1753 = getelementptr inbounds %struct._PixelPacket, ptr %1752, i64 0, i32 2
  %1754 = load i16, ptr %1753, align 2, !tbaa !131
  %1755 = getelementptr inbounds i16, ptr %1750, i64 1
  store i16 %1754, ptr %1750, align 2, !tbaa !140
  %1756 = getelementptr inbounds %struct._PixelPacket, ptr %1752, i64 0, i32 1
  %1757 = load i16, ptr %1756, align 2, !tbaa !130
  %1758 = getelementptr inbounds i16, ptr %1750, i64 2
  store i16 %1757, ptr %1755, align 2, !tbaa !140
  %1759 = load i16, ptr %1752, align 2, !tbaa !129
  %1760 = getelementptr inbounds i16, ptr %1750, i64 3
  store i16 %1759, ptr %1758, align 2, !tbaa !140
  %1761 = getelementptr inbounds %struct._PixelPacket, ptr %1752, i64 1
  %1762 = add nuw nsw i64 %1751, 1
  %1763 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1764 = icmp slt i64 %1762, %1763
  br i1 %1764, label %1749, label %2123, !llvm.loop !189

1765:                                             ; preds = %1739
  %1766 = load ptr, ptr %11, align 8, !tbaa !43
  %1767 = tail call i32 @LocaleCompare(ptr noundef %1766, ptr noundef nonnull @.str.15) #18
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1769, label %1795

1769:                                             ; preds = %1765
  %1770 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1771 = icmp eq ptr %1770, null
  br i1 %1771, label %2123, label %1772

1772:                                             ; preds = %1769
  %1773 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1774 = icmp sgt i64 %1773, 0
  br i1 %1774, label %1775, label %2123

1775:                                             ; preds = %1772, %1775
  %1776 = phi ptr [ %1790, %1775 ], [ %1635, %1772 ]
  %1777 = phi i64 [ %1792, %1775 ], [ 0, %1772 ]
  %1778 = phi ptr [ %1791, %1775 ], [ %1770, %1772 ]
  %1779 = getelementptr inbounds %struct._PixelPacket, ptr %1778, i64 0, i32 2
  %1780 = load i16, ptr %1779, align 2, !tbaa !131
  %1781 = getelementptr inbounds i16, ptr %1776, i64 1
  store i16 %1780, ptr %1776, align 2, !tbaa !140
  %1782 = getelementptr inbounds %struct._PixelPacket, ptr %1778, i64 0, i32 1
  %1783 = load i16, ptr %1782, align 2, !tbaa !130
  %1784 = getelementptr inbounds i16, ptr %1776, i64 2
  store i16 %1783, ptr %1781, align 2, !tbaa !140
  %1785 = load i16, ptr %1778, align 2, !tbaa !129
  %1786 = getelementptr inbounds i16, ptr %1776, i64 3
  store i16 %1785, ptr %1784, align 2, !tbaa !140
  %1787 = getelementptr inbounds %struct._PixelPacket, ptr %1778, i64 0, i32 3
  %1788 = load i16, ptr %1787, align 2, !tbaa !133
  %1789 = xor i16 %1788, -1
  %1790 = getelementptr inbounds i16, ptr %1776, i64 4
  store i16 %1789, ptr %1786, align 2, !tbaa !140
  %1791 = getelementptr inbounds %struct._PixelPacket, ptr %1778, i64 1
  %1792 = add nuw nsw i64 %1777, 1
  %1793 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1794 = icmp slt i64 %1792, %1793
  br i1 %1794, label %1775, label %2123, !llvm.loop !190

1795:                                             ; preds = %1765
  %1796 = load ptr, ptr %11, align 8, !tbaa !43
  %1797 = tail call i32 @LocaleCompare(ptr noundef %1796, ptr noundef nonnull @.str.16) #18
  %1798 = icmp eq i32 %1797, 0
  %1799 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1800 = icmp eq ptr %1799, null
  br i1 %1798, label %1801, label %1822

1801:                                             ; preds = %1795
  br i1 %1800, label %2123, label %1802

1802:                                             ; preds = %1801
  %1803 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1804 = icmp sgt i64 %1803, 0
  br i1 %1804, label %1805, label %2123

1805:                                             ; preds = %1802, %1805
  %1806 = phi ptr [ %1817, %1805 ], [ %1635, %1802 ]
  %1807 = phi i64 [ %1819, %1805 ], [ 0, %1802 ]
  %1808 = phi ptr [ %1818, %1805 ], [ %1799, %1802 ]
  %1809 = getelementptr inbounds %struct._PixelPacket, ptr %1808, i64 0, i32 2
  %1810 = load i16, ptr %1809, align 2, !tbaa !131
  %1811 = getelementptr inbounds i16, ptr %1806, i64 1
  store i16 %1810, ptr %1806, align 2, !tbaa !140
  %1812 = getelementptr inbounds %struct._PixelPacket, ptr %1808, i64 0, i32 1
  %1813 = load i16, ptr %1812, align 2, !tbaa !130
  %1814 = getelementptr inbounds i16, ptr %1806, i64 2
  store i16 %1813, ptr %1811, align 2, !tbaa !140
  %1815 = load i16, ptr %1808, align 2, !tbaa !129
  %1816 = getelementptr inbounds i16, ptr %1806, i64 3
  store i16 %1815, ptr %1814, align 2, !tbaa !140
  %1817 = getelementptr inbounds i16, ptr %1806, i64 4
  store i16 0, ptr %1816, align 2, !tbaa !140
  %1818 = getelementptr inbounds %struct._PixelPacket, ptr %1808, i64 1
  %1819 = add nuw nsw i64 %1807, 1
  %1820 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1821 = icmp slt i64 %1819, %1820
  br i1 %1821, label %1805, label %2123, !llvm.loop !191

1822:                                             ; preds = %1795
  br i1 %1800, label %2123, label %1823

1823:                                             ; preds = %1822
  %1824 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #18
  %1825 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1826 = icmp sgt i64 %1825, 0
  br i1 %1826, label %1827, label %2123

1827:                                             ; preds = %1823
  %1828 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %1829 = icmp eq ptr %1824, null
  br label %1830

1830:                                             ; preds = %1827, %1870
  %1831 = phi ptr [ %1635, %1827 ], [ %1871, %1870 ]
  %1832 = phi i64 [ 0, %1827 ], [ %1873, %1870 ]
  %1833 = phi ptr [ %1799, %1827 ], [ %1872, %1870 ]
  br i1 %17, label %1834, label %1870

1834:                                             ; preds = %1830
  %1835 = getelementptr inbounds i16, ptr %1824, i64 %1832
  %1836 = getelementptr inbounds %struct._PixelPacket, ptr %1833, i64 0, i32 3
  %1837 = getelementptr inbounds %struct._PixelPacket, ptr %1833, i64 0, i32 1
  %1838 = getelementptr inbounds %struct._PixelPacket, ptr %1833, i64 0, i32 2
  br label %1839

1839:                                             ; preds = %1834, %1866
  %1840 = phi ptr [ %1831, %1834 ], [ %1867, %1866 ]
  %1841 = phi i64 [ 0, %1834 ], [ %1868, %1866 ]
  store i16 0, ptr %1840, align 2, !tbaa !140
  %1842 = getelementptr inbounds i32, ptr %14, i64 %1841
  %1843 = load i32, ptr %1842, align 4, !tbaa !34
  switch i32 %1843, label %1866 [
    i32 14, label %1844
    i32 6, label %1844
    i32 9, label %1846
    i32 12, label %1846
    i32 3, label %1848
    i32 19, label %1848
    i32 1, label %1850
    i32 13, label %1853
    i32 2, label %1855
    i32 11, label %1861
  ]

1844:                                             ; preds = %1839, %1839
  %1845 = load i16, ptr %1838, align 2, !tbaa !131
  br label %1864

1846:                                             ; preds = %1839, %1839
  %1847 = load i16, ptr %1837, align 2, !tbaa !130
  br label %1864

1848:                                             ; preds = %1839, %1839
  %1849 = load i16, ptr %1833, align 2, !tbaa !129
  br label %1864

1850:                                             ; preds = %1839
  %1851 = load i16, ptr %1836, align 2, !tbaa !133
  %1852 = xor i16 %1851, -1
  br label %1864

1853:                                             ; preds = %1839
  %1854 = load i16, ptr %1836, align 2, !tbaa !133
  br label %1864

1855:                                             ; preds = %1839
  %1856 = load i32, ptr %1828, align 4, !tbaa !87
  %1857 = icmp eq i32 %1856, 12
  br i1 %1857, label %1858, label %1866

1858:                                             ; preds = %1855
  br i1 %1829, label %1864, label %1859

1859:                                             ; preds = %1858
  %1860 = load i16, ptr %1835, align 2, !tbaa !140
  br label %1864

1861:                                             ; preds = %1839
  %1862 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1833) #24
  %1863 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1862) #22
  br label %1864

1864:                                             ; preds = %1859, %1858, %1844, %1846, %1848, %1850, %1853, %1861
  %1865 = phi i16 [ %1863, %1861 ], [ %1854, %1853 ], [ %1852, %1850 ], [ %1849, %1848 ], [ %1847, %1846 ], [ %1845, %1844 ], [ %1860, %1859 ], [ 0, %1858 ]
  store i16 %1865, ptr %1840, align 2, !tbaa !140
  br label %1866

1866:                                             ; preds = %1864, %1839, %1855
  %1867 = getelementptr inbounds i16, ptr %1840, i64 1
  %1868 = add nuw nsw i64 %1841, 1
  %1869 = icmp eq i64 %1868, %13
  br i1 %1869, label %1870, label %1839, !llvm.loop !192

1870:                                             ; preds = %1866, %1830
  %1871 = phi ptr [ %1831, %1830 ], [ %1867, %1866 ]
  %1872 = getelementptr inbounds %struct._PixelPacket, ptr %1833, i64 1
  %1873 = add nuw nsw i64 %1832, 1
  %1874 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1875 = icmp slt i64 %1873, %1874
  br i1 %1875, label %1830, label %2123, !llvm.loop !193

1876:                                             ; preds = %76
  %1877 = getelementptr inbounds %struct._StreamInfo, ptr %0, i64 0, i32 6
  %1878 = load ptr, ptr %1877, align 8, !tbaa !38
  %1879 = load ptr, ptr %11, align 8, !tbaa !43
  %1880 = tail call i32 @LocaleCompare(ptr noundef %1879, ptr noundef nonnull @.str.11) #18
  %1881 = icmp eq i32 %1880, 0
  br i1 %1881, label %1882, label %1904

1882:                                             ; preds = %1876
  %1883 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1884 = icmp eq ptr %1883, null
  br i1 %1884, label %2123, label %1885

1885:                                             ; preds = %1882
  %1886 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1887 = icmp sgt i64 %1886, 0
  br i1 %1887, label %1888, label %2123

1888:                                             ; preds = %1885, %1888
  %1889 = phi ptr [ %1899, %1888 ], [ %1878, %1885 ]
  %1890 = phi i64 [ %1901, %1888 ], [ 0, %1885 ]
  %1891 = phi ptr [ %1900, %1888 ], [ %1883, %1885 ]
  %1892 = load i16, ptr %1891, align 2, !tbaa !129
  %1893 = getelementptr inbounds i16, ptr %1889, i64 1
  store i16 %1892, ptr %1889, align 2, !tbaa !140
  %1894 = getelementptr inbounds %struct._PixelPacket, ptr %1891, i64 0, i32 1
  %1895 = load i16, ptr %1894, align 2, !tbaa !130
  %1896 = getelementptr inbounds i16, ptr %1889, i64 2
  store i16 %1895, ptr %1893, align 2, !tbaa !140
  %1897 = getelementptr inbounds %struct._PixelPacket, ptr %1891, i64 0, i32 2
  %1898 = load i16, ptr %1897, align 2, !tbaa !131
  %1899 = getelementptr inbounds i16, ptr %1889, i64 3
  store i16 %1898, ptr %1896, align 2, !tbaa !140
  %1900 = getelementptr inbounds %struct._PixelPacket, ptr %1891, i64 1
  %1901 = add nuw nsw i64 %1890, 1
  %1902 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1903 = icmp slt i64 %1901, %1902
  br i1 %1903, label %1888, label %2123, !llvm.loop !194

1904:                                             ; preds = %1876
  %1905 = load ptr, ptr %11, align 8, !tbaa !43
  %1906 = tail call i32 @LocaleCompare(ptr noundef %1905, ptr noundef nonnull @.str.12) #18
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1908, label %1934

1908:                                             ; preds = %1904
  %1909 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1910 = icmp eq ptr %1909, null
  br i1 %1910, label %2123, label %1911

1911:                                             ; preds = %1908
  %1912 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1913 = icmp sgt i64 %1912, 0
  br i1 %1913, label %1914, label %2123

1914:                                             ; preds = %1911, %1914
  %1915 = phi ptr [ %1929, %1914 ], [ %1878, %1911 ]
  %1916 = phi i64 [ %1931, %1914 ], [ 0, %1911 ]
  %1917 = phi ptr [ %1930, %1914 ], [ %1909, %1911 ]
  %1918 = load i16, ptr %1917, align 2, !tbaa !129
  %1919 = getelementptr inbounds i16, ptr %1915, i64 1
  store i16 %1918, ptr %1915, align 2, !tbaa !140
  %1920 = getelementptr inbounds %struct._PixelPacket, ptr %1917, i64 0, i32 1
  %1921 = load i16, ptr %1920, align 2, !tbaa !130
  %1922 = getelementptr inbounds i16, ptr %1915, i64 2
  store i16 %1921, ptr %1919, align 2, !tbaa !140
  %1923 = getelementptr inbounds %struct._PixelPacket, ptr %1917, i64 0, i32 2
  %1924 = load i16, ptr %1923, align 2, !tbaa !131
  %1925 = getelementptr inbounds i16, ptr %1915, i64 3
  store i16 %1924, ptr %1922, align 2, !tbaa !140
  %1926 = getelementptr inbounds %struct._PixelPacket, ptr %1917, i64 0, i32 3
  %1927 = load i16, ptr %1926, align 2, !tbaa !133
  %1928 = xor i16 %1927, -1
  %1929 = getelementptr inbounds i16, ptr %1915, i64 4
  store i16 %1928, ptr %1925, align 2, !tbaa !140
  %1930 = getelementptr inbounds %struct._PixelPacket, ptr %1917, i64 1
  %1931 = add nuw nsw i64 %1916, 1
  %1932 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1933 = icmp slt i64 %1931, %1932
  br i1 %1933, label %1914, label %2123, !llvm.loop !195

1934:                                             ; preds = %1904
  %1935 = load ptr, ptr %11, align 8, !tbaa !43
  %1936 = tail call i32 @LocaleCompare(ptr noundef %1935, ptr noundef nonnull @.str.13) #18
  %1937 = icmp eq i32 %1936, 0
  br i1 %1937, label %1938, label %1961

1938:                                             ; preds = %1934
  %1939 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1940 = icmp eq ptr %1939, null
  br i1 %1940, label %2123, label %1941

1941:                                             ; preds = %1938
  %1942 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1943 = icmp sgt i64 %1942, 0
  br i1 %1943, label %1944, label %2123

1944:                                             ; preds = %1941, %1944
  %1945 = phi ptr [ %1956, %1944 ], [ %1878, %1941 ]
  %1946 = phi i64 [ %1958, %1944 ], [ 0, %1941 ]
  %1947 = phi ptr [ %1957, %1944 ], [ %1939, %1941 ]
  %1948 = load i16, ptr %1947, align 2, !tbaa !129
  %1949 = getelementptr inbounds i16, ptr %1945, i64 1
  store i16 %1948, ptr %1945, align 2, !tbaa !140
  %1950 = getelementptr inbounds %struct._PixelPacket, ptr %1947, i64 0, i32 1
  %1951 = load i16, ptr %1950, align 2, !tbaa !130
  %1952 = getelementptr inbounds i16, ptr %1945, i64 2
  store i16 %1951, ptr %1949, align 2, !tbaa !140
  %1953 = getelementptr inbounds %struct._PixelPacket, ptr %1947, i64 0, i32 2
  %1954 = load i16, ptr %1953, align 2, !tbaa !131
  %1955 = getelementptr inbounds i16, ptr %1945, i64 3
  store i16 %1954, ptr %1952, align 2, !tbaa !140
  %1956 = getelementptr inbounds i16, ptr %1945, i64 4
  store i16 0, ptr %1955, align 2, !tbaa !140
  %1957 = getelementptr inbounds %struct._PixelPacket, ptr %1947, i64 1
  %1958 = add nuw nsw i64 %1946, 1
  %1959 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1960 = icmp slt i64 %1958, %1959
  br i1 %1960, label %1944, label %2123, !llvm.loop !196

1961:                                             ; preds = %1934
  %1962 = load ptr, ptr %11, align 8, !tbaa !43
  %1963 = tail call i32 @LocaleCompare(ptr noundef %1962, ptr noundef nonnull @.str.14) #18
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %1965, label %1982

1965:                                             ; preds = %1961
  %1966 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1967 = icmp eq ptr %1966, null
  br i1 %1967, label %2123, label %1968

1968:                                             ; preds = %1965
  %1969 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1970 = icmp sgt i64 %1969, 0
  br i1 %1970, label %1971, label %2123

1971:                                             ; preds = %1968, %1971
  %1972 = phi ptr [ %1977, %1971 ], [ %1878, %1968 ]
  %1973 = phi i64 [ %1979, %1971 ], [ 0, %1968 ]
  %1974 = phi ptr [ %1978, %1971 ], [ %1966, %1968 ]
  %1975 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %1974) #24
  %1976 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %1975) #22
  %1977 = getelementptr inbounds i16, ptr %1972, i64 1
  store i16 %1976, ptr %1972, align 2, !tbaa !140
  %1978 = getelementptr inbounds %struct._PixelPacket, ptr %1974, i64 1
  %1979 = add nuw nsw i64 %1973, 1
  %1980 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1981 = icmp slt i64 %1979, %1980
  br i1 %1981, label %1971, label %2123, !llvm.loop !197

1982:                                             ; preds = %1961
  %1983 = load ptr, ptr %11, align 8, !tbaa !43
  %1984 = tail call i32 @LocaleCompare(ptr noundef %1983, ptr noundef nonnull @.str.4) #18
  %1985 = icmp eq i32 %1984, 0
  br i1 %1985, label %1986, label %2008

1986:                                             ; preds = %1982
  %1987 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %1988 = icmp eq ptr %1987, null
  br i1 %1988, label %2123, label %1989

1989:                                             ; preds = %1986
  %1990 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %1991 = icmp sgt i64 %1990, 0
  br i1 %1991, label %1992, label %2123

1992:                                             ; preds = %1989, %1992
  %1993 = phi ptr [ %2003, %1992 ], [ %1878, %1989 ]
  %1994 = phi i64 [ %2005, %1992 ], [ 0, %1989 ]
  %1995 = phi ptr [ %2004, %1992 ], [ %1987, %1989 ]
  %1996 = getelementptr inbounds %struct._PixelPacket, ptr %1995, i64 0, i32 2
  %1997 = load i16, ptr %1996, align 2, !tbaa !131
  %1998 = getelementptr inbounds i16, ptr %1993, i64 1
  store i16 %1997, ptr %1993, align 2, !tbaa !140
  %1999 = getelementptr inbounds %struct._PixelPacket, ptr %1995, i64 0, i32 1
  %2000 = load i16, ptr %1999, align 2, !tbaa !130
  %2001 = getelementptr inbounds i16, ptr %1993, i64 2
  store i16 %2000, ptr %1998, align 2, !tbaa !140
  %2002 = load i16, ptr %1995, align 2, !tbaa !129
  %2003 = getelementptr inbounds i16, ptr %1993, i64 3
  store i16 %2002, ptr %2001, align 2, !tbaa !140
  %2004 = getelementptr inbounds %struct._PixelPacket, ptr %1995, i64 1
  %2005 = add nuw nsw i64 %1994, 1
  %2006 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %2007 = icmp slt i64 %2005, %2006
  br i1 %2007, label %1992, label %2123, !llvm.loop !198

2008:                                             ; preds = %1982
  %2009 = load ptr, ptr %11, align 8, !tbaa !43
  %2010 = tail call i32 @LocaleCompare(ptr noundef %2009, ptr noundef nonnull @.str.15) #18
  %2011 = icmp eq i32 %2010, 0
  br i1 %2011, label %2012, label %2038

2012:                                             ; preds = %2008
  %2013 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %2014 = icmp eq ptr %2013, null
  br i1 %2014, label %2123, label %2015

2015:                                             ; preds = %2012
  %2016 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %2017 = icmp sgt i64 %2016, 0
  br i1 %2017, label %2018, label %2123

2018:                                             ; preds = %2015, %2018
  %2019 = phi ptr [ %2033, %2018 ], [ %1878, %2015 ]
  %2020 = phi i64 [ %2035, %2018 ], [ 0, %2015 ]
  %2021 = phi ptr [ %2034, %2018 ], [ %2013, %2015 ]
  %2022 = getelementptr inbounds %struct._PixelPacket, ptr %2021, i64 0, i32 2
  %2023 = load i16, ptr %2022, align 2, !tbaa !131
  %2024 = getelementptr inbounds i16, ptr %2019, i64 1
  store i16 %2023, ptr %2019, align 2, !tbaa !140
  %2025 = getelementptr inbounds %struct._PixelPacket, ptr %2021, i64 0, i32 1
  %2026 = load i16, ptr %2025, align 2, !tbaa !130
  %2027 = getelementptr inbounds i16, ptr %2019, i64 2
  store i16 %2026, ptr %2024, align 2, !tbaa !140
  %2028 = load i16, ptr %2021, align 2, !tbaa !129
  %2029 = getelementptr inbounds i16, ptr %2019, i64 3
  store i16 %2028, ptr %2027, align 2, !tbaa !140
  %2030 = getelementptr inbounds %struct._PixelPacket, ptr %2021, i64 0, i32 3
  %2031 = load i16, ptr %2030, align 2, !tbaa !133
  %2032 = xor i16 %2031, -1
  %2033 = getelementptr inbounds i16, ptr %2019, i64 4
  store i16 %2032, ptr %2029, align 2, !tbaa !140
  %2034 = getelementptr inbounds %struct._PixelPacket, ptr %2021, i64 1
  %2035 = add nuw nsw i64 %2020, 1
  %2036 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %2037 = icmp slt i64 %2035, %2036
  br i1 %2037, label %2018, label %2123, !llvm.loop !199

2038:                                             ; preds = %2008
  %2039 = load ptr, ptr %11, align 8, !tbaa !43
  %2040 = tail call i32 @LocaleCompare(ptr noundef %2039, ptr noundef nonnull @.str.16) #18
  %2041 = icmp eq i32 %2040, 0
  %2042 = tail call ptr @GetAuthenticPixelQueue(ptr noundef %1) #18
  %2043 = icmp eq ptr %2042, null
  br i1 %2041, label %2044, label %2065

2044:                                             ; preds = %2038
  br i1 %2043, label %2123, label %2045

2045:                                             ; preds = %2044
  %2046 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %2047 = icmp sgt i64 %2046, 0
  br i1 %2047, label %2048, label %2123

2048:                                             ; preds = %2045, %2048
  %2049 = phi ptr [ %2060, %2048 ], [ %1878, %2045 ]
  %2050 = phi i64 [ %2062, %2048 ], [ 0, %2045 ]
  %2051 = phi ptr [ %2061, %2048 ], [ %2042, %2045 ]
  %2052 = getelementptr inbounds %struct._PixelPacket, ptr %2051, i64 0, i32 2
  %2053 = load i16, ptr %2052, align 2, !tbaa !131
  %2054 = getelementptr inbounds i16, ptr %2049, i64 1
  store i16 %2053, ptr %2049, align 2, !tbaa !140
  %2055 = getelementptr inbounds %struct._PixelPacket, ptr %2051, i64 0, i32 1
  %2056 = load i16, ptr %2055, align 2, !tbaa !130
  %2057 = getelementptr inbounds i16, ptr %2049, i64 2
  store i16 %2056, ptr %2054, align 2, !tbaa !140
  %2058 = load i16, ptr %2051, align 2, !tbaa !129
  %2059 = getelementptr inbounds i16, ptr %2049, i64 3
  store i16 %2058, ptr %2057, align 2, !tbaa !140
  %2060 = getelementptr inbounds i16, ptr %2049, i64 4
  store i16 0, ptr %2059, align 2, !tbaa !140
  %2061 = getelementptr inbounds %struct._PixelPacket, ptr %2051, i64 1
  %2062 = add nuw nsw i64 %2050, 1
  %2063 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %2064 = icmp slt i64 %2062, %2063
  br i1 %2064, label %2048, label %2123, !llvm.loop !200

2065:                                             ; preds = %2038
  br i1 %2043, label %2123, label %2066

2066:                                             ; preds = %2065
  %2067 = tail call ptr @GetVirtualIndexQueue(ptr noundef %1) #18
  %2068 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %2069 = icmp sgt i64 %2068, 0
  br i1 %2069, label %2070, label %2123

2070:                                             ; preds = %2066
  %2071 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %2072 = icmp eq ptr %2067, null
  br label %2073

2073:                                             ; preds = %2070, %2113
  %2074 = phi ptr [ %1878, %2070 ], [ %2114, %2113 ]
  %2075 = phi i64 [ 0, %2070 ], [ %2116, %2113 ]
  %2076 = phi ptr [ %2042, %2070 ], [ %2115, %2113 ]
  br i1 %17, label %2077, label %2113

2077:                                             ; preds = %2073
  %2078 = getelementptr inbounds i16, ptr %2067, i64 %2075
  %2079 = getelementptr inbounds %struct._PixelPacket, ptr %2076, i64 0, i32 3
  %2080 = getelementptr inbounds %struct._PixelPacket, ptr %2076, i64 0, i32 1
  %2081 = getelementptr inbounds %struct._PixelPacket, ptr %2076, i64 0, i32 2
  br label %2082

2082:                                             ; preds = %2077, %2109
  %2083 = phi ptr [ %2074, %2077 ], [ %2110, %2109 ]
  %2084 = phi i64 [ 0, %2077 ], [ %2111, %2109 ]
  store i16 0, ptr %2083, align 2, !tbaa !140
  %2085 = getelementptr inbounds i32, ptr %14, i64 %2084
  %2086 = load i32, ptr %2085, align 4, !tbaa !34
  switch i32 %2086, label %2109 [
    i32 14, label %2087
    i32 6, label %2087
    i32 9, label %2089
    i32 12, label %2089
    i32 3, label %2091
    i32 19, label %2091
    i32 1, label %2093
    i32 13, label %2096
    i32 2, label %2098
    i32 11, label %2104
  ]

2087:                                             ; preds = %2082, %2082
  %2088 = load i16, ptr %2081, align 2, !tbaa !131
  br label %2107

2089:                                             ; preds = %2082, %2082
  %2090 = load i16, ptr %2080, align 2, !tbaa !130
  br label %2107

2091:                                             ; preds = %2082, %2082
  %2092 = load i16, ptr %2076, align 2, !tbaa !129
  br label %2107

2093:                                             ; preds = %2082
  %2094 = load i16, ptr %2079, align 2, !tbaa !133
  %2095 = xor i16 %2094, -1
  br label %2107

2096:                                             ; preds = %2082
  %2097 = load i16, ptr %2079, align 2, !tbaa !133
  br label %2107

2098:                                             ; preds = %2082
  %2099 = load i32, ptr %2071, align 4, !tbaa !87
  %2100 = icmp eq i32 %2099, 12
  br i1 %2100, label %2101, label %2109

2101:                                             ; preds = %2098
  br i1 %2072, label %2107, label %2102

2102:                                             ; preds = %2101
  %2103 = load i16, ptr %2078, align 2, !tbaa !140
  br label %2107

2104:                                             ; preds = %2082
  %2105 = tail call float @GetPixelIntensity(ptr noundef %1, ptr noundef nonnull %2076) #24
  %2106 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %2105) #22
  br label %2107

2107:                                             ; preds = %2102, %2101, %2087, %2089, %2091, %2093, %2096, %2104
  %2108 = phi i16 [ %2106, %2104 ], [ %2097, %2096 ], [ %2095, %2093 ], [ %2092, %2091 ], [ %2090, %2089 ], [ %2088, %2087 ], [ %2103, %2102 ], [ 0, %2101 ]
  store i16 %2108, ptr %2083, align 2, !tbaa !140
  br label %2109

2109:                                             ; preds = %2107, %2082, %2098
  %2110 = getelementptr inbounds i16, ptr %2083, i64 1
  %2111 = add nuw nsw i64 %2084, 1
  %2112 = icmp eq i64 %2111, %13
  br i1 %2112, label %2113, label %2082, !llvm.loop !201

2113:                                             ; preds = %2109, %2073
  %2114 = phi ptr [ %2074, %2073 ], [ %2110, %2109 ]
  %2115 = getelementptr inbounds %struct._PixelPacket, ptr %2076, i64 1
  %2116 = add nuw nsw i64 %2075, 1
  %2117 = tail call i64 @GetImageExtent(ptr noundef %1) #18
  %2118 = icmp slt i64 %2116, %2117
  br i1 %2118, label %2073, label %2123, !llvm.loop !202

2119:                                             ; preds = %76
  %2120 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %14) #18
  %2121 = load ptr, ptr %11, align 8, !tbaa !43
  %2122 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2616, i32 noundef 410, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef %2121) #18
  br label %2123

2123:                                             ; preds = %2113, %2048, %2018, %1992, %1971, %1944, %1914, %1888, %1870, %1805, %1775, %1749, %1728, %1701, %1671, %1645, %1627, %1554, %1516, %1484, %1461, %1428, %1390, %1358, %1340, %1271, %1237, %1208, %1186, %1156, %1122, %1093, %1075, %982, %941, %900, %871, %830, %788, %748, %727, %632, %579, %535, %507, %462, %409, %365, %344, %275, %239, %210, %188, %158, %122, %93, %2066, %2045, %2015, %1989, %1968, %1941, %1911, %1885, %1823, %1802, %1772, %1746, %1725, %1698, %1668, %1642, %1578, %1551, %1513, %1481, %1458, %1425, %1387, %1355, %1292, %1268, %1234, %1205, %1183, %1153, %1119, %1090, %1012, %976, %935, %894, %865, %824, %782, %742, %665, %626, %573, %529, %501, %456, %403, %359, %296, %270, %236, %207, %185, %153, %119, %90, %1882, %1908, %1938, %1965, %1986, %2012, %2044, %2065, %1639, %1665, %1695, %1722, %1743, %1769, %1801, %1822, %1352, %1384, %1422, %1455, %1478, %1510, %1550, %1577, %1087, %1116, %1150, %1180, %1202, %1231, %1267, %1291, %739, %779, %821, %862, %891, %932, %975, %1011, %356, %400, %453, %498, %526, %570, %625, %664, %87, %116, %150, %182, %204, %233, %269, %295, %2119
  %2124 = phi ptr [ %2120, %2119 ], [ %14, %295 ], [ %14, %269 ], [ %14, %233 ], [ %14, %204 ], [ %14, %182 ], [ %14, %150 ], [ %14, %116 ], [ %14, %87 ], [ %14, %664 ], [ %14, %625 ], [ %14, %570 ], [ %14, %526 ], [ %14, %498 ], [ %14, %453 ], [ %14, %400 ], [ %14, %356 ], [ %14, %1011 ], [ %14, %975 ], [ %14, %932 ], [ %14, %891 ], [ %14, %862 ], [ %14, %821 ], [ %14, %779 ], [ %14, %739 ], [ %14, %1291 ], [ %14, %1267 ], [ %14, %1231 ], [ %14, %1202 ], [ %14, %1180 ], [ %14, %1150 ], [ %14, %1116 ], [ %14, %1087 ], [ %14, %1577 ], [ %14, %1550 ], [ %14, %1510 ], [ %14, %1478 ], [ %14, %1455 ], [ %14, %1422 ], [ %14, %1384 ], [ %14, %1352 ], [ %14, %1822 ], [ %14, %1801 ], [ %14, %1769 ], [ %14, %1743 ], [ %14, %1722 ], [ %14, %1695 ], [ %14, %1665 ], [ %14, %1639 ], [ %14, %2065 ], [ %14, %2044 ], [ %14, %2012 ], [ %14, %1986 ], [ %14, %1965 ], [ %14, %1938 ], [ %14, %1908 ], [ %14, %1882 ], [ %14, %90 ], [ %14, %119 ], [ %14, %153 ], [ %14, %185 ], [ %14, %207 ], [ %14, %236 ], [ %14, %270 ], [ %14, %296 ], [ %14, %359 ], [ %14, %403 ], [ %14, %456 ], [ %14, %501 ], [ %14, %529 ], [ %14, %573 ], [ %14, %626 ], [ %14, %665 ], [ %14, %742 ], [ %14, %782 ], [ %14, %824 ], [ %14, %865 ], [ %14, %894 ], [ %14, %935 ], [ %14, %976 ], [ %14, %1012 ], [ %14, %1090 ], [ %14, %1119 ], [ %14, %1153 ], [ %14, %1183 ], [ %14, %1205 ], [ %14, %1234 ], [ %14, %1268 ], [ %14, %1292 ], [ %14, %1355 ], [ %14, %1387 ], [ %14, %1425 ], [ %14, %1458 ], [ %14, %1481 ], [ %14, %1513 ], [ %14, %1551 ], [ %14, %1578 ], [ %14, %1642 ], [ %14, %1668 ], [ %14, %1698 ], [ %14, %1725 ], [ %14, %1746 ], [ %14, %1772 ], [ %14, %1802 ], [ %14, %1823 ], [ %14, %1885 ], [ %14, %1911 ], [ %14, %1941 ], [ %14, %1968 ], [ %14, %1989 ], [ %14, %2015 ], [ %14, %2045 ], [ %14, %2066 ], [ %14, %93 ], [ %14, %122 ], [ %14, %158 ], [ %14, %188 ], [ %14, %210 ], [ %14, %239 ], [ %14, %275 ], [ %14, %344 ], [ %14, %365 ], [ %14, %409 ], [ %14, %462 ], [ %14, %507 ], [ %14, %535 ], [ %14, %579 ], [ %14, %632 ], [ %14, %727 ], [ %14, %748 ], [ %14, %788 ], [ %14, %830 ], [ %14, %871 ], [ %14, %900 ], [ %14, %941 ], [ %14, %982 ], [ %14, %1075 ], [ %14, %1093 ], [ %14, %1122 ], [ %14, %1156 ], [ %14, %1186 ], [ %14, %1208 ], [ %14, %1237 ], [ %14, %1271 ], [ %14, %1340 ], [ %14, %1358 ], [ %14, %1390 ], [ %14, %1428 ], [ %14, %1461 ], [ %14, %1484 ], [ %14, %1516 ], [ %14, %1554 ], [ %14, %1627 ], [ %14, %1645 ], [ %14, %1671 ], [ %14, %1701 ], [ %14, %1728 ], [ %14, %1749 ], [ %14, %1775 ], [ %14, %1805 ], [ %14, %1870 ], [ %14, %1888 ], [ %14, %1914 ], [ %14, %1944 ], [ %14, %1971 ], [ %14, %1992 ], [ %14, %2018 ], [ %14, %2048 ], [ %14, %2113 ]
  %2125 = tail call ptr @RelinquishMagickMemory(ptr noundef %2124) #18
  br label %2126

2126:                                             ; preds = %2123, %66, %62, %51, %43, %33, %21
  ret void
}

; Function Attrs: optsize
declare i64 @WriteBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @GetAuthenticPixelQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @GetImageExtent(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #10 !PGOFuncName !203 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #10 !PGOFuncName !204 {
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

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %0) unnamed_addr #10 !PGOFuncName !205 {
  %2 = zext i16 %0 to i32
  %3 = mul nuw i32 %2, 65537
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind optsize willreturn memory(none) }
attributes #20 = { noreturn nounwind optsize }
attributes #21 = { nounwind optsize allocsize(0,1) }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { hot nounwind optsize }

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
!38 = !{!39, !40, i64 48}
!39 = !{!"_StreamInfo", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !35, i64 40, !40, i64 48, !41, i64 56, !42, i64 88, !40, i64 96, !40, i64 104, !42, i64 112}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"_RectangleInfo", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!42 = !{!"long", !36, i64 0}
!43 = !{!39, !40, i64 32}
!44 = !{!39, !35, i64 40}
!45 = !{!39, !40, i64 16}
!46 = !{!39, !42, i64 112}
!47 = !{!39, !40, i64 24}
!48 = !{!39, !40, i64 104}
!49 = !{!50, !35, i64 16712}
!50 = !{!"_ImageInfo", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !35, i64 80, !35, i64 84, !35, i64 88, !42, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !51, i64 144, !51, i64 152, !52, i64 160, !52, i64 168, !52, i64 176, !35, i64 184, !35, i64 188, !42, i64 192, !35, i64 200, !35, i64 204, !35, i64 208, !42, i64 216, !35, i64 224, !35, i64 228, !40, i64 232, !40, i64 240, !35, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !42, i64 320, !36, i64 328, !36, i64 4424, !36, i64 8520, !36, i64 12616, !35, i64 16712, !40, i64 16720, !42, i64 16728, !42, i64 16736, !52, i64 16744, !42, i64 16752, !35, i64 16760, !52, i64 16764, !40, i64 16776, !35, i64 16784}
!51 = !{!"double", !36, i64 0}
!52 = !{!"_PixelPacket", !53, i64 0, !53, i64 2, !53, i64 4, !53, i64 6}
!53 = !{!"short", !36, i64 0}
!54 = !{!50, !40, i64 288}
!55 = !{!56, !40, i64 0}
!56 = !{!"_CacheMethods", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80}
!57 = !{!56, !40, i64 16}
!58 = !{!56, !40, i64 8}
!59 = !{!56, !40, i64 32}
!60 = !{!56, !40, i64 64}
!61 = !{!56, !40, i64 72}
!62 = !{!56, !40, i64 56}
!63 = !{!56, !40, i64 40}
!64 = !{!56, !40, i64 24}
!65 = !{!56, !40, i64 48}
!66 = !{!56, !40, i64 80}
!67 = !{!50, !40, i64 296}
!68 = !{!"stream.c:GetVirtualPixelStream"}
!69 = !{!70, !35, i64 12976}
!70 = !{!"_Image", !35, i64 0, !35, i64 4, !35, i64 8, !42, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !40, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !51, i64 104, !71, i64 112, !35, i64 208, !40, i64 216, !35, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !42, i64 256, !51, i64 264, !51, i64 272, !41, i64 280, !41, i64 312, !41, i64 344, !51, i64 376, !51, i64 384, !51, i64 392, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !35, i64 416, !35, i64 420, !40, i64 424, !42, i64 432, !42, i64 440, !42, i64 448, !42, i64 456, !42, i64 464, !42, i64 472, !73, i64 480, !74, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !42, i64 12904, !42, i64 12912, !76, i64 12920, !35, i64 12976, !42, i64 12984, !40, i64 12992, !77, i64 13000, !77, i64 13032, !40, i64 13064, !42, i64 13072, !42, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !35, i64 13112, !35, i64 13116, !52, i64 13120, !40, i64 13128, !41, i64 13136, !40, i64 13168, !40, i64 13176, !35, i64 13184, !35, i64 13188, !78, i64 13192, !35, i64 13200, !42, i64 13208, !42, i64 13216, !35, i64 13224, !42, i64 13232}
!71 = !{!"_ChromaticityInfo", !72, i64 0, !72, i64 24, !72, i64 48, !72, i64 72}
!72 = !{!"_PrimaryInfo", !51, i64 0, !51, i64 8, !51, i64 16}
!73 = !{!"_ErrorInfo", !51, i64 0, !51, i64 8, !51, i64 16}
!74 = !{!"_TimerInfo", !75, i64 0, !75, i64 24, !35, i64 48, !42, i64 56}
!75 = !{!"_Timer", !51, i64 0, !51, i64 8, !51, i64 16}
!76 = !{!"_ExceptionInfo", !35, i64 0, !35, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !35, i64 32, !40, i64 40, !42, i64 48}
!77 = !{!"_ProfileInfo", !40, i64 0, !42, i64 8, !40, i64 16, !42, i64 24}
!78 = !{!"long long", !36, i64 0}
!79 = !{!70, !42, i64 40}
!80 = !{!70, !42, i64 48}
!81 = !{!70, !40, i64 584}
!82 = !{!70, !35, i64 0}
!83 = !{!84, !35, i64 160}
!84 = !{!"_CacheInfo", !35, i64 0, !35, i64 4, !42, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !42, i64 32, !42, i64 40, !78, i64 48, !78, i64 56, !35, i64 64, !85, i64 72, !42, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !35, i64 160, !35, i64 164, !36, i64 168, !36, i64 4264, !56, i64 8360, !40, i64 8448, !42, i64 8456, !40, i64 8464, !35, i64 8472, !35, i64 8476, !35, i64 8480, !42, i64 8488, !40, i64 8496, !40, i64 8504, !42, i64 8512, !42, i64 8520}
!85 = !{!"_MagickPixelPacket", !35, i64 0, !35, i64 4, !35, i64 8, !51, i64 16, !42, i64 24, !86, i64 32, !86, i64 36, !86, i64 40, !86, i64 44, !86, i64 48}
!86 = !{!"float", !36, i64 0}
!87 = !{!70, !35, i64 4}
!88 = !{!84, !40, i64 144}
!89 = !{!84, !78, i64 56}
!90 = !{i32 0, i32 2}
!91 = !{!84, !40, i64 152}
!92 = !{!"stream.c:GetVirtualIndexesFromStream"}
!93 = !{!"stream.c:GetVirtualPixelsStream"}
!94 = !{!"stream.c:GetAuthenticPixelsStream"}
!95 = !{!"stream.c:QueueAuthenticPixelsStream"}
!96 = !{!84, !42, i64 32}
!97 = !{!84, !42, i64 40}
!98 = !{!"stream.c:SyncAuthenticPixelsStream"}
!99 = !{!"stream.c:GetAuthenticPixelsFromStream"}
!100 = !{!"stream.c:GetAuthenticIndexesFromStream"}
!101 = !{!"stream.c:GetOneVirtualPixelFromStream"}
!102 = !{!"stream.c:GetOneAuthenticPixelFromStream"}
!103 = !{!"stream.c:DestroyPixelStream"}
!104 = !{!84, !40, i64 8496}
!105 = !{!84, !42, i64 8488}
!106 = !{!84, !40, i64 136}
!107 = !{!84, !42, i64 128}
!108 = !{!84, !40, i64 8504}
!109 = !{!39, !40, i64 0}
!110 = !{!39, !40, i64 96}
!111 = !{!50, !40, i64 280}
!112 = !{!"stream.c:WriteStreamImage"}
!113 = !{!70, !40, i64 576}
!114 = !{!39, !40, i64 8}
!115 = !{!50, !40, i64 32}
!116 = !{!39, !42, i64 88}
!117 = !{i64 0, i64 8, !118, i64 8, i64 8, !118, i64 16, i64 8, !118, i64 24, i64 8, !118}
!118 = !{!42, !42, i64 0}
!119 = !{i64 0, i64 8, !118, i64 8, i64 8, !118, i64 16, i64 8, !118}
!120 = !{i64 0, i64 8, !118, i64 8, i64 8, !118}
!121 = !{i64 0, i64 8, !118}
!122 = !{!"stream.c:AcquireStreamPixels"}
!123 = !{!84, !35, i64 24}
!124 = !{!"stream.c:RelinquishStreamPixels"}
!125 = !{!"stream.c:StreamImagePixels"}
!126 = !{!36, !36, i64 0}
!127 = distinct !{!127, !128}
!128 = !{!"llvm.loop.mustprogress"}
!129 = !{!52, !53, i64 0}
!130 = !{!52, !53, i64 2}
!131 = !{!52, !53, i64 4}
!132 = distinct !{!132, !128}
!133 = !{!52, !53, i64 6}
!134 = distinct !{!134, !128}
!135 = distinct !{!135, !128}
!136 = distinct !{!136, !128}
!137 = distinct !{!137, !128}
!138 = distinct !{!138, !128}
!139 = distinct !{!139, !128}
!140 = !{!53, !53, i64 0}
!141 = distinct !{!141, !128}
!142 = distinct !{!142, !128}
!143 = !{!144, !51, i64 40}
!144 = !{!"_QuantumInfo", !42, i64 0, !42, i64 8, !35, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !42, i64 48, !35, i64 56, !35, i64 60, !35, i64 64, !42, i64 72, !40, i64 80, !42, i64 88, !35, i64 96, !145, i64 104, !40, i64 136, !42, i64 144}
!145 = !{!"_QuantumState", !51, i64 0, !35, i64 8, !42, i64 16, !40, i64 24}
!146 = !{!144, !51, i64 24}
!147 = !{!51, !51, i64 0}
!148 = distinct !{!148, !128}
!149 = distinct !{!149, !128}
!150 = distinct !{!150, !128}
!151 = distinct !{!151, !128}
!152 = distinct !{!152, !128}
!153 = distinct !{!153, !128}
!154 = distinct !{!154, !128}
!155 = distinct !{!155, !128}
!156 = distinct !{!156, !128}
!157 = !{!86, !86, i64 0}
!158 = distinct !{!158, !128}
!159 = distinct !{!159, !128}
!160 = distinct !{!160, !128}
!161 = distinct !{!161, !128}
!162 = distinct !{!162, !128}
!163 = distinct !{!163, !128}
!164 = distinct !{!164, !128}
!165 = distinct !{!165, !128}
!166 = distinct !{!166, !128}
!167 = distinct !{!167, !128}
!168 = distinct !{!168, !128}
!169 = distinct !{!169, !128}
!170 = distinct !{!170, !128}
!171 = distinct !{!171, !128}
!172 = distinct !{!172, !128}
!173 = distinct !{!173, !128}
!174 = distinct !{!174, !128}
!175 = distinct !{!175, !128}
!176 = distinct !{!176, !128}
!177 = distinct !{!177, !128}
!178 = distinct !{!178, !128}
!179 = distinct !{!179, !128}
!180 = distinct !{!180, !128}
!181 = distinct !{!181, !128}
!182 = distinct !{!182, !128}
!183 = distinct !{!183, !128}
!184 = distinct !{!184, !128}
!185 = distinct !{!185, !128}
!186 = distinct !{!186, !128}
!187 = distinct !{!187, !128}
!188 = distinct !{!188, !128}
!189 = distinct !{!189, !128}
!190 = distinct !{!190, !128}
!191 = distinct !{!191, !128}
!192 = distinct !{!192, !128}
!193 = distinct !{!193, !128}
!194 = distinct !{!194, !128}
!195 = distinct !{!195, !128}
!196 = distinct !{!196, !128}
!197 = distinct !{!197, !128}
!198 = distinct !{!198, !128}
!199 = distinct !{!199, !128}
!200 = distinct !{!200, !128}
!201 = distinct !{!201, !128}
!202 = distinct !{!202, !128}
!203 = !{!"stream.c:ScaleQuantumToChar"}
!204 = !{!"stream.c:ClampToQuantum"}
!205 = !{!"stream.c:ScaleQuantumToLong"}
